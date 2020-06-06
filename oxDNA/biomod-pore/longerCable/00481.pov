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
	<24.233461, 35.046539, 35.253838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473049, 35.029366, 34.933990>,  <24.616802, 35.019062, 34.742081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473049, 35.029366, 34.933990>,  <24.233461, 35.046539, 35.253838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.473049, 35.029366, 34.933990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598251, -0.639774, 0.482478,
		-0.532289, -0.767364, -0.357522,
		0.598969, -0.042930, -0.799621,
		24.652740, 35.016487, 34.694103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.321930, 34.373150, 34.931465>,  <24.233461, 35.046539, 35.253838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.321930, 34.373150, 34.931465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.648251, 34.584183, 34.836708>,  <24.844044, 34.710804, 34.779854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.648251, 34.584183, 34.836708>,  <24.321930, 34.373150, 34.931465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.648251, 34.584183, 34.836708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578331, -0.743647, 0.335444,
		0.000809, -0.410660, -0.911788,
		0.815802, 0.527587, -0.236895,
		24.892992, 34.742458, 34.765640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692064, 34.049103, 34.429710>,  <24.321930, 34.373150, 34.931465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692064, 34.049103, 34.429710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933607, 34.267773, 34.661743>,  <25.078533, 34.398975, 34.800964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933607, 34.267773, 34.661743>,  <24.692064, 34.049103, 34.429710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933607, 34.267773, 34.661743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405192, -0.837237, 0.367225,
		0.686423, 0.013295, -0.727081,
		0.603857, 0.546679, 0.580085,
		25.114765, 34.431778, 34.835770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.274809, 33.770138, 34.270073>,  <24.692064, 34.049103, 34.429710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.274809, 33.770138, 34.270073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331316, 33.971207, 34.611214>,  <25.365219, 34.091846, 34.815899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.331316, 33.971207, 34.611214>,  <25.274809, 33.770138, 34.270073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.331316, 33.971207, 34.611214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520709, -0.770426, 0.367839,
		0.841966, 0.392126, -0.370581,
		0.141266, 0.502673, 0.852856,
		25.373695, 34.122009, 34.867069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916285, 33.866665, 34.398590>,  <25.274809, 33.770138, 34.270073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916285, 33.866665, 34.398590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720541, 33.805016, 34.741932>,  <25.603096, 33.768028, 34.947937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720541, 33.805016, 34.741932>,  <25.916285, 33.866665, 34.398590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720541, 33.805016, 34.741932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495679, -0.858968, 0.128361,
		0.717517, 0.488284, 0.496737,
		-0.489358, -0.154121, 0.858356,
		25.573734, 33.758778, 34.999439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409246, 33.648235, 34.904026>,  <25.916285, 33.866665, 34.398590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409246, 33.648235, 34.904026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054539, 33.463696, 34.892719>,  <25.841713, 33.352974, 34.885933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054539, 33.463696, 34.892719>,  <26.409246, 33.648235, 34.904026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054539, 33.463696, 34.892719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452398, -0.853783, -0.257664,
		0.094735, -0.241278, 0.965821,
		-0.886770, -0.461345, -0.028271,
		25.788507, 33.325291, 34.884239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562029, 32.919430, 35.090958>,  <26.409246, 33.648235, 34.904026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562029, 32.919430, 35.090958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202135, 32.867947, 34.924149>,  <25.986198, 32.837055, 34.824062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202135, 32.867947, 34.924149>,  <26.562029, 32.919430, 35.090958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202135, 32.867947, 34.924149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349093, -0.785724, -0.510659,
		-0.261940, -0.605038, 0.751875,
		-0.899734, -0.128712, -0.417027,
		25.932215, 32.829334, 34.799042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401546, 32.196842, 35.156406>,  <26.562029, 32.919430, 35.090958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401546, 32.196842, 35.156406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193947, 32.311466, 34.834282>,  <26.069387, 32.380241, 34.641006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.193947, 32.311466, 34.834282>,  <26.401546, 32.196842, 35.156406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193947, 32.311466, 34.834282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192316, -0.878827, -0.436666,
		-0.832860, -0.381503, 0.400999,
		-0.518999, 0.286563, -0.805309,
		26.038248, 32.397434, 34.592690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934387, 31.606901, 35.087666>,  <26.401546, 32.196842, 35.156406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934387, 31.606901, 35.087666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908148, 31.775126, 34.725708>,  <25.892405, 31.876060, 34.508533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908148, 31.775126, 34.725708>,  <25.934387, 31.606901, 35.087666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908148, 31.775126, 34.725708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019218, -0.907208, -0.420244,
		-0.997661, -0.010178, 0.067595,
		-0.065599, 0.420560, -0.904890,
		25.888468, 31.901293, 34.454243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567673, 31.221138, 34.651070>,  <25.934387, 31.606901, 35.087666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567673, 31.221138, 34.651070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776880, 31.429737, 34.381405>,  <25.902405, 31.554895, 34.219608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.776880, 31.429737, 34.381405>,  <25.567673, 31.221138, 34.651070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776880, 31.429737, 34.381405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009764, -0.794584, -0.607076,
		-0.852265, 0.310930, -0.420675,
		0.523020, 0.521497, -0.674160,
		25.933786, 31.586185, 34.179157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207699, 31.204720, 33.901283>,  <25.567673, 31.221138, 34.651070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207699, 31.204720, 33.901283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602959, 31.257044, 33.869164>,  <25.840115, 31.288439, 33.849892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602959, 31.257044, 33.869164>,  <25.207699, 31.204720, 33.901283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602959, 31.257044, 33.869164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065642, -0.833046, -0.549296,
		-0.138745, 0.537516, -0.831761,
		0.988150, 0.130811, -0.080297,
		25.899405, 31.296288, 33.845074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391207, 31.021713, 33.182114>,  <25.207699, 31.204720, 33.901283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391207, 31.021713, 33.182114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706444, 30.979891, 33.424759>,  <25.895586, 30.954798, 33.570347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706444, 30.979891, 33.424759>,  <25.391207, 31.021713, 33.182114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706444, 30.979891, 33.424759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233911, -0.860678, -0.452238,
		0.569380, 0.498298, -0.653838,
		0.788094, -0.104555, 0.606611,
		25.942871, 30.948524, 33.606743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775908, 30.370293, 32.755646>,  <25.391207, 31.021713, 33.182114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775908, 30.370293, 32.755646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159285, 30.397934, 32.644932>,  <26.389311, 30.414518, 32.578503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159285, 30.397934, 32.644932>,  <25.775908, 30.370293, 32.755646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159285, 30.397934, 32.644932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210385, 0.484044, 0.849376,
		0.192670, -0.872311, 0.449391,
		0.958445, 0.069104, -0.276782,
		26.446817, 30.418665, 32.561897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274479, 30.031069, 33.245449>,  <25.775908, 30.370293, 32.755646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274479, 30.031069, 33.245449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397131, 30.362572, 33.058201>,  <26.470722, 30.561474, 32.945850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397131, 30.362572, 33.058201>,  <26.274479, 30.031069, 33.245449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397131, 30.362572, 33.058201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215374, 0.418649, 0.882240,
		0.927141, -0.371344, -0.050121,
		0.306631, 0.828756, -0.468125,
		26.489120, 30.611198, 32.917763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950954, 30.343374, 33.437374>,  <26.274479, 30.031069, 33.245449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950954, 30.343374, 33.437374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740751, 30.656084, 33.303112>,  <26.614630, 30.843710, 33.222553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740751, 30.656084, 33.303112>,  <26.950954, 30.343374, 33.437374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740751, 30.656084, 33.303112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367208, 0.564305, 0.739404,
		0.767462, 0.265307, -0.583622,
		-0.525510, 0.781775, -0.335660,
		26.583097, 30.890617, 33.202415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212852, 31.028536, 33.738194>,  <26.950954, 30.343374, 33.437374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212852, 31.028536, 33.738194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854425, 31.138914, 33.599098>,  <26.639370, 31.205141, 33.515640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854425, 31.138914, 33.599098>,  <27.212852, 31.028536, 33.738194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854425, 31.138914, 33.599098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092077, 0.650763, 0.753677,
		0.434267, 0.707363, -0.557719,
		-0.896066, 0.275944, -0.347737,
		26.585606, 31.221697, 33.494778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075975, 31.782078, 33.679131>,  <27.212852, 31.028536, 33.738194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075975, 31.782078, 33.679131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703627, 31.635950, 33.680706>,  <26.480217, 31.548273, 33.681652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703627, 31.635950, 33.680706>,  <27.075975, 31.782078, 33.679131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703627, 31.635950, 33.680706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321919, 0.825284, 0.463976,
		-0.172751, 0.430635, -0.885839,
		-0.930873, -0.365321, 0.003939,
		26.424364, 31.526354, 33.681889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615721, 32.195602, 33.309925>,  <27.075975, 31.782078, 33.679131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615721, 32.195602, 33.309925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382442, 32.009033, 33.575954>,  <26.242476, 31.897091, 33.735573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382442, 32.009033, 33.575954>,  <26.615721, 32.195602, 33.309925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382442, 32.009033, 33.575954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249917, 0.882039, 0.399435,
		-0.772932, 0.066735, -0.630970,
		-0.583196, -0.466426, 0.665078,
		26.207483, 31.869104, 33.775478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945982, 32.596470, 33.364796>,  <26.615721, 32.195602, 33.309925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945982, 32.596470, 33.364796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919764, 32.373322, 33.695728>,  <25.904032, 32.239433, 33.894287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919764, 32.373322, 33.695728>,  <25.945982, 32.596470, 33.364796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919764, 32.373322, 33.695728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211302, 0.818075, 0.534887,
		-0.975221, -0.139757, -0.171501,
		-0.065547, -0.557872, 0.827335,
		25.900099, 32.205959, 33.943928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317825, 32.687927, 33.591347>,  <25.945982, 32.596470, 33.364796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317825, 32.687927, 33.591347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535906, 32.591984, 33.912651>,  <25.666754, 32.534416, 34.105434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535906, 32.591984, 33.912651>,  <25.317825, 32.687927, 33.591347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535906, 32.591984, 33.912651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287604, 0.846519, 0.447984,
		-0.787425, -0.475261, 0.392541,
		0.545202, -0.239858, 0.803258,
		25.699467, 32.520027, 34.153629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600521, 32.489559, 33.471127>,  <25.317825, 32.687927, 33.591347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600521, 32.489559, 33.471127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305756, 32.598701, 33.223736>,  <24.128897, 32.664188, 33.075302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.305756, 32.598701, 33.223736>,  <24.600521, 32.489559, 33.471127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.305756, 32.598701, 33.223736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449392, -0.485732, -0.749741,
		-0.504989, -0.830429, 0.235319,
		-0.736908, 0.272860, -0.618477,
		24.084682, 32.680557, 33.038193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836679, 32.691326, 34.157806>,  <24.600521, 32.489559, 33.471127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836679, 32.691326, 34.157806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177744, 32.760719, 34.354935>,  <25.382381, 32.802357, 34.473213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177744, 32.760719, 34.354935>,  <24.836679, 32.691326, 34.157806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177744, 32.760719, 34.354935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428508, 0.771874, 0.469671,
		-0.298919, -0.611648, 0.732484,
		0.852660, 0.173482, 0.492825,
		25.433542, 32.812763, 34.502781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.662811, 32.766113, 34.867344>,  <24.836679, 32.691326, 34.157806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.662811, 32.766113, 34.867344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021481, 32.941788, 34.845089>,  <25.236681, 33.047192, 34.831738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021481, 32.941788, 34.845089>,  <24.662811, 32.766113, 34.867344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021481, 32.941788, 34.845089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317531, 0.725622, 0.610448,
		0.308468, -0.529706, 0.790100,
		0.896673, 0.439185, -0.055633,
		25.290482, 33.073544, 34.828400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049282, 32.862675, 35.561146>,  <24.662811, 32.766113, 34.867344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049282, 32.862675, 35.561146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137102, 33.165630, 35.315170>,  <25.189795, 33.347404, 35.167583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137102, 33.165630, 35.315170>,  <25.049282, 32.862675, 35.561146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137102, 33.165630, 35.315170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308140, 0.651889, 0.692885,
		0.925661, 0.037367, 0.376504,
		0.219548, 0.757393, -0.614943,
		25.202967, 33.392849, 35.130688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365107, 33.351234, 35.978935>,  <25.049282, 32.862675, 35.561146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365107, 33.351234, 35.978935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169748, 33.525730, 35.676632>,  <25.052534, 33.630428, 35.495251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169748, 33.525730, 35.676632>,  <25.365107, 33.351234, 35.978935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169748, 33.525730, 35.676632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165980, 0.803822, 0.571244,
		0.856692, 0.404433, -0.320177,
		-0.488395, 0.436238, -0.755756,
		25.023230, 33.656601, 35.449905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.683578, 34.064514, 35.681587>,  <25.365107, 33.351234, 35.978935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.683578, 34.064514, 35.681587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287815, 34.044537, 35.627068>,  <25.050358, 34.032551, 35.594357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.287815, 34.044537, 35.627068>,  <25.683578, 34.064514, 35.681587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.287815, 34.044537, 35.627068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108055, 0.880387, 0.461782,
		0.096937, 0.471619, -0.876458,
		-0.989408, -0.049942, -0.136303,
		24.990993, 34.029552, 35.586178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622286, 34.666149, 36.003853>,  <25.683578, 34.064514, 35.681587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622286, 34.666149, 36.003853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559145, 34.500137, 35.645451>,  <25.521261, 34.400532, 35.430408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559145, 34.500137, 35.645451>,  <25.622286, 34.666149, 36.003853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559145, 34.500137, 35.645451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147242, 0.907135, -0.394242,
		0.976424, 0.069699, -0.204302,
		-0.157851, -0.415029, -0.896010,
		25.511789, 34.375629, 35.376648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934940, 35.161938, 35.534130>,  <25.622286, 34.666149, 36.003853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934940, 35.161938, 35.534130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691288, 34.951420, 35.296822>,  <25.545097, 34.825111, 35.154434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691288, 34.951420, 35.296822>,  <25.934940, 35.161938, 35.534130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691288, 34.951420, 35.296822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292049, 0.844363, -0.449176,
		0.737337, -0.100341, -0.668031,
		-0.609131, -0.526292, -0.593275,
		25.508549, 34.793533, 35.118839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022310, 35.359318, 34.734966>,  <25.934940, 35.161938, 35.534130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022310, 35.359318, 34.734966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654922, 35.207478, 34.779350>,  <25.434490, 35.116371, 34.805981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654922, 35.207478, 34.779350>,  <26.022310, 35.359318, 34.734966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654922, 35.207478, 34.779350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387732, 0.809000, -0.441795,
		0.077945, -0.448797, -0.890228,
		-0.918471, -0.379605, 0.110956,
		25.379381, 35.093597, 34.812637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720100, 35.484089, 34.070671>,  <26.022310, 35.359318, 34.734966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720100, 35.484089, 34.070671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452036, 35.435318, 34.363522>,  <25.291197, 35.406055, 34.539234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452036, 35.435318, 34.363522>,  <25.720100, 35.484089, 34.070671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452036, 35.435318, 34.363522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516558, 0.784938, -0.342111,
		-0.532962, -0.607458, -0.589021,
		-0.670164, -0.121931, 0.732130,
		25.250986, 35.398739, 34.583160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250116, 35.998928, 34.019371>,  <25.720100, 35.484089, 34.070671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250116, 35.998928, 34.019371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392904, 36.358345, 34.121498>,  <26.478577, 36.573997, 34.182774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392904, 36.358345, 34.121498>,  <26.250116, 35.998928, 34.019371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392904, 36.358345, 34.121498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004629, 0.271618, -0.962394,
		-0.934104, 0.344729, 0.092801,
		0.356972, 0.898546, 0.255315,
		26.499996, 36.627911, 34.198093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.786531, 36.582996, 33.808102>,  <26.250116, 35.998928, 34.019371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.786531, 36.582996, 33.808102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172487, 36.687862, 33.814537>,  <26.404060, 36.750782, 33.818398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172487, 36.687862, 33.814537>,  <25.786531, 36.582996, 33.808102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172487, 36.687862, 33.814537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070633, 0.317995, -0.945458,
		-0.252979, 0.911126, 0.325347,
		0.964890, 0.262161, 0.016090,
		26.461954, 36.766510, 33.819363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859016, 37.166492, 33.472496>,  <25.786531, 36.582996, 33.808102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859016, 37.166492, 33.472496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246408, 37.072903, 33.438320>,  <26.478844, 37.016750, 33.417812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246408, 37.072903, 33.438320>,  <25.859016, 37.166492, 33.472496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246408, 37.072903, 33.438320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032249, 0.222363, -0.974431,
		0.246990, 0.946473, 0.207809,
		0.968481, -0.233973, -0.085444,
		26.536953, 37.002712, 33.412685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206215, 37.756935, 33.284847>,  <25.859016, 37.166492, 33.472496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206215, 37.756935, 33.284847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419472, 37.446270, 33.150650>,  <26.547426, 37.259872, 33.070133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419472, 37.446270, 33.150650>,  <26.206215, 37.756935, 33.284847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419472, 37.446270, 33.150650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024765, 0.410706, -0.911432,
		0.845662, 0.477616, 0.238199,
		0.533144, -0.776662, -0.335490,
		26.579414, 37.213272, 33.050003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924738, 37.888115, 32.876274>,  <26.206215, 37.756935, 33.284847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924738, 37.888115, 32.876274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751648, 37.558071, 32.730976>,  <26.647793, 37.360046, 32.643795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751648, 37.558071, 32.730976>,  <26.924738, 37.888115, 32.876274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751648, 37.558071, 32.730976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246121, 0.279497, -0.928066,
		0.867279, -0.491001, 0.082130,
		-0.432726, -0.825106, -0.363248,
		26.621830, 37.310539, 32.622002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669775, 37.818481, 32.587307>,  <26.924738, 37.888115, 32.876274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669775, 37.818481, 32.587307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559906, 37.436047, 32.628185>,  <27.493984, 37.206585, 32.652714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.559906, 37.436047, 32.628185>,  <27.669775, 37.818481, 32.587307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.559906, 37.436047, 32.628185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122844, -0.070522, -0.989917,
		0.953658, -0.284458, -0.098080,
		-0.274673, -0.956091, 0.102198,
		27.477505, 37.149220, 32.658844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130257, 37.448559, 32.289845>,  <27.669775, 37.818481, 32.587307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130257, 37.448559, 32.289845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764238, 37.292267, 32.249798>,  <27.544628, 37.198490, 32.225769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764238, 37.292267, 32.249798>,  <28.130257, 37.448559, 32.289845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764238, 37.292267, 32.249798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034440, 0.171620, -0.984561,
		0.401881, -0.904365, -0.143583,
		-0.915044, -0.390732, -0.100117,
		27.489725, 37.175049, 32.219761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152489, 36.913258, 31.705032>,  <28.130257, 37.448559, 32.289845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152489, 36.913258, 31.705032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774986, 37.035107, 31.756453>,  <27.548485, 37.108215, 31.787304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774986, 37.035107, 31.756453>,  <28.152489, 36.913258, 31.705032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774986, 37.035107, 31.756453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053503, 0.242968, -0.968558,
		-0.326280, -0.920962, -0.213005,
		-0.943758, 0.304624, 0.128550,
		27.491859, 37.126495, 31.795017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740889, 36.540451, 31.215361>,  <28.152489, 36.913258, 31.705032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740889, 36.540451, 31.215361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564438, 36.891994, 31.288044>,  <27.458569, 37.102921, 31.331654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564438, 36.891994, 31.288044>,  <27.740889, 36.540451, 31.215361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564438, 36.891994, 31.288044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056176, 0.175033, -0.982959,
		-0.895686, -0.443815, -0.027840,
		-0.441125, 0.878858, 0.181706,
		27.432100, 37.155651, 31.342556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119143, 36.571003, 30.732134>,  <27.740889, 36.540451, 31.215361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119143, 36.571003, 30.732134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307537, 36.912640, 30.820410>,  <27.420574, 37.117622, 30.873375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307537, 36.912640, 30.820410>,  <27.119143, 36.571003, 30.732134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307537, 36.912640, 30.820410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039549, 0.229481, -0.972509,
		-0.881254, 0.466766, 0.074303,
		0.470985, 0.854089, 0.220691,
		27.448833, 37.168865, 30.886618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724169, 37.182858, 30.548185>,  <27.119143, 36.571003, 30.732134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724169, 37.182858, 30.548185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113499, 37.267242, 30.512114>,  <27.347097, 37.317875, 30.490471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113499, 37.267242, 30.512114>,  <26.724169, 37.182858, 30.548185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113499, 37.267242, 30.512114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160503, 0.345251, -0.924684,
		-0.163943, 0.914492, 0.369902,
		0.973325, 0.210966, -0.090177,
		27.405497, 37.330532, 30.485060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960100, 37.855976, 30.910030>,  <26.724169, 37.182858, 30.548185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960100, 37.855976, 30.910030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976852, 37.465977, 30.997318>,  <26.986904, 37.231976, 31.049690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976852, 37.465977, 30.997318>,  <26.960100, 37.855976, 30.910030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976852, 37.465977, 30.997318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206990, 0.205205, 0.956580,
		-0.977446, -0.085230, -0.193222,
		0.041879, -0.975001, 0.218219,
		26.989416, 37.173477, 31.062784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442547, 37.802235, 31.394718>,  <26.960100, 37.855976, 30.910030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442547, 37.802235, 31.394718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665585, 37.470818, 31.415121>,  <26.799406, 37.271965, 31.427362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665585, 37.470818, 31.415121>,  <26.442547, 37.802235, 31.394718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665585, 37.470818, 31.415121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053636, 0.025360, 0.998239,
		-0.828381, -0.559346, -0.030300,
		0.557592, -0.828546, 0.051009,
		26.832863, 37.222252, 31.430424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131773, 37.268234, 31.756428>,  <26.442547, 37.802235, 31.394718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131773, 37.268234, 31.756428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526058, 37.207241, 31.785040>,  <26.762630, 37.170647, 31.802208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526058, 37.207241, 31.785040>,  <26.131773, 37.268234, 31.756428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526058, 37.207241, 31.785040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091977, -0.131565, 0.987031,
		-0.141122, -0.979506, -0.143712,
		0.985710, -0.152510, 0.071525,
		26.821774, 37.161499, 31.806499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259968, 36.668941, 32.081978>,  <26.131773, 37.268234, 31.756428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259968, 36.668941, 32.081978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622583, 36.831799, 32.126564>,  <26.840153, 36.929512, 32.153316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622583, 36.831799, 32.126564>,  <26.259968, 36.668941, 32.081978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622583, 36.831799, 32.126564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017874, -0.300843, 0.953506,
		0.421749, -0.862396, -0.280003,
		0.906536, 0.407145, 0.111465,
		26.894545, 36.953941, 32.160004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655262, 36.245480, 32.491692>,  <26.259968, 36.668941, 32.081978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655262, 36.245480, 32.491692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825289, 36.606441, 32.519920>,  <26.927305, 36.823021, 32.536858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825289, 36.606441, 32.519920>,  <26.655262, 36.245480, 32.491692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825289, 36.606441, 32.519920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003879, -0.079784, 0.996805,
		0.905154, -0.423433, -0.037413,
		0.425065, 0.902407, 0.070575,
		26.952808, 36.877163, 32.541092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388567, 36.194649, 32.734131>,  <26.655262, 36.245480, 32.491692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388567, 36.194649, 32.734131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156010, 36.508213, 32.821278>,  <27.016476, 36.696350, 32.873566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156010, 36.508213, 32.821278>,  <27.388567, 36.194649, 32.734131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156010, 36.508213, 32.821278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131697, -0.173576, 0.975975,
		0.802892, 0.596120, -0.002322,
		-0.581396, 0.783908, 0.217870,
		26.981590, 36.743385, 32.886639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766424, 36.690144, 33.188286>,  <27.388567, 36.194649, 32.734131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766424, 36.690144, 33.188286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379347, 36.759666, 33.261345>,  <27.147100, 36.801380, 33.305180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379347, 36.759666, 33.261345>,  <27.766424, 36.690144, 33.188286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379347, 36.759666, 33.261345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106253, -0.375836, 0.920575,
		0.228653, 0.910240, 0.345225,
		-0.967692, 0.173811, 0.182652,
		27.089039, 36.811810, 33.316139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708250, 36.979782, 33.881592>,  <27.766424, 36.690144, 33.188286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708250, 36.979782, 33.881592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314201, 36.917141, 33.853294>,  <27.077772, 36.879555, 33.836315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314201, 36.917141, 33.853294>,  <27.708250, 36.979782, 33.881592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314201, 36.917141, 33.853294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047239, -0.149039, 0.987702,
		-0.165224, 0.976351, 0.139424,
		-0.985124, -0.156606, -0.070747,
		27.018663, 36.870159, 33.832069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385996, 37.356606, 34.418327>,  <27.708250, 36.979782, 33.881592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385996, 37.356606, 34.418327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142645, 37.055103, 34.318939>,  <26.996635, 36.874203, 34.259308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142645, 37.055103, 34.318939>,  <27.385996, 37.356606, 34.418327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142645, 37.055103, 34.318939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017310, -0.300392, 0.953659,
		-0.793460, 0.584484, 0.169704,
		-0.608376, -0.753753, -0.248467,
		26.960133, 36.828976, 34.244400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072908, 37.476734, 35.004372>,  <27.385996, 37.356606, 34.418327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072908, 37.476734, 35.004372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049175, 37.113083, 34.839466>,  <27.034935, 36.894890, 34.740524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049175, 37.113083, 34.839466>,  <27.072908, 37.476734, 35.004372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049175, 37.113083, 34.839466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156715, -0.399386, 0.903289,
		-0.985860, 0.118201, -0.118778,
		-0.059331, -0.909131, -0.412263,
		27.031376, 36.840343, 34.715786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332180, 37.069099, 35.162090>,  <27.072908, 37.476734, 35.004372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332180, 37.069099, 35.162090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636457, 36.828171, 35.065292>,  <26.819023, 36.683613, 35.007214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636457, 36.828171, 35.065292>,  <26.332180, 37.069099, 35.162090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636457, 36.828171, 35.065292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050914, -0.316289, 0.947296,
		-0.647114, -0.732920, -0.209932,
		0.760691, -0.602320, -0.241991,
		26.864664, 36.647476, 34.992695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279692, 36.326328, 35.316418>,  <26.332180, 37.069099, 35.162090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279692, 36.326328, 35.316418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669205, 36.417313, 35.317715>,  <26.902912, 36.471905, 35.318493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669205, 36.417313, 35.317715>,  <26.279692, 36.326328, 35.316418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669205, 36.417313, 35.317715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081315, -0.361355, 0.928876,
		0.212458, -0.904258, -0.370376,
		0.973781, 0.227464, 0.003243,
		26.961340, 36.485550, 35.318687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393562, 36.017849, 35.859715>,  <26.279692, 36.326328, 35.316418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393562, 36.017849, 35.859715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750687, 36.181511, 35.784370>,  <26.964962, 36.279709, 35.739162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750687, 36.181511, 35.784370>,  <26.393562, 36.017849, 35.859715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750687, 36.181511, 35.784370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245030, -0.090285, 0.965302,
		0.377948, -0.907989, -0.180862,
		0.892813, 0.409151, -0.188362,
		27.018530, 36.304256, 35.727863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802273, 35.331673, 35.871880>,  <26.393562, 36.017849, 35.859715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802273, 35.331673, 35.871880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938414, 35.045357, 36.115784>,  <27.020098, 34.873566, 36.262127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938414, 35.045357, 36.115784>,  <26.802273, 35.331673, 35.871880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938414, 35.045357, 36.115784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845819, -0.050247, -0.531099,
		0.410794, 0.696504, 0.588328,
		0.340351, -0.715791, 0.609757,
		27.040520, 34.830620, 36.298710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501898, 35.519684, 36.071854>,  <26.802273, 35.331673, 35.871880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501898, 35.519684, 36.071854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435055, 35.125313, 36.070042>,  <27.394949, 34.888691, 36.068954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435055, 35.125313, 36.070042>,  <27.501898, 35.519684, 36.071854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435055, 35.125313, 36.070042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848641, -0.141498, -0.509693,
		0.501879, -0.089019, 0.860345,
		-0.167110, -0.985928, -0.004531,
		27.384922, 34.829533, 36.068684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111486, 35.281147, 35.980694>,  <27.501898, 35.519684, 36.071854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111486, 35.281147, 35.980694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906799, 34.953339, 35.877518>,  <27.783987, 34.756653, 35.815613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906799, 34.953339, 35.877518>,  <28.111486, 35.281147, 35.980694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906799, 34.953339, 35.877518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711650, -0.236109, -0.661670,
		0.481350, -0.522150, 0.704032,
		-0.511720, -0.819519, -0.257937,
		27.753283, 34.707481, 35.800137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556753, 34.670113, 35.901985>,  <28.111486, 35.281147, 35.980694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556753, 34.670113, 35.901985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236179, 34.644356, 35.664143>,  <28.043835, 34.628902, 35.521439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236179, 34.644356, 35.664143>,  <28.556753, 34.670113, 35.901985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236179, 34.644356, 35.664143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596793, -0.151301, -0.788001,
		-0.039221, -0.986388, 0.159689,
		-0.801436, -0.064395, -0.594604,
		27.995749, 34.625038, 35.485760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481253, 34.065060, 35.403900>,  <28.556753, 34.670113, 35.901985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481253, 34.065060, 35.403900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368376, 34.411442, 35.238735>,  <28.300650, 34.619270, 35.139637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368376, 34.411442, 35.238735>,  <28.481253, 34.065060, 35.403900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368376, 34.411442, 35.238735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353442, -0.306286, -0.883894,
		-0.891878, -0.395367, -0.219632,
		-0.282192, 0.865953, -0.412909,
		28.283718, 34.671227, 35.114864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075668, 33.839062, 34.851944>,  <28.481253, 34.065060, 35.403900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075668, 33.839062, 34.851944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250540, 34.194839, 34.798626>,  <28.355463, 34.408306, 34.766636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250540, 34.194839, 34.798626>,  <28.075668, 33.839062, 34.851944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250540, 34.194839, 34.798626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333367, -0.297910, -0.894492,
		-0.835308, 0.346618, -0.426751,
		0.437180, 0.889441, -0.133296,
		28.381695, 34.461674, 34.758636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841064, 34.190331, 34.208115>,  <28.075668, 33.839062, 34.851944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841064, 34.190331, 34.208115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214209, 34.310501, 34.287628>,  <28.438095, 34.382603, 34.335335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214209, 34.310501, 34.287628>,  <27.841064, 34.190331, 34.208115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214209, 34.310501, 34.287628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238736, -0.102345, -0.965676,
		-0.269775, 0.948297, -0.167197,
		0.932859, 0.300431, 0.198783,
		28.494066, 34.400631, 34.347263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045498, 34.701565, 33.771927>,  <27.841064, 34.190331, 34.208115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045498, 34.701565, 33.771927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402473, 34.543156, 33.858383>,  <28.616659, 34.448109, 33.910259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402473, 34.543156, 33.858383>,  <28.045498, 34.701565, 33.771927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402473, 34.543156, 33.858383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248038, 0.030490, -0.968270,
		0.376867, 0.917734, 0.125439,
		0.892440, -0.396023, 0.216142,
		28.670206, 34.424347, 33.923225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413328, 35.147533, 33.439175>,  <28.045498, 34.701565, 33.771927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413328, 35.147533, 33.439175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605961, 34.801769, 33.496979>,  <28.721540, 34.594311, 33.531662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605961, 34.801769, 33.496979>,  <28.413328, 35.147533, 33.439175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605961, 34.801769, 33.496979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185793, -0.060448, -0.980728,
		0.856482, 0.499148, 0.131490,
		0.481580, -0.864406, 0.144511,
		28.750435, 34.542446, 33.540333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026085, 35.198326, 33.026302>,  <28.413328, 35.147533, 33.439175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026085, 35.198326, 33.026302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940878, 34.814636, 33.100601>,  <28.889753, 34.584419, 33.145180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940878, 34.814636, 33.100601>,  <29.026085, 35.198326, 33.026302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940878, 34.814636, 33.100601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195029, -0.228032, -0.953921,
		0.957386, -0.166974, 0.235652,
		-0.213016, -0.959230, 0.185750,
		28.876972, 34.526867, 33.156326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664892, 34.762802, 32.847652>,  <29.026085, 35.198326, 33.026302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664892, 34.762802, 32.847652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316467, 34.587040, 32.759857>,  <29.107412, 34.481583, 32.707180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316467, 34.587040, 32.759857>,  <29.664892, 34.762802, 32.847652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316467, 34.587040, 32.759857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361515, -0.271052, -0.892097,
		0.332500, -0.856420, 0.394954,
		-0.871063, -0.439405, -0.219484,
		29.055149, 34.455219, 32.694012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729986, 34.130630, 32.556530>,  <29.664892, 34.762802, 32.847652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729986, 34.130630, 32.556530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384043, 34.283909, 32.426804>,  <29.176477, 34.375877, 32.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384043, 34.283909, 32.426804>,  <29.729986, 34.130630, 32.556530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384043, 34.283909, 32.426804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192754, -0.343038, -0.919332,
		-0.463540, -0.857604, 0.222815,
		-0.864856, 0.383198, -0.324318,
		29.124586, 34.398869, 32.329510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273954, 33.606258, 32.267864>,  <29.729986, 34.130630, 32.556530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273954, 33.606258, 32.267864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228924, 33.975700, 32.121288>,  <29.201906, 34.197365, 32.033340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228924, 33.975700, 32.121288>,  <29.273954, 33.606258, 32.267864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228924, 33.975700, 32.121288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304375, -0.319006, -0.897547,
		-0.945877, -0.212579, -0.245210,
		-0.112576, 0.923605, -0.366444,
		29.195150, 34.252781, 32.011356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843344, 33.594807, 31.548944>,  <29.273954, 33.606258, 32.267864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843344, 33.594807, 31.548944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093395, 33.903545, 31.595356>,  <29.243425, 34.088791, 31.623203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093395, 33.903545, 31.595356>,  <28.843344, 33.594807, 31.548944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093395, 33.903545, 31.595356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479994, -0.262936, -0.836941,
		-0.615484, 0.578889, -0.534852,
		0.625128, 0.771850, 0.116030,
		29.280933, 34.135101, 31.630165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857765, 33.866825, 30.928772>,  <28.843344, 33.594807, 31.548944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857765, 33.866825, 30.928772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188200, 34.018661, 31.095385>,  <29.386461, 34.109764, 31.195353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188200, 34.018661, 31.095385>,  <28.857765, 33.866825, 30.928772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188200, 34.018661, 31.095385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513629, -0.203014, -0.833649,
		-0.231881, 0.902607, -0.362673,
		0.826085, 0.379587, 0.416530,
		29.436026, 34.132538, 31.220345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157021, 34.273972, 30.422583>,  <28.857765, 33.866825, 30.928772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157021, 34.273972, 30.422583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454969, 34.153362, 30.660658>,  <29.633739, 34.080997, 30.803503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454969, 34.153362, 30.660658>,  <29.157021, 34.273972, 30.422583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454969, 34.153362, 30.660658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586603, -0.129079, -0.799522,
		0.317899, 0.944682, 0.080725,
		0.744874, -0.301521, 0.595187,
		29.678432, 34.062904, 30.839214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690645, 34.635326, 30.190027>,  <29.157021, 34.273972, 30.422583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690645, 34.635326, 30.190027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881218, 34.361927, 30.411242>,  <29.995562, 34.197887, 30.543970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881218, 34.361927, 30.411242>,  <29.690645, 34.635326, 30.190027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881218, 34.361927, 30.411242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743218, -0.022965, -0.668655,
		0.469723, 0.729593, 0.497046,
		0.476431, -0.683496, 0.553034,
		30.024147, 34.156879, 30.577152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346323, 34.826099, 30.232624>,  <29.690645, 34.635326, 30.190027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346323, 34.826099, 30.232624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378128, 34.441666, 30.338451>,  <30.397211, 34.211006, 30.401947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378128, 34.441666, 30.338451>,  <30.346323, 34.826099, 30.232624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378128, 34.441666, 30.338451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710083, -0.131663, -0.691698,
		0.699614, 0.242865, 0.671980,
		0.079515, -0.961083, 0.264568,
		30.401983, 34.153339, 30.417822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062626, 34.731781, 30.444113>,  <30.346323, 34.826099, 30.232624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062626, 34.731781, 30.444113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895090, 34.388794, 30.324566>,  <30.794569, 34.183002, 30.252838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895090, 34.388794, 30.324566>,  <31.062626, 34.731781, 30.444113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895090, 34.388794, 30.324566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638066, -0.043729, -0.768739,
		0.646100, -0.512674, 0.565437,
		-0.418838, -0.857469, -0.298867,
		30.769438, 34.131554, 30.234905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603983, 34.345005, 30.317877>,  <31.062626, 34.731781, 30.444113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603983, 34.345005, 30.317877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304447, 34.150696, 30.137541>,  <31.124725, 34.034111, 30.029339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304447, 34.150696, 30.137541>,  <31.603983, 34.345005, 30.317877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304447, 34.150696, 30.137541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474851, 0.081287, -0.876304,
		0.462336, -0.870295, 0.169800,
		-0.748841, -0.485777, -0.450842,
		31.079796, 34.004963, 30.002289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941387, 33.929680, 29.927292>,  <31.603983, 34.345005, 30.317877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941387, 33.929680, 29.927292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578400, 33.925079, 29.759308>,  <31.360607, 33.922318, 29.658518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578400, 33.925079, 29.759308>,  <31.941387, 33.929680, 29.927292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578400, 33.925079, 29.759308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420098, -0.034484, -0.906823,
		-0.004052, -0.999339, 0.036124,
		-0.907470, -0.011501, -0.419960,
		31.306158, 33.921627, 29.633320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897633, 33.276810, 29.476973>,  <31.941387, 33.929680, 29.927292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897633, 33.276810, 29.476973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660288, 33.586948, 29.390482>,  <31.517881, 33.773033, 29.338587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.660288, 33.586948, 29.390482>,  <31.897633, 33.276810, 29.476973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660288, 33.586948, 29.390482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575809, 0.221151, -0.787106,
		-0.562464, -0.591545, -0.577676,
		-0.593362, 0.775350, -0.216227,
		31.482279, 33.819553, 29.325613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888157, 33.283482, 28.781940>,  <31.897633, 33.276810, 29.476973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888157, 33.283482, 28.781940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724123, 33.641533, 28.851879>,  <31.625702, 33.856365, 28.893843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724123, 33.641533, 28.851879>,  <31.888157, 33.283482, 28.781940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724123, 33.641533, 28.851879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291654, 0.310346, -0.904778,
		-0.864158, -0.320040, -0.388337,
		-0.410084, 0.895131, 0.174847,
		31.601097, 33.910072, 28.904333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768707, 33.459816, 28.162031>,  <31.888157, 33.283482, 28.781940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768707, 33.459816, 28.162031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729008, 33.808334, 28.354279>,  <31.705189, 34.017445, 28.469627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729008, 33.808334, 28.354279>,  <31.768707, 33.459816, 28.162031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729008, 33.808334, 28.354279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304315, 0.486441, -0.819004,
		-0.947387, 0.064975, -0.313426,
		-0.099248, 0.871294, 0.480621,
		31.699234, 34.069721, 28.498465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350109, 33.842617, 27.758757>,  <31.768707, 33.459816, 28.162031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350109, 33.842617, 27.758757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578461, 34.085068, 27.980280>,  <31.715471, 34.230537, 28.113194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578461, 34.085068, 27.980280>,  <31.350109, 33.842617, 27.758757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578461, 34.085068, 27.980280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274104, 0.495121, -0.824453,
		-0.773928, 0.622464, 0.116511,
		0.570879, 0.606130, 0.553807,
		31.749725, 34.266907, 28.146421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160748, 34.499645, 27.562393>,  <31.350109, 33.842617, 27.758757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160748, 34.499645, 27.562393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508938, 34.568737, 27.746756>,  <31.717852, 34.610191, 27.857374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508938, 34.568737, 27.746756>,  <31.160748, 34.499645, 27.562393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508938, 34.568737, 27.746756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252939, 0.646328, -0.719918,
		-0.422247, 0.743253, 0.518925,
		0.870477, 0.172727, 0.460908,
		31.770081, 34.620556, 27.885027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217010, 35.222290, 27.502859>,  <31.160748, 34.499645, 27.562393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217010, 35.222290, 27.502859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580021, 35.078293, 27.589394>,  <31.797827, 34.991894, 27.641314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580021, 35.078293, 27.589394>,  <31.217010, 35.222290, 27.502859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580021, 35.078293, 27.589394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408585, 0.637469, -0.653217,
		0.097249, 0.681202, 0.725608,
		0.907525, -0.359997, 0.216335,
		31.852278, 34.970295, 27.654295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809010, 35.781479, 27.787308>,  <31.217010, 35.222290, 27.502859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809010, 35.781479, 27.787308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961700, 35.464813, 27.596500>,  <32.053314, 35.274815, 27.482016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.961700, 35.464813, 27.596500>,  <31.809010, 35.781479, 27.787308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961700, 35.464813, 27.596500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316219, 0.596819, -0.737437,
		0.868498, 0.130658, 0.478163,
		0.381729, -0.791667, -0.477019,
		32.076218, 35.227314, 27.453394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463867, 36.050934, 27.628452>,  <31.809010, 35.781479, 27.787308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463867, 36.050934, 27.628452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377457, 35.740494, 27.391470>,  <32.325611, 35.554230, 27.249281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377457, 35.740494, 27.391470>,  <32.463867, 36.050934, 27.628452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377457, 35.740494, 27.391470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288167, 0.529076, -0.798147,
		0.932894, -0.343151, 0.109349,
		-0.216030, -0.776097, -0.592456,
		32.312649, 35.507664, 27.213734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961113, 36.193596, 27.132772>,  <32.463867, 36.050934, 27.628452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961113, 36.193596, 27.132772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682301, 35.955303, 26.973148>,  <32.515015, 35.812328, 26.877375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682301, 35.955303, 26.973148>,  <32.961113, 36.193596, 27.132772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682301, 35.955303, 26.973148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063301, 0.503239, -0.861826,
		0.714243, -0.625979, -0.313062,
		-0.697030, -0.595735, -0.399060,
		32.473190, 35.776581, 26.853430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336941, 35.914803, 26.519457>,  <32.961113, 36.193596, 27.132772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336941, 35.914803, 26.519457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940998, 35.889572, 26.468531>,  <32.703434, 35.874435, 26.437975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940998, 35.889572, 26.468531>,  <33.336941, 35.914803, 26.519457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940998, 35.889572, 26.468531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084276, 0.460770, -0.883509,
		0.114393, -0.885275, -0.450780,
		-0.989854, -0.063077, -0.127316,
		32.644043, 35.870647, 26.430336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328003, 35.820934, 25.803862>,  <33.336941, 35.914803, 26.519457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328003, 35.820934, 25.803862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961758, 35.936607, 25.915588>,  <32.742008, 36.006012, 25.982624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961758, 35.936607, 25.915588>,  <33.328003, 35.820934, 25.803862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961758, 35.936607, 25.915588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069164, 0.571075, -0.817979,
		-0.396060, -0.768273, -0.502884,
		-0.915616, 0.289187, 0.279317,
		32.687073, 36.023365, 25.999384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962307, 35.754665, 25.216125>,  <33.328003, 35.820934, 25.803862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962307, 35.754665, 25.216125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752060, 36.008205, 25.443090>,  <32.625912, 36.160328, 25.579269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752060, 36.008205, 25.443090>,  <32.962307, 35.754665, 25.216125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752060, 36.008205, 25.443090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132331, 0.597941, -0.790541,
		-0.840363, -0.490612, -0.230413,
		-0.525622, 0.633850, 0.567411,
		32.594372, 36.198360, 25.613314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425209, 35.967209, 24.809286>,  <32.962307, 35.754665, 25.216125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425209, 35.967209, 24.809286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455875, 36.250130, 25.090384>,  <32.474274, 36.419884, 25.259041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455875, 36.250130, 25.090384>,  <32.425209, 35.967209, 24.809286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455875, 36.250130, 25.090384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144158, 0.689548, -0.709748,
		-0.986581, 0.155718, -0.049100,
		0.076664, 0.707302, 0.702742,
		32.478874, 36.462318, 25.301207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978010, 36.516060, 24.615601>,  <32.425209, 35.967209, 24.809286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978010, 36.516060, 24.615601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216610, 36.704216, 24.875731>,  <32.359768, 36.817108, 25.031809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216610, 36.704216, 24.875731>,  <31.978010, 36.516060, 24.615601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216610, 36.704216, 24.875731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164064, 0.721690, -0.672493,
		-0.785667, 0.507836, 0.353312,
		0.596498, 0.470390, 0.650326,
		32.395561, 36.845333, 25.070827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956535, 37.246735, 24.342356>,  <31.978010, 36.516060, 24.615601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956535, 37.246735, 24.342356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250267, 37.235020, 24.613621>,  <32.426506, 37.227989, 24.776381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250267, 37.235020, 24.613621>,  <31.956535, 37.246735, 24.342356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250267, 37.235020, 24.613621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501705, 0.696377, -0.513178,
		-0.457226, 0.717079, 0.526063,
		0.734327, -0.029290, 0.678163,
		32.470566, 37.226234, 24.817070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927780, 37.887310, 24.706747>,  <31.956535, 37.246735, 24.342356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927780, 37.887310, 24.706747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294838, 37.729393, 24.724937>,  <32.515072, 37.634644, 24.735851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294838, 37.729393, 24.724937>,  <31.927780, 37.887310, 24.706747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294838, 37.729393, 24.724937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362162, 0.783654, -0.504702,
		0.163619, 0.479605, 0.862095,
		0.917642, -0.394796, 0.045474,
		32.570129, 37.610954, 24.738581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431580, 38.382336, 25.093880>,  <31.927780, 37.887310, 24.706747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431580, 38.382336, 25.093880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662334, 38.143017, 24.871439>,  <32.800785, 37.999428, 24.737974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662334, 38.143017, 24.871439>,  <32.431580, 38.382336, 25.093880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662334, 38.143017, 24.871439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404837, 0.800730, -0.441518,
		0.709445, 0.029573, 0.704140,
		0.576883, -0.598295, -0.556102,
		32.835400, 37.963528, 24.704609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004414, 38.718197, 25.140459>,  <32.431580, 38.382336, 25.093880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004414, 38.718197, 25.140459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025909, 38.485516, 24.815809>,  <33.038807, 38.345905, 24.621019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025909, 38.485516, 24.815809>,  <33.004414, 38.718197, 25.140459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025909, 38.485516, 24.815809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435196, 0.745188, -0.505271,
		0.898730, -0.326061, 0.293204,
		0.053743, -0.581704, -0.811623,
		33.042030, 38.311005, 24.572323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726292, 38.884861, 24.872065>,  <33.004414, 38.718197, 25.140459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726292, 38.884861, 24.872065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534523, 38.697971, 24.574917>,  <33.419460, 38.585838, 24.396627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534523, 38.697971, 24.574917>,  <33.726292, 38.884861, 24.872065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534523, 38.697971, 24.574917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392998, 0.642568, -0.657768,
		0.784670, -0.607295, -0.124443,
		-0.479422, -0.467225, -0.742869,
		33.390697, 38.557804, 24.352057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170700, 38.813351, 24.296375>,  <33.726292, 38.884861, 24.872065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170700, 38.813351, 24.296375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810898, 38.783688, 24.124144>,  <33.595016, 38.765888, 24.020805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810898, 38.783688, 24.124144>,  <34.170700, 38.813351, 24.296375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810898, 38.783688, 24.124144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376420, 0.368789, -0.849884,
		0.221820, -0.926550, -0.303811,
		-0.899502, -0.074160, -0.430576,
		33.541046, 38.761440, 23.994970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219040, 38.590141, 23.628756>,  <34.170700, 38.813351, 24.296375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219040, 38.590141, 23.628756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886650, 38.812656, 23.630949>,  <33.687218, 38.946167, 23.632265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886650, 38.812656, 23.630949>,  <34.219040, 38.590141, 23.628756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886650, 38.812656, 23.630949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275366, 0.419860, -0.864807,
		-0.483386, -0.717119, -0.502075,
		-0.830971, 0.556290, 0.005485,
		33.637360, 38.979542, 23.632595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082344, 38.527302, 22.962145>,  <34.219040, 38.590141, 23.628756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082344, 38.527302, 22.962145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816525, 38.805660, 23.071037>,  <33.657032, 38.972675, 23.136374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816525, 38.805660, 23.071037>,  <34.082344, 38.527302, 22.962145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816525, 38.805660, 23.071037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250384, 0.550625, -0.796316,
		-0.704048, -0.461028, -0.540157,
		-0.664548, 0.695892, 0.272233,
		33.617161, 39.014427, 23.152708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781528, 38.715050, 22.354731>,  <34.082344, 38.527302, 22.962145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781528, 38.715050, 22.354731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727467, 39.017895, 22.610392>,  <33.695030, 39.199600, 22.763788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727467, 39.017895, 22.610392>,  <33.781528, 38.715050, 22.354731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727467, 39.017895, 22.610392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222444, 0.651790, -0.725044,
		-0.965532, 0.044185, -0.256505,
		-0.135151, 0.757111, 0.639153,
		33.686920, 39.245029, 22.802137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231819, 39.102749, 22.029100>,  <33.781528, 38.715050, 22.354731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231819, 39.102749, 22.029100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442776, 39.343811, 22.268656>,  <33.569351, 39.488449, 22.412390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442776, 39.343811, 22.268656>,  <33.231819, 39.102749, 22.029100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442776, 39.343811, 22.268656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219241, 0.584483, -0.781225,
		-0.820847, 0.543313, 0.176126,
		0.527393, 0.602653, 0.598888,
		33.600994, 39.524609, 22.448322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998779, 39.853973, 21.872253>,  <33.231819, 39.102749, 22.029100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998779, 39.853973, 21.872253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359272, 39.839882, 22.045017>,  <33.575565, 39.831425, 22.148676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.359272, 39.839882, 22.045017>,  <32.998779, 39.853973, 21.872253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359272, 39.839882, 22.045017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338415, 0.679766, -0.650687,
		-0.270673, 0.732582, 0.624547,
		0.901228, -0.035232, 0.431911,
		33.629639, 39.829311, 22.174591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141090, 40.524097, 21.943121>,  <32.998779, 39.853973, 21.872253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141090, 40.524097, 21.943121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498783, 40.358612, 22.011459>,  <33.713398, 40.259323, 22.052462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498783, 40.358612, 22.011459>,  <33.141090, 40.524097, 21.943121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498783, 40.358612, 22.011459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439021, 0.736322, -0.514869,
		0.087210, 0.535418, 0.840073,
		0.894234, -0.413711, 0.170845,
		33.767052, 40.234497, 22.062714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588596, 41.116547, 22.150537>,  <33.141090, 40.524097, 21.943121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588596, 41.116547, 22.150537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850803, 40.833675, 22.044558>,  <34.008129, 40.663952, 21.980968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850803, 40.833675, 22.044558>,  <33.588596, 41.116547, 22.150537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850803, 40.833675, 22.044558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556516, 0.689524, -0.463516,
		0.510478, 0.156392, 0.845549,
		0.655517, -0.707177, -0.264952,
		34.047459, 40.621521, 21.965073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186241, 41.379967, 22.275879>,  <33.588596, 41.116547, 22.150537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186241, 41.379967, 22.275879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225845, 41.093868, 21.999149>,  <34.249607, 40.922211, 21.833111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225845, 41.093868, 21.999149>,  <34.186241, 41.379967, 22.275879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225845, 41.093868, 21.999149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508025, 0.634139, -0.582905,
		0.855633, -0.293753, 0.426146,
		0.099006, -0.715246, -0.691825,
		34.255547, 40.879295, 21.791601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869663, 41.405071, 22.186407>,  <34.186241, 41.379967, 22.275879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869663, 41.405071, 22.186407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728634, 41.229359, 21.855898>,  <34.644016, 41.123932, 21.657593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728634, 41.229359, 21.855898>,  <34.869663, 41.405071, 22.186407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728634, 41.229359, 21.855898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497901, 0.659555, -0.563101,
		0.792331, -0.609935, -0.013823,
		-0.352572, -0.439280, -0.826272,
		34.622864, 41.097576, 21.608017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353344, 41.418400, 21.823387>,  <34.869663, 41.405071, 22.186407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353344, 41.418400, 21.823387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059418, 41.348087, 21.561352>,  <34.883060, 41.305901, 21.404131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059418, 41.348087, 21.561352>,  <35.353344, 41.418400, 21.823387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059418, 41.348087, 21.561352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399509, 0.668338, -0.627468,
		0.548117, -0.722790, -0.420883,
		-0.734820, -0.175779, -0.655089,
		34.838974, 41.295353, 21.364824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700684, 41.521099, 21.187941>,  <35.353344, 41.418400, 21.823387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700684, 41.521099, 21.187941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316082, 41.561981, 21.085911>,  <35.085320, 41.586510, 21.024693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316082, 41.561981, 21.085911>,  <35.700684, 41.521099, 21.187941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316082, 41.561981, 21.085911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225310, 0.824603, -0.518908,
		0.157300, -0.556404, -0.815887,
		-0.961505, 0.102203, -0.255073,
		35.027630, 41.592644, 21.009388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760124, 41.600624, 20.502281>,  <35.700684, 41.521099, 21.187941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760124, 41.600624, 20.502281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402893, 41.741066, 20.614801>,  <35.188553, 41.825333, 20.682314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402893, 41.741066, 20.614801>,  <35.760124, 41.600624, 20.502281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402893, 41.741066, 20.614801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072283, 0.729118, -0.680560,
		-0.444049, -0.587462, -0.676541,
		-0.893082, 0.351105, 0.281301,
		35.134968, 41.846397, 20.699192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297588, 41.693707, 19.875406>,  <35.760124, 41.600624, 20.502281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297588, 41.693707, 19.875406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160259, 41.937637, 20.161131>,  <35.077862, 42.083996, 20.332565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160259, 41.937637, 20.161131>,  <35.297588, 41.693707, 19.875406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160259, 41.937637, 20.161131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138588, 0.785109, -0.603653,
		-0.928935, -0.108255, -0.354063,
		-0.343326, 0.609824, 0.714312,
		35.057262, 42.120583, 20.375425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956497, 42.220287, 19.493275>,  <35.297588, 41.693707, 19.875406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956497, 42.220287, 19.493275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980553, 42.403587, 19.847988>,  <34.994987, 42.513569, 20.060816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980553, 42.403587, 19.847988>,  <34.956497, 42.220287, 19.493275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980553, 42.403587, 19.847988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048281, 0.886018, -0.461130,
		-0.997022, 0.070547, 0.031159,
		0.060139, 0.458252, 0.886786,
		34.998592, 42.541061, 20.114023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570583, 42.849026, 19.446136>,  <34.956497, 42.220287, 19.493275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570583, 42.849026, 19.446136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806824, 42.918095, 19.761444>,  <34.948570, 42.959534, 19.950630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806824, 42.918095, 19.761444>,  <34.570583, 42.849026, 19.446136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806824, 42.918095, 19.761444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195819, 0.916976, -0.347578,
		-0.782842, 0.359639, 0.507758,
		0.590604, 0.172670, 0.788271,
		34.984005, 42.969894, 19.997925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362122, 43.480045, 19.764116>,  <34.570583, 42.849026, 19.446136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362122, 43.480045, 19.764116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750778, 43.424248, 19.840494>,  <34.983971, 43.390770, 19.886322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750778, 43.424248, 19.840494>,  <34.362122, 43.480045, 19.764116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750778, 43.424248, 19.840494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209279, 0.883209, -0.419695,
		-0.110099, 0.447753, 0.887353,
		0.971638, -0.139497, 0.190946,
		35.042271, 43.382401, 19.897778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716080, 44.083549, 20.032976>,  <34.362122, 43.480045, 19.764116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716080, 44.083549, 20.032976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958775, 43.853069, 19.813936>,  <35.104393, 43.714783, 19.682512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958775, 43.853069, 19.813936>,  <34.716080, 44.083549, 20.032976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958775, 43.853069, 19.813936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355460, 0.812843, -0.461447,
		0.710998, 0.085328, 0.697998,
		0.606738, -0.576198, -0.547599,
		35.140797, 43.680210, 19.649656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468384, 44.299805, 20.070498>,  <34.716080, 44.083549, 20.032976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468384, 44.299805, 20.070498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347233, 44.134846, 19.726824>,  <35.274544, 44.035870, 19.520620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347233, 44.134846, 19.726824>,  <35.468384, 44.299805, 20.070498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347233, 44.134846, 19.726824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550490, 0.660220, -0.510950,
		0.777963, -0.627727, 0.027055,
		-0.302875, -0.412394, -0.859185,
		35.256371, 44.011127, 19.469069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803993, 44.641232, 19.549646>,  <35.468384, 44.299805, 20.070498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803993, 44.641232, 19.549646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599709, 44.416447, 19.289377>,  <35.477139, 44.281578, 19.133215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599709, 44.416447, 19.289377>,  <35.803993, 44.641232, 19.549646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599709, 44.416447, 19.289377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289340, 0.600327, -0.745580,
		0.809602, -0.569042, -0.143996,
		-0.510711, -0.561960, -0.650673,
		35.446495, 44.247860, 19.094175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157055, 44.016590, 19.720795>,  <35.803993, 44.641232, 19.549646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157055, 44.016590, 19.720795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345943, 44.353020, 19.615269>,  <36.459278, 44.554878, 19.551952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345943, 44.353020, 19.615269>,  <36.157055, 44.016590, 19.720795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345943, 44.353020, 19.615269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620399, -0.104513, 0.777292,
		0.626189, -0.530724, -0.571155,
		0.472221, 0.841076, -0.263816,
		36.487610, 44.605343, 19.536123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850586, 44.183697, 19.427486>,  <36.157055, 44.016590, 19.720795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850586, 44.183697, 19.427486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049984, 44.519150, 19.515308>,  <37.169624, 44.720421, 19.568003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049984, 44.519150, 19.515308>,  <36.850586, 44.183697, 19.427486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049984, 44.519150, 19.515308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245227, -0.106507, 0.963598,
		0.831485, -0.534188, 0.152561,
		0.498494, 0.838629, 0.219556,
		37.199532, 44.770737, 19.581175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288494, 44.038296, 19.981091>,  <36.850586, 44.183697, 19.427486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288494, 44.038296, 19.981091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186131, 44.424217, 20.005293>,  <37.124714, 44.655769, 20.019814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186131, 44.424217, 20.005293>,  <37.288494, 44.038296, 19.981091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186131, 44.424217, 20.005293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514682, -0.188963, 0.836299,
		0.818299, 0.182876, 0.544926,
		-0.255910, 0.964805, 0.060506,
		37.109356, 44.713657, 20.023445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341003, 44.175949, 20.620733>,  <37.288494, 44.038296, 19.981091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341003, 44.175949, 20.620733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119022, 44.486866, 20.502176>,  <36.985836, 44.673416, 20.431042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119022, 44.486866, 20.502176>,  <37.341003, 44.175949, 20.620733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119022, 44.486866, 20.502176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640585, -0.171977, 0.748382,
		0.530737, 0.605180, 0.593359,
		-0.554950, 0.777291, -0.296395,
		36.952538, 44.720055, 20.413258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292671, 44.689377, 21.190796>,  <37.341003, 44.175949, 20.620733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292671, 44.689377, 21.190796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986275, 44.714024, 20.934841>,  <36.802437, 44.728813, 20.781267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986275, 44.714024, 20.934841>,  <37.292671, 44.689377, 21.190796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986275, 44.714024, 20.934841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640462, 0.012555, 0.767887,
		0.055349, 0.998021, 0.029847,
		-0.765993, 0.061618, -0.639889,
		36.756477, 44.732510, 20.742874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977711, 45.272690, 21.394108>,  <37.292671, 44.689377, 21.190796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977711, 45.272690, 21.394108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720131, 45.007889, 21.240705>,  <36.565582, 44.849007, 21.148664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720131, 45.007889, 21.240705>,  <36.977711, 45.272690, 21.394108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720131, 45.007889, 21.240705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526743, 0.020088, 0.849788,
		-0.554856, 0.749234, -0.361640,
		-0.643954, -0.662001, -0.383507,
		36.526943, 44.809288, 21.125654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282280, 45.571335, 21.463451>,  <36.977711, 45.272690, 21.394108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282280, 45.571335, 21.463451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288734, 45.173447, 21.504004>,  <36.292606, 44.934715, 21.528336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288734, 45.173447, 21.504004>,  <36.282280, 45.571335, 21.463451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288734, 45.173447, 21.504004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409644, 0.085917, 0.908191,
		-0.912103, -0.056188, -0.406093,
		0.016140, -0.994717, 0.101382,
		36.293575, 44.875031, 21.534418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598843, 45.436569, 21.799770>,  <36.282280, 45.571335, 21.463451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598843, 45.436569, 21.799770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848602, 45.126457, 21.837851>,  <35.998459, 44.940388, 21.860699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848602, 45.126457, 21.837851>,  <35.598843, 45.436569, 21.799770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848602, 45.126457, 21.837851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311492, -0.135373, 0.940557,
		-0.716309, -0.616937, -0.326021,
		0.624399, -0.775282, 0.095203,
		36.035923, 44.893871, 21.866411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260990, 44.839920, 22.198872>,  <35.598843, 45.436569, 21.799770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260990, 44.839920, 22.198872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644455, 44.727074, 22.213703>,  <35.874535, 44.659367, 22.222601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644455, 44.727074, 22.213703>,  <35.260990, 44.839920, 22.198872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644455, 44.727074, 22.213703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142015, -0.361476, 0.921502,
		-0.246564, -0.888677, -0.386598,
		0.958664, -0.282113, 0.037079,
		35.932053, 44.642441, 22.224827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145981, 44.166962, 22.449018>,  <35.260990, 44.839920, 22.198872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145981, 44.166962, 22.449018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531216, 44.252861, 22.513943>,  <35.762356, 44.304401, 22.552896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531216, 44.252861, 22.513943>,  <35.145981, 44.166962, 22.449018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531216, 44.252861, 22.513943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059299, -0.418902, 0.906093,
		0.262573, -0.882272, -0.390705,
		0.963088, 0.214747, 0.162311,
		35.820141, 44.317284, 22.562635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443615, 43.565643, 22.683901>,  <35.145981, 44.166962, 22.449018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443615, 43.565643, 22.683901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711384, 43.828079, 22.823288>,  <35.872044, 43.985538, 22.906919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711384, 43.828079, 22.823288>,  <35.443615, 43.565643, 22.683901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711384, 43.828079, 22.823288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015499, -0.456635, 0.889519,
		0.742723, -0.600862, -0.295512,
		0.669419, 0.656086, 0.348466,
		35.912209, 44.024906, 22.927828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009972, 43.206188, 22.999588>,  <35.443615, 43.565643, 22.683901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009972, 43.206188, 22.999588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995430, 43.566299, 23.173109>,  <35.986706, 43.782364, 23.277222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995430, 43.566299, 23.173109>,  <36.009972, 43.206188, 22.999588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995430, 43.566299, 23.173109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094419, -0.429052, 0.898332,
		0.994869, 0.073614, -0.069407,
		-0.036351, 0.900275, 0.433801,
		35.984524, 43.836384, 23.303249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593178, 43.199356, 23.500483>,  <36.009972, 43.206188, 22.999588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593178, 43.199356, 23.500483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338837, 43.491203, 23.601160>,  <36.186234, 43.666313, 23.661566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338837, 43.491203, 23.601160>,  <36.593178, 43.199356, 23.500483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338837, 43.491203, 23.601160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131901, -0.424033, 0.895990,
		0.760456, 0.536519, 0.365860,
		-0.635853, 0.729618, 0.251692,
		36.148083, 43.710091, 23.676668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638947, 43.248650, 24.234125>,  <36.593178, 43.199356, 23.500483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638947, 43.248650, 24.234125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317680, 43.482430, 24.187918>,  <36.124920, 43.622696, 24.160194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317680, 43.482430, 24.187918>,  <36.638947, 43.248650, 24.234125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317680, 43.482430, 24.187918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246973, -0.150180, 0.957314,
		0.542155, 0.797410, 0.264963,
		-0.803164, 0.584451, -0.115517,
		36.076733, 43.657764, 24.153263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648876, 43.657513, 24.918461>,  <36.638947, 43.248650, 24.234125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648876, 43.657513, 24.918461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293713, 43.657612, 24.734449>,  <36.080616, 43.657669, 24.624043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293713, 43.657612, 24.734449>,  <36.648876, 43.657513, 24.918461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293713, 43.657612, 24.734449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428957, -0.361715, 0.827743,
		-0.166196, 0.932289, 0.321274,
		-0.887905, 0.000245, -0.460027,
		36.027340, 43.657684, 24.596441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246235, 43.976097, 25.378143>,  <36.648876, 43.657513, 24.918461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246235, 43.976097, 25.378143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005928, 43.773499, 25.130743>,  <35.861744, 43.651939, 24.982304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005928, 43.773499, 25.130743>,  <36.246235, 43.976097, 25.378143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005928, 43.773499, 25.130743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506357, -0.357601, 0.784681,
		-0.618614, 0.784591, -0.041633,
		-0.600765, -0.506496, -0.618500,
		35.825699, 43.621552, 24.945192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504692, 44.144325, 25.598646>,  <36.246235, 43.976097, 25.378143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504692, 44.144325, 25.598646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490314, 43.792908, 25.408125>,  <35.481686, 43.582058, 25.293812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490314, 43.792908, 25.408125>,  <35.504692, 44.144325, 25.598646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490314, 43.792908, 25.408125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577419, -0.370743, 0.727418,
		-0.815656, 0.301174, -0.493963,
		-0.035947, -0.878546, -0.476302,
		35.479530, 43.529343, 25.265234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865219, 43.878853, 25.608265>,  <35.504692, 44.144325, 25.598646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865219, 43.878853, 25.608265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076416, 43.542030, 25.564148>,  <35.203136, 43.339935, 25.537678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076416, 43.542030, 25.564148>,  <34.865219, 43.878853, 25.608265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076416, 43.542030, 25.564148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625161, -0.473285, 0.620625,
		-0.574799, -0.258738, -0.776312,
		0.527996, -0.842054, -0.110291,
		35.234814, 43.289413, 25.531061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392693, 43.387665, 25.413712>,  <34.865219, 43.878853, 25.608265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392693, 43.387665, 25.413712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692417, 43.174637, 25.571142>,  <34.872253, 43.046822, 25.665600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692417, 43.174637, 25.571142>,  <34.392693, 43.387665, 25.413712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692417, 43.174637, 25.571142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625123, -0.372730, 0.685780,
		-0.218527, -0.759897, -0.612212,
		0.749311, -0.532569, 0.393577,
		34.917210, 43.014866, 25.689215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169552, 42.695583, 25.352928>,  <34.392693, 43.387665, 25.413712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169552, 42.695583, 25.352928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442883, 42.733528, 25.642500>,  <34.606880, 42.756294, 25.816242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442883, 42.733528, 25.642500>,  <34.169552, 42.695583, 25.352928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442883, 42.733528, 25.642500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605343, -0.480745, 0.634384,
		0.408202, -0.871714, -0.271082,
		0.683323, 0.094859, 0.723927,
		34.647881, 42.761986, 25.859678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066032, 42.125706, 25.691891>,  <34.169552, 42.695583, 25.352928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066032, 42.125706, 25.691891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270779, 42.318851, 25.976097>,  <34.393627, 42.434738, 26.146622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270779, 42.318851, 25.976097>,  <34.066032, 42.125706, 25.691891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270779, 42.318851, 25.976097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459888, -0.544565, 0.701393,
		0.725600, -0.685778, -0.056681,
		0.511867, 0.482864, 0.710517,
		34.424339, 42.463711, 26.189253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479401, 41.574532, 26.111088>,  <34.066032, 42.125706, 25.691891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479401, 41.574532, 26.111088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448872, 41.911999, 26.323652>,  <34.430553, 42.114479, 26.451191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448872, 41.911999, 26.323652>,  <34.479401, 41.574532, 26.111088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448872, 41.911999, 26.323652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105236, -0.536805, 0.837118,
		0.991514, 0.007965, 0.129753,
		-0.076320, 0.843669, 0.531411,
		34.425976, 42.165100, 26.483076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871597, 41.406364, 26.657972>,  <34.479401, 41.574532, 26.111088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871597, 41.406364, 26.657972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640808, 41.708519, 26.782225>,  <34.502335, 41.889812, 26.856775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640808, 41.708519, 26.782225>,  <34.871597, 41.406364, 26.657972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640808, 41.708519, 26.782225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241808, -0.521249, 0.818430,
		0.780151, 0.397096, 0.483404,
		-0.576969, 0.755390, 0.310632,
		34.467716, 41.935135, 26.875414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873413, 41.340702, 27.376898>,  <34.871597, 41.406364, 26.657972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873413, 41.340702, 27.376898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543087, 41.550339, 27.293596>,  <34.344891, 41.676121, 27.243616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543087, 41.550339, 27.293596>,  <34.873413, 41.340702, 27.376898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543087, 41.550339, 27.293596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487835, -0.478596, 0.730043,
		0.282937, 0.704470, 0.650898,
		-0.825811, 0.524087, -0.208253,
		34.295345, 41.707565, 27.231121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559513, 41.518391, 28.019384>,  <34.873413, 41.340702, 27.376898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559513, 41.518391, 28.019384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254154, 41.585098, 27.769773>,  <34.070938, 41.625122, 27.620007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254154, 41.585098, 27.769773>,  <34.559513, 41.518391, 28.019384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254154, 41.585098, 27.769773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637176, -0.352931, 0.685161,
		-0.105974, 0.920666, 0.375689,
		-0.763397, 0.166771, -0.624029,
		34.025135, 41.635128, 27.582565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125828, 41.869755, 28.395809>,  <34.559513, 41.518391, 28.019384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125828, 41.869755, 28.395809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908939, 41.705505, 28.102583>,  <33.778805, 41.606956, 27.926647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908939, 41.705505, 28.102583>,  <34.125828, 41.869755, 28.395809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908939, 41.705505, 28.102583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685798, -0.287802, 0.668469,
		-0.485465, 0.865194, -0.125549,
		-0.542222, -0.410620, -0.733066,
		33.746273, 41.582321, 27.882664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420769, 42.007771, 28.622589>,  <34.125828, 41.869755, 28.395809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420769, 42.007771, 28.622589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399780, 41.710991, 28.355230>,  <33.387188, 41.532921, 28.194815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399780, 41.710991, 28.355230>,  <33.420769, 42.007771, 28.622589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399780, 41.710991, 28.355230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730367, -0.427945, 0.532379,
		-0.681037, 0.516110, -0.519441,
		-0.052474, -0.741952, -0.668396,
		33.384037, 41.488407, 28.154711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651096, 41.883553, 28.507759>,  <33.420769, 42.007771, 28.622589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651096, 41.883553, 28.507759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855640, 41.564323, 28.380266>,  <32.978367, 41.372787, 28.303770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855640, 41.564323, 28.380266>,  <32.651096, 41.883553, 28.507759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855640, 41.564323, 28.380266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711120, -0.601212, 0.364489,
		-0.482513, 0.040270, -0.874962,
		0.511360, -0.798074, -0.318730,
		33.009048, 41.324902, 28.284647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206123, 41.389248, 28.273457>,  <32.651096, 41.883553, 28.507759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206123, 41.389248, 28.273457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533100, 41.162090, 28.312016>,  <32.729286, 41.025795, 28.335150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533100, 41.162090, 28.312016>,  <32.206123, 41.389248, 28.273457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533100, 41.162090, 28.312016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541837, -0.701302, 0.463238,
		-0.195467, -0.430899, -0.880976,
		0.817438, -0.567892, 0.096396,
		32.778332, 40.991722, 28.340935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980509, 40.738449, 28.086357>,  <32.206123, 41.389248, 28.273457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980509, 40.738449, 28.086357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312126, 40.707115, 28.307827>,  <32.511097, 40.688316, 28.440708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312126, 40.707115, 28.307827>,  <31.980509, 40.738449, 28.086357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312126, 40.707115, 28.307827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400320, -0.774464, 0.489846,
		0.390428, -0.627749, -0.673422,
		0.829041, -0.078335, 0.553673,
		32.560837, 40.683613, 28.473928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089859, 40.060123, 28.235603>,  <31.980509, 40.738449, 28.086357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089859, 40.060123, 28.235603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324207, 40.222584, 28.516117>,  <32.464817, 40.320061, 28.684425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324207, 40.222584, 28.516117>,  <32.089859, 40.060123, 28.235603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324207, 40.222584, 28.516117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155792, -0.792766, 0.589280,
		0.795289, -0.454497, -0.401183,
		0.585871, 0.406147, 0.701285,
		32.499969, 40.344429, 28.726503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451405, 39.455254, 28.513599>,  <32.089859, 40.060123, 28.235603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451405, 39.455254, 28.513599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473919, 39.753292, 28.779432>,  <32.487427, 39.932114, 28.938932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473919, 39.753292, 28.779432>,  <32.451405, 39.455254, 28.513599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473919, 39.753292, 28.779432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159801, -0.650331, 0.742653,
		0.985543, -0.148002, 0.082461,
		0.056287, 0.745094, 0.664580,
		32.490807, 39.976822, 28.978806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899353, 39.218967, 29.070354>,  <32.451405, 39.455254, 28.513599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899353, 39.218967, 29.070354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717545, 39.507019, 29.280050>,  <32.608459, 39.679848, 29.405869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717545, 39.507019, 29.280050>,  <32.899353, 39.218967, 29.070354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717545, 39.507019, 29.280050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227177, -0.662804, 0.713500,
		0.861277, 0.205208, 0.464856,
		-0.454524, 0.720126, 0.524239,
		32.581188, 39.723057, 29.437323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100754, 39.157967, 29.724583>,  <32.899353, 39.218967, 29.070354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100754, 39.157967, 29.724583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748837, 39.346306, 29.750731>,  <32.537685, 39.459309, 29.766420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748837, 39.346306, 29.750731>,  <33.100754, 39.157967, 29.724583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748837, 39.346306, 29.750731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239632, -0.558056, 0.794449,
		0.410546, 0.683282, 0.603802,
		-0.879789, 0.470849, 0.065372,
		32.484901, 39.487560, 29.770342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026653, 39.301163, 30.411055>,  <33.100754, 39.157967, 29.724583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026653, 39.301163, 30.411055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660805, 39.351048, 30.257219>,  <32.441296, 39.380978, 30.164919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660805, 39.351048, 30.257219>,  <33.026653, 39.301163, 30.411055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660805, 39.351048, 30.257219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387774, -0.539785, 0.747170,
		-0.114413, 0.832514, 0.542061,
		-0.914626, 0.124711, -0.384586,
		32.386417, 39.388462, 30.141844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608364, 39.142784, 31.050850>,  <33.026653, 39.301163, 30.411055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608364, 39.142784, 31.050850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360760, 39.122208, 30.737371>,  <32.212196, 39.109863, 30.549284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360760, 39.122208, 30.737371>,  <32.608364, 39.142784, 31.050850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360760, 39.122208, 30.737371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741704, -0.289855, 0.604864,
		-0.258273, 0.955687, 0.141270,
		-0.619008, -0.051440, -0.783698,
		32.175056, 39.106777, 30.502262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975214, 39.403652, 31.364843>,  <32.608364, 39.142784, 31.050850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975214, 39.403652, 31.364843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909546, 39.172176, 31.045303>,  <31.870144, 39.033291, 30.853579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909546, 39.172176, 31.045303>,  <31.975214, 39.403652, 31.364843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909546, 39.172176, 31.045303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618841, -0.570228, 0.540255,
		-0.768169, 0.583057, -0.264503,
		-0.164172, -0.578692, -0.798851,
		31.860294, 38.998569, 30.805649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256346, 39.219505, 31.390087>,  <31.975214, 39.403652, 31.364843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256346, 39.219505, 31.390087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404894, 38.936443, 31.149651>,  <31.494022, 38.766605, 31.005388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404894, 38.936443, 31.149651>,  <31.256346, 39.219505, 31.390087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404894, 38.936443, 31.149651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533094, -0.692559, 0.485975,
		-0.760194, 0.139963, -0.634440,
		0.371369, -0.707652, -0.601094,
		31.516304, 38.724148, 30.969322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730291, 38.809139, 31.084295>,  <31.256346, 39.219505, 31.390087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730291, 38.809139, 31.084295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047762, 38.565884, 31.078077>,  <31.238245, 38.419930, 31.074347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047762, 38.565884, 31.078077>,  <30.730291, 38.809139, 31.084295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047762, 38.565884, 31.078077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530642, -0.704579, 0.471156,
		-0.297480, -0.365699, -0.881913,
		0.793678, -0.608139, -0.015543,
		31.285866, 38.383442, 31.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410793, 38.244537, 30.819931>,  <30.730291, 38.809139, 31.084295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410793, 38.244537, 30.819931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759926, 38.166088, 30.998684>,  <30.969404, 38.119019, 31.105936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759926, 38.166088, 30.998684>,  <30.410793, 38.244537, 30.819931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759926, 38.166088, 30.998684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396306, -0.819215, 0.414522,
		0.284799, -0.538910, -0.792759,
		0.872830, -0.196119, 0.446884,
		31.021774, 38.107254, 31.132750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483053, 37.533833, 30.793623>,  <30.410793, 38.244537, 30.819931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483053, 37.533833, 30.793623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761040, 37.647713, 31.057735>,  <30.927832, 37.716042, 31.216202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761040, 37.647713, 31.057735>,  <30.483053, 37.533833, 30.793623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761040, 37.647713, 31.057735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115915, -0.861906, 0.493641,
		0.709639, -0.419600, -0.565993,
		0.694965, 0.284700, 0.660280,
		30.969530, 37.733124, 31.255819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097067, 36.933132, 30.741650>,  <30.483053, 37.533833, 30.793623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097067, 36.933132, 30.741650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097986, 37.118153, 31.096285>,  <31.098537, 37.229164, 31.309067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097986, 37.118153, 31.096285>,  <31.097067, 36.933132, 30.741650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097986, 37.118153, 31.096285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052390, -0.885428, 0.461814,
		0.998624, 0.045387, -0.026268,
		0.002298, 0.462555, 0.886588,
		31.098675, 37.256920, 31.362261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375118, 36.488743, 31.085804>,  <31.097067, 36.933132, 30.741650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375118, 36.488743, 31.085804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228704, 36.704517, 31.389126>,  <31.140856, 36.833981, 31.571119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228704, 36.704517, 31.389126>,  <31.375118, 36.488743, 31.085804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228704, 36.704517, 31.389126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116749, -0.835036, 0.537666,
		0.923248, 0.108275, 0.368632,
		-0.366037, 0.539437, 0.758304,
		31.118893, 36.866348, 31.616617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788752, 36.454819, 31.732054>,  <31.375118, 36.488743, 31.085804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788752, 36.454819, 31.732054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423582, 36.566093, 31.851509>,  <31.204481, 36.632858, 31.923182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423582, 36.566093, 31.851509>,  <31.788752, 36.454819, 31.732054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423582, 36.566093, 31.851509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006458, -0.721782, 0.692090,
		0.408080, 0.633754, 0.657135,
		-0.912923, 0.278184, 0.298638,
		31.149706, 36.649548, 31.941101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768435, 36.400543, 32.451111>,  <31.788752, 36.454819, 31.732054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768435, 36.400543, 32.451111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378441, 36.391434, 32.362671>,  <31.144444, 36.385967, 32.309608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378441, 36.391434, 32.362671>,  <31.768435, 36.400543, 32.451111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378441, 36.391434, 32.362671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142555, -0.699142, 0.700627,
		-0.170534, 0.714620, 0.678407,
		-0.974985, -0.022771, -0.221100,
		31.085945, 36.384602, 32.296341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398643, 35.944553, 32.404835>,  <31.768435, 36.400543, 32.451111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398643, 35.944553, 32.404835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659897, 35.691628, 32.571487>,  <32.816650, 35.539871, 32.671478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659897, 35.691628, 32.571487>,  <32.398643, 35.944553, 32.404835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659897, 35.691628, 32.571487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756838, 0.527195, -0.386344,
		0.024644, 0.567662, 0.822893,
		0.653138, -0.632318, 0.416635,
		32.855839, 35.501934, 32.696480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807999, 36.442226, 32.797401>,  <32.398643, 35.944553, 32.404835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807999, 36.442226, 32.797401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038830, 36.120747, 32.739365>,  <33.177330, 35.927860, 32.704544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038830, 36.120747, 32.739365>,  <32.807999, 36.442226, 32.797401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038830, 36.120747, 32.739365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721513, 0.584948, -0.370479,
		0.382624, 0.109109, 0.917439,
		0.577077, -0.803698, -0.145092,
		33.211952, 35.879639, 32.695839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463467, 36.716610, 32.923008>,  <32.807999, 36.442226, 32.797401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463467, 36.716610, 32.923008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507511, 36.377277, 32.715855>,  <33.533936, 36.173679, 32.591560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507511, 36.377277, 32.715855>,  <33.463467, 36.716610, 32.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507511, 36.377277, 32.715855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734516, 0.420484, -0.532616,
		0.669599, -0.321752, 0.669412,
		0.110107, -0.848333, -0.517888,
		33.540543, 36.122776, 32.560490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135109, 36.761799, 32.764805>,  <33.463467, 36.716610, 32.923008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135109, 36.761799, 32.764805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989246, 36.480194, 32.521034>,  <33.901730, 36.311230, 32.374771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989246, 36.480194, 32.521034>,  <34.135109, 36.761799, 32.764805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989246, 36.480194, 32.521034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742060, 0.175638, -0.646914,
		0.562472, -0.688128, 0.458372,
		-0.364652, -0.704011, -0.609424,
		33.879852, 36.268990, 32.338207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757465, 36.296009, 32.521992>,  <34.135109, 36.761799, 32.764805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757465, 36.296009, 32.521992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453358, 36.293221, 32.262165>,  <34.270893, 36.291546, 32.106270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453358, 36.293221, 32.262165>,  <34.757465, 36.296009, 32.521992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453358, 36.293221, 32.262165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603329, 0.363077, -0.710049,
		0.240795, -0.931733, -0.271829,
		-0.760271, -0.006974, -0.649569,
		34.225277, 36.291130, 32.067295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083416, 36.098007, 31.899727>,  <34.757465, 36.296009, 32.521992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083416, 36.098007, 31.899727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741718, 36.256847, 31.765518>,  <34.536701, 36.352154, 31.684994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741718, 36.256847, 31.765518>,  <35.083416, 36.098007, 31.899727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741718, 36.256847, 31.765518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494192, 0.419955, -0.761191,
		-0.161368, -0.816055, -0.554990,
		-0.854245, 0.397104, -0.335521,
		34.485443, 36.375980, 31.664862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255638, 36.060673, 31.242907>,  <35.083416, 36.098007, 31.899727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255638, 36.060673, 31.242907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953457, 36.321423, 31.269287>,  <34.772148, 36.477871, 31.285116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953457, 36.321423, 31.269287>,  <35.255638, 36.060673, 31.242907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953457, 36.321423, 31.269287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304216, 0.438137, -0.845865,
		-0.580291, -0.618951, -0.529303,
		-0.755457, 0.651870, 0.065952,
		34.726818, 36.516983, 31.289072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886116, 36.091251, 30.578884>,  <35.255638, 36.060673, 31.242907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886116, 36.091251, 30.578884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833103, 36.429615, 30.785522>,  <34.801296, 36.632633, 30.909506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833103, 36.429615, 30.785522>,  <34.886116, 36.091251, 30.578884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833103, 36.429615, 30.785522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219679, 0.533301, -0.816903,
		-0.966528, 0.005218, -0.256510,
		-0.132534, 0.845909, 0.516596,
		34.793343, 36.683388, 30.940502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592533, 36.549881, 30.087461>,  <34.886116, 36.091251, 30.578884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592533, 36.549881, 30.087461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729618, 36.773891, 30.389170>,  <34.811871, 36.908298, 30.570194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729618, 36.773891, 30.389170>,  <34.592533, 36.549881, 30.087461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729618, 36.773891, 30.389170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274452, 0.708181, -0.650504,
		-0.898456, 0.429948, 0.089003,
		0.342713, 0.560022, 0.754269,
		34.832432, 36.941898, 30.615450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387966, 37.172806, 29.951342>,  <34.592533, 36.549881, 30.087461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387966, 37.172806, 29.951342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687729, 37.238010, 30.208036>,  <34.867584, 37.277134, 30.362053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687729, 37.238010, 30.208036>,  <34.387966, 37.172806, 29.951342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687729, 37.238010, 30.208036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232130, 0.843021, -0.485213,
		-0.620090, 0.512586, 0.593923,
		0.749403, 0.163009, 0.641735,
		34.912548, 37.286915, 30.400557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327831, 37.859379, 30.110334>,  <34.387966, 37.172806, 29.951342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327831, 37.859379, 30.110334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700314, 37.756554, 30.213696>,  <34.923805, 37.694859, 30.275711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700314, 37.756554, 30.213696>,  <34.327831, 37.859379, 30.110334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700314, 37.756554, 30.213696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345536, 0.848217, -0.401412,
		-0.115994, 0.463085, 0.878691,
		0.931209, -0.257058, 0.258401,
		34.979675, 37.679436, 30.291216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635078, 38.488510, 30.308395>,  <34.327831, 37.859379, 30.110334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635078, 38.488510, 30.308395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948029, 38.251797, 30.230747>,  <35.135799, 38.109768, 30.184158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948029, 38.251797, 30.230747>,  <34.635078, 38.488510, 30.308395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948029, 38.251797, 30.230747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477318, 0.769958, -0.423477,
		0.400071, 0.238660, 0.884864,
		0.782375, -0.591782, -0.194121,
		35.182739, 38.074261, 30.172510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114311, 38.883163, 30.449039>,  <34.635078, 38.488510, 30.308395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114311, 38.883163, 30.449039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293995, 38.623280, 30.203733>,  <35.401806, 38.467350, 30.056549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293995, 38.623280, 30.203733>,  <35.114311, 38.883163, 30.449039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293995, 38.623280, 30.203733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494497, 0.752494, -0.435001,
		0.744102, -0.107853, 0.659303,
		0.449205, -0.649709, -0.613265,
		35.428757, 38.428368, 30.019754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830631, 39.075764, 30.335487>,  <35.114311, 38.883163, 30.449039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830631, 39.075764, 30.335487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782219, 38.818466, 30.033073>,  <35.753170, 38.664089, 29.851625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782219, 38.818466, 30.033073>,  <35.830631, 39.075764, 30.335487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782219, 38.818466, 30.033073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613271, 0.550440, -0.566493,
		0.780545, -0.532219, 0.327862,
		-0.121030, -0.643242, -0.756037,
		35.745911, 38.625492, 29.806263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492176, 38.922104, 29.967203>,  <35.830631, 39.075764, 30.335487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492176, 38.922104, 29.967203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222191, 38.839642, 29.683817>,  <36.060200, 38.790165, 29.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222191, 38.839642, 29.683817>,  <36.492176, 38.922104, 29.967203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222191, 38.839642, 29.683817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503069, 0.573820, -0.646260,
		0.539760, -0.792610, -0.283599,
		-0.674967, -0.206155, -0.708463,
		36.019703, 38.777794, 29.471277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848686, 38.869102, 29.347141>,  <36.492176, 38.922104, 29.967203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848686, 38.869102, 29.347141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472031, 38.901817, 29.216524>,  <36.246037, 38.921448, 29.138153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472031, 38.901817, 29.216524>,  <36.848686, 38.869102, 29.347141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472031, 38.901817, 29.216524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295133, 0.667152, -0.683962,
		0.161913, -0.740417, -0.652354,
		-0.941637, 0.081789, -0.326543,
		36.189541, 38.926353, 29.118561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861378, 38.901939, 28.559544>,  <36.848686, 38.869102, 29.347141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861378, 38.901939, 28.559544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546097, 39.094364, 28.713072>,  <36.356930, 39.209820, 28.805189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546097, 39.094364, 28.713072>,  <36.861378, 38.901939, 28.559544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546097, 39.094364, 28.713072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205476, 0.793598, -0.572697,
		-0.580100, -0.372536, -0.724362,
		-0.788202, 0.481061, 0.383819,
		36.309635, 39.238682, 28.828218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644444, 39.321369, 27.984497>,  <36.861378, 38.901939, 28.559544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644444, 39.321369, 27.984497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420155, 39.474003, 28.278431>,  <36.285580, 39.565582, 28.454792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420155, 39.474003, 28.278431>,  <36.644444, 39.321369, 27.984497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420155, 39.474003, 28.278431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043518, 0.899835, -0.434053,
		-0.826857, -0.211407, -0.521166,
		-0.560726, 0.381580, 0.734836,
		36.251938, 39.588478, 28.498882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084099, 39.594200, 27.644102>,  <36.644444, 39.321369, 27.984497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084099, 39.594200, 27.644102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134884, 39.790497, 27.988903>,  <36.165356, 39.908276, 28.195784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134884, 39.790497, 27.988903>,  <36.084099, 39.594200, 27.644102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134884, 39.790497, 27.988903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044093, 0.870970, -0.489354,
		-0.990928, 0.024119, 0.132216,
		0.126959, 0.490744, 0.862004,
		36.172970, 39.937721, 28.247505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717354, 40.163342, 27.607508>,  <36.084099, 39.594200, 27.644102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717354, 40.163342, 27.607508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942162, 40.264969, 27.922363>,  <36.077045, 40.325947, 28.111277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942162, 40.264969, 27.922363>,  <35.717354, 40.163342, 27.607508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942162, 40.264969, 27.922363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027680, 0.945343, -0.324900,
		-0.826663, 0.204387, 0.524265,
		0.562016, 0.254071, 0.787138,
		36.110767, 40.341190, 28.158504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426212, 40.791073, 27.881556>,  <35.717354, 40.163342, 27.607508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426212, 40.791073, 27.881556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805847, 40.775219, 28.006557>,  <36.033630, 40.765709, 28.081558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805847, 40.775219, 28.006557>,  <35.426212, 40.791073, 27.881556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805847, 40.775219, 28.006557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217123, 0.801062, -0.557815,
		-0.228229, 0.597268, 0.768884,
		0.949089, -0.039633, 0.312506,
		36.090572, 40.763329, 28.100309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632446, 41.489861, 27.971640>,  <35.426212, 40.791073, 27.881556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632446, 41.489861, 27.971640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991119, 41.316196, 27.937092>,  <36.206326, 41.211998, 27.916363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991119, 41.316196, 27.937092>,  <35.632446, 41.489861, 27.971640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991119, 41.316196, 27.937092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335563, 0.793917, -0.507043,
		0.288708, 0.425676, 0.857582,
		0.896686, -0.434160, -0.086369,
		36.260124, 41.185947, 27.911180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156296, 41.937176, 28.085640>,  <35.632446, 41.489861, 27.971640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156296, 41.937176, 28.085640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345936, 41.656425, 27.872999>,  <36.459721, 41.487976, 27.745415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345936, 41.656425, 27.872999>,  <36.156296, 41.937176, 28.085640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345936, 41.656425, 27.872999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514784, 0.710786, -0.479354,
		0.714303, -0.046401, 0.698296,
		0.474097, -0.701876, -0.531603,
		36.488167, 41.445862, 27.713518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947865, 42.080341, 28.093746>,  <36.156296, 41.937176, 28.085640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947865, 42.080341, 28.093746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863220, 41.844246, 27.782145>,  <36.812435, 41.702591, 27.595184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863220, 41.844246, 27.782145>,  <36.947865, 42.080341, 28.093746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863220, 41.844246, 27.782145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588138, 0.559684, -0.583822,
		0.780587, -0.581702, 0.228706,
		-0.211607, -0.590234, -0.779003,
		36.799740, 41.667175, 27.548443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615841, 41.902248, 27.778006>,  <36.947865, 42.080341, 28.093746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615841, 41.902248, 27.778006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334953, 41.862656, 27.495989>,  <37.166420, 41.838898, 27.326778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334953, 41.862656, 27.495989>,  <37.615841, 41.902248, 27.778006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334953, 41.862656, 27.495989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533073, 0.583322, -0.612836,
		0.471928, -0.806187, -0.356856,
		-0.702223, -0.098984, -0.705043,
		37.124287, 41.832962, 27.284475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068615, 41.910362, 27.164762>,  <37.615841, 41.902248, 27.778006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068615, 41.910362, 27.164762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702869, 41.971455, 27.014769>,  <37.483421, 42.008110, 26.924772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702869, 41.971455, 27.014769>,  <38.068615, 41.910362, 27.164762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702869, 41.971455, 27.014769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385131, 0.613916, -0.689044,
		0.124969, -0.774455, -0.620164,
		-0.914362, 0.152735, -0.374987,
		37.428562, 42.017277, 26.902273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140732, 41.832745, 26.527958>,  <38.068615, 41.910362, 27.164762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140732, 41.832745, 26.527958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779385, 42.002579, 26.503759>,  <37.562576, 42.104481, 26.489241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779385, 42.002579, 26.503759>,  <38.140732, 41.832745, 26.527958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779385, 42.002579, 26.503759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197343, 0.286277, -0.937604,
		-0.380775, -0.858936, -0.342401,
		-0.903364, 0.424587, -0.060498,
		37.508377, 42.129955, 26.485611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737709, 41.390263, 26.117817>,  <38.140732, 41.832745, 26.527958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737709, 41.390263, 26.117817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569946, 41.752003, 26.086203>,  <37.469288, 41.969048, 26.067234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569946, 41.752003, 26.086203>,  <37.737709, 41.390263, 26.117817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569946, 41.752003, 26.086203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327301, 0.069431, -0.942366,
		-0.846743, -0.421101, -0.325115,
		-0.419404, 0.904352, -0.079036,
		37.444126, 42.023308, 26.062492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355862, 41.366573, 25.531458>,  <37.737709, 41.390263, 26.117817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355862, 41.366573, 25.531458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384087, 41.759754, 25.599360>,  <37.401024, 41.995663, 25.640100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384087, 41.759754, 25.599360>,  <37.355862, 41.366573, 25.531458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384087, 41.759754, 25.599360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293429, 0.142193, -0.945347,
		-0.953373, 0.116521, -0.278394,
		0.070567, 0.982957, 0.169753,
		37.405258, 42.054642, 25.650286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072975, 41.643406, 24.911804>,  <37.355862, 41.366573, 25.531458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072975, 41.643406, 24.911804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299767, 41.939796, 25.055738>,  <37.435841, 42.117630, 25.142099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299767, 41.939796, 25.055738>,  <37.072975, 41.643406, 24.911804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299767, 41.939796, 25.055738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375750, 0.156089, -0.913481,
		-0.733037, 0.653135, -0.189924,
		0.566982, 0.740980, 0.359834,
		37.469860, 42.162090, 25.163689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221203, 41.968784, 24.366060>,  <37.072975, 41.643406, 24.911804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221203, 41.968784, 24.366060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480309, 42.174633, 24.590761>,  <37.635773, 42.298141, 24.725582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480309, 42.174633, 24.590761>,  <37.221203, 41.968784, 24.366060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480309, 42.174633, 24.590761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508332, 0.257258, -0.821838,
		-0.567449, 0.817915, -0.094955,
		0.647766, 0.514619, 0.561753,
		37.674637, 42.329018, 24.759287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242393, 42.735493, 24.103312>,  <37.221203, 41.968784, 24.366060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242393, 42.735493, 24.103312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574978, 42.612343, 24.288305>,  <37.774529, 42.538452, 24.399302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.574978, 42.612343, 24.288305>,  <37.242393, 42.735493, 24.103312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574978, 42.612343, 24.288305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551934, 0.362373, -0.751036,
		0.063635, 0.879714, 0.471225,
		0.831456, -0.307878, 0.462484,
		37.824413, 42.519981, 24.427052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700191, 43.335762, 24.081875>,  <37.242393, 42.735493, 24.103312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700191, 43.335762, 24.081875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960537, 43.036373, 24.132730>,  <38.116745, 42.856739, 24.163244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960537, 43.036373, 24.132730>,  <37.700191, 43.335762, 24.081875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960537, 43.036373, 24.132730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468653, 0.264359, -0.842899,
		0.597278, 0.608196, 0.522836,
		0.650864, -0.748473, 0.127137,
		38.155796, 42.811832, 24.170872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214832, 43.550217, 23.673391>,  <37.700191, 43.335762, 24.081875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214832, 43.550217, 23.673391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321075, 43.169662, 23.735764>,  <38.384823, 42.941330, 23.773186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321075, 43.169662, 23.735764>,  <38.214832, 43.550217, 23.673391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321075, 43.169662, 23.735764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499610, -0.002493, -0.866247,
		0.824525, 0.307986, 0.474661,
		0.265609, -0.951388, 0.155929,
		38.400757, 42.884247, 23.782541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964165, 43.463154, 23.623016>,  <38.214832, 43.550217, 23.673391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964165, 43.463154, 23.623016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805298, 43.106976, 23.534145>,  <38.709976, 42.893269, 23.480822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805298, 43.106976, 23.534145>,  <38.964165, 43.463154, 23.623016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805298, 43.106976, 23.534145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504315, -0.009494, -0.863467,
		0.766762, -0.454990, 0.452836,
		-0.397168, -0.890446, -0.222179,
		38.686146, 42.839840, 23.467491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582405, 43.108482, 23.440607>,  <38.964165, 43.463154, 23.623016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582405, 43.108482, 23.440607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274929, 42.890663, 23.306393>,  <39.090443, 42.759972, 23.225864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274929, 42.890663, 23.306393>,  <39.582405, 43.108482, 23.440607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274929, 42.890663, 23.306393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410623, -0.017913, -0.911629,
		0.490417, -0.838537, 0.237374,
		-0.768687, -0.544550, -0.335538,
		39.044323, 42.727299, 23.205730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848362, 42.662571, 22.964334>,  <39.582405, 43.108482, 23.440607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848362, 42.662571, 22.964334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464706, 42.681225, 22.852707>,  <39.234512, 42.692417, 22.785730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464706, 42.681225, 22.852707>,  <39.848362, 42.662571, 22.964334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464706, 42.681225, 22.852707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282572, 0.107525, -0.953201,
		-0.014449, -0.993108, -0.116310,
		-0.959137, 0.046639, -0.279070,
		39.176964, 42.695217, 22.768986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819767, 42.238335, 22.477818>,  <39.848362, 42.662571, 22.964334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819767, 42.238335, 22.477818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511845, 42.488144, 22.425087>,  <39.327091, 42.638027, 22.393450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511845, 42.488144, 22.425087>,  <39.819767, 42.238335, 22.477818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511845, 42.488144, 22.425087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171198, 0.003059, -0.985232,
		-0.614894, -0.781003, -0.109272,
		-0.769803, 0.624520, -0.131826,
		39.280903, 42.675499, 22.385540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856422, 41.670063, 21.980091>,  <39.819767, 42.238335, 22.477818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856422, 41.670063, 21.980091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814747, 41.422684, 21.668535>,  <39.789742, 41.274258, 21.481602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814747, 41.422684, 21.668535>,  <39.856422, 41.670063, 21.980091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814747, 41.422684, 21.668535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454002, -0.667221, 0.590507,
		-0.884888, 0.415142, -0.211259,
		-0.104187, -0.618445, -0.778891,
		39.783489, 41.237152, 21.434868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108719, 41.323460, 22.011866>,  <39.856422, 41.670063, 21.980091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108719, 41.323460, 22.011866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367889, 41.101543, 21.803097>,  <39.523392, 40.968395, 21.677835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367889, 41.101543, 21.803097>,  <39.108719, 41.323460, 22.011866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367889, 41.101543, 21.803097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308593, -0.817643, 0.486034,
		-0.696392, -0.153852, -0.700976,
		0.647926, -0.554787, -0.521923,
		39.562267, 40.935108, 21.646521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684090, 40.776180, 21.783253>,  <39.108719, 41.323460, 22.011866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684090, 40.776180, 21.783253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063843, 40.656895, 21.743767>,  <39.291695, 40.585323, 21.720076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063843, 40.656895, 21.743767>,  <38.684090, 40.776180, 21.783253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063843, 40.656895, 21.743767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241798, -0.894371, 0.376344,
		-0.200518, -0.333425, -0.921206,
		0.949382, -0.298209, -0.098716,
		39.348656, 40.567432, 21.714151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596390, 40.076664, 21.722040>,  <38.684090, 40.776180, 21.783253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596390, 40.076664, 21.722040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990189, 40.098804, 21.788607>,  <39.226467, 40.112087, 21.828547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990189, 40.098804, 21.788607>,  <38.596390, 40.076664, 21.722040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990189, 40.098804, 21.788607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009485, -0.930694, 0.365675,
		0.175123, -0.361586, -0.915745,
		0.984501, 0.055352, 0.166416,
		39.285538, 40.115410, 21.838531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895786, 39.484646, 21.437943>,  <38.596390, 40.076664, 21.722040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895786, 39.484646, 21.437943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117817, 39.615452, 21.743872>,  <39.251034, 39.693935, 21.927429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117817, 39.615452, 21.743872>,  <38.895786, 39.484646, 21.437943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117817, 39.615452, 21.743872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138853, -0.870150, 0.472819,
		0.820128, -0.368649, -0.437594,
		0.555077, 0.327011, 0.764822,
		39.284340, 39.713554, 21.973318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300503, 38.842876, 21.711712>,  <38.895786, 39.484646, 21.437943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300503, 38.842876, 21.711712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332993, 39.109726, 22.007914>,  <39.352486, 39.269836, 22.185635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332993, 39.109726, 22.007914>,  <39.300503, 38.842876, 21.711712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332993, 39.109726, 22.007914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250455, -0.705460, 0.663022,
		0.964715, -0.239316, 0.109785,
		0.081222, 0.667123, 0.740506,
		39.357361, 39.309864, 22.230066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773483, 38.555046, 22.363560>,  <39.300503, 38.842876, 21.711712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773483, 38.555046, 22.363560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531796, 38.828232, 22.527744>,  <39.386784, 38.992142, 22.626255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.531796, 38.828232, 22.527744>,  <39.773483, 38.555046, 22.363560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531796, 38.828232, 22.527744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195941, -0.626658, 0.754259,
		0.772350, 0.375312, 0.512460,
		-0.604220, 0.682965, 0.410460,
		39.350529, 39.033123, 22.650883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873764, 38.481232, 23.160322>,  <39.773483, 38.555046, 22.363560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873764, 38.481232, 23.160322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526283, 38.667831, 23.093697>,  <39.317795, 38.779789, 23.053720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526283, 38.667831, 23.093697>,  <39.873764, 38.481232, 23.160322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526283, 38.667831, 23.093697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466583, -0.657711, 0.591369,
		0.166320, 0.591437, 0.789012,
		-0.868699, 0.466496, -0.166564,
		39.265675, 38.807781, 23.043728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574432, 38.533451, 23.813782>,  <39.873764, 38.481232, 23.160322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574432, 38.533451, 23.813782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265640, 38.587688, 23.565378>,  <39.080364, 38.620232, 23.416336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265640, 38.587688, 23.565378>,  <39.574432, 38.533451, 23.813782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265640, 38.587688, 23.565378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591611, -0.510551, 0.623966,
		-0.232455, 0.849090, 0.474353,
		-0.771985, 0.135589, -0.621011,
		39.034046, 38.628365, 23.379074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045883, 38.787739, 24.159719>,  <39.574432, 38.533451, 23.813782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045883, 38.787739, 24.159719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860077, 38.617542, 23.849060>,  <38.748592, 38.515423, 23.662664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860077, 38.617542, 23.849060>,  <39.045883, 38.787739, 24.159719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860077, 38.617542, 23.849060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664953, -0.411625, 0.623219,
		-0.584865, 0.805928, -0.091729,
		-0.464512, -0.425494, -0.776649,
		38.720722, 38.489895, 23.616066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345589, 38.940571, 24.356472>,  <39.045883, 38.787739, 24.159719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345589, 38.940571, 24.356472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326824, 38.656849, 24.075138>,  <38.315567, 38.486614, 23.906338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326824, 38.656849, 24.075138>,  <38.345589, 38.940571, 24.356472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326824, 38.656849, 24.075138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831009, -0.362992, 0.421498,
		-0.554277, 0.604250, -0.572414,
		-0.046908, -0.709308, -0.703336,
		38.312752, 38.444057, 23.864138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611576, 38.914062, 24.004208>,  <38.345589, 38.940571, 24.356472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611576, 38.914062, 24.004208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793873, 38.559105, 23.976414>,  <37.903252, 38.346130, 23.959738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793873, 38.559105, 23.976414>,  <37.611576, 38.914062, 24.004208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793873, 38.559105, 23.976414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787011, -0.438189, 0.434286,
		-0.415828, -0.143242, -0.898092,
		0.455742, -0.887396, -0.069478,
		37.930595, 38.292885, 23.955568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048893, 38.445274, 23.807726>,  <37.611576, 38.914062, 24.004208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048893, 38.445274, 23.807726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345379, 38.214939, 23.945715>,  <37.523270, 38.076736, 24.028507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345379, 38.214939, 23.945715>,  <37.048893, 38.445274, 23.807726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345379, 38.214939, 23.945715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669969, -0.602669, 0.433510,
		-0.041729, -0.552445, -0.832504,
		0.741216, -0.575842, 0.344972,
		37.567745, 38.042187, 24.049206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806522, 37.771420, 23.616367>,  <37.048893, 38.445274, 23.807726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806522, 37.771420, 23.616367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052917, 37.759090, 23.931229>,  <37.200756, 37.751694, 24.120146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052917, 37.759090, 23.931229>,  <36.806522, 37.771420, 23.616367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052917, 37.759090, 23.931229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681920, -0.521134, 0.513229,
		0.394391, -0.852918, -0.342033,
		0.615988, -0.030827, 0.787153,
		37.237713, 37.749844, 24.167374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644012, 37.096359, 23.853065>,  <36.806522, 37.771420, 23.616367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644012, 37.096359, 23.853065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843452, 37.269009, 24.153759>,  <36.963116, 37.372597, 24.334175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843452, 37.269009, 24.153759>,  <36.644012, 37.096359, 23.853065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843452, 37.269009, 24.153759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547691, -0.515326, 0.659146,
		0.671889, -0.740367, -0.020547,
		0.498599, 0.431620, 0.751734,
		36.993031, 37.398495, 24.379280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656197, 36.546814, 24.395094>,  <36.644012, 37.096359, 23.853065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656197, 36.546814, 24.395094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723537, 36.898445, 24.573477>,  <36.763943, 37.109425, 24.680508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723537, 36.898445, 24.573477>,  <36.656197, 36.546814, 24.395094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723537, 36.898445, 24.573477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533072, -0.299360, 0.791339,
		0.829151, -0.370951, 0.418215,
		0.168352, 0.879079, 0.445958,
		36.774044, 37.162170, 24.707264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890778, 36.354050, 25.128325>,  <36.656197, 36.546814, 24.395094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890778, 36.354050, 25.128325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726498, 36.718323, 25.146166>,  <36.627930, 36.936886, 25.156872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726498, 36.718323, 25.146166>,  <36.890778, 36.354050, 25.128325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726498, 36.718323, 25.146166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420563, -0.232618, 0.876936,
		0.808984, 0.341396, 0.478534,
		-0.410697, 0.910680, 0.044606,
		36.603287, 36.991528, 25.159548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287231, 36.614941, 25.642536>,  <36.890778, 36.354050, 25.128325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287231, 36.614941, 25.642536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978073, 36.867569, 25.618006>,  <36.792580, 37.019146, 25.603289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978073, 36.867569, 25.618006>,  <37.287231, 36.614941, 25.642536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978073, 36.867569, 25.618006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065514, 0.016702, 0.997712,
		0.631146, 0.775141, 0.028468,
		-0.772892, 0.631567, -0.061324,
		36.746204, 37.057037, 25.599609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395920, 37.131187, 26.227266>,  <37.287231, 36.614941, 25.642536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395920, 37.131187, 26.227266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020615, 37.092327, 26.094465>,  <36.795433, 37.069012, 26.014784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020615, 37.092327, 26.094465>,  <37.395920, 37.131187, 26.227266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020615, 37.092327, 26.094465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313423, -0.167409, 0.934741,
		-0.146388, 0.981090, 0.126625,
		-0.938263, -0.097147, -0.332002,
		36.739136, 37.063183, 25.994865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958271, 37.486095, 26.724030>,  <37.395920, 37.131187, 26.227266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958271, 37.486095, 26.724030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723476, 37.209499, 26.555605>,  <36.582600, 37.043541, 26.454550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723476, 37.209499, 26.555605>,  <36.958271, 37.486095, 26.724030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723476, 37.209499, 26.555605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339476, -0.261931, 0.903409,
		-0.734984, 0.673230, -0.080992,
		-0.586988, -0.691486, -0.421061,
		36.547379, 37.002052, 26.429287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352543, 37.547760, 27.099705>,  <36.958271, 37.486095, 26.724030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352543, 37.547760, 27.099705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303932, 37.195572, 26.916401>,  <36.274765, 36.984257, 26.806419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303932, 37.195572, 26.916401>,  <36.352543, 37.547760, 27.099705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303932, 37.195572, 26.916401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369633, -0.388330, 0.844140,
		-0.921197, 0.271972, -0.278260,
		-0.121526, -0.880473, -0.458257,
		36.267475, 36.931431, 26.778923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599712, 37.297344, 27.145374>,  <36.352543, 37.547760, 27.099705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599712, 37.297344, 27.145374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838589, 36.982967, 27.081308>,  <35.981915, 36.794342, 27.042870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838589, 36.982967, 27.081308>,  <35.599712, 37.297344, 27.145374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838589, 36.982967, 27.081308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296267, -0.401701, 0.866523,
		-0.745375, -0.470032, -0.472743,
		0.597194, -0.785943, -0.160163,
		36.017746, 36.747185, 27.033260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193710, 36.747021, 27.341848>,  <35.599712, 37.297344, 27.145374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193710, 36.747021, 27.341848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576839, 36.634048, 27.363039>,  <35.806717, 36.566265, 27.375753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576839, 36.634048, 27.363039>,  <35.193710, 36.747021, 27.341848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576839, 36.634048, 27.363039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172784, -0.418742, 0.891516,
		-0.229610, -0.863068, -0.449881,
		0.957823, -0.282433, 0.052977,
		35.864185, 36.549316, 27.378931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107994, 36.145538, 27.521465>,  <35.193710, 36.747021, 27.341848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107994, 36.145538, 27.521465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480938, 36.228958, 27.639595>,  <35.704704, 36.279011, 27.710474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480938, 36.228958, 27.639595>,  <35.107994, 36.145538, 27.521465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480938, 36.228958, 27.639595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186635, -0.421964, 0.887194,
		0.309640, -0.882300, -0.354499,
		0.932358, 0.208549, 0.295325,
		35.760647, 36.291523, 27.728193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299736, 35.569046, 27.780182>,  <35.107994, 36.145538, 27.521465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299736, 35.569046, 27.780182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569199, 35.829445, 27.920120>,  <35.730877, 35.985683, 28.004084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569199, 35.829445, 27.920120>,  <35.299736, 35.569046, 27.780182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569199, 35.829445, 27.920120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046671, -0.434956, 0.899242,
		0.737567, -0.622110, -0.262629,
		0.673659, 0.650994, 0.349844,
		35.771297, 36.024742, 28.025074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765011, 35.209126, 28.168417>,  <35.299736, 35.569046, 27.780182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765011, 35.209126, 28.168417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889641, 35.570358, 28.286646>,  <35.964420, 35.787098, 28.357582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889641, 35.570358, 28.286646>,  <35.765011, 35.209126, 28.168417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889641, 35.570358, 28.286646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224882, -0.372299, 0.900456,
		0.923227, -0.214094, -0.319087,
		0.311578, 0.903082, 0.295571,
		35.983116, 35.841282, 28.375317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404942, 35.186363, 28.499172>,  <35.765011, 35.209126, 28.168417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404942, 35.186363, 28.499172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267544, 35.525551, 28.660641>,  <36.185104, 35.729065, 28.757523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267544, 35.525551, 28.660641>,  <36.404942, 35.186363, 28.499172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267544, 35.525551, 28.660641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222158, -0.344259, 0.912212,
		0.912499, 0.403022, -0.070132,
		-0.343498, 0.847974, 0.403671,
		36.164494, 35.779942, 28.781742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952118, 35.330036, 29.003469>,  <36.404942, 35.186363, 28.499172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952118, 35.330036, 29.003469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629482, 35.554680, 29.077236>,  <36.435902, 35.689465, 29.121496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629482, 35.554680, 29.077236>,  <36.952118, 35.330036, 29.003469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629482, 35.554680, 29.077236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162576, -0.089179, 0.982658,
		0.568311, 0.822586, -0.019372,
		-0.806592, 0.561605, 0.184415,
		36.387505, 35.723160, 29.132561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147404, 35.725544, 29.468369>,  <36.952118, 35.330036, 29.003469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147404, 35.725544, 29.468369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749840, 35.761272, 29.494167>,  <36.511299, 35.782707, 29.509647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749840, 35.761272, 29.494167>,  <37.147404, 35.725544, 29.468369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749840, 35.761272, 29.494167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042374, -0.230476, 0.972155,
		0.101696, 0.968970, 0.225289,
		-0.993913, 0.089318, 0.064497,
		36.451668, 35.788067, 29.513517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963120, 36.096958, 30.136156>,  <37.147404, 35.725544, 29.468369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963120, 36.096958, 30.136156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655411, 35.857071, 30.048012>,  <36.470783, 35.713139, 29.995125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655411, 35.857071, 30.048012>,  <36.963120, 36.096958, 30.136156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655411, 35.857071, 30.048012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051543, -0.402026, 0.914176,
		-0.636836, 0.691894, 0.340179,
		-0.769274, -0.599714, -0.220363,
		36.424629, 35.677158, 29.981903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419163, 36.188839, 30.569311>,  <36.963120, 36.096958, 30.136156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419163, 36.188839, 30.569311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356766, 35.810455, 30.455593>,  <36.319328, 35.583424, 30.387363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356766, 35.810455, 30.455593>,  <36.419163, 36.188839, 30.569311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356766, 35.810455, 30.455593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067638, -0.297372, 0.952363,
		-0.985440, 0.129333, 0.110370,
		-0.155993, -0.945961, -0.284294,
		36.309967, 35.526669, 30.370304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999321, 35.869682, 31.098829>,  <36.419163, 36.188839, 30.569311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999321, 35.869682, 31.098829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145618, 35.566364, 30.882971>,  <36.233398, 35.384373, 30.753456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145618, 35.566364, 30.882971>,  <35.999321, 35.869682, 31.098829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145618, 35.566364, 30.882971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205115, -0.499891, 0.841449,
		-0.907833, -0.418443, -0.027293,
		0.365742, -0.758297, -0.539646,
		36.255341, 35.338875, 30.721077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710449, 35.260445, 31.371485>,  <35.999321, 35.869682, 31.098829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710449, 35.260445, 31.371485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044910, 35.133247, 31.192724>,  <36.245586, 35.056927, 31.085468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044910, 35.133247, 31.192724>,  <35.710449, 35.260445, 31.371485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044910, 35.133247, 31.192724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110385, -0.700551, 0.705013,
		-0.537269, -0.638832, -0.550668,
		0.836156, -0.317996, -0.446903,
		36.295757, 35.037849, 31.058653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705631, 34.583664, 31.409477>,  <35.710449, 35.260445, 31.371485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705631, 34.583664, 31.409477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092094, 34.621540, 31.313496>,  <36.323971, 34.644264, 31.255907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092094, 34.621540, 31.313496>,  <35.705631, 34.583664, 31.409477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092094, 34.621540, 31.313496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244238, -0.635147, 0.732759,
		-0.083023, -0.766565, -0.636777,
		0.966155, 0.094690, -0.239956,
		36.381943, 34.649948, 31.241508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922543, 33.910866, 31.459892>,  <35.705631, 34.583664, 31.409477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922543, 33.910866, 31.459892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259895, 34.125652, 31.467697>,  <36.462307, 34.254524, 31.472380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.259895, 34.125652, 31.467697>,  <35.922543, 33.910866, 31.459892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259895, 34.125652, 31.467697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375744, -0.615336, 0.692949,
		0.384097, -0.577086, -0.720723,
		0.843378, 0.536967, 0.019512,
		36.512909, 34.286743, 31.473551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497520, 33.376419, 31.599070>,  <35.922543, 33.910866, 31.459892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497520, 33.376419, 31.599070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648926, 33.728920, 31.712294>,  <36.739769, 33.940422, 31.780228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648926, 33.728920, 31.712294>,  <36.497520, 33.376419, 31.599070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648926, 33.728920, 31.712294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527620, -0.456687, 0.716278,
		0.760492, -0.121770, -0.637827,
		0.378508, 0.881254, 0.283058,
		36.762478, 33.993298, 31.797211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233238, 33.225025, 31.804405>,  <36.497520, 33.376419, 31.599070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233238, 33.225025, 31.804405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134033, 33.580097, 31.959585>,  <37.074512, 33.793140, 32.052692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134033, 33.580097, 31.959585>,  <37.233238, 33.225025, 31.804405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134033, 33.580097, 31.959585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443478, -0.252006, 0.860128,
		0.861289, 0.385369, -0.331168,
		-0.248011, 0.887685, 0.387952,
		37.059631, 33.846401, 32.075970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793961, 33.575500, 32.086571>,  <37.233238, 33.225025, 31.804405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793961, 33.575500, 32.086571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485420, 33.730171, 32.288761>,  <37.300297, 33.822975, 32.410076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485420, 33.730171, 32.288761>,  <37.793961, 33.575500, 32.086571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485420, 33.730171, 32.288761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511904, -0.094927, 0.853781,
		0.378121, 0.917316, -0.124720,
		-0.771348, 0.386678, 0.505472,
		37.254017, 33.846176, 32.440403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096336, 33.873955, 32.675709>,  <37.793961, 33.575500, 32.086571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096336, 33.873955, 32.675709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710049, 33.864311, 32.779102>,  <37.478275, 33.858524, 32.841137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710049, 33.864311, 32.779102>,  <38.096336, 33.873955, 32.675709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710049, 33.864311, 32.779102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259567, -0.107100, 0.959768,
		0.004548, 0.993956, 0.109685,
		-0.965715, -0.024105, 0.258485,
		37.420334, 33.857079, 32.856647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008968, 34.258141, 33.389912>,  <38.096336, 33.873955, 32.675709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008968, 34.258141, 33.389912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702538, 34.010452, 33.320988>,  <37.518681, 33.861839, 33.279633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702538, 34.010452, 33.320988>,  <38.008968, 34.258141, 33.389912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702538, 34.010452, 33.320988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107559, -0.387804, 0.915445,
		-0.633687, 0.682767, 0.363690,
		-0.766076, -0.619223, -0.172308,
		37.472713, 33.824684, 33.269295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720318, 34.342194, 33.997097>,  <38.008968, 34.258141, 33.389912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720318, 34.342194, 33.997097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593491, 33.999119, 33.835186>,  <37.517395, 33.793274, 33.738037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593491, 33.999119, 33.835186>,  <37.720318, 34.342194, 33.997097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593491, 33.999119, 33.835186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076288, -0.448484, 0.890529,
		-0.945330, 0.251479, 0.207631,
		-0.317068, -0.857683, -0.404780,
		37.498371, 33.741814, 33.713753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996712, 34.020817, 34.383572>,  <37.720318, 34.342194, 33.997097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996712, 34.020817, 34.383572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264282, 33.757927, 34.244663>,  <37.424824, 33.600193, 34.161320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264282, 33.757927, 34.244663>,  <36.996712, 34.020817, 34.383572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264282, 33.757927, 34.244663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146014, -0.341904, 0.928322,
		-0.728848, -0.671684, -0.132744,
		0.668924, -0.657223, -0.347271,
		37.464958, 33.560760, 34.140480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750805, 33.401497, 34.703300>,  <36.996712, 34.020817, 34.383572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750805, 33.401497, 34.703300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136669, 33.342285, 34.616096>,  <37.368187, 33.306759, 34.563774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136669, 33.342285, 34.616096>,  <36.750805, 33.401497, 34.703300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136669, 33.342285, 34.616096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177473, -0.246590, 0.952731,
		-0.194786, -0.957749, -0.211604,
		0.964656, -0.148024, -0.218007,
		37.426067, 33.297878, 34.550694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991451, 32.772175, 34.949463>,  <36.750805, 33.401497, 34.703300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991451, 32.772175, 34.949463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335964, 32.974396, 34.929020>,  <37.542671, 33.095730, 34.916752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335964, 32.974396, 34.929020>,  <36.991451, 32.772175, 34.949463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335964, 32.974396, 34.929020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221961, -0.283831, 0.932831,
		0.457089, -0.814773, -0.356671,
		0.861280, 0.505553, -0.051112,
		37.594349, 33.126060, 34.913685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573853, 32.443485, 35.051819>,  <36.991451, 32.772175, 34.949463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573853, 32.443485, 35.051819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725765, 32.800838, 35.147850>,  <37.816914, 33.015251, 35.205467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725765, 32.800838, 35.147850>,  <37.573853, 32.443485, 35.051819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725765, 32.800838, 35.147850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196777, -0.331599, 0.922671,
		0.903905, -0.303171, -0.301732,
		0.379781, 0.893381, 0.240076,
		37.839699, 33.068851, 35.219872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194279, 32.811108, 34.791813>,  <37.573853, 32.443485, 35.051819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194279, 32.811108, 34.791813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459419, 32.658695, 35.049633>,  <38.618504, 32.567249, 35.204323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459419, 32.658695, 35.049633>,  <38.194279, 32.811108, 34.791813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459419, 32.658695, 35.049633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743706, 0.235305, -0.625726,
		0.086756, 0.894118, 0.439348,
		0.662853, -0.381031, 0.644547,
		38.658276, 32.544384, 35.242996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671410, 33.412128, 35.057201>,  <38.194279, 32.811108, 34.791813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671410, 33.412128, 35.057201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831264, 33.048397, 35.010868>,  <38.927177, 32.830158, 34.983070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831264, 33.048397, 35.010868>,  <38.671410, 33.412128, 35.057201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831264, 33.048397, 35.010868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560411, 0.342357, -0.754143,
		0.725416, 0.236473, 0.646415,
		0.399639, -0.909325, -0.115829,
		38.951157, 32.775600, 34.976120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406849, 33.579288, 35.236137>,  <38.671410, 33.412128, 35.057201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406849, 33.579288, 35.236137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332714, 33.262753, 35.003094>,  <39.288235, 33.072830, 34.863266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332714, 33.262753, 35.003094>,  <39.406849, 33.579288, 35.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332714, 33.262753, 35.003094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668481, 0.333034, -0.664997,
		0.720267, -0.512711, 0.467272,
		-0.185333, -0.791338, -0.582611,
		39.277115, 33.025352, 34.828312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061111, 33.238853, 34.938927>,  <39.406849, 33.579288, 35.236137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061111, 33.238853, 34.938927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790905, 33.097713, 34.679951>,  <39.628780, 33.013031, 34.524567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790905, 33.097713, 34.679951>,  <40.061111, 33.238853, 34.938927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790905, 33.097713, 34.679951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569822, 0.307448, -0.762089,
		0.467958, -0.883726, -0.006622,
		-0.675513, -0.352852, -0.647439,
		39.588249, 32.991859, 34.485718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419369, 32.837414, 35.560856>,  <40.061111, 33.238853, 34.938927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419369, 32.837414, 35.560856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599350, 32.718819, 35.897816>,  <40.707340, 32.647663, 36.099991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599350, 32.718819, 35.897816>,  <40.419369, 32.837414, 35.560856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599350, 32.718819, 35.897816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031107, -0.947913, -0.317008,
		0.892510, 0.116434, -0.435739,
		0.449953, -0.296487, 0.842400,
		40.734337, 32.629871, 36.150536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224808, 32.549763, 35.616360>,  <40.419369, 32.837414, 35.560856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224808, 32.549763, 35.616360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956417, 32.401909, 35.873470>,  <40.795383, 32.313198, 36.027737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956417, 32.401909, 35.873470>,  <41.224808, 32.549763, 35.616360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956417, 32.401909, 35.873470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053484, -0.840497, -0.539170,
		0.739547, -0.396149, 0.544184,
		-0.670977, -0.369636, 0.642774,
		40.755123, 32.291019, 36.066303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368149, 31.864594, 35.751610>,  <41.224808, 32.549763, 35.616360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368149, 31.864594, 35.751610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977112, 31.923941, 35.811344>,  <40.742489, 31.959549, 35.847187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977112, 31.923941, 35.811344>,  <41.368149, 31.864594, 35.751610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977112, 31.923941, 35.811344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201137, -0.867655, -0.454664,
		0.062117, -0.474513, 0.878054,
		-0.977592, 0.148367, 0.149339,
		40.683834, 31.968451, 35.856144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921562, 31.385605, 36.148628>,  <41.368149, 31.864594, 35.751610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921562, 31.385605, 36.148628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699478, 31.503471, 35.837524>,  <40.566227, 31.574190, 35.650860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699478, 31.503471, 35.837524>,  <40.921562, 31.385605, 36.148628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699478, 31.503471, 35.837524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188301, -0.955389, -0.227541,
		-0.810115, 0.020121, 0.585926,
		-0.555209, 0.294665, -0.777763,
		40.532917, 31.591871, 35.604195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188126, 31.205349, 36.318459>,  <40.921562, 31.385605, 36.148628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188126, 31.205349, 36.318459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301983, 31.187632, 35.935413>,  <40.370296, 31.177002, 35.705585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301983, 31.187632, 35.935413>,  <40.188126, 31.205349, 36.318459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301983, 31.187632, 35.935413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281152, -0.958861, -0.039222,
		-0.916478, 0.280398, -0.285387,
		0.284644, -0.044291, -0.957609,
		40.387375, 31.174345, 35.648132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641026, 30.948336, 35.907436>,  <40.188126, 31.205349, 36.318459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641026, 30.948336, 35.907436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962650, 30.846083, 35.692726>,  <40.155624, 30.784731, 35.563900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962650, 30.846083, 35.692726>,  <39.641026, 30.948336, 35.907436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962650, 30.846083, 35.692726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260145, -0.963102, 0.068983,
		-0.534607, 0.084173, -0.840899,
		0.804065, -0.255634, -0.536778,
		40.203869, 30.769392, 35.531693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458725, 30.233614, 35.590694>,  <39.641026, 30.948336, 35.907436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458725, 30.233614, 35.590694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834629, 30.276459, 35.460846>,  <40.060173, 30.302166, 35.382938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834629, 30.276459, 35.460846>,  <39.458725, 30.233614, 35.590694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834629, 30.276459, 35.460846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004082, -0.953087, -0.302670,
		-0.341808, 0.283112, -0.896111,
		0.939761, 0.107113, -0.324617,
		40.116558, 30.308592, 35.363461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465931, 30.179615, 34.821945>,  <39.458725, 30.233614, 35.590694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465931, 30.179615, 34.821945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810905, 30.084358, 35.000603>,  <40.017891, 30.027205, 35.107796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810905, 30.084358, 35.000603>,  <39.465931, 30.179615, 34.821945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810905, 30.084358, 35.000603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056879, -0.922416, -0.381985,
		0.502957, 0.304034, -0.809072,
		0.862438, -0.238141, 0.446643,
		40.069637, 30.012917, 35.134594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915157, 29.833673, 34.385838>,  <39.465931, 30.179615, 34.821945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915157, 29.833673, 34.385838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069618, 29.699554, 34.729572>,  <40.162296, 29.619083, 34.935814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069618, 29.699554, 34.729572>,  <39.915157, 29.833673, 34.385838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069618, 29.699554, 34.729572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262091, -0.933084, -0.246297,
		0.884416, -0.130115, -0.448195,
		0.386157, -0.335297, 0.859337,
		40.185467, 29.598965, 34.987373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137188, 29.236486, 34.197903>,  <39.915157, 29.833673, 34.385838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137188, 29.236486, 34.197903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116135, 29.177073, 34.592903>,  <40.103500, 29.141424, 34.829903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116135, 29.177073, 34.592903>,  <40.137188, 29.236486, 34.197903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116135, 29.177073, 34.592903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464086, -0.871964, -0.155892,
		0.884225, -0.466493, -0.023036,
		-0.052636, -0.148535, 0.987505,
		40.100346, 29.132511, 34.889156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322212, 28.530008, 34.345444>,  <40.137188, 29.236486, 34.197903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322212, 28.530008, 34.345444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080872, 28.630745, 34.648109>,  <39.936066, 28.691187, 34.829708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080872, 28.630745, 34.648109>,  <40.322212, 28.530008, 34.345444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080872, 28.630745, 34.648109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499502, -0.858990, -0.112399,
		0.621660, -0.445771, 0.644071,
		-0.603355, 0.251840, 0.756663,
		39.899864, 28.706297, 34.875107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367966, 27.771753, 34.642662>,  <40.322212, 28.530008, 34.345444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367966, 27.771753, 34.642662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032387, 27.988585, 34.623371>,  <39.831039, 28.118683, 34.611797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032387, 27.988585, 34.623371>,  <40.367966, 27.771753, 34.642662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032387, 27.988585, 34.623371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516490, -0.820988, -0.243345,
		-0.171502, -0.179246, 0.968740,
		-0.838943, 0.542079, -0.048223,
		39.780704, 28.151209, 34.608906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801544, 27.827969, 35.123676>,  <40.367966, 27.771753, 34.642662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801544, 27.827969, 35.123676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612576, 27.887934, 34.776264>,  <39.499195, 27.923912, 34.567818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612576, 27.887934, 34.776264>,  <39.801544, 27.827969, 35.123676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612576, 27.887934, 34.776264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452629, -0.886823, 0.093127,
		-0.756273, 0.437117, 0.486805,
		-0.472418, 0.149912, -0.868532,
		39.470852, 27.932907, 34.515705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067654, 27.672003, 35.178139>,  <39.801544, 27.827969, 35.123676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067654, 27.672003, 35.178139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074921, 27.595465, 34.785595>,  <39.079281, 27.549541, 34.550068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074921, 27.595465, 34.785595>,  <39.067654, 27.672003, 35.178139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074921, 27.595465, 34.785595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560304, -0.814865, 0.148511,
		-0.828088, 0.547159, -0.122011,
		0.018163, -0.191344, -0.981355,
		39.080368, 27.538061, 34.491188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046139, 28.309973, 34.926716>,  <39.067654, 27.672003, 35.178139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046139, 28.309973, 34.926716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238216, 28.201303, 35.260326>,  <39.353462, 28.136101, 35.460495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238216, 28.201303, 35.260326>,  <39.046139, 28.309973, 34.926716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238216, 28.201303, 35.260326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571738, 0.818036, -0.062713,
		-0.665230, 0.506961, 0.548142,
		0.480193, -0.271675, 0.834031,
		39.382275, 28.119801, 35.510536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908741, 28.767622, 35.585144>,  <39.046139, 28.309973, 34.926716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908741, 28.767622, 35.585144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268745, 28.595459, 35.557621>,  <39.484749, 28.492161, 35.541107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268745, 28.595459, 35.557621>,  <38.908741, 28.767622, 35.585144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268745, 28.595459, 35.557621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429751, 0.902607, -0.024810,
		0.072786, -0.007242, 0.997321,
		0.900009, -0.430405, -0.068809,
		39.538750, 28.466337, 35.536980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415844, 29.084406, 36.069157>,  <38.908741, 28.767622, 35.585144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415844, 29.084406, 36.069157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598160, 28.932251, 35.747272>,  <39.707550, 28.840958, 35.554142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598160, 28.932251, 35.747272>,  <39.415844, 29.084406, 36.069157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598160, 28.932251, 35.747272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517740, 0.848703, -0.107931,
		0.724018, -0.367437, 0.583771,
		0.455790, -0.380385, -0.804713,
		39.734898, 28.818136, 35.505859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150284, 29.019276, 36.182297>,  <39.415844, 29.084406, 36.069157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150284, 29.019276, 36.182297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120300, 29.055140, 35.785038>,  <40.102310, 29.076658, 35.546684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.120300, 29.055140, 35.785038>,  <40.150284, 29.019276, 36.182297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120300, 29.055140, 35.785038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615062, 0.788091, 0.024727,
		0.784908, -0.608994, -0.114221,
		-0.074958, 0.089661, -0.993148,
		40.097813, 29.082037, 35.487095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853298, 29.190466, 35.987133>,  <40.150284, 29.019276, 36.182297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853298, 29.190466, 35.987133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588093, 29.310482, 35.712791>,  <40.428970, 29.382492, 35.548187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588093, 29.310482, 35.712791>,  <40.853298, 29.190466, 35.987133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588093, 29.310482, 35.712791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578740, 0.786560, -0.215368,
		0.474843, -0.539720, -0.695145,
		-0.663012, 0.300043, -0.685850,
		40.389191, 29.400496, 35.507038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230412, 29.634388, 35.657093>,  <40.853298, 29.190466, 35.987133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230412, 29.634388, 35.657093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868053, 29.748482, 35.531876>,  <40.650639, 29.816938, 35.456745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868053, 29.748482, 35.531876>,  <41.230412, 29.634388, 35.657093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868053, 29.748482, 35.531876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306501, 0.951664, -0.019835,
		0.292258, -0.113918, -0.949530,
		-0.905893, 0.285235, -0.313047,
		40.596287, 29.834053, 35.437962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325851, 30.359133, 35.652740>,  <41.230412, 29.634388, 35.657093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325851, 30.359133, 35.652740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976063, 30.308628, 35.465397>,  <40.766190, 30.278326, 35.352989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976063, 30.308628, 35.465397>,  <41.325851, 30.359133, 35.652740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976063, 30.308628, 35.465397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039875, 0.980974, -0.190001,
		0.483442, -0.147474, -0.862865,
		-0.874468, -0.126261, -0.468363,
		40.713722, 30.270750, 35.324886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297707, 30.567701, 34.905792>,  <41.325851, 30.359133, 35.652740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297707, 30.567701, 34.905792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953102, 30.624592, 35.100758>,  <40.746338, 30.658726, 35.217735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953102, 30.624592, 35.100758>,  <41.297707, 30.567701, 34.905792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953102, 30.624592, 35.100758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016062, 0.967120, -0.253815,
		-0.507483, -0.210836, -0.835470,
		-0.861512, 0.142226, 0.487410,
		40.694649, 30.667259, 35.246979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946461, 30.990513, 34.491226>,  <41.297707, 30.567701, 34.905792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946461, 30.990513, 34.491226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783100, 31.055206, 34.850571>,  <40.685081, 31.094023, 35.066177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783100, 31.055206, 34.850571>,  <40.946461, 30.990513, 34.491226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783100, 31.055206, 34.850571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107928, 0.968717, -0.223468,
		-0.906398, -0.188224, -0.378173,
		-0.408404, 0.161736, 0.898358,
		40.660580, 31.103727, 35.120079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308502, 31.391605, 34.430691>,  <40.946461, 30.990513, 34.491226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308502, 31.391605, 34.430691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464859, 31.457211, 34.792973>,  <40.558674, 31.496574, 35.010342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464859, 31.457211, 34.792973>,  <40.308502, 31.391605, 34.430691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464859, 31.457211, 34.792973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268313, 0.961564, -0.058331,
		-0.880463, -0.220213, 0.419871,
		0.390888, 0.164015, 0.905708,
		40.582127, 31.506414, 35.064686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881477, 31.941504, 34.779160>,  <40.308502, 31.391605, 34.430691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881477, 31.941504, 34.779160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208492, 31.922688, 35.008739>,  <40.404701, 31.911398, 35.146484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208492, 31.922688, 35.008739>,  <39.881477, 31.941504, 34.779160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208492, 31.922688, 35.008739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073119, 0.997071, -0.022438,
		-0.571208, 0.060310, 0.818586,
		0.817542, -0.047038, 0.573945,
		40.453754, 31.908577, 35.180923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512726, 32.096157, 35.332355>,  <39.881477, 31.941504, 34.779160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512726, 32.096157, 35.332355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136154, 32.045288, 35.457283>,  <38.910213, 32.014767, 35.532242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136154, 32.045288, 35.457283>,  <39.512726, 32.096157, 35.332355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136154, 32.045288, 35.457283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250457, 0.356489, 0.900104,
		-0.225812, 0.925603, -0.303755,
		-0.941425, -0.127177, 0.312323,
		38.853725, 32.007133, 35.550980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186825, 32.755810, 35.518429>,  <39.512726, 32.096157, 35.332355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186825, 32.755810, 35.518429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050541, 32.462173, 35.753384>,  <38.968769, 32.285992, 35.894356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050541, 32.462173, 35.753384>,  <39.186825, 32.755810, 35.518429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050541, 32.462173, 35.753384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276440, 0.518929, 0.808884,
		-0.898607, 0.437976, 0.026126,
		-0.340714, -0.734092, 0.587387,
		38.948326, 32.241947, 35.929600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710567, 33.028770, 36.069588>,  <39.186825, 32.755810, 35.518429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710567, 33.028770, 36.069588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808067, 32.664440, 36.202850>,  <38.866566, 32.445843, 36.282806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808067, 32.664440, 36.202850>,  <38.710567, 33.028770, 36.069588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808067, 32.664440, 36.202850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138022, 0.372596, 0.917672,
		-0.959967, -0.177699, 0.216533,
		0.243749, -0.910821, 0.333153,
		38.881191, 32.391193, 36.302795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368111, 32.830460, 36.681938>,  <38.710567, 33.028770, 36.069588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368111, 32.830460, 36.681938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734085, 32.669659, 36.667614>,  <38.953671, 32.573177, 36.659019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734085, 32.669659, 36.667614>,  <38.368111, 32.830460, 36.681938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734085, 32.669659, 36.667614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089477, 0.115529, 0.989266,
		-0.393555, -0.908319, 0.141672,
		0.914936, -0.402007, -0.035807,
		39.008568, 32.549057, 36.656872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375347, 32.523754, 37.289036>,  <38.368111, 32.830460, 36.681938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375347, 32.523754, 37.289036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754360, 32.549313, 37.163750>,  <38.981770, 32.564648, 37.088577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754360, 32.549313, 37.163750>,  <38.375347, 32.523754, 37.289036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754360, 32.549313, 37.163750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311260, 0.038752, 0.949534,
		0.072815, -0.997204, 0.016828,
		0.947531, 0.063903, -0.313211,
		39.038620, 32.568481, 37.069786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486462, 33.282372, 37.540867>,  <38.375347, 32.523754, 37.289036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486462, 33.282372, 37.540867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412018, 32.970543, 37.780075>,  <38.367352, 32.783447, 37.923599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412018, 32.970543, 37.780075>,  <38.486462, 33.282372, 37.540867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412018, 32.970543, 37.780075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927292, 0.061844, 0.369195,
		-0.324798, 0.623254, 0.711379,
		-0.186108, -0.779570, 0.598025,
		38.356186, 32.736671, 37.959484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735542, 33.494438, 38.133633>,  <38.486462, 33.282372, 37.540867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735542, 33.494438, 38.133633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735935, 33.094624, 38.121521>,  <38.736172, 32.854733, 38.114254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735935, 33.094624, 38.121521>,  <38.735542, 33.494438, 38.133633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735935, 33.094624, 38.121521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950252, -0.008496, 0.311367,
		-0.311481, -0.029080, 0.949807,
		0.000985, -0.999541, -0.030280,
		38.736229, 32.794762, 38.112438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805710, 33.199753, 38.764580>,  <38.735542, 33.494438, 38.133633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805710, 33.199753, 38.764580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955528, 32.975163, 38.469429>,  <39.045418, 32.840408, 38.292339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955528, 32.975163, 38.469429>,  <38.805710, 33.199753, 38.764580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955528, 32.975163, 38.469429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916677, 0.104625, 0.385691,
		-0.139356, -0.820852, 0.553878,
		0.374545, -0.561476, -0.737876,
		39.067890, 32.806721, 38.248066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416275, 32.683464, 39.069252>,  <38.805710, 33.199753, 38.764580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416275, 32.683464, 39.069252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487175, 32.731537, 38.678532>,  <39.529713, 32.760380, 38.444099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487175, 32.731537, 38.678532>,  <39.416275, 32.683464, 39.069252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487175, 32.731537, 38.678532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981655, 0.049271, 0.184191,
		0.070265, -0.991528, -0.109246,
		0.177248, 0.120184, -0.976800,
		39.540348, 32.767593, 38.385490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954906, 32.177944, 38.899975>,  <39.416275, 32.683464, 39.069252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954906, 32.177944, 38.899975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957684, 32.508278, 38.674427>,  <39.959351, 32.706478, 38.539097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957684, 32.508278, 38.674427>,  <39.954906, 32.177944, 38.899975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957684, 32.508278, 38.674427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992395, 0.063610, 0.105383,
		0.122897, -0.560317, -0.819110,
		0.006944, 0.825832, -0.563873,
		39.959766, 32.756027, 38.505264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608215, 32.357437, 38.657238>,  <39.954906, 32.177944, 38.899975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608215, 32.357437, 38.657238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474400, 32.713493, 38.533474>,  <40.394108, 32.927128, 38.459213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474400, 32.713493, 38.533474>,  <40.608215, 32.357437, 38.657238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474400, 32.713493, 38.533474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941293, 0.299868, -0.155069,
		-0.045250, -0.343126, -0.938199,
		-0.334544, 0.890137, -0.309413,
		40.374035, 32.980534, 38.440651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006477, 32.633652, 37.947559>,  <40.608215, 32.357437, 38.657238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006477, 32.633652, 37.947559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886196, 32.935089, 38.181370>,  <40.814026, 33.115952, 38.321655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886196, 32.935089, 38.181370>,  <41.006477, 32.633652, 37.947559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886196, 32.935089, 38.181370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907030, 0.415387, -0.068921,
		-0.294744, 0.509460, -0.808441,
		-0.300703, 0.753594, 0.584528,
		40.795986, 33.161167, 38.356728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033123, 33.340622, 37.685703>,  <41.006477, 32.633652, 37.947559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033123, 33.340622, 37.685703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116261, 33.323906, 38.076611>,  <41.166145, 33.313877, 38.311153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116261, 33.323906, 38.076611>,  <41.033123, 33.340622, 37.685703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116261, 33.323906, 38.076611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923486, 0.337732, -0.181964,
		-0.322450, 0.940314, 0.108793,
		0.207846, -0.041794, 0.977268,
		41.178616, 33.311367, 38.369793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275520, 33.895905, 37.844471>,  <41.033123, 33.340622, 37.685703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275520, 33.895905, 37.844471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450642, 33.643360, 38.100506>,  <41.555714, 33.491833, 38.254128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450642, 33.643360, 38.100506>,  <41.275520, 33.895905, 37.844471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450642, 33.643360, 38.100506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899071, 0.306820, -0.312303,
		0.000785, 0.712211, 0.701965,
		0.437802, -0.631361, 0.640088,
		41.581982, 33.453953, 38.292534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891869, 34.027821, 37.630054>,  <41.275520, 33.895905, 37.844471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891869, 34.027821, 37.630054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947880, 33.761242, 37.922966>,  <41.981487, 33.601295, 38.098713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947880, 33.761242, 37.922966>,  <41.891869, 34.027821, 37.630054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947880, 33.761242, 37.922966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986208, 0.027970, -0.163129,
		0.088235, 0.745025, 0.661175,
		0.140028, -0.666450, 0.732282,
		41.989887, 33.561306, 38.142651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529587, 34.229824, 37.955921>,  <41.891869, 34.027821, 37.630054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529587, 34.229824, 37.955921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495758, 33.840832, 38.042763>,  <42.475460, 33.607437, 38.094868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495758, 33.840832, 38.042763>,  <42.529587, 34.229824, 37.955921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495758, 33.840832, 38.042763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978717, -0.121958, -0.165045,
		0.186980, 0.198522, 0.962095,
		-0.084570, -0.972479, 0.217100,
		42.470387, 33.549088, 38.107891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147560, 34.128422, 38.390957>,  <42.529587, 34.229824, 37.955921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147560, 34.128422, 38.390957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023914, 33.827118, 38.158733>,  <42.949726, 33.646336, 38.019402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023914, 33.827118, 38.158733>,  <43.147560, 34.128422, 38.390957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023914, 33.827118, 38.158733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939577, -0.147452, -0.308954,
		0.147120, -0.640977, 0.753329,
		-0.309112, -0.753264, -0.580554,
		42.931179, 33.601139, 37.984566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701458, 33.487823, 38.404343>,  <43.147560, 34.128422, 38.390957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701458, 33.487823, 38.404343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474136, 33.545765, 38.080357>,  <43.337742, 33.580528, 37.885963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474136, 33.545765, 38.080357>,  <43.701458, 33.487823, 38.404343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474136, 33.545765, 38.080357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810474, -0.071337, -0.581414,
		-0.141999, -0.986879, -0.076857,
		-0.568303, 0.144851, -0.809969,
		43.303646, 33.589218, 37.837364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738045, 32.945454, 37.941383>,  <43.701458, 33.487823, 38.404343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738045, 32.945454, 37.941383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696781, 33.316998, 37.799076>,  <43.672024, 33.539925, 37.713692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.696781, 33.316998, 37.799076>,  <43.738045, 32.945454, 37.941383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696781, 33.316998, 37.799076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929910, -0.036885, -0.365932,
		-0.353024, -0.368582, -0.859954,
		-0.103156, 0.928863, -0.355769,
		43.665833, 33.595657, 37.692345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698200, 33.052296, 37.252331>,  <43.738045, 32.945454, 37.941383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698200, 33.052296, 37.252331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878742, 33.375366, 37.404087>,  <43.987068, 33.569210, 37.495140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.878742, 33.375366, 37.404087>,  <43.698200, 33.052296, 37.252331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878742, 33.375366, 37.404087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732194, -0.092183, -0.674829,
		-0.510069, 0.582376, -0.632983,
		0.451355, 0.807676, 0.379393,
		44.014149, 33.617668, 37.517906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868591, 33.629383, 36.699474>,  <43.698200, 33.052296, 37.252331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868591, 33.629383, 36.699474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108612, 33.553070, 37.010227>,  <44.252625, 33.507282, 37.196678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108612, 33.553070, 37.010227>,  <43.868591, 33.629383, 36.699474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108612, 33.553070, 37.010227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779653, -0.077967, -0.621340,
		0.179112, 0.978531, 0.101960,
		0.600051, -0.190783, 0.776879,
		44.288628, 33.495834, 37.243290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563477, 33.932484, 36.641888>,  <43.868591, 33.629383, 36.699474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563477, 33.932484, 36.641888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586689, 33.566349, 36.801281>,  <44.600616, 33.346668, 36.896915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586689, 33.566349, 36.801281>,  <44.563477, 33.932484, 36.641888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586689, 33.566349, 36.801281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685308, -0.253723, -0.682626,
		0.725937, 0.312698, 0.612564,
		0.058034, -0.915339, 0.398481,
		44.604099, 33.291748, 36.920826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853218, 34.424297, 37.020500>,  <44.563477, 33.932484, 36.641888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853218, 34.424297, 37.020500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063675, 34.087387, 37.067390>,  <45.189949, 33.885239, 37.095524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063675, 34.087387, 37.067390>,  <44.853218, 34.424297, 37.020500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063675, 34.087387, 37.067390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174969, -0.027679, -0.984185,
		0.832202, 0.538332, 0.132809,
		0.526142, -0.842278, 0.117226,
		45.221519, 33.834705, 37.102558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586292, 34.550949, 36.768921>,  <44.853218, 34.424297, 37.020500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586292, 34.550949, 36.768921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423637, 34.186794, 36.738338>,  <45.326046, 33.968300, 36.719990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423637, 34.186794, 36.738338>,  <45.586292, 34.550949, 36.768921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423637, 34.186794, 36.738338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096706, 0.040326, -0.994496,
		0.908459, -0.411790, 0.071642,
		-0.406634, -0.910386, -0.076457,
		45.301647, 33.913677, 36.715401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916824, 33.981922, 36.446453>,  <45.586292, 34.550949, 36.768921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916824, 33.981922, 36.446453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551296, 33.858707, 36.340591>,  <45.331978, 33.784779, 36.277073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551296, 33.858707, 36.340591>,  <45.916824, 33.981922, 36.446453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551296, 33.858707, 36.340591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321708, -0.151348, -0.934664,
		0.247859, -0.939258, 0.237404,
		-0.913822, -0.308040, -0.264654,
		45.277149, 33.766296, 36.261196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024250, 33.386890, 35.985683>,  <45.916824, 33.981922, 36.446453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024250, 33.386890, 35.985683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658154, 33.530876, 35.913292>,  <45.438496, 33.617268, 35.869858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658154, 33.530876, 35.913292>,  <46.024250, 33.386890, 35.985683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658154, 33.530876, 35.913292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146061, -0.122201, -0.981699,
		-0.375489, -0.924930, 0.059268,
		-0.915246, 0.359960, -0.180981,
		45.383579, 33.638863, 35.858997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612877, 32.942955, 35.509617>,  <46.024250, 33.386890, 35.985683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612877, 32.942955, 35.509617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483921, 33.321571, 35.505016>,  <45.406548, 33.548740, 35.502258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483921, 33.321571, 35.505016>,  <45.612877, 32.942955, 35.509617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483921, 33.321571, 35.505016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023119, -0.004269, -0.999724,
		-0.946324, -0.322569, -0.020506,
		-0.322393, 0.946536, -0.011498,
		45.387203, 33.605534, 35.501568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201626, 33.236950, 35.279423>,  <45.612877, 32.942955, 35.509617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201626, 33.236950, 35.279423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.356892, 32.993629, 35.002499>,  <46.450050, 32.847637, 34.836342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.356892, 32.993629, 35.002499>,  <46.201626, 33.236950, 35.279423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356892, 32.993629, 35.002499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753683, 0.222787, -0.618327,
		0.530366, 0.761800, -0.371986,
		0.388168, -0.608299, -0.692314,
		46.473343, 32.811138, 34.794804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.725605, 33.128124, 35.767181>,  <46.201626, 33.236950, 35.279423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.725605, 33.128124, 35.767181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831844, 33.418514, 35.513439>,  <46.895588, 33.592751, 35.361195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831844, 33.418514, 35.513439>,  <46.725605, 33.128124, 35.767181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831844, 33.418514, 35.513439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443430, 0.492269, 0.749026,
		0.856053, -0.480236, -0.191174,
		0.265600, 0.725978, -0.634360,
		46.911526, 33.636307, 35.323132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.443680, 33.279331, 35.868111>,  <46.725605, 33.128124, 35.767181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.443680, 33.279331, 35.868111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.241669, 33.597466, 35.734013>,  <47.120461, 33.788345, 35.653553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.241669, 33.597466, 35.734013>,  <47.443680, 33.279331, 35.868111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.241669, 33.597466, 35.734013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509814, 0.588304, 0.627685,
		0.696446, 0.146084, -0.702582,
		-0.505027, 0.795335, -0.335246,
		47.090160, 33.836067, 35.633438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.855682, 33.866096, 35.672974>,  <47.443680, 33.279331, 35.868111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.855682, 33.866096, 35.672974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500652, 33.993244, 35.806343>,  <47.287636, 34.069534, 35.886364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.500652, 33.993244, 35.806343>,  <47.855682, 33.866096, 35.672974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.500652, 33.993244, 35.806343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459177, 0.552254, 0.695825,
		0.037049, 0.770696, -0.636125,
		-0.887572, 0.317873, 0.333425,
		47.234379, 34.088608, 35.906372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.818581, 34.669712, 35.712650>,  <47.855682, 33.866096, 35.672974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.818581, 34.669712, 35.712650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593212, 34.460526, 35.968479>,  <47.457989, 34.335014, 36.121979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.593212, 34.460526, 35.968479>,  <47.818581, 34.669712, 35.712650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.593212, 34.460526, 35.968479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460047, 0.444420, 0.768667,
		-0.686228, 0.727320, -0.009807,
		-0.563425, -0.522969, 0.639575,
		47.424183, 34.303635, 36.160351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.015892, 34.613983, 34.931641>,  <47.818581, 34.669712, 35.712650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.015892, 34.613983, 34.931641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636192, 34.683418, 35.036556>,  <47.408371, 34.725079, 35.099506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636192, 34.683418, 35.036556>,  <48.015892, 34.613983, 34.931641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636192, 34.683418, 35.036556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089414, -0.948440, 0.304083,
		0.301551, 0.265198, 0.915826,
		-0.949248, 0.173584, 0.262290,
		47.351418, 34.735493, 35.115242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.140755, 34.899403, 23.527494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.806377, 35.106316, 23.600832>,  <34.605751, 35.230465, 23.644835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.806377, 35.106316, 23.600832>,  <35.140755, 34.899403, 23.527494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806377, 35.106316, 23.600832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210109, -0.610268, 0.763824,
		0.507002, 0.599992, 0.618836,
		-0.835944, 0.517283, 0.183344,
		34.555595, 35.261501, 23.655834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163177, 35.047543, 24.149176>,  <35.140755, 34.899403, 23.527494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163177, 35.047543, 24.149176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772415, 35.059597, 24.064556>,  <34.537960, 35.066830, 24.013784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.772415, 35.059597, 24.064556>,  <35.163177, 35.047543, 24.149176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772415, 35.059597, 24.064556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202333, -0.448837, 0.870406,
		-0.068721, 0.893106, 0.444567,
		-0.976903, 0.030136, -0.211549,
		34.479343, 35.068638, 24.001091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839897, 35.296318, 24.782930>,  <35.163177, 35.047543, 24.149176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839897, 35.296318, 24.782930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.535549, 35.125538, 24.587465>,  <34.352940, 35.023071, 24.470186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.535549, 35.125538, 24.587465>,  <34.839897, 35.296318, 24.782930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535549, 35.125538, 24.587465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371804, -0.330352, 0.867542,
		-0.531826, 0.841774, 0.092614,
		-0.760870, -0.426947, -0.488665,
		34.307289, 34.997452, 24.440866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263012, 35.412647, 25.169472>,  <34.839897, 35.296318, 24.782930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263012, 35.412647, 25.169472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177921, 35.092300, 24.945559>,  <34.126869, 34.900093, 24.811211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177921, 35.092300, 24.945559>,  <34.263012, 35.412647, 25.169472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177921, 35.092300, 24.945559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285760, -0.496857, 0.819435,
		-0.934392, 0.334277, -0.123163,
		-0.212724, -0.800869, -0.559783,
		34.114105, 34.852039, 24.777624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608341, 35.343647, 25.369862>,  <34.263012, 35.412647, 25.169472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608341, 35.343647, 25.369862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.714119, 34.988289, 25.219757>,  <33.777588, 34.775074, 25.129694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.714119, 34.988289, 25.219757>,  <33.608341, 35.343647, 25.369862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714119, 34.988289, 25.219757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480722, -0.458756, 0.747295,
		-0.836047, -0.017223, -0.548387,
		0.264447, -0.888395, -0.375262,
		33.793453, 34.721771, 25.107178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022457, 34.836315, 25.412193>,  <33.608341, 35.343647, 25.369862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022457, 34.836315, 25.412193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.326389, 34.585129, 25.344887>,  <33.508747, 34.434418, 25.304502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.326389, 34.585129, 25.344887>,  <33.022457, 34.836315, 25.412193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326389, 34.585129, 25.344887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360279, -0.622173, 0.695054,
		-0.541159, -0.467503, -0.698990,
		0.759833, -0.627966, -0.168264,
		33.554340, 34.396740, 25.294407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740360, 34.139545, 25.427876>,  <33.022457, 34.836315, 25.412193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740360, 34.139545, 25.427876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130066, 34.096947, 25.507345>,  <33.363888, 34.071388, 25.555027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.130066, 34.096947, 25.507345>,  <32.740360, 34.139545, 25.427876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130066, 34.096947, 25.507345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225385, -0.475358, 0.850433,
		0.003873, -0.873323, -0.487127,
		0.974262, -0.106498, 0.198675,
		33.422344, 34.064999, 25.566948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830799, 33.376286, 25.600693>,  <32.740360, 34.139545, 25.427876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830799, 33.376286, 25.600693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139072, 33.571220, 25.764915>,  <33.324036, 33.688183, 25.863449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.139072, 33.571220, 25.764915>,  <32.830799, 33.376286, 25.600693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139072, 33.571220, 25.764915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059419, -0.586522, 0.807751,
		0.634447, -0.646911, -0.423063,
		0.770678, 0.487337, 0.410556,
		33.370277, 33.717422, 25.888083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266998, 32.795605, 25.900394>,  <32.830799, 33.376286, 25.600693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266998, 32.795605, 25.900394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.426521, 33.125156, 26.061476>,  <33.522236, 33.322887, 26.158125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.426521, 33.125156, 26.061476>,  <33.266998, 32.795605, 25.900394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426521, 33.125156, 26.061476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035199, -0.452569, 0.891035,
		0.916358, -0.341179, -0.209489,
		0.398811, 0.823880, 0.402706,
		33.546165, 33.372322, 26.182287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922703, 32.625965, 26.306171>,  <33.266998, 32.795605, 25.900394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922703, 32.625965, 26.306171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835022, 32.974152, 26.482462>,  <33.782413, 33.183064, 26.588236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.835022, 32.974152, 26.482462>,  <33.922703, 32.625965, 26.306171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835022, 32.974152, 26.482462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138768, -0.419307, 0.897176,
		0.965761, 0.257821, -0.028880,
		-0.219201, 0.870465, 0.440728,
		33.769260, 33.235291, 26.614681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464970, 32.850742, 26.814880>,  <33.922703, 32.625965, 26.306171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464970, 32.850742, 26.814880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119888, 33.014999, 26.932943>,  <33.912842, 33.113552, 27.003780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.119888, 33.014999, 26.932943>,  <34.464970, 32.850742, 26.814880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119888, 33.014999, 26.932943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166877, -0.319794, 0.932676,
		0.477387, 0.853876, 0.207359,
		-0.862701, 0.410644, 0.295158,
		33.861076, 33.138191, 27.021490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691059, 33.155392, 27.428673>,  <34.464970, 32.850742, 26.814880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691059, 33.155392, 27.428673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.291790, 33.132339, 27.436022>,  <34.052231, 33.118507, 27.440432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.291790, 33.132339, 27.436022>,  <34.691059, 33.155392, 27.428673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291790, 33.132339, 27.436022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024206, -0.102188, 0.994471,
		-0.055437, 0.993094, 0.103395,
		-0.998169, -0.057633, 0.018374,
		33.992340, 33.115051, 27.441534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419945, 33.496994, 28.056749>,  <34.691059, 33.155392, 27.428673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419945, 33.496994, 28.056749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100948, 33.274837, 27.962479>,  <33.909550, 33.141544, 27.905916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.100948, 33.274837, 27.962479>,  <34.419945, 33.496994, 28.056749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100948, 33.274837, 27.962479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149748, -0.196192, 0.969064,
		-0.584447, 0.808115, 0.073294,
		-0.797494, -0.555391, -0.235678,
		33.861702, 33.108219, 27.891775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965454, 33.640686, 28.530058>,  <34.419945, 33.496994, 28.056749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965454, 33.640686, 28.530058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836948, 33.297188, 28.370388>,  <33.759846, 33.091087, 28.274586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836948, 33.297188, 28.370388>,  <33.965454, 33.640686, 28.530058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836948, 33.297188, 28.370388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112339, -0.383985, 0.916480,
		-0.940302, 0.339277, 0.026891,
		-0.321267, -0.858747, -0.399176,
		33.740570, 33.039562, 28.250635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284912, 33.396015, 28.898718>,  <33.965454, 33.640686, 28.530058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284912, 33.396015, 28.898718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486137, 33.086273, 28.745201>,  <33.606873, 32.900429, 28.653091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.486137, 33.086273, 28.745201>,  <33.284912, 33.396015, 28.898718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486137, 33.086273, 28.745201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080211, -0.400328, 0.912855,
		-0.860520, -0.490008, -0.139278,
		0.503063, -0.774358, -0.383794,
		33.637054, 32.853966, 28.630062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886772, 32.798290, 29.101540>,  <33.284912, 33.396015, 28.898718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886772, 32.798290, 29.101540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.265366, 32.692574, 29.027447>,  <33.492523, 32.629143, 28.982990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.265366, 32.692574, 29.027447>,  <32.886772, 32.798290, 29.101540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265366, 32.692574, 29.027447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039311, -0.475253, 0.878970,
		-0.320336, -0.839217, -0.439432,
		0.946488, -0.264291, -0.185231,
		33.549313, 32.613285, 28.971878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908562, 32.108921, 29.308214>,  <32.886772, 32.798290, 29.101540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908562, 32.108921, 29.308214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.289757, 32.226303, 29.278019>,  <33.518475, 32.296734, 29.259901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.289757, 32.226303, 29.278019>,  <32.908562, 32.108921, 29.308214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289757, 32.226303, 29.278019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232148, -0.546995, 0.804303,
		0.194734, -0.784016, -0.589405,
		0.952988, 0.293454, -0.075489,
		33.575653, 32.314339, 29.255373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325027, 31.526726, 29.222397>,  <32.908562, 32.108921, 29.308214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325027, 31.526726, 29.222397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.571709, 31.803904, 29.371801>,  <33.719715, 31.970209, 29.461443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.571709, 31.803904, 29.371801>,  <33.325027, 31.526726, 29.222397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571709, 31.803904, 29.371801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301253, -0.646109, 0.701277,
		0.727274, -0.319957, -0.607207,
		0.616701, 0.692943, 0.373511,
		33.756718, 32.011787, 29.483854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677746, 31.111458, 29.690420>,  <33.325027, 31.526726, 29.222397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677746, 31.111458, 29.690420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.783615, 31.475212, 29.818773>,  <33.847137, 31.693464, 29.895784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.783615, 31.475212, 29.818773>,  <33.677746, 31.111458, 29.690420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783615, 31.475212, 29.818773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439373, -0.409923, 0.799322,
		0.858429, -0.070571, -0.508055,
		0.264672, 0.909386, 0.320882,
		33.863018, 31.748028, 29.915037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315071, 30.995033, 29.892277>,  <33.677746, 31.111458, 29.690420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315071, 30.995033, 29.892277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225170, 31.333124, 30.086216>,  <34.171230, 31.535978, 30.202579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225170, 31.333124, 30.086216>,  <34.315071, 30.995033, 29.892277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225170, 31.333124, 30.086216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699070, -0.206765, 0.684506,
		0.678814, 0.492785, -0.544403,
		-0.224751, 0.845228, 0.484846,
		34.157745, 31.586693, 30.231670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967068, 31.327938, 30.232388>,  <34.315071, 30.995033, 29.892277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967068, 31.327938, 30.232388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.631275, 31.397316, 30.438372>,  <34.429798, 31.438942, 30.561962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.631275, 31.397316, 30.438372>,  <34.967068, 31.327938, 30.232388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631275, 31.397316, 30.438372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481655, -0.201193, 0.852953,
		0.251547, 0.964074, 0.085357,
		-0.839483, 0.173445, 0.514961,
		34.379429, 31.449350, 30.592859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223461, 31.662851, 30.945662>,  <34.967068, 31.327938, 30.232388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223461, 31.662851, 30.945662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491669, 31.879560, 31.148399>,  <35.652592, 32.009586, 31.270042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491669, 31.879560, 31.148399>,  <35.223461, 31.662851, 30.945662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491669, 31.879560, 31.148399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383801, 0.331346, -0.861920,
		-0.634905, 0.772459, 0.014241,
		0.670516, 0.541772, 0.506844,
		35.692825, 32.042091, 31.300453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219135, 32.363304, 30.698027>,  <35.223461, 31.662851, 30.945662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219135, 32.363304, 30.698027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575905, 32.302631, 30.868418>,  <35.789967, 32.266228, 30.970654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.575905, 32.302631, 30.868418>,  <35.219135, 32.363304, 30.698027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575905, 32.302631, 30.868418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451400, 0.353935, -0.819126,
		-0.026525, 0.922889, 0.384153,
		0.891927, -0.151679, 0.425980,
		35.843483, 32.257126, 30.996212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507408, 32.987629, 30.648781>,  <35.219135, 32.363304, 30.698027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507408, 32.987629, 30.648781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832626, 32.759594, 30.696039>,  <36.027756, 32.622772, 30.724394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832626, 32.759594, 30.696039>,  <35.507408, 32.987629, 30.648781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832626, 32.759594, 30.696039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388495, 0.380104, -0.839400,
		0.433620, 0.728372, 0.530517,
		0.813047, -0.570084, 0.118148,
		36.076542, 32.588570, 30.731483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147346, 33.437805, 30.625099>,  <35.507408, 32.987629, 30.648781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147346, 33.437805, 30.625099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244907, 33.065804, 30.515114>,  <36.303444, 32.842602, 30.449123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244907, 33.065804, 30.515114>,  <36.147346, 33.437805, 30.625099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244907, 33.065804, 30.515114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445463, 0.359283, -0.820048,
		0.861436, 0.077529, 0.501913,
		0.243907, -0.930003, -0.274963,
		36.318081, 32.786804, 30.432625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718571, 33.605759, 30.359463>,  <36.147346, 33.437805, 30.625099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718571, 33.605759, 30.359463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678162, 33.223736, 30.247997>,  <36.653915, 32.994522, 30.181118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678162, 33.223736, 30.247997>,  <36.718571, 33.605759, 30.359463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678162, 33.223736, 30.247997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456722, 0.204317, -0.865829,
		0.883855, -0.214737, 0.415558,
		-0.101020, -0.955061, -0.278662,
		36.647854, 32.937218, 30.164398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365883, 33.316994, 30.315296>,  <36.718571, 33.605759, 30.359463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365883, 33.316994, 30.315296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109188, 33.117016, 30.082666>,  <36.955170, 32.997028, 29.943089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109188, 33.117016, 30.082666>,  <37.365883, 33.316994, 30.315296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109188, 33.117016, 30.082666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588666, 0.164961, -0.791366,
		0.491575, -0.850203, 0.188437,
		-0.641737, -0.499942, -0.581576,
		36.916668, 32.967033, 29.908194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703239, 33.073826, 29.744419>,  <37.365883, 33.316994, 30.315296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703239, 33.073826, 29.744419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342079, 32.998959, 29.589632>,  <37.125385, 32.954037, 29.496759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342079, 32.998959, 29.589632>,  <37.703239, 33.073826, 29.744419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342079, 32.998959, 29.589632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350612, 0.200161, -0.914881,
		0.248694, -0.961719, -0.115100,
		-0.902897, -0.187170, -0.386969,
		37.071209, 32.942806, 29.473541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688435, 32.546799, 29.044003>,  <37.703239, 33.073826, 29.744419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688435, 32.546799, 29.044003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.358547, 32.771999, 29.022556>,  <37.160614, 32.907120, 29.009687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.358547, 32.771999, 29.022556>,  <37.688435, 32.546799, 29.044003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358547, 32.771999, 29.022556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138464, 0.109085, -0.984342,
		-0.548338, -0.819224, -0.167920,
		-0.824714, 0.563003, -0.053617,
		37.111134, 32.940899, 29.006472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391087, 32.352081, 28.371531>,  <37.688435, 32.546799, 29.044003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391087, 32.352081, 28.371531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201050, 32.685871, 28.483206>,  <37.087029, 32.886143, 28.550211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.201050, 32.685871, 28.483206>,  <37.391087, 32.352081, 28.371531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201050, 32.685871, 28.483206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034644, 0.334777, -0.941660,
		-0.879255, -0.437701, -0.187959,
		-0.475090, 0.834471, 0.279190,
		37.058521, 32.936211, 28.566963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763519, 32.467590, 27.914076>,  <37.391087, 32.352081, 28.371531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763519, 32.467590, 27.914076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908825, 32.797215, 28.087954>,  <36.996010, 32.994991, 28.192280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908825, 32.797215, 28.087954>,  <36.763519, 32.467590, 27.914076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908825, 32.797215, 28.087954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009285, 0.469744, -0.882754,
		-0.931641, 0.316635, 0.178292,
		0.363263, 0.824065, 0.434693,
		37.017803, 33.044434, 28.218361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412415, 32.863312, 27.493414>,  <36.763519, 32.467590, 27.914076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412415, 32.863312, 27.493414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672916, 33.113064, 27.665932>,  <36.829220, 33.262917, 27.769442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672916, 33.113064, 27.665932>,  <36.412415, 32.863312, 27.493414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672916, 33.113064, 27.665932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144078, 0.456269, -0.878100,
		-0.745054, 0.634009, 0.207188,
		0.651257, 0.624381, 0.431292,
		36.868294, 33.300377, 27.795319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294586, 33.534157, 27.307257>,  <36.412415, 32.863312, 27.493414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294586, 33.534157, 27.307257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676849, 33.569885, 27.419500>,  <36.906208, 33.591324, 27.486847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.676849, 33.569885, 27.419500>,  <36.294586, 33.534157, 27.307257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676849, 33.569885, 27.419500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229609, 0.370628, -0.899953,
		-0.184388, 0.924476, 0.333683,
		0.955657, 0.089323, 0.280608,
		36.963547, 33.596684, 27.503683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545773, 34.293015, 27.185696>,  <36.294586, 33.534157, 27.307257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545773, 34.293015, 27.185696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.855240, 34.040104, 27.169413>,  <37.040920, 33.888355, 27.159643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.855240, 34.040104, 27.169413>,  <36.545773, 34.293015, 27.185696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855240, 34.040104, 27.169413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279355, 0.398083, -0.873779,
		0.568678, 0.664645, 0.484616,
		0.773671, -0.632279, -0.040709,
		37.087341, 33.850422, 27.157200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995434, 34.836040, 26.878422>,  <36.545773, 34.293015, 27.185696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995434, 34.836040, 26.878422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103405, 34.454128, 26.828573>,  <37.168186, 34.224979, 26.798664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103405, 34.454128, 26.828573>,  <36.995434, 34.836040, 26.878422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103405, 34.454128, 26.828573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144500, 0.168125, -0.975118,
		0.951976, 0.245203, 0.183347,
		0.269927, -0.954782, -0.124619,
		37.184383, 34.167694, 26.791187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584049, 34.899963, 26.599102>,  <36.995434, 34.836040, 26.878422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584049, 34.899963, 26.599102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.448097, 34.540867, 26.486998>,  <37.366524, 34.325409, 26.419735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.448097, 34.540867, 26.486998>,  <37.584049, 34.899963, 26.599102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448097, 34.540867, 26.486998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149898, 0.242480, -0.958506,
		0.928445, -0.367791, 0.052154,
		-0.339883, -0.897738, -0.280260,
		37.346130, 34.271545, 26.402920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999462, 34.655819, 26.089039>,  <37.584049, 34.899963, 26.599102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999462, 34.655819, 26.089039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.682568, 34.414207, 26.054390>,  <37.492432, 34.269241, 26.033600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.682568, 34.414207, 26.054390>,  <37.999462, 34.655819, 26.089039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682568, 34.414207, 26.054390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047440, 0.080557, -0.995620,
		0.608362, -0.792880, -0.035166,
		-0.792241, -0.604030, -0.086622,
		37.444897, 34.232998, 26.028404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200256, 34.247105, 25.595737>,  <37.999462, 34.655819, 26.089039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200256, 34.247105, 25.595737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802406, 34.205933, 25.591286>,  <37.563698, 34.181229, 25.588615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802406, 34.205933, 25.591286>,  <38.200256, 34.247105, 25.595737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802406, 34.205933, 25.591286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000327, 0.110611, -0.993864,
		0.103486, -0.988524, -0.110051,
		-0.994631, -0.102887, -0.011123,
		37.504017, 34.175053, 25.587948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080467, 33.801689, 25.022854>,  <38.200256, 34.247105, 25.595737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080467, 33.801689, 25.022854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734951, 33.990555, 25.093204>,  <37.527641, 34.103874, 25.135416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734951, 33.990555, 25.093204>,  <38.080467, 33.801689, 25.022854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734951, 33.990555, 25.093204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105841, 0.171240, -0.979528,
		-0.492612, -0.864720, -0.097942,
		-0.863789, 0.472160, 0.175878,
		37.475815, 34.132202, 25.145967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637386, 33.579052, 24.468540>,  <38.080467, 33.801689, 25.022854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637386, 33.579052, 24.468540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490791, 33.923283, 24.610020>,  <37.402836, 34.129822, 24.694906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.490791, 33.923283, 24.610020>,  <37.637386, 33.579052, 24.468540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490791, 33.923283, 24.610020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158836, 0.316699, -0.935133,
		-0.916767, -0.398890, 0.020625,
		-0.366483, 0.860575, 0.353697,
		37.380848, 34.181454, 24.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.924538, 33.799732, 24.029036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.029709, 34.135986, 24.218435>,  <37.092812, 34.337738, 24.332075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.029709, 34.135986, 24.218435>,  <36.924538, 33.799732, 24.029036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029709, 34.135986, 24.218435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118124, 0.515123, -0.848938,
		-0.957557, 0.167276, 0.234739,
		0.262926, 0.840635, 0.473501,
		37.108585, 34.388176, 24.360485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444637, 34.214607, 23.903446>,  <36.924538, 33.799732, 24.029036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444637, 34.214607, 23.903446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762287, 34.444843, 23.981482>,  <36.952877, 34.582985, 24.028303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762287, 34.444843, 23.981482>,  <36.444637, 34.214607, 23.903446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762287, 34.444843, 23.981482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187807, 0.537698, -0.821954,
		-0.578007, 0.616097, 0.535100,
		0.794126, 0.575591, 0.195086,
		37.000526, 34.617519, 24.040007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198494, 34.847458, 23.548862>,  <36.444637, 34.214607, 23.903446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198494, 34.847458, 23.548862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572731, 34.928886, 23.664255>,  <36.797272, 34.977745, 23.733490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572731, 34.928886, 23.664255>,  <36.198494, 34.847458, 23.548862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572731, 34.928886, 23.664255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015167, 0.839467, -0.543199,
		-0.352751, 0.503838, 0.788488,
		0.935594, 0.203573, 0.288481,
		36.853409, 34.989960, 23.750799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153202, 35.497879, 23.772457>,  <36.198494, 34.847458, 23.548862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153202, 35.497879, 23.772457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533993, 35.417881, 23.679731>,  <36.762466, 35.369881, 23.624096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533993, 35.417881, 23.679731>,  <36.153202, 35.497879, 23.772457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533993, 35.417881, 23.679731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017079, 0.721283, -0.692430,
		0.305688, 0.663137, 0.683230,
		0.951979, -0.199998, -0.231813,
		36.819588, 35.357880, 23.610188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506908, 36.145309, 23.625694>,  <36.153202, 35.497879, 23.772457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506908, 36.145309, 23.625694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754879, 35.880436, 23.457310>,  <36.903660, 35.721512, 23.356279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754879, 35.880436, 23.457310>,  <36.506908, 36.145309, 23.625694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754879, 35.880436, 23.457310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179430, 0.641907, -0.745493,
		0.763869, 0.386617, 0.516750,
		0.619926, -0.662180, -0.420962,
		36.940857, 35.681782, 23.331020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007919, 36.551857, 23.321863>,  <36.506908, 36.145309, 23.625694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007919, 36.551857, 23.321863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.035141, 36.200691, 23.132280>,  <37.051476, 35.989990, 23.018530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.035141, 36.200691, 23.132280>,  <37.007919, 36.551857, 23.321863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035141, 36.200691, 23.132280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213658, 0.476862, -0.852615,
		0.974535, -0.043241, 0.220026,
		0.068055, -0.877914, -0.473958,
		37.055557, 35.937317, 22.990093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557255, 36.588963, 22.888054>,  <37.007919, 36.551857, 23.321863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557255, 36.588963, 22.888054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333710, 36.298885, 22.727169>,  <37.199585, 36.124840, 22.630638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333710, 36.298885, 22.727169>,  <37.557255, 36.588963, 22.888054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333710, 36.298885, 22.727169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219966, 0.338015, -0.915074,
		0.799557, -0.599871, -0.029385,
		-0.558859, -0.725190, -0.402213,
		37.166050, 36.081329, 22.606504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961838, 36.224491, 22.355330>,  <37.557255, 36.588963, 22.888054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961838, 36.224491, 22.355330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572128, 36.210754, 22.266230>,  <37.338303, 36.202511, 22.212770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572128, 36.210754, 22.266230>,  <37.961838, 36.224491, 22.355330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572128, 36.210754, 22.266230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199309, 0.330133, -0.922653,
		0.105222, -0.943309, -0.314794,
		-0.974271, -0.034342, -0.222748,
		37.279846, 36.200451, 22.199406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993267, 36.219788, 21.679817>,  <37.961838, 36.224491, 22.355330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993267, 36.219788, 21.679817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598675, 36.271580, 21.719984>,  <37.361919, 36.302654, 21.744083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.598675, 36.271580, 21.719984>,  <37.993267, 36.219788, 21.679817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598675, 36.271580, 21.719984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041870, 0.393301, -0.918456,
		-0.158416, -0.910247, -0.382564,
		-0.986484, 0.129480, 0.100417,
		37.302731, 36.310425, 21.750109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606945, 36.041985, 21.001165>,  <37.993267, 36.219788, 21.679817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606945, 36.041985, 21.001165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358219, 36.278179, 21.206947>,  <37.208984, 36.419895, 21.330416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.358219, 36.278179, 21.206947>,  <37.606945, 36.041985, 21.001165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358219, 36.278179, 21.206947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044459, 0.682451, -0.729578,
		-0.781898, -0.430793, -0.450613,
		-0.621819, 0.590490, 0.514454,
		37.171673, 36.455326, 21.361284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994488, 36.182419, 20.535542>,  <37.606945, 36.041985, 21.001165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994488, 36.182419, 20.535542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026073, 36.464855, 20.817022>,  <37.045025, 36.634315, 20.985910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026073, 36.464855, 20.817022>,  <36.994488, 36.182419, 20.535542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026073, 36.464855, 20.817022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152231, 0.689088, -0.708508,
		-0.985186, 0.163070, -0.053079,
		0.078960, 0.706092, 0.703704,
		37.049763, 36.676682, 21.028133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673576, 36.692520, 20.253996>,  <36.994488, 36.182419, 20.535542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673576, 36.692520, 20.253996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892727, 36.867779, 20.539053>,  <37.024216, 36.972935, 20.710087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.892727, 36.867779, 20.539053>,  <36.673576, 36.692520, 20.253996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892727, 36.867779, 20.539053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144338, 0.789589, -0.596419,
		-0.824014, 0.429625, 0.369355,
		0.547875, 0.438146, 0.712644,
		37.057091, 36.999222, 20.752846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520760, 37.348270, 20.194912>,  <36.673576, 36.692520, 20.253996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520760, 37.348270, 20.194912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857441, 37.349827, 20.410883>,  <37.059448, 37.350761, 20.540466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.857441, 37.349827, 20.410883>,  <36.520760, 37.348270, 20.194912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857441, 37.349827, 20.410883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366699, 0.729863, -0.576916,
		-0.396322, 0.683583, 0.612898,
		0.841701, 0.003895, 0.539930,
		37.109951, 37.350994, 20.572863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693565, 38.031315, 20.149090>,  <36.520760, 37.348270, 20.194912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693565, 38.031315, 20.149090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042301, 37.864899, 20.252470>,  <37.251545, 37.765049, 20.314499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.042301, 37.864899, 20.252470>,  <36.693565, 38.031315, 20.149090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042301, 37.864899, 20.252470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489780, 0.742909, -0.456292,
		-0.002167, 0.524399, 0.851470,
		0.871843, -0.416044, 0.258450,
		37.303856, 37.740086, 20.330006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046738, 38.576077, 20.617367>,  <36.693565, 38.031315, 20.149090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046738, 38.576077, 20.617367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329422, 38.322353, 20.492004>,  <37.499031, 38.170120, 20.416786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329422, 38.322353, 20.492004>,  <37.046738, 38.576077, 20.617367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329422, 38.322353, 20.492004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595717, 0.772455, -0.220079,
		0.381688, -0.031169, 0.923765,
		0.706707, -0.634305, -0.313405,
		37.541435, 38.132061, 20.397984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637001, 38.651894, 20.890646>,  <37.046738, 38.576077, 20.617367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637001, 38.651894, 20.890646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792679, 38.452106, 20.581051>,  <37.886086, 38.332233, 20.395294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.792679, 38.452106, 20.581051>,  <37.637001, 38.651894, 20.890646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792679, 38.452106, 20.581051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633257, 0.755274, -0.168958,
		0.668963, -0.424376, 0.610241,
		0.389197, -0.499466, -0.773989,
		37.909439, 38.302265, 20.348854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376678, 38.641075, 20.873907>,  <37.637001, 38.651894, 20.890646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376678, 38.641075, 20.873907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303825, 38.567436, 20.487553>,  <38.260113, 38.523254, 20.255739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.303825, 38.567436, 20.487553>,  <38.376678, 38.641075, 20.873907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303825, 38.567436, 20.487553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712918, 0.651798, -0.258663,
		0.677181, -0.735709, 0.012528,
		-0.182135, -0.184093, -0.965886,
		38.249184, 38.512207, 20.197786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049667, 38.813377, 20.506399>,  <38.376678, 38.641075, 20.873907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049667, 38.813377, 20.506399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773716, 38.832119, 20.217436>,  <38.608147, 38.843365, 20.044058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.773716, 38.832119, 20.217436>,  <39.049667, 38.813377, 20.506399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773716, 38.832119, 20.217436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341634, 0.900866, -0.267819,
		0.638244, -0.431562, -0.637494,
		-0.689877, 0.046856, -0.722409,
		38.566753, 38.846176, 20.000713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441612, 38.949867, 19.766422>,  <39.049667, 38.813377, 20.506399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441612, 38.949867, 19.766422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058167, 39.043243, 19.701235>,  <38.828098, 39.099270, 19.662123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058167, 39.043243, 19.701235>,  <39.441612, 38.949867, 19.766422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058167, 39.043243, 19.701235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280204, 0.874950, -0.394904,
		0.050401, -0.424226, -0.904153,
		-0.958616, 0.233444, -0.162969,
		38.770580, 39.113277, 19.652344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427486, 39.086678, 19.063793>,  <39.441612, 38.949867, 19.766422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427486, 39.086678, 19.063793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078209, 39.239216, 19.185192>,  <38.868641, 39.330738, 19.258032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078209, 39.239216, 19.185192>,  <39.427486, 39.086678, 19.063793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078209, 39.239216, 19.185192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106159, 0.756587, -0.645218,
		-0.475670, -0.531183, -0.701130,
		-0.873194, 0.381342, 0.303496,
		38.816250, 39.353619, 19.276241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123444, 39.323780, 18.448080>,  <39.427486, 39.086678, 19.063793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123444, 39.323780, 18.448080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936829, 39.511223, 18.748146>,  <38.824860, 39.623688, 18.928186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.936829, 39.511223, 18.748146>,  <39.123444, 39.323780, 18.448080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936829, 39.511223, 18.748146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008802, 0.845620, -0.533713,
		-0.884459, -0.255599, -0.390387,
		-0.466535, 0.468611, 0.750166,
		38.796867, 39.651806, 18.973196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520206, 39.655952, 18.132677>,  <39.123444, 39.323780, 18.448080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520206, 39.655952, 18.132677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588074, 39.863049, 18.468096>,  <38.628796, 39.987305, 18.669348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588074, 39.863049, 18.468096>,  <38.520206, 39.655952, 18.132677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588074, 39.863049, 18.468096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033647, 0.853432, -0.520118,
		-0.984926, 0.060035, 0.162224,
		0.169672, 0.517736, 0.838547,
		38.638977, 40.018368, 18.719660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942780, 40.220173, 18.290028>,  <38.520206, 39.655952, 18.132677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942780, 40.220173, 18.290028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321148, 40.286804, 18.401375>,  <38.548168, 40.326782, 18.468184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321148, 40.286804, 18.401375>,  <37.942780, 40.220173, 18.290028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321148, 40.286804, 18.401375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006498, 0.848188, -0.529655,
		-0.324341, 0.502818, 0.801234,
		0.945918, 0.166583, 0.278370,
		38.604923, 40.336781, 18.484886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582737, 39.772972, 17.945889>,  <37.942780, 40.220173, 18.290028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582737, 39.772972, 17.945889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702332, 39.715729, 18.323275>,  <37.774086, 39.681385, 18.549707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.702332, 39.715729, 18.323275>,  <37.582737, 39.772972, 17.945889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702332, 39.715729, 18.323275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909314, -0.257124, -0.327162,
		0.289407, 0.955724, 0.053252,
		0.298984, -0.143106, 0.943466,
		37.792027, 39.672798, 18.606314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907604, 39.989166, 17.821321>,  <37.582737, 39.772972, 17.945889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907604, 39.989166, 17.821321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.562740, 40.190372, 17.797146>,  <36.355820, 40.311096, 17.782640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.562740, 40.190372, 17.797146>,  <36.907604, 39.989166, 17.821321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562740, 40.190372, 17.797146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368298, -0.540362, 0.756549,
		0.347896, 0.674527, 0.651139,
		-0.862163, 0.503013, -0.060438,
		36.304092, 40.341278, 17.779015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660873, 40.090069, 18.558834>,  <36.907604, 39.989166, 17.821321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660873, 40.090069, 18.558834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323582, 40.180138, 18.363585>,  <36.121208, 40.234177, 18.246435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323582, 40.180138, 18.363585>,  <36.660873, 40.090069, 18.558834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323582, 40.180138, 18.363585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533140, -0.234173, 0.812973,
		0.068751, 0.945760, 0.317508,
		-0.843229, 0.225169, -0.488123,
		36.070614, 40.247688, 18.217148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300987, 40.546741, 18.976191>,  <36.660873, 40.090069, 18.558834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300987, 40.546741, 18.976191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018974, 40.384953, 18.743185>,  <35.849766, 40.287880, 18.603382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018974, 40.384953, 18.743185>,  <36.300987, 40.546741, 18.976191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018974, 40.384953, 18.743185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531132, -0.243121, 0.811659,
		-0.469919, 0.881641, -0.043422,
		-0.705036, -0.404477, -0.582515,
		35.807465, 40.263611, 18.568430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689156, 40.705070, 19.336664>,  <36.300987, 40.546741, 18.976191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689156, 40.705070, 19.336664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578125, 40.416832, 19.082520>,  <35.511505, 40.243889, 18.930033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578125, 40.416832, 19.082520>,  <35.689156, 40.705070, 19.336664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578125, 40.416832, 19.082520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491121, -0.461965, 0.738505,
		-0.825682, 0.517033, -0.225670,
		-0.277579, -0.720601, -0.635361,
		35.494850, 40.200653, 18.891911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941208, 40.542431, 19.428253>,  <35.689156, 40.705070, 19.336664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941208, 40.542431, 19.428253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104469, 40.209671, 19.277868>,  <35.202427, 40.010014, 19.187637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104469, 40.209671, 19.277868>,  <34.941208, 40.542431, 19.428253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104469, 40.209671, 19.277868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474523, -0.545149, 0.691116,
		-0.779897, -0.103678, -0.617261,
		0.408153, -0.831904, -0.375962,
		35.226913, 39.960098, 19.165079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409935, 40.026325, 19.539310>,  <34.941208, 40.542431, 19.428253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409935, 40.026325, 19.539310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753613, 39.834106, 19.469038>,  <34.959820, 39.718777, 19.426874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.753613, 39.834106, 19.469038>,  <34.409935, 40.026325, 19.539310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753613, 39.834106, 19.469038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262718, -0.708988, 0.654458,
		-0.439052, -0.516151, -0.735405,
		0.859193, -0.480546, -0.175681,
		35.011372, 39.689941, 19.416334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150448, 39.396004, 19.473574>,  <34.409935, 40.026325, 19.539310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150448, 39.396004, 19.473574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543621, 39.353104, 19.533365>,  <34.779526, 39.327362, 19.569241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543621, 39.353104, 19.533365>,  <34.150448, 39.396004, 19.473574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543621, 39.353104, 19.533365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181320, -0.702273, 0.688430,
		0.031143, -0.703783, -0.709732,
		0.982931, -0.107249, 0.149480,
		34.838501, 39.320930, 19.578209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271336, 38.639576, 19.561615>,  <34.150448, 39.396004, 19.473574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271336, 38.639576, 19.561615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599827, 38.811848, 19.711334>,  <34.796921, 38.915211, 19.801165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.599827, 38.811848, 19.711334>,  <34.271336, 38.639576, 19.561615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599827, 38.811848, 19.711334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115996, -0.768281, 0.629516,
		0.558687, -0.473558, -0.680890,
		0.821227, 0.430683, 0.374297,
		34.846195, 38.941051, 19.823624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770649, 38.058369, 19.636436>,  <34.271336, 38.639576, 19.561615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770649, 38.058369, 19.636436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869907, 38.347012, 19.894960>,  <34.929462, 38.520195, 20.050074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.869907, 38.347012, 19.894960>,  <34.770649, 38.058369, 19.636436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869907, 38.347012, 19.894960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030854, -0.660949, 0.749797,
		0.968232, -0.205997, -0.141745,
		0.248142, 0.721604, 0.646307,
		34.944351, 38.563492, 20.088852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414288, 37.922058, 19.909037>,  <34.770649, 38.058369, 19.636436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414288, 37.922058, 19.909037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204742, 38.133846, 20.175940>,  <35.079014, 38.260918, 20.336081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204742, 38.133846, 20.175940>,  <35.414288, 37.922058, 19.909037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204742, 38.133846, 20.175940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269452, -0.640116, 0.719477,
		0.808062, 0.556701, 0.192667,
		-0.523863, 0.529467, 0.667257,
		35.047585, 38.292686, 20.376116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737762, 37.872192, 20.526539>,  <35.414288, 37.922058, 19.909037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737762, 37.872192, 20.526539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395229, 38.018005, 20.672863>,  <35.189709, 38.105492, 20.760656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395229, 38.018005, 20.672863>,  <35.737762, 37.872192, 20.526539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395229, 38.018005, 20.672863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063110, -0.629167, 0.774704,
		0.512558, 0.686488, 0.515769,
		-0.856330, 0.364531, 0.365809,
		35.138329, 38.127365, 20.782606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837532, 37.893272, 21.313377>,  <35.737762, 37.872192, 20.526539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837532, 37.893272, 21.313377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446007, 37.913155, 21.233925>,  <35.211090, 37.925083, 21.186253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446007, 37.913155, 21.233925>,  <35.837532, 37.893272, 21.313377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446007, 37.913155, 21.233925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197161, -0.490583, 0.848797,
		-0.055254, 0.869976, 0.489990,
		-0.978813, 0.049708, -0.198632,
		35.152363, 37.928066, 21.174335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558285, 38.058865, 21.956814>,  <35.837532, 37.893272, 21.313377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558285, 38.058865, 21.956814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255402, 37.899200, 21.750006>,  <35.073673, 37.803402, 21.625921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255402, 37.899200, 21.750006>,  <35.558285, 38.058865, 21.956814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255402, 37.899200, 21.750006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234319, -0.572862, 0.785445,
		-0.609701, 0.715891, 0.340242,
		-0.757205, -0.399162, -0.517021,
		35.028240, 37.779453, 21.594900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977089, 37.904373, 22.447144>,  <35.558285, 38.058865, 21.956814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977089, 37.904373, 22.447144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854542, 37.690189, 22.132328>,  <34.781013, 37.561680, 21.943439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854542, 37.690189, 22.132328>,  <34.977089, 37.904373, 22.447144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854542, 37.690189, 22.132328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349222, -0.705923, 0.616211,
		-0.885542, 0.463636, 0.029276,
		-0.306364, -0.535457, -0.787037,
		34.762634, 37.529552, 21.896217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413464, 37.570263, 22.616621>,  <34.977089, 37.904373, 22.447144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413464, 37.570263, 22.616621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497913, 37.333282, 22.305641>,  <34.548584, 37.191093, 22.119053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497913, 37.333282, 22.305641>,  <34.413464, 37.570263, 22.616621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497913, 37.333282, 22.305641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299697, -0.796305, 0.525433,
		-0.930381, 0.122069, -0.345673,
		0.211122, -0.592450, -0.777451,
		34.561249, 37.155548, 22.072405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972340, 37.051064, 22.642614>,  <34.413464, 37.570263, 22.616621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972340, 37.051064, 22.642614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276516, 36.911839, 22.423313>,  <34.459023, 36.828304, 22.291733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276516, 36.911839, 22.423313>,  <33.972340, 37.051064, 22.642614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276516, 36.911839, 22.423313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100880, -0.897299, 0.429742,
		-0.641523, -0.271486, -0.717456,
		0.760441, -0.348067, -0.548251,
		34.504650, 36.807419, 22.258839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631187, 36.635979, 22.334452>,  <33.972340, 37.051064, 22.642614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631187, 36.635979, 22.334452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021088, 36.547001, 22.342308>,  <34.255028, 36.493614, 22.347021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.021088, 36.547001, 22.342308>,  <33.631187, 36.635979, 22.334452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021088, 36.547001, 22.342308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212231, -0.895448, 0.391319,
		-0.069458, -0.385606, -0.920046,
		0.974748, -0.222442, 0.019642,
		34.313511, 36.480267, 22.348200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745728, 35.907799, 22.044579>,  <33.631187, 36.635979, 22.334452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745728, 35.907799, 22.044579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048077, 36.001015, 22.289312>,  <34.229488, 36.056946, 22.436153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048077, 36.001015, 22.289312>,  <33.745728, 35.907799, 22.044579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048077, 36.001015, 22.289312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207095, -0.801419, 0.561106,
		0.621098, -0.550834, -0.557511,
		0.755876, 0.233044, 0.611835,
		34.274841, 36.070927, 22.472862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197678, 35.331600, 22.027246>,  <33.745728, 35.907799, 22.044579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197678, 35.331600, 22.027246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260677, 35.536507, 22.364952>,  <34.298477, 35.659451, 22.567575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.260677, 35.536507, 22.364952>,  <34.197678, 35.331600, 22.027246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260677, 35.536507, 22.364952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251748, -0.805859, 0.535924,
		0.954891, -0.296948, 0.002041,
		0.157497, 0.512263, 0.844264,
		34.307926, 35.690186, 22.618231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592159, 34.902924, 22.476257>,  <34.197678, 35.331600, 22.027246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592159, 34.902924, 22.476257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464748, 35.162937, 22.752228>,  <34.388302, 35.318947, 22.917810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.464748, 35.162937, 22.752228>,  <34.592159, 34.902924, 22.476257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464748, 35.162937, 22.752228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035914, -0.719036, 0.694044,
		0.947233, 0.245849, 0.205686,
		-0.318526, 0.650034, 0.689925,
		34.369190, 35.357948, 22.959206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.192669, 33.270298, 27.119652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.848881, 33.474167, 27.135422>,  <37.642609, 33.596489, 27.144884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.848881, 33.474167, 27.135422>,  <38.192669, 33.270298, 27.119652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848881, 33.474167, 27.135422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079937, -0.210175, 0.974390,
		0.504903, 0.834304, 0.221380,
		-0.859467, 0.509669, 0.039426,
		37.591042, 33.627068, 27.147249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225281, 33.667198, 27.732143>,  <38.192669, 33.270298, 27.119652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225281, 33.667198, 27.732143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831310, 33.644192, 27.666883>,  <37.594929, 33.630386, 27.627728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831310, 33.644192, 27.666883>,  <38.225281, 33.667198, 27.732143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831310, 33.644192, 27.666883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151259, -0.171333, 0.973533,
		-0.083949, 0.983533, 0.160049,
		-0.984923, -0.057518, -0.163151,
		37.535835, 33.626938, 27.617937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888924, 34.004978, 28.296875>,  <38.225281, 33.667198, 27.732143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888924, 34.004978, 28.296875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583469, 33.792473, 28.150114>,  <37.400196, 33.664970, 28.062057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.583469, 33.792473, 28.150114>,  <37.888924, 34.004978, 28.296875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583469, 33.792473, 28.150114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337441, -0.156076, 0.928318,
		-0.550447, 0.832705, -0.060085,
		-0.763637, -0.531264, -0.366901,
		37.354378, 33.633095, 28.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285835, 34.208961, 28.705706>,  <37.888924, 34.004978, 28.296875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285835, 34.208961, 28.705706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157829, 33.865650, 28.545235>,  <37.081028, 33.659664, 28.448952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157829, 33.865650, 28.545235>,  <37.285835, 34.208961, 28.705706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157829, 33.865650, 28.545235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588441, -0.151804, 0.794161,
		-0.742515, 0.490211, -0.456469,
		-0.320013, -0.858282, -0.401177,
		37.061825, 33.608166, 28.424881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505253, 34.060349, 28.865376>,  <37.285835, 34.208961, 28.705706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505253, 34.060349, 28.865376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.667675, 33.706055, 28.775400>,  <36.765129, 33.493481, 28.721415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.667675, 33.706055, 28.775400>,  <36.505253, 34.060349, 28.865376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667675, 33.706055, 28.775400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392927, -0.391449, 0.832091,
		-0.825061, -0.249493, -0.506979,
		0.406058, -0.885731, -0.224937,
		36.789494, 33.440334, 28.707920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977604, 33.558670, 29.063467>,  <36.505253, 34.060349, 28.865376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977604, 33.558670, 29.063467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.331436, 33.372147, 29.059940>,  <36.543736, 33.260231, 29.057825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.331436, 33.372147, 29.059940>,  <35.977604, 33.558670, 29.063467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331436, 33.372147, 29.059940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165563, -0.331622, 0.928771,
		-0.436022, -0.820108, -0.370550,
		0.884575, -0.466314, -0.008815,
		36.596809, 33.232254, 29.057297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788025, 32.980080, 29.205704>,  <35.977604, 33.558670, 29.063467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788025, 32.980080, 29.205704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.181168, 32.928169, 29.258085>,  <36.417053, 32.897022, 29.289515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.181168, 32.928169, 29.258085>,  <35.788025, 32.980080, 29.205704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181168, 32.928169, 29.258085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182628, -0.587997, 0.787976,
		-0.025263, -0.798384, -0.601619,
		0.982857, -0.129779, 0.130953,
		36.476025, 32.889236, 29.297371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999420, 32.175690, 29.325787>,  <35.788025, 32.980080, 29.205704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999420, 32.175690, 29.325787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265705, 32.422733, 29.493305>,  <36.425476, 32.570961, 29.593817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.265705, 32.422733, 29.493305>,  <35.999420, 32.175690, 29.325787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265705, 32.422733, 29.493305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122430, -0.463226, 0.877743,
		0.736101, -0.635593, -0.232759,
		0.665708, 0.617611, 0.418796,
		36.465416, 32.608017, 29.618944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327858, 31.740870, 29.779381>,  <35.999420, 32.175690, 29.325787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327858, 31.740870, 29.779381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.457306, 32.101856, 29.893097>,  <36.534977, 32.318447, 29.961327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.457306, 32.101856, 29.893097>,  <36.327858, 31.740870, 29.779381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457306, 32.101856, 29.893097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251673, -0.207534, 0.945299,
		0.912102, -0.377468, 0.159965,
		0.323622, 0.902467, 0.284291,
		36.554394, 32.372597, 29.978384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873219, 31.643074, 30.318542>,  <36.327858, 31.740870, 29.779381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873219, 31.643074, 30.318542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.700768, 32.002666, 30.349419>,  <36.597298, 32.218422, 30.367945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.700768, 32.002666, 30.349419>,  <36.873219, 31.643074, 30.318542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700768, 32.002666, 30.349419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309141, -0.227542, 0.923394,
		0.847679, 0.374238, 0.376012,
		-0.431128, 0.898983, 0.077190,
		36.571430, 32.272362, 30.372576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062363, 31.793837, 30.976591>,  <36.873219, 31.643074, 30.318542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062363, 31.793837, 30.976591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.756321, 32.040230, 30.901567>,  <36.572697, 32.188065, 30.856554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.756321, 32.040230, 30.901567>,  <37.062363, 31.793837, 30.976591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756321, 32.040230, 30.901567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367221, -0.178154, 0.912913,
		0.528923, 0.767352, 0.362508,
		-0.765108, 0.615981, -0.187558,
		36.526787, 32.225025, 30.845301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957146, 32.211578, 31.617067>,  <37.062363, 31.793837, 30.976591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957146, 32.211578, 31.617067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.616997, 32.229942, 31.407396>,  <36.412907, 32.240959, 31.281593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.616997, 32.229942, 31.407396>,  <36.957146, 32.211578, 31.617067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616997, 32.229942, 31.407396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523479, 0.027043, 0.851609,
		0.053272, 0.998579, 0.001036,
		-0.850371, 0.045910, -0.524176,
		36.361885, 32.243713, 31.250143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627892, 32.689766, 31.913996>,  <36.957146, 32.211578, 31.617067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627892, 32.689766, 31.913996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.366585, 32.448067, 31.731516>,  <36.209801, 32.303047, 31.622028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.366585, 32.448067, 31.731516>,  <36.627892, 32.689766, 31.913996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366585, 32.448067, 31.731516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490049, -0.121852, 0.863136,
		-0.577140, 0.787422, -0.216510,
		-0.653270, -0.604251, -0.456201,
		36.170605, 32.266792, 31.594656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266819, 32.408005, 32.490547>,  <36.627892, 32.689766, 31.913996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266819, 32.408005, 32.490547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.066792, 32.240044, 32.187599>,  <35.946774, 32.139267, 32.005833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.066792, 32.240044, 32.187599>,  <36.266819, 32.408005, 32.490547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066792, 32.240044, 32.187599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340287, -0.708943, 0.617741,
		-0.796324, 0.566638, 0.211635,
		-0.500073, -0.419906, -0.757368,
		35.916771, 32.114071, 31.960388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476795, 33.130241, 32.811092>,  <36.266819, 32.408005, 32.490547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476795, 33.130241, 32.811092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771225, 33.325489, 32.998680>,  <36.947884, 33.442638, 33.111233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.771225, 33.325489, 32.998680>,  <36.476795, 33.130241, 32.811092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771225, 33.325489, 32.998680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083143, 0.752771, -0.653011,
		-0.671771, 0.441676, 0.594682,
		0.736078, 0.488117, 0.468967,
		36.992050, 33.471924, 33.139370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200367, 33.768574, 33.326427>,  <36.476795, 33.130241, 32.811092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200367, 33.768574, 33.326427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.561028, 33.802628, 33.156826>,  <36.777424, 33.823059, 33.055065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.561028, 33.802628, 33.156826>,  <36.200367, 33.768574, 33.326427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561028, 33.802628, 33.156826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362797, 0.682549, -0.634433,
		0.235392, 0.725864, 0.646306,
		0.901648, 0.085137, -0.424008,
		36.831520, 33.828167, 33.029625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304035, 34.493458, 33.092815>,  <36.200367, 33.768574, 33.326427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304035, 34.493458, 33.092815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.589512, 34.306129, 32.884460>,  <36.760796, 34.193733, 32.759449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.589512, 34.306129, 32.884460>,  <36.304035, 34.493458, 33.092815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589512, 34.306129, 32.884460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183392, 0.592764, -0.784219,
		0.676031, 0.655214, 0.337161,
		0.713688, -0.468323, -0.520887,
		36.803619, 34.165634, 32.728195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815277, 34.990265, 32.681961>,  <36.304035, 34.493458, 33.092815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815277, 34.990265, 32.681961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.875744, 34.642071, 32.494602>,  <36.912025, 34.433155, 32.382187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.875744, 34.642071, 32.494602>,  <36.815277, 34.990265, 32.681961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875744, 34.642071, 32.494602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116129, 0.454923, -0.882926,
		0.981663, 0.187865, -0.032319,
		0.151168, -0.870489, -0.468398,
		36.921093, 34.380924, 32.354084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325462, 35.087898, 32.181149>,  <36.815277, 34.990265, 32.681961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325462, 35.087898, 32.181149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.139217, 34.760342, 32.046913>,  <37.027470, 34.563808, 31.966373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.139217, 34.760342, 32.046913>,  <37.325462, 35.087898, 32.181149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139217, 34.760342, 32.046913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007312, 0.382742, -0.923826,
		0.884960, -0.427689, -0.184196,
		-0.465610, -0.818896, -0.335584,
		36.999535, 34.514671, 31.946238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615715, 34.952797, 31.530106>,  <37.325462, 35.087898, 32.181149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615715, 34.952797, 31.530106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.262398, 34.765396, 31.536978>,  <37.050407, 34.652954, 31.541101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.262398, 34.765396, 31.536978>,  <37.615715, 34.952797, 31.530106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262398, 34.765396, 31.536978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245676, 0.431356, -0.868087,
		0.399283, -0.771002, -0.496114,
		-0.883298, -0.468496, 0.017183,
		36.997410, 34.624847, 31.542131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595177, 34.775951, 30.832983>,  <37.615715, 34.952797, 31.530106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595177, 34.775951, 30.832983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.223854, 34.719013, 30.970379>,  <37.001060, 34.684849, 31.052816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.223854, 34.719013, 30.970379>,  <37.595177, 34.775951, 30.832983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223854, 34.719013, 30.970379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370932, 0.418252, -0.829141,
		-0.025642, -0.897109, -0.441066,
		-0.928306, -0.142344, 0.343491,
		36.945362, 34.676311, 31.073425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228260, 34.705288, 30.218935>,  <37.595177, 34.775951, 30.832983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228260, 34.705288, 30.218935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.949707, 34.800739, 30.489670>,  <36.782578, 34.858009, 30.652111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.949707, 34.800739, 30.489670>,  <37.228260, 34.705288, 30.218935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949707, 34.800739, 30.489670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523657, 0.475951, -0.706579,
		-0.490752, -0.846479, -0.206484,
		-0.696380, 0.238628, 0.676839,
		36.740791, 34.872326, 30.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665707, 34.309711, 30.062082>,  <37.228260, 34.705288, 30.218935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665707, 34.309711, 30.062082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.552685, 34.641563, 30.254700>,  <36.484871, 34.840675, 30.370270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.552685, 34.641563, 30.254700>,  <36.665707, 34.309711, 30.062082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552685, 34.641563, 30.254700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648098, 0.204991, -0.733449,
		-0.707201, -0.519323, 0.479760,
		-0.282550, 0.829628, 0.481542,
		36.467918, 34.890453, 30.399162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987690, 34.392353, 29.841238>,  <36.665707, 34.309711, 30.062082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987690, 34.392353, 29.841238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.110348, 34.737946, 30.000994>,  <36.183941, 34.945301, 30.096848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.110348, 34.737946, 30.000994>,  <35.987690, 34.392353, 29.841238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110348, 34.737946, 30.000994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490592, 0.503039, -0.711527,
		-0.815652, 0.022249, 0.578115,
		0.306646, 0.863977, 0.399390,
		36.202343, 34.997139, 30.120811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441944, 34.930988, 29.695005>,  <35.987690, 34.392353, 29.841238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441944, 34.930988, 29.695005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.741745, 35.176254, 29.794825>,  <35.921627, 35.323414, 29.854715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.741745, 35.176254, 29.794825>,  <35.441944, 34.930988, 29.695005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741745, 35.176254, 29.794825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248150, 0.609700, -0.752787,
		-0.613729, 0.502293, 0.609130,
		0.749506, 0.613163, 0.249546,
		35.966599, 35.360203, 29.869688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159733, 35.648273, 29.831221>,  <35.441944, 34.930988, 29.695005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159733, 35.648273, 29.831221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.539829, 35.664974, 29.707733>,  <35.767887, 35.674995, 29.633640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.539829, 35.664974, 29.707733>,  <35.159733, 35.648273, 29.831221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539829, 35.664974, 29.707733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282625, 0.532383, -0.797929,
		0.131044, 0.845473, 0.517689,
		0.950237, 0.041748, -0.308717,
		35.824902, 35.677498, 29.615118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163589, 36.221516, 29.455458>,  <35.159733, 35.648273, 29.831221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163589, 36.221516, 29.455458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.532623, 36.089554, 29.375462>,  <35.754044, 36.010376, 29.327463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.532623, 36.089554, 29.375462>,  <35.163589, 36.221516, 29.455458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532623, 36.089554, 29.375462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003118, 0.511998, -0.858981,
		0.385777, 0.793108, 0.471334,
		0.922587, -0.329905, -0.199990,
		35.809399, 35.990582, 29.315464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613876, 36.844154, 29.291224>,  <35.163589, 36.221516, 29.455458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613876, 36.844154, 29.291224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.764790, 36.511913, 29.127388>,  <35.855335, 36.312569, 29.029087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.764790, 36.511913, 29.127388>,  <35.613876, 36.844154, 29.291224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764790, 36.511913, 29.127388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001035, 0.441897, -0.897065,
		0.926098, 0.338869, 0.165860,
		0.377281, -0.830599, -0.409591,
		35.877975, 36.262733, 29.004511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983315, 37.182842, 29.795086>,  <35.613876, 36.844154, 29.291224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983315, 37.182842, 29.795086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.747417, 37.476673, 29.929310>,  <35.605877, 37.652969, 30.009844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.747417, 37.476673, 29.929310>,  <35.983315, 37.182842, 29.795086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747417, 37.476673, 29.929310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207118, -0.539185, 0.816322,
		0.780579, 0.411920, 0.470126,
		-0.589744, 0.734575, 0.335560,
		35.570496, 37.697044, 30.029978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231419, 37.401203, 30.564007>,  <35.983315, 37.182842, 29.795086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231419, 37.401203, 30.564007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852303, 37.478275, 30.462358>,  <35.624832, 37.524517, 30.401369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852303, 37.478275, 30.462358>,  <36.231419, 37.401203, 30.564007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852303, 37.478275, 30.462358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312636, -0.404105, 0.859627,
		0.062938, 0.894190, 0.443242,
		-0.947786, 0.192676, -0.254122,
		35.567966, 37.536079, 30.386122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856728, 37.625359, 31.183414>,  <36.231419, 37.401203, 30.564007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856728, 37.625359, 31.183414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.563469, 37.496025, 30.944099>,  <35.387512, 37.418427, 30.800510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.563469, 37.496025, 30.944099>,  <35.856728, 37.625359, 31.183414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563469, 37.496025, 30.944099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395935, -0.512337, 0.762067,
		-0.552924, 0.795593, 0.247602,
		-0.733151, -0.323331, -0.598287,
		35.343525, 37.399025, 30.764614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257526, 37.759632, 31.549522>,  <35.856728, 37.625359, 31.183414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257526, 37.759632, 31.549522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.131817, 37.499088, 31.273272>,  <35.056393, 37.342762, 31.107521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.131817, 37.499088, 31.273272>,  <35.257526, 37.759632, 31.549522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131817, 37.499088, 31.273272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500166, -0.504724, 0.703625,
		-0.806886, 0.566560, -0.167165,
		-0.314274, -0.651355, -0.690629,
		35.037537, 37.303680, 31.066082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450481, 37.786179, 31.503260>,  <35.257526, 37.759632, 31.549522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450481, 37.786179, 31.503260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.561020, 37.437386, 31.341629>,  <34.627342, 37.228111, 31.244652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.561020, 37.437386, 31.341629>,  <34.450481, 37.786179, 31.503260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561020, 37.437386, 31.341629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784905, -0.447397, 0.428672,
		-0.554577, 0.198698, -0.808062,
		0.276348, -0.871983, -0.404075,
		34.643925, 37.175789, 31.220406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833881, 37.458729, 31.383314>,  <34.450481, 37.786179, 31.503260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833881, 37.458729, 31.383314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.109768, 37.170288, 31.357065>,  <34.275299, 36.997223, 31.341316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.109768, 37.170288, 31.357065>,  <33.833881, 37.458729, 31.383314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109768, 37.170288, 31.357065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633316, -0.644705, 0.428096,
		-0.351007, -0.253705, -0.901348,
		0.689713, -0.721103, -0.065620,
		34.316681, 36.953957, 31.337379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401291, 36.886833, 31.248280>,  <33.833881, 37.458729, 31.383314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401291, 36.886833, 31.248280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.742393, 36.727673, 31.383623>,  <33.947056, 36.632175, 31.464828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.742393, 36.727673, 31.383623>,  <33.401291, 36.886833, 31.248280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742393, 36.727673, 31.383623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517580, -0.730738, 0.445122,
		0.070139, -0.554707, -0.829084,
		0.852755, -0.397897, 0.338358,
		33.998219, 36.608303, 31.485130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281994, 36.126133, 31.181208>,  <33.401291, 36.886833, 31.248280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281994, 36.126133, 31.181208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.554302, 36.199593, 31.464848>,  <33.717690, 36.243668, 31.635031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.554302, 36.199593, 31.464848>,  <33.281994, 36.126133, 31.181208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554302, 36.199593, 31.464848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446109, -0.663864, 0.600226,
		0.580978, -0.724952, -0.370012,
		0.680773, 0.183652, 0.709098,
		33.758533, 36.254688, 31.677578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462715, 35.411022, 31.442135>,  <33.281994, 36.126133, 31.181208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462715, 35.411022, 31.442135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.582809, 35.686214, 31.706419>,  <33.654865, 35.851330, 31.864990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.582809, 35.686214, 31.706419>,  <33.462715, 35.411022, 31.442135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582809, 35.686214, 31.706419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448922, -0.509246, 0.734260,
		0.841622, -0.517059, 0.155957,
		0.300235, 0.687982, 0.660712,
		33.672878, 35.892609, 31.904633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045444, 35.222118, 31.869019>,  <33.462715, 35.411022, 31.442135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045444, 35.222118, 31.869019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.859600, 35.494026, 32.096016>,  <33.748093, 35.657173, 32.232216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.859600, 35.494026, 32.096016>,  <34.045444, 35.222118, 31.869019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859600, 35.494026, 32.096016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439518, -0.733375, 0.518638,
		0.768740, -0.008459, 0.639506,
		-0.464610, 0.679772, 0.567492,
		33.720219, 35.697956, 32.266262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942799, 34.816563, 32.444283>,  <34.045444, 35.222118, 31.869019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942799, 34.816563, 32.444283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.711830, 35.133350, 32.523651>,  <33.573250, 35.323421, 32.571270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.711830, 35.133350, 32.523651>,  <33.942799, 34.816563, 32.444283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711830, 35.133350, 32.523651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554372, -0.558731, 0.616840,
		0.599380, 0.246179, 0.761669,
		-0.577421, 0.791969, 0.198418,
		33.538605, 35.370941, 32.583176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760857, 34.702477, 33.175652>,  <33.942799, 34.816563, 32.444283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760857, 34.702477, 33.175652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.478291, 34.950104, 33.038403>,  <33.308750, 35.098679, 32.956051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.478291, 34.950104, 33.038403>,  <33.760857, 34.702477, 33.175652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478291, 34.950104, 33.038403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632116, -0.333688, 0.699343,
		0.318443, 0.710922, 0.627044,
		-0.706416, 0.619066, -0.343125,
		33.266365, 35.135822, 32.935467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.284588, 40.582432, 28.501156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912937, 40.629734, 28.361021>,  <36.689945, 40.658115, 28.276939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912937, 40.629734, 28.361021>,  <37.284588, 40.582432, 28.501156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912937, 40.629734, 28.361021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330725, -0.689481, 0.644389,
		-0.165351, 0.714586, 0.679725,
		-0.929128, 0.118252, -0.350338,
		36.634197, 40.665211, 28.255920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932793, 40.615307, 29.105083>,  <37.284588, 40.582432, 28.501156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932793, 40.615307, 29.105083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668362, 40.533001, 28.816463>,  <36.509705, 40.483616, 28.643291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668362, 40.533001, 28.816463>,  <36.932793, 40.615307, 29.105083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668362, 40.533001, 28.816463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403543, -0.713225, 0.573117,
		-0.632558, 0.670051, 0.388461,
		-0.661078, -0.205769, -0.721550,
		36.470039, 40.471272, 28.599998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367970, 40.461246, 29.403088>,  <36.932793, 40.615307, 29.105083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367970, 40.461246, 29.403088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272072, 40.314144, 29.043694>,  <36.214535, 40.225883, 28.828056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272072, 40.314144, 29.043694>,  <36.367970, 40.461246, 29.403088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272072, 40.314144, 29.043694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363822, -0.824001, 0.434346,
		-0.900088, 0.431019, 0.063748,
		-0.239740, -0.367757, -0.898488,
		36.200150, 40.203815, 28.774147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653217, 40.176998, 29.470209>,  <36.367970, 40.461246, 29.403088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653217, 40.176998, 29.470209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828926, 39.997887, 29.158688>,  <35.934353, 39.890419, 28.971775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828926, 39.997887, 29.158688>,  <35.653217, 40.176998, 29.470209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828926, 39.997887, 29.158688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384681, -0.877179, 0.287364,
		-0.811824, 0.173359, -0.557574,
		0.439275, -0.447777, -0.778803,
		35.960709, 39.863552, 28.925047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155861, 39.776344, 29.289795>,  <35.653217, 40.176998, 29.470209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155861, 39.776344, 29.289795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487473, 39.614056, 29.135860>,  <35.686440, 39.516682, 29.043499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487473, 39.614056, 29.135860>,  <35.155861, 39.776344, 29.289795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487473, 39.614056, 29.135860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354461, -0.913538, 0.199515,
		-0.432511, -0.028994, -0.901162,
		0.829030, -0.405720, -0.384838,
		35.736183, 39.492340, 29.020409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898952, 39.219330, 28.975569>,  <35.155861, 39.776344, 29.289795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898952, 39.219330, 28.975569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291996, 39.148758, 28.998745>,  <35.527821, 39.106415, 29.012650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291996, 39.148758, 28.998745>,  <34.898952, 39.219330, 28.975569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291996, 39.148758, 28.998745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185552, -0.920164, 0.344774,
		-0.007517, -0.349527, -0.936896,
		0.982606, -0.176434, 0.057938,
		35.586777, 39.095829, 29.016127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129143, 38.617188, 28.615295>,  <34.898952, 39.219330, 28.975569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129143, 38.617188, 28.615295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417332, 38.666824, 28.888212>,  <35.590244, 38.696606, 29.051962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417332, 38.666824, 28.888212>,  <35.129143, 38.617188, 28.615295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417332, 38.666824, 28.888212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076268, -0.963714, 0.255811,
		0.689279, -0.236341, -0.684863,
		0.720471, 0.124091, 0.682293,
		35.633472, 38.704052, 29.092899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409573, 37.976868, 28.779123>,  <35.129143, 38.617188, 28.615295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409573, 37.976868, 28.779123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541321, 38.188744, 29.091776>,  <35.620369, 38.315868, 29.279367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541321, 38.188744, 29.091776>,  <35.409573, 37.976868, 28.779123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541321, 38.188744, 29.091776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201440, -0.769342, 0.606247,
		0.922463, -0.357130, -0.146697,
		0.329369, 0.529689, 0.781630,
		35.640133, 38.347649, 29.326265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810009, 37.520191, 29.171854>,  <35.409573, 37.976868, 28.779123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810009, 37.520191, 29.171854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672897, 37.800491, 29.422119>,  <35.590630, 37.968670, 29.572277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672897, 37.800491, 29.422119>,  <35.810009, 37.520191, 29.171854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672897, 37.800491, 29.422119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251794, -0.710175, 0.657458,
		0.905043, 0.067825, 0.419877,
		-0.342778, 0.700750, 0.625661,
		35.570065, 38.010715, 29.609818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894806, 37.035221, 28.674566>,  <35.810009, 37.520191, 29.171854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894806, 37.035221, 28.674566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930111, 36.639309, 28.629765>,  <35.951294, 36.401760, 28.602882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930111, 36.639309, 28.629765>,  <35.894806, 37.035221, 28.674566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930111, 36.639309, 28.629765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015619, 0.113806, -0.993380,
		0.995975, 0.085927, 0.025504,
		0.088260, -0.989780, -0.112006,
		35.956589, 36.342377, 28.596163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638607, 36.886982, 28.404608>,  <35.894806, 37.035221, 28.674566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638607, 36.886982, 28.404608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359947, 36.617329, 28.306448>,  <36.192749, 36.455536, 28.247553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359947, 36.617329, 28.306448>,  <36.638607, 36.886982, 28.404608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359947, 36.617329, 28.306448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276814, 0.062984, -0.958857,
		0.661854, -0.735919, 0.142732,
		-0.696651, -0.674134, -0.245398,
		36.150951, 36.415089, 28.232828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996593, 36.519829, 27.921024>,  <36.638607, 36.886982, 28.404608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996593, 36.519829, 27.921024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614559, 36.411777, 27.872278>,  <36.385338, 36.346947, 27.843031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614559, 36.411777, 27.872278>,  <36.996593, 36.519829, 27.921024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614559, 36.411777, 27.872278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122318, 0.015218, -0.992374,
		0.269919, -0.962705, 0.018507,
		-0.955082, -0.270124, -0.121864,
		36.328033, 36.330742, 27.835718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001316, 36.005562, 27.482044>,  <36.996593, 36.519829, 27.921024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001316, 36.005562, 27.482044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650959, 36.194870, 27.444473>,  <36.440742, 36.308456, 27.421930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650959, 36.194870, 27.444473>,  <37.001316, 36.005562, 27.482044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650959, 36.194870, 27.444473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089758, -0.031445, -0.995467,
		-0.474078, -0.880356, -0.014937,
		-0.875896, 0.473269, -0.093926,
		36.388191, 36.336849, 27.416296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693142, 35.692085, 26.851244>,  <37.001316, 36.005562, 27.482044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693142, 35.692085, 26.851244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478741, 36.024651, 26.909832>,  <36.350098, 36.224190, 26.944984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478741, 36.024651, 26.909832>,  <36.693142, 35.692085, 26.851244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478741, 36.024651, 26.909832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150920, 0.076337, -0.985594,
		-0.830614, -0.550391, 0.084559,
		-0.536008, 0.831410, 0.146471,
		36.317940, 36.274075, 26.953773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100304, 35.708527, 26.270815>,  <36.693142, 35.692085, 26.851244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100304, 35.708527, 26.270815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148155, 36.077469, 26.417755>,  <36.176865, 36.298836, 26.505919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148155, 36.077469, 26.417755>,  <36.100304, 35.708527, 26.270815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148155, 36.077469, 26.417755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052770, 0.363576, -0.930069,
		-0.991415, 0.130649, -0.005178,
		0.119630, 0.922357, 0.367349,
		36.184044, 36.354176, 26.527960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605122, 36.201008, 25.934042>,  <36.100304, 35.708527, 26.270815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605122, 36.201008, 25.934042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890781, 36.444645, 26.072029>,  <36.062176, 36.590828, 26.154821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890781, 36.444645, 26.072029>,  <35.605122, 36.201008, 25.934042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890781, 36.444645, 26.072029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023244, 0.471910, -0.881340,
		-0.699611, 0.637424, 0.322855,
		0.714146, 0.609090, 0.344970,
		36.105026, 36.627373, 26.175520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430752, 36.920177, 25.621908>,  <35.605122, 36.201008, 25.934042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430752, 36.920177, 25.621908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804977, 36.995426, 25.741467>,  <36.029510, 37.040573, 25.813202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804977, 36.995426, 25.741467>,  <35.430752, 36.920177, 25.621908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804977, 36.995426, 25.741467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189062, 0.448071, -0.873778,
		-0.298301, 0.873981, 0.383631,
		0.935560, 0.188119, 0.298897,
		36.085644, 37.051861, 25.831135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593628, 37.741570, 25.588747>,  <35.430752, 36.920177, 25.621908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593628, 37.741570, 25.588747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918968, 37.509514, 25.571308>,  <36.114174, 37.370281, 25.560844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918968, 37.509514, 25.571308>,  <35.593628, 37.741570, 25.588747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918968, 37.509514, 25.571308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330926, 0.522987, -0.785476,
		0.478487, 0.624439, 0.617354,
		0.813350, -0.580139, -0.043599,
		36.162971, 37.335472, 25.558228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213902, 38.225231, 25.344734>,  <35.593628, 37.741570, 25.588747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213902, 38.225231, 25.344734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343174, 37.851681, 25.283503>,  <36.420738, 37.627552, 25.246763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343174, 37.851681, 25.283503>,  <36.213902, 38.225231, 25.344734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343174, 37.851681, 25.283503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547836, 0.316523, -0.774396,
		0.771643, 0.166405, 0.613903,
		0.323178, -0.933875, -0.153080,
		36.440128, 37.571518, 25.237579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053967, 38.287838, 25.314693>,  <36.213902, 38.225231, 25.344734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053967, 38.287838, 25.314693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977787, 37.931606, 25.149483>,  <36.932079, 37.717865, 25.050356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977787, 37.931606, 25.149483>,  <37.053967, 38.287838, 25.314693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977787, 37.931606, 25.149483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782837, 0.116095, -0.611300,
		0.592364, -0.439754, 0.675072,
		-0.190449, -0.890583, -0.413026,
		36.920650, 37.664433, 25.025576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653767, 37.901886, 25.391804>,  <37.053967, 38.287838, 25.314693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653767, 37.901886, 25.391804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453224, 37.752136, 25.079781>,  <37.332901, 37.662285, 24.892567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453224, 37.752136, 25.079781>,  <37.653767, 37.901886, 25.391804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453224, 37.752136, 25.079781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768124, 0.222417, -0.600430,
		0.398286, -0.900206, 0.176060,
		-0.501352, -0.374378, -0.780056,
		37.302818, 37.639824, 24.845764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075489, 37.439960, 25.129137>,  <37.653767, 37.901886, 25.391804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075489, 37.439960, 25.129137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825272, 37.552807, 24.838179>,  <37.675140, 37.620514, 24.663605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825272, 37.552807, 24.838179>,  <38.075489, 37.439960, 25.129137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825272, 37.552807, 24.838179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779570, 0.188902, -0.597149,
		-0.031061, -0.940598, -0.338098,
		-0.625545, 0.282119, -0.727394,
		37.637608, 37.637444, 24.619961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428497, 37.155804, 24.492590>,  <38.075489, 37.439960, 25.129137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428497, 37.155804, 24.492590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177757, 37.442474, 24.370321>,  <38.027313, 37.614475, 24.296959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177757, 37.442474, 24.370321>,  <38.428497, 37.155804, 24.492590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177757, 37.442474, 24.370321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721257, 0.385368, -0.575569,
		-0.294699, -0.581264, -0.758475,
		-0.626849, 0.716675, -0.305674,
		37.989704, 37.657478, 24.278620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.373287, 38.611752, 23.399240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.725014, 38.649494, 23.585962>,  <32.936050, 38.672138, 23.697994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.725014, 38.649494, 23.585962>,  <32.373287, 38.611752, 23.399240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725014, 38.649494, 23.585962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291361, -0.668758, 0.684011,
		0.376718, -0.737468, -0.560557,
		0.879314, 0.094354, 0.466803,
		32.988808, 38.677799, 23.726004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773159, 38.006039, 23.279409>,  <32.373287, 38.611752, 23.399240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773159, 38.006039, 23.279409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944649, 38.171902, 23.600470>,  <33.047543, 38.271420, 23.793106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944649, 38.171902, 23.600470>,  <32.773159, 38.006039, 23.279409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944649, 38.171902, 23.600470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120913, -0.854116, 0.505831,
		0.895306, -0.313915, -0.316046,
		0.428728, 0.414660, 0.802651,
		33.073269, 38.296299, 23.841265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269878, 37.538895, 23.512194>,  <32.773159, 38.006039, 23.279409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269878, 37.538895, 23.512194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.234859, 37.757683, 23.845219>,  <33.213848, 37.888954, 24.045033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.234859, 37.757683, 23.845219>,  <33.269878, 37.538895, 23.512194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234859, 37.757683, 23.845219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153625, -0.833185, 0.531227,
		0.984243, -0.081396, 0.156969,
		-0.087545, 0.546971, 0.832561,
		33.208595, 37.921776, 24.094988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674923, 37.211140, 23.997578>,  <33.269878, 37.538895, 23.512194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674923, 37.211140, 23.997578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.399193, 37.426033, 24.191982>,  <33.233753, 37.554970, 24.308626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.399193, 37.426033, 24.191982>,  <33.674923, 37.211140, 23.997578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399193, 37.426033, 24.191982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106319, -0.738630, 0.665674,
		0.716605, 0.407195, 0.566277,
		-0.689328, 0.537231, 0.486014,
		33.192394, 37.587204, 24.337786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768887, 37.148785, 24.699837>,  <33.674923, 37.211140, 23.997578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768887, 37.148785, 24.699837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.388779, 37.272751, 24.687538>,  <33.160713, 37.347130, 24.680159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.388779, 37.272751, 24.687538>,  <33.768887, 37.148785, 24.699837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388779, 37.272751, 24.687538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224829, -0.614331, 0.756339,
		0.215516, 0.725635, 0.653457,
		-0.950266, 0.309919, -0.030746,
		33.103699, 37.365726, 24.678314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660923, 37.138424, 25.404690>,  <33.768887, 37.148785, 24.699837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660923, 37.138424, 25.404690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296856, 37.159161, 25.240294>,  <33.078415, 37.171604, 25.141657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.296856, 37.159161, 25.240294>,  <33.660923, 37.138424, 25.404690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296856, 37.159161, 25.240294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386471, -0.463443, 0.797409,
		-0.149129, 0.884609, 0.441845,
		-0.910165, 0.051843, -0.410989,
		33.023808, 37.174713, 25.116997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215736, 37.480984, 25.812218>,  <33.660923, 37.138424, 25.404690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215736, 37.480984, 25.812218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.968079, 37.262573, 25.586466>,  <32.819485, 37.131527, 25.451015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.968079, 37.262573, 25.586466>,  <33.215736, 37.480984, 25.812218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968079, 37.262573, 25.586466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305799, -0.494322, 0.813715,
		-0.723292, 0.676390, 0.139082,
		-0.619141, -0.546023, -0.564379,
		32.782337, 37.098766, 25.417152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631371, 37.405132, 26.220160>,  <33.215736, 37.480984, 25.812218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631371, 37.405132, 26.220160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.603951, 37.111336, 25.950100>,  <32.587498, 36.935059, 25.788065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.603951, 37.111336, 25.950100>,  <32.631371, 37.405132, 26.220160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603951, 37.111336, 25.950100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357223, -0.613800, 0.704018,
		-0.931500, 0.289437, -0.220303,
		-0.068547, -0.734491, -0.675148,
		32.583385, 36.890987, 25.747555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988653, 37.076763, 26.386992>,  <32.631371, 37.405132, 26.220160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988653, 37.076763, 26.386992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.157825, 36.812870, 26.138515>,  <32.259331, 36.654533, 25.989429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.157825, 36.812870, 26.138515>,  <31.988653, 37.076763, 26.386992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157825, 36.812870, 26.138515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316140, -0.749872, 0.581160,
		-0.849226, -0.049408, -0.525713,
		0.422932, -0.659735, -0.621191,
		32.284706, 36.614948, 25.952158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467667, 36.445995, 26.307564>,  <31.988653, 37.076763, 26.386992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467667, 36.445995, 26.307564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836903, 36.319916, 26.219421>,  <32.058445, 36.244270, 26.166536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.836903, 36.319916, 26.219421>,  <31.467667, 36.445995, 26.307564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836903, 36.319916, 26.219421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133341, -0.799733, 0.585361,
		-0.360728, -0.510959, -0.780254,
		0.923090, -0.315196, -0.220354,
		32.113831, 36.225357, 26.153315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377491, 35.714680, 26.206926>,  <31.467667, 36.445995, 26.307564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377491, 35.714680, 26.206926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.770443, 35.772934, 26.253784>,  <32.006214, 35.807888, 26.281898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.770443, 35.772934, 26.253784>,  <31.377491, 35.714680, 26.206926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770443, 35.772934, 26.253784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040765, -0.778634, 0.626153,
		0.182404, -0.610344, -0.770850,
		0.982378, 0.145636, 0.117146,
		32.065155, 35.816624, 26.288927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627827, 35.062141, 26.200819>,  <31.377491, 35.714680, 26.206926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627827, 35.062141, 26.200819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.899462, 35.273544, 26.404593>,  <32.062443, 35.400387, 26.526857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.899462, 35.273544, 26.404593>,  <31.627827, 35.062141, 26.200819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899462, 35.273544, 26.404593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049712, -0.725517, 0.686406,
		0.732371, -0.440805, -0.518964,
		0.679088, 0.528503, 0.509434,
		32.103188, 35.432095, 26.557423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155930, 34.549038, 26.369967>,  <31.627827, 35.062141, 26.200819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155930, 34.549038, 26.369967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.212460, 34.848175, 26.629431>,  <32.246380, 35.027657, 26.785109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.212460, 34.848175, 26.629431>,  <32.155930, 34.549038, 26.369967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212460, 34.848175, 26.629431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067488, -0.660991, 0.747353,
		0.987660, -0.061844, -0.143886,
		0.141327, 0.747842, 0.648660,
		32.254856, 35.072529, 26.824028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532730, 34.158989, 26.898508>,  <32.155930, 34.549038, 26.369967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532730, 34.158989, 26.898508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.418877, 34.499504, 27.074823>,  <32.350563, 34.703812, 27.180613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.418877, 34.499504, 27.074823>,  <32.532730, 34.158989, 26.898508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418877, 34.499504, 27.074823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109076, -0.485583, 0.867359,
		0.952410, 0.198804, 0.231070,
		-0.284638, 0.851285, 0.440789,
		32.333485, 34.754890, 27.207060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218437, 34.285778, 27.129343>,  <32.532730, 34.158989, 26.898508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218437, 34.285778, 27.129343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.388474, 33.967590, 26.956585>,  <33.490494, 33.776680, 26.852930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.388474, 33.967590, 26.956585>,  <33.218437, 34.285778, 27.129343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388474, 33.967590, 26.956585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119154, 0.522175, -0.844473,
		0.897275, 0.307514, 0.316754,
		0.425088, -0.795467, -0.431893,
		33.515999, 33.728951, 26.827017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874252, 34.514961, 26.682730>,  <33.218437, 34.285778, 27.129343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874252, 34.514961, 26.682730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782890, 34.151978, 26.541677>,  <33.728073, 33.934189, 26.457047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782890, 34.151978, 26.541677>,  <33.874252, 34.514961, 26.682730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782890, 34.151978, 26.541677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399458, 0.242958, -0.883971,
		0.887843, -0.342763, 0.307000,
		-0.228405, -0.907461, -0.352628,
		33.714371, 33.879738, 26.435888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500511, 34.183189, 26.371405>,  <33.874252, 34.514961, 26.682730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500511, 34.183189, 26.371405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159012, 34.042599, 26.217739>,  <33.954113, 33.958244, 26.125540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.159012, 34.042599, 26.217739>,  <34.500511, 34.183189, 26.371405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159012, 34.042599, 26.217739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286828, 0.298299, -0.910355,
		0.434569, -0.887399, -0.153856,
		-0.853744, -0.351482, -0.384163,
		33.902889, 33.937153, 26.102489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698013, 33.816872, 25.709801>,  <34.500511, 34.183189, 26.371405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698013, 33.816872, 25.709801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.308155, 33.905544, 25.697590>,  <34.074242, 33.958748, 25.690264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.308155, 33.905544, 25.697590>,  <34.698013, 33.816872, 25.709801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308155, 33.905544, 25.697590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084057, 0.236246, -0.968051,
		-0.207388, -0.946068, -0.248889,
		-0.974641, 0.221683, -0.030529,
		34.015762, 33.972050, 25.688431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619495, 33.715683, 24.985397>,  <34.698013, 33.816872, 25.709801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619495, 33.715683, 24.985397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.286999, 33.909843, 25.093784>,  <34.087502, 34.026340, 25.158815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.286999, 33.909843, 25.093784>,  <34.619495, 33.715683, 24.985397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286999, 33.909843, 25.093784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096387, 0.354201, -0.930189,
		-0.547489, -0.799331, -0.247641,
		-0.831244, 0.485398, 0.270966,
		34.037624, 34.055462, 25.175074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145767, 33.568291, 24.439850>,  <34.619495, 33.715683, 24.985397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145767, 33.568291, 24.439850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.056274, 33.911896, 24.624043>,  <34.002579, 34.118057, 24.734558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.056274, 33.911896, 24.624043>,  <34.145767, 33.568291, 24.439850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056274, 33.911896, 24.624043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009178, 0.470580, -0.882310,
		-0.974607, -0.201631, -0.097401,
		-0.223736, 0.859011, 0.460481,
		33.989155, 34.169598, 24.762186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819279, 33.945908, 23.943083>,  <34.145767, 33.568291, 24.439850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819279, 33.945908, 23.943083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888622, 34.237099, 24.208410>,  <33.930229, 34.411812, 24.367607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888622, 34.237099, 24.208410>,  <33.819279, 33.945908, 23.943083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888622, 34.237099, 24.208410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071027, 0.662523, -0.745667,
		-0.982295, 0.176379, 0.063146,
		0.173356, 0.727979, 0.663321,
		33.940628, 34.455494, 24.407406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314678, 34.551304, 23.760136>,  <33.819279, 33.945908, 23.943083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314678, 34.551304, 23.760136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.622746, 34.682426, 23.978998>,  <33.807587, 34.761101, 24.110315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.622746, 34.682426, 23.978998>,  <33.314678, 34.551304, 23.760136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622746, 34.682426, 23.978998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136821, 0.752951, -0.643696,
		-0.622991, 0.570618, 0.535049,
		0.770170, 0.327811, 0.547154,
		33.853798, 34.780769, 24.143145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277790, 35.242771, 23.621519>,  <33.314678, 34.551304, 23.760136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277790, 35.242771, 23.621519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.653618, 35.189117, 23.747509>,  <33.879116, 35.156925, 23.823103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.653618, 35.189117, 23.747509>,  <33.277790, 35.242771, 23.621519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653618, 35.189117, 23.747509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328176, 0.614873, -0.717100,
		-0.097478, 0.777135, 0.621739,
		0.939573, -0.134139, 0.314974,
		33.935490, 35.148876, 23.842001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421185, 35.858768, 23.687286>,  <33.277790, 35.242771, 23.621519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421185, 35.858768, 23.687286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765812, 35.656734, 23.666977>,  <33.972588, 35.535515, 23.654791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.765812, 35.656734, 23.666977>,  <33.421185, 35.858768, 23.687286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765812, 35.656734, 23.666977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327454, 0.629409, -0.704711,
		0.387901, 0.590533, 0.707675,
		0.861572, -0.505089, -0.050776,
		34.024284, 35.505207, 23.651745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016579, 36.263168, 23.827761>,  <33.421185, 35.858768, 23.687286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016579, 36.263168, 23.827761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136753, 35.977955, 23.574364>,  <34.208858, 35.806828, 23.422325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136753, 35.977955, 23.574364>,  <34.016579, 36.263168, 23.827761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136753, 35.977955, 23.574364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329969, 0.700867, -0.632381,
		0.894907, -0.019044, 0.445846,
		0.300437, -0.713037, -0.633495,
		34.226883, 35.764042, 23.384315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701176, 36.249931, 23.699270>,  <34.016579, 36.263168, 23.827761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701176, 36.249931, 23.699270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.558670, 36.081982, 23.365377>,  <34.473167, 35.981213, 23.165041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.558670, 36.081982, 23.365377>,  <34.701176, 36.249931, 23.699270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558670, 36.081982, 23.365377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433876, 0.716862, -0.545766,
		0.827544, -0.556607, -0.073216,
		-0.356263, -0.419878, -0.834733,
		34.451790, 35.956017, 23.114958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328632, 36.261784, 23.229403>,  <34.701176, 36.249931, 23.699270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328632, 36.261784, 23.229403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006386, 36.200012, 23.000620>,  <34.813038, 36.162949, 22.863350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.006386, 36.200012, 23.000620>,  <35.328632, 36.261784, 23.229403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006386, 36.200012, 23.000620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373843, 0.616432, -0.693003,
		0.459590, -0.772117, -0.438877,
		-0.805618, -0.154426, -0.571956,
		34.764702, 36.153683, 22.829033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625206, 36.334824, 22.426798>,  <35.328632, 36.261784, 23.229403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625206, 36.334824, 22.426798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228336, 36.380245, 22.406046>,  <34.990215, 36.407497, 22.393595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.228336, 36.380245, 22.406046>,  <35.625206, 36.334824, 22.426798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228336, 36.380245, 22.406046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110688, 0.607904, -0.786258,
		-0.057748, -0.785848, -0.615717,
		-0.992176, 0.113558, -0.051879,
		34.930683, 36.414314, 22.390482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007843, 35.863010, 21.963892>,  <35.625206, 36.334824, 22.426798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007843, 35.863010, 21.963892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.391979, 35.956352, 22.024942>,  <36.622459, 36.012360, 22.061573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.391979, 35.956352, 22.024942>,  <36.007843, 35.863010, 21.963892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391979, 35.956352, 22.024942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052729, -0.689467, 0.722396,
		0.273806, -0.685697, -0.674426,
		0.960338, 0.233358, 0.152624,
		36.680080, 36.026360, 22.070730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289387, 35.303108, 22.156437>,  <36.007843, 35.863010, 21.963892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289387, 35.303108, 22.156437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613075, 35.504681, 22.277248>,  <36.807289, 35.625626, 22.349735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613075, 35.504681, 22.277248>,  <36.289387, 35.303108, 22.156437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613075, 35.504681, 22.277248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109794, -0.634737, 0.764889,
		0.577159, -0.585800, -0.568968,
		0.809217, 0.503932, 0.302027,
		36.855839, 35.655861, 22.367857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942223, 34.799969, 22.314026>,  <36.289387, 35.303108, 22.156437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942223, 34.799969, 22.314026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975594, 35.147381, 22.509451>,  <36.995617, 35.355827, 22.626705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975594, 35.147381, 22.509451>,  <36.942223, 34.799969, 22.314026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975594, 35.147381, 22.509451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163435, -0.495557, 0.853061,
		0.983020, 0.008683, -0.183290,
		0.083424, 0.868532, 0.488561,
		37.000622, 35.407940, 22.656019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600681, 34.745041, 22.689295>,  <36.942223, 34.799969, 22.314026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600681, 34.745041, 22.689295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404331, 35.028934, 22.891413>,  <37.286522, 35.199268, 23.012684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404331, 35.028934, 22.891413>,  <37.600681, 34.745041, 22.689295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404331, 35.028934, 22.891413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154700, -0.499759, 0.852238,
		0.857387, 0.496510, 0.135523,
		-0.490873, 0.709732, 0.505297,
		37.257069, 35.241856, 23.043001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043190, 34.915615, 23.300474>,  <37.600681, 34.745041, 22.689295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043190, 34.915615, 23.300474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672104, 35.042953, 23.378454>,  <37.449451, 35.119358, 23.425241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672104, 35.042953, 23.378454>,  <38.043190, 34.915615, 23.300474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672104, 35.042953, 23.378454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043730, -0.425961, 0.903684,
		0.370729, 0.846883, 0.381247,
		-0.927711, 0.318350, 0.194950,
		37.393791, 35.138458, 23.436939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119434, 35.162033, 23.932043>,  <38.043190, 34.915615, 23.300474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119434, 35.162033, 23.932043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725941, 35.101643, 23.893127>,  <37.489845, 35.065411, 23.869778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725941, 35.101643, 23.893127>,  <38.119434, 35.162033, 23.932043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725941, 35.101643, 23.893127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040517, -0.341173, 0.939127,
		-0.174976, 0.927798, 0.329508,
		-0.983739, -0.150974, -0.097289,
		37.430820, 35.056351, 23.863941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937904, 35.433712, 24.473000>,  <38.119434, 35.162033, 23.932043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937904, 35.433712, 24.473000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645260, 35.189526, 24.351624>,  <37.469673, 35.043015, 24.278797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645260, 35.189526, 24.351624>,  <37.937904, 35.433712, 24.473000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645260, 35.189526, 24.351624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136739, -0.304658, 0.942595,
		-0.667865, 0.731108, 0.139418,
		-0.731614, -0.610462, -0.303441,
		37.425777, 35.006386, 24.260592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340343, 35.563480, 24.889780>,  <37.937904, 35.433712, 24.473000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340343, 35.563480, 24.889780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297974, 35.190865, 24.750631>,  <37.272552, 34.967297, 24.667141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297974, 35.190865, 24.750631>,  <37.340343, 35.563480, 24.889780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297974, 35.190865, 24.750631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222426, -0.318780, 0.921361,
		-0.969178, 0.174972, -0.173432,
		-0.105925, -0.931539, -0.347873,
		37.266197, 34.911404, 24.646269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909126, 35.284332, 25.286299>,  <37.340343, 35.563480, 24.889780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909126, 35.284332, 25.286299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042931, 34.950340, 25.111526>,  <37.123211, 34.749943, 25.006662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.042931, 34.950340, 25.111526>,  <36.909126, 35.284332, 25.286299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042931, 34.950340, 25.111526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141487, -0.502882, 0.852696,
		-0.931711, -0.223414, -0.286357,
		0.334508, -0.834983, -0.436930,
		37.143284, 34.699844, 24.980448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436657, 34.787498, 25.299250>,  <36.909126, 35.284332, 25.286299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436657, 34.787498, 25.299250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777512, 34.578823, 25.282721>,  <36.982025, 34.453617, 25.272802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.777512, 34.578823, 25.282721>,  <36.436657, 34.787498, 25.299250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777512, 34.578823, 25.282721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250990, -0.476699, 0.842474,
		-0.459207, -0.707529, -0.537151,
		0.852134, -0.521689, -0.041321,
		37.033150, 34.422314, 25.270323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228149, 34.025711, 25.427303>,  <36.436657, 34.787498, 25.299250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228149, 34.025711, 25.427303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.616566, 34.084023, 25.503025>,  <36.849613, 34.119007, 25.548458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.616566, 34.084023, 25.503025>,  <36.228149, 34.025711, 25.427303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616566, 34.084023, 25.503025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126239, -0.359671, 0.924500,
		0.202859, -0.921621, -0.330851,
		0.971036, 0.145777, 0.189307,
		36.907875, 34.127754, 25.559816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394211, 33.511986, 25.881508>,  <36.228149, 34.025711, 25.427303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394211, 33.511986, 25.881508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710255, 33.754955, 25.914402>,  <36.899883, 33.900738, 25.934139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.710255, 33.754955, 25.914402>,  <36.394211, 33.511986, 25.881508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710255, 33.754955, 25.914402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189883, -0.370112, 0.909374,
		0.582809, -0.702893, -0.407769,
		0.790113, 0.607419, 0.082237,
		36.947289, 33.937180, 25.939074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949696, 33.060593, 26.105124>,  <36.394211, 33.511986, 25.881508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949696, 33.060593, 26.105124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053875, 33.431446, 26.212889>,  <37.116383, 33.653957, 26.277548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.053875, 33.431446, 26.212889>,  <36.949696, 33.060593, 26.105124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053875, 33.431446, 26.212889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184081, -0.321610, 0.928806,
		0.947776, -0.192315, -0.254432,
		0.260451, 0.927137, 0.269413,
		37.132011, 33.709587, 26.293713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488186, 32.913059, 26.555990>,  <36.949696, 33.060593, 26.105124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488186, 32.913059, 26.555990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398098, 33.294086, 26.637865>,  <37.344044, 33.522701, 26.686991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398098, 33.294086, 26.637865>,  <37.488186, 32.913059, 26.555990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398098, 33.294086, 26.637865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185231, -0.164391, 0.968847,
		0.956538, 0.256118, -0.139421,
		-0.225220, 0.952564, 0.204688,
		37.330532, 33.579857, 26.699272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.487839, 37.176418, 23.511280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321030, 37.504864, 23.667162>,  <38.220943, 37.701931, 23.760691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.321030, 37.504864, 23.667162>,  <38.487839, 37.176418, 23.511280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321030, 37.504864, 23.667162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516414, 0.566892, -0.641834,
		-0.747937, -0.066411, -0.660440,
		-0.417022, 0.821111, 0.389704,
		38.195923, 37.751198, 23.784073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347233, 37.546669, 22.954836>,  <38.487839, 37.176418, 23.511280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347233, 37.546669, 22.954836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311703, 37.810078, 23.253756>,  <38.290382, 37.968124, 23.433107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311703, 37.810078, 23.253756>,  <38.347233, 37.546669, 22.954836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311703, 37.810078, 23.253756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359265, 0.720945, -0.592593,
		-0.928999, 0.215841, -0.300623,
		-0.088827, 0.658522, 0.747301,
		38.285053, 38.007633, 23.477945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016277, 38.060017, 22.614138>,  <38.347233, 37.546669, 22.954836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016277, 38.060017, 22.614138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220291, 38.195885, 22.930239>,  <38.342697, 38.277405, 23.119900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220291, 38.195885, 22.930239>,  <38.016277, 38.060017, 22.614138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220291, 38.195885, 22.930239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502119, 0.628373, -0.594158,
		-0.698388, 0.699838, 0.149937,
		0.510030, 0.339667, 0.790250,
		38.373299, 38.297783, 23.167315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902142, 38.766705, 22.662245>,  <38.016277, 38.060017, 22.614138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902142, 38.766705, 22.662245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240528, 38.719223, 22.870188>,  <38.443562, 38.690735, 22.994953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240528, 38.719223, 22.870188>,  <37.902142, 38.766705, 22.662245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240528, 38.719223, 22.870188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402279, 0.782003, -0.476070,
		-0.350021, 0.611867, 0.709298,
		0.845965, -0.118701, 0.519859,
		38.494316, 38.683613, 23.026146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166611, 39.375813, 22.815561>,  <37.902142, 38.766705, 22.662245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166611, 39.375813, 22.815561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.515522, 39.210823, 22.920628>,  <38.724869, 39.111832, 22.983667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.515522, 39.210823, 22.920628>,  <38.166611, 39.375813, 22.815561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515522, 39.210823, 22.920628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482922, 0.811069, -0.330081,
		-0.076893, 0.414771, 0.906671,
		0.872281, -0.412470, 0.262667,
		38.777206, 39.087082, 22.999428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655880, 39.908642, 23.237762>,  <38.166611, 39.375813, 22.815561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655880, 39.908642, 23.237762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.861706, 39.637856, 23.027260>,  <38.985203, 39.475384, 22.900959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.861706, 39.637856, 23.027260>,  <38.655880, 39.908642, 23.237762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861706, 39.637856, 23.027260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460853, 0.735908, -0.496038,
		0.723076, 0.012716, 0.690652,
		0.514564, -0.676962, -0.526257,
		39.016075, 39.434769, 22.869383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360443, 40.120098, 23.230366>,  <38.655880, 39.908642, 23.237762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360443, 40.120098, 23.230366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.362904, 39.880276, 22.910242>,  <39.364380, 39.736382, 22.718168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.362904, 39.880276, 22.910242>,  <39.360443, 40.120098, 23.230366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362904, 39.880276, 22.910242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491297, 0.698883, -0.519797,
		0.870970, -0.389994, 0.298857,
		0.006148, -0.599555, -0.800310,
		39.364746, 39.700409, 22.670149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929893, 40.256554, 22.907169>,  <39.360443, 40.120098, 23.230366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929893, 40.256554, 22.907169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.759335, 40.062733, 22.601648>,  <39.656998, 39.946442, 22.418337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.759335, 40.062733, 22.601648>,  <39.929893, 40.256554, 22.907169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759335, 40.062733, 22.601648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434223, 0.631101, -0.642777,
		0.793496, -0.605738, -0.058696,
		-0.426398, -0.484554, -0.763801,
		39.631416, 39.917366, 22.372507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425865, 40.111710, 22.370995>,  <39.929893, 40.256554, 22.907169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425865, 40.111710, 22.370995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.073414, 40.100086, 22.182203>,  <39.861942, 40.093113, 22.068928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.073414, 40.100086, 22.182203>,  <40.425865, 40.111710, 22.370995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073414, 40.100086, 22.182203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383911, 0.538773, -0.749890,
		0.276080, -0.841949, -0.463574,
		-0.881131, -0.029059, -0.471978,
		39.809074, 40.091370, 22.040609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495792, 39.992374, 21.613342>,  <40.425865, 40.111710, 22.370995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495792, 39.992374, 21.613342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.151672, 40.192635, 21.651779>,  <39.945202, 40.312790, 21.674841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.151672, 40.192635, 21.651779>,  <40.495792, 39.992374, 21.613342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151672, 40.192635, 21.651779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278072, 0.618831, -0.734659,
		-0.427273, -0.605306, -0.671597,
		-0.860299, 0.500652, 0.096091,
		39.893581, 40.342831, 21.680607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344261, 40.114323, 20.967396>,  <40.495792, 39.992374, 21.613342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344261, 40.114323, 20.967396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.098450, 40.354443, 21.172136>,  <39.950962, 40.498516, 21.294981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.098450, 40.354443, 21.172136>,  <40.344261, 40.114323, 20.967396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098450, 40.354443, 21.172136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099925, 0.702829, -0.704306,
		-0.782538, -0.381671, -0.491895,
		-0.614531, 0.600299, 0.511852,
		39.914089, 40.534531, 21.325691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977573, 40.414948, 20.407654>,  <40.344261, 40.114323, 20.967396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977573, 40.414948, 20.407654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.913673, 40.643196, 20.729864>,  <39.875332, 40.780144, 20.923191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.913673, 40.643196, 20.729864>,  <39.977573, 40.414948, 20.407654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913673, 40.643196, 20.729864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070298, 0.820511, -0.567292,
		-0.984651, -0.033999, -0.171191,
		-0.159751, 0.570619, 0.805527,
		39.865749, 40.814381, 20.971521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580059, 40.936108, 20.226748>,  <39.977573, 40.414948, 20.407654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580059, 40.936108, 20.226748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815422, 41.050636, 20.529217>,  <39.956638, 41.119354, 20.710699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.815422, 41.050636, 20.529217>,  <39.580059, 40.936108, 20.226748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815422, 41.050636, 20.529217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245857, 0.827569, -0.504663,
		-0.770281, 0.482857, 0.416552,
		0.588406, 0.286320, 0.756174,
		39.991943, 41.136532, 20.756069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270363, 40.952408, 19.527657>,  <39.580059, 40.936108, 20.226748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270363, 40.952408, 19.527657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.387161, 41.299461, 19.366690>,  <39.457241, 41.507694, 19.270109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.387161, 41.299461, 19.366690>,  <39.270363, 40.952408, 19.527657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387161, 41.299461, 19.366690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313896, -0.310512, -0.897247,
		-0.903441, 0.388314, 0.181678,
		0.292000, 0.867638, -0.402419,
		39.474762, 41.559753, 19.245964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674461, 40.724007, 19.831438>,  <39.270363, 40.952408, 19.527657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674461, 40.724007, 19.831438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692635, 40.507710, 19.495453>,  <38.703541, 40.377930, 19.293861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692635, 40.507710, 19.495453>,  <38.674461, 40.724007, 19.831438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692635, 40.507710, 19.495453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408786, -0.777271, 0.478272,
		-0.911498, 0.321634, -0.256363,
		0.045434, -0.540742, -0.839961,
		38.706264, 40.345486, 19.243465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149994, 40.268997, 19.932877>,  <38.674461, 40.724007, 19.831438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149994, 40.268997, 19.932877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314926, 40.095852, 19.612223>,  <38.413883, 39.991966, 19.419830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.314926, 40.095852, 19.612223>,  <38.149994, 40.268997, 19.932877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314926, 40.095852, 19.612223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095720, -0.895630, 0.434379,
		-0.905995, -0.102372, -0.410723,
		0.412324, -0.432860, -0.801637,
		38.438625, 39.965996, 19.371733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730663, 39.836605, 19.762638>,  <38.149994, 40.268997, 19.932877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730663, 39.836605, 19.762638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.067051, 39.696564, 19.597620>,  <38.268883, 39.612537, 19.498610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.067051, 39.696564, 19.597620>,  <37.730663, 39.836605, 19.762638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067051, 39.696564, 19.597620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206146, -0.912258, 0.353962,
		-0.500271, -0.212627, -0.839356,
		0.840971, -0.350107, -0.412544,
		38.319344, 39.591530, 19.473856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516964, 39.313671, 19.372332>,  <37.730663, 39.836605, 19.762638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516964, 39.313671, 19.372332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.904133, 39.253674, 19.452955>,  <38.136433, 39.217674, 19.501329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.904133, 39.253674, 19.452955>,  <37.516964, 39.313671, 19.372332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904133, 39.253674, 19.452955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206796, -0.931229, 0.300079,
		0.142690, -0.332135, -0.932376,
		0.967923, -0.149994, 0.201561,
		38.194511, 39.208675, 19.513424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758286, 38.816727, 18.958290>,  <37.516964, 39.313671, 19.372332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758286, 38.816727, 18.958290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.004757, 38.819473, 19.273321>,  <38.152641, 38.821121, 19.462339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.004757, 38.819473, 19.273321>,  <37.758286, 38.816727, 18.958290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004757, 38.819473, 19.273321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169416, -0.975399, 0.141049,
		0.769171, -0.220340, -0.599856,
		0.616178, 0.006866, 0.787577,
		38.189610, 38.821533, 19.509594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152588, 38.123081, 18.990166>,  <37.758286, 38.816727, 18.958290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152588, 38.123081, 18.990166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.194092, 38.255722, 19.365244>,  <38.218994, 38.335304, 19.590292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.194092, 38.255722, 19.365244>,  <38.152588, 38.123081, 18.990166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194092, 38.255722, 19.365244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205667, -0.915256, 0.346420,
		0.973106, -0.228799, -0.026770,
		0.103762, 0.331597, 0.937698,
		38.225220, 38.355202, 19.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293346, 37.546501, 19.367163>,  <38.152588, 38.123081, 18.990166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293346, 37.546501, 19.367163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.223404, 37.783081, 19.682026>,  <38.181438, 37.925030, 19.870943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.223404, 37.783081, 19.682026>,  <38.293346, 37.546501, 19.367163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223404, 37.783081, 19.682026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379433, -0.778200, 0.500435,
		0.908547, -0.211171, 0.360485,
		-0.174852, 0.591449, 0.787156,
		38.170948, 37.960514, 19.918173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280346, 37.128010, 19.931040>,  <38.293346, 37.546501, 19.367163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280346, 37.128010, 19.931040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107552, 37.449947, 20.093819>,  <38.003876, 37.643112, 20.191486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107552, 37.449947, 20.093819>,  <38.280346, 37.128010, 19.931040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107552, 37.449947, 20.093819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455022, -0.584086, 0.672159,
		0.778678, 0.105195, 0.618542,
		-0.431990, 0.804846, 0.406949,
		37.977955, 37.691402, 20.215904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482178, 37.299835, 20.706009>,  <38.280346, 37.128010, 19.931040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482178, 37.299835, 20.706009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.117104, 37.430782, 20.608156>,  <37.898060, 37.509350, 20.549444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.117104, 37.430782, 20.608156>,  <38.482178, 37.299835, 20.706009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117104, 37.430782, 20.608156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399951, -0.592511, 0.699264,
		0.083967, 0.736046, 0.671704,
		-0.912682, 0.327363, -0.244631,
		37.843300, 37.528992, 20.534767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157238, 37.645802, 21.300196>,  <38.482178, 37.299835, 20.706009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157238, 37.645802, 21.300196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.845512, 37.545097, 21.070663>,  <37.658478, 37.484676, 20.932943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.845512, 37.545097, 21.070663>,  <38.157238, 37.645802, 21.300196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845512, 37.545097, 21.070663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342471, -0.595760, 0.726487,
		-0.524763, 0.762686, 0.378067,
		-0.779319, -0.251756, -0.573831,
		37.611717, 37.469570, 20.898514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648705, 37.509518, 21.799747>,  <38.157238, 37.645802, 21.300196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648705, 37.509518, 21.799747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.493103, 37.357426, 21.464104>,  <37.399742, 37.266171, 21.262718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.493103, 37.357426, 21.464104>,  <37.648705, 37.509518, 21.799747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493103, 37.357426, 21.464104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525346, -0.656673, 0.541104,
		-0.756763, 0.651312, 0.055694,
		-0.389000, -0.380229, -0.839110,
		37.376404, 37.243359, 21.212370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987862, 37.615219, 21.888342>,  <37.648705, 37.509518, 21.799747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987862, 37.615219, 21.888342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031628, 37.323612, 21.618063>,  <37.057888, 37.148647, 21.455896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031628, 37.323612, 21.618063>,  <36.987862, 37.615219, 21.888342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031628, 37.323612, 21.618063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514613, -0.623127, 0.588970,
		-0.850413, 0.283281, -0.443339,
		0.109413, -0.729016, -0.675695,
		37.064453, 37.104908, 21.415354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400894, 37.222080, 22.040243>,  <36.987862, 37.615219, 21.888342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400894, 37.222080, 22.040243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632236, 36.990723, 21.810125>,  <36.771042, 36.851906, 21.672054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.632236, 36.990723, 21.810125>,  <36.400894, 37.222080, 22.040243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632236, 36.990723, 21.810125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263193, -0.799787, 0.539510,
		-0.772163, -0.160614, -0.614790,
		0.578354, -0.578398, -0.575293,
		36.805740, 36.817204, 21.637537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026890, 36.689491, 21.925266>,  <36.400894, 37.222080, 22.040243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026890, 36.689491, 21.925266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.397652, 36.554062, 21.860498>,  <36.620110, 36.472805, 21.821638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.397652, 36.554062, 21.860498>,  <36.026890, 36.689491, 21.925266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397652, 36.554062, 21.860498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121797, -0.679459, 0.723534,
		-0.354991, -0.650923, -0.671029,
		0.926901, -0.338577, -0.161921,
		36.675724, 36.452488, 21.811922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467945, 36.319080, 21.625893>,  <36.026890, 36.689491, 21.925266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467945, 36.319080, 21.625893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.147053, 36.458679, 21.819647>,  <34.954517, 36.542439, 21.935900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.147053, 36.458679, 21.819647>,  <35.467945, 36.319080, 21.625893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147053, 36.458679, 21.819647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134999, 0.684282, -0.716613,
		-0.581553, -0.640279, -0.501836,
		-0.802229, 0.349001, 0.484383,
		34.906384, 36.563381, 21.964962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986713, 36.406769, 21.154205>,  <35.467945, 36.319080, 21.625893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986713, 36.406769, 21.154205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868793, 36.663834, 21.437073>,  <34.798042, 36.818073, 21.606792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868793, 36.663834, 21.437073>,  <34.986713, 36.406769, 21.154205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868793, 36.663834, 21.437073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199428, 0.682380, -0.703268,
		-0.934518, -0.348350, -0.072998,
		-0.294796, 0.642659, 0.707167,
		34.780354, 36.856632, 21.649223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614536, 36.895672, 20.847012>,  <34.986713, 36.406769, 21.154205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614536, 36.895672, 20.847012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653706, 37.082836, 21.198345>,  <34.677208, 37.195137, 21.409145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.653706, 37.082836, 21.198345>,  <34.614536, 36.895672, 20.847012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653706, 37.082836, 21.198345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084736, 0.883289, -0.461107,
		-0.991580, -0.029275, 0.126141,
		0.097920, 0.467914, 0.878333,
		34.683083, 37.223209, 21.461845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079521, 37.378395, 20.744953>,  <34.614536, 36.895672, 20.847012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079521, 37.378395, 20.744953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349072, 37.481777, 21.021818>,  <34.510803, 37.543808, 21.187937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349072, 37.481777, 21.021818>,  <34.079521, 37.378395, 20.744953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349072, 37.481777, 21.021818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099846, 0.896370, -0.431917,
		-0.732065, 0.360169, 0.578238,
		0.673878, 0.258456, 0.692162,
		34.551235, 37.559315, 21.229467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853626, 38.025349, 21.020098>,  <34.079521, 37.378395, 20.744953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853626, 38.025349, 21.020098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248314, 37.998924, 21.079447>,  <34.485126, 37.983070, 21.115057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248314, 37.998924, 21.079447>,  <33.853626, 38.025349, 21.020098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248314, 37.998924, 21.079447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127969, 0.878771, -0.459768,
		-0.100015, 0.472650, 0.875556,
		0.986722, -0.066060, 0.148374,
		34.544331, 37.979107, 21.123959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108044, 38.702374, 21.302786>,  <33.853626, 38.025349, 21.020098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108044, 38.702374, 21.302786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423138, 38.523708, 21.133101>,  <34.612194, 38.416508, 21.031290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.423138, 38.523708, 21.133101>,  <34.108044, 38.702374, 21.302786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423138, 38.523708, 21.133101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266063, 0.867804, -0.419674,
		0.555587, 0.217726, 0.802445,
		0.787739, -0.446667, -0.424212,
		34.659458, 38.389709, 21.005836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668953, 39.217026, 21.239386>,  <34.108044, 38.702374, 21.302786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668953, 39.217026, 21.239386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773746, 38.926697, 20.984970>,  <34.836624, 38.752499, 20.832321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773746, 38.926697, 20.984970>,  <34.668953, 39.217026, 21.239386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773746, 38.926697, 20.984970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132915, 0.679913, -0.721146,
		0.955874, 0.104393, 0.274602,
		0.261988, -0.725824, -0.636036,
		34.852345, 38.708950, 20.794159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000240, 39.801102, 21.571995>,  <34.668953, 39.217026, 21.239386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000240, 39.801102, 21.571995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.702984, 40.044235, 21.683910>,  <34.524632, 40.190113, 21.751060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.702984, 40.044235, 21.683910>,  <35.000240, 39.801102, 21.571995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702984, 40.044235, 21.683910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246319, -0.637275, 0.730210,
		0.622149, 0.473731, 0.623306,
		-0.743141, 0.607832, 0.279791,
		34.480042, 40.226585, 21.767847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836609, 39.530712, 22.233702>,  <35.000240, 39.801102, 21.571995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836609, 39.530712, 22.233702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.519291, 39.766613, 22.173191>,  <34.328899, 39.908154, 22.136885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.519291, 39.766613, 22.173191>,  <34.836609, 39.530712, 22.233702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519291, 39.766613, 22.173191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465575, -0.427484, 0.774918,
		0.392339, 0.685166, 0.613692,
		-0.793291, 0.589750, -0.151278,
		34.281303, 39.943539, 22.127808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722626, 39.913422, 22.885838>,  <34.836609, 39.530712, 22.233702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722626, 39.913422, 22.885838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385780, 39.909309, 22.670155>,  <34.183674, 39.906841, 22.540745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385780, 39.909309, 22.670155>,  <34.722626, 39.913422, 22.885838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385780, 39.909309, 22.670155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523585, -0.224041, 0.821988,
		-0.129258, 0.974526, 0.183282,
		-0.842111, -0.010285, -0.539206,
		34.133148, 39.906223, 22.508392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229362, 40.288712, 23.309753>,  <34.722626, 39.913422, 22.885838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229362, 40.288712, 23.309753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044674, 40.050278, 23.046999>,  <33.933861, 39.907219, 22.889347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.044674, 40.050278, 23.046999>,  <34.229362, 40.288712, 23.309753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044674, 40.050278, 23.046999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531279, -0.407184, 0.742929,
		-0.710319, 0.692018, -0.128678,
		-0.461724, -0.596080, -0.656886,
		33.906158, 39.871452, 22.849934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563450, 40.275330, 23.564430>,  <34.229362, 40.288712, 23.309753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563450, 40.275330, 23.564430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.579483, 39.955906, 23.324198>,  <33.589104, 39.764252, 23.180059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.579483, 39.955906, 23.324198>,  <33.563450, 40.275330, 23.564430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579483, 39.955906, 23.324198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478198, -0.543090, 0.690203,
		-0.877337, 0.259530, -0.403638,
		0.040083, -0.798560, -0.600580,
		33.591507, 39.716339, 23.144024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823967, 40.008732, 23.563635>,  <33.563450, 40.275330, 23.564430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823967, 40.008732, 23.563635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086933, 39.730587, 23.447512>,  <33.244713, 39.563702, 23.377838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086933, 39.730587, 23.447512>,  <32.823967, 40.008732, 23.563635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086933, 39.730587, 23.447512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445812, -0.669529, 0.594123,
		-0.607498, -0.261164, -0.750159,
		0.657417, -0.695359, -0.290308,
		33.284157, 39.521980, 23.360418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386444, 39.412548, 23.394741>,  <32.823967, 40.008732, 23.563635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386444, 39.412548, 23.394741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.755199, 39.275669, 23.467424>,  <32.976452, 39.193542, 23.511034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.755199, 39.275669, 23.467424>,  <32.386444, 39.412548, 23.394741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755199, 39.275669, 23.467424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362704, -0.597305, 0.715314,
		-0.136242, -0.725348, -0.674766,
		0.921892, -0.342196, 0.181708,
		33.031769, 39.173012, 23.521936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.289577, 43.462967, 22.261013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570724, 43.178883, 22.276924>,  <38.739414, 43.008434, 22.286470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.570724, 43.178883, 22.276924>,  <38.289577, 43.462967, 22.261013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570724, 43.178883, 22.276924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376742, -0.324248, 0.867715,
		-0.603359, -0.624875, -0.495468,
		0.702868, -0.710207, 0.039778,
		38.781586, 42.965820, 22.288858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905811, 42.757957, 22.371231>,  <38.289577, 43.462967, 22.261013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905811, 42.757957, 22.371231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285946, 42.711803, 22.486855>,  <38.514027, 42.684113, 22.556229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.285946, 42.711803, 22.486855>,  <37.905811, 42.757957, 22.371231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285946, 42.711803, 22.486855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306568, -0.507275, 0.805412,
		0.053704, -0.854026, -0.517451,
		0.950332, -0.115380, 0.289060,
		38.571045, 42.677189, 22.573572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052391, 42.055706, 22.611319>,  <37.905811, 42.757957, 22.371231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052391, 42.055706, 22.611319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.344048, 42.265156, 22.787573>,  <38.519043, 42.390827, 22.893326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.344048, 42.265156, 22.787573>,  <38.052391, 42.055706, 22.611319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344048, 42.265156, 22.787573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349243, -0.269010, 0.897587,
		0.588537, -0.808361, -0.013274,
		0.729145, 0.523628, 0.440637,
		38.562790, 42.422245, 22.919764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171371, 41.709057, 23.161751>,  <38.052391, 42.055706, 22.611319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171371, 41.709057, 23.161751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.295879, 42.077427, 23.255569>,  <38.370583, 42.298447, 23.311861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.295879, 42.077427, 23.255569>,  <38.171371, 41.709057, 23.161751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295879, 42.077427, 23.255569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313592, -0.133448, 0.940134,
		0.897091, -0.366185, 0.247256,
		0.311267, 0.920924, 0.234547,
		38.389259, 42.353703, 23.325933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545490, 41.599251, 23.812635>,  <38.171371, 41.709057, 23.161751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545490, 41.599251, 23.812635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.482231, 41.994087, 23.802473>,  <38.444275, 42.230988, 23.796375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.482231, 41.994087, 23.802473>,  <38.545490, 41.599251, 23.812635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482231, 41.994087, 23.802473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282325, -0.020548, 0.959099,
		0.946193, 0.158856, 0.281929,
		-0.158152, 0.987088, -0.025406,
		38.434784, 42.290215, 23.794851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033363, 41.889412, 24.375494>,  <38.545490, 41.599251, 23.812635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033363, 41.889412, 24.375494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.760956, 42.175495, 24.312628>,  <38.597511, 42.347145, 24.274908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.760956, 42.175495, 24.312628>,  <39.033363, 41.889412, 24.375494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760956, 42.175495, 24.312628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240398, -0.015631, 0.970549,
		0.691685, 0.698739, 0.182579,
		-0.681014, 0.715206, -0.157164,
		38.556652, 42.390057, 24.265478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957607, 42.196239, 24.921370>,  <39.033363, 41.889412, 24.375494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957607, 42.196239, 24.921370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.596416, 42.270672, 24.766443>,  <38.379704, 42.315331, 24.673489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.596416, 42.270672, 24.766443>,  <38.957607, 42.196239, 24.921370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596416, 42.270672, 24.766443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397043, -0.016668, 0.917648,
		0.164305, 0.982392, 0.088935,
		-0.902973, 0.186085, -0.387314,
		38.325523, 42.326496, 24.650249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629761, 42.599815, 25.475307>,  <38.957607, 42.196239, 24.921370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629761, 42.599815, 25.475307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.303463, 42.549042, 25.249578>,  <38.107685, 42.518578, 25.114141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.303463, 42.549042, 25.249578>,  <38.629761, 42.599815, 25.475307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303463, 42.549042, 25.249578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577770, 0.225000, 0.784574,
		0.027386, 0.966055, -0.256878,
		-0.815740, -0.126930, -0.564320,
		38.058743, 42.510963, 25.080282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234528, 43.075924, 25.663916>,  <38.629761, 42.599815, 25.475307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234528, 43.075924, 25.663916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.982296, 42.798882, 25.523821>,  <37.830959, 42.632656, 25.439764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.982296, 42.798882, 25.523821>,  <38.234528, 43.075924, 25.663916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982296, 42.798882, 25.523821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504291, 0.022604, 0.863238,
		-0.589970, 0.720958, -0.363530,
		-0.630576, -0.692610, -0.350237,
		37.793125, 42.591099, 25.418749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520168, 43.314232, 25.895407>,  <38.234528, 43.075924, 25.663916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520168, 43.314232, 25.895407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.497311, 42.922886, 25.815878>,  <37.483597, 42.688076, 25.768160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.497311, 42.922886, 25.815878>,  <37.520168, 43.314232, 25.895407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497311, 42.922886, 25.815878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577203, -0.130112, 0.806169,
		-0.814599, 0.160832, -0.557281,
		-0.057149, -0.978368, -0.198821,
		37.480167, 42.629375, 25.756231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849308, 43.192768, 26.003761>,  <37.520168, 43.314232, 25.895407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849308, 43.192768, 26.003761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.006111, 42.825123, 26.019543>,  <37.100193, 42.604534, 26.029011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.006111, 42.825123, 26.019543>,  <36.849308, 43.192768, 26.003761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006111, 42.825123, 26.019543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505065, -0.179171, 0.844279,
		-0.768922, -0.350890, -0.534449,
		0.392007, -0.919116, 0.039454,
		37.123714, 42.549389, 26.031380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361866, 42.697685, 26.167704>,  <36.849308, 43.192768, 26.003761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361866, 42.697685, 26.167704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.712845, 42.541206, 26.278742>,  <36.923431, 42.447319, 26.345366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.712845, 42.541206, 26.278742>,  <36.361866, 42.697685, 26.167704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712845, 42.541206, 26.278742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430113, -0.385448, 0.816353,
		-0.212352, -0.835702, -0.506467,
		0.877445, -0.391192, 0.277595,
		36.976078, 42.423847, 26.362020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883366, 42.204826, 26.031532>,  <36.361866, 42.697685, 26.167704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883366, 42.204826, 26.031532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.598137, 42.466404, 25.930428>,  <35.426998, 42.623348, 25.869764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.598137, 42.466404, 25.930428>,  <35.883366, 42.204826, 26.031532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598137, 42.466404, 25.930428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508960, 0.234902, -0.828119,
		-0.482167, -0.719154, -0.500332,
		-0.713074, 0.653940, -0.252759,
		35.384216, 42.662586, 25.854599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863289, 42.187027, 25.266504>,  <35.883366, 42.204826, 26.031532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863289, 42.187027, 25.266504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.660446, 42.522167, 25.347342>,  <35.538742, 42.723251, 25.395844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.660446, 42.522167, 25.347342>,  <35.863289, 42.187027, 25.266504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660446, 42.522167, 25.347342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316372, 0.399067, -0.860613,
		-0.801718, -0.372485, -0.467443,
		-0.507107, 0.837855, 0.202096,
		35.508316, 42.773525, 25.407970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559109, 42.356575, 24.648037>,  <35.863289, 42.187027, 25.266504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559109, 42.356575, 24.648037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.534912, 42.711090, 24.831703>,  <35.520393, 42.923801, 24.941902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.534912, 42.711090, 24.831703>,  <35.559109, 42.356575, 24.648037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534912, 42.711090, 24.831703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284836, 0.456206, -0.843056,
		-0.956666, 0.079790, -0.280044,
		-0.060491, 0.886290, 0.459164,
		35.516766, 42.976978, 24.969452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267410, 42.848080, 24.056473>,  <35.559109, 42.356575, 24.648037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267410, 42.848080, 24.056473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.418903, 43.093533, 24.333607>,  <35.509800, 43.240803, 24.499887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.418903, 43.093533, 24.333607>,  <35.267410, 42.848080, 24.056473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418903, 43.093533, 24.333607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244484, 0.655675, -0.714366,
		-0.892630, 0.439942, 0.098304,
		0.378735, 0.613630, 0.692833,
		35.532524, 43.277622, 24.541456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028950, 43.550880, 23.822803>,  <35.267410, 42.848080, 24.056473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028950, 43.550880, 23.822803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338173, 43.585239, 24.074202>,  <35.523705, 43.605854, 24.225040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338173, 43.585239, 24.074202>,  <35.028950, 43.550880, 23.822803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338173, 43.585239, 24.074202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331042, 0.790537, -0.515231,
		-0.541108, 0.606361, 0.582691,
		0.773055, 0.085900, 0.628496,
		35.570087, 43.611008, 24.262751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988243, 44.357418, 24.067301>,  <35.028950, 43.550880, 23.822803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988243, 44.357418, 24.067301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.327801, 44.146042, 24.071871>,  <35.531536, 44.019215, 24.074612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.327801, 44.146042, 24.071871>,  <34.988243, 44.357418, 24.067301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327801, 44.146042, 24.071871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387593, 0.607650, -0.693205,
		0.359376, 0.592886, 0.720650,
		0.848894, -0.528440, 0.011424,
		35.582470, 43.987511, 24.075298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531506, 44.822445, 24.020544>,  <34.988243, 44.357418, 24.067301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531506, 44.822445, 24.020544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.710205, 44.480278, 23.915726>,  <35.817425, 44.274979, 23.852835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.710205, 44.480278, 23.915726>,  <35.531506, 44.822445, 24.020544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710205, 44.480278, 23.915726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506211, 0.483198, -0.714332,
		0.737674, 0.186480, 0.648893,
		0.446753, -0.855421, -0.262044,
		35.844231, 44.223652, 23.837112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202213, 44.930340, 23.915850>,  <35.531506, 44.822445, 24.020544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202213, 44.930340, 23.915850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.132420, 44.602268, 23.697910>,  <36.090546, 44.405426, 23.567146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.132420, 44.602268, 23.697910>,  <36.202213, 44.930340, 23.915850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132420, 44.602268, 23.697910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419390, 0.438733, -0.794748,
		0.890880, -0.367173, 0.267425,
		-0.174482, -0.820181, -0.544848,
		36.080074, 44.356213, 23.534456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709305, 44.959393, 23.437229>,  <36.202213, 44.930340, 23.915850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709305, 44.959393, 23.437229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.474308, 44.679600, 23.274464>,  <36.333309, 44.511723, 23.176804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.474308, 44.679600, 23.274464>,  <36.709305, 44.959393, 23.437229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474308, 44.679600, 23.274464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307363, 0.272280, -0.911807,
		0.748590, -0.660745, 0.055035,
		-0.587487, -0.699485, -0.406914,
		36.298061, 44.469753, 23.152390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997627, 44.594421, 22.938204>,  <36.709305, 44.959393, 23.437229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997627, 44.594421, 22.938204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.620838, 44.530838, 22.819929>,  <36.394764, 44.492687, 22.748964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.620838, 44.530838, 22.819929>,  <36.997627, 44.594421, 22.938204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620838, 44.530838, 22.819929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301279, -0.011764, -0.953464,
		0.148079, -0.987216, 0.058971,
		-0.941968, -0.158955, -0.295685,
		36.338249, 44.483150, 22.731224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145115, 44.129200, 22.343292>,  <36.997627, 44.594421, 22.938204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145115, 44.129200, 22.343292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.781647, 44.292187, 22.306887>,  <36.563564, 44.389980, 22.285044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.781647, 44.292187, 22.306887>,  <37.145115, 44.129200, 22.343292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781647, 44.292187, 22.306887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187497, 0.203486, -0.960957,
		-0.373043, -0.890259, -0.261301,
		-0.908671, 0.407472, -0.091012,
		36.509045, 44.414429, 22.279583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862480, 43.918392, 21.822048>,  <37.145115, 44.129200, 22.343292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862480, 43.918392, 21.822048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641953, 44.251907, 21.833654>,  <36.509636, 44.452015, 21.840618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641953, 44.251907, 21.833654>,  <36.862480, 43.918392, 21.822048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641953, 44.251907, 21.833654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055708, 0.071493, -0.995884,
		-0.832431, -0.547436, -0.085864,
		-0.551321, 0.833788, 0.029017,
		36.476555, 44.502045, 21.842360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332581, 43.714111, 21.443213>,  <36.862480, 43.918392, 21.822048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332581, 43.714111, 21.443213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.432285, 44.097553, 21.388163>,  <36.492107, 44.327618, 21.355133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.432285, 44.097553, 21.388163>,  <36.332581, 43.714111, 21.443213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432285, 44.097553, 21.388163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021225, -0.136670, -0.990389,
		-0.968203, 0.249791, -0.013721,
		0.249265, 0.958606, -0.137626,
		36.507065, 44.385136, 21.346874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757030, 43.299206, 21.038208>,  <36.332581, 43.714111, 21.443213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757030, 43.299206, 21.038208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.521080, 43.195862, 20.732189>,  <35.379509, 43.133854, 20.548578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.521080, 43.195862, 20.732189>,  <35.757030, 43.299206, 21.038208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521080, 43.195862, 20.732189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496025, -0.631675, 0.595773,
		-0.637184, 0.730915, 0.244458,
		-0.589878, -0.258360, -0.765045,
		35.344116, 43.118355, 20.502676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062096, 43.110054, 21.244173>,  <35.757030, 43.299206, 21.038208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062096, 43.110054, 21.244173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.024860, 42.938389, 20.884808>,  <35.002518, 42.835388, 20.669188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.024860, 42.938389, 20.884808>,  <35.062096, 43.110054, 21.244173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024860, 42.938389, 20.884808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537846, -0.737677, 0.408111,
		-0.837888, 0.521200, -0.162156,
		-0.093088, -0.429167, -0.898415,
		34.996933, 42.809639, 20.615282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434853, 42.867119, 21.258114>,  <35.062096, 43.110054, 21.244173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434853, 42.867119, 21.258114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.611385, 42.633114, 20.985941>,  <34.717304, 42.492710, 20.822638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.611385, 42.633114, 20.985941>,  <34.434853, 42.867119, 21.258114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611385, 42.633114, 20.985941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454123, -0.799609, 0.392936,
		-0.773953, 0.135587, -0.618557,
		0.441327, -0.585015, -0.680433,
		34.743782, 42.457611, 20.781811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967312, 42.359791, 20.996901>,  <34.434853, 42.867119, 21.258114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967312, 42.359791, 20.996901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.316093, 42.184753, 20.909071>,  <34.525360, 42.079731, 20.856373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.316093, 42.184753, 20.909071>,  <33.967312, 42.359791, 20.996901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316093, 42.184753, 20.909071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297712, -0.829940, 0.471770,
		-0.388680, -0.345989, -0.853943,
		0.871950, -0.437597, -0.219576,
		34.577679, 42.053474, 20.843199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780293, 41.782433, 20.702538>,  <33.967312, 42.359791, 20.996901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780293, 41.782433, 20.702538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.162632, 41.706200, 20.792006>,  <34.392036, 41.660461, 20.845686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.162632, 41.706200, 20.792006>,  <33.780293, 41.782433, 20.702538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162632, 41.706200, 20.792006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279988, -0.821712, 0.496382,
		0.089191, -0.537092, -0.838795,
		0.955851, -0.190580, 0.223669,
		34.449387, 41.649025, 20.859106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860950, 41.086994, 20.543497>,  <33.780293, 41.782433, 20.702538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860950, 41.086994, 20.543497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.167690, 41.149551, 20.792490>,  <34.351734, 41.187088, 20.941887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.167690, 41.149551, 20.792490>,  <33.860950, 41.086994, 20.543497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167690, 41.149551, 20.792490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211455, -0.854150, 0.475095,
		0.605998, -0.495952, -0.621931,
		0.766846, 0.156396, 0.622485,
		34.397743, 41.196468, 20.979235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106922, 40.453964, 20.635916>,  <33.860950, 41.086994, 20.543497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106922, 40.453964, 20.635916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.281647, 40.665726, 20.926825>,  <34.386482, 40.792782, 21.101370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.281647, 40.665726, 20.926825>,  <34.106922, 40.453964, 20.635916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281647, 40.665726, 20.926825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132934, -0.761614, 0.634250,
		0.889675, -0.373729, -0.262308,
		0.436815, 0.529406, 0.727270,
		34.412693, 40.824547, 21.145006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553230, 39.966854, 20.952862>,  <34.106922, 40.453964, 20.635916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553230, 39.966854, 20.952862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.425781, 40.256397, 21.197653>,  <34.349312, 40.430122, 21.344526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.425781, 40.256397, 21.197653>,  <34.553230, 39.966854, 20.952862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425781, 40.256397, 21.197653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224947, -0.684924, 0.693021,
		0.920804, 0.083149, 0.381060,
		-0.318621, 0.723854, 0.611976,
		34.330196, 40.473553, 21.381247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248848, 39.577366, 20.886997>,  <34.553230, 39.966854, 20.952862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248848, 39.577366, 20.886997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.153072, 39.268688, 20.651318>,  <35.095608, 39.083481, 20.509909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.153072, 39.268688, 20.651318>,  <35.248848, 39.577366, 20.886997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153072, 39.268688, 20.651318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300351, 0.518213, -0.800777,
		0.923285, -0.368707, 0.107697,
		-0.239443, -0.771693, -0.589200,
		35.081238, 39.037182, 20.474558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900276, 39.402332, 20.410044>,  <35.248848, 39.577366, 20.886997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900276, 39.402332, 20.410044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.577995, 39.254665, 20.224762>,  <35.384624, 39.166065, 20.113594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.577995, 39.254665, 20.224762>,  <35.900276, 39.402332, 20.410044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577995, 39.254665, 20.224762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297667, 0.423736, -0.855478,
		0.512086, -0.827144, -0.231520,
		-0.805706, -0.369162, -0.463202,
		35.336285, 39.143917, 20.085802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157383, 39.182549, 19.744795>,  <35.900276, 39.402332, 20.410044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157383, 39.182549, 19.744795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.760735, 39.220989, 19.710257>,  <35.522747, 39.244053, 19.689533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.760735, 39.220989, 19.710257>,  <36.157383, 39.182549, 19.744795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760735, 39.220989, 19.710257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107456, 0.242517, -0.964178,
		-0.071715, -0.965376, -0.250811,
		-0.991620, 0.096098, -0.086344,
		35.463249, 39.249817, 19.684353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975372, 38.812523, 19.194780>,  <36.157383, 39.182549, 19.744795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975372, 38.812523, 19.194780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.687508, 39.084236, 19.252268>,  <35.514790, 39.247265, 19.286760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.687508, 39.084236, 19.252268>,  <35.975372, 38.812523, 19.194780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687508, 39.084236, 19.252268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187670, 0.389597, -0.901662,
		-0.668477, -0.621923, -0.407861,
		-0.719665, 0.679283, 0.143720,
		35.471607, 39.288021, 19.295383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732849, 38.928165, 18.563007>,  <35.975372, 38.812523, 19.194780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732849, 38.928165, 18.563007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.545082, 39.235992, 18.736172>,  <35.432423, 39.420689, 18.840071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.545082, 39.235992, 18.736172>,  <35.732849, 38.928165, 18.563007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545082, 39.235992, 18.736172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037920, 0.507407, -0.860872,
		-0.882161, -0.387694, -0.267369,
		-0.469419, 0.769566, 0.432913,
		35.404255, 39.466862, 18.866045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216721, 39.157413, 18.089756>,  <35.732849, 38.928165, 18.563007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216721, 39.157413, 18.089756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.306103, 39.465351, 18.328888>,  <35.359734, 39.650116, 18.472366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.306103, 39.465351, 18.328888>,  <35.216721, 39.157413, 18.089756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306103, 39.465351, 18.328888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381238, 0.495446, -0.780507,
		-0.897064, 0.402326, -0.182784,
		0.223458, 0.769848, 0.597829,
		35.373138, 39.696304, 18.508236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989944, 39.716373, 17.745302>,  <35.216721, 39.157413, 18.089756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989944, 39.716373, 17.745302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.228447, 39.885731, 18.018129>,  <35.371548, 39.987343, 18.181826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.228447, 39.885731, 18.018129>,  <34.989944, 39.716373, 17.745302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228447, 39.885731, 18.018129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433206, 0.545607, -0.717388,
		-0.675876, 0.723225, 0.141907,
		0.596259, 0.423390, 0.682068,
		35.407326, 40.012749, 18.222750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011028, 40.473152, 17.497385>,  <34.989944, 39.716373, 17.745302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011028, 40.473152, 17.497385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.322872, 40.413490, 17.740683>,  <35.509979, 40.377693, 17.886662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.322872, 40.413490, 17.740683>,  <35.011028, 40.473152, 17.497385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322872, 40.413490, 17.740683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547068, 0.634947, -0.545491,
		-0.304838, 0.758020, 0.576610,
		0.779610, -0.149158, 0.608244,
		35.556755, 40.368744, 17.923157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271595, 41.136101, 17.726074>,  <35.011028, 40.473152, 17.497385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271595, 41.136101, 17.726074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590267, 40.894588, 17.736977>,  <35.781471, 40.749680, 17.743519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590267, 40.894588, 17.736977>,  <35.271595, 41.136101, 17.726074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590267, 40.894588, 17.736977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528886, 0.674615, -0.514950,
		0.292530, 0.424669, 0.856787,
		0.796684, -0.603781, 0.027257,
		35.829273, 40.713455, 17.745153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.308266, 31.348000, 31.204405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685562, 31.480316, 31.192530>,  <33.911938, 31.559706, 31.185404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685562, 31.480316, 31.192530>,  <33.308266, 31.348000, 31.204405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685562, 31.480316, 31.192530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145622, 0.331578, -0.932121,
		-0.298495, 0.883534, 0.360927,
		0.943236, 0.330793, -0.029687,
		33.968533, 31.579554, 31.183624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408035, 32.087765, 31.266459>,  <33.308266, 31.348000, 31.204405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408035, 32.087765, 31.266459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700733, 31.906733, 31.062605>,  <33.876350, 31.798113, 30.940292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700733, 31.906733, 31.062605>,  <33.408035, 32.087765, 31.266459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700733, 31.906733, 31.062605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224301, 0.546170, -0.807086,
		0.643619, 0.704888, 0.298140,
		0.731741, -0.452583, -0.509632,
		33.920254, 31.770958, 30.909716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675350, 32.658234, 30.810850>,  <33.408035, 32.087765, 31.266459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675350, 32.658234, 30.810850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.833424, 32.324680, 30.656723>,  <33.928268, 32.124550, 30.564247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.833424, 32.324680, 30.656723>,  <33.675350, 32.658234, 30.810850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833424, 32.324680, 30.656723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042729, 0.402318, -0.914502,
		0.917609, 0.377859, 0.123358,
		0.395182, -0.833884, -0.385316,
		33.951977, 32.074516, 30.541128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203262, 32.874310, 30.427889>,  <33.675350, 32.658234, 30.810850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203262, 32.874310, 30.427889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085686, 32.535625, 30.250494>,  <34.015141, 32.332417, 30.144056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085686, 32.535625, 30.250494>,  <34.203262, 32.874310, 30.427889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085686, 32.535625, 30.250494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026154, 0.470936, -0.881779,
		0.955466, -0.247592, -0.160572,
		-0.293941, -0.846710, -0.443488,
		33.997505, 32.281612, 30.117447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594677, 32.899933, 29.855209>,  <34.203262, 32.874310, 30.427889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594677, 32.899933, 29.855209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337925, 32.609985, 29.755171>,  <34.183872, 32.436016, 29.695148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337925, 32.609985, 29.755171>,  <34.594677, 32.899933, 29.855209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337925, 32.609985, 29.755171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091847, 0.251126, -0.963587,
		0.761283, -0.641480, -0.094616,
		-0.641882, -0.724872, -0.250096,
		34.145359, 32.392525, 29.680141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872658, 32.438034, 29.247366>,  <34.594677, 32.899933, 29.855209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872658, 32.438034, 29.247366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473595, 32.415348, 29.232029>,  <34.234158, 32.401737, 29.222826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.473595, 32.415348, 29.232029>,  <34.872658, 32.438034, 29.247366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473595, 32.415348, 29.232029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032576, 0.099333, -0.994521,
		0.060204, -0.993438, -0.097252,
		-0.997655, -0.056706, -0.038342,
		34.174297, 32.398335, 29.220526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645214, 32.034168, 28.571518>,  <34.872658, 32.438034, 29.247366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645214, 32.034168, 28.571518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308308, 32.215218, 28.688631>,  <34.106163, 32.323849, 28.758900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308308, 32.215218, 28.688631>,  <34.645214, 32.034168, 28.571518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308308, 32.215218, 28.688631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243634, 0.164869, -0.955752,
		-0.480869, -0.876326, -0.028588,
		-0.842263, 0.452627, 0.292783,
		34.055630, 32.351006, 28.776466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147190, 31.732571, 28.123842>,  <34.645214, 32.034168, 28.571518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147190, 31.732571, 28.123842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980968, 32.060982, 28.280416>,  <33.881233, 32.258030, 28.374361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.980968, 32.060982, 28.280416>,  <34.147190, 31.732571, 28.123842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980968, 32.060982, 28.280416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370818, 0.240041, -0.897148,
		-0.830546, -0.517968, 0.204702,
		-0.415557, 0.821029, 0.391437,
		33.856300, 32.307289, 28.397848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494953, 31.911106, 27.716825>,  <34.147190, 31.732571, 28.123842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494953, 31.911106, 27.716825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527119, 32.265171, 27.900137>,  <33.546417, 32.477612, 28.010124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527119, 32.265171, 27.900137>,  <33.494953, 31.911106, 27.716825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527119, 32.265171, 27.900137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143832, 0.465259, -0.873411,
		-0.986329, 0.004322, 0.164729,
		0.080417, 0.885164, 0.458277,
		33.551243, 32.530720, 28.037621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932766, 32.345734, 27.494514>,  <33.494953, 31.911106, 27.716825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932766, 32.345734, 27.494514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219048, 32.583637, 27.640955>,  <33.390816, 32.726379, 27.728819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219048, 32.583637, 27.640955>,  <32.932766, 32.345734, 27.494514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219048, 32.583637, 27.640955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038309, 0.556843, -0.829734,
		-0.697350, 0.579820, 0.421320,
		0.715706, 0.594755, 0.366103,
		33.433758, 32.762062, 27.750786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609882, 33.049995, 27.399498>,  <32.932766, 32.345734, 27.494514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609882, 33.049995, 27.399498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009563, 33.051178, 27.415449>,  <33.249371, 33.051888, 27.425020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009563, 33.051178, 27.415449>,  <32.609882, 33.049995, 27.399498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009563, 33.051178, 27.415449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028585, 0.644482, -0.764085,
		-0.027961, 0.764614, 0.643882,
		0.999200, 0.002959, 0.039877,
		33.309322, 33.052067, 27.427412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841236, 33.757591, 27.480957>,  <32.609882, 33.049995, 27.399498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841236, 33.757591, 27.480957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144676, 33.555862, 27.315948>,  <33.326740, 33.434826, 27.216944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144676, 33.555862, 27.315948>,  <32.841236, 33.757591, 27.480957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144676, 33.555862, 27.315948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078874, 0.699565, -0.710203,
		0.646759, 0.506226, 0.570472,
		0.758605, -0.504326, -0.412522,
		33.372257, 33.404564, 27.192192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006382, 34.419365, 27.820822>,  <32.841236, 33.757591, 27.480957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006382, 34.419365, 27.820822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659336, 34.615356, 27.786951>,  <32.451107, 34.732952, 27.766628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.659336, 34.615356, 27.786951>,  <33.006382, 34.419365, 27.820822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659336, 34.615356, 27.786951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327169, -0.434285, 0.839260,
		0.374441, 0.755858, 0.537097,
		-0.867614, 0.489975, -0.084679,
		32.399052, 34.762348, 27.761547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910343, 34.806541, 28.468637>,  <33.006382, 34.419365, 27.820822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910343, 34.806541, 28.468637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550037, 34.748379, 28.304937>,  <32.333855, 34.713482, 28.206718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.550037, 34.748379, 28.304937>,  <32.910343, 34.806541, 28.468637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550037, 34.748379, 28.304937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358135, -0.284394, 0.889303,
		-0.245697, 0.947617, 0.204097,
		-0.900762, -0.145404, -0.409249,
		32.279808, 34.704758, 28.182163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455585, 34.999641, 28.938814>,  <32.910343, 34.806541, 28.468637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455585, 34.999641, 28.938814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219887, 34.803059, 28.682297>,  <32.078468, 34.685108, 28.528387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.219887, 34.803059, 28.682297>,  <32.455585, 34.999641, 28.938814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219887, 34.803059, 28.682297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572031, -0.306771, 0.760705,
		-0.570582, 0.815085, -0.100363,
		-0.589251, -0.491456, -0.641291,
		32.043110, 34.655621, 28.489910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737715, 35.255241, 28.968760>,  <32.455585, 34.999641, 28.938814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737715, 35.255241, 28.968760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.722195, 34.879978, 28.831146>,  <31.712883, 34.654819, 28.748579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.722195, 34.879978, 28.831146>,  <31.737715, 35.255241, 28.968760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722195, 34.879978, 28.831146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589129, -0.256611, 0.766210,
		-0.807107, 0.232410, -0.542738,
		-0.038803, -0.938156, -0.344032,
		31.710554, 34.598530, 28.727936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179514, 35.054779, 29.285454>,  <31.737715, 35.255241, 28.968760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179514, 35.054779, 29.285454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308672, 34.705765, 29.138796>,  <31.386166, 34.496357, 29.050802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.308672, 34.705765, 29.138796>,  <31.179514, 35.054779, 29.285454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308672, 34.705765, 29.138796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642733, -0.486519, 0.591772,
		-0.694719, 0.044574, -0.717899,
		0.322894, -0.872532, -0.366643,
		31.405540, 34.444004, 29.028803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572832, 34.712555, 29.104740>,  <31.179514, 35.054779, 29.285454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572832, 34.712555, 29.104740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863749, 34.447708, 29.177021>,  <31.038298, 34.288799, 29.220390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863749, 34.447708, 29.177021>,  <30.572832, 34.712555, 29.104740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863749, 34.447708, 29.177021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605133, -0.494398, 0.624007,
		-0.323822, -0.563186, -0.760237,
		0.727292, -0.662112, 0.180705,
		31.081936, 34.249073, 29.231232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160988, 34.063652, 29.078251>,  <30.572832, 34.712555, 29.104740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160988, 34.063652, 29.078251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521112, 33.983376, 29.232737>,  <30.737186, 33.935211, 29.325428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521112, 33.983376, 29.232737>,  <30.160988, 34.063652, 29.078251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521112, 33.983376, 29.232737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434295, -0.355579, 0.827618,
		-0.028767, -0.912845, -0.407292,
		0.900311, -0.200693, 0.386215,
		30.791206, 33.923168, 29.348600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172924, 33.346619, 29.271313>,  <30.160988, 34.063652, 29.078251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172924, 33.346619, 29.271313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.436270, 33.546246, 29.496696>,  <30.594276, 33.666023, 29.631927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.436270, 33.546246, 29.496696>,  <30.172924, 33.346619, 29.271313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436270, 33.546246, 29.496696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537959, -0.211595, 0.815983,
		0.526459, -0.840330, 0.129174,
		0.658362, 0.499072, 0.563459,
		30.633780, 33.695969, 29.665733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181316, 32.977230, 29.909815>,  <30.172924, 33.346619, 29.271313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181316, 32.977230, 29.909815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374153, 33.316586, 29.997295>,  <30.489857, 33.520199, 30.049784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.374153, 33.316586, 29.997295>,  <30.181316, 32.977230, 29.909815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374153, 33.316586, 29.997295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536008, 0.088152, 0.839598,
		0.693022, -0.521990, 0.497239,
		0.482094, 0.848384, 0.218700,
		30.518782, 33.571102, 30.062906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258793, 32.932167, 30.553915>,  <30.181316, 32.977230, 29.909815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258793, 32.932167, 30.553915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309219, 33.325264, 30.499769>,  <30.339476, 33.561123, 30.467281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309219, 33.325264, 30.499769>,  <30.258793, 32.932167, 30.553915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309219, 33.325264, 30.499769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456957, 0.178644, 0.871365,
		0.880510, -0.047994, 0.471592,
		0.126067, 0.982742, -0.135367,
		30.347040, 33.620087, 30.459160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511139, 33.128929, 31.175020>,  <30.258793, 32.932167, 30.553915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511139, 33.128929, 31.175020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.387197, 33.476269, 31.020124>,  <30.312832, 33.684673, 30.927187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.387197, 33.476269, 31.020124>,  <30.511139, 33.128929, 31.175020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387197, 33.476269, 31.020124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507887, 0.193142, 0.839492,
		0.803767, 0.456796, 0.381179,
		-0.309855, 0.868352, -0.387241,
		30.294241, 33.736774, 30.903952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670156, 33.746696, 31.627359>,  <30.511139, 33.128929, 31.175020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670156, 33.746696, 31.627359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369041, 33.856834, 31.388195>,  <30.188374, 33.922916, 31.244696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369041, 33.856834, 31.388195>,  <30.670156, 33.746696, 31.627359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369041, 33.856834, 31.388195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427537, 0.486140, 0.762155,
		0.500524, 0.829369, -0.248240,
		-0.752787, 0.275345, -0.597911,
		30.143206, 33.939438, 31.208822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564501, 34.351215, 31.798565>,  <30.670156, 33.746696, 31.627359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564501, 34.351215, 31.798565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218628, 34.271198, 31.614258>,  <30.011105, 34.223186, 31.503674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218628, 34.271198, 31.614258>,  <30.564501, 34.351215, 31.798565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218628, 34.271198, 31.614258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502035, 0.374991, 0.779322,
		0.016885, 0.905188, -0.424676,
		-0.864683, -0.200043, -0.460767,
		29.959223, 34.211185, 31.476028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267187, 34.969795, 31.831417>,  <30.564501, 34.351215, 31.798565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267187, 34.969795, 31.831417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973339, 34.700638, 31.796663>,  <29.797031, 34.539143, 31.775810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.973339, 34.700638, 31.796663>,  <30.267187, 34.969795, 31.831417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973339, 34.700638, 31.796663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450561, 0.388079, 0.803984,
		-0.507277, 0.629770, -0.588269,
		-0.734619, -0.672893, -0.086886,
		29.752953, 34.498772, 31.770597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495714, 35.340939, 31.985367>,  <30.267187, 34.969795, 31.831417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495714, 35.340939, 31.985367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.458927, 34.947865, 32.049713>,  <29.436855, 34.712021, 32.088322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.458927, 34.947865, 32.049713>,  <29.495714, 35.340939, 31.985367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458927, 34.947865, 32.049713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555341, 0.184712, 0.810850,
		-0.826522, -0.014762, -0.562712,
		-0.091970, -0.982682, 0.160867,
		29.431335, 34.653061, 32.097973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110779, 35.744953, 31.910032>,  <29.495714, 35.340939, 31.985367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110779, 35.744953, 31.910032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.310844, 35.928452, 32.203804>,  <30.430883, 36.038551, 32.380066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.310844, 35.928452, 32.203804>,  <30.110779, 35.744953, 31.910032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310844, 35.928452, 32.203804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032646, 0.857528, -0.513401,
		-0.865315, 0.232809, 0.443881,
		0.500164, 0.458744, 0.734432,
		30.460894, 36.066074, 32.424133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828249, 36.322960, 31.980232>,  <30.110779, 35.744953, 31.910032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828249, 36.322960, 31.980232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.196762, 36.389038, 32.121056>,  <30.417870, 36.428684, 32.205551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.196762, 36.389038, 32.121056>,  <29.828249, 36.322960, 31.980232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196762, 36.389038, 32.121056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065589, 0.826320, -0.559368,
		-0.383318, 0.538429, 0.750441,
		0.921284, 0.165196, 0.352058,
		30.473148, 36.438599, 32.226673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986460, 37.046673, 32.288509>,  <29.828249, 36.322960, 31.980232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986460, 37.046673, 32.288509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356501, 36.934898, 32.185665>,  <30.578526, 36.867832, 32.123959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356501, 36.934898, 32.185665>,  <29.986460, 37.046673, 32.288509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356501, 36.934898, 32.185665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171178, 0.911287, -0.374505,
		0.338948, 0.302444, 0.890866,
		0.925101, -0.279435, -0.257108,
		30.634031, 36.851067, 32.108532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574602, 37.485920, 32.584183>,  <29.986460, 37.046673, 32.288509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574602, 37.485920, 32.584183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.746254, 37.314159, 32.266323>,  <30.849245, 37.211102, 32.075607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.746254, 37.314159, 32.266323>,  <30.574602, 37.485920, 32.584183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746254, 37.314159, 32.266323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315168, 0.895660, -0.313788,
		0.846472, -0.115791, 0.519689,
		0.429131, -0.429402, -0.794645,
		30.874992, 37.185337, 32.027931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228800, 37.876690, 32.474865>,  <30.574602, 37.485920, 32.584183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228800, 37.876690, 32.474865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162975, 37.689648, 32.127472>,  <31.123480, 37.577423, 31.919037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.162975, 37.689648, 32.127472>,  <31.228800, 37.876690, 32.474865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162975, 37.689648, 32.127472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207587, 0.844349, -0.493947,
		0.964276, -0.261570, -0.041878,
		-0.164561, -0.467607, -0.868483,
		31.113607, 37.549366, 31.866926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818205, 37.919510, 32.171589>,  <31.228800, 37.876690, 32.474865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818205, 37.919510, 32.171589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561073, 37.840084, 31.875658>,  <31.406794, 37.792427, 31.698101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.561073, 37.840084, 31.875658>,  <31.818205, 37.919510, 32.171589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561073, 37.840084, 31.875658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352014, 0.781219, -0.515541,
		0.680334, -0.591834, -0.432294,
		-0.642831, -0.198567, -0.739824,
		31.368225, 37.780514, 31.653711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158039, 37.844856, 31.582977>,  <31.818205, 37.919510, 32.171589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158039, 37.844856, 31.582977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790041, 37.940731, 31.458935>,  <31.569242, 37.998257, 31.384508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.790041, 37.940731, 31.458935>,  <32.158039, 37.844856, 31.582977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790041, 37.940731, 31.458935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386486, 0.686320, -0.616111,
		0.065159, -0.686669, -0.724044,
		-0.919991, 0.239688, -0.310108,
		31.514044, 38.012638, 31.365902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368977, 37.804428, 30.869686>,  <32.158039, 37.844856, 31.582977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368977, 37.804428, 30.869686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.002628, 37.959759, 30.910454>,  <31.782820, 38.052956, 30.934914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.002628, 37.959759, 30.910454>,  <32.368977, 37.804428, 30.869686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002628, 37.959759, 30.910454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200346, 0.662059, -0.722177,
		-0.347913, -0.641001, -0.684159,
		-0.915870, 0.388323, 0.101917,
		31.727867, 38.076256, 30.941029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142658, 37.888046, 30.187294>,  <32.368977, 37.804428, 30.869686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142658, 37.888046, 30.187294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944033, 38.142971, 30.423008>,  <31.824858, 38.295925, 30.564436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944033, 38.142971, 30.423008>,  <32.142658, 37.888046, 30.187294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944033, 38.142971, 30.423008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192203, 0.742776, -0.641359,
		-0.846455, -0.205211, -0.491327,
		-0.496560, 0.637316, 0.589285,
		31.795065, 38.334167, 30.599792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591572, 38.200203, 29.824968>,  <32.142658, 37.888046, 30.187294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591572, 38.200203, 29.824968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710163, 38.436989, 30.124748>,  <31.781319, 38.579060, 30.304617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710163, 38.436989, 30.124748>,  <31.591572, 38.200203, 29.824968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710163, 38.436989, 30.124748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304779, 0.685055, -0.661672,
		-0.905102, 0.424589, 0.022686,
		0.296479, 0.591967, 0.749450,
		31.799107, 38.614578, 30.349583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351889, 38.820850, 29.612076>,  <31.591572, 38.200203, 29.824968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351889, 38.820850, 29.612076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.604300, 38.948528, 29.894896>,  <31.755745, 39.025135, 30.064587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.604300, 38.948528, 29.894896>,  <31.351889, 38.820850, 29.612076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604300, 38.948528, 29.894896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370065, 0.677180, -0.635987,
		-0.681805, 0.662979, 0.309194,
		0.631026, 0.319197, 0.707050,
		31.793608, 39.044289, 30.107010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198444, 39.551529, 29.641302>,  <31.351889, 38.820850, 29.612076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198444, 39.551529, 29.641302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557484, 39.488831, 29.806105>,  <31.772907, 39.451214, 29.904985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557484, 39.488831, 29.806105>,  <31.198444, 39.551529, 29.641302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557484, 39.488831, 29.806105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328779, 0.860635, -0.388861,
		-0.293636, 0.484500, 0.824037,
		0.897598, -0.156742, 0.412007,
		31.826763, 39.441807, 29.929707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480572, 40.274582, 29.671741>,  <31.198444, 39.551529, 29.641302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480572, 40.274582, 29.671741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789808, 40.029690, 29.738075>,  <31.975349, 39.882755, 29.777876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789808, 40.029690, 29.738075>,  <31.480572, 40.274582, 29.671741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789808, 40.029690, 29.738075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620922, 0.677064, -0.395020,
		0.129562, 0.408358, 0.903580,
		0.773091, -0.612232, 0.165837,
		32.021736, 39.846020, 29.787827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972029, 40.642555, 30.108921>,  <31.480572, 40.274582, 29.671741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972029, 40.642555, 30.108921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163780, 40.364540, 29.894588>,  <32.278831, 40.197731, 29.765989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.163780, 40.364540, 29.894588>,  <31.972029, 40.642555, 30.108921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163780, 40.364540, 29.894588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556033, 0.712915, -0.427292,
		0.678988, -0.093105, 0.728222,
		0.479377, -0.695042, -0.535830,
		32.307594, 40.156029, 29.733839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485699, 40.886650, 29.810104>,  <31.972029, 40.642555, 30.108921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485699, 40.886650, 29.810104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525902, 40.579933, 29.556513>,  <32.550022, 40.395905, 29.404358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525902, 40.579933, 29.556513>,  <32.485699, 40.886650, 29.810104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525902, 40.579933, 29.556513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475792, 0.596665, -0.646230,
		0.873796, -0.236690, 0.424803,
		0.100509, -0.766791, -0.633979,
		32.556053, 40.349895, 29.366320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184940, 40.923306, 29.671240>,  <32.485699, 40.886650, 29.810104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184940, 40.923306, 29.671240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988754, 40.718540, 29.389137>,  <32.871044, 40.595680, 29.219875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988754, 40.718540, 29.389137>,  <33.184940, 40.923306, 29.671240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988754, 40.718540, 29.389137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488668, 0.508520, -0.708950,
		0.721560, -0.692352, 0.000745,
		-0.490464, -0.511914, -0.705258,
		32.841614, 40.564964, 29.177561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621094, 40.508457, 29.193867>,  <33.184940, 40.923306, 29.671240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621094, 40.508457, 29.193867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292358, 40.558319, 28.971500>,  <33.095116, 40.588238, 28.838081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292358, 40.558319, 28.971500>,  <33.621094, 40.508457, 29.193867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292358, 40.558319, 28.971500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565939, 0.290861, -0.771435,
		0.065531, -0.948610, -0.309589,
		-0.821839, 0.124656, -0.555916,
		33.045807, 40.595715, 28.804726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861744, 40.335274, 28.512520>,  <33.621094, 40.508457, 29.193867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861744, 40.335274, 28.512520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521687, 40.545303, 28.496733>,  <33.317654, 40.671322, 28.487261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521687, 40.545303, 28.496733>,  <33.861744, 40.335274, 28.512520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521687, 40.545303, 28.496733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314282, 0.445853, -0.838118,
		-0.422478, -0.724922, -0.544059,
		-0.850140, 0.525075, -0.039467,
		33.266644, 40.702827, 28.484892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696175, 40.213684, 27.925026>,  <33.861744, 40.335274, 28.512520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696175, 40.213684, 27.925026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490520, 40.545891, 28.010721>,  <33.367126, 40.745216, 28.062138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490520, 40.545891, 28.010721>,  <33.696175, 40.213684, 27.925026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490520, 40.545891, 28.010721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500902, 0.493500, -0.711024,
		-0.696245, -0.258253, -0.669737,
		-0.514140, 0.830520, 0.214237,
		33.336277, 40.795048, 28.074993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460812, 40.550735, 27.290096>,  <33.696175, 40.213684, 27.925026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460812, 40.550735, 27.290096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.440975, 40.842041, 27.563498>,  <33.429073, 41.016823, 27.727539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.440975, 40.842041, 27.563498>,  <33.460812, 40.550735, 27.290096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440975, 40.842041, 27.563498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302803, 0.663100, -0.684550,
		-0.951762, 0.173019, -0.253404,
		-0.049592, 0.728260, 0.683504,
		33.426098, 41.060520, 27.768549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058361, 41.130451, 26.918510>,  <33.460812, 40.550735, 27.290096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058361, 41.130451, 26.918510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261978, 41.288601, 27.224337>,  <33.384148, 41.383492, 27.407831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.261978, 41.288601, 27.224337>,  <33.058361, 41.130451, 26.918510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261978, 41.288601, 27.224337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363761, 0.706223, -0.607393,
		-0.780098, 0.587308, 0.215678,
		0.509043, 0.395371, 0.764563,
		33.414692, 41.407211, 27.453705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948502, 41.902237, 26.868755>,  <33.058361, 41.130451, 26.918510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948502, 41.902237, 26.868755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282043, 41.824512, 27.075415>,  <33.482170, 41.777878, 27.199411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282043, 41.824512, 27.075415>,  <32.948502, 41.902237, 26.868755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282043, 41.824512, 27.075415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516226, 0.605931, -0.605276,
		-0.195440, 0.771420, 0.605569,
		0.833855, -0.194316, 0.516650,
		33.532200, 41.766216, 27.230410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279526, 42.498692, 26.990202>,  <32.948502, 41.902237, 26.868755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279526, 42.498692, 26.990202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596386, 42.263882, 27.057003>,  <33.786503, 42.122993, 27.097084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596386, 42.263882, 27.057003>,  <33.279526, 42.498692, 26.990202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596386, 42.263882, 27.057003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591487, 0.670955, -0.447172,
		0.150449, 0.453010, 0.878719,
		0.792154, -0.587027, 0.167005,
		33.834034, 42.087772, 27.107105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786388, 42.931023, 27.323681>,  <33.279526, 42.498692, 26.990202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786388, 42.931023, 27.323681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979885, 42.614124, 27.174902>,  <34.095982, 42.423985, 27.085634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979885, 42.614124, 27.174902>,  <33.786388, 42.931023, 27.323681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979885, 42.614124, 27.174902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562117, 0.606976, -0.561786,
		0.670836, 0.062679, 0.738952,
		0.483739, -0.792244, -0.371949,
		34.125008, 42.376450, 27.063316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356819, 43.230957, 27.224329>,  <33.786388, 42.931023, 27.323681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356819, 43.230957, 27.224329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384350, 42.886219, 27.023338>,  <34.400867, 42.679375, 26.902744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384350, 42.886219, 27.023338>,  <34.356819, 43.230957, 27.224329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384350, 42.886219, 27.023338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675778, 0.410789, -0.612027,
		0.733886, -0.297440, 0.610690,
		0.068824, -0.861848, -0.502475,
		34.404995, 42.627666, 26.872595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172211, 42.910534, 27.133480>,  <34.356819, 43.230957, 27.224329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172211, 42.910534, 27.133480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955364, 42.785038, 26.821665>,  <34.825256, 42.709740, 26.634575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955364, 42.785038, 26.821665>,  <35.172211, 42.910534, 27.133480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955364, 42.785038, 26.821665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687444, 0.367916, -0.626145,
		0.483254, -0.875330, 0.016229,
		-0.542113, -0.313744, -0.779538,
		34.792728, 42.690914, 26.587803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654697, 42.655098, 26.669350>,  <35.172211, 42.910534, 27.133480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654697, 42.655098, 26.669350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342903, 42.685547, 26.420639>,  <35.155827, 42.703815, 26.271414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342903, 42.685547, 26.420639>,  <35.654697, 42.655098, 26.669350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342903, 42.685547, 26.420639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604554, 0.351373, -0.714879,
		0.164054, -0.933136, -0.319913,
		-0.779488, 0.076125, -0.621775,
		35.109058, 42.708385, 26.234106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208508, 42.223793, 26.724327>,  <35.654697, 42.655098, 26.669350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208508, 42.223793, 26.724327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601315, 42.148323, 26.727177>,  <36.836998, 42.103039, 26.728886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.601315, 42.148323, 26.727177>,  <36.208508, 42.223793, 26.724327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601315, 42.148323, 26.727177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177345, -0.908765, 0.377749,
		-0.064801, -0.372218, -0.925881,
		0.982013, -0.188679, 0.007122,
		36.895920, 42.091721, 26.729313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242302, 41.616302, 26.356207>,  <36.208508, 42.223793, 26.724327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242302, 41.616302, 26.356207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545876, 41.666866, 26.611717>,  <36.728020, 41.697205, 26.765024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545876, 41.666866, 26.611717>,  <36.242302, 41.616302, 26.356207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545876, 41.666866, 26.611717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252050, -0.847479, 0.467172,
		0.600404, -0.515558, -0.611322,
		0.758937, 0.126409, 0.638776,
		36.773556, 41.704788, 26.803350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554104, 40.913906, 26.484749>,  <36.242302, 41.616302, 26.356207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554104, 40.913906, 26.484749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631519, 41.142700, 26.803591>,  <36.677967, 41.279976, 26.994896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.631519, 41.142700, 26.803591>,  <36.554104, 40.913906, 26.484749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631519, 41.142700, 26.803591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322639, -0.730173, 0.602289,
		0.926524, -0.373743, 0.043228,
		0.193537, 0.571982, 0.797107,
		36.689579, 41.314293, 27.042723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893539, 40.475639, 26.941103>,  <36.554104, 40.913906, 26.484749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893539, 40.475639, 26.941103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761318, 40.779640, 27.164934>,  <36.681984, 40.962040, 27.299232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761318, 40.779640, 27.164934>,  <36.893539, 40.475639, 26.941103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761318, 40.779640, 27.164934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357792, -0.649561, 0.670862,
		0.873338, 0.021544, 0.486639,
		-0.330554, 0.760004, 0.559578,
		36.662151, 41.007641, 27.332808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321144, 40.442982, 27.563519>,  <36.893539, 40.475639, 26.941103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321144, 40.442982, 27.563519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988640, 40.648502, 27.648388>,  <36.789139, 40.771816, 27.699310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988640, 40.648502, 27.648388>,  <37.321144, 40.442982, 27.563519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988640, 40.648502, 27.648388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202436, -0.635278, 0.745280,
		0.517715, 0.576568, 0.632092,
		-0.831259, 0.513801, 0.212175,
		36.739262, 40.802643, 27.712040>
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
