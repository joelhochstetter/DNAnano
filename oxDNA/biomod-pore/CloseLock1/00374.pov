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
	<24.518673, 35.136749, 35.250576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443203, 35.003284, 34.881130>,  <24.397921, 34.923206, 34.659462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443203, 35.003284, 34.881130>,  <24.518673, 35.136749, 35.250576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.443203, 35.003284, 34.881130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202103, -0.933571, 0.295974,
		-0.961018, -0.130823, 0.243577,
		-0.188677, -0.333664, -0.923618,
		24.386600, 34.903187, 34.604046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.969059, 34.666321, 35.294693>,  <24.518673, 35.136749, 35.250576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.969059, 34.666321, 35.294693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.250690, 34.546299, 35.037247>,  <24.419668, 34.474285, 34.882778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.250690, 34.546299, 35.037247>,  <23.969059, 34.666321, 35.294693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.250690, 34.546299, 35.037247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004559, -0.908235, 0.418437,
		-0.710109, -0.291678, -0.640835,
		0.704077, -0.300057, -0.643616,
		24.461914, 34.456284, 34.844162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.857840, 33.966419, 34.937244>,  <23.969059, 34.666321, 35.294693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.857840, 33.966419, 34.937244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254412, 34.012909, 34.913395>,  <24.492355, 34.040802, 34.899086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254412, 34.012909, 34.913395>,  <23.857840, 33.966419, 34.937244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254412, 34.012909, 34.913395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128911, -0.944291, 0.302814,
		-0.021108, -0.307906, -0.951183,
		0.991432, 0.116226, -0.059625,
		24.551842, 34.047775, 34.895508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.043398, 33.430180, 34.530212>,  <23.857840, 33.966419, 34.937244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.043398, 33.430180, 34.530212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312199, 33.560204, 34.796371>,  <24.473478, 33.638218, 34.956066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.312199, 33.560204, 34.796371>,  <24.043398, 33.430180, 34.530212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312199, 33.560204, 34.796371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065940, -0.921210, 0.383438,
		0.737608, -0.213795, -0.640489,
		0.672001, 0.325061, 0.665394,
		24.513800, 33.657722, 34.995991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477749, 32.933372, 34.607864>,  <24.043398, 33.430180, 34.530212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477749, 32.933372, 34.607864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.579491, 33.147549, 34.930008>,  <24.640535, 33.276054, 35.123295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.579491, 33.147549, 34.930008>,  <24.477749, 32.933372, 34.607864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579491, 33.147549, 34.930008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158973, -0.844569, 0.511304,
		0.953956, -0.002021, -0.299940,
		0.254353, 0.535444, 0.805360,
		24.655796, 33.308182, 35.171616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.032001, 32.590897, 34.823887>,  <24.477749, 32.933372, 34.607864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.032001, 32.590897, 34.823887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941202, 32.804790, 35.149471>,  <24.886723, 32.933128, 35.344822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941202, 32.804790, 35.149471>,  <25.032001, 32.590897, 34.823887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941202, 32.804790, 35.149471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170166, -0.801142, 0.573773,
		0.958913, 0.268754, 0.090865,
		-0.227000, 0.534737, 0.813958,
		24.873102, 32.965210, 35.393658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590853, 32.370815, 35.259727>,  <25.032001, 32.590897, 34.823887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590853, 32.370815, 35.259727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279793, 32.501835, 35.474380>,  <25.093157, 32.580448, 35.603172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279793, 32.501835, 35.474380>,  <25.590853, 32.370815, 35.259727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279793, 32.501835, 35.474380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084232, -0.791585, 0.605226,
		0.623032, 0.515854, 0.587984,
		-0.777647, 0.327548, 0.536634,
		25.046499, 32.600098, 35.635372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805685, 32.283092, 36.042824>,  <25.590853, 32.370815, 35.259727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805685, 32.283092, 36.042824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407778, 32.323067, 36.034325>,  <25.169033, 32.347054, 36.029224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407778, 32.323067, 36.034325>,  <25.805685, 32.283092, 36.042824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407778, 32.323067, 36.034325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090058, -0.759426, 0.644330,
		0.048259, 0.642872, 0.764452,
		-0.994767, 0.099939, -0.021246,
		25.109348, 32.353050, 36.027950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.534107, 32.359562, 36.698891>,  <25.805685, 32.283092, 36.042824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.534107, 32.359562, 36.698891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253485, 32.211212, 36.455490>,  <25.085112, 32.122204, 36.309448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253485, 32.211212, 36.455490>,  <25.534107, 32.359562, 36.698891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253485, 32.211212, 36.455490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073925, -0.887170, 0.455483,
		-0.708769, 0.274564, 0.649816,
		-0.701556, -0.370870, -0.608502,
		25.043018, 32.099953, 36.272938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204554, 31.857826, 37.085823>,  <25.534107, 32.359562, 36.698891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204554, 31.857826, 37.085823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065136, 31.779432, 36.719193>,  <24.981485, 31.732397, 36.499214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065136, 31.779432, 36.719193>,  <25.204554, 31.857826, 37.085823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.065136, 31.779432, 36.719193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223102, -0.967136, 0.121957,
		-0.910354, -0.161982, 0.380812,
		-0.348542, -0.195983, -0.916574,
		24.960573, 31.720636, 36.444221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810667, 31.194387, 37.146130>,  <25.204554, 31.857826, 37.085823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810667, 31.194387, 37.146130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894913, 31.232933, 36.757008>,  <24.945459, 31.256062, 36.523533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894913, 31.232933, 36.757008>,  <24.810667, 31.194387, 37.146130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894913, 31.232933, 36.757008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119615, -0.990192, -0.072190,
		-0.970224, -0.101158, -0.220075,
		0.210614, 0.096365, -0.972808,
		24.958097, 31.261843, 36.465164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.397346, 30.737888, 36.952980>,  <24.810667, 31.194387, 37.146130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.397346, 30.737888, 36.952980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661880, 30.768404, 36.654499>,  <24.820601, 30.786713, 36.475410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.661880, 30.768404, 36.654499>,  <24.397346, 30.737888, 36.952980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.661880, 30.768404, 36.654499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141124, -0.964394, -0.223669,
		-0.736695, 0.253227, -0.627022,
		0.661335, 0.076288, -0.746201,
		24.860281, 30.791290, 36.430637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.091873, 30.312899, 36.427250>,  <24.397346, 30.737888, 36.952980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.091873, 30.312899, 36.427250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480968, 30.348970, 36.341785>,  <24.714426, 30.370613, 36.290508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480968, 30.348970, 36.341785>,  <24.091873, 30.312899, 36.427250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480968, 30.348970, 36.341785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056160, -0.985475, -0.160266,
		-0.225008, 0.143898, -0.963673,
		0.972737, 0.090181, -0.213658,
		24.772789, 30.376024, 36.277687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167818, 30.078178, 35.696091>,  <24.091873, 30.312899, 36.427250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167818, 30.078178, 35.696091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533108, 30.050714, 35.856743>,  <24.752281, 30.034237, 35.953133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.533108, 30.050714, 35.856743>,  <24.167818, 30.078178, 35.696091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.533108, 30.050714, 35.856743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148327, -0.862049, -0.484634,
		0.379499, 0.502153, -0.777061,
		0.913225, -0.068659, 0.401629,
		24.807076, 30.030117, 35.977230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.726410, 29.984686, 35.175228>,  <24.167818, 30.078178, 35.696091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.726410, 29.984686, 35.175228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855558, 29.848869, 35.528603>,  <24.933046, 29.767380, 35.740627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.855558, 29.848869, 35.528603>,  <24.726410, 29.984686, 35.175228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855558, 29.848869, 35.528603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348536, -0.825177, -0.444528,
		0.879931, 0.451435, -0.148082,
		0.322869, -0.339542, 0.883440,
		24.952419, 29.747007, 35.793636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385992, 29.737249, 35.058979>,  <24.726410, 29.984686, 35.175228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385992, 29.737249, 35.058979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292501, 29.572763, 35.411404>,  <25.236406, 29.474072, 35.622860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292501, 29.572763, 35.411404>,  <25.385992, 29.737249, 35.058979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292501, 29.572763, 35.411404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513897, -0.821497, -0.247086,
		0.825397, 0.395026, 0.403329,
		-0.233728, -0.411213, 0.881064,
		25.222383, 29.449400, 35.675724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044380, 29.415346, 35.244221>,  <25.385992, 29.737249, 35.058979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044380, 29.415346, 35.244221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766657, 29.253305, 35.482155>,  <25.600023, 29.156082, 35.624916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766657, 29.253305, 35.482155>,  <26.044380, 29.415346, 35.244221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766657, 29.253305, 35.482155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438270, -0.893594, -0.097002,
		0.570836, 0.193349, 0.797974,
		-0.694310, -0.405100, 0.594835,
		25.558365, 29.131775, 35.660606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485357, 28.945059, 35.609764>,  <26.044380, 29.415346, 35.244221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485357, 28.945059, 35.609764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107924, 28.819403, 35.651649>,  <25.881464, 28.744009, 35.676781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107924, 28.819403, 35.651649>,  <26.485357, 28.945059, 35.609764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107924, 28.819403, 35.651649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292081, -0.938574, -0.183762,
		0.156005, -0.142812, 0.977378,
		-0.943584, -0.314141, 0.104710,
		25.824848, 28.725161, 35.683064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607994, 28.327242, 35.832619>,  <26.485357, 28.945059, 35.609764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607994, 28.327242, 35.832619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225157, 28.327259, 35.716705>,  <25.995455, 28.327269, 35.647160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225157, 28.327259, 35.716705>,  <26.607994, 28.327242, 35.832619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225157, 28.327259, 35.716705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123924, -0.903885, -0.409432,
		-0.261947, -0.427776, 0.865096,
		-0.957093, 0.000043, -0.289781,
		25.938028, 28.327272, 35.629772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325195, 27.632538, 36.112961>,  <26.607994, 28.327242, 35.832619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325195, 27.632538, 36.112961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080734, 27.762701, 35.824348>,  <25.934057, 27.840799, 35.651180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.080734, 27.762701, 35.824348>,  <26.325195, 27.632538, 36.112961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080734, 27.762701, 35.824348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020135, -0.904893, -0.425162,
		-0.791256, -0.274367, 0.546477,
		-0.611153, 0.325408, -0.721526,
		25.897388, 27.860323, 35.607891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880600, 27.135744, 35.904072>,  <26.325195, 27.632538, 36.112961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880600, 27.135744, 35.904072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853235, 27.370510, 35.581371>,  <25.836817, 27.511370, 35.387749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853235, 27.370510, 35.581371>,  <25.880600, 27.135744, 35.904072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853235, 27.370510, 35.581371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059371, -0.804819, -0.590543,
		-0.995889, -0.088297, 0.020213,
		-0.068411, 0.586916, -0.806753,
		25.832712, 27.546585, 35.339344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367939, 26.812319, 35.449749>,  <25.880600, 27.135744, 35.904072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367939, 26.812319, 35.449749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581524, 27.043932, 35.203300>,  <25.709675, 27.182899, 35.055431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.581524, 27.043932, 35.203300>,  <25.367939, 26.812319, 35.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581524, 27.043932, 35.203300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208602, -0.796392, -0.567667,
		-0.819370, 0.174590, -0.546032,
		0.533964, 0.579033, -0.616120,
		25.741713, 27.217642, 35.018463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013744, 26.569098, 34.816753>,  <25.367939, 26.812319, 35.449749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013744, 26.569098, 34.816753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376352, 26.724314, 34.750244>,  <25.593918, 26.817444, 34.710339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376352, 26.724314, 34.750244>,  <25.013744, 26.569098, 34.816753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376352, 26.724314, 34.750244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272531, -0.838706, -0.471485,
		-0.322410, 0.382096, -0.866057,
		0.906520, 0.388039, -0.166274,
		25.648308, 26.840725, 34.700363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066776, 26.555647, 34.142731>,  <25.013744, 26.569098, 34.816753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066776, 26.555647, 34.142731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444738, 26.551109, 34.273586>,  <25.671516, 26.548388, 34.352100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444738, 26.551109, 34.273586>,  <25.066776, 26.555647, 34.142731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444738, 26.551109, 34.273586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189253, -0.796504, -0.574252,
		0.267084, 0.604528, -0.750475,
		0.944907, -0.011344, 0.327142,
		25.728210, 26.547707, 34.371727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459803, 26.324026, 33.590271>,  <25.066776, 26.555647, 34.142731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459803, 26.324026, 33.590271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663273, 26.251343, 33.926899>,  <25.785355, 26.207733, 34.128876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.663273, 26.251343, 33.926899>,  <25.459803, 26.324026, 33.590271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663273, 26.251343, 33.926899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363000, -0.841083, -0.401012,
		0.780693, 0.509473, -0.361877,
		0.508674, -0.181706, 0.841566,
		25.815874, 26.196831, 34.179367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206743, 26.235292, 33.386658>,  <25.459803, 26.324026, 33.590271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206743, 26.235292, 33.386658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150530, 26.068058, 33.745647>,  <26.116802, 25.967716, 33.961040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150530, 26.068058, 33.745647>,  <26.206743, 26.235292, 33.386658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150530, 26.068058, 33.745647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565154, -0.778153, -0.274006,
		0.812928, 0.468702, 0.345640,
		-0.140534, -0.418087, 0.897471,
		26.108370, 25.942633, 34.014889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832481, 26.101589, 33.925407>,  <26.206743, 26.235292, 33.386658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832481, 26.101589, 33.925407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533661, 25.837814, 33.891815>,  <26.354368, 25.679548, 33.871658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533661, 25.837814, 33.891815>,  <26.832481, 26.101589, 33.925407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533661, 25.837814, 33.891815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641590, -0.682169, -0.350725,
		0.173994, -0.315891, 0.932706,
		-0.747053, -0.659439, -0.083979,
		26.309546, 25.639982, 33.866623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517286, 25.662529, 34.094498>,  <26.832481, 26.101589, 33.925407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517286, 25.662529, 34.094498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911196, 25.598211, 34.120918>,  <28.147541, 25.559622, 34.136768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911196, 25.598211, 34.120918>,  <27.517286, 25.662529, 34.094498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911196, 25.598211, 34.120918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061702, 0.678559, 0.731950,
		-0.162511, -0.716731, 0.678149,
		0.984775, -0.160793, 0.066050,
		28.206629, 25.549973, 34.140732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771437, 25.342558, 34.679401>,  <27.517286, 25.662529, 34.094498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771437, 25.342558, 34.679401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013479, 25.631863, 34.546295>,  <28.158705, 25.805447, 34.466431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013479, 25.631863, 34.546295>,  <27.771437, 25.342558, 34.679401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013479, 25.631863, 34.546295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308447, 0.598305, 0.739522,
		0.733966, -0.344848, 0.585127,
		0.605107, 0.723264, -0.332768,
		28.195011, 25.848843, 34.446465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111654, 25.738342, 35.255325>,  <27.771437, 25.342558, 34.679401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111654, 25.738342, 35.255325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131784, 26.010296, 34.962688>,  <28.143862, 26.173468, 34.787106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.131784, 26.010296, 34.962688>,  <28.111654, 25.738342, 35.255325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131784, 26.010296, 34.962688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271690, 0.714214, 0.645046,
		0.961068, 0.166304, 0.220659,
		0.050324, 0.679884, -0.731591,
		28.146881, 26.214260, 34.743210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581039, 26.281952, 35.458447>,  <28.111654, 25.738342, 35.255325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581039, 26.281952, 35.458447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324759, 26.440203, 35.195240>,  <28.170990, 26.535152, 35.037315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324759, 26.440203, 35.195240>,  <28.581039, 26.281952, 35.458447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324759, 26.440203, 35.195240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110106, 0.800819, 0.588699,
		0.759854, 0.449631, -0.469525,
		-0.640702, 0.395627, -0.658012,
		28.132547, 26.558891, 34.997837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827923, 26.908476, 35.182056>,  <28.581039, 26.281952, 35.458447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827923, 26.908476, 35.182056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428650, 26.913284, 35.158424>,  <28.189087, 26.916168, 35.144245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428650, 26.913284, 35.158424>,  <28.827923, 26.908476, 35.182056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428650, 26.913284, 35.158424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022843, 0.831486, 0.555075,
		0.055799, 0.555415, -0.829699,
		-0.998181, 0.012020, -0.059083,
		28.129196, 26.916891, 35.140701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537743, 27.576908, 34.906021>,  <28.827923, 26.908476, 35.182056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537743, 27.576908, 34.906021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272739, 27.415970, 35.158749>,  <28.113737, 27.319407, 35.310387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272739, 27.415970, 35.158749>,  <28.537743, 27.576908, 34.906021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272739, 27.415970, 35.158749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030805, 0.828144, 0.559668,
		-0.748420, 0.390249, -0.536259,
		-0.662509, -0.402347, 0.631821,
		28.073986, 27.295265, 35.348293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048599, 27.844799, 34.359356>,  <28.537743, 27.576908, 34.906021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048599, 27.844799, 34.359356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256048, 27.967600, 34.040161>,  <29.380518, 28.041281, 33.848644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256048, 27.967600, 34.040161>,  <29.048599, 27.844799, 34.359356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256048, 27.967600, 34.040161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318769, 0.935449, 0.152715,
		0.793356, 0.175171, 0.583010,
		0.518625, 0.307003, -0.797983,
		29.411636, 28.059700, 33.800766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639957, 28.318789, 34.368759>,  <29.048599, 27.844799, 34.359356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639957, 28.318789, 34.368759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440268, 28.395464, 34.030758>,  <29.320454, 28.441469, 33.827957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440268, 28.395464, 34.030758>,  <29.639957, 28.318789, 34.368759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440268, 28.395464, 34.030758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330757, 0.859214, 0.390321,
		0.800859, 0.474349, -0.365538,
		-0.499224, 0.191688, -0.845004,
		29.290501, 28.452971, 33.777256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921246, 29.026558, 34.095009>,  <29.639957, 28.318789, 34.368759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921246, 29.026558, 34.095009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551029, 28.914867, 33.992714>,  <29.328899, 28.847853, 33.931335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551029, 28.914867, 33.992714>,  <29.921246, 29.026558, 34.095009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551029, 28.914867, 33.992714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331854, 0.923421, 0.192786,
		0.182327, 0.263301, -0.947327,
		-0.925543, -0.279225, -0.255742,
		29.273367, 28.831100, 33.915993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636744, 29.594761, 33.624241>,  <29.921246, 29.026558, 34.095009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636744, 29.594761, 33.624241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330282, 29.391975, 33.782227>,  <29.146404, 29.270304, 33.877018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330282, 29.391975, 33.782227>,  <29.636744, 29.594761, 33.624241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330282, 29.391975, 33.782227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404518, 0.857981, 0.316597,
		-0.499372, 0.082793, -0.862423,
		-0.766155, -0.506965, 0.394961,
		29.100435, 29.239885, 33.900715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125891, 29.987965, 33.451477>,  <29.636744, 29.594761, 33.624241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125891, 29.987965, 33.451477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978622, 29.750187, 33.737438>,  <28.890261, 29.607521, 33.909016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978622, 29.750187, 33.737438>,  <29.125891, 29.987965, 33.451477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978622, 29.750187, 33.737438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506379, 0.773069, 0.382026,
		-0.779763, -0.221360, -0.585637,
		-0.368172, -0.594444, 0.714903,
		28.868172, 29.571854, 33.951908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331409, 29.975489, 33.409554>,  <29.125891, 29.987965, 33.451477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331409, 29.975489, 33.409554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455706, 29.865776, 33.773579>,  <28.530283, 29.799948, 33.991993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455706, 29.865776, 33.773579>,  <28.331409, 29.975489, 33.409554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455706, 29.865776, 33.773579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504745, 0.763685, 0.402513,
		-0.805402, -0.584426, 0.098865,
		0.310741, -0.274283, 0.910060,
		28.548927, 29.783491, 34.046597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700871, 30.270658, 33.847874>,  <28.331409, 29.975489, 33.409554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700871, 30.270658, 33.847874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987278, 30.170929, 34.108688>,  <28.159122, 30.111092, 34.265179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987278, 30.170929, 34.108688>,  <27.700871, 30.270658, 33.847874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987278, 30.170929, 34.108688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412176, 0.602857, 0.683136,
		-0.563409, -0.757893, 0.328891,
		0.716017, -0.249324, 0.652040,
		28.202084, 30.096132, 34.304302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388765, 30.237423, 34.530659>,  <27.700871, 30.270658, 33.847874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388765, 30.237423, 34.530659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773798, 30.269060, 34.634338>,  <28.004818, 30.288042, 34.696545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773798, 30.269060, 34.634338>,  <27.388765, 30.237423, 34.530659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773798, 30.269060, 34.634338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243566, 0.671808, 0.699535,
		-0.118803, -0.736490, 0.665934,
		0.962581, 0.079092, 0.259197,
		28.062572, 30.292788, 34.712097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483709, 30.051495, 35.156548>,  <27.388765, 30.237423, 34.530659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483709, 30.051495, 35.156548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796608, 30.293703, 35.097992>,  <27.984348, 30.439028, 35.062859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796608, 30.293703, 35.097992>,  <27.483709, 30.051495, 35.156548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796608, 30.293703, 35.097992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301558, 0.573681, 0.761547,
		0.545112, -0.551576, 0.631361,
		0.782251, 0.605520, -0.146388,
		28.031282, 30.475361, 35.054073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715277, 30.237007, 35.772861>,  <27.483709, 30.051495, 35.156548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715277, 30.237007, 35.772861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849318, 30.523544, 35.528057>,  <27.929741, 30.695467, 35.381176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.849318, 30.523544, 35.528057>,  <27.715277, 30.237007, 35.772861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849318, 30.523544, 35.528057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347847, 0.697741, 0.626226,
		0.875620, 0.003038, 0.482991,
		0.335101, 0.716343, -0.612013,
		27.949848, 30.738447, 35.344452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017784, 30.723360, 36.234894>,  <27.715277, 30.237007, 35.772861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017784, 30.723360, 36.234894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974878, 30.928898, 35.894432>,  <27.949135, 31.052219, 35.690155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974878, 30.928898, 35.894432>,  <28.017784, 30.723360, 36.234894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974878, 30.928898, 35.894432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376580, 0.771309, 0.513099,
		0.920153, 0.375563, 0.110770,
		-0.107263, 0.513843, -0.851152,
		27.942699, 31.083052, 35.639088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331980, 31.338491, 36.316151>,  <28.017784, 30.723360, 36.234894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331980, 31.338491, 36.316151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112268, 31.442369, 35.998447>,  <27.980442, 31.504696, 35.807823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.112268, 31.442369, 35.998447>,  <28.331980, 31.338491, 36.316151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112268, 31.442369, 35.998447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132744, 0.911299, 0.389761,
		0.825028, 0.319521, -0.466084,
		-0.549279, 0.259694, -0.794262,
		27.947485, 31.520277, 35.760170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642834, 31.967686, 36.151146>,  <28.331980, 31.338491, 36.316151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642834, 31.967686, 36.151146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263119, 31.930782, 36.030914>,  <28.035290, 31.908640, 35.958775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263119, 31.930782, 36.030914>,  <28.642834, 31.967686, 36.151146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263119, 31.930782, 36.030914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248493, 0.805858, 0.537442,
		0.192635, 0.584877, -0.787915,
		-0.949285, -0.092261, -0.300575,
		27.978333, 31.903105, 35.940742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464596, 32.660168, 36.055729>,  <28.642834, 31.967686, 36.151146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464596, 32.660168, 36.055729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120388, 32.458149, 36.082367>,  <27.913864, 32.336937, 36.098351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120388, 32.458149, 36.082367>,  <28.464596, 32.660168, 36.055729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120388, 32.458149, 36.082367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413761, 0.769198, 0.486967,
		-0.297168, 0.391488, -0.870878,
		-0.860519, -0.505046, 0.066598,
		27.862232, 32.306637, 36.102345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885910, 33.025078, 35.637989>,  <28.464596, 32.660168, 36.055729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885910, 33.025078, 35.637989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691843, 32.813774, 35.916718>,  <27.575403, 32.686993, 36.083954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691843, 32.813774, 35.916718>,  <27.885910, 33.025078, 35.637989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691843, 32.813774, 35.916718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319059, 0.848895, 0.421401,
		-0.814135, -0.017877, -0.580401,
		-0.485166, -0.528259, 0.696819,
		27.546293, 32.655296, 36.125763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277834, 33.406727, 35.747364>,  <27.885910, 33.025078, 35.637989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277834, 33.406727, 35.747364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254156, 33.160053, 36.061359>,  <27.239950, 33.012051, 36.249756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254156, 33.160053, 36.061359>,  <27.277834, 33.406727, 35.747364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254156, 33.160053, 36.061359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583256, 0.659541, 0.474150,
		-0.810129, -0.429779, -0.398725,
		-0.059195, -0.616681, 0.784985,
		27.236397, 32.975048, 36.296856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587746, 33.155910, 35.816788>,  <27.277834, 33.406727, 35.747364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587746, 33.155910, 35.816788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749456, 33.146553, 36.182522>,  <26.846483, 33.140938, 36.401962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749456, 33.146553, 36.182522>,  <26.587746, 33.155910, 35.816788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749456, 33.146553, 36.182522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686606, 0.652679, 0.320285,
		-0.604263, -0.757273, 0.247797,
		0.404275, -0.023397, 0.914338,
		26.870739, 33.139534, 36.456821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129290, 33.032513, 36.289139>,  <26.587746, 33.155910, 35.816788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129290, 33.032513, 36.289139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395664, 33.194309, 36.539871>,  <26.555489, 33.291386, 36.690311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395664, 33.194309, 36.539871>,  <26.129290, 33.032513, 36.289139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395664, 33.194309, 36.539871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704058, 0.618567, 0.348822,
		-0.246643, -0.673619, 0.696710,
		0.665935, 0.404490, 0.626832,
		26.595446, 33.315655, 36.727921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833750, 33.112465, 37.023251>,  <26.129290, 33.032513, 36.289139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833750, 33.112465, 37.023251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115198, 33.395405, 36.996201>,  <26.284067, 33.565170, 36.979969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115198, 33.395405, 36.996201>,  <25.833750, 33.112465, 37.023251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115198, 33.395405, 36.996201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611793, 0.651461, 0.448674,
		0.361426, -0.274322, 0.891133,
		0.703620, 0.707352, -0.067627,
		26.326284, 33.607609, 36.975914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606167, 33.672382, 37.526463>,  <25.833750, 33.112465, 37.023251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606167, 33.672382, 37.526463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896091, 33.880825, 37.346199>,  <26.070047, 34.005890, 37.238041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896091, 33.880825, 37.346199>,  <25.606167, 33.672382, 37.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896091, 33.880825, 37.346199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516058, 0.844024, 0.145971,
		0.456430, 0.126763, 0.880683,
		0.724814, 0.521109, -0.450655,
		26.113535, 34.037159, 37.211002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916294, 34.176395, 38.041222>,  <25.606167, 33.672382, 37.526463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916294, 34.176395, 38.041222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978811, 34.305397, 37.667793>,  <26.016321, 34.382797, 37.443737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978811, 34.305397, 37.667793>,  <25.916294, 34.176395, 38.041222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978811, 34.305397, 37.667793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215909, 0.933487, 0.286331,
		0.963824, 0.156817, 0.215527,
		0.156290, 0.322507, -0.933575,
		26.025698, 34.402149, 37.387722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318050, 34.852249, 38.131454>,  <25.916294, 34.176395, 38.041222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318050, 34.852249, 38.131454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208542, 34.858925, 37.746796>,  <26.142836, 34.862930, 37.515999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208542, 34.858925, 37.746796>,  <26.318050, 34.852249, 38.131454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208542, 34.858925, 37.746796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153441, 0.986285, 0.060803,
		0.949476, 0.164203, -0.267458,
		-0.273773, 0.016692, -0.961650,
		26.126410, 34.863934, 37.458302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756683, 35.284367, 37.751266>,  <26.318050, 34.852249, 38.131454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756683, 35.284367, 37.751266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386398, 35.275539, 37.600235>,  <26.164227, 35.270245, 37.509617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386398, 35.275539, 37.600235>,  <26.756683, 35.284367, 37.751266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386398, 35.275539, 37.600235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048886, 0.996904, 0.061592,
		0.375053, 0.075474, -0.923926,
		-0.925713, -0.022067, -0.377581,
		26.108685, 35.268921, 37.486961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022430, 35.386791, 38.468716>,  <26.756683, 35.284367, 37.751266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022430, 35.386791, 38.468716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156214, 35.018234, 38.547886>,  <27.236483, 34.797100, 38.595387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156214, 35.018234, 38.547886>,  <27.022430, 35.386791, 38.468716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156214, 35.018234, 38.547886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507609, -0.353080, -0.785919,
		0.794023, 0.162388, -0.585797,
		0.334457, -0.921393, 0.197924,
		27.256550, 34.741817, 38.607262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411558, 35.263344, 39.241615>,  <27.022430, 35.386791, 38.468716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411558, 35.263344, 39.241615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492491, 35.642757, 39.144169>,  <27.541050, 35.870403, 39.085701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492491, 35.642757, 39.144169>,  <27.411558, 35.263344, 39.241615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492491, 35.642757, 39.144169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976930, -0.178138, 0.117792,
		0.068331, -0.261832, -0.962691,
		0.202333, 0.948531, -0.243620,
		27.553190, 35.927315, 39.071083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983290, 35.269337, 38.824303>,  <27.411558, 35.263344, 39.241615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983290, 35.269337, 38.824303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958456, 35.626560, 39.002552>,  <27.943556, 35.840897, 39.109501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958456, 35.626560, 39.002552>,  <27.983290, 35.269337, 38.824303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958456, 35.626560, 39.002552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851005, -0.185915, 0.491147,
		0.521474, 0.409723, -0.748459,
		-0.062084, 0.893063, 0.445627,
		27.939831, 35.894478, 39.136242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600128, 35.582088, 38.765808>,  <27.983290, 35.269337, 38.824303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600128, 35.582088, 38.765808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407961, 35.708900, 39.092903>,  <28.292662, 35.784988, 39.289158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407961, 35.708900, 39.092903>,  <28.600128, 35.582088, 38.765808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407961, 35.708900, 39.092903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829506, -0.138539, 0.541043,
		0.284817, 0.938241, -0.196425,
		-0.480416, 0.317034, 0.817735,
		28.263836, 35.804012, 39.338223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204103, 35.452591, 38.547512>,  <28.600128, 35.582088, 38.765808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204103, 35.452591, 38.547512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001751, 35.469936, 38.202908>,  <28.880341, 35.480343, 37.996143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001751, 35.469936, 38.202908>,  <29.204103, 35.452591, 38.547512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001751, 35.469936, 38.202908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246181, 0.949941, 0.192370,
		0.826729, 0.309405, -0.469881,
		-0.505880, 0.043362, -0.861514,
		28.849987, 35.482944, 37.944454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333862, 36.087147, 38.126392>,  <29.204103, 35.452591, 38.547512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333862, 36.087147, 38.126392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962267, 35.963425, 38.045090>,  <28.739309, 35.889191, 37.996307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962267, 35.963425, 38.045090>,  <29.333862, 36.087147, 38.126392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962267, 35.963425, 38.045090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353863, 0.903203, 0.242911,
		0.108445, 0.297585, -0.948516,
		-0.928989, -0.309302, -0.203252,
		28.683571, 35.870636, 37.984116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869270, 36.667603, 38.129833>,  <29.333862, 36.087147, 38.126392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869270, 36.667603, 38.129833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592918, 36.378445, 38.133904>,  <28.427107, 36.204948, 38.136345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592918, 36.378445, 38.133904>,  <28.869270, 36.667603, 38.129833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592918, 36.378445, 38.133904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671470, 0.646820, 0.361598,
		-0.267981, 0.242988, -0.932279,
		-0.690880, -0.722898, 0.010176,
		28.385654, 36.161575, 38.136955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032993, 36.911388, 37.467567>,  <28.869270, 36.667603, 38.129833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032993, 36.911388, 37.467567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355989, 36.931564, 37.232479>,  <29.549788, 36.943668, 37.091427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355989, 36.931564, 37.232479>,  <29.032993, 36.911388, 37.467567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355989, 36.931564, 37.232479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296975, -0.826101, -0.478919,
		-0.509674, 0.561261, -0.652088,
		0.807489, 0.050439, -0.587722,
		29.598236, 36.946697, 37.056164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281252, 37.546833, 37.939747>,  <29.032993, 36.911388, 37.467567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281252, 37.546833, 37.939747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626144, 37.380196, 38.054993>,  <29.833080, 37.280212, 38.124142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626144, 37.380196, 38.054993>,  <29.281252, 37.546833, 37.939747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626144, 37.380196, 38.054993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018032, 0.543211, 0.839403,
		-0.506193, -0.728955, 0.460861,
		0.862232, -0.416589, 0.288114,
		29.884813, 37.255219, 38.141426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192936, 37.538773, 38.690018>,  <29.281252, 37.546833, 37.939747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192936, 37.538773, 38.690018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583002, 37.471104, 38.632843>,  <29.817041, 37.430504, 38.598537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583002, 37.471104, 38.632843>,  <29.192936, 37.538773, 38.690018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583002, 37.471104, 38.632843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208616, 0.484993, 0.849271,
		-0.074349, -0.858000, 0.508241,
		0.975167, -0.169169, -0.142934,
		29.875553, 37.420353, 38.589962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494432, 37.020927, 39.162056>,  <29.192936, 37.538773, 38.690018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494432, 37.020927, 39.162056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801317, 37.247425, 39.041557>,  <29.985449, 37.383324, 38.969257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801317, 37.247425, 39.041557>,  <29.494432, 37.020927, 39.162056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801317, 37.247425, 39.041557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199732, 0.235396, 0.951155,
		0.609500, -0.789907, 0.067501,
		0.767213, 0.566247, -0.301244,
		30.031481, 37.417297, 38.951183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114019, 36.776985, 39.508820>,  <29.494432, 37.020927, 39.162056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114019, 36.776985, 39.508820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137703, 37.161751, 39.402069>,  <30.151913, 37.392609, 39.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137703, 37.161751, 39.402069>,  <30.114019, 36.776985, 39.508820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137703, 37.161751, 39.402069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217274, 0.248516, 0.943945,
		0.974313, -0.113877, -0.194283,
		0.059211, 0.961911, -0.266875,
		30.155466, 37.450325, 39.322006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840240, 37.022278, 39.792809>,  <30.114019, 36.776985, 39.508820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840240, 37.022278, 39.792809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623732, 37.354832, 39.742493>,  <30.493826, 37.554363, 39.712303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623732, 37.354832, 39.742493>,  <30.840240, 37.022278, 39.792809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623732, 37.354832, 39.742493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235327, 0.293402, 0.926573,
		0.807244, 0.471928, -0.354458,
		-0.541274, 0.831384, -0.125789,
		30.461349, 37.604248, 39.704758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256996, 37.479675, 40.146526>,  <30.840240, 37.022278, 39.792809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256996, 37.479675, 40.146526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908976, 37.672245, 40.104115>,  <30.700163, 37.787785, 40.078667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908976, 37.672245, 40.104115>,  <31.256996, 37.479675, 40.146526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908976, 37.672245, 40.104115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077552, 0.346080, 0.934994,
		0.486819, 0.805272, -0.338443,
		-0.870053, 0.481420, -0.106028,
		30.647959, 37.816669, 40.072308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473335, 38.067841, 40.301971>,  <31.256996, 37.479675, 40.146526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473335, 38.067841, 40.301971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077394, 38.096958, 40.350796>,  <30.839830, 38.114429, 40.380089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077394, 38.096958, 40.350796>,  <31.473335, 38.067841, 40.301971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077394, 38.096958, 40.350796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138634, 0.305597, 0.942014,
		0.031271, 0.949374, -0.312587,
		-0.989850, 0.072793, 0.122059,
		30.780439, 38.118797, 40.387413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299429, 38.709808, 40.666958>,  <31.473335, 38.067841, 40.301971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299429, 38.709808, 40.666958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973269, 38.490768, 40.742058>,  <30.777573, 38.359344, 40.787117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973269, 38.490768, 40.742058>,  <31.299429, 38.709808, 40.666958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973269, 38.490768, 40.742058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077442, 0.218220, 0.972822,
		-0.573691, 0.807781, -0.135530,
		-0.815403, -0.547603, 0.187747,
		30.728647, 38.326488, 40.798382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047823, 39.110703, 41.225407>,  <31.299429, 38.709808, 40.666958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047823, 39.110703, 41.225407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880192, 38.747589, 41.218376>,  <30.779613, 38.529720, 41.214157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880192, 38.747589, 41.218376>,  <31.047823, 39.110703, 41.225407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880192, 38.747589, 41.218376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043876, 0.000909, 0.999037,
		-0.906889, 0.419448, -0.040210,
		-0.419080, -0.907779, -0.017579,
		30.754467, 38.475254, 41.213104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599825, 39.098648, 41.738831>,  <31.047823, 39.110703, 41.225407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599825, 39.098648, 41.738831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659616, 38.705215, 41.698380>,  <30.695492, 38.469158, 41.674110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659616, 38.705215, 41.698380>,  <30.599825, 39.098648, 41.738831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659616, 38.705215, 41.698380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082850, -0.114376, 0.989977,
		-0.985288, -0.139603, -0.098587,
		0.149480, -0.983580, -0.101127,
		30.704460, 38.410141, 41.668041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208353, 38.864929, 42.216686>,  <30.599825, 39.098648, 41.738831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208353, 38.864929, 42.216686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455610, 38.556778, 42.154179>,  <30.603966, 38.371887, 42.116676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455610, 38.556778, 42.154179>,  <30.208353, 38.864929, 42.216686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455610, 38.556778, 42.154179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015419, -0.210639, 0.977442,
		-0.785914, -0.601791, -0.142084,
		0.618144, -0.770376, -0.156265,
		30.641054, 38.325665, 42.107300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978153, 38.349781, 42.691273>,  <30.208353, 38.864929, 42.216686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978153, 38.349781, 42.691273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346626, 38.243992, 42.577099>,  <30.567711, 38.180519, 42.508595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346626, 38.243992, 42.577099>,  <29.978153, 38.349781, 42.691273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346626, 38.243992, 42.577099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209294, -0.281643, 0.936415,
		-0.328054, -0.922349, -0.204091,
		0.921182, -0.264480, -0.285436,
		30.622982, 38.164650, 42.491467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139698, 37.713486, 42.966496>,  <29.978153, 38.349781, 42.691273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139698, 37.713486, 42.966496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508497, 37.853664, 42.900642>,  <30.729776, 37.937771, 42.861130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508497, 37.853664, 42.900642>,  <30.139698, 37.713486, 42.966496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508497, 37.853664, 42.900642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263357, -0.255908, 0.930137,
		0.283835, -0.900942, -0.328240,
		0.921998, 0.350450, -0.164634,
		30.785097, 37.958797, 42.851254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396988, 37.205101, 43.220177>,  <30.139698, 37.713486, 42.966496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396988, 37.205101, 43.220177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644541, 37.519199, 43.212498>,  <30.793072, 37.707661, 43.207890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644541, 37.519199, 43.212498>,  <30.396988, 37.205101, 43.220177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644541, 37.519199, 43.212498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078141, -0.037231, 0.996247,
		0.781589, -0.618058, -0.084402,
		0.618881, 0.785251, -0.019196,
		30.830206, 37.754776, 43.206738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017252, 36.975082, 43.614235>,  <30.396988, 37.205101, 43.220177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017252, 36.975082, 43.614235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032902, 37.374763, 43.617249>,  <31.042292, 37.614574, 43.619057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032902, 37.374763, 43.617249>,  <31.017252, 36.975082, 43.614235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032902, 37.374763, 43.617249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214995, -0.015777, 0.976488,
		0.975831, -0.036587, -0.215441,
		0.039126, 0.999206, 0.007529,
		31.044640, 37.674526, 43.619507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565969, 37.159885, 44.096104>,  <31.017252, 36.975082, 43.614235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565969, 37.159885, 44.096104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371210, 37.507744, 44.063492>,  <31.254354, 37.716457, 44.043926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371210, 37.507744, 44.063492>,  <31.565969, 37.159885, 44.096104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371210, 37.507744, 44.063492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108948, 0.153078, 0.982190,
		0.866637, 0.469344, -0.169280,
		-0.486898, 0.869645, -0.081529,
		31.225142, 37.768639, 44.039032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047474, 37.745773, 44.382885>,  <31.565969, 37.159885, 44.096104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047474, 37.745773, 44.382885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656712, 37.827278, 44.408619>,  <31.422255, 37.876183, 44.424057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656712, 37.827278, 44.408619>,  <32.047474, 37.745773, 44.382885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656712, 37.827278, 44.408619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085819, 0.098435, 0.991436,
		0.195688, 0.974059, -0.113648,
		-0.976904, 0.203765, 0.064331,
		31.363640, 37.888409, 44.427917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970148, 38.334896, 44.761299>,  <32.047474, 37.745773, 44.382885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970148, 38.334896, 44.761299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614922, 38.153538, 44.791676>,  <31.401785, 38.044724, 44.809902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614922, 38.153538, 44.791676>,  <31.970148, 38.334896, 44.761299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614922, 38.153538, 44.791676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019254, 0.128365, 0.991540,
		-0.459308, 0.882018, -0.105267,
		-0.888068, -0.453395, 0.075942,
		31.348501, 38.017521, 44.814457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606445, 38.856850, 45.018250>,  <31.970148, 38.334896, 44.761299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606445, 38.856850, 45.018250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354345, 38.555832, 45.094631>,  <31.203085, 38.375221, 45.140461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354345, 38.555832, 45.094631>,  <31.606445, 38.856850, 45.018250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354345, 38.555832, 45.094631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220313, 0.409194, 0.885451,
		-0.744476, 0.515987, -0.423690,
		-0.630252, -0.752541, 0.190956,
		31.165270, 38.330070, 45.151917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083424, 39.057365, 45.437954>,  <31.606445, 38.856850, 45.018250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083424, 39.057365, 45.437954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017958, 38.670994, 45.518143>,  <30.978678, 38.439171, 45.566254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017958, 38.670994, 45.518143>,  <31.083424, 39.057365, 45.437954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017958, 38.670994, 45.518143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330278, 0.245132, 0.911497,
		-0.929586, 0.082971, -0.359146,
		-0.163666, -0.965933, 0.200467,
		30.968859, 38.381214, 45.578281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412615, 38.989235, 45.650833>,  <31.083424, 39.057365, 45.437954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412615, 38.989235, 45.650833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593681, 38.677341, 45.823856>,  <30.702322, 38.490204, 45.927670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593681, 38.677341, 45.823856>,  <30.412615, 38.989235, 45.650833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593681, 38.677341, 45.823856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328884, 0.304903, 0.893795,
		-0.828811, -0.546854, -0.118422,
		0.452668, -0.779734, 0.432558,
		30.729483, 38.443420, 45.953625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886913, 38.534000, 45.997978>,  <30.412615, 38.989235, 45.650833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886913, 38.534000, 45.997978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240648, 38.461967, 46.170265>,  <30.452890, 38.418747, 46.273636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240648, 38.461967, 46.170265>,  <29.886913, 38.534000, 45.997978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240648, 38.461967, 46.170265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416839, 0.110845, 0.902197,
		-0.210214, -0.977386, 0.022959,
		0.884339, -0.180084, 0.430714,
		30.505951, 38.407944, 46.299480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766056, 38.112457, 46.609943>,  <29.886913, 38.534000, 45.997978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766056, 38.112457, 46.609943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137161, 38.253941, 46.657513>,  <30.359825, 38.338829, 46.686054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137161, 38.253941, 46.657513>,  <29.766056, 38.112457, 46.609943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137161, 38.253941, 46.657513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112186, -0.039566, 0.992899,
		0.355903, -0.934518, 0.002973,
		0.927765, 0.353709, 0.118921,
		30.415491, 38.360054, 46.693188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123720, 37.713562, 47.112167>,  <29.766056, 38.112457, 46.609943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123720, 37.713562, 47.112167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328304, 38.056431, 47.087955>,  <30.451056, 38.262154, 47.073429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328304, 38.056431, 47.087955>,  <30.123720, 37.713562, 47.112167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328304, 38.056431, 47.087955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040133, 0.046531, 0.998110,
		0.858368, -0.512925, -0.010601,
		0.511462, 0.857171, -0.060526,
		30.481743, 38.313583, 47.069798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568182, 37.689037, 47.541084>,  <30.123720, 37.713562, 47.112167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568182, 37.689037, 47.541084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582340, 38.085823, 47.492512>,  <30.590836, 38.323895, 47.463367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582340, 38.085823, 47.492512>,  <30.568182, 37.689037, 47.541084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582340, 38.085823, 47.492512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135084, 0.115640, 0.984063,
		0.990202, -0.051237, -0.129905,
		0.035398, 0.991969, -0.121428,
		30.592960, 38.383415, 47.456085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096113, 37.809074, 48.014946>,  <30.568182, 37.689037, 47.541084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096113, 37.809074, 48.014946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869440, 38.128674, 47.934464>,  <30.733437, 38.320431, 47.886173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869440, 38.128674, 47.934464>,  <31.096113, 37.809074, 48.014946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869440, 38.128674, 47.934464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097521, 0.177437, 0.979288,
		0.818146, 0.574565, -0.022631,
		-0.566681, 0.798994, -0.201202,
		30.699436, 38.368370, 47.874104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252216, 38.241913, 48.548157>,  <31.096113, 37.809074, 48.014946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252216, 38.241913, 48.548157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904293, 38.373993, 48.401512>,  <30.695539, 38.453243, 48.313526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904293, 38.373993, 48.401512>,  <31.252216, 38.241913, 48.548157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904293, 38.373993, 48.401512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318380, 0.192001, 0.928316,
		0.376923, 0.924176, -0.061873,
		-0.869806, 0.330204, -0.366609,
		30.643351, 38.473053, 48.291531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158312, 38.881050, 48.709461>,  <31.252216, 38.241913, 48.548157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158312, 38.881050, 48.709461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785759, 38.752865, 48.640369>,  <30.562227, 38.675953, 48.598915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785759, 38.752865, 48.640369>,  <31.158312, 38.881050, 48.709461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785759, 38.752865, 48.640369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251718, 0.224132, 0.941490,
		-0.262995, 0.920365, -0.289418,
		-0.931382, -0.320458, -0.172727,
		30.506344, 38.656727, 48.588551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638075, 39.414192, 48.961155>,  <31.158312, 38.881050, 48.709461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638075, 39.414192, 48.961155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435814, 39.069347, 48.948036>,  <30.314457, 38.862438, 48.940163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435814, 39.069347, 48.948036>,  <30.638075, 39.414192, 48.961155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435814, 39.069347, 48.948036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287074, 0.132282, 0.948731,
		-0.813575, 0.489143, -0.314379,
		-0.505652, -0.862114, -0.032799,
		30.284119, 38.810715, 48.938198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077816, 39.566124, 49.368107>,  <30.638075, 39.414192, 48.961155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077816, 39.566124, 49.368107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113098, 39.168003, 49.352161>,  <30.134268, 38.929131, 49.342594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113098, 39.168003, 49.352161>,  <30.077816, 39.566124, 49.368107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113098, 39.168003, 49.352161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153779, -0.053151, 0.986675,
		-0.984160, -0.080900, -0.157745,
		0.088206, -0.995304, -0.039868,
		30.139561, 38.869411, 49.340202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467278, 39.204456, 49.674088>,  <30.077816, 39.566124, 49.368107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467278, 39.204456, 49.674088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757946, 38.934673, 49.726330>,  <29.932348, 38.772804, 49.757675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757946, 38.934673, 49.726330>,  <29.467278, 39.204456, 49.674088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757946, 38.934673, 49.726330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221179, -0.049695, 0.973966,
		-0.650405, -0.736642, -0.185287,
		0.726672, -0.674454, 0.130608,
		29.975948, 38.732338, 49.765511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360430, 39.033203, 50.361965>,  <29.467278, 39.204456, 49.674088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360430, 39.033203, 50.361965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690557, 38.830811, 50.261700>,  <29.888634, 38.709373, 50.201542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690557, 38.830811, 50.261700>,  <29.360430, 39.033203, 50.361965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690557, 38.830811, 50.261700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088104, -0.323080, 0.942262,
		-0.557753, -0.799749, -0.222064,
		0.825318, -0.505984, -0.250660,
		29.938152, 38.679016, 50.186501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322460, 38.452915, 50.810986>,  <29.360430, 39.033203, 50.361965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322460, 38.452915, 50.810986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713409, 38.486866, 50.733490>,  <29.947979, 38.507236, 50.686993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713409, 38.486866, 50.733490>,  <29.322460, 38.452915, 50.810986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713409, 38.486866, 50.733490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209515, -0.262852, 0.941813,
		0.029014, -0.961096, -0.274688,
		0.977375, 0.084877, -0.193738,
		30.006622, 38.512329, 50.675369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549828, 37.877316, 51.153694>,  <29.322460, 38.452915, 50.810986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549828, 37.877316, 51.153694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873491, 38.108532, 51.111488>,  <30.067690, 38.247261, 51.086163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873491, 38.108532, 51.111488>,  <29.549828, 37.877316, 51.153694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873491, 38.108532, 51.111488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241100, -0.162852, 0.956739,
		0.535848, -0.799595, -0.271138,
		0.809159, 0.578038, -0.105519,
		30.116240, 38.281944, 51.079834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140871, 37.558113, 51.325645>,  <29.549828, 37.877316, 51.153694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140871, 37.558113, 51.325645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225943, 37.946758, 51.367077>,  <30.276985, 38.179947, 51.391937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225943, 37.946758, 51.367077>,  <30.140871, 37.558113, 51.325645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225943, 37.946758, 51.367077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572168, -0.209764, 0.792857,
		0.792080, -0.109360, -0.600541,
		0.212679, 0.971617, 0.103578,
		30.289745, 38.238243, 51.398151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783792, 37.616936, 51.615051>,  <30.140871, 37.558113, 51.325645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783792, 37.616936, 51.615051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657755, 37.983040, 51.715462>,  <30.582132, 38.202702, 51.775707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657755, 37.983040, 51.715462>,  <30.783792, 37.616936, 51.615051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657755, 37.983040, 51.715462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464325, -0.082009, 0.881860,
		0.827718, 0.394426, -0.399138,
		-0.315096, 0.915261, 0.251022,
		30.563227, 38.257618, 51.790768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353174, 38.039116, 51.930809>,  <30.783792, 37.616936, 51.615051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353174, 38.039116, 51.930809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013096, 38.195236, 52.072136>,  <30.809050, 38.288906, 52.156933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013096, 38.195236, 52.072136>,  <31.353174, 38.039116, 51.930809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013096, 38.195236, 52.072136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415606, 0.085604, 0.905508,
		0.323173, 0.916700, -0.234990,
		-0.850195, 0.390299, 0.353321,
		30.758038, 38.312325, 52.178131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612259, 38.449635, 52.545830>,  <31.353174, 38.039116, 51.930809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612259, 38.449635, 52.545830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220768, 38.399200, 52.610565>,  <30.985872, 38.368938, 52.649406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220768, 38.399200, 52.610565>,  <31.612259, 38.449635, 52.545830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220768, 38.399200, 52.610565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162097, 0.008287, 0.986740,
		-0.125755, 0.991985, 0.012327,
		-0.978729, -0.126086, 0.161840,
		30.927149, 38.361374, 52.659119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366644, 38.910019, 53.131931>,  <31.612259, 38.449635, 52.545830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366644, 38.910019, 53.131931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078781, 38.634037, 53.100819>,  <30.906063, 38.468449, 53.082150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078781, 38.634037, 53.100819>,  <31.366644, 38.910019, 53.131931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078781, 38.634037, 53.100819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063211, -0.046454, 0.996919,
		-0.691445, 0.722357, -0.010182,
		-0.719658, -0.689958, -0.077781,
		30.862885, 38.427048, 53.077484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928743, 39.057022, 53.667061>,  <31.366644, 38.910019, 53.131931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928743, 39.057022, 53.667061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826965, 38.680626, 53.577801>,  <30.765900, 38.454788, 53.524242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826965, 38.680626, 53.577801>,  <30.928743, 39.057022, 53.667061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826965, 38.680626, 53.577801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208803, -0.171851, 0.962740,
		-0.944277, 0.291559, -0.152755,
		-0.254444, -0.940989, -0.223154,
		30.750631, 38.398331, 53.510857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340088, 38.919647, 53.974689>,  <30.928743, 39.057022, 53.667061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340088, 38.919647, 53.974689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480244, 38.547863, 53.928505>,  <30.564337, 38.324791, 53.900795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480244, 38.547863, 53.928505>,  <30.340088, 38.919647, 53.974689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480244, 38.547863, 53.928505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247837, -0.210894, 0.945569,
		-0.903219, -0.302700, -0.304250,
		0.350388, -0.929460, -0.115463,
		30.585360, 38.269024, 53.893867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817167, 38.385395, 54.155209>,  <30.340088, 38.919647, 53.974689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817167, 38.385395, 54.155209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192209, 38.275028, 54.239841>,  <30.417234, 38.208809, 54.290619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192209, 38.275028, 54.239841>,  <29.817167, 38.385395, 54.155209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192209, 38.275028, 54.239841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297964, -0.323990, 0.897913,
		-0.179196, -0.904933, -0.385987,
		0.937607, -0.275912, 0.211579,
		30.473492, 38.192253, 54.303314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795130, 37.631855, 54.437004>,  <29.817167, 38.385395, 54.155209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795130, 37.631855, 54.437004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109022, 37.830818, 54.584942>,  <30.297358, 37.950195, 54.673702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109022, 37.830818, 54.584942>,  <29.795130, 37.631855, 54.437004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109022, 37.830818, 54.584942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314860, -0.194076, 0.929085,
		0.533912, -0.845529, 0.004316,
		0.784730, 0.497408, 0.369842,
		30.344440, 37.980042, 54.695896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070332, 37.118073, 54.824493>,  <29.795130, 37.631855, 54.437004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070332, 37.118073, 54.824493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190290, 37.480148, 54.944950>,  <30.262266, 37.697395, 55.017223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190290, 37.480148, 54.944950>,  <30.070332, 37.118073, 54.824493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190290, 37.480148, 54.944950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276154, -0.219782, 0.935647,
		0.913127, -0.363760, 0.184060,
		0.299898, 0.905193, 0.301142,
		30.280260, 37.751705, 55.035294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481823, 37.040443, 55.332062>,  <30.070332, 37.118073, 54.824493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481823, 37.040443, 55.332062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333216, 37.410652, 55.361420>,  <30.244051, 37.632778, 55.379036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333216, 37.410652, 55.361420>,  <30.481823, 37.040443, 55.332062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333216, 37.410652, 55.361420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304157, -0.196021, 0.932236,
		0.877191, 0.324018, 0.354329,
		-0.371517, 0.925521, 0.073395,
		30.221760, 37.688309, 55.383438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085957, 36.469326, 55.375256>,  <30.481823, 37.040443, 55.332062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085957, 36.469326, 55.375256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179607, 36.172878, 55.123566>,  <31.235798, 35.995010, 54.972549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179607, 36.172878, 55.123566>,  <31.085957, 36.469326, 55.375256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179607, 36.172878, 55.123566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655434, -0.357693, 0.665179,
		-0.718047, -0.568153, 0.402009,
		0.234128, -0.741119, -0.629227,
		31.249846, 35.950542, 54.934799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007597, 35.721947, 55.656124>,  <31.085957, 36.469326, 55.375256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007597, 35.721947, 55.656124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285818, 35.717766, 55.368763>,  <31.452751, 35.715260, 55.196346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285818, 35.717766, 55.368763>,  <31.007597, 35.721947, 55.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285818, 35.717766, 55.368763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590733, -0.560816, 0.580103,
		-0.408951, -0.827874, -0.383905,
		0.695552, -0.010448, -0.718399,
		31.494484, 35.714630, 55.153244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174915, 34.961781, 55.563614>,  <31.007597, 35.721947, 55.656124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174915, 34.961781, 55.563614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465485, 35.210842, 55.447262>,  <31.639826, 35.360279, 55.377449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465485, 35.210842, 55.447262>,  <31.174915, 34.961781, 55.563614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465485, 35.210842, 55.447262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656798, -0.504389, 0.560542,
		0.202309, -0.598239, -0.775359,
		0.726421, 0.622657, -0.290880,
		31.683411, 35.397640, 55.359997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711395, 34.658279, 55.125237>,  <31.174915, 34.961781, 55.563614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711395, 34.658279, 55.125237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879389, 34.955372, 55.333836>,  <31.980185, 35.133629, 55.458996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879389, 34.955372, 55.333836>,  <31.711395, 34.658279, 55.125237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879389, 34.955372, 55.333836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674240, -0.640000, 0.368512,
		0.607465, 0.196846, -0.769570,
		0.419984, 0.742733, 0.521499,
		32.005383, 35.178192, 55.490284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429935, 34.762157, 54.939796>,  <31.711395, 34.658279, 55.125237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429935, 34.762157, 54.939796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369400, 34.865242, 55.321514>,  <32.333080, 34.927094, 55.550545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369400, 34.865242, 55.321514>,  <32.429935, 34.762157, 54.939796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369400, 34.865242, 55.321514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533146, -0.791672, 0.298347,
		0.832378, 0.553930, -0.017589,
		-0.151338, 0.257715, 0.954295,
		32.323997, 34.942558, 55.607803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953865, 35.281574, 54.781425>,  <32.429935, 34.762157, 54.939796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953865, 35.281574, 54.781425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773190, 35.637081, 54.750259>,  <31.664783, 35.850384, 54.731560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773190, 35.637081, 54.750259>,  <31.953865, 35.281574, 54.781425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773190, 35.637081, 54.750259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185521, -0.178985, -0.966202,
		-0.872673, -0.421970, 0.245731,
		-0.451691, 0.888766, -0.077911,
		31.637682, 35.903709, 54.726887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314802, 35.134731, 54.449921>,  <31.953865, 35.281574, 54.781425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314802, 35.134731, 54.449921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425232, 35.509888, 54.365871>,  <31.491489, 35.734982, 54.315441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425232, 35.509888, 54.365871>,  <31.314802, 35.134731, 54.449921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425232, 35.509888, 54.365871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168618, -0.167968, -0.971264,
		-0.946230, 0.303570, 0.111774,
		0.276072, 0.937887, -0.210124,
		31.508053, 35.791252, 54.302834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751730, 35.363213, 53.908531>,  <31.314802, 35.134731, 54.449921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751730, 35.363213, 53.908531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048523, 35.628147, 53.867012>,  <31.226599, 35.787109, 53.842102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048523, 35.628147, 53.867012>,  <30.751730, 35.363213, 53.908531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048523, 35.628147, 53.867012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140508, 0.002249, -0.990077,
		-0.655529, 0.749205, 0.094732,
		0.741983, 0.662335, -0.103795,
		31.271118, 35.826847, 53.835873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445515, 35.989517, 53.598122>,  <30.751730, 35.363213, 53.908531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445515, 35.989517, 53.598122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841307, 35.959084, 53.548901>,  <31.078781, 35.940823, 53.519367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841307, 35.959084, 53.548901>,  <30.445515, 35.989517, 53.598122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841307, 35.959084, 53.548901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130780, -0.106728, -0.985650,
		0.061862, 0.991373, -0.115556,
		0.989480, -0.076087, -0.123049,
		31.138151, 35.936256, 53.511986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536425, 36.269627, 52.922760>,  <30.445515, 35.989517, 53.598122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536425, 36.269627, 52.922760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886581, 36.091682, 52.998432>,  <31.096676, 35.984917, 53.043835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886581, 36.091682, 52.998432>,  <30.536425, 36.269627, 52.922760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886581, 36.091682, 52.998432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056402, -0.294677, -0.953931,
		0.480116, 0.845732, -0.232866,
		0.875390, -0.444864, 0.189180,
		31.149199, 35.958221, 53.055187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128313, 36.619675, 52.515652>,  <30.536425, 36.269627, 52.922760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128313, 36.619675, 52.515652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250553, 36.244541, 52.581463>,  <31.323898, 36.019459, 52.620949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250553, 36.244541, 52.581463>,  <31.128313, 36.619675, 52.515652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250553, 36.244541, 52.581463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251402, -0.087183, -0.963948,
		0.918370, 0.335946, 0.209131,
		0.305602, -0.937837, 0.164524,
		31.342234, 35.963188, 52.630821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676476, 36.601437, 52.191357>,  <31.128313, 36.619675, 52.515652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676476, 36.601437, 52.191357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619005, 36.208019, 52.235172>,  <31.584522, 35.971970, 52.261463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619005, 36.208019, 52.235172>,  <31.676476, 36.601437, 52.191357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619005, 36.208019, 52.235172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409619, -0.159864, -0.898140,
		0.900871, -0.084173, 0.425847,
		-0.143677, -0.983544, 0.109538,
		31.575903, 35.912956, 52.268032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300900, 36.257290, 52.060905>,  <31.676476, 36.601437, 52.191357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300900, 36.257290, 52.060905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020569, 35.976719, 52.008995>,  <31.852371, 35.808376, 51.977848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020569, 35.976719, 52.008995>,  <32.300900, 36.257290, 52.060905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020569, 35.976719, 52.008995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415056, -0.253015, -0.873906,
		0.580146, -0.666321, 0.468451,
		-0.700827, -0.701427, -0.129775,
		31.810320, 35.766293, 51.970062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646393, 35.595619, 51.838577>,  <32.300900, 36.257290, 52.060905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646393, 35.595619, 51.838577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265224, 35.592651, 51.717319>,  <32.036526, 35.590870, 51.644566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265224, 35.592651, 51.717319>,  <32.646393, 35.595619, 51.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265224, 35.592651, 51.717319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303191, -0.006651, -0.952906,
		0.005072, -0.999950, 0.008594,
		-0.952916, -0.007439, -0.303142,
		31.979349, 35.590424, 51.626377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666245, 35.245815, 51.174976>,  <32.646393, 35.595619, 51.838577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666245, 35.245815, 51.174976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304512, 35.416534, 51.177231>,  <32.087475, 35.518967, 51.178581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304512, 35.416534, 51.177231>,  <32.666245, 35.245815, 51.174976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304512, 35.416534, 51.177231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094868, 0.213844, -0.972250,
		-0.416160, -0.878700, -0.233875,
		-0.904329, 0.426799, 0.005633,
		32.033215, 35.544575, 51.178921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278671, 34.918552, 50.660934>,  <32.666245, 35.245815, 51.174976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278671, 34.918552, 50.660934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060600, 35.251617, 50.699806>,  <31.929756, 35.451458, 50.723129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060600, 35.251617, 50.699806>,  <32.278671, 34.918552, 50.660934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060600, 35.251617, 50.699806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044517, 0.087005, -0.995213,
		-0.837136, -0.546897, -0.010366,
		-0.545180, 0.832667, 0.097181,
		31.897047, 35.501419, 50.728962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667549, 34.885830, 50.259331>,  <32.278671, 34.918552, 50.660934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667549, 34.885830, 50.259331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748968, 35.271797, 50.325665>,  <31.797819, 35.503376, 50.365467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748968, 35.271797, 50.325665>,  <31.667549, 34.885830, 50.259331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748968, 35.271797, 50.325665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071268, 0.183537, -0.980426,
		-0.976468, 0.187743, 0.106127,
		0.203546, 0.964918, 0.165838,
		31.810032, 35.561272, 50.375416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173531, 35.238155, 49.811985>,  <31.667549, 34.885830, 50.259331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173531, 35.238155, 49.811985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481140, 35.474510, 49.909519>,  <31.665707, 35.616322, 49.968040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481140, 35.474510, 49.909519>,  <31.173531, 35.238155, 49.811985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481140, 35.474510, 49.909519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086039, 0.282300, -0.955460,
		-0.633403, 0.755751, 0.166256,
		0.769024, 0.590887, 0.243834,
		31.711847, 35.651775, 49.982670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156450, 35.671406, 49.288044>,  <31.173531, 35.238155, 49.811985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156450, 35.671406, 49.288044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505331, 35.750816, 49.466862>,  <31.714659, 35.798462, 49.574154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505331, 35.750816, 49.466862>,  <31.156450, 35.671406, 49.288044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505331, 35.750816, 49.466862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325849, 0.445806, -0.833714,
		-0.364812, 0.872837, 0.324142,
		0.872201, 0.198528, 0.447049,
		31.766991, 35.810375, 49.600975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261961, 36.432316, 49.284458>,  <31.156450, 35.671406, 49.288044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261961, 36.432316, 49.284458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605492, 36.227440, 49.288006>,  <31.811611, 36.104515, 49.290134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605492, 36.227440, 49.288006>,  <31.261961, 36.432316, 49.284458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605492, 36.227440, 49.288006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182177, 0.289193, -0.939776,
		0.478775, 0.808722, 0.341676,
		0.858828, -0.512187, 0.008872,
		31.863140, 36.073784, 49.290668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604139, 36.793785, 48.881229>,  <31.261961, 36.432316, 49.284458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604139, 36.793785, 48.881229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808270, 36.451427, 48.914711>,  <31.930748, 36.246014, 48.934799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808270, 36.451427, 48.914711>,  <31.604139, 36.793785, 48.881229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808270, 36.451427, 48.914711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319837, 0.098547, -0.942333,
		0.798293, 0.507669, 0.324039,
		0.510326, -0.855898, 0.083702,
		31.961367, 36.194656, 48.939823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229527, 36.913750, 48.498150>,  <31.604139, 36.793785, 48.881229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229527, 36.913750, 48.498150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192493, 36.516361, 48.524830>,  <32.170273, 36.277927, 48.540836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192493, 36.516361, 48.524830>,  <32.229527, 36.913750, 48.498150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192493, 36.516361, 48.524830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194816, -0.083766, -0.977256,
		0.976460, -0.077488, 0.201299,
		-0.092587, -0.993468, 0.066699,
		32.164719, 36.218319, 48.544838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853390, 36.642780, 48.364555>,  <32.229527, 36.913750, 48.498150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853390, 36.642780, 48.364555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619770, 36.332233, 48.269783>,  <32.479599, 36.145905, 48.212921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619770, 36.332233, 48.269783>,  <32.853390, 36.642780, 48.364555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619770, 36.332233, 48.269783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360765, 0.013197, -0.932563,
		0.727142, -0.630138, 0.272380,
		-0.584049, -0.776371, -0.236928,
		32.444557, 36.099323, 48.198704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216118, 36.294067, 47.908291>,  <32.853390, 36.642780, 48.364555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216118, 36.294067, 47.908291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853313, 36.146378, 47.827286>,  <32.635632, 36.057766, 47.778683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853313, 36.146378, 47.827286>,  <33.216118, 36.294067, 47.908291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853313, 36.146378, 47.827286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239753, -0.057402, -0.969135,
		0.346201, -0.927567, 0.140586,
		-0.907008, -0.369221, -0.202514,
		32.581211, 36.035610, 47.766533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323921, 35.682449, 47.449265>,  <33.216118, 36.294067, 47.908291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323921, 35.682449, 47.449265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950615, 35.813854, 47.391178>,  <32.726631, 35.892696, 47.356327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950615, 35.813854, 47.391178>,  <33.323921, 35.682449, 47.449265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950615, 35.813854, 47.391178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079446, -0.205481, -0.975431,
		-0.350283, -0.921876, 0.165669,
		-0.933269, 0.328515, -0.145216,
		32.670635, 35.912407, 47.347614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930611, 35.167824, 46.991875>,  <33.323921, 35.682449, 47.449265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930611, 35.167824, 46.991875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727699, 35.511387, 46.963760>,  <32.605953, 35.717525, 46.946892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727699, 35.511387, 46.963760>,  <32.930611, 35.167824, 46.991875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727699, 35.511387, 46.963760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090155, -0.134000, -0.986872,
		-0.857052, -0.494284, 0.145411,
		-0.507280, 0.858911, -0.070283,
		32.575516, 35.769058, 46.942677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408104, 35.059578, 46.513672>,  <32.930611, 35.167824, 46.991875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408104, 35.059578, 46.513672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450222, 35.457340, 46.517212>,  <32.475494, 35.695995, 46.519337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450222, 35.457340, 46.517212>,  <32.408104, 35.059578, 46.513672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450222, 35.457340, 46.517212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024078, 0.011444, -0.999645,
		-0.994149, 0.105047, 0.025148,
		0.105297, 0.994402, 0.008848,
		32.481812, 35.755661, 46.519867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911455, 35.222534, 46.190613>,  <32.408104, 35.059578, 46.513672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911455, 35.222534, 46.190613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113598, 35.567131, 46.170834>,  <32.234882, 35.773888, 46.158966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113598, 35.567131, 46.170834>,  <31.911455, 35.222534, 46.190613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113598, 35.567131, 46.170834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254113, 0.093808, -0.962614,
		-0.824645, 0.499032, 0.266323,
		0.505358, 0.861491, -0.049452,
		32.265205, 35.825577, 46.155998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484919, 35.784832, 45.773209>,  <31.911455, 35.222534, 46.190613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484919, 35.784832, 45.773209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871399, 35.887043, 45.759556>,  <32.103287, 35.948372, 45.751366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871399, 35.887043, 45.759556>,  <31.484919, 35.784832, 45.773209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871399, 35.887043, 45.759556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035771, 0.001763, -0.999358,
		-0.255305, 0.966800, 0.010844,
		0.966199, 0.255529, -0.034133,
		32.161259, 35.963703, 45.749317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531630, 36.430370, 45.360760>,  <31.484919, 35.784832, 45.773209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531630, 36.430370, 45.360760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882441, 36.239624, 45.337353>,  <32.092926, 36.125175, 45.323311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882441, 36.239624, 45.337353>,  <31.531630, 36.430370, 45.360760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882441, 36.239624, 45.337353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107656, -0.076363, -0.991251,
		0.468227, 0.875652, -0.118310,
		0.877025, -0.476867, -0.058514,
		32.145550, 36.096565, 45.319798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912952, 36.695446, 44.829830>,  <31.531630, 36.430370, 45.360760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912952, 36.695446, 44.829830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117554, 36.360710, 44.907864>,  <32.240314, 36.159866, 44.954685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117554, 36.360710, 44.907864>,  <31.912952, 36.695446, 44.829830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117554, 36.360710, 44.907864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143836, -0.140446, -0.979585,
		0.847157, 0.529121, 0.048530,
		0.511503, -0.836843, 0.195087,
		32.271004, 36.109657, 44.966389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481876, 36.713753, 44.423580>,  <31.912952, 36.695446, 44.829830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481876, 36.713753, 44.423580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418892, 36.332169, 44.525700>,  <32.381104, 36.103218, 44.586971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418892, 36.332169, 44.525700>,  <32.481876, 36.713753, 44.423580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418892, 36.332169, 44.525700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124113, -0.275586, -0.953230,
		0.979695, -0.118408, 0.161791,
		-0.157458, -0.953956, 0.255295,
		32.371655, 36.045982, 44.602287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926537, 36.311367, 44.007107>,  <32.481876, 36.713753, 44.423580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926537, 36.311367, 44.007107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648762, 36.054440, 44.136829>,  <32.482098, 35.900284, 44.214661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648762, 36.054440, 44.136829>,  <32.926537, 36.311367, 44.007107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648762, 36.054440, 44.136829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001014, -0.449828, -0.893115,
		0.719549, -0.620545, 0.311728,
		-0.694442, -0.642323, 0.324302,
		32.440430, 35.861744, 44.234119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127884, 35.681084, 43.823154>,  <32.926537, 36.311367, 44.007107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127884, 35.681084, 43.823154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739220, 35.593487, 43.858757>,  <32.506020, 35.540928, 43.880119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739220, 35.593487, 43.858757>,  <33.127884, 35.681084, 43.823154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739220, 35.593487, 43.858757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025264, -0.470566, -0.882003,
		0.235031, -0.854758, 0.462762,
		-0.971660, -0.218989, 0.089003,
		32.447723, 35.527790, 43.885456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086014, 35.120045, 43.538334>,  <33.127884, 35.681084, 43.823154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086014, 35.120045, 43.538334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698570, 35.219471, 43.536781>,  <32.466106, 35.279129, 43.535851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698570, 35.219471, 43.536781>,  <33.086014, 35.120045, 43.538334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698570, 35.219471, 43.536781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113976, -0.457894, -0.881670,
		-0.220931, -0.853550, 0.471850,
		-0.968607, 0.248568, -0.003879,
		32.407990, 35.294041, 43.535618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737019, 34.506210, 43.374592>,  <33.086014, 35.120045, 43.538334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737019, 34.506210, 43.374592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489418, 34.806740, 43.283066>,  <32.340858, 34.987057, 43.228149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489418, 34.806740, 43.283066>,  <32.737019, 34.506210, 43.374592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489418, 34.806740, 43.283066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034833, -0.264791, -0.963676,
		-0.784617, -0.604487, 0.137736,
		-0.619001, 0.751319, -0.228815,
		32.303719, 35.032135, 43.214420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139290, 34.206879, 43.053490>,  <32.737019, 34.506210, 43.374592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139290, 34.206879, 43.053490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167202, 34.594421, 42.958462>,  <32.183949, 34.826946, 42.901443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167202, 34.594421, 42.958462>,  <32.139290, 34.206879, 43.053490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167202, 34.594421, 42.958462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209713, -0.218583, -0.953017,
		-0.975270, 0.116324, 0.187930,
		0.069781, 0.968860, -0.237572,
		32.188137, 34.885078, 42.887192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638454, 34.315525, 42.559261>,  <32.139290, 34.206879, 43.053490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638454, 34.315525, 42.559261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848627, 34.649231, 42.492428>,  <31.974731, 34.849457, 42.452328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848627, 34.649231, 42.492428>,  <31.638454, 34.315525, 42.559261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848627, 34.649231, 42.492428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163016, -0.094026, -0.982133,
		-0.835072, 0.543283, 0.086595,
		0.525433, 0.834268, -0.167082,
		32.006256, 34.899513, 42.442303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189972, 34.779278, 42.013882>,  <31.638454, 34.315525, 42.559261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189972, 34.779278, 42.013882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556149, 34.939491, 41.998154>,  <31.775854, 35.035618, 41.988716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556149, 34.939491, 41.998154>,  <31.189972, 34.779278, 42.013882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556149, 34.939491, 41.998154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170504, 0.297477, -0.939381,
		-0.364553, 0.866651, 0.340614,
		0.915440, 0.400530, -0.039321,
		31.830780, 35.059650, 41.986359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081549, 35.480438, 41.575768>,  <31.189972, 34.779278, 42.013882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081549, 35.480438, 41.575768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462027, 35.358070, 41.591991>,  <31.690313, 35.284649, 41.601727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462027, 35.358070, 41.591991>,  <31.081549, 35.480438, 41.575768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462027, 35.358070, 41.591991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029184, -0.041676, -0.998705,
		0.307215, 0.951145, -0.030714,
		0.951193, -0.305920, 0.040561,
		31.747385, 35.266293, 41.604160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279428, 35.807034, 41.022724>,  <31.081549, 35.480438, 41.575768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279428, 35.807034, 41.022724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569283, 35.541119, 41.095348>,  <31.743195, 35.381569, 41.138924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569283, 35.541119, 41.095348>,  <31.279428, 35.807034, 41.022724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569283, 35.541119, 41.095348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192854, -0.057312, -0.979552,
		0.661598, 0.744833, 0.086676,
		0.724635, -0.664785, 0.181562,
		31.786673, 35.341682, 41.149818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926249, 36.085201, 40.608143>,  <31.279428, 35.807034, 41.022724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926249, 36.085201, 40.608143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937338, 35.690708, 40.673359>,  <31.943991, 35.454014, 40.712490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937338, 35.690708, 40.673359>,  <31.926249, 36.085201, 40.608143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937338, 35.690708, 40.673359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343371, -0.143783, -0.928129,
		0.938791, 0.081713, 0.334656,
		0.027723, -0.986230, 0.163040,
		31.945654, 35.394840, 40.722271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589626, 35.879326, 40.296070>,  <31.926249, 36.085201, 40.608143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589626, 35.879326, 40.296070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415066, 35.519562, 40.305916>,  <32.310329, 35.303703, 40.311821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415066, 35.519562, 40.305916>,  <32.589626, 35.879326, 40.296070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415066, 35.519562, 40.305916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362514, -0.200799, -0.910090,
		0.823489, -0.388245, 0.413680,
		-0.436405, -0.899414, 0.024612,
		32.284145, 35.249737, 40.313301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117115, 35.437393, 40.044464>,  <32.589626, 35.879326, 40.296070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117115, 35.437393, 40.044464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769226, 35.244293, 40.003418>,  <32.560493, 35.128433, 39.978790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769226, 35.244293, 40.003418>,  <33.117115, 35.437393, 40.044464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769226, 35.244293, 40.003418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188819, -0.133370, -0.972913,
		0.455988, -0.865543, 0.207148,
		-0.869725, -0.482750, -0.102616,
		32.508308, 35.099468, 39.972633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312496, 34.856972, 39.671379>,  <33.117115, 35.437393, 40.044464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312496, 34.856972, 39.671379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917370, 34.875687, 39.612011>,  <32.680294, 34.886917, 39.576389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917370, 34.875687, 39.612011>,  <33.312496, 34.856972, 39.671379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917370, 34.875687, 39.612011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122593, -0.353496, -0.927368,
		-0.095857, -0.934265, 0.343453,
		-0.987817, 0.046789, -0.148419,
		32.621025, 34.889725, 39.567486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920479, 35.293369, 39.445797>,  <33.312496, 34.856972, 39.671379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920479, 35.293369, 39.445797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230335, 35.219421, 39.203888>,  <34.416248, 35.175053, 39.058743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230335, 35.219421, 39.203888>,  <33.920479, 35.293369, 39.445797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230335, 35.219421, 39.203888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278814, -0.758522, 0.588988,
		-0.567619, -0.624875, -0.536041,
		0.774643, -0.184865, -0.604776,
		34.462727, 35.163963, 39.022453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946438, 34.597839, 39.183250>,  <33.920479, 35.293369, 39.445797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946438, 34.597839, 39.183250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252529, 34.353859, 39.100903>,  <34.436184, 34.207470, 39.051495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252529, 34.353859, 39.100903>,  <33.946438, 34.597839, 39.183250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252529, 34.353859, 39.100903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079768, -0.407173, 0.909861,
		-0.638797, -0.679830, -0.360235,
		0.765229, -0.609952, -0.205872,
		34.482098, 34.170872, 39.039143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731888, 33.837994, 39.273239>,  <33.946438, 34.597839, 39.183250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731888, 33.837994, 39.273239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105728, 33.965393, 39.336582>,  <34.330032, 34.041832, 39.374588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105728, 33.965393, 39.336582>,  <33.731888, 33.837994, 39.273239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105728, 33.965393, 39.336582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106887, -0.173152, 0.979078,
		0.339259, -0.931974, -0.127784,
		0.934601, 0.318502, 0.158359,
		34.386108, 34.060944, 39.384090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159840, 33.253807, 39.652847>,  <33.731888, 33.837994, 39.273239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159840, 33.253807, 39.652847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306732, 33.622513, 39.702637>,  <34.394867, 33.843735, 39.732510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306732, 33.622513, 39.702637>,  <34.159840, 33.253807, 39.652847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306732, 33.622513, 39.702637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070207, -0.105969, 0.991888,
		0.927475, -0.372995, 0.025799,
		0.367235, 0.921762, 0.124470,
		34.416904, 33.899040, 39.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614105, 33.187405, 40.225498>,  <34.159840, 33.253807, 39.652847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614105, 33.187405, 40.225498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605755, 33.587292, 40.220814>,  <34.600746, 33.827225, 40.218002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605755, 33.587292, 40.220814>,  <34.614105, 33.187405, 40.225498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605755, 33.587292, 40.220814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108758, 0.013918, 0.993971,
		0.993849, 0.019473, -0.109018,
		-0.020873, 0.999714, -0.011715,
		34.599495, 33.887207, 40.217300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276352, 33.547153, 40.522339>,  <34.614105, 33.187405, 40.225498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276352, 33.547153, 40.522339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007034, 33.842381, 40.539944>,  <34.845444, 34.019516, 40.550507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007034, 33.842381, 40.539944>,  <35.276352, 33.547153, 40.522339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007034, 33.842381, 40.539944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054871, -0.009479, 0.998448,
		0.737340, 0.674660, -0.034116,
		-0.673290, 0.738068, 0.044009,
		34.805046, 34.063801, 40.553146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506863, 33.931690, 41.062653>,  <35.276352, 33.547153, 40.522339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506863, 33.931690, 41.062653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142109, 34.093204, 41.033176>,  <34.923256, 34.190113, 41.015491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142109, 34.093204, 41.033176>,  <35.506863, 33.931690, 41.062653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142109, 34.093204, 41.033176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095017, 0.382314, 0.919134,
		0.399303, 0.831141, -0.386991,
		-0.911882, 0.403784, -0.073687,
		34.868546, 34.214340, 41.011070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560081, 34.564465, 41.244198>,  <35.506863, 33.931690, 41.062653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560081, 34.564465, 41.244198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183865, 34.458977, 41.329838>,  <34.958134, 34.395683, 41.381222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183865, 34.458977, 41.329838>,  <35.560081, 34.564465, 41.244198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183865, 34.458977, 41.329838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151012, 0.239954, 0.958967,
		-0.304275, 0.934277, -0.185861,
		-0.940538, -0.263722, 0.214099,
		34.901703, 34.379860, 41.394066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417732, 35.125568, 41.656624>,  <35.560081, 34.564465, 41.244198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417732, 35.125568, 41.656624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111176, 34.873966, 41.708782>,  <34.927242, 34.723007, 41.740078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111176, 34.873966, 41.708782>,  <35.417732, 35.125568, 41.656624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111176, 34.873966, 41.708782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035713, 0.160960, 0.986315,
		-0.641382, 0.760559, -0.100894,
		-0.766390, -0.629001, 0.130398,
		34.881260, 34.685265, 41.747902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959095, 35.456863, 42.162338>,  <35.417732, 35.125568, 41.656624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959095, 35.456863, 42.162338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835239, 35.076836, 42.177818>,  <34.760925, 34.848820, 42.187107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835239, 35.076836, 42.177818>,  <34.959095, 35.456863, 42.162338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835239, 35.076836, 42.177818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072011, 0.064015, 0.995347,
		-0.948123, 0.305411, -0.088237,
		-0.309639, -0.950066, 0.038701,
		34.742348, 34.791817, 42.189430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306499, 35.412163, 42.565788>,  <34.959095, 35.456863, 42.162338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306499, 35.412163, 42.565788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514626, 35.070583, 42.563229>,  <34.639503, 34.865635, 42.561695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514626, 35.070583, 42.563229>,  <34.306499, 35.412163, 42.565788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514626, 35.070583, 42.563229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012107, -0.000113, 0.999927,
		-0.853886, -0.520359, 0.010280,
		0.520319, -0.853948, -0.006397,
		34.670723, 34.814400, 42.561310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073059, 35.027302, 43.104290>,  <34.306499, 35.412163, 42.565788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073059, 35.027302, 43.104290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417419, 34.830387, 43.052902>,  <34.624035, 34.712238, 43.022068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417419, 34.830387, 43.052902>,  <34.073059, 35.027302, 43.104290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417419, 34.830387, 43.052902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165896, 0.032906, 0.985594,
		-0.480967, -0.869811, 0.109997,
		0.860900, -0.492286, -0.128472,
		34.675690, 34.682701, 43.014362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025883, 34.531818, 43.588551>,  <34.073059, 35.027302, 43.104290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025883, 34.531818, 43.588551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419643, 34.523148, 43.518719>,  <34.655899, 34.517944, 43.476818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419643, 34.523148, 43.518719>,  <34.025883, 34.531818, 43.588551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419643, 34.523148, 43.518719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174921, 0.014866, 0.984470,
		-0.018750, -0.999654, 0.018426,
		0.984404, -0.021682, -0.174582,
		34.714966, 34.516644, 43.466343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275639, 33.940170, 43.785313>,  <34.025883, 34.531818, 43.588551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275639, 33.940170, 43.785313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616951, 34.148575, 43.776806>,  <34.821739, 34.273617, 43.771702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616951, 34.148575, 43.776806>,  <34.275639, 33.940170, 43.785313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616951, 34.148575, 43.776806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096635, -0.117917, 0.988310,
		0.512412, -0.845366, -0.150965,
		0.853285, 0.521011, -0.021270,
		34.872936, 34.304878, 43.770424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811180, 33.497570, 44.052513>,  <34.275639, 33.940170, 43.785313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811180, 33.497570, 44.052513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922092, 33.880371, 44.086605>,  <34.988640, 34.110050, 44.107059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922092, 33.880371, 44.086605>,  <34.811180, 33.497570, 44.052513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922092, 33.880371, 44.086605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116842, -0.121638, 0.985673,
		0.953657, -0.263353, -0.145546,
		0.277284, 0.957000, 0.085230,
		35.005280, 34.167473, 44.112175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318394, 33.486496, 44.515411>,  <34.811180, 33.497570, 44.052513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318394, 33.486496, 44.515411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198246, 33.868023, 44.514488>,  <35.126160, 34.096939, 44.513935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198246, 33.868023, 44.514488>,  <35.318394, 33.486496, 44.515411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198246, 33.868023, 44.514488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000877, 0.002142, 0.999997,
		0.953824, 0.300366, 0.000194,
		-0.300365, 0.953822, -0.002307,
		35.108135, 34.154171, 44.513798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754692, 33.887135, 45.076965>,  <35.318394, 33.486496, 44.515411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754692, 33.887135, 45.076965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421478, 34.093086, 44.996021>,  <35.221550, 34.216656, 44.947453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421478, 34.093086, 44.996021>,  <35.754692, 33.887135, 45.076965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421478, 34.093086, 44.996021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154621, 0.134521, 0.978773,
		0.531173, 0.846642, -0.032450,
		-0.833035, 0.514881, -0.202363,
		35.171566, 34.247551, 44.935314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839573, 34.577713, 45.463318>,  <35.754692, 33.887135, 45.076965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839573, 34.577713, 45.463318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447685, 34.514935, 45.413498>,  <35.212551, 34.477268, 45.383606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447685, 34.514935, 45.413498>,  <35.839573, 34.577713, 45.463318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447685, 34.514935, 45.413498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153162, 0.185858, 0.970566,
		-0.129178, 0.969961, -0.206127,
		-0.979722, -0.156946, -0.124552,
		35.153770, 34.467850, 45.376133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532600, 35.115532, 45.911880>,  <35.839573, 34.577713, 45.463318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532600, 35.115532, 45.911880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238411, 34.857311, 45.829582>,  <35.061897, 34.702377, 45.780201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238411, 34.857311, 45.829582>,  <35.532600, 35.115532, 45.911880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238411, 34.857311, 45.829582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438467, 0.221973, 0.870904,
		-0.516546, 0.730744, -0.446310,
		-0.735478, -0.645554, -0.205748,
		35.017769, 34.663647, 45.767857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844364, 35.480209, 45.889900>,  <35.532600, 35.115532, 45.911880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844364, 35.480209, 45.889900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812836, 35.094368, 45.990555>,  <34.793919, 34.862862, 46.050949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812836, 35.094368, 45.990555>,  <34.844364, 35.480209, 45.889900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812836, 35.094368, 45.990555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576586, 0.250035, 0.777838,
		-0.813225, -0.083780, -0.575887,
		-0.078824, -0.964606, 0.251641,
		34.789188, 34.804985, 46.066048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099918, 35.443954, 46.096062>,  <34.844364, 35.480209, 45.889900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099918, 35.443954, 46.096062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276936, 35.112793, 46.233891>,  <34.383144, 34.914097, 46.316586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276936, 35.112793, 46.233891>,  <34.099918, 35.443954, 46.096062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276936, 35.112793, 46.233891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315588, 0.215876, 0.924014,
		-0.839380, -0.517659, -0.165742,
		0.442544, -0.827905, 0.344570,
		34.409698, 34.864422, 46.337261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600384, 35.079605, 46.671429>,  <34.099918, 35.443954, 46.096062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600384, 35.079605, 46.671429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941547, 34.891243, 46.761574>,  <34.146248, 34.778225, 46.815662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941547, 34.891243, 46.761574>,  <33.600384, 35.079605, 46.671429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941547, 34.891243, 46.761574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192337, 0.117875, 0.974224,
		-0.485335, -0.874272, 0.009964,
		0.852911, -0.470908, 0.225364,
		34.197422, 34.749969, 46.829182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514957, 34.433323, 47.162773>,  <33.600384, 35.079605, 46.671429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514957, 34.433323, 47.162773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895065, 34.551758, 47.201393>,  <34.123131, 34.622818, 47.224564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895065, 34.551758, 47.201393>,  <33.514957, 34.433323, 47.162773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895065, 34.551758, 47.201393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122803, 0.071342, 0.989864,
		0.286203, -0.952491, 0.104155,
		0.950267, 0.296092, 0.096551,
		34.180145, 34.640587, 47.230358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933754, 33.958546, 47.753773>,  <33.514957, 34.433323, 47.162773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933754, 33.958546, 47.753773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119904, 34.310787, 47.718090>,  <34.231594, 34.522133, 47.696678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119904, 34.310787, 47.718090>,  <33.933754, 33.958546, 47.753773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119904, 34.310787, 47.718090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012512, 0.107325, 0.994145,
		0.885026, -0.461533, 0.060965,
		0.465374, 0.880607, -0.089211,
		34.259514, 34.574970, 47.691326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353123, 33.860157, 48.301998>,  <33.933754, 33.958546, 47.753773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353123, 33.860157, 48.301998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371960, 34.242214, 48.185043>,  <34.383263, 34.471447, 48.114868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371960, 34.242214, 48.185043>,  <34.353123, 33.860157, 48.301998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371960, 34.242214, 48.185043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009584, 0.292271, 0.956288,
		0.998845, -0.047837, 0.004610,
		0.047093, 0.955138, -0.292392,
		34.386089, 34.528755, 48.097324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939213, 34.120552, 48.622723>,  <34.353123, 33.860157, 48.301998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939213, 34.120552, 48.622723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726860, 34.452068, 48.551983>,  <34.599449, 34.650978, 48.509537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726860, 34.452068, 48.551983>,  <34.939213, 34.120552, 48.622723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726860, 34.452068, 48.551983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003092, 0.210583, 0.977571,
		0.847441, 0.518426, -0.114357,
		-0.530880, 0.828788, -0.176854,
		34.567596, 34.700706, 48.498928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251602, 34.703411, 48.935207>,  <34.939213, 34.120552, 48.622723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251602, 34.703411, 48.935207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869808, 34.819988, 48.909855>,  <34.640732, 34.889935, 48.894642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869808, 34.819988, 48.909855>,  <35.251602, 34.703411, 48.935207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869808, 34.819988, 48.909855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102855, 0.521122, 0.847262,
		0.279954, 0.802182, -0.527380,
		-0.954487, 0.291438, -0.063381,
		34.583462, 34.907421, 48.890839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249847, 35.436420, 49.055874>,  <35.251602, 34.703411, 48.935207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249847, 35.436420, 49.055874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872578, 35.319801, 49.119656>,  <34.646217, 35.249828, 49.157925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872578, 35.319801, 49.119656>,  <35.249847, 35.436420, 49.055874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872578, 35.319801, 49.119656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003486, 0.488501, 0.872556,
		-0.332290, 0.822414, -0.461757,
		-0.943171, -0.291551, 0.159457,
		34.589626, 35.232338, 49.167492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997566, 35.965607, 49.415817>,  <35.249847, 35.436420, 49.055874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997566, 35.965607, 49.415817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675980, 35.735435, 49.475838>,  <34.483028, 35.597332, 49.511848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675980, 35.735435, 49.475838>,  <34.997566, 35.965607, 49.415817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675980, 35.735435, 49.475838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113686, 0.396391, 0.911015,
		-0.583705, 0.715368, -0.384104,
		-0.803967, -0.575432, 0.150048,
		34.434788, 35.562805, 49.520851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264858, 36.383785, 49.617226>,  <34.997566, 35.965607, 49.415817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264858, 36.383785, 49.617226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303051, 36.015099, 49.767597>,  <34.325966, 35.793888, 49.857822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303051, 36.015099, 49.767597>,  <34.264858, 36.383785, 49.617226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303051, 36.015099, 49.767597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108735, 0.365741, 0.924343,
		-0.989475, -0.129132, -0.065302,
		0.095479, -0.921715, 0.375932,
		34.331696, 35.738583, 49.880379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878319, 36.365101, 50.204891>,  <34.264858, 36.383785, 49.617226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878319, 36.365101, 50.204891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094128, 36.036354, 50.278046>,  <34.223614, 35.839104, 50.321938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094128, 36.036354, 50.278046>,  <33.878319, 36.365101, 50.204891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094128, 36.036354, 50.278046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052342, 0.249531, 0.966951,
		-0.840345, -0.512116, 0.177645,
		0.539519, -0.821871, 0.182887,
		34.255981, 35.789791, 50.332912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594620, 36.146523, 50.677376>,  <33.878319, 36.365101, 50.204891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594620, 36.146523, 50.677376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943859, 35.957455, 50.725189>,  <34.153404, 35.844013, 50.753876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943859, 35.957455, 50.725189>,  <33.594620, 36.146523, 50.677376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943859, 35.957455, 50.725189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070591, 0.365145, 0.928271,
		-0.482409, -0.802032, 0.352173,
		0.873097, -0.472667, 0.119533,
		34.205788, 35.815655, 50.761047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597122, 35.839752, 51.344692>,  <33.594620, 36.146523, 50.677376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597122, 35.839752, 51.344692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988907, 35.874512, 51.271912>,  <34.223976, 35.895367, 51.228241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988907, 35.874512, 51.271912>,  <33.597122, 35.839752, 51.344692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988907, 35.874512, 51.271912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154453, 0.256791, 0.954045,
		0.129625, -0.962553, 0.238096,
		0.979460, 0.086893, -0.181956,
		34.282745, 35.900581, 51.217323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844238, 35.622768, 51.890244>,  <33.597122, 35.839752, 51.344692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844238, 35.622768, 51.890244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159538, 35.814037, 51.735321>,  <34.348721, 35.928799, 51.642368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159538, 35.814037, 51.735321>,  <33.844238, 35.622768, 51.890244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159538, 35.814037, 51.735321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280866, 0.280439, 0.917861,
		0.547514, -0.832288, 0.086754,
		0.788253, 0.478175, -0.387306,
		34.396015, 35.957489, 51.619129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334469, 35.244179, 52.201328>,  <33.844238, 35.622768, 51.890244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334469, 35.244179, 52.201328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439980, 35.613995, 52.091316>,  <34.503288, 35.835884, 52.025307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439980, 35.613995, 52.091316>,  <34.334469, 35.244179, 52.201328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439980, 35.613995, 52.091316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211155, 0.222869, 0.951705,
		0.941188, -0.309115, -0.136433,
		0.263780, 0.924542, -0.275032,
		34.519112, 35.891357, 52.008808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901581, 35.236588, 52.471687>,  <34.334469, 35.244179, 52.201328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901581, 35.236588, 52.471687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818253, 35.621750, 52.403076>,  <34.768257, 35.852848, 52.361908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818253, 35.621750, 52.403076>,  <34.901581, 35.236588, 52.471687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818253, 35.621750, 52.403076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372698, 0.240295, 0.896300,
		0.904267, 0.122788, -0.408930,
		-0.208318, 0.962903, -0.171528,
		34.755756, 35.910622, 52.351616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479004, 35.608078, 52.828163>,  <34.901581, 35.236588, 52.471687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479004, 35.608078, 52.828163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176678, 35.867989, 52.795841>,  <34.995281, 36.023937, 52.776447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176678, 35.867989, 52.795841>,  <35.479004, 35.608078, 52.828163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176678, 35.867989, 52.795841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256926, 0.407814, 0.876172,
		0.602274, 0.641461, -0.475177,
		-0.755814, 0.649781, -0.080808,
		34.949932, 36.062923, 52.771599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679825, 36.236572, 53.126957>,  <35.479004, 35.608078, 52.828163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679825, 36.236572, 53.126957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282555, 36.282299, 53.117710>,  <35.044193, 36.309734, 53.112160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282555, 36.282299, 53.117710>,  <35.679825, 36.236572, 53.126957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282555, 36.282299, 53.117710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032399, 0.460844, 0.886890,
		0.112041, 0.880088, -0.461403,
		-0.993175, 0.114317, -0.023119,
		34.984604, 36.316593, 53.110775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521832, 36.901909, 53.251190>,  <35.679825, 36.236572, 53.126957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521832, 36.901909, 53.251190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224583, 36.668106, 53.381500>,  <35.046234, 36.527824, 53.459686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224583, 36.668106, 53.381500>,  <35.521832, 36.901909, 53.251190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224583, 36.668106, 53.381500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123498, 0.358677, 0.925256,
		-0.657663, 0.727809, -0.194355,
		-0.743120, -0.584504, 0.325772,
		35.001648, 36.492756, 53.479233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126125, 37.455006, 52.995754>,  <35.521832, 36.901909, 53.251190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126125, 37.455006, 52.995754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411037, 37.729233, 53.055962>,  <35.581985, 37.893768, 53.092087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411037, 37.729233, 53.055962>,  <35.126125, 37.455006, 52.995754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411037, 37.729233, 53.055962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432074, -0.259272, -0.863765,
		-0.553142, 0.680279, -0.480889,
		0.712282, 0.685564, 0.150517,
		35.624722, 37.934902, 53.101116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107803, 37.791897, 52.406891>,  <35.126125, 37.455006, 52.995754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107803, 37.791897, 52.406891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458012, 37.884499, 52.576534>,  <35.668137, 37.940060, 52.678318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458012, 37.884499, 52.576534>,  <35.107803, 37.791897, 52.406891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458012, 37.884499, 52.576534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449337, -0.067403, -0.890816,
		-0.177643, 0.970496, -0.163037,
		0.875522, 0.231506, 0.424106,
		35.720669, 37.953949, 52.703766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380032, 38.350182, 52.032604>,  <35.107803, 37.791897, 52.406891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380032, 38.350182, 52.032604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684608, 38.152847, 52.200806>,  <35.867355, 38.034447, 52.301727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684608, 38.152847, 52.200806>,  <35.380032, 38.350182, 52.032604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684608, 38.152847, 52.200806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441088, -0.081044, -0.893797,
		0.475025, 0.866053, 0.155896,
		0.761441, -0.493340, 0.420503,
		35.913040, 38.004845, 52.326958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879539, 38.705132, 51.783127>,  <35.380032, 38.350182, 52.032604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879539, 38.705132, 51.783127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034794, 38.352962, 51.892082>,  <36.127949, 38.141659, 51.957455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034794, 38.352962, 51.892082>,  <35.879539, 38.705132, 51.783127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034794, 38.352962, 51.892082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490698, -0.052756, -0.869731,
		0.780104, 0.471239, 0.411547,
		0.388140, -0.880426, 0.272391,
		36.151237, 38.088833, 51.973801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371456, 38.686188, 51.408649>,  <35.879539, 38.705132, 51.783127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371456, 38.686188, 51.408649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414505, 38.311432, 51.541706>,  <36.440334, 38.086578, 51.621540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414505, 38.311432, 51.541706>,  <36.371456, 38.686188, 51.408649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414505, 38.311432, 51.541706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420556, -0.260272, -0.869133,
		0.900861, 0.233434, 0.366003,
		0.107625, -0.936892, 0.332641,
		36.446793, 38.030365, 51.641499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047085, 38.509239, 51.314159>,  <36.371456, 38.686188, 51.408649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047085, 38.509239, 51.314159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889324, 38.141697, 51.309132>,  <36.794670, 37.921173, 51.306114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889324, 38.141697, 51.309132>,  <37.047085, 38.509239, 51.314159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889324, 38.141697, 51.309132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520457, -0.212085, -0.827130,
		0.757346, -0.332760, 0.561870,
		-0.394400, -0.918853, -0.012566,
		36.771004, 37.866039, 51.305363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580070, 38.043015, 51.069759>,  <37.047085, 38.509239, 51.314159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580070, 38.043015, 51.069759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227043, 37.866890, 51.003792>,  <37.015228, 37.761215, 50.964211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227043, 37.866890, 51.003792>,  <37.580070, 38.043015, 51.069759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227043, 37.866890, 51.003792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289802, -0.233199, -0.928242,
		0.370259, -0.867030, 0.333417,
		-0.882567, -0.440315, -0.164923,
		36.962273, 37.734795, 50.954315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702221, 37.509682, 50.641972>,  <37.580070, 38.043015, 51.069759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702221, 37.509682, 50.641972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308388, 37.517262, 50.572418>,  <37.072086, 37.521809, 50.530685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308388, 37.517262, 50.572418>,  <37.702221, 37.509682, 50.641972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308388, 37.517262, 50.572418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167669, -0.180806, -0.969121,
		-0.049804, -0.983336, 0.174842,
		-0.984585, 0.018951, -0.173880,
		37.013012, 37.522945, 50.520256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703796, 37.082401, 50.124649>,  <37.702221, 37.509682, 50.641972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703796, 37.082401, 50.124649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329250, 37.222645, 50.117691>,  <37.104523, 37.306789, 50.113514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329250, 37.222645, 50.117691>,  <37.703796, 37.082401, 50.124649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329250, 37.222645, 50.117691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067067, -0.227329, -0.971506,
		-0.344574, -0.908513, 0.236376,
		-0.936361, 0.350609, -0.017400,
		37.048344, 37.327827, 50.112473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383526, 36.625809, 49.585865>,  <37.703796, 37.082401, 50.124649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383526, 36.625809, 49.585865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153397, 36.949814, 49.631264>,  <37.015320, 37.144218, 49.658504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153397, 36.949814, 49.631264>,  <37.383526, 36.625809, 49.585865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153397, 36.949814, 49.631264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220207, -0.019752, -0.975253,
		-0.787726, -0.586080, 0.189734,
		-0.575324, 0.810013, 0.113500,
		36.980801, 37.192818, 49.665314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641235, 36.455166, 49.350025>,  <37.383526, 36.625809, 49.585865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641235, 36.455166, 49.350025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679165, 36.852623, 49.325771>,  <36.701923, 37.091099, 49.311218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679165, 36.852623, 49.325771>,  <36.641235, 36.455166, 49.350025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679165, 36.852623, 49.325771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323757, -0.026814, -0.945760,
		-0.941376, 0.109311, 0.319158,
		0.094824, 0.993646, -0.060633,
		36.707611, 37.150715, 49.307583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007320, 36.856571, 49.144135>,  <36.641235, 36.455166, 49.350025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007320, 36.856571, 49.144135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321060, 37.078556, 49.033268>,  <36.509304, 37.211746, 48.966747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.321060, 37.078556, 49.033268>,  <36.007320, 36.856571, 49.144135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321060, 37.078556, 49.033268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221803, -0.166369, -0.960794,
		-0.579313, 0.815071, -0.007399,
		0.784346, 0.554960, -0.277165,
		36.556366, 37.245045, 48.950119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724926, 37.297256, 48.589550>,  <36.007320, 36.856571, 49.144135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724926, 37.297256, 48.589550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119507, 37.275829, 48.527538>,  <36.356255, 37.262974, 48.490330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119507, 37.275829, 48.527538>,  <35.724926, 37.297256, 48.589550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119507, 37.275829, 48.527538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162249, -0.180043, -0.970185,
		0.024056, 0.982199, -0.186296,
		0.986457, -0.053565, -0.155030,
		36.415443, 37.259758, 48.481030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001976, 37.789497, 48.007774>,  <35.724926, 37.297256, 48.589550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001976, 37.789497, 48.007774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312725, 37.538612, 48.029945>,  <36.499176, 37.388081, 48.043247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312725, 37.538612, 48.029945>,  <36.001976, 37.789497, 48.007774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312725, 37.538612, 48.029945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074606, 0.004290, -0.997204,
		0.625221, 0.778836, 0.050127,
		0.776874, -0.627212, 0.055423,
		36.545788, 37.350449, 48.046574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535973, 38.020126, 47.549297>,  <36.001976, 37.789497, 48.007774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535973, 38.020126, 47.549297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608517, 37.627758, 47.577297>,  <36.652046, 37.392338, 47.594097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608517, 37.627758, 47.577297>,  <36.535973, 38.020126, 47.549297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608517, 37.627758, 47.577297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168088, -0.039209, -0.984992,
		0.968944, 0.190409, 0.157770,
		0.181365, -0.980922, 0.069997,
		36.662926, 37.333481, 47.598297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094429, 37.929970, 47.177128>,  <36.535973, 38.020126, 47.549297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094429, 37.929970, 47.177128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949203, 37.558388, 47.206039>,  <36.862068, 37.335438, 47.223385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949203, 37.558388, 47.206039>,  <37.094429, 37.929970, 47.177128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949203, 37.558388, 47.206039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194797, -0.151533, -0.969068,
		0.911175, -0.337752, 0.235974,
		-0.363063, -0.928957, 0.072280,
		36.840286, 37.279701, 47.227722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532558, 37.520454, 46.743122>,  <37.094429, 37.929970, 47.177128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532558, 37.520454, 46.743122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203114, 37.301682, 46.803150>,  <37.005447, 37.170418, 46.839169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203114, 37.301682, 46.803150>,  <37.532558, 37.520454, 46.743122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203114, 37.301682, 46.803150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046328, -0.328605, -0.943331,
		0.565256, -0.769987, 0.295982,
		-0.823614, -0.546936, 0.150074,
		36.956028, 37.137600, 46.848171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610344, 36.883293, 46.389610>,  <37.532558, 37.520454, 46.743122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610344, 36.883293, 46.389610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214626, 36.922955, 46.432426>,  <36.977196, 36.946751, 46.458115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214626, 36.922955, 46.432426>,  <37.610344, 36.883293, 46.389610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214626, 36.922955, 46.432426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124434, -0.190286, -0.973811,
		-0.076192, -0.976708, 0.200588,
		-0.989298, 0.099157, 0.107037,
		36.917835, 36.952702, 46.464539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495995, 36.470928, 45.892460>,  <37.610344, 36.883293, 46.389610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495995, 36.470928, 45.892460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133713, 36.595181, 46.007851>,  <36.916344, 36.669731, 46.077084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133713, 36.595181, 46.007851>,  <37.495995, 36.470928, 45.892460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133713, 36.595181, 46.007851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394131, -0.366437, -0.842843,
		-0.156100, -0.877061, 0.454310,
		-0.905700, 0.310625, 0.288476,
		36.862003, 36.688370, 46.094395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116623, 35.940998, 45.894882>,  <37.495995, 36.470928, 45.892460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116623, 35.940998, 45.894882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889549, 36.267151, 45.849476>,  <36.753307, 36.462845, 45.822231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889549, 36.267151, 45.849476>,  <37.116623, 35.940998, 45.894882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889549, 36.267151, 45.849476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254832, -0.305158, -0.917572,
		-0.782815, -0.491961, 0.381018,
		-0.567681, 0.815385, -0.113515,
		36.719246, 36.511768, 45.815422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447609, 35.740513, 45.610180>,  <37.116623, 35.940998, 45.894882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447609, 35.740513, 45.610180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514561, 36.120918, 45.506210>,  <36.554733, 36.349163, 45.443829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514561, 36.120918, 45.506210>,  <36.447609, 35.740513, 45.610180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514561, 36.120918, 45.506210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315019, -0.198228, -0.928153,
		-0.934209, 0.237235, 0.266408,
		0.167381, 0.951013, -0.259920,
		36.564774, 36.406223, 45.428234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818718, 35.933823, 45.178352>,  <36.447609, 35.740513, 45.610180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818718, 35.933823, 45.178352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122192, 36.177689, 45.086525>,  <36.304279, 36.324009, 45.031429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122192, 36.177689, 45.086525>,  <35.818718, 35.933823, 45.178352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122192, 36.177689, 45.086525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284382, -0.007093, -0.958685,
		-0.586102, 0.792630, 0.167995,
		0.758690, 0.609662, -0.229567,
		36.349800, 36.360588, 45.017654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529045, 36.313828, 44.638508>,  <35.818718, 35.933823, 45.178352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529045, 36.313828, 44.638508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917751, 36.403511, 44.609100>,  <36.150974, 36.457321, 44.591457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917751, 36.403511, 44.609100>,  <35.529045, 36.313828, 44.638508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917751, 36.403511, 44.609100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035909, -0.167419, -0.985232,
		-0.233202, 0.960054, -0.154641,
		0.971765, 0.224205, -0.073517,
		36.209282, 36.470772, 44.587044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656841, 36.640999, 43.938877>,  <35.529045, 36.313828, 44.638508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656841, 36.640999, 43.938877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015350, 36.504353, 44.052006>,  <36.230457, 36.422363, 44.119884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015350, 36.504353, 44.052006>,  <35.656841, 36.640999, 43.938877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015350, 36.504353, 44.052006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215115, -0.222801, -0.950834,
		0.387835, 0.913048, -0.126204,
		0.896276, -0.341618, 0.282821,
		36.284233, 36.401867, 44.136852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985508, 36.785801, 43.434208>,  <35.656841, 36.640999, 43.938877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985508, 36.785801, 43.434208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237148, 36.525703, 43.604580>,  <36.388130, 36.369644, 43.706802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237148, 36.525703, 43.604580>,  <35.985508, 36.785801, 43.434208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237148, 36.525703, 43.604580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276491, -0.324926, -0.904420,
		0.726491, 0.686734, -0.024623,
		0.629097, -0.650245, 0.425932,
		36.425877, 36.330631, 43.732361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677353, 36.873123, 43.173794>,  <35.985508, 36.785801, 43.434208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677353, 36.873123, 43.173794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664825, 36.495335, 43.304634>,  <36.657310, 36.268661, 43.383137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664825, 36.495335, 43.304634>,  <36.677353, 36.873123, 43.173794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664825, 36.495335, 43.304634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394511, -0.312369, -0.864169,
		0.918358, 0.101980, 0.382387,
		-0.031317, -0.944471, 0.327098,
		36.655430, 36.211994, 43.402763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314857, 36.520691, 43.451992>,  <36.677353, 36.873123, 43.173794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314857, 36.520691, 43.451992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090984, 36.235909, 43.282345>,  <36.956661, 36.065041, 43.180557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090984, 36.235909, 43.282345>,  <37.314857, 36.520691, 43.451992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090984, 36.235909, 43.282345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659267, -0.072430, -0.748412,
		0.502116, -0.698481, 0.509906,
		-0.559684, -0.711953, -0.424118,
		36.923080, 36.022324, 43.155109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824341, 36.033989, 43.146935>,  <37.314857, 36.520691, 43.451992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824341, 36.033989, 43.146935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477432, 35.975674, 42.956532>,  <37.269287, 35.940685, 42.842289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477432, 35.975674, 42.956532>,  <37.824341, 36.033989, 43.146935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477432, 35.975674, 42.956532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490836, -0.090622, -0.866526,
		0.083193, -0.985156, 0.150153,
		-0.867271, -0.145790, -0.476011,
		37.217251, 35.931938, 42.813728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918102, 35.473663, 42.743114>,  <37.824341, 36.033989, 43.146935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918102, 35.473663, 42.743114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602409, 35.646294, 42.568367>,  <37.412994, 35.749870, 42.463520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602409, 35.646294, 42.568367>,  <37.918102, 35.473663, 42.743114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602409, 35.646294, 42.568367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559927, 0.213606, -0.800534,
		-0.252174, -0.876421, -0.410236,
		-0.789234, 0.431576, -0.436866,
		37.365639, 35.775768, 42.437305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741508, 35.100201, 42.091290>,  <37.918102, 35.473663, 42.743114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741508, 35.100201, 42.091290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594368, 35.466820, 42.028507>,  <37.506084, 35.686790, 41.990837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594368, 35.466820, 42.028507>,  <37.741508, 35.100201, 42.091290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594368, 35.466820, 42.028507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457683, 0.031530, -0.888556,
		-0.809453, -0.398688, -0.431085,
		-0.367848, 0.916545, -0.156951,
		37.484013, 35.741783, 41.981422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663013, 35.140900, 41.313171>,  <37.741508, 35.100201, 42.091290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663013, 35.140900, 41.313171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643753, 35.511627, 41.462132>,  <37.632195, 35.734066, 41.551506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643753, 35.511627, 41.462132>,  <37.663013, 35.140900, 41.313171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643753, 35.511627, 41.462132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338913, 0.365875, -0.866761,
		-0.939585, 0.084473, -0.331730,
		-0.048153, 0.926822, 0.372399,
		37.629307, 35.789673, 41.573853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373562, 35.566299, 40.789303>,  <37.663013, 35.140900, 41.313171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373562, 35.566299, 40.789303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581264, 35.803604, 41.035362>,  <37.705887, 35.945988, 41.182999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581264, 35.803604, 41.035362>,  <37.373562, 35.566299, 40.789303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581264, 35.803604, 41.035362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460446, 0.412181, -0.786191,
		-0.719972, 0.691479, -0.059137,
		0.519259, 0.593265, 0.615148,
		37.737041, 35.981583, 41.219906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316616, 36.214596, 40.475544>,  <37.373562, 35.566299, 40.789303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316616, 36.214596, 40.475544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619385, 36.220459, 40.736877>,  <37.801048, 36.223976, 40.893677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619385, 36.220459, 40.736877>,  <37.316616, 36.214596, 40.475544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619385, 36.220459, 40.736877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531752, 0.567330, -0.628790,
		-0.379876, 0.823360, 0.421631,
		0.756924, 0.014659, 0.653338,
		37.846462, 36.224857, 40.932880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589390, 36.824978, 40.264816>,  <37.316616, 36.214596, 40.475544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589390, 36.824978, 40.264816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869995, 36.636272, 40.478477>,  <38.038361, 36.523048, 40.606674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869995, 36.636272, 40.478477>,  <37.589390, 36.824978, 40.264816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869995, 36.636272, 40.478477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711110, 0.414070, -0.568215,
		0.046888, 0.778450, 0.625953,
		0.701515, -0.471764, 0.534149,
		38.080448, 36.494743, 40.638721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083305, 37.256588, 40.656300>,  <37.589390, 36.824978, 40.264816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083305, 37.256588, 40.656300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248669, 36.915363, 40.528942>,  <38.347889, 36.710629, 40.452526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248669, 36.915363, 40.528942>,  <38.083305, 37.256588, 40.656300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248669, 36.915363, 40.528942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641739, 0.521040, -0.562752,
		0.645958, 0.028323, 0.762847,
		0.413412, -0.853062, -0.318394,
		38.372692, 36.659443, 40.433422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815071, 37.565224, 40.483414>,  <38.083305, 37.256588, 40.656300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815071, 37.565224, 40.483414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851658, 37.177826, 40.390759>,  <38.873611, 36.945389, 40.335167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851658, 37.177826, 40.390759>,  <38.815071, 37.565224, 40.483414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851658, 37.177826, 40.390759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690892, 0.229238, -0.685652,
		0.717149, -0.097319, 0.690092,
		0.091468, -0.968493, -0.231635,
		38.879097, 36.887280, 40.321266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445072, 37.350315, 40.538635>,  <38.815071, 37.565224, 40.483414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445072, 37.350315, 40.538635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314068, 37.076817, 40.277798>,  <39.235466, 36.912716, 40.121296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314068, 37.076817, 40.277798>,  <39.445072, 37.350315, 40.538635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314068, 37.076817, 40.277798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754216, 0.226526, -0.616315,
		0.569120, -0.693670, 0.441503,
		-0.327507, -0.683746, -0.652097,
		39.215816, 36.871693, 40.082169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035381, 36.975697, 40.250507>,  <39.445072, 37.350315, 40.538635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035381, 36.975697, 40.250507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750950, 36.861561, 39.993462>,  <39.580292, 36.793079, 39.839233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750950, 36.861561, 39.993462>,  <40.035381, 36.975697, 40.250507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750950, 36.861561, 39.993462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660326, 0.042947, -0.749750,
		0.241528, -0.957465, 0.157875,
		-0.711080, -0.285335, -0.642612,
		39.537624, 36.775959, 39.800678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311127, 36.420353, 39.957958>,  <40.035381, 36.975697, 40.250507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311127, 36.420353, 39.957958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055550, 36.595608, 39.705044>,  <39.902203, 36.700760, 39.553295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055550, 36.595608, 39.705044>,  <40.311127, 36.420353, 39.957958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055550, 36.595608, 39.705044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730089, 0.086476, -0.677858,
		-0.242320, -0.894737, -0.375135,
		-0.638945, 0.438141, -0.632283,
		39.863865, 36.727051, 39.515358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612206, 36.303303, 39.306564>,  <40.311127, 36.420353, 39.957958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612206, 36.303303, 39.306564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342392, 36.573936, 39.188423>,  <40.180504, 36.736317, 39.117538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342392, 36.573936, 39.188423>,  <40.612206, 36.303303, 39.306564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342392, 36.573936, 39.188423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635322, 0.328254, -0.699010,
		-0.375989, -0.659152, -0.651269,
		-0.674535, 0.676585, -0.295354,
		40.140030, 36.776913, 39.099815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646545, 36.228912, 38.608509>,  <40.612206, 36.303303, 39.306564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646545, 36.228912, 38.608509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527695, 36.599213, 38.702065>,  <40.456387, 36.821392, 38.758198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527695, 36.599213, 38.702065>,  <40.646545, 36.228912, 38.608509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527695, 36.599213, 38.702065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732791, 0.378123, -0.565722,
		-0.612156, 0.003302, -0.790730,
		-0.297125, 0.925750, 0.233889,
		40.438557, 36.876938, 38.772232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170143, 35.802113, 38.835022>,  <40.646545, 36.228912, 38.608509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170143, 35.802113, 38.835022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307045, 35.956665, 39.177616>,  <41.389187, 36.049397, 39.383175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307045, 35.956665, 39.177616>,  <41.170143, 35.802113, 38.835022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307045, 35.956665, 39.177616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793018, 0.370130, -0.483866,
		-0.503969, 0.844816, -0.179728,
		0.342254, 0.386381, 0.856488,
		41.409721, 36.072578, 39.434563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397243, 36.477131, 38.700397>,  <41.170143, 35.802113, 38.835022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397243, 36.477131, 38.700397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599926, 36.328419, 39.011532>,  <41.721535, 36.239189, 39.198212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599926, 36.328419, 39.011532>,  <41.397243, 36.477131, 38.700397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599926, 36.328419, 39.011532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860068, 0.280191, -0.426351,
		-0.059432, 0.885025, 0.461734,
		0.506706, -0.371784, 0.777834,
		41.751938, 36.216885, 39.244881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986187, 36.995777, 38.884636>,  <41.397243, 36.477131, 38.700397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986187, 36.995777, 38.884636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095612, 36.644260, 39.041042>,  <42.161266, 36.433350, 39.134884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095612, 36.644260, 39.041042>,  <41.986187, 36.995777, 38.884636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095612, 36.644260, 39.041042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946201, 0.172825, -0.273560,
		0.172825, 0.444811, 0.878792,
		0.273560, -0.878792, 0.391012,
		42.177681, 36.380623, 39.158344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575424, 37.189083, 39.223999>,  <41.986187, 36.995777, 38.884636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575424, 37.189083, 39.223999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563541, 36.808826, 39.100456>,  <42.556412, 36.580673, 39.026329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563541, 36.808826, 39.100456>,  <42.575424, 37.189083, 39.223999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563541, 36.808826, 39.100456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852554, 0.137208, -0.504307,
		0.521794, -0.278298, 0.806400,
		-0.029703, -0.950644, -0.308859,
		42.554630, 36.523632, 39.007797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227303, 36.628353, 39.432529>,  <42.575424, 37.189083, 39.223999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227303, 36.628353, 39.432529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023422, 36.593403, 39.090168>,  <42.901096, 36.572433, 38.884750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023422, 36.593403, 39.090168>,  <43.227303, 36.628353, 39.432529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023422, 36.593403, 39.090168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855034, 0.059005, -0.515204,
		0.095520, -0.994426, 0.044635,
		-0.509699, -0.087377, -0.855905,
		42.870514, 36.567188, 38.833397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549221, 36.126938, 39.044628>,  <43.227303, 36.628353, 39.432529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549221, 36.126938, 39.044628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371185, 36.406864, 38.821144>,  <43.264362, 36.574821, 38.687054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371185, 36.406864, 38.821144>,  <43.549221, 36.126938, 39.044628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371185, 36.406864, 38.821144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829394, 0.086917, -0.551861,
		-0.337640, -0.709016, -0.619109,
		-0.445089, 0.699816, -0.558707,
		43.237659, 36.616810, 38.653530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282051, 36.270081, 39.000515>,  <43.549221, 36.126938, 39.044628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282051, 36.270081, 39.000515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536285, 36.481239, 38.775177>,  <44.688824, 36.607933, 38.639973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536285, 36.481239, 38.775177>,  <44.282051, 36.270081, 39.000515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536285, 36.481239, 38.775177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689605, 0.716261, -0.106840,
		0.347103, 0.456393, 0.819283,
		0.635582, 0.527898, -0.563347,
		44.726959, 36.639610, 38.606174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247158, 37.052753, 39.271294>,  <44.282051, 36.270081, 39.000515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247158, 37.052753, 39.271294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377357, 37.045567, 38.893147>,  <44.455479, 37.041252, 38.666256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.377357, 37.045567, 38.893147>,  <44.247158, 37.052753, 39.271294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377357, 37.045567, 38.893147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581110, 0.784911, -0.215002,
		0.745895, 0.619348, 0.245047,
		0.325501, -0.017969, -0.945371,
		44.475006, 37.040176, 38.609535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411057, 37.757950, 39.206490>,  <44.247158, 37.052753, 39.271294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411057, 37.757950, 39.206490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375225, 37.573231, 38.853512>,  <44.353725, 37.462399, 38.641724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.375225, 37.573231, 38.853512>,  <44.411057, 37.757950, 39.206490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375225, 37.573231, 38.853512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521167, 0.776764, -0.353586,
		0.848740, 0.428228, -0.310260,
		-0.089583, -0.461800, -0.882449,
		44.348351, 37.434692, 38.588776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573463, 38.240150, 38.843403>,  <44.411057, 37.757950, 39.206490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573463, 38.240150, 38.843403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394215, 37.998734, 38.579605>,  <44.286667, 37.853882, 38.421326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394215, 37.998734, 38.579605>,  <44.573463, 38.240150, 38.843403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394215, 37.998734, 38.579605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325021, 0.797215, -0.508733,
		0.832799, -0.013623, -0.553408,
		-0.448116, -0.603542, -0.659492,
		44.259777, 37.817673, 38.381760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840137, 38.513680, 38.138622>,  <44.573463, 38.240150, 38.843403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840137, 38.513680, 38.138622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498055, 38.309803, 38.101032>,  <44.292805, 38.187477, 38.078476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498055, 38.309803, 38.101032>,  <44.840137, 38.513680, 38.138622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498055, 38.309803, 38.101032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306840, 0.644054, -0.700745,
		0.417690, -0.570448, -0.707195,
		-0.855210, -0.509690, -0.093979,
		44.241493, 38.156895, 38.072838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814156, 38.502094, 37.499897>,  <44.840137, 38.513680, 38.138622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814156, 38.502094, 37.499897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445381, 38.411549, 37.625622>,  <44.224117, 38.357220, 37.701057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445381, 38.411549, 37.625622>,  <44.814156, 38.502094, 37.499897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445381, 38.411549, 37.625622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387341, 0.538388, -0.748402,
		0.000190, -0.811725, -0.584040,
		-0.921937, -0.226364, 0.314312,
		44.168800, 38.343639, 37.719917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443504, 38.237160, 36.948387>,  <44.814156, 38.502094, 37.499897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443504, 38.237160, 36.948387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167309, 38.380669, 37.199623>,  <44.001591, 38.466774, 37.350365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167309, 38.380669, 37.199623>,  <44.443504, 38.237160, 36.948387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167309, 38.380669, 37.199623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440648, 0.479969, -0.758590,
		-0.573628, -0.800569, -0.173322,
		-0.690493, 0.358775, 0.628093,
		43.960159, 38.488300, 37.388050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757439, 38.200462, 36.595284>,  <44.443504, 38.237160, 36.948387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757439, 38.200462, 36.595284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640121, 38.458973, 36.877079>,  <43.569733, 38.614079, 37.046158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640121, 38.458973, 36.877079>,  <43.757439, 38.200462, 36.595284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640121, 38.458973, 36.877079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659710, 0.396516, -0.638402,
		-0.691927, -0.651996, 0.310062,
		-0.293291, 0.646279, 0.704489,
		43.552135, 38.652855, 37.088425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130909, 38.246265, 36.547863>,  <43.757439, 38.200462, 36.595284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130909, 38.246265, 36.547863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266068, 38.586109, 36.709843>,  <43.347164, 38.790016, 36.807030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266068, 38.586109, 36.709843>,  <43.130909, 38.246265, 36.547863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266068, 38.586109, 36.709843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537309, 0.527384, -0.658152,
		-0.772737, 0.004808, 0.634708,
		0.337900, 0.849613, 0.404946,
		43.367439, 38.840992, 36.831326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515388, 38.635746, 36.603825>,  <43.130909, 38.246265, 36.547863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515388, 38.635746, 36.603825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812592, 38.899612, 36.649055>,  <42.990913, 39.057930, 36.676193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812592, 38.899612, 36.649055>,  <42.515388, 38.635746, 36.603825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812592, 38.899612, 36.649055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479361, 0.642417, -0.597924,
		-0.467072, 0.390056, 0.793536,
		0.743005, 0.659664, 0.113078,
		43.035492, 39.097511, 36.682980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206455, 39.261600, 36.952858>,  <42.515388, 38.635746, 36.603825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206455, 39.261600, 36.952858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543911, 39.375561, 36.770821>,  <42.746384, 39.443939, 36.661598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543911, 39.375561, 36.770821>,  <42.206455, 39.261600, 36.952858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543911, 39.375561, 36.770821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484725, 0.768673, -0.417353,
		0.230911, 0.572688, 0.786580,
		0.843636, 0.284904, -0.455091,
		42.797001, 39.461033, 36.634293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286278, 39.960781, 37.085751>,  <42.206455, 39.261600, 36.952858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286278, 39.960781, 37.085751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528503, 39.897308, 36.773823>,  <42.673840, 39.859226, 36.586666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528503, 39.897308, 36.773823>,  <42.286278, 39.960781, 37.085751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528503, 39.897308, 36.773823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445599, 0.744281, -0.497482,
		0.659343, 0.648742, 0.380001,
		0.605565, -0.158683, -0.779815,
		42.710175, 39.849705, 36.539879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373688, 40.637688, 36.839943>,  <42.286278, 39.960781, 37.085751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373688, 40.637688, 36.839943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491444, 40.418278, 36.526905>,  <42.562096, 40.286633, 36.339081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491444, 40.418278, 36.526905>,  <42.373688, 40.637688, 36.839943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491444, 40.418278, 36.526905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288129, 0.729837, -0.619935,
		0.911218, 0.407988, 0.056807,
		0.294386, -0.548528, -0.782594,
		42.579758, 40.253719, 36.292126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724796, 41.153526, 36.308994>,  <42.373688, 40.637688, 36.839943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724796, 41.153526, 36.308994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627213, 40.829086, 36.096355>,  <42.568665, 40.634422, 35.968773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627213, 40.829086, 36.096355>,  <42.724796, 41.153526, 36.308994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627213, 40.829086, 36.096355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389570, 0.583950, -0.712206,
		0.888099, 0.033347, -0.458441,
		-0.243956, -0.811105, -0.531596,
		42.554024, 40.585754, 35.936878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933201, 41.352489, 35.719696>,  <42.724796, 41.153526, 36.308994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933201, 41.352489, 35.719696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672749, 41.056000, 35.654438>,  <42.516476, 40.878105, 35.615284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672749, 41.056000, 35.654438>,  <42.933201, 41.352489, 35.719696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672749, 41.056000, 35.654438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467684, 0.561151, -0.682921,
		0.597746, -0.368371, -0.712041,
		-0.651131, -0.741223, -0.163145,
		42.477409, 40.833633, 35.605495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969147, 41.262375, 34.987419>,  <42.933201, 41.352489, 35.719696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969147, 41.262375, 34.987419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612587, 41.113037, 35.090199>,  <42.398651, 41.023434, 35.151867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612587, 41.113037, 35.090199>,  <42.969147, 41.262375, 34.987419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612587, 41.113037, 35.090199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416232, 0.450043, -0.790071,
		0.179331, -0.811218, -0.556566,
		-0.891399, -0.373345, 0.256948,
		42.345169, 41.001034, 35.167282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621609, 41.018208, 34.379311>,  <42.969147, 41.262375, 34.987419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621609, 41.018208, 34.379311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309399, 41.046906, 34.627708>,  <42.122074, 41.064125, 34.776749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309399, 41.046906, 34.627708>,  <42.621609, 41.018208, 34.379311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309399, 41.046906, 34.627708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432416, 0.655420, -0.619227,
		-0.451441, -0.751849, -0.480545,
		-0.780524, 0.071749, 0.620995,
		42.075241, 41.068432, 34.814007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096401, 40.835632, 33.958996>,  <42.621609, 41.018208, 34.379311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096401, 40.835632, 33.958996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963062, 41.056221, 34.264874>,  <41.883060, 41.188572, 34.448402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963062, 41.056221, 34.264874>,  <42.096401, 40.835632, 33.958996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963062, 41.056221, 34.264874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469153, 0.606511, -0.641903,
		-0.817788, -0.572736, 0.056545,
		-0.333346, 0.551469, 0.764698,
		41.863060, 41.221661, 34.494282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498867, 41.141296, 33.730698>,  <42.096401, 40.835632, 33.958996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498867, 41.141296, 33.730698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570667, 41.349728, 34.064465>,  <41.613747, 41.474789, 34.264725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570667, 41.349728, 34.064465>,  <41.498867, 41.141296, 33.730698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570667, 41.349728, 34.064465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481696, 0.786114, -0.387290,
		-0.857757, -0.332415, 0.392113,
		0.179505, 0.521080, 0.834418,
		41.624519, 41.506050, 34.314789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849709, 41.467873, 33.845894>,  <41.498867, 41.141296, 33.730698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849709, 41.467873, 33.845894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102654, 41.698132, 34.053257>,  <41.254421, 41.836288, 34.177673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102654, 41.698132, 34.053257>,  <40.849709, 41.467873, 33.845894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102654, 41.698132, 34.053257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411195, 0.816566, -0.405140,
		-0.656532, 0.043029, 0.753070,
		0.632364, 0.575646, 0.518409,
		41.292362, 41.870827, 34.208778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438503, 41.973141, 34.235664>,  <40.849709, 41.467873, 33.845894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438503, 41.973141, 34.235664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790371, 42.114441, 34.108292>,  <41.001492, 42.199219, 34.031868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790371, 42.114441, 34.108292>,  <40.438503, 41.973141, 34.235664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790371, 42.114441, 34.108292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456839, 0.813766, -0.359282,
		0.132216, 0.461522, 0.877221,
		0.879669, 0.353246, -0.318434,
		41.054272, 42.220413, 34.012760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540886, 42.700840, 34.432678>,  <40.438503, 41.973141, 34.235664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540886, 42.700840, 34.432678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767792, 42.650135, 34.107189>,  <40.903934, 42.619713, 33.911896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767792, 42.650135, 34.107189>,  <40.540886, 42.700840, 34.432678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767792, 42.650135, 34.107189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307185, 0.884200, -0.351892,
		0.764098, 0.449579, 0.462636,
		0.567266, -0.126765, -0.813720,
		40.937973, 42.612106, 33.863071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633541, 43.383793, 34.260216>,  <40.540886, 42.700840, 34.432678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633541, 43.383793, 34.260216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732746, 43.166252, 33.939537>,  <40.792271, 43.035728, 33.747131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732746, 43.166252, 33.939537>,  <40.633541, 43.383793, 34.260216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732746, 43.166252, 33.939537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132631, 0.800695, -0.584206,
		0.959634, 0.251223, 0.126454,
		0.248017, -0.543852, -0.801694,
		40.807152, 43.003098, 33.699028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836597, 43.868736, 33.872089>,  <40.633541, 43.383793, 34.260216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836597, 43.868736, 33.872089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794605, 43.565292, 33.614876>,  <40.769409, 43.383224, 33.460548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794605, 43.565292, 33.614876>,  <40.836597, 43.868736, 33.872089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794605, 43.565292, 33.614876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000692, 0.646547, -0.762874,
		0.994474, -0.080530, -0.067348,
		-0.104977, -0.758612, -0.643030,
		40.763111, 43.337708, 33.421967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302681, 43.799278, 33.255428>,  <40.836597, 43.868736, 33.872089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302681, 43.799278, 33.255428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962158, 43.624718, 33.138924>,  <40.757843, 43.519981, 33.069019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962158, 43.624718, 33.138924>,  <41.302681, 43.799278, 33.255428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962158, 43.624718, 33.138924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021643, 0.583874, -0.811556,
		0.524220, -0.684580, -0.506501,
		-0.851308, -0.436396, -0.291262,
		40.706768, 43.493797, 33.051544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356560, 43.294197, 32.849545>,  <41.302681, 43.799278, 33.255428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356560, 43.294197, 32.849545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122681, 43.429173, 32.554451>,  <40.982353, 43.510159, 32.377396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122681, 43.429173, 32.554451>,  <41.356560, 43.294197, 32.849545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122681, 43.429173, 32.554451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619407, -0.401568, -0.674595,
		-0.523889, -0.851396, 0.025782,
		-0.584701, 0.337443, -0.737738,
		40.947269, 43.530407, 32.333130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370251, 42.723724, 32.441643>,  <41.356560, 43.294197, 32.849545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370251, 42.723724, 32.441643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253418, 43.038155, 32.223736>,  <41.183319, 43.226814, 32.092991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253418, 43.038155, 32.223736>,  <41.370251, 42.723724, 32.441643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253418, 43.038155, 32.223736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522066, -0.346207, -0.779479,
		-0.801333, -0.512075, -0.309264,
		-0.292082, 0.786079, -0.544764,
		41.165794, 43.273979, 32.060307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970394, 42.415974, 31.901379>,  <41.370251, 42.723724, 32.441643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970394, 42.415974, 31.901379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049892, 42.404877, 31.509516>,  <41.097591, 42.398220, 31.274397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049892, 42.404877, 31.509516>,  <40.970394, 42.415974, 31.901379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049892, 42.404877, 31.509516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659010, -0.736087, 0.154537,
		-0.725401, -0.676318, -0.128015,
		0.198746, -0.027738, -0.979658,
		41.109516, 42.396557, 31.215618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834648, 41.749622, 31.582869>,  <40.970394, 42.415974, 31.901379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834648, 41.749622, 31.582869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112492, 41.931728, 31.360065>,  <41.279198, 42.040993, 31.226383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112492, 41.931728, 31.360065>,  <40.834648, 41.749622, 31.582869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112492, 41.931728, 31.360065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600678, -0.793108, 0.100822,
		-0.395868, -0.404614, -0.824364,
		0.694604, 0.455265, -0.557009,
		41.320873, 42.068306, 31.192963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115692, 41.266521, 31.102022>,  <40.834648, 41.749622, 31.582869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115692, 41.266521, 31.102022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391861, 41.550953, 31.155212>,  <41.557564, 41.721611, 31.187126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391861, 41.550953, 31.155212>,  <41.115692, 41.266521, 31.102022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391861, 41.550953, 31.155212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622223, -0.677494, 0.392224,
		0.368992, -0.188060, -0.910208,
		0.690422, 0.711080, 0.132975,
		41.598988, 41.764278, 31.195105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777542, 41.094666, 30.754852>,  <41.115692, 41.266521, 31.102022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777542, 41.094666, 30.754852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827904, 41.333015, 31.072111>,  <41.858120, 41.476025, 31.262466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827904, 41.333015, 31.072111>,  <41.777542, 41.094666, 30.754852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827904, 41.333015, 31.072111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598851, -0.683059, 0.418100,
		0.790901, 0.422337, -0.442840,
		0.125907, 0.595871, 0.793149,
		41.865677, 41.511776, 31.310057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518093, 41.091549, 30.944860>,  <41.777542, 41.094666, 30.754852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518093, 41.091549, 30.944860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277405, 41.176491, 31.252844>,  <42.132992, 41.227455, 31.437634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277405, 41.176491, 31.252844>,  <42.518093, 41.091549, 30.944860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277405, 41.176491, 31.252844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410546, -0.744676, 0.526222,
		0.685113, 0.632743, 0.360910,
		-0.601724, 0.212352, 0.769958,
		42.096886, 41.240196, 31.483831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897293, 41.254581, 31.607401>,  <42.518093, 41.091549, 30.944860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897293, 41.254581, 31.607401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541328, 41.099277, 31.703154>,  <42.327747, 41.006096, 31.760605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541328, 41.099277, 31.703154>,  <42.897293, 41.254581, 31.607401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541328, 41.099277, 31.703154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455472, -0.728336, 0.511928,
		-0.024414, 0.564604, 0.825001,
		-0.889915, -0.388263, 0.239380,
		42.274353, 40.982800, 31.774967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993603, 41.042957, 32.249981>,  <42.897293, 41.254581, 31.607401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993603, 41.042957, 32.249981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655960, 40.866100, 32.128658>,  <42.453373, 40.759987, 32.055866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655960, 40.866100, 32.128658>,  <42.993603, 41.042957, 32.249981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655960, 40.866100, 32.128658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254038, -0.827955, 0.499955,
		-0.472172, 0.344966, 0.811204,
		-0.844108, -0.442141, -0.303302,
		42.402729, 40.733459, 32.037666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698917, 40.624619, 32.868187>,  <42.993603, 41.042957, 32.249981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698917, 40.624619, 32.868187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538029, 40.471344, 32.535587>,  <42.441494, 40.379379, 32.336029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538029, 40.471344, 32.535587>,  <42.698917, 40.624619, 32.868187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538029, 40.471344, 32.535587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193336, -0.923270, 0.331953,
		-0.894895, -0.027239, 0.445444,
		-0.402223, -0.383184, -0.831497,
		42.417362, 40.356388, 32.286137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340611, 40.025089, 33.080448>,  <42.698917, 40.624619, 32.868187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340611, 40.025089, 33.080448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333782, 39.955341, 32.686634>,  <42.329685, 39.913494, 32.450348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333782, 39.955341, 32.686634>,  <42.340611, 40.025089, 33.080448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333782, 39.955341, 32.686634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092729, -0.980709, 0.172083,
		-0.995545, -0.088357, 0.032907,
		-0.017067, -0.174368, -0.984533,
		42.328663, 39.903030, 32.391273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904839, 39.418369, 32.916565>,  <42.340611, 40.025089, 33.080448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904839, 39.418369, 32.916565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177692, 39.441494, 32.624992>,  <42.341404, 39.455368, 32.450047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177692, 39.441494, 32.624992>,  <41.904839, 39.418369, 32.916565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177692, 39.441494, 32.624992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458025, -0.810858, 0.364311,
		-0.570002, -0.582381, -0.579595,
		0.682137, 0.057811, -0.728935,
		42.382332, 39.458836, 32.406311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974579, 38.763504, 32.486233>,  <41.904839, 39.418369, 32.916565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974579, 38.763504, 32.486233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319031, 38.963875, 32.520912>,  <42.525703, 39.084099, 32.541721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319031, 38.963875, 32.520912>,  <41.974579, 38.763504, 32.486233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319031, 38.963875, 32.520912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446875, -0.827177, 0.340705,
		0.242385, -0.254649, -0.936164,
		0.861134, 0.500931, 0.086699,
		42.577370, 39.114155, 32.546921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428192, 38.222748, 32.574074>,  <41.974579, 38.763504, 32.486233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428192, 38.222748, 32.574074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681576, 38.524757, 32.641796>,  <42.833607, 38.705963, 32.682430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.681576, 38.524757, 32.641796>,  <42.428192, 38.222748, 32.574074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.681576, 38.524757, 32.641796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564973, -0.600824, 0.565523,
		0.528707, -0.262583, -0.807167,
		0.633462, 0.755023, 0.169308,
		42.871616, 38.751263, 32.692589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165710, 37.886185, 32.494186>,  <42.428192, 38.222748, 32.574074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165710, 37.886185, 32.494186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216000, 38.239941, 32.673988>,  <43.246174, 38.452194, 32.781872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216000, 38.239941, 32.673988>,  <43.165710, 37.886185, 32.494186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216000, 38.239941, 32.673988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680034, -0.406728, 0.610021,
		0.722321, 0.228988, -0.652546,
		0.125721, 0.884385, 0.449508,
		43.253716, 38.505257, 32.808842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915287, 38.020336, 32.532532>,  <43.165710, 37.886185, 32.494186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915287, 38.020336, 32.532532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720444, 38.216465, 32.821617>,  <43.603539, 38.334141, 32.995068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720444, 38.216465, 32.821617>,  <43.915287, 38.020336, 32.532532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720444, 38.216465, 32.821617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610765, -0.400246, 0.683205,
		0.624249, 0.774204, -0.104504,
		-0.487113, 0.490318, 0.722710,
		43.574310, 38.363560, 33.038429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435863, 38.094067, 33.027863>,  <43.915287, 38.020336, 32.532532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435863, 38.094067, 33.027863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113693, 38.206615, 33.236523>,  <43.920391, 38.274143, 33.361721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113693, 38.206615, 33.236523>,  <44.435863, 38.094067, 33.027863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113693, 38.206615, 33.236523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403816, -0.383738, 0.830468,
		0.433849, 0.879531, 0.195449,
		-0.805423, 0.281373, 0.521653,
		43.872066, 38.291027, 33.393017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650963, 38.673981, 33.567215>,  <44.435863, 38.094067, 33.027863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650963, 38.673981, 33.567215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330112, 38.467560, 33.687401>,  <44.137600, 38.343708, 33.759510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330112, 38.467560, 33.687401>,  <44.650963, 38.673981, 33.567215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330112, 38.467560, 33.687401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488224, -0.277032, 0.827581,
		-0.343838, 0.810520, 0.474165,
		-0.802130, -0.516052, 0.300461,
		44.089474, 38.312744, 33.777538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761692, 38.683407, 34.240723>,  <44.650963, 38.673981, 33.567215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761692, 38.683407, 34.240723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465298, 38.420353, 34.186378>,  <44.287460, 38.262520, 34.153770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465298, 38.420353, 34.186378>,  <44.761692, 38.683407, 34.240723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465298, 38.420353, 34.186378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261528, -0.468954, 0.843615,
		-0.618506, 0.589571, 0.519477,
		-0.740981, -0.657639, -0.135861,
		44.243004, 38.223061, 34.145618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487602, 38.659523, 34.859478>,  <44.761692, 38.683407, 34.240723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487602, 38.659523, 34.859478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362034, 38.321541, 34.686272>,  <44.286694, 38.118752, 34.582348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362034, 38.321541, 34.686272>,  <44.487602, 38.659523, 34.859478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362034, 38.321541, 34.686272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268126, -0.516407, 0.813285,
		-0.910802, 0.139206, 0.388666,
		-0.313924, -0.844953, -0.433019,
		44.267857, 38.068054, 34.556366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209785, 38.251858, 35.412853>,  <44.487602, 38.659523, 34.859478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209785, 38.251858, 35.412853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257778, 37.995701, 35.109406>,  <44.286575, 37.842007, 34.927338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257778, 37.995701, 35.109406>,  <44.209785, 38.251858, 35.412853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257778, 37.995701, 35.109406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312293, -0.701005, 0.641145,
		-0.942379, -0.313836, 0.115883,
		0.119980, -0.640390, -0.758621,
		44.293774, 37.803585, 34.881821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898300, 37.676350, 35.672478>,  <44.209785, 38.251858, 35.412853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898300, 37.676350, 35.672478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168659, 37.594009, 35.389412>,  <44.330875, 37.544605, 35.219574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168659, 37.594009, 35.389412>,  <43.898300, 37.676350, 35.672478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168659, 37.594009, 35.389412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395890, -0.708493, 0.584217,
		-0.621637, -0.675027, -0.397373,
		0.675898, -0.205855, -0.707662,
		44.371429, 37.532253, 35.177113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814537, 37.023880, 35.651100>,  <43.898300, 37.676350, 35.672478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814537, 37.023880, 35.651100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178299, 37.114204, 35.511387>,  <44.396557, 37.168400, 35.427559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178299, 37.114204, 35.511387>,  <43.814537, 37.023880, 35.651100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178299, 37.114204, 35.511387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410212, -0.625571, 0.663617,
		-0.068652, -0.746775, -0.661525,
		0.909403, 0.225807, -0.349282,
		44.451118, 37.181946, 35.406601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150303, 36.481476, 35.856640>,  <43.814537, 37.023880, 35.651100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150303, 36.481476, 35.856640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445576, 36.730885, 35.753639>,  <44.622742, 36.880527, 35.691837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445576, 36.730885, 35.753639>,  <44.150303, 36.481476, 35.856640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445576, 36.730885, 35.753639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615109, -0.465389, 0.636438,
		0.276992, -0.628202, -0.727075,
		0.738184, 0.623519, -0.257504,
		44.667030, 36.917942, 35.676388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793026, 36.129341, 35.685780>,  <44.150303, 36.481476, 35.856640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793026, 36.129341, 35.685780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942478, 36.494953, 35.748974>,  <45.032150, 36.714321, 35.786888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942478, 36.494953, 35.748974>,  <44.793026, 36.129341, 35.685780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942478, 36.494953, 35.748974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853896, -0.405448, 0.326302,
		0.362302, 0.012985, -0.931970,
		0.373629, 0.914026, 0.157983,
		45.054565, 36.769161, 35.796368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467396, 36.148567, 35.562614>,  <44.793026, 36.129341, 35.685780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467396, 36.148567, 35.562614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427925, 36.462429, 35.807426>,  <45.404243, 36.650745, 35.954315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.427925, 36.462429, 35.807426>,  <45.467396, 36.148567, 35.562614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427925, 36.462429, 35.807426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781676, -0.319493, 0.535637,
		0.615829, 0.531268, -0.581815,
		-0.098681, 0.784652, 0.612032,
		45.398319, 36.697826, 35.991035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115498, 36.308594, 35.643597>,  <45.467396, 36.148567, 35.562614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115498, 36.308594, 35.643597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901527, 36.454346, 35.948509>,  <45.773144, 36.541798, 36.131458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901527, 36.454346, 35.948509>,  <46.115498, 36.308594, 35.643597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901527, 36.454346, 35.948509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673424, -0.360986, 0.645128,
		0.510246, 0.858438, -0.052282,
		-0.534929, 0.364381, 0.762284,
		45.741047, 36.563660, 36.177193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553066, 36.055828, 35.013290>,  <46.115498, 36.308594, 35.643597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553066, 36.055828, 35.013290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485928, 35.699100, 35.181332>,  <46.445644, 35.485065, 35.282158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485928, 35.699100, 35.181332>,  <46.553066, 36.055828, 35.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485928, 35.699100, 35.181332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973901, -0.216056, -0.069548,
		0.152790, 0.397467, 0.904807,
		-0.167846, -0.891818, 0.420105,
		46.435574, 35.431557, 35.307362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.883255, 35.858162, 35.587601>,  <46.553066, 36.055828, 35.013290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.883255, 35.858162, 35.587601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.832634, 35.540581, 35.349739>,  <46.802261, 35.350033, 35.207020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.832634, 35.540581, 35.349739>,  <46.883255, 35.858162, 35.587601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.832634, 35.540581, 35.349739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980141, -0.007823, -0.198147,
		0.152668, -0.607923, 0.779180,
		-0.126554, -0.793957, -0.594656,
		46.794666, 35.302395, 35.171341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447624, 35.317017, 35.796494>,  <46.883255, 35.858162, 35.587601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447624, 35.317017, 35.796494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330975, 35.300167, 35.414249>,  <47.260986, 35.290058, 35.184902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330975, 35.300167, 35.414249>,  <47.447624, 35.317017, 35.796494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330975, 35.300167, 35.414249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956526, -0.016863, -0.291158,
		-0.003850, -0.998970, 0.045210,
		-0.291620, -0.042124, -0.955606,
		47.243488, 35.287529, 35.127567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.824509, 34.811977, 35.483971>,  <47.447624, 35.317017, 35.796494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.824509, 34.811977, 35.483971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699917, 35.079445, 35.213898>,  <47.625160, 35.239925, 35.051853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699917, 35.079445, 35.213898>,  <47.824509, 34.811977, 35.483971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.699917, 35.079445, 35.213898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936760, 0.096758, -0.336332,
		-0.159565, -0.737240, -0.656518,
		-0.311481, 0.668666, -0.675178,
		47.606472, 35.280045, 35.011345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.983322, 39.690952, 46.997620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583637, 39.683807, 46.983437>,  <33.343826, 39.679520, 46.974926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583637, 39.683807, 46.983437>,  <33.983322, 39.690952, 46.997620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583637, 39.683807, 46.983437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037154, -0.105802, -0.993693,
		0.014004, -0.994227, 0.106382,
		-0.999212, -0.017868, -0.035458,
		33.283875, 39.678448, 46.972797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839703, 39.149895, 46.587315>,  <33.983322, 39.690952, 46.997620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839703, 39.149895, 46.587315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490437, 39.344616, 46.577415>,  <33.280876, 39.461449, 46.571476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490437, 39.344616, 46.577415>,  <33.839703, 39.149895, 46.587315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490437, 39.344616, 46.577415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101481, -0.231210, -0.967597,
		-0.476751, -0.842357, 0.251285,
		-0.873161, 0.486803, -0.024747,
		33.228489, 39.490658, 46.569992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400139, 38.699787, 46.141556>,  <33.839703, 39.149895, 46.587315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400139, 38.699787, 46.141556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.229328, 39.061081, 46.124550>,  <33.126842, 39.277859, 46.114346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.229328, 39.061081, 46.124550>,  <33.400139, 38.699787, 46.141556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229328, 39.061081, 46.124550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160178, -0.121836, -0.979540,
		-0.889939, -0.411479, 0.196706,
		-0.427027, 0.903239, -0.042517,
		33.101219, 39.332054, 46.111794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744598, 38.598999, 45.851894>,  <33.400139, 38.699787, 46.141556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744598, 38.598999, 45.851894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.848221, 38.983315, 45.812351>,  <32.910393, 39.213905, 45.788624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.848221, 38.983315, 45.812351>,  <32.744598, 38.598999, 45.851894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848221, 38.983315, 45.812351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217507, -0.041690, -0.975168,
		-0.941053, 0.274126, 0.198179,
		0.259056, 0.960790, -0.098857,
		32.925938, 39.271553, 45.782696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157585, 38.987659, 45.469666>,  <32.744598, 38.598999, 45.851894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157585, 38.987659, 45.469666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.497787, 39.191429, 45.417305>,  <32.701908, 39.313690, 45.385887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.497787, 39.191429, 45.417305>,  <32.157585, 38.987659, 45.469666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497787, 39.191429, 45.417305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206476, 0.094473, -0.973880,
		-0.483748, 0.855316, 0.185533,
		0.850503, 0.509421, -0.130902,
		32.752937, 39.344254, 45.378033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912004, 39.588470, 45.027046>,  <32.157585, 38.987659, 45.469666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912004, 39.588470, 45.027046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.310642, 39.575611, 44.996670>,  <32.549824, 39.567898, 44.978443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.310642, 39.575611, 44.996670>,  <31.912004, 39.588470, 45.027046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310642, 39.575611, 44.996670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077461, -0.048899, -0.995795,
		0.028298, 0.998286, -0.051223,
		0.996594, -0.032146, -0.075945,
		32.609619, 39.565968, 44.973885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039600, 39.986885, 44.379852>,  <31.912004, 39.588470, 45.027046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039600, 39.986885, 44.379852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.378582, 39.792904, 44.466232>,  <32.581970, 39.676514, 44.518063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.378582, 39.792904, 44.466232>,  <32.039600, 39.986885, 44.379852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378582, 39.792904, 44.466232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135733, -0.195331, -0.971299,
		0.513221, 0.852445, -0.099710,
		0.847456, -0.484957, 0.215953,
		32.632820, 39.647415, 44.531017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447636, 40.220337, 43.851212>,  <32.039600, 39.986885, 44.379852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447636, 40.220337, 43.851212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630363, 39.888878, 43.980621>,  <32.740002, 39.690002, 44.058266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.630363, 39.888878, 43.980621>,  <32.447636, 40.220337, 43.851212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630363, 39.888878, 43.980621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332113, -0.178520, -0.926192,
		0.825238, 0.530549, 0.193651,
		0.456819, -0.828643, 0.323523,
		32.767410, 39.640285, 44.077679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109943, 40.299461, 43.739002>,  <32.447636, 40.220337, 43.851212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109943, 40.299461, 43.739002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.026917, 39.908531, 43.755726>,  <32.977100, 39.673973, 43.765759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.026917, 39.908531, 43.755726>,  <33.109943, 40.299461, 43.739002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026917, 39.908531, 43.755726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539864, -0.150090, -0.828263,
		0.815759, -0.149346, 0.558778,
		-0.207565, -0.977327, 0.041810,
		32.964645, 39.615334, 43.768269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751217, 39.958652, 43.648689>,  <33.109943, 40.299461, 43.739002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751217, 39.958652, 43.648689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.494801, 39.684368, 43.510780>,  <33.340950, 39.519798, 43.428036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.494801, 39.684368, 43.510780>,  <33.751217, 39.958652, 43.648689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494801, 39.684368, 43.510780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631704, -0.216254, -0.744435,
		0.435912, -0.695004, 0.571795,
		-0.641039, -0.685714, -0.344770,
		33.302490, 39.478653, 43.407349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194626, 39.446468, 43.408268>,  <33.751217, 39.958652, 43.648689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194626, 39.446468, 43.408268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851452, 39.356968, 43.223278>,  <33.645546, 39.303268, 43.112286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.851452, 39.356968, 43.223278>,  <34.194626, 39.446468, 43.408268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851452, 39.356968, 43.223278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510339, -0.267462, -0.817324,
		0.059185, -0.937229, 0.343656,
		-0.857934, -0.223755, -0.462474,
		33.594070, 39.289841, 43.084538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319424, 38.932888, 42.989880>,  <34.194626, 39.446468, 43.408268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319424, 38.932888, 42.989880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.991943, 39.064018, 42.801304>,  <33.795456, 39.142696, 42.688160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.991943, 39.064018, 42.801304>,  <34.319424, 38.932888, 42.989880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991943, 39.064018, 42.801304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401071, -0.261084, -0.878053,
		-0.410937, -0.907944, 0.082267,
		-0.818702, 0.327829, -0.471439,
		33.746334, 39.162365, 42.659874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197746, 38.479172, 42.445293>,  <34.319424, 38.932888, 42.989880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197746, 38.479172, 42.445293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.989166, 38.800552, 42.330360>,  <33.864017, 38.993382, 42.261402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.989166, 38.800552, 42.330360>,  <34.197746, 38.479172, 42.445293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989166, 38.800552, 42.330360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265178, -0.167473, -0.949544,
		-0.811029, -0.571336, -0.125727,
		-0.521452, 0.803448, -0.287331,
		33.832729, 39.041588, 42.244160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817291, 38.268059, 41.842487>,  <34.197746, 38.479172, 42.445293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817291, 38.268059, 41.842487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791664, 38.664608, 41.796734>,  <33.776287, 38.902538, 41.769279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791664, 38.664608, 41.796734>,  <33.817291, 38.268059, 41.842487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791664, 38.664608, 41.796734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228092, -0.097041, -0.968791,
		-0.971529, -0.088155, -0.219906,
		-0.064064, 0.991368, -0.114386,
		33.772446, 38.962017, 41.762417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553349, 38.419422, 41.126038>,  <33.817291, 38.268059, 41.842487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553349, 38.419422, 41.126038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.733482, 38.758774, 41.237362>,  <33.841564, 38.962383, 41.304157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.733482, 38.758774, 41.237362>,  <33.553349, 38.419422, 41.126038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733482, 38.758774, 41.237362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445743, 0.056467, -0.893378,
		-0.773636, 0.526375, -0.352728,
		0.450334, 0.848375, 0.278313,
		33.868584, 39.013287, 41.320854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423973, 38.752205, 40.555199>,  <33.553349, 38.419422, 41.126038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423973, 38.752205, 40.555199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.721741, 38.951721, 40.732761>,  <33.900402, 39.071430, 40.839298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.721741, 38.951721, 40.732761>,  <33.423973, 38.752205, 40.555199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721741, 38.951721, 40.732761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488500, 0.046401, -0.871329,
		-0.455208, 0.865480, -0.209117,
		0.744415, 0.498790, 0.443909,
		33.945065, 39.101357, 40.865932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618183, 39.167110, 40.070766>,  <33.423973, 38.752205, 40.555199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618183, 39.167110, 40.070766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.945705, 39.169777, 40.300377>,  <34.142220, 39.171379, 40.438145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.945705, 39.169777, 40.300377>,  <33.618183, 39.167110, 40.070766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945705, 39.169777, 40.300377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534530, -0.373534, -0.758123,
		0.209363, 0.927593, -0.309417,
		0.818807, 0.006670, 0.574030,
		34.191349, 39.171780, 40.472588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066467, 39.513447, 39.685448>,  <33.618183, 39.167110, 40.070766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066467, 39.513447, 39.685448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292313, 39.337093, 39.964542>,  <34.427818, 39.231281, 40.132000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292313, 39.337093, 39.964542>,  <34.066467, 39.513447, 39.685448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292313, 39.337093, 39.964542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638962, -0.301617, -0.707640,
		0.522439, 0.845367, 0.111414,
		0.564611, -0.440888, 0.697734,
		34.461697, 39.204826, 40.173862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712009, 39.682579, 39.556568>,  <34.066467, 39.513447, 39.685448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712009, 39.682579, 39.556568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803986, 39.354649, 39.766335>,  <34.859169, 39.157890, 39.892193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.803986, 39.354649, 39.766335>,  <34.712009, 39.682579, 39.556568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803986, 39.354649, 39.766335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735180, -0.206755, -0.645571,
		0.637682, 0.533982, 0.555180,
		0.229937, -0.819827, 0.524417,
		34.872967, 39.108700, 39.923660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501759, 39.691269, 39.750095>,  <34.712009, 39.682579, 39.556568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501759, 39.691269, 39.750095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393341, 39.306351, 39.759171>,  <35.328289, 39.075397, 39.764618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.393341, 39.306351, 39.759171>,  <35.501759, 39.691269, 39.750095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393341, 39.306351, 39.759171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772470, -0.231519, -0.591345,
		0.574304, -0.142753, 0.806100,
		-0.271044, -0.962300, 0.022690,
		35.312027, 39.017662, 39.765976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097980, 39.233196, 40.011444>,  <35.501759, 39.691269, 39.750095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097980, 39.233196, 40.011444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853024, 38.983818, 39.817005>,  <35.706051, 38.834190, 39.700340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853024, 38.983818, 39.817005>,  <36.097980, 39.233196, 40.011444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853024, 38.983818, 39.817005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770430, -0.332798, -0.543767,
		0.177237, -0.707503, 0.684125,
		-0.612392, -0.623446, -0.486097,
		35.669308, 38.796783, 39.671177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482410, 38.644157, 39.861759>,  <36.097980, 39.233196, 40.011444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482410, 38.644157, 39.861759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167221, 38.598946, 39.619663>,  <35.978107, 38.571819, 39.474407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.167221, 38.598946, 39.619663>,  <36.482410, 38.644157, 39.861759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167221, 38.598946, 39.619663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578794, -0.471214, -0.665548,
		-0.209972, -0.874746, 0.436727,
		-0.787978, -0.113029, -0.605240,
		35.930828, 38.565037, 39.438091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227188, 38.947414, 39.625580>,  <36.482410, 38.644157, 39.861759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227188, 38.947414, 39.625580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625492, 38.981030, 39.640572>,  <37.864475, 39.001198, 39.649567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.625492, 38.981030, 39.640572>,  <37.227188, 38.947414, 39.625580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625492, 38.981030, 39.640572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050511, 0.158737, 0.986028,
		0.076913, -0.983738, 0.162309,
		0.995758, 0.084037, 0.037481,
		37.924221, 39.006241, 39.651817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523945, 38.385921, 40.080978>,  <37.227188, 38.947414, 39.625580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523945, 38.385921, 40.080978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794357, 38.680172, 40.063881>,  <37.956604, 38.856724, 40.053623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794357, 38.680172, 40.063881>,  <37.523945, 38.385921, 40.080978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794357, 38.680172, 40.063881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127548, 0.173947, 0.976460,
		0.725748, -0.654668, 0.211422,
		0.676033, 0.735631, -0.042740,
		37.997166, 38.900860, 40.051060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121597, 38.202953, 40.535400>,  <37.523945, 38.385921, 40.080978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121597, 38.202953, 40.535400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113171, 38.597466, 40.469902>,  <38.108116, 38.834171, 40.430603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113171, 38.597466, 40.469902>,  <38.121597, 38.202953, 40.535400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113171, 38.597466, 40.469902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091118, 0.164997, 0.982076,
		0.995617, 0.005766, -0.093344,
		-0.021064, 0.986277, -0.163748,
		38.106850, 38.893349, 40.420776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649986, 38.421078, 41.027660>,  <38.121597, 38.202953, 40.535400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649986, 38.421078, 41.027660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411201, 38.725811, 40.927059>,  <38.267929, 38.908649, 40.866699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.411201, 38.725811, 40.927059>,  <38.649986, 38.421078, 41.027660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411201, 38.725811, 40.927059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204570, 0.158582, 0.965921,
		0.775750, 0.628068, 0.061180,
		-0.596961, 0.761829, -0.251504,
		38.232113, 38.954361, 40.851608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939465, 38.975685, 41.409424>,  <38.649986, 38.421078, 41.027660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939465, 38.975685, 41.409424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557434, 39.038570, 41.308937>,  <38.328217, 39.076302, 41.248646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557434, 39.038570, 41.308937>,  <38.939465, 38.975685, 41.409424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557434, 39.038570, 41.308937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234960, 0.114921, 0.965187,
		0.180611, 0.980855, -0.072819,
		-0.955078, 0.157214, -0.251218,
		38.270912, 39.085735, 41.233570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659054, 39.523476, 41.765526>,  <38.939465, 38.975685, 41.409424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659054, 39.523476, 41.765526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329166, 39.320465, 41.665726>,  <38.131233, 39.198658, 41.605846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329166, 39.320465, 41.665726>,  <38.659054, 39.523476, 41.765526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329166, 39.320465, 41.665726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364724, 0.140139, 0.920509,
		-0.432218, 0.850163, -0.300682,
		-0.824721, -0.507527, -0.249505,
		38.081749, 39.168205, 41.590874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132248, 39.900433, 41.975670>,  <38.659054, 39.523476, 41.765526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132248, 39.900433, 41.975670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936749, 39.555855, 41.920475>,  <37.819447, 39.349110, 41.887356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.936749, 39.555855, 41.920475>,  <38.132248, 39.900433, 41.975670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936749, 39.555855, 41.920475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537048, 0.172429, 0.825741,
		-0.687533, 0.477689, -0.546910,
		-0.488751, -0.861441, -0.137991,
		37.790123, 39.297424, 41.879078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427807, 40.081455, 42.041451>,  <38.132248, 39.900433, 41.975670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427807, 40.081455, 42.041451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483921, 39.695293, 42.129372>,  <37.517590, 39.463596, 42.182125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483921, 39.695293, 42.129372>,  <37.427807, 40.081455, 42.041451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483921, 39.695293, 42.129372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413460, 0.144598, 0.898967,
		-0.899651, -0.216990, -0.378872,
		0.140283, -0.965405, 0.219805,
		37.526005, 39.405670, 42.195312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708759, 39.680359, 42.264816>,  <37.427807, 40.081455, 42.041451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708759, 39.680359, 42.264816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005398, 39.450630, 42.403492>,  <37.183380, 39.312794, 42.486698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005398, 39.450630, 42.403492>,  <36.708759, 39.680359, 42.264816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005398, 39.450630, 42.403492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471391, -0.078421, 0.878431,
		-0.477311, -0.814867, -0.328885,
		0.741596, -0.574318, 0.346690,
		37.227879, 39.278336, 42.507500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453026, 39.050732, 42.511024>,  <36.708759, 39.680359, 42.264816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453026, 39.050732, 42.511024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802753, 39.113636, 42.694691>,  <37.012589, 39.151379, 42.804890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802753, 39.113636, 42.694691>,  <36.453026, 39.050732, 42.511024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802753, 39.113636, 42.694691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433828, -0.170972, 0.884625,
		0.217620, -0.972645, -0.081261,
		0.874320, 0.157259, 0.459167,
		37.065048, 39.160812, 42.832439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391331, 38.713551, 43.139889>,  <36.453026, 39.050732, 42.511024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391331, 38.713551, 43.139889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724915, 38.929478, 43.185696>,  <36.925064, 39.059032, 43.213181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.724915, 38.929478, 43.185696>,  <36.391331, 38.713551, 43.139889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724915, 38.929478, 43.185696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186900, 0.081046, 0.979030,
		0.519216, -0.837872, 0.168480,
		0.833956, 0.539817, 0.114518,
		36.975101, 39.091423, 43.220051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856403, 38.365078, 43.670933>,  <36.391331, 38.713551, 43.139889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856403, 38.365078, 43.670933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936707, 38.756611, 43.654987>,  <36.984886, 38.991531, 43.645420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.936707, 38.756611, 43.654987>,  <36.856403, 38.365078, 43.670933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936707, 38.756611, 43.654987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183114, 0.077471, 0.980034,
		0.962375, -0.189447, 0.194791,
		0.200755, 0.978830, -0.039866,
		36.996933, 39.050259, 43.643028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048977, 38.506832, 44.376713>,  <36.856403, 38.365078, 43.670933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048977, 38.506832, 44.376713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010059, 38.877598, 44.231739>,  <36.986710, 39.100060, 44.144753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010059, 38.877598, 44.231739>,  <37.048977, 38.506832, 44.376713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010059, 38.877598, 44.231739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275874, 0.324780, 0.904661,
		0.956258, 0.188001, 0.224114,
		-0.097289, 0.926916, -0.362437,
		36.980873, 39.155674, 44.123009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435307, 38.988247, 44.825748>,  <37.048977, 38.506832, 44.376713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435307, 38.988247, 44.825748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173542, 39.218132, 44.629200>,  <37.016483, 39.356064, 44.511272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173542, 39.218132, 44.629200>,  <37.435307, 38.988247, 44.825748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173542, 39.218132, 44.629200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349390, 0.346472, 0.870565,
		0.670574, 0.741389, -0.025937,
		-0.654414, 0.574716, -0.491369,
		36.977219, 39.390549, 44.481789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541981, 39.658173, 45.119522>,  <37.435307, 38.988247, 44.825748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541981, 39.658173, 45.119522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170555, 39.661369, 44.971088>,  <36.947701, 39.663288, 44.882027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.170555, 39.661369, 44.971088>,  <37.541981, 39.658173, 45.119522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170555, 39.661369, 44.971088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294975, 0.590965, 0.750833,
		0.225300, 0.806658, -0.546391,
		-0.928563, 0.007992, -0.371088,
		36.891987, 39.663765, 44.859760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264557, 40.228428, 45.316437>,  <37.541981, 39.658173, 45.119522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264557, 40.228428, 45.316437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925499, 40.034317, 45.230640>,  <36.722065, 39.917850, 45.179161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925499, 40.034317, 45.230640>,  <37.264557, 40.228428, 45.316437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925499, 40.034317, 45.230640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441551, 0.421072, 0.792295,
		-0.294165, 0.766293, -0.571193,
		-0.847643, -0.485276, -0.214493,
		36.671207, 39.888733, 45.166294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745861, 40.704842, 45.394035>,  <37.264557, 40.228428, 45.316437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745861, 40.704842, 45.394035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548267, 40.358913, 45.429974>,  <36.429710, 40.151356, 45.451538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548267, 40.358913, 45.429974>,  <36.745861, 40.704842, 45.394035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548267, 40.358913, 45.429974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460221, 0.347744, 0.816867,
		-0.737684, 0.362168, -0.569786,
		-0.493983, -0.864817, 0.089848,
		36.400074, 40.099468, 45.456928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081860, 40.954922, 45.585579>,  <36.745861, 40.704842, 45.394035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081860, 40.954922, 45.585579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092766, 40.568676, 45.688995>,  <36.099308, 40.336929, 45.751045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092766, 40.568676, 45.688995>,  <36.081860, 40.954922, 45.585579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092766, 40.568676, 45.688995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422582, 0.223257, 0.878397,
		-0.905915, -0.133203, -0.401965,
		0.027264, -0.965616, 0.258540,
		36.100945, 40.278992, 45.766556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.223061, 40.676289, 45.946995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511463, 40.421700, 46.056576>,  <35.684505, 40.268948, 46.122326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511463, 40.421700, 46.056576>,  <35.223061, 40.676289, 45.946995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511463, 40.421700, 46.056576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323742, 0.040134, 0.945294,
		-0.612647, -0.770256, -0.177115,
		0.721010, -0.636471, 0.273952,
		35.727768, 40.230759, 46.138763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881466, 40.116600, 46.241158>,  <35.223061, 40.676289, 45.946995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881466, 40.116600, 46.241158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251011, 40.058331, 46.382725>,  <35.472736, 40.023369, 46.467667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.251011, 40.058331, 46.382725>,  <34.881466, 40.116600, 46.241158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251011, 40.058331, 46.382725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366865, -0.073624, 0.927356,
		-0.109042, -0.986588, -0.121464,
		0.923862, -0.145682, 0.353916,
		35.528168, 40.014629, 46.488899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862942, 39.488857, 46.590076>,  <34.881466, 40.116600, 46.241158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862942, 39.488857, 46.590076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128902, 39.750027, 46.735180>,  <35.288479, 39.906731, 46.822243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128902, 39.750027, 46.735180>,  <34.862942, 39.488857, 46.590076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128902, 39.750027, 46.735180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378658, -0.123976, 0.917196,
		0.643835, -0.747205, 0.164805,
		0.664901, 0.652928, 0.362756,
		35.328373, 39.945904, 46.844006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976254, 39.115818, 47.145664>,  <34.862942, 39.488857, 46.590076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976254, 39.115818, 47.145664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112286, 39.477554, 47.248825>,  <35.193905, 39.694595, 47.310722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112286, 39.477554, 47.248825>,  <34.976254, 39.115818, 47.145664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112286, 39.477554, 47.248825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148710, -0.219083, 0.964307,
		0.928565, -0.366291, 0.059980,
		0.340076, 0.904342, 0.257904,
		35.214310, 39.748856, 47.326195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230206, 39.023949, 47.780346>,  <34.976254, 39.115818, 47.145664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230206, 39.023949, 47.780346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.234528, 39.423832, 47.771782>,  <35.237122, 39.663761, 47.766644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.234528, 39.423832, 47.771782>,  <35.230206, 39.023949, 47.780346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234528, 39.423832, 47.771782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175272, 0.022977, 0.984252,
		0.984461, -0.006883, 0.175470,
		0.010806, 0.999712, -0.021413,
		35.237770, 39.723747, 47.765358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553864, 39.222672, 48.390842>,  <35.230206, 39.023949, 47.780346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553864, 39.222672, 48.390842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344036, 39.539062, 48.264866>,  <35.218140, 39.728897, 48.189281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.344036, 39.539062, 48.264866>,  <35.553864, 39.222672, 48.390842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344036, 39.539062, 48.264866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180914, 0.257911, 0.949080,
		0.831925, 0.554833, 0.007807,
		-0.524567, 0.790975, -0.314939,
		35.186665, 39.776356, 48.170383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897652, 39.851959, 48.731411>,  <35.553864, 39.222672, 48.390842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897652, 39.851959, 48.731411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525780, 39.946934, 48.618755>,  <35.302658, 40.003918, 48.551163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.525780, 39.946934, 48.618755>,  <35.897652, 39.851959, 48.731411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525780, 39.946934, 48.618755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187941, 0.351830, 0.917003,
		0.316814, 0.905451, -0.282466,
		-0.929681, 0.237432, -0.281636,
		35.246876, 40.018162, 48.534264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815731, 40.513294, 48.951653>,  <35.897652, 39.851959, 48.731411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815731, 40.513294, 48.951653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447437, 40.359451, 48.925331>,  <35.226460, 40.267147, 48.909538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447437, 40.359451, 48.925331>,  <35.815731, 40.513294, 48.951653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447437, 40.359451, 48.925331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215827, 0.361496, 0.907050,
		-0.325066, 0.849353, -0.415849,
		-0.920734, -0.384603, -0.065803,
		35.171219, 40.244072, 48.905590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414734, 41.076630, 49.200001>,  <35.815731, 40.513294, 48.951653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414734, 41.076630, 49.200001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181950, 40.751347, 49.198261>,  <35.042278, 40.556179, 49.197220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181950, 40.751347, 49.198261>,  <35.414734, 41.076630, 49.200001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181950, 40.751347, 49.198261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309291, 0.216391, 0.926021,
		-0.752105, 0.540252, -0.377448,
		-0.581961, -0.813205, -0.004346,
		35.007362, 40.507385, 49.196957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974339, 41.268105, 49.645790>,  <35.414734, 41.076630, 49.200001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974339, 41.268105, 49.645790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894135, 40.876419, 49.633579>,  <34.846012, 40.641407, 49.626251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894135, 40.876419, 49.633579>,  <34.974339, 41.268105, 49.645790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894135, 40.876419, 49.633579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318382, 0.035659, 0.947292,
		-0.926514, 0.199661, -0.318914,
		-0.200509, -0.979216, -0.030530,
		34.833981, 40.582653, 49.624420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163170, 41.171192, 49.798756>,  <34.974339, 41.268105, 49.645790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163170, 41.171192, 49.798756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340710, 40.824032, 49.887978>,  <34.447231, 40.615738, 49.941513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.340710, 40.824032, 49.887978>,  <34.163170, 41.171192, 49.798756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340710, 40.824032, 49.887978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219148, 0.136232, 0.966134,
		-0.868893, -0.477696, -0.129732,
		0.443845, -0.867898, 0.223058,
		34.473862, 40.563663, 49.954895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664558, 40.929081, 50.295677>,  <34.163170, 41.171192, 49.798756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664558, 40.929081, 50.295677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000767, 40.724281, 50.366543>,  <34.202492, 40.601402, 50.409061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.000767, 40.724281, 50.366543>,  <33.664558, 40.929081, 50.295677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000767, 40.724281, 50.366543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124093, 0.136367, 0.982855,
		-0.527380, -0.848092, 0.051084,
		0.840519, -0.511999, 0.177159,
		34.252922, 40.570683, 50.419689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518566, 40.467381, 50.875492>,  <33.664558, 40.929081, 50.295677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518566, 40.467381, 50.875492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.918167, 40.478218, 50.861271>,  <34.157928, 40.484722, 50.852737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.918167, 40.478218, 50.861271>,  <33.518566, 40.467381, 50.875492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918167, 40.478218, 50.861271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035026, 0.019584, 0.999195,
		0.027784, -0.999441, 0.018615,
		0.999000, 0.027110, -0.035551,
		34.217869, 40.486347, 50.850605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747765, 39.959999, 51.386581>,  <33.518566, 40.467381, 50.875492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747765, 39.959999, 51.386581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069584, 40.187832, 51.319309>,  <34.262676, 40.324532, 51.278946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069584, 40.187832, 51.319309>,  <33.747765, 39.959999, 51.386581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069584, 40.187832, 51.319309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170797, 0.049313, 0.984072,
		0.568800, -0.820456, -0.057608,
		0.804547, 0.569579, -0.168180,
		34.310947, 40.358707, 51.268856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444550, 39.606289, 51.685577>,  <33.747765, 39.959999, 51.386581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444550, 39.606289, 51.685577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525723, 39.993793, 51.628555>,  <34.574425, 40.226295, 51.594341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525723, 39.993793, 51.628555>,  <34.444550, 39.606289, 51.685577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525723, 39.993793, 51.628555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406443, 0.049118, 0.912355,
		0.890855, -0.243089, -0.383778,
		0.202933, 0.968760, -0.142558,
		34.586601, 40.284420, 51.585789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064583, 39.753796, 52.017414>,  <34.444550, 39.606289, 51.685577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064583, 39.753796, 52.017414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890106, 40.113636, 52.008942>,  <34.785419, 40.329540, 52.003857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890106, 40.113636, 52.008942>,  <35.064583, 39.753796, 52.017414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890106, 40.113636, 52.008942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230654, 0.134528, 0.963691,
		0.869790, 0.415469, -0.266177,
		-0.436192, 0.899604, -0.021181,
		34.759247, 40.383518, 52.002586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554043, 40.200340, 52.410027>,  <35.064583, 39.753796, 52.017414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554043, 40.200340, 52.410027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206169, 40.397442, 52.398407>,  <34.997444, 40.515701, 52.391438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206169, 40.397442, 52.398407>,  <35.554043, 40.200340, 52.410027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206169, 40.397442, 52.398407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165703, 0.346874, 0.923158,
		0.464965, 0.798042, -0.383322,
		-0.869684, 0.492754, -0.029046,
		34.945263, 40.545269, 52.389694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721661, 40.872490, 52.663883>,  <35.554043, 40.200340, 52.410027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721661, 40.872490, 52.663883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336376, 40.780060, 52.718781>,  <35.105206, 40.724602, 52.751720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.336376, 40.780060, 52.718781>,  <35.721661, 40.872490, 52.663883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336376, 40.780060, 52.718781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106060, 0.142414, 0.984108,
		-0.246949, 0.962457, -0.112666,
		-0.963207, -0.231075, 0.137247,
		35.047413, 40.710739, 52.759956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484467, 41.150093, 53.264034>,  <35.721661, 40.872490, 52.663883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484467, 41.150093, 53.264034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.134171, 40.958992, 53.236206>,  <34.923992, 40.844330, 53.219509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.134171, 40.958992, 53.236206>,  <35.484467, 41.150093, 53.264034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134171, 40.958992, 53.236206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071784, -0.013640, 0.997327,
		-0.477423, 0.878389, -0.022350,
		-0.875736, -0.477751, -0.069566,
		34.871449, 40.815666, 53.215336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996449, 41.560429, 53.634014>,  <35.484467, 41.150093, 53.264034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996449, 41.560429, 53.634014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878693, 41.178333, 53.645710>,  <34.808041, 40.949078, 53.652725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878693, 41.178333, 53.645710>,  <34.996449, 41.560429, 53.634014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878693, 41.178333, 53.645710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135898, 0.072124, 0.988094,
		-0.945975, 0.286907, -0.151048,
		-0.294385, -0.955239, 0.029237,
		34.790379, 40.891762, 53.654480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371353, 41.518272, 54.091774>,  <34.996449, 41.560429, 53.634014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371353, 41.518272, 54.091774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476650, 41.134346, 54.052887>,  <34.539829, 40.903988, 54.029552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.476650, 41.134346, 54.052887>,  <34.371353, 41.518272, 54.091774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476650, 41.134346, 54.052887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185340, -0.149213, 0.971280,
		-0.946760, -0.237662, -0.217171,
		0.263241, -0.959819, -0.097221,
		34.555622, 40.846401, 54.023720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765190, 41.047684, 54.259117>,  <34.371353, 41.518272, 54.091774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765190, 41.047684, 54.259117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.112961, 40.864040, 54.332123>,  <34.321625, 40.753853, 54.375927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.112961, 40.864040, 54.332123>,  <33.765190, 41.047684, 54.259117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112961, 40.864040, 54.332123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310604, -0.220650, 0.924575,
		-0.384210, -0.860542, -0.334441,
		0.869430, -0.459110, 0.182512,
		34.373791, 40.726307, 54.386875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555653, 40.469257, 53.872158>,  <33.765190, 41.047684, 54.259117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555653, 40.469257, 53.872158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315792, 40.763908, 53.997246>,  <33.171875, 40.940701, 54.072300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.315792, 40.763908, 53.997246>,  <33.555653, 40.469257, 53.872158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315792, 40.763908, 53.997246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795586, -0.506570, -0.332308,
		-0.086373, -0.448065, 0.889819,
		-0.599652, 0.736631, 0.312720,
		33.135895, 40.984898, 54.091061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851479, 40.247463, 54.304142>,  <33.555653, 40.469257, 53.872158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851479, 40.247463, 54.304142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.802059, 40.579605, 54.086796>,  <32.772408, 40.778889, 53.956390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.802059, 40.579605, 54.086796>,  <32.851479, 40.247463, 54.304142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802059, 40.579605, 54.086796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888072, -0.336846, -0.312831,
		-0.442791, 0.443896, 0.779033,
		-0.123550, 0.830356, -0.543364,
		32.764996, 40.828712, 53.923786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216103, 40.472866, 54.496822>,  <32.851479, 40.247463, 54.304142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216103, 40.472866, 54.496822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834871, 40.564167, 54.576370>,  <31.606133, 40.618950, 54.624100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834871, 40.564167, 54.576370>,  <32.216103, 40.472866, 54.496822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834871, 40.564167, 54.576370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248130, -0.212643, -0.945100,
		-0.173433, -0.950097, 0.259300,
		-0.953075, 0.228252, 0.198869,
		31.548948, 40.632645, 54.636032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829100, 39.975834, 54.244419>,  <32.216103, 40.472866, 54.496822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829100, 39.975834, 54.244419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551540, 40.262280, 54.274570>,  <31.385004, 40.434147, 54.292660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551540, 40.262280, 54.274570>,  <31.829100, 39.975834, 54.244419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551540, 40.262280, 54.274570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238914, -0.130216, -0.962270,
		-0.679283, -0.685726, 0.261447,
		-0.693898, 0.716117, 0.075377,
		31.343370, 40.477116, 54.297184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217968, 39.684368, 53.998688>,  <31.829100, 39.975834, 54.244419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217968, 39.684368, 53.998688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.128016, 40.073483, 53.976383>,  <31.074043, 40.306953, 53.963001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.128016, 40.073483, 53.976383>,  <31.217968, 39.684368, 53.998688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128016, 40.073483, 53.976383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399411, -0.144232, -0.905356,
		-0.888763, -0.181326, 0.420977,
		-0.224883, 0.972789, -0.055764,
		31.060551, 40.365318, 53.959656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504040, 39.749237, 53.650780>,  <31.217968, 39.684368, 53.998688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504040, 39.749237, 53.650780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693773, 40.099518, 53.614677>,  <30.807613, 40.309689, 53.593018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.693773, 40.099518, 53.614677>,  <30.504040, 39.749237, 53.650780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693773, 40.099518, 53.614677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188623, 0.000953, -0.982049,
		-0.859901, 0.482843, 0.165630,
		0.474333, 0.875706, -0.090256,
		30.836073, 40.362228, 53.587601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090488, 40.317989, 53.250908>,  <30.504040, 39.749237, 53.650780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090488, 40.317989, 53.250908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485765, 40.373314, 53.224525>,  <30.722931, 40.406509, 53.208694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485765, 40.373314, 53.224525>,  <30.090488, 40.317989, 53.250908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485765, 40.373314, 53.224525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043444, -0.159911, -0.986175,
		-0.146943, 0.977394, -0.152014,
		0.988191, 0.138307, -0.065960,
		30.782223, 40.414806, 53.204739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185686, 40.424576, 52.498806>,  <30.090488, 40.317989, 53.250908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185686, 40.424576, 52.498806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551651, 40.532562, 52.618843>,  <30.771231, 40.597355, 52.690865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551651, 40.532562, 52.618843>,  <30.185686, 40.424576, 52.498806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551651, 40.532562, 52.618843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286644, 0.088906, -0.953903,
		-0.284202, 0.958756, 0.003957,
		0.914912, 0.269967, 0.300089,
		30.826124, 40.613552, 52.708870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475353, 41.125641, 52.160110>,  <30.185686, 40.424576, 52.498806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475353, 41.125641, 52.160110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.774525, 40.868641, 52.226795>,  <30.954027, 40.714439, 52.266804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.774525, 40.868641, 52.226795>,  <30.475353, 41.125641, 52.160110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774525, 40.868641, 52.226795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296270, 0.098385, -0.950023,
		0.593992, 0.759940, 0.263939,
		0.747929, -0.642504, 0.166708,
		30.998903, 40.675888, 52.276806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085220, 41.444031, 51.850861>,  <30.475353, 41.125641, 52.160110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085220, 41.444031, 51.850861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.188822, 41.058910, 51.881683>,  <31.250982, 40.827839, 51.900177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.188822, 41.058910, 51.881683>,  <31.085220, 41.444031, 51.850861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188822, 41.058910, 51.881683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499504, 0.065235, -0.863852,
		0.826689, 0.262228, 0.497817,
		0.259002, -0.962798, 0.077055,
		31.266521, 40.770069, 51.904800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834618, 41.340927, 51.674831>,  <31.085220, 41.444031, 51.850861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834618, 41.340927, 51.674831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695608, 40.970074, 51.618755>,  <31.612202, 40.747562, 51.585110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695608, 40.970074, 51.618755>,  <31.834618, 41.340927, 51.674831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695608, 40.970074, 51.618755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551113, -0.081000, -0.830490,
		0.758618, -0.365877, 0.539104,
		-0.347525, -0.927132, -0.140192,
		31.591351, 40.691933, 51.576698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423710, 40.901459, 51.656445>,  <31.834618, 41.340927, 51.674831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423710, 40.901459, 51.656445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145706, 40.698868, 51.452309>,  <31.978905, 40.577312, 51.329826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145706, 40.698868, 51.452309>,  <32.423710, 40.901459, 51.656445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145706, 40.698868, 51.452309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645491, -0.126861, -0.753159,
		0.316718, -0.852868, 0.415097,
		-0.695005, -0.506481, -0.510339,
		31.937204, 40.546925, 51.299206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721851, 40.266949, 51.390911>,  <32.423710, 40.901459, 51.656445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721851, 40.266949, 51.390911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416340, 40.349442, 51.146252>,  <32.233032, 40.398937, 50.999454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.416340, 40.349442, 51.146252>,  <32.721851, 40.266949, 51.390911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416340, 40.349442, 51.146252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574667, -0.214262, -0.789841,
		-0.293948, -0.954756, 0.045130,
		-0.763775, 0.206238, -0.611648,
		32.187206, 40.411312, 50.962757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691463, 39.724823, 50.954636>,  <32.721851, 40.266949, 51.390911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691463, 39.724823, 50.954636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476421, 39.984901, 50.739891>,  <32.347397, 40.140949, 50.611042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476421, 39.984901, 50.739891>,  <32.691463, 39.724823, 50.954636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476421, 39.984901, 50.739891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495227, -0.271842, -0.825138,
		-0.682444, -0.709469, -0.175851,
		-0.537606, 0.650197, -0.536865,
		32.315140, 40.179962, 50.578831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603306, 39.358074, 50.324089>,  <32.691463, 39.724823, 50.954636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603306, 39.358074, 50.324089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507145, 39.733429, 50.224781>,  <32.449448, 39.958641, 50.165195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507145, 39.733429, 50.224781>,  <32.603306, 39.358074, 50.324089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507145, 39.733429, 50.224781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405831, -0.135178, -0.903896,
		-0.881765, -0.318051, -0.348330,
		-0.240398, 0.938387, -0.248270,
		32.435024, 40.014946, 50.150299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191395, 39.308746, 49.691925>,  <32.603306, 39.358074, 50.324089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191395, 39.308746, 49.691925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317322, 39.687149, 49.722828>,  <32.392879, 39.914188, 49.741371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.317322, 39.687149, 49.722828>,  <32.191395, 39.308746, 49.691925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317322, 39.687149, 49.722828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305259, -0.023840, -0.951971,
		-0.898726, 0.323280, -0.296281,
		0.314817, 0.946003, 0.077259,
		32.411766, 39.970951, 49.746006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787777, 39.720985, 49.148830>,  <32.191395, 39.308746, 49.691925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787777, 39.720985, 49.148830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132576, 39.906647, 49.230343>,  <32.339455, 40.018044, 49.279251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132576, 39.906647, 49.230343>,  <31.787777, 39.720985, 49.148830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132576, 39.906647, 49.230343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213922, 0.031370, -0.976347,
		-0.459564, 0.885201, -0.072251,
		0.861997, 0.464150, 0.203781,
		32.391174, 40.045891, 49.291477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738211, 40.169071, 48.652607>,  <31.787777, 39.720985, 49.148830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738211, 40.169071, 48.652607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.117302, 40.138729, 48.776581>,  <32.344757, 40.120525, 48.850964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.117302, 40.138729, 48.776581>,  <31.738211, 40.169071, 48.652607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117302, 40.138729, 48.776581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313136, 0.034531, -0.949080,
		0.061287, 0.996521, 0.056478,
		0.947729, -0.075851, 0.309930,
		32.401619, 40.115974, 48.869560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142910, 40.707874, 48.365696>,  <31.738211, 40.169071, 48.652607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142910, 40.707874, 48.365696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399242, 40.415882, 48.460735>,  <32.553043, 40.240685, 48.517761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.399242, 40.415882, 48.460735>,  <32.142910, 40.707874, 48.365696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399242, 40.415882, 48.460735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410601, 0.064414, -0.909537,
		0.648643, 0.680422, 0.341011,
		0.640835, -0.729984, 0.237600,
		32.591492, 40.196888, 48.532017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743160, 40.876328, 48.105312>,  <32.142910, 40.707874, 48.365696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743160, 40.876328, 48.105312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.817997, 40.484844, 48.139099>,  <32.862900, 40.249954, 48.159370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.817997, 40.484844, 48.139099>,  <32.743160, 40.876328, 48.105312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817997, 40.484844, 48.139099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228747, -0.040218, -0.972655,
		0.955339, 0.201295, 0.216352,
		0.187090, -0.978705, 0.084468,
		32.874123, 40.191235, 48.164440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416924, 40.721962, 47.710873>,  <32.743160, 40.876328, 48.105312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416924, 40.721962, 47.710873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241604, 40.365059, 47.754261>,  <33.136414, 40.150917, 47.780293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.241604, 40.365059, 47.754261>,  <33.416924, 40.721962, 47.710873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241604, 40.365059, 47.754261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227291, -0.226782, -0.947053,
		0.869617, -0.390437, 0.302201,
		-0.438298, -0.892260, 0.108470,
		33.110115, 40.097382, 47.786800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749241, 40.381100, 47.220272>,  <33.416924, 40.721962, 47.710873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749241, 40.381100, 47.220272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430180, 40.148708, 47.285038>,  <33.238743, 40.009274, 47.323898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.430180, 40.148708, 47.285038>,  <33.749241, 40.381100, 47.220272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430180, 40.148708, 47.285038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013655, -0.250992, -0.967893,
		0.602960, -0.774255, 0.192272,
		-0.797654, -0.580975, 0.161911,
		33.190884, 39.974415, 47.333611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.221672, 42.620918, 33.897392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.847061, 42.501308, 33.970600>,  <41.622295, 42.429543, 34.014526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.847061, 42.501308, 33.970600>,  <42.221672, 42.620918, 33.897392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847061, 42.501308, 33.970600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347609, -0.859916, 0.373782,
		0.045615, 0.413679, 0.909280,
		-0.936529, -0.299024, 0.183024,
		41.566101, 42.411602, 34.025509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227043, 42.668240, 34.630966>,  <42.221672, 42.620918, 33.897392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227043, 42.668240, 34.630966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.949993, 42.413700, 34.495129>,  <41.783764, 42.260975, 34.413628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.949993, 42.413700, 34.495129>,  <42.227043, 42.668240, 34.630966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949993, 42.413700, 34.495129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295125, -0.679615, 0.671584,
		-0.658155, 0.364936, 0.658524,
		-0.692628, -0.636353, -0.339590,
		41.742207, 42.222794, 34.393253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940289, 42.228115, 35.325451>,  <42.227043, 42.668240, 34.630966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940289, 42.228115, 35.325451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.816574, 42.017010, 35.009018>,  <41.742344, 41.890347, 34.819160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.816574, 42.017010, 35.009018>,  <41.940289, 42.228115, 35.325451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816574, 42.017010, 35.009018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072559, -0.842539, 0.533726,
		-0.948197, 0.107674, 0.298880,
		-0.309286, -0.527764, -0.791080,
		41.723789, 41.858681, 34.771694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325649, 41.781391, 35.561443>,  <41.940289, 42.228115, 35.325451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325649, 41.781391, 35.561443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.479511, 41.614697, 35.231991>,  <41.571827, 41.514679, 35.034317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.479511, 41.614697, 35.231991>,  <41.325649, 41.781391, 35.561443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479511, 41.614697, 35.231991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105959, -0.866454, 0.487883,
		-0.916959, -0.274938, -0.289128,
		0.384654, -0.416733, -0.823635,
		41.594906, 41.489677, 34.984901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064171, 41.118660, 35.597511>,  <41.325649, 41.781391, 35.561443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064171, 41.118660, 35.597511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371326, 41.103260, 35.341743>,  <41.555622, 41.094021, 35.188282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.371326, 41.103260, 35.341743>,  <41.064171, 41.118660, 35.597511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371326, 41.103260, 35.341743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375659, -0.781465, 0.498189,
		-0.518866, -0.622760, -0.585618,
		0.767892, -0.038501, -0.639421,
		41.601692, 41.091709, 35.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166973, 40.459114, 35.490074>,  <41.064171, 41.118660, 35.597511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166973, 40.459114, 35.490074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519115, 40.625629, 35.399136>,  <41.730400, 40.725536, 35.344574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519115, 40.625629, 35.399136>,  <41.166973, 40.459114, 35.490074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519115, 40.625629, 35.399136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474102, -0.786852, 0.395086,
		-0.014418, -0.455599, -0.890069,
		0.880352, 0.416286, -0.227345,
		41.783222, 40.750515, 35.330933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618530, 39.893982, 35.309509>,  <41.166973, 40.459114, 35.490074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618530, 39.893982, 35.309509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888241, 40.172421, 35.408134>,  <42.050068, 40.339485, 35.467308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.888241, 40.172421, 35.408134>,  <41.618530, 39.893982, 35.309509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888241, 40.172421, 35.408134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521214, -0.685120, 0.508869,
		0.523147, -0.214609, -0.824779,
		0.674280, 0.696099, 0.246561,
		42.090527, 40.381248, 35.482101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255085, 39.518135, 35.268867>,  <41.618530, 39.893982, 35.309509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255085, 39.518135, 35.268867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.362003, 39.850491, 35.464081>,  <42.426155, 40.049904, 35.581207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.362003, 39.850491, 35.464081>,  <42.255085, 39.518135, 35.268867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362003, 39.850491, 35.464081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632351, -0.533402, 0.561795,
		0.727106, 0.158439, -0.667992,
		0.267298, 0.830890, 0.488030,
		42.442192, 40.099758, 35.610489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908291, 39.562794, 35.229252>,  <42.255085, 39.518135, 35.268867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908291, 39.562794, 35.229252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814564, 39.758736, 35.565144>,  <42.758327, 39.876301, 35.766678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814564, 39.758736, 35.565144>,  <42.908291, 39.562794, 35.229252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814564, 39.758736, 35.565144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608354, -0.599865, 0.519681,
		0.758290, 0.632620, -0.157447,
		-0.234314, 0.489852, 0.839728,
		42.744270, 39.905693, 35.817062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555275, 39.756363, 35.573887>,  <42.908291, 39.562794, 35.229252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555275, 39.756363, 35.573887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277325, 39.764179, 35.861431>,  <43.110554, 39.768867, 36.033958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.277325, 39.764179, 35.861431>,  <43.555275, 39.756363, 35.573887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277325, 39.764179, 35.861431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570818, -0.593016, 0.567890,
		0.437393, 0.804953, 0.400921,
		-0.694878, 0.019538, 0.718863,
		43.068863, 39.770042, 36.077091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951839, 39.808331, 36.162308>,  <43.555275, 39.756363, 35.573887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951839, 39.808331, 36.162308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.586208, 39.716248, 36.295856>,  <43.366829, 39.660995, 36.375984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.586208, 39.716248, 36.295856>,  <43.951839, 39.808331, 36.162308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586208, 39.716248, 36.295856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404177, -0.449529, 0.796596,
		-0.033300, 0.863092, 0.503949,
		-0.914075, -0.230211, 0.333872,
		43.311985, 39.647186, 36.396019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915264, 40.069721, 36.796925>,  <43.951839, 39.808331, 36.162308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915264, 40.069721, 36.796925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662777, 39.760677, 36.769680>,  <43.511284, 39.575253, 36.753334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662777, 39.760677, 36.769680>,  <43.915264, 40.069721, 36.796925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662777, 39.760677, 36.769680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456551, -0.441111, 0.772646,
		-0.626996, 0.456614, 0.631173,
		-0.631218, -0.772609, -0.068107,
		43.473412, 39.528896, 36.749249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602867, 39.909504, 37.505417>,  <43.915264, 40.069721, 36.796925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602867, 39.909504, 37.505417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536869, 39.578388, 37.290928>,  <43.497272, 39.379719, 37.162235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.536869, 39.578388, 37.290928>,  <43.602867, 39.909504, 37.505417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536869, 39.578388, 37.290928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012444, -0.545380, 0.838096,
		-0.986216, 0.131608, 0.100285,
		-0.164993, -0.827792, -0.536225,
		43.487370, 39.330051, 37.130062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199848, 39.540749, 37.979134>,  <43.602867, 39.909504, 37.505417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199848, 39.540749, 37.979134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.363407, 39.293289, 37.710781>,  <43.461540, 39.144814, 37.549770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.363407, 39.293289, 37.710781>,  <43.199848, 39.540749, 37.979134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363407, 39.293289, 37.710781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183449, -0.664414, 0.724500,
		-0.893953, -0.419316, -0.158184,
		0.408894, -0.618651, -0.670878,
		43.486076, 39.107693, 37.509518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124748, 38.925343, 38.325855>,  <43.199848, 39.540749, 37.979134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124748, 38.925343, 38.325855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365086, 38.804382, 38.029873>,  <43.509289, 38.731808, 37.852283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365086, 38.804382, 38.029873>,  <43.124748, 38.925343, 38.325855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365086, 38.804382, 38.029873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278655, -0.788382, 0.548457,
		-0.749224, -0.535731, -0.389430,
		0.600845, -0.302401, -0.739959,
		43.545338, 38.713661, 37.807884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937096, 38.181168, 38.242043>,  <43.124748, 38.925343, 38.325855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937096, 38.181168, 38.242043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285885, 38.242458, 38.056057>,  <43.495159, 38.279232, 37.944466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285885, 38.242458, 38.056057>,  <42.937096, 38.181168, 38.242043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285885, 38.242458, 38.056057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383324, -0.804462, 0.453767,
		-0.304519, -0.573903, -0.760200,
		0.871970, 0.153222, -0.464965,
		43.547474, 38.288425, 37.916569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051682, 37.542542, 38.063793>,  <42.937096, 38.181168, 38.242043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051682, 37.542542, 38.063793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409210, 37.721561, 38.052582>,  <43.623726, 37.828976, 38.045853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409210, 37.721561, 38.052582>,  <43.051682, 37.542542, 38.063793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409210, 37.721561, 38.052582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424948, -0.825395, 0.371675,
		0.143207, -0.344122, -0.927939,
		0.893818, 0.447553, -0.028032,
		43.677357, 37.855827, 38.044170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536694, 37.102402, 37.641602>,  <43.051682, 37.542542, 38.063793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536694, 37.102402, 37.641602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779415, 37.340015, 37.852852>,  <43.925049, 37.482586, 37.979603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779415, 37.340015, 37.852852>,  <43.536694, 37.102402, 37.641602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779415, 37.340015, 37.852852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512112, -0.800324, 0.311804,
		0.607891, 0.081254, -0.789852,
		0.606802, 0.594036, 0.528122,
		43.961456, 37.518227, 38.011288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174366, 36.940399, 37.384438>,  <43.536694, 37.102402, 37.641602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174366, 36.940399, 37.384438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.243057, 37.097916, 37.745644>,  <44.284271, 37.192425, 37.962368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.243057, 37.097916, 37.745644>,  <44.174366, 36.940399, 37.384438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243057, 37.097916, 37.745644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777194, -0.617429, 0.121454,
		0.605376, 0.680960, -0.412083,
		0.171727, 0.393794, 0.903015,
		44.294575, 37.216053, 38.016548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934662, 37.024803, 37.444168>,  <44.174366, 36.940399, 37.384438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934662, 37.024803, 37.444168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.794296, 37.043720, 37.818253>,  <44.710075, 37.055069, 38.042702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.794296, 37.043720, 37.818253>,  <44.934662, 37.024803, 37.444168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.794296, 37.043720, 37.818253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692877, -0.658711, 0.293293,
		0.629904, 0.750908, 0.198388,
		-0.350916, 0.047288, 0.935212,
		44.689022, 37.057907, 38.098816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498375, 37.288395, 37.867043>,  <44.934662, 37.024803, 37.444168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498375, 37.288395, 37.867043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227402, 37.074696, 38.069294>,  <45.064816, 36.946476, 38.190643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227402, 37.074696, 38.069294>,  <45.498375, 37.288395, 37.867043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227402, 37.074696, 38.069294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722216, -0.613521, 0.319369,
		0.139592, 0.581525, 0.801463,
		-0.677435, -0.534248, 0.505629,
		45.024170, 36.914421, 38.220982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501785, 37.411926, 37.192039>,  <45.498375, 37.288395, 37.867043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501785, 37.411926, 37.192039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491547, 37.156940, 36.884018>,  <45.485405, 37.003948, 36.699203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491547, 37.156940, 36.884018>,  <45.501785, 37.411926, 37.192039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491547, 37.156940, 36.884018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399940, 0.712503, -0.576530,
		0.916184, 0.293220, -0.273183,
		-0.025594, -0.637465, -0.770054,
		45.483868, 36.965702, 36.653000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.113686, 37.763039, 36.735622>,  <45.501785, 37.411926, 37.192039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.113686, 37.763039, 36.735622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231548, 37.459358, 36.503487>,  <45.302265, 37.277149, 36.364204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.231548, 37.459358, 36.503487>,  <45.113686, 37.763039, 36.735622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231548, 37.459358, 36.503487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483153, 0.405602, -0.775919,
		0.824464, 0.509023, -0.247296,
		0.294657, -0.759199, -0.580340,
		45.319946, 37.231598, 36.329384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379223, 37.983356, 36.079296>,  <45.113686, 37.763039, 36.735622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379223, 37.983356, 36.079296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287704, 37.602940, 35.996193>,  <45.232792, 37.374687, 35.946331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287704, 37.602940, 35.996193>,  <45.379223, 37.983356, 36.079296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287704, 37.602940, 35.996193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412118, 0.287977, -0.864424,
		0.881935, -0.112160, -0.457832,
		-0.228799, -0.951046, -0.207755,
		45.219067, 37.317627, 35.933868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501797, 37.898354, 35.435253>,  <45.379223, 37.983356, 36.079296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501797, 37.898354, 35.435253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.268726, 37.578644, 35.494106>,  <45.128883, 37.386818, 35.529419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.268726, 37.578644, 35.494106>,  <45.501797, 37.898354, 35.435253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.268726, 37.578644, 35.494106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464052, 0.178578, -0.867620,
		0.667195, -0.573816, -0.474959,
		-0.582671, -0.799278, 0.147134,
		45.093925, 37.338860, 35.538246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615459, 37.534985, 34.869514>,  <45.501797, 37.898354, 35.435253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615459, 37.534985, 34.869514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.266777, 37.417225, 35.026211>,  <45.057568, 37.346569, 35.120228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.266777, 37.417225, 35.026211>,  <45.615459, 37.534985, 34.869514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266777, 37.417225, 35.026211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452192, 0.175216, -0.874541,
		0.188821, -0.939484, -0.285860,
		-0.871704, -0.294395, 0.391743,
		45.005264, 37.328907, 35.143734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245850, 37.178833, 34.264278>,  <45.615459, 37.534985, 34.869514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245850, 37.178833, 34.264278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.984715, 37.300304, 34.541862>,  <44.828033, 37.373188, 34.708412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.984715, 37.300304, 34.541862>,  <45.245850, 37.178833, 34.264278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984715, 37.300304, 34.541862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606345, 0.339616, -0.719032,
		-0.454036, -0.890190, -0.037578,
		-0.652837, 0.303681, 0.693961,
		44.788864, 37.391407, 34.750050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515263, 37.015343, 33.925632>,  <45.245850, 37.178833, 34.264278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515263, 37.015343, 33.925632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.460609, 37.259384, 34.237816>,  <44.427818, 37.405807, 34.425125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.460609, 37.259384, 34.237816>,  <44.515263, 37.015343, 33.925632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460609, 37.259384, 34.237816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634124, 0.551409, -0.542066,
		-0.761064, -0.568970, 0.311537,
		-0.136635, 0.610100, 0.780455,
		44.419621, 37.442413, 34.471951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846313, 36.937328, 34.062313>,  <44.515263, 37.015343, 33.925632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846313, 36.937328, 34.062313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986900, 37.291656, 34.183502>,  <44.071255, 37.504253, 34.256214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986900, 37.291656, 34.183502>,  <43.846313, 36.937328, 34.062313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986900, 37.291656, 34.183502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609009, 0.462121, -0.644634,
		-0.711039, 0.042058, 0.701894,
		0.351472, 0.885819, 0.302972,
		44.092342, 37.557404, 34.274395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312359, 37.309795, 34.131596>,  <43.846313, 36.937328, 34.062313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312359, 37.309795, 34.131596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583309, 37.603542, 34.114296>,  <43.745880, 37.779789, 34.103916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583309, 37.603542, 34.114296>,  <43.312359, 37.309795, 34.131596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583309, 37.603542, 34.114296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598176, 0.515626, -0.613446,
		-0.428192, 0.441405, 0.788552,
		0.677375, 0.734365, -0.043251,
		43.786522, 37.823853, 34.101322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951122, 37.879566, 34.303303>,  <43.312359, 37.309795, 34.131596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951122, 37.879566, 34.303303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285789, 38.021053, 34.136032>,  <43.486591, 38.105946, 34.035671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.285789, 38.021053, 34.136032>,  <42.951122, 37.879566, 34.303303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285789, 38.021053, 34.136032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547712, 0.540047, -0.639031,
		-0.000204, 0.763695, 0.645577,
		0.836667, 0.353721, -0.418175,
		43.536789, 38.127171, 34.010578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857132, 38.577812, 34.126362>,  <42.951122, 37.879566, 34.303303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857132, 38.577812, 34.126362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.164738, 38.518364, 33.877674>,  <43.349300, 38.482697, 33.728462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.164738, 38.518364, 33.877674>,  <42.857132, 38.577812, 34.126362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164738, 38.518364, 33.877674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471757, 0.524363, -0.708865,
		0.431355, 0.838425, 0.333130,
		0.769011, -0.148616, -0.621720,
		43.395439, 38.473778, 33.691158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190369, 39.167717, 34.026314>,  <42.857132, 38.577812, 34.126362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190369, 39.167717, 34.026314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308060, 38.945244, 33.715424>,  <43.378674, 38.811760, 33.528889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308060, 38.945244, 33.715424>,  <43.190369, 39.167717, 34.026314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308060, 38.945244, 33.715424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248709, 0.740652, -0.624162,
		0.922807, 0.376952, 0.079594,
		0.294231, -0.556185, -0.777230,
		43.396328, 38.778389, 33.482254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358692, 39.633541, 33.472805>,  <43.190369, 39.167717, 34.026314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358692, 39.633541, 33.472805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342484, 39.290203, 33.268219>,  <43.332756, 39.084202, 33.145466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.342484, 39.290203, 33.268219>,  <43.358692, 39.633541, 33.472805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342484, 39.290203, 33.268219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281475, 0.500964, -0.818417,
		0.958713, 0.110800, -0.261904,
		-0.040524, -0.858346, -0.511468,
		43.330326, 39.032700, 33.114780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677982, 39.775665, 32.842651>,  <43.358692, 39.633541, 33.472805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677982, 39.775665, 32.842651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.401398, 39.487827, 32.817165>,  <43.235447, 39.315125, 32.801872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.401398, 39.487827, 32.817165>,  <43.677982, 39.775665, 32.842651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401398, 39.487827, 32.817165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497052, 0.537913, -0.680874,
		0.524218, -0.439139, -0.729625,
		-0.691473, -0.719588, -0.063709,
		43.193958, 39.271950, 32.798050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619511, 39.693596, 32.148514>,  <43.677982, 39.775665, 32.842651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619511, 39.693596, 32.148514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.291973, 39.490368, 32.255363>,  <43.095451, 39.368431, 32.319473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.291973, 39.490368, 32.255363>,  <43.619511, 39.693596, 32.148514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291973, 39.490368, 32.255363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530445, 0.491915, -0.690397,
		0.219365, -0.707025, -0.672305,
		-0.818845, -0.508070, 0.267129,
		43.046318, 39.337948, 32.335503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287640, 39.511314, 31.504894>,  <43.619511, 39.693596, 32.148514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287640, 39.511314, 31.504894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.999821, 39.520332, 31.782524>,  <42.827129, 39.525742, 31.949102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.999821, 39.520332, 31.782524>,  <43.287640, 39.511314, 31.504894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999821, 39.520332, 31.782524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528103, 0.631267, -0.567988,
		-0.450951, -0.775238, -0.442322,
		-0.719549, 0.022543, 0.694076,
		42.783955, 39.527096, 31.990747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639706, 39.747677, 31.179773>,  <43.287640, 39.511314, 31.504894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639706, 39.747677, 31.179773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.531113, 39.780338, 31.563362>,  <42.465958, 39.799934, 31.793516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.531113, 39.780338, 31.563362>,  <42.639706, 39.747677, 31.179773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531113, 39.780338, 31.563362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598395, 0.766075, -0.234635,
		-0.753803, -0.637544, -0.159119,
		-0.271487, 0.081652, 0.958972,
		42.449665, 39.804832, 31.851053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930481, 39.731762, 31.255171>,  <42.639706, 39.747677, 31.179773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930481, 39.731762, 31.255171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065308, 39.945107, 31.565500>,  <42.146206, 40.073112, 31.751698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065308, 39.945107, 31.565500>,  <41.930481, 39.731762, 31.255171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065308, 39.945107, 31.565500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412916, 0.824316, -0.387303,
		-0.846099, -0.189802, 0.498088,
		0.337071, 0.533365, 0.775825,
		42.166428, 40.105118, 31.798248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350765, 40.035053, 31.788168>,  <41.930481, 39.731762, 31.255171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350765, 40.035053, 31.788168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677662, 40.260010, 31.838501>,  <41.873798, 40.394985, 31.868702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677662, 40.260010, 31.838501>,  <41.350765, 40.035053, 31.788168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677662, 40.260010, 31.838501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491254, 0.793995, -0.358109,
		-0.301308, 0.230844, 0.925162,
		0.817241, 0.562391, 0.125834,
		41.922832, 40.428726, 31.876251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167217, 40.618362, 32.203144>,  <41.350765, 40.035053, 31.788168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167217, 40.618362, 32.203144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503277, 40.724361, 32.013863>,  <41.704914, 40.787960, 31.900293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.503277, 40.724361, 32.013863>,  <41.167217, 40.618362, 32.203144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503277, 40.724361, 32.013863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373468, 0.915358, -0.150469,
		0.393276, 0.303143, 0.868008,
		0.840152, 0.264998, -0.473203,
		41.755322, 40.803860, 31.871902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301048, 41.413120, 32.466064>,  <41.167217, 40.618362, 32.203144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301048, 41.413120, 32.466064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550499, 41.371170, 32.156204>,  <41.700169, 41.346001, 31.970287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550499, 41.371170, 32.156204>,  <41.301048, 41.413120, 32.466064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550499, 41.371170, 32.156204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048146, 0.983925, -0.171971,
		0.780236, 0.144543, 0.608556,
		0.623630, -0.104878, -0.774652,
		41.737587, 41.339706, 31.923809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.432411, 40.277119, 43.487568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304348, 39.904034, 43.553967>,  <37.227512, 39.680183, 43.593807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304348, 39.904034, 43.553967>,  <37.432411, 40.277119, 43.487568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304348, 39.904034, 43.553967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515732, -0.318574, -0.795318,
		0.794683, -0.169014, 0.583020,
		-0.320155, -0.932708, 0.165999,
		37.208302, 39.624222, 43.603767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000309, 39.859310, 43.377144>,  <37.432411, 40.277119, 43.487568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000309, 39.859310, 43.377144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705143, 39.590389, 43.353504>,  <37.528046, 39.429035, 43.339321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705143, 39.590389, 43.353504>,  <38.000309, 39.859310, 43.377144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705143, 39.590389, 43.353504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402710, -0.368343, -0.837943,
		0.541583, -0.642128, 0.542549,
		-0.737911, -0.672305, -0.059103,
		37.483768, 39.388699, 43.335773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317959, 39.144203, 43.311508>,  <38.000309, 39.859310, 43.377144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317959, 39.144203, 43.311508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945805, 39.159515, 43.165676>,  <37.722511, 39.168701, 43.078175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945805, 39.159515, 43.165676>,  <38.317959, 39.144203, 43.311508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945805, 39.159515, 43.165676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305989, -0.466612, -0.829846,
		-0.201886, -0.883634, 0.422414,
		-0.930383, 0.038280, -0.364584,
		37.666691, 39.171001, 43.056301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323353, 38.609253, 42.791050>,  <38.317959, 39.144203, 43.311508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323353, 38.609253, 42.791050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980457, 38.795864, 42.703880>,  <37.774719, 38.907833, 42.651581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980457, 38.795864, 42.703880>,  <38.323353, 38.609253, 42.791050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980457, 38.795864, 42.703880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078755, -0.299441, -0.950859,
		-0.508861, -0.832275, 0.219951,
		-0.857238, 0.466533, -0.217920,
		37.723286, 38.935825, 42.638504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845245, 38.168339, 42.219322>,  <38.323353, 38.609253, 42.791050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845245, 38.168339, 42.219322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710979, 38.544849, 42.233925>,  <37.630421, 38.770756, 42.242687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710979, 38.544849, 42.233925>,  <37.845245, 38.168339, 42.219322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710979, 38.544849, 42.233925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021855, 0.046529, -0.998678,
		-0.941727, -0.334425, -0.036190,
		-0.335667, 0.941273, 0.036509,
		37.610279, 38.827232, 42.244877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365288, 38.108944, 41.673153>,  <37.845245, 38.168339, 42.219322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365288, 38.108944, 41.673153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452106, 38.490868, 41.754372>,  <37.504196, 38.720020, 41.803101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452106, 38.490868, 41.754372>,  <37.365288, 38.108944, 41.673153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452106, 38.490868, 41.754372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097889, 0.185665, -0.977725,
		-0.971240, 0.232089, -0.053167,
		0.217048, 0.954810, 0.203044,
		37.517220, 38.777309, 41.815285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979713, 38.572178, 41.253540>,  <37.365288, 38.108944, 41.673153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979713, 38.572178, 41.253540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316864, 38.762447, 41.354168>,  <37.519154, 38.876610, 41.414547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316864, 38.762447, 41.354168>,  <36.979713, 38.572178, 41.253540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316864, 38.762447, 41.354168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176354, 0.197504, -0.964309,
		-0.508382, 0.857162, 0.082585,
		0.842880, 0.475673, 0.251571,
		37.569729, 38.905148, 41.429638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985218, 39.324203, 41.021053>,  <36.979713, 38.572178, 41.253540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985218, 39.324203, 41.021053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368885, 39.227448, 41.079685>,  <37.599087, 39.169395, 41.114864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368885, 39.227448, 41.079685>,  <36.985218, 39.324203, 41.021053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368885, 39.227448, 41.079685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228035, 0.354760, -0.906722,
		0.167324, 0.903125, 0.395433,
		0.959168, -0.241889, 0.146584,
		37.656635, 39.154881, 41.123661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456921, 39.993671, 40.735180>,  <36.985218, 39.324203, 41.021053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456921, 39.993671, 40.735180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679096, 39.661312, 40.748390>,  <37.812401, 39.461895, 40.756317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679096, 39.661312, 40.748390>,  <37.456921, 39.993671, 40.735180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679096, 39.661312, 40.748390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213958, 0.104420, -0.971246,
		0.803559, 0.546537, 0.235777,
		0.555441, -0.830899, 0.033029,
		37.845730, 39.412041, 40.758297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048935, 40.149307, 40.285023>,  <37.456921, 39.993671, 40.735180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048935, 40.149307, 40.285023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088932, 39.753246, 40.324219>,  <38.112930, 39.515610, 40.347736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088932, 39.753246, 40.324219>,  <38.048935, 40.149307, 40.285023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088932, 39.753246, 40.324219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266229, -0.068265, -0.961489,
		0.958710, 0.122226, 0.256781,
		0.099990, -0.990152, 0.097987,
		38.118931, 39.456200, 40.353615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677055, 39.987320, 39.956421>,  <38.048935, 40.149307, 40.285023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677055, 39.987320, 39.956421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475864, 39.642609, 39.982834>,  <38.355148, 39.435783, 39.998684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475864, 39.642609, 39.982834>,  <38.677055, 39.987320, 39.956421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475864, 39.642609, 39.982834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375153, -0.286511, -0.881573,
		0.778637, -0.418637, 0.467406,
		-0.502976, -0.861774, 0.066035,
		38.324970, 39.384075, 40.002644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152397, 39.486446, 39.603096>,  <38.677055, 39.987320, 39.956421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152397, 39.486446, 39.603096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779377, 39.342121, 39.597958>,  <38.555565, 39.255524, 39.594875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779377, 39.342121, 39.597958>,  <39.152397, 39.486446, 39.603096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779377, 39.342121, 39.597958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190208, -0.460746, -0.866911,
		0.306880, -0.810878, 0.498298,
		-0.932548, -0.360818, -0.012841,
		38.499611, 39.233875, 39.594105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229206, 38.837872, 39.478485>,  <39.152397, 39.486446, 39.603096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229206, 38.837872, 39.478485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850014, 38.843853, 39.351299>,  <38.622498, 38.847443, 39.274986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850014, 38.843853, 39.351299>,  <39.229206, 38.837872, 39.478485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850014, 38.843853, 39.351299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242082, -0.614756, -0.750647,
		-0.206696, -0.788576, 0.579159,
		-0.947984, 0.014952, -0.317968,
		38.565620, 38.848339, 39.255909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992783, 38.170158, 39.330082>,  <39.229206, 38.837872, 39.478485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992783, 38.170158, 39.330082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759350, 38.404018, 39.104652>,  <38.619289, 38.544334, 38.969395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759350, 38.404018, 39.104652>,  <38.992783, 38.170158, 39.330082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759350, 38.404018, 39.104652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167023, -0.592756, -0.787873,
		-0.794693, -0.553918, 0.248271,
		-0.583581, 0.584650, -0.563575,
		38.584274, 38.579414, 38.935581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413467, 37.758362, 38.782410>,  <38.992783, 38.170158, 39.330082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413467, 37.758362, 38.782410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644558, 37.438633, 38.848526>,  <39.783211, 37.246796, 38.888195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644558, 37.438633, 38.848526>,  <39.413467, 37.758362, 38.782410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644558, 37.438633, 38.848526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764491, -0.458936, 0.452693,
		-0.285990, -0.387894, -0.876212,
		0.577722, -0.799322, 0.165290,
		39.817875, 37.198837, 38.898113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079117, 37.220997, 38.633015>,  <39.413467, 37.758362, 38.782410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079117, 37.220997, 38.633015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315777, 37.099331, 38.931664>,  <39.457771, 37.026333, 39.110851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315777, 37.099331, 38.931664>,  <39.079117, 37.220997, 38.633015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315777, 37.099331, 38.931664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788740, -0.410062, 0.457973,
		0.166862, -0.859846, -0.482516,
		0.591647, -0.304161, 0.746619,
		39.493271, 37.008083, 39.155647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610176, 36.681393, 38.911297>,  <39.079117, 37.220997, 38.633015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610176, 36.681393, 38.911297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906513, 36.712547, 39.178154>,  <39.084316, 36.731239, 39.338268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906513, 36.712547, 39.178154>,  <38.610176, 36.681393, 38.911297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906513, 36.712547, 39.178154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601421, -0.365331, 0.710511,
		0.299070, -0.927613, -0.223809,
		0.740844, 0.077889, 0.667146,
		39.128765, 36.735912, 39.378296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607010, 36.090061, 39.198940>,  <38.610176, 36.681393, 38.911297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607010, 36.090061, 39.198940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774761, 36.337440, 39.464767>,  <38.875412, 36.485867, 39.624264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774761, 36.337440, 39.464767>,  <38.607010, 36.090061, 39.198940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774761, 36.337440, 39.464767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560732, -0.399238, 0.725389,
		0.713933, -0.676855, 0.179352,
		0.419379, 0.618447, 0.664563,
		38.900574, 36.522976, 39.664135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847969, 35.629036, 39.806931>,  <38.607010, 36.090061, 39.198940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847969, 35.629036, 39.806931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853142, 35.992249, 39.974415>,  <38.856247, 36.210175, 40.074905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853142, 35.992249, 39.974415>,  <38.847969, 35.629036, 39.806931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853142, 35.992249, 39.974415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610489, -0.324466, 0.722513,
		0.791919, -0.264961, 0.550145,
		0.012935, 0.908030, 0.418707,
		38.857021, 36.264656, 40.100025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990780, 35.542847, 40.556362>,  <38.847969, 35.629036, 39.806931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990780, 35.542847, 40.556362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806625, 35.895107, 40.511654>,  <38.696133, 36.106464, 40.484829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806625, 35.895107, 40.511654>,  <38.990780, 35.542847, 40.556362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806625, 35.895107, 40.511654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396611, -0.091414, 0.913424,
		0.794194, 0.464856, 0.391363,
		-0.460386, 0.880655, -0.111766,
		38.668510, 36.159306, 40.478123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112991, 35.936146, 41.233189>,  <38.990780, 35.542847, 40.556362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112991, 35.936146, 41.233189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783871, 36.097733, 41.073288>,  <38.586399, 36.194687, 40.977348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783871, 36.097733, 41.073288>,  <39.112991, 35.936146, 41.233189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783871, 36.097733, 41.073288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430475, 0.016250, 0.902456,
		0.371060, 0.914629, 0.160528,
		-0.822804, 0.403969, -0.399754,
		38.537029, 36.218922, 40.953362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888199, 36.312122, 41.751415>,  <39.112991, 35.936146, 41.233189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888199, 36.312122, 41.751415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558514, 36.304409, 41.525036>,  <38.360703, 36.299782, 41.389210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558514, 36.304409, 41.525036>,  <38.888199, 36.312122, 41.751415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558514, 36.304409, 41.525036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560471, -0.114939, 0.820159,
		-0.080863, 0.993185, 0.083928,
		-0.824217, -0.019282, -0.565946,
		38.311249, 36.298626, 41.355251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306889, 36.873165, 41.911411>,  <38.888199, 36.312122, 41.751415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306889, 36.873165, 41.911411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125305, 36.583641, 41.703560>,  <38.016354, 36.409927, 41.578850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125305, 36.583641, 41.703560>,  <38.306889, 36.873165, 41.911411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125305, 36.583641, 41.703560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606932, -0.175771, 0.775073,
		-0.652343, 0.667234, -0.359511,
		-0.453963, -0.723812, -0.519628,
		37.989117, 36.366497, 41.547672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514160, 37.083874, 41.867672>,  <38.306889, 36.873165, 41.911411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514160, 37.083874, 41.867672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530289, 36.691669, 41.790764>,  <37.539967, 36.456345, 41.744617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530289, 36.691669, 41.790764>,  <37.514160, 37.083874, 41.867672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530289, 36.691669, 41.790764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720935, -0.161784, 0.673853,
		-0.691829, 0.111450, -0.713409,
		0.040317, -0.980513, -0.192275,
		37.542385, 36.397514, 41.733082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898071, 36.864368, 41.867561>,  <37.514160, 37.083874, 41.867672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898071, 36.864368, 41.867561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084915, 36.512737, 41.905575>,  <37.197021, 36.301758, 41.928383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084915, 36.512737, 41.905575>,  <36.898071, 36.864368, 41.867561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084915, 36.512737, 41.905575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634980, -0.258711, 0.727921,
		-0.615311, -0.400367, -0.679042,
		0.467111, -0.879076, 0.095037,
		37.225048, 36.249016, 41.934086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371025, 36.266003, 41.828972>,  <36.898071, 36.864368, 41.867561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371025, 36.266003, 41.828972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691208, 36.124176, 42.022282>,  <36.883316, 36.039082, 42.138268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691208, 36.124176, 42.022282>,  <36.371025, 36.266003, 41.828972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691208, 36.124176, 42.022282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568033, -0.191343, 0.800454,
		-0.191343, -0.915243, -0.354567,
		-0.800454, 0.354567, -0.483276,
		36.931343, 36.017807, 42.167263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148876, 35.720100, 42.135159>,  <36.371025, 36.266003, 41.828972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148876, 35.720100, 42.135159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470512, 35.781036, 42.365021>,  <36.663494, 35.817596, 42.502937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470512, 35.781036, 42.365021>,  <36.148876, 35.720100, 42.135159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470512, 35.781036, 42.365021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562850, -0.116155, 0.818357,
		0.191416, -0.981479, -0.007655,
		0.804090, 0.152338, 0.574659,
		36.711739, 35.826736, 42.537418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089962, 35.227871, 42.652710>,  <36.148876, 35.720100, 42.135159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089962, 35.227871, 42.652710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333118, 35.505161, 42.807583>,  <36.479012, 35.671535, 42.900509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333118, 35.505161, 42.807583>,  <36.089962, 35.227871, 42.652710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333118, 35.505161, 42.807583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380141, -0.174029, 0.908409,
		0.697113, -0.699395, 0.157734,
		0.607887, 0.693224, 0.387187,
		36.515484, 35.713127, 42.923740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982056, 34.632065, 43.200806>,  <36.089962, 35.227871, 42.652710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982056, 34.632065, 43.200806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590427, 34.592533, 43.271965>,  <35.355450, 34.568813, 43.314663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590427, 34.592533, 43.271965>,  <35.982056, 34.632065, 43.200806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590427, 34.592533, 43.271965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158546, -0.177640, -0.971240,
		0.127592, -0.979120, 0.158254,
		-0.979073, -0.098832, 0.177901,
		35.296707, 34.562885, 43.325336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795296, 34.027771, 42.759972>,  <35.982056, 34.632065, 43.200806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795296, 34.027771, 42.759972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446281, 34.204170, 42.844067>,  <35.236874, 34.310009, 42.894524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446281, 34.204170, 42.844067>,  <35.795296, 34.027771, 42.759972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446281, 34.204170, 42.844067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294510, -0.131442, -0.946566,
		-0.389797, -0.887833, 0.244565,
		-0.872538, 0.440995, 0.210240,
		35.184521, 34.336468, 42.907139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185879, 33.596176, 42.648602>,  <35.795296, 34.027771, 42.759972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185879, 33.596176, 42.648602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054585, 33.972198, 42.611618>,  <34.975807, 34.197811, 42.589428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054585, 33.972198, 42.611618>,  <35.185879, 33.596176, 42.648602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054585, 33.972198, 42.611618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349901, -0.211924, -0.912501,
		-0.877400, -0.267163, 0.398488,
		-0.328236, 0.940060, -0.092461,
		34.956112, 34.254215, 42.583881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574539, 33.526855, 42.335369>,  <35.185879, 33.596176, 42.648602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574539, 33.526855, 42.335369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640118, 33.917816, 42.281998>,  <34.679466, 34.152393, 42.249973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640118, 33.917816, 42.281998>,  <34.574539, 33.526855, 42.335369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640118, 33.917816, 42.281998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387212, -0.060642, -0.919994,
		-0.907298, 0.202493, 0.368520,
		0.163945, 0.977404, -0.133428,
		34.689301, 34.211037, 42.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983753, 33.805439, 42.100296>,  <34.574539, 33.526855, 42.335369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983753, 33.805439, 42.100296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245201, 34.083462, 41.980515>,  <34.402069, 34.250275, 41.908646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245201, 34.083462, 41.980515>,  <33.983753, 33.805439, 42.100296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245201, 34.083462, 41.980515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336983, -0.087007, -0.937482,
		-0.677661, 0.713667, 0.177354,
		0.653619, 0.695061, -0.299455,
		34.441288, 34.291981, 41.890678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648785, 34.151875, 41.656681>,  <33.983753, 33.805439, 42.100296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648785, 34.151875, 41.656681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027763, 34.241512, 41.565353>,  <34.255150, 34.295296, 41.510555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027763, 34.241512, 41.565353>,  <33.648785, 34.151875, 41.656681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027763, 34.241512, 41.565353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224016, -0.044808, -0.973555,
		-0.228403, 0.973536, 0.007749,
		0.947443, 0.224099, -0.228322,
		34.311996, 34.308743, 41.496857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639332, 34.565788, 41.064568>,  <33.648785, 34.151875, 41.656681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639332, 34.565788, 41.064568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028061, 34.477009, 41.032818>,  <34.261299, 34.423740, 41.013767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028061, 34.477009, 41.032818>,  <33.639332, 34.565788, 41.064568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028061, 34.477009, 41.032818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068949, 0.054333, -0.996140,
		0.225402, 0.973544, 0.037499,
		0.971823, -0.221946, -0.079372,
		34.319607, 34.410423, 41.009007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823818, 34.868336, 40.383347>,  <33.639332, 34.565788, 41.064568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823818, 34.868336, 40.383347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139824, 34.641857, 40.477409>,  <34.329426, 34.505970, 40.533848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139824, 34.641857, 40.477409>,  <33.823818, 34.868336, 40.383347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139824, 34.641857, 40.477409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241352, -0.065380, -0.968233,
		0.563582, 0.821675, 0.085001,
		0.790016, -0.566194, 0.235160,
		34.376827, 34.472000, 40.547958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325577, 35.145035, 40.060661>,  <33.823818, 34.868336, 40.383347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325577, 35.145035, 40.060661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421783, 34.760853, 40.116768>,  <34.479507, 34.530342, 40.150433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421783, 34.760853, 40.116768>,  <34.325577, 35.145035, 40.060661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421783, 34.760853, 40.116768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145455, -0.107210, -0.983539,
		0.959685, 0.256959, 0.113917,
		0.240516, -0.960457, 0.140264,
		34.493938, 34.472717, 40.158848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040806, 35.041084, 39.993057>,  <34.325577, 35.145035, 40.060661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040806, 35.041084, 39.993057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852211, 34.697960, 39.911217>,  <34.739056, 34.492085, 39.862110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852211, 34.697960, 39.911217>,  <35.040806, 35.041084, 39.993057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852211, 34.697960, 39.911217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305563, 0.058729, -0.950359,
		0.827243, -0.510601, 0.234425,
		-0.471487, -0.857810, -0.204604,
		34.710766, 34.440617, 39.849834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523567, 34.510571, 39.723774>,  <35.040806, 35.041084, 39.993057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523567, 34.510571, 39.723774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168400, 34.379894, 39.594242>,  <34.955299, 34.301487, 39.516521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168400, 34.379894, 39.594242>,  <35.523567, 34.510571, 39.723774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168400, 34.379894, 39.594242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355267, -0.039860, -0.933915,
		0.292195, -0.944290, 0.151456,
		-0.887923, -0.326693, -0.323828,
		34.902023, 34.281887, 39.497093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616066, 33.859333, 39.391731>,  <35.523567, 34.510571, 39.723774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616066, 33.859333, 39.391731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302685, 34.046555, 39.228203>,  <35.114658, 34.158886, 39.130085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302685, 34.046555, 39.228203>,  <35.616066, 33.859333, 39.391731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302685, 34.046555, 39.228203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374529, -0.169357, -0.911617,
		-0.495921, -0.867322, -0.042616,
		-0.783448, 0.468051, -0.408825,
		35.067650, 34.186970, 39.105556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.383286, 34.269848, 47.084675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.038033, 34.450794, 46.994911>,  <34.830879, 34.559364, 46.941051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.038033, 34.450794, 46.994911>,  <35.383286, 34.269848, 47.084675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038033, 34.450794, 46.994911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054003, -0.359159, -0.931713,
		-0.502078, -0.816312, 0.285573,
		-0.863134, 0.452370, -0.224409,
		34.779091, 34.586506, 46.927589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892635, 33.753059, 46.732830>,  <35.383286, 34.269848, 47.084675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892635, 33.753059, 46.732830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.773220, 34.113689, 46.607586>,  <34.701572, 34.330067, 46.532440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.773220, 34.113689, 46.607586>,  <34.892635, 33.753059, 46.732830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773220, 34.113689, 46.607586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031599, -0.318553, -0.947378,
		-0.953875, -0.292721, 0.066611,
		-0.298537, 0.901576, -0.313110,
		34.683659, 34.384163, 46.513653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426926, 33.555176, 46.130161>,  <34.892635, 33.753059, 46.732830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426926, 33.555176, 46.130161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.526566, 33.941982, 46.108856>,  <34.586349, 34.174065, 46.096073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.526566, 33.941982, 46.108856>,  <34.426926, 33.555176, 46.130161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526566, 33.941982, 46.108856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138123, -0.089905, -0.986326,
		-0.958578, 0.238337, -0.155962,
		0.249099, 0.967012, -0.053262,
		34.601295, 34.232086, 46.092876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067993, 33.833145, 45.533764>,  <34.426926, 33.555176, 46.130161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067993, 33.833145, 45.533764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344925, 34.111469, 45.610226>,  <34.511082, 34.278461, 45.656101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.344925, 34.111469, 45.610226>,  <34.067993, 33.833145, 45.533764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344925, 34.111469, 45.610226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178630, 0.091395, -0.979662,
		-0.699126, 0.712390, -0.061017,
		0.692325, 0.695807, 0.191151,
		34.552624, 34.320213, 45.667572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870731, 34.393124, 45.111237>,  <34.067993, 33.833145, 45.533764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870731, 34.393124, 45.111237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.260792, 34.406693, 45.198814>,  <34.494827, 34.414833, 45.251362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.260792, 34.406693, 45.198814>,  <33.870731, 34.393124, 45.111237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260792, 34.406693, 45.198814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210877, 0.161016, -0.964160,
		-0.067961, 0.986369, 0.149860,
		0.975147, 0.033924, 0.218945,
		34.553337, 34.416870, 45.264500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135990, 34.950336, 44.752167>,  <33.870731, 34.393124, 45.111237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135990, 34.950336, 44.752167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.463669, 34.727066, 44.804871>,  <34.660275, 34.593102, 44.836491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.463669, 34.727066, 44.804871>,  <34.135990, 34.950336, 44.752167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463669, 34.727066, 44.804871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342159, 0.291289, -0.893352,
		0.460271, 0.776910, 0.429608,
		0.819194, -0.558178, 0.131755,
		34.709427, 34.559612, 44.844398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685860, 35.379963, 44.500099>,  <34.135990, 34.950336, 44.752167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685860, 35.379963, 44.500099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827045, 35.007099, 44.532356>,  <34.911755, 34.783382, 44.551712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.827045, 35.007099, 44.532356>,  <34.685860, 35.379963, 44.500099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827045, 35.007099, 44.532356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441761, 0.090050, -0.892602,
		0.824782, 0.350681, 0.443574,
		0.352962, -0.932156, 0.080646,
		34.932934, 34.727451, 44.556549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354881, 35.425854, 44.257153>,  <34.685860, 35.379963, 44.500099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354881, 35.425854, 44.257153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.265743, 35.038780, 44.209957>,  <35.212261, 34.806534, 44.181641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.265743, 35.038780, 44.209957>,  <35.354881, 35.425854, 44.257153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265743, 35.038780, 44.209957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316766, 0.042590, -0.947547,
		0.921954, -0.248532, 0.297039,
		-0.222845, -0.967687, -0.117993,
		35.198891, 34.748474, 44.174561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796772, 35.181637, 43.715279>,  <35.354881, 35.425854, 44.257153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796772, 35.181637, 43.715279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524620, 34.888939, 43.731415>,  <35.361328, 34.713318, 43.741096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.524620, 34.888939, 43.731415>,  <35.796772, 35.181637, 43.715279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524620, 34.888939, 43.731415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000640, -0.055644, -0.998451,
		0.732859, -0.679300, 0.038328,
		-0.680380, -0.731748, 0.040345,
		35.320507, 34.669415, 43.743519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520622, 35.075119, 44.016655>,  <35.796772, 35.181637, 43.715279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520622, 35.075119, 44.016655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605110, 35.410225, 43.815247>,  <36.655804, 35.611290, 43.694401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.605110, 35.410225, 43.815247>,  <36.520622, 35.075119, 44.016655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605110, 35.410225, 43.815247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135280, 0.535239, 0.833798,
		0.968033, -0.107995, 0.226384,
		0.211215, 0.837769, -0.503520,
		36.668476, 35.661556, 43.664192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113941, 35.372604, 44.383492>,  <36.520622, 35.075119, 44.016655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113941, 35.372604, 44.383492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.923584, 35.660641, 44.181503>,  <36.809372, 35.833462, 44.060310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.923584, 35.660641, 44.181503>,  <37.113941, 35.372604, 44.383492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923584, 35.660641, 44.181503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009120, 0.578160, 0.815873,
		0.879457, 0.383661, -0.281708,
		-0.475891, 0.720094, -0.504968,
		36.780815, 35.876671, 44.030014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406548, 35.950779, 44.550720>,  <37.113941, 35.372604, 44.383492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406548, 35.950779, 44.550720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065689, 36.105064, 44.409256>,  <36.861176, 36.197636, 44.324375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065689, 36.105064, 44.409256>,  <37.406548, 35.950779, 44.550720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065689, 36.105064, 44.409256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027622, 0.641728, 0.766435,
		0.522578, 0.662882, -0.536191,
		-0.852144, 0.385711, -0.353663,
		36.810047, 36.220779, 44.303158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465591, 36.702698, 44.573174>,  <37.406548, 35.950779, 44.550720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465591, 36.702698, 44.573174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.083786, 36.584034, 44.585178>,  <36.854702, 36.512836, 44.592381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.083786, 36.584034, 44.585178>,  <37.465591, 36.702698, 44.573174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083786, 36.584034, 44.585178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149025, 0.561823, 0.813724,
		-0.258259, 0.772237, -0.580476,
		-0.954512, -0.296657, 0.030013,
		36.797432, 36.495037, 44.594181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137669, 37.342934, 44.684055>,  <37.465591, 36.702698, 44.573174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137669, 37.342934, 44.684055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.903477, 37.040131, 44.800095>,  <36.762962, 36.858448, 44.869717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.903477, 37.040131, 44.800095>,  <37.137669, 37.342934, 44.684055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903477, 37.040131, 44.800095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237711, 0.502420, 0.831305,
		-0.775050, 0.417757, -0.474107,
		-0.585484, -0.757003, 0.290095,
		36.727833, 36.813030, 44.887123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684658, 37.680096, 45.106075>,  <37.137669, 37.342934, 44.684055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684658, 37.680096, 45.106075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.644222, 37.292831, 45.197674>,  <36.619961, 37.060471, 45.252632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.644222, 37.292831, 45.197674>,  <36.684658, 37.680096, 45.106075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644222, 37.292831, 45.197674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157247, 0.242835, 0.957238,
		-0.982372, 0.060753, -0.176788,
		-0.101086, -0.968163, 0.229001,
		36.613895, 37.002384, 45.266373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000671, 37.543545, 45.572346>,  <36.684658, 37.680096, 45.106075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000671, 37.543545, 45.572346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230591, 37.221684, 45.631866>,  <36.368542, 37.028568, 45.667580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230591, 37.221684, 45.631866>,  <36.000671, 37.543545, 45.572346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230591, 37.221684, 45.631866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042725, 0.152090, 0.987443,
		-0.817181, -0.573936, 0.053042,
		0.574796, -0.804653, 0.148806,
		36.403030, 36.980289, 45.676510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801231, 37.444481, 46.226227>,  <36.000671, 37.543545, 45.572346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801231, 37.444481, 46.226227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070076, 37.149254, 46.202469>,  <36.231380, 36.972118, 46.188213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070076, 37.149254, 46.202469>,  <35.801231, 37.444481, 46.226227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070076, 37.149254, 46.202469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029902, -0.053100, 0.998141,
		-0.739848, -0.672637, -0.013620,
		0.672109, -0.738065, -0.059399,
		36.271709, 36.927834, 46.184650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624317, 36.855774, 46.599735>,  <35.801231, 37.444481, 46.226227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624317, 36.855774, 46.599735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023178, 36.872059, 46.574318>,  <36.262493, 36.881828, 46.559067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023178, 36.872059, 46.574318>,  <35.624317, 36.855774, 46.599735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023178, 36.872059, 46.574318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070806, -0.213399, 0.974396,
		0.026109, -0.976116, -0.215673,
		0.997148, 0.040711, -0.063543,
		36.322323, 36.884274, 46.555256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890625, 36.465633, 47.132877>,  <35.624317, 36.855774, 46.599735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890625, 36.465633, 47.132877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223034, 36.660698, 47.025852>,  <36.422478, 36.777737, 46.961639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223034, 36.660698, 47.025852>,  <35.890625, 36.465633, 47.132877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223034, 36.660698, 47.025852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331262, -0.047478, 0.942343,
		0.446840, -0.871741, -0.200999,
		0.831023, 0.487660, -0.267560,
		36.472340, 36.806995, 46.945583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376392, 36.101204, 47.465710>,  <35.890625, 36.465633, 47.132877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376392, 36.101204, 47.465710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.515907, 36.467670, 47.386734>,  <36.599617, 36.687550, 47.339348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.515907, 36.467670, 47.386734>,  <36.376392, 36.101204, 47.465710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515907, 36.467670, 47.386734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345412, 0.070171, 0.935824,
		0.871227, -0.394603, -0.291981,
		0.348790, 0.916169, -0.197435,
		36.620544, 36.742519, 47.327503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147968, 36.162575, 47.609062>,  <36.376392, 36.101204, 47.465710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147968, 36.162575, 47.609062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.981075, 36.524647, 47.641457>,  <36.880939, 36.741890, 47.660892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.981075, 36.524647, 47.641457>,  <37.147968, 36.162575, 47.609062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981075, 36.524647, 47.641457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294025, 0.050134, 0.954482,
		0.859921, 0.422053, -0.287064,
		-0.417234, 0.905184, 0.080983,
		36.855904, 36.796204, 47.665752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592213, 36.595570, 48.103176>,  <37.147968, 36.162575, 47.609062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592213, 36.595570, 48.103176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249126, 36.801018, 48.094086>,  <37.043274, 36.924286, 48.088631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.249126, 36.801018, 48.094086>,  <37.592213, 36.595570, 48.103176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249126, 36.801018, 48.094086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236080, 0.432739, 0.870059,
		0.456720, 0.740895, -0.492423,
		-0.857714, 0.513625, -0.022730,
		36.991814, 36.955105, 48.087265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704971, 37.255783, 48.289371>,  <37.592213, 36.595570, 48.103176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704971, 37.255783, 48.289371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314278, 37.219078, 48.366913>,  <37.079861, 37.197056, 48.413437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314278, 37.219078, 48.366913>,  <37.704971, 37.255783, 48.289371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314278, 37.219078, 48.366913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148963, 0.360031, 0.920971,
		-0.154301, 0.928417, -0.337984,
		-0.976730, -0.091760, 0.193853,
		37.021259, 37.191551, 48.425068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.423592, 38.794201, 47.897099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.794752, 38.687347, 48.001129>,  <30.017448, 38.623238, 48.063545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.794752, 38.687347, 48.001129>,  <29.423592, 38.794201, 47.897099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794752, 38.687347, 48.001129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290476, 0.080712, -0.953472,
		0.233712, 0.960274, 0.152489,
		0.927902, -0.267132, 0.260073,
		30.073122, 38.607208, 48.079151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879412, 39.352787, 47.488014>,  <29.423592, 38.794201, 47.897099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879412, 39.352787, 47.488014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.122339, 39.064190, 47.621044>,  <30.268095, 38.891029, 47.700863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.122339, 39.064190, 47.621044>,  <29.879412, 39.352787, 47.488014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122339, 39.064190, 47.621044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448811, -0.033837, -0.892986,
		0.655540, 0.691591, 0.303265,
		0.607319, -0.721496, 0.332575,
		30.304535, 38.847740, 47.720818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639656, 39.647949, 47.299877>,  <29.879412, 39.352787, 47.488014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639656, 39.647949, 47.299877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.622969, 39.252815, 47.359791>,  <30.612957, 39.015736, 47.395741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.622969, 39.252815, 47.359791>,  <30.639656, 39.647949, 47.299877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622969, 39.252815, 47.359791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541085, -0.148368, -0.827777,
		0.839933, 0.046516, 0.540694,
		-0.041717, -0.987838, 0.149788,
		30.610455, 38.956463, 47.404728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279186, 39.329010, 46.995228>,  <30.639656, 39.647949, 47.299877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279186, 39.329010, 46.995228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010391, 39.034763, 47.029404>,  <30.849113, 38.858215, 47.049908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.010391, 39.034763, 47.029404>,  <31.279186, 39.329010, 46.995228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010391, 39.034763, 47.029404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419155, -0.472915, -0.775023,
		0.610525, -0.484994, 0.626131,
		-0.671988, -0.735617, 0.085439,
		30.808794, 38.814079, 47.055035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592997, 38.794376, 46.955891>,  <31.279186, 39.329010, 46.995228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592997, 38.794376, 46.955891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.231701, 38.647167, 46.867599>,  <31.014923, 38.558842, 46.814625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.231701, 38.647167, 46.867599>,  <31.592997, 38.794376, 46.955891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231701, 38.647167, 46.867599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405194, -0.561958, -0.721124,
		0.141349, -0.740785, 0.656702,
		-0.903238, -0.368022, -0.220730,
		30.960730, 38.536762, 46.801380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682566, 38.029427, 46.750546>,  <31.592997, 38.794376, 46.955891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682566, 38.029427, 46.750546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.320377, 38.133926, 46.616756>,  <31.103064, 38.196625, 46.536484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.320377, 38.133926, 46.616756>,  <31.682566, 38.029427, 46.750546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320377, 38.133926, 46.616756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178947, -0.479598, -0.859048,
		-0.384834, -0.837697, 0.387514,
		-0.905473, 0.261247, -0.334469,
		31.048737, 38.212299, 46.516415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474119, 37.406212, 46.351734>,  <31.682566, 38.029427, 46.750546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474119, 37.406212, 46.351734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.242523, 37.714500, 46.245331>,  <31.103565, 37.899471, 46.181488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.242523, 37.714500, 46.245331>,  <31.474119, 37.406212, 46.351734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242523, 37.714500, 46.245331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049340, -0.358779, -0.932117,
		-0.813839, -0.526563, 0.245757,
		-0.578991, 0.770720, -0.266008,
		31.068827, 37.945717, 46.165527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962612, 37.147587, 45.919678>,  <31.474119, 37.406212, 46.351734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962612, 37.147587, 45.919678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948833, 37.534321, 45.818447>,  <30.940567, 37.766361, 45.757710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948833, 37.534321, 45.818447>,  <30.962612, 37.147587, 45.919678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948833, 37.534321, 45.818447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059301, -0.254759, -0.965185,
		-0.997646, -0.018240, 0.066110,
		-0.034447, 0.966833, -0.253077,
		30.938499, 37.824371, 45.742523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367926, 37.247967, 45.396782>,  <30.962612, 37.147587, 45.919678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367926, 37.247967, 45.396782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626665, 37.546436, 45.333771>,  <30.781908, 37.725517, 45.295963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626665, 37.546436, 45.333771>,  <30.367926, 37.247967, 45.396782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626665, 37.546436, 45.333771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004126, -0.203132, -0.979143,
		-0.762608, 0.634006, -0.128316,
		0.646848, 0.746173, -0.157526,
		30.820719, 37.770287, 45.286514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114531, 37.626415, 44.813492>,  <30.367926, 37.247967, 45.396782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114531, 37.626415, 44.813492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.503115, 37.713612, 44.850891>,  <30.736265, 37.765930, 44.873329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.503115, 37.713612, 44.850891>,  <30.114531, 37.626415, 44.813492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503115, 37.713612, 44.850891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065545, 0.132099, -0.989067,
		-0.227963, 0.966968, 0.114040,
		0.971461, 0.217996, 0.093494,
		30.794554, 37.779011, 44.878941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162560, 38.352085, 44.533516>,  <30.114531, 37.626415, 44.813492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162560, 38.352085, 44.533516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514502, 38.165966, 44.494843>,  <30.725668, 38.054295, 44.471638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514502, 38.165966, 44.494843>,  <30.162560, 38.352085, 44.533516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514502, 38.165966, 44.494843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063408, 0.316554, -0.946453,
		0.470991, 0.826612, 0.308026,
		0.879856, -0.465302, -0.096681,
		30.778458, 38.026375, 44.465839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463627, 38.770222, 44.074627>,  <30.162560, 38.352085, 44.533516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463627, 38.770222, 44.074627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.675894, 38.431786, 44.054523>,  <30.803255, 38.228725, 44.042461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.675894, 38.431786, 44.054523>,  <30.463627, 38.770222, 44.074627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675894, 38.431786, 44.054523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057058, 0.094822, -0.993858,
		0.845657, 0.524541, 0.098595,
		0.530668, -0.846088, -0.050257,
		30.835094, 38.177959, 44.039448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999298, 38.999355, 43.631893>,  <30.463627, 38.770222, 44.074627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999298, 38.999355, 43.631893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.000313, 38.599514, 43.643070>,  <31.000921, 38.359608, 43.649776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.000313, 38.599514, 43.643070>,  <30.999298, 38.999355, 43.631893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000313, 38.599514, 43.643070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089296, -0.027607, -0.995622,
		0.996002, 0.005023, 0.089190,
		0.002539, -0.999606, 0.027945,
		31.001074, 38.299633, 43.651455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707470, 38.739346, 43.287045>,  <30.999298, 38.999355, 43.631893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707470, 38.739346, 43.287045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.441816, 38.441017, 43.266365>,  <31.282423, 38.262020, 43.253956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.441816, 38.441017, 43.266365>,  <31.707470, 38.739346, 43.287045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441816, 38.441017, 43.266365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147461, -0.062889, -0.987066,
		0.732924, -0.663170, 0.151746,
		-0.664136, -0.745822, -0.051699,
		31.242575, 38.217270, 43.250854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451702, 38.477173, 43.209415>,  <31.707470, 38.739346, 43.287045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451702, 38.477173, 43.209415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711792, 38.778446, 43.249252>,  <32.867844, 38.959213, 43.273155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.711792, 38.778446, 43.249252>,  <32.451702, 38.477173, 43.209415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711792, 38.778446, 43.249252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303034, 0.136900, 0.943095,
		0.696694, -0.643402, 0.317257,
		0.650222, 0.753188, 0.099595,
		32.906860, 39.004402, 43.279129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748997, 38.304230, 43.865002>,  <32.451702, 38.477173, 43.209415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748997, 38.304230, 43.865002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.830036, 38.694859, 43.836002>,  <32.878658, 38.929237, 43.818604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.830036, 38.694859, 43.836002>,  <32.748997, 38.304230, 43.865002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830036, 38.694859, 43.836002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188576, 0.111550, 0.975703,
		0.960934, -0.184002, 0.206758,
		0.202595, 0.976575, -0.072494,
		32.890816, 38.987831, 43.814255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170612, 38.510342, 44.508274>,  <32.748997, 38.304230, 43.865002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170612, 38.510342, 44.508274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067116, 38.868530, 44.363396>,  <33.005016, 39.083443, 44.276470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067116, 38.868530, 44.363396>,  <33.170612, 38.510342, 44.508274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067116, 38.868530, 44.363396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040869, 0.384780, 0.922103,
		0.965080, 0.223787, -0.136157,
		-0.258745, 0.895469, -0.362197,
		32.989491, 39.137173, 44.254738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756615, 38.990582, 44.706856>,  <33.170612, 38.510342, 44.508274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756615, 38.990582, 44.706856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426914, 39.202763, 44.627621>,  <33.229095, 39.330070, 44.580082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426914, 39.202763, 44.627621>,  <33.756615, 38.990582, 44.706856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426914, 39.202763, 44.627621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076572, 0.451038, 0.889214,
		0.561027, 0.717766, -0.412384,
		-0.824249, 0.530450, -0.198084,
		33.179638, 39.361897, 44.568195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865723, 39.741459, 44.735752>,  <33.756615, 38.990582, 44.706856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865723, 39.741459, 44.735752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480515, 39.680599, 44.824692>,  <33.249390, 39.644085, 44.878056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.480515, 39.680599, 44.824692>,  <33.865723, 39.741459, 44.735752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480515, 39.680599, 44.824692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121239, 0.492281, 0.861952,
		-0.240603, 0.857036, -0.455630,
		-0.963022, -0.152148, 0.222351,
		33.191608, 39.634956, 44.891396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676327, 40.270302, 45.207672>,  <33.865723, 39.741459, 44.735752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676327, 40.270302, 45.207672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411484, 39.974598, 45.256840>,  <33.252579, 39.797176, 45.286343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.411484, 39.974598, 45.256840>,  <33.676327, 40.270302, 45.207672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411484, 39.974598, 45.256840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070092, 0.102218, 0.992290,
		-0.746121, 0.665622, -0.015864,
		-0.662111, -0.739256, 0.122922,
		33.212849, 39.752823, 45.293716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195030, 40.564529, 45.689144>,  <33.676327, 40.270302, 45.207672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195030, 40.564529, 45.689144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.114384, 40.173325, 45.710453>,  <33.065994, 39.938602, 45.723236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.114384, 40.173325, 45.710453>,  <33.195030, 40.564529, 45.689144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114384, 40.173325, 45.710453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209038, 0.096100, 0.973174,
		-0.956897, 0.185075, -0.223817,
		-0.201619, -0.978014, 0.053270,
		33.053898, 39.879921, 45.726433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569851, 40.512100, 46.040260>,  <33.195030, 40.564529, 45.689144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569851, 40.512100, 46.040260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725147, 40.145546, 46.079266>,  <32.818325, 39.925613, 46.102669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725147, 40.145546, 46.079266>,  <32.569851, 40.512100, 46.040260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725147, 40.145546, 46.079266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242720, 0.000401, 0.970096,
		-0.889021, -0.400298, -0.222269,
		0.388238, -0.916385, 0.097517,
		32.841618, 39.870632, 46.108521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202911, 40.276989, 46.556606>,  <32.569851, 40.512100, 46.040260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202911, 40.276989, 46.556606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504173, 40.013885, 46.560921>,  <32.684929, 39.856026, 46.563507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.504173, 40.013885, 46.560921>,  <32.202911, 40.276989, 46.556606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504173, 40.013885, 46.560921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087154, -0.083522, 0.992688,
		-0.652045, -0.748587, -0.120231,
		0.753155, -0.657755, 0.010782,
		32.730122, 39.816559, 46.564156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995907, 39.677315, 46.929329>,  <32.202911, 40.276989, 46.556606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995907, 39.677315, 46.929329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394424, 39.703793, 46.951309>,  <32.633533, 39.719681, 46.964497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394424, 39.703793, 46.951309>,  <31.995907, 39.677315, 46.929329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394424, 39.703793, 46.951309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051239, -0.056495, 0.997087,
		0.069105, -0.996206, -0.052894,
		0.996293, 0.066193, 0.054949,
		32.693314, 39.723652, 46.967793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124138, 39.296185, 47.490421>,  <31.995907, 39.677315, 46.929329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124138, 39.296185, 47.490421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463833, 39.502121, 47.443546>,  <32.667652, 39.625683, 47.415421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463833, 39.502121, 47.443546>,  <32.124138, 39.296185, 47.490421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463833, 39.502121, 47.443546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058182, 0.129345, 0.989891,
		0.524791, -0.847474, 0.079890,
		0.849240, 0.514838, -0.117187,
		32.718605, 39.656570, 47.408390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646416, 38.915920, 47.826893>,  <32.124138, 39.296185, 47.490421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646416, 38.915920, 47.826893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759220, 39.299374, 47.811501>,  <32.826904, 39.529446, 47.802265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759220, 39.299374, 47.811501>,  <32.646416, 38.915920, 47.826893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759220, 39.299374, 47.811501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098268, 0.068758, 0.992782,
		0.954364, -0.276199, 0.113595,
		0.282016, 0.958638, -0.038479,
		32.843826, 39.586964, 47.799957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134502, 38.921371, 48.355679>,  <32.646416, 38.915920, 47.826893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134502, 38.921371, 48.355679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.045166, 39.307217, 48.299637>,  <32.991562, 39.538723, 48.266010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.045166, 39.307217, 48.299637>,  <33.134502, 38.921371, 48.355679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045166, 39.307217, 48.299637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147665, 0.175564, 0.973331,
		0.963490, 0.196699, -0.181651,
		-0.223344, 0.964618, -0.140108,
		32.978165, 39.596603, 48.257603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527843, 39.406738, 48.864353>,  <33.134502, 38.921371, 48.355679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527843, 39.406738, 48.864353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236771, 39.657276, 48.752522>,  <33.062126, 39.807598, 48.685421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.236771, 39.657276, 48.752522>,  <33.527843, 39.406738, 48.864353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236771, 39.657276, 48.752522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111315, 0.294359, 0.949190,
		0.676820, 0.721831, -0.144479,
		-0.727684, 0.626348, -0.279578,
		33.018467, 39.845181, 48.668648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956421, 39.859577, 48.623543>,  <33.527843, 39.406738, 48.864353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956421, 39.859577, 48.623543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325386, 39.976841, 48.724106>,  <34.546764, 40.047199, 48.784443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325386, 39.976841, 48.724106>,  <33.956421, 39.859577, 48.623543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325386, 39.976841, 48.724106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255145, 0.026084, -0.966551,
		-0.289914, 0.955707, -0.050738,
		0.922416, 0.293162, 0.251406,
		34.602112, 40.064789, 48.799526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064770, 40.443764, 48.098804>,  <33.956421, 39.859577, 48.623543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064770, 40.443764, 48.098804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418488, 40.329792, 48.246773>,  <34.630718, 40.261410, 48.335552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.418488, 40.329792, 48.246773>,  <34.064770, 40.443764, 48.098804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418488, 40.329792, 48.246773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400646, 0.056132, -0.914512,
		0.239805, 0.956904, 0.163792,
		0.884294, -0.284928, 0.369919,
		34.683777, 40.244312, 48.357750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532261, 40.832798, 47.821877>,  <34.064770, 40.443764, 48.098804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532261, 40.832798, 47.821877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743084, 40.512779, 47.936512>,  <34.869579, 40.320766, 48.005291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.743084, 40.512779, 47.936512>,  <34.532261, 40.832798, 47.821877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743084, 40.512779, 47.936512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444308, -0.028051, -0.895435,
		0.724430, 0.599280, 0.340683,
		0.527060, -0.800048, 0.286586,
		34.901203, 40.272766, 48.022488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148769, 41.016571, 47.610519>,  <34.532261, 40.832798, 47.821877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148769, 41.016571, 47.610519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.184982, 40.625702, 47.687401>,  <35.206711, 40.391182, 47.733528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.184982, 40.625702, 47.687401>,  <35.148769, 41.016571, 47.610519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184982, 40.625702, 47.687401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508093, -0.120665, -0.852808,
		0.856531, 0.174865, 0.485569,
		0.090535, -0.977171, 0.192201,
		35.212143, 40.332550, 47.745060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865776, 40.847424, 47.654202>,  <35.148769, 41.016571, 47.610519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865776, 40.847424, 47.654202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.660831, 40.521049, 47.547073>,  <35.537865, 40.325226, 47.482796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.660831, 40.521049, 47.547073>,  <35.865776, 40.847424, 47.654202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660831, 40.521049, 47.547073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400437, 0.048892, -0.915019,
		0.759692, -0.576070, 0.301680,
		-0.512366, -0.815937, -0.267823,
		35.507122, 40.276268, 47.466728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441299, 40.382580, 47.443390>,  <35.865776, 40.847424, 47.654202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441299, 40.382580, 47.443390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.109180, 40.251575, 47.263012>,  <35.909908, 40.172974, 47.154785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.109180, 40.251575, 47.263012>,  <36.441299, 40.382580, 47.443390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109180, 40.251575, 47.263012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518800, -0.158585, -0.840057,
		0.203614, -0.931444, 0.301585,
		-0.830293, -0.327510, -0.450943,
		35.860092, 40.153324, 47.127728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747673, 40.019913, 46.908546>,  <36.441299, 40.382580, 47.443390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747673, 40.019913, 46.908546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366138, 40.000183, 46.790051>,  <36.137218, 39.988346, 46.718952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366138, 40.000183, 46.790051>,  <36.747673, 40.019913, 46.908546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366138, 40.000183, 46.790051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299680, -0.220416, -0.928229,
		-0.019514, -0.974158, 0.225023,
		-0.953840, -0.049322, -0.296237,
		36.079987, 39.985386, 46.701180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684608, 39.448528, 46.469643>,  <36.747673, 40.019913, 46.908546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684608, 39.448528, 46.469643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.362175, 39.660381, 46.364017>,  <36.168716, 39.787491, 46.300644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.362175, 39.660381, 46.364017>,  <36.684608, 39.448528, 46.469643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362175, 39.660381, 46.364017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157663, -0.237888, -0.958411,
		-0.570419, -0.814189, 0.108254,
		-0.806079, 0.529628, -0.264063,
		36.120350, 39.819271, 46.284798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177586, 39.029102, 46.056644>,  <36.684608, 39.448528, 46.469643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177586, 39.029102, 46.056644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.158867, 39.415577, 45.955223>,  <36.147636, 39.647461, 45.894371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.158867, 39.415577, 45.955223>,  <36.177586, 39.029102, 46.056644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158867, 39.415577, 45.955223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024096, -0.252670, -0.967252,
		-0.998614, -0.051371, -0.011457,
		-0.046794, 0.966188, -0.253557,
		36.144829, 39.705433, 45.879154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696178, 39.018864, 45.535282>,  <36.177586, 39.029102, 46.056644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696178, 39.018864, 45.535282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926113, 39.344532, 45.502563>,  <36.064072, 39.539932, 45.482933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926113, 39.344532, 45.502563>,  <35.696178, 39.018864, 45.535282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926113, 39.344532, 45.502563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131243, -0.190409, -0.972893,
		-0.807677, 0.548515, -0.216308,
		0.574833, 0.814172, -0.081800,
		36.098564, 39.588783, 45.478024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531101, 39.299416, 44.819721>,  <35.696178, 39.018864, 45.535282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531101, 39.299416, 44.819721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.877483, 39.454666, 44.945885>,  <36.085312, 39.547817, 45.021584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.877483, 39.454666, 44.945885>,  <35.531101, 39.299416, 44.819721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877483, 39.454666, 44.945885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401383, -0.163111, -0.901269,
		-0.298357, 0.907058, -0.297033,
		0.865953, 0.388124, 0.315412,
		36.137268, 39.571102, 45.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675453, 39.751347, 44.377850>,  <35.531101, 39.299416, 44.819721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675453, 39.751347, 44.377850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.043266, 39.685623, 44.520653>,  <36.263954, 39.646187, 44.606335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.043266, 39.685623, 44.520653>,  <35.675453, 39.751347, 44.377850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043266, 39.685623, 44.520653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361030, -0.005762, -0.932536,
		0.155283, 0.986392, 0.054022,
		0.919535, -0.164311, 0.357012,
		36.319126, 39.636330, 44.627758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024021, 40.002323, 43.850864>,  <35.675453, 39.751347, 44.377850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024021, 40.002323, 43.850864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.316849, 39.818565, 44.052071>,  <36.492546, 39.708309, 44.172794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.316849, 39.818565, 44.052071>,  <36.024021, 40.002323, 43.850864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316849, 39.818565, 44.052071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510382, -0.119198, -0.851647,
		0.451204, 0.880196, 0.147208,
		0.732069, -0.459399, 0.503019,
		36.536469, 39.680744, 44.202976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687485, 40.331608, 43.709286>,  <36.024021, 40.002323, 43.850864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687485, 40.331608, 43.709286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.786987, 39.961666, 43.824368>,  <36.846691, 39.739700, 43.893417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.786987, 39.961666, 43.824368>,  <36.687485, 40.331608, 43.709286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786987, 39.961666, 43.824368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638878, -0.066578, -0.766422,
		0.727979, 0.374460, 0.574304,
		0.248758, -0.924850, 0.287701,
		36.861614, 39.684212, 43.910679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.609470, 26.009542, 35.190613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383554, 26.072445, 34.866566>,  <26.248005, 26.110186, 34.672138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383554, 26.072445, 34.866566>,  <26.609470, 26.009542, 35.190613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383554, 26.072445, 34.866566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139280, 0.949429, 0.281399,
		0.813397, 0.271763, -0.514324,
		-0.564788, 0.157254, -0.810114,
		26.214119, 26.119621, 34.623531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902828, 26.576231, 34.871979>,  <26.609470, 26.009542, 35.190613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902828, 26.576231, 34.871979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527634, 26.571259, 34.733398>,  <26.302517, 26.568275, 34.650249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527634, 26.571259, 34.733398>,  <26.902828, 26.576231, 34.871979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527634, 26.571259, 34.733398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060711, 0.989804, 0.128850,
		0.341314, 0.141893, -0.929177,
		-0.937986, -0.012433, -0.346449,
		26.246237, 26.567528, 34.629463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852892, 27.184631, 34.465862>,  <26.902828, 26.576231, 34.871979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852892, 27.184631, 34.465862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.473421, 27.093563, 34.553665>,  <26.245739, 27.038923, 34.606346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.473421, 27.093563, 34.553665>,  <26.852892, 27.184631, 34.465862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473421, 27.093563, 34.553665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157730, 0.942211, 0.295567,
		-0.274111, 0.245775, -0.929762,
		-0.948675, -0.227670, 0.219504,
		26.188818, 27.025263, 34.619514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543369, 27.743631, 34.206207>,  <26.852892, 27.184631, 34.465862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543369, 27.743631, 34.206207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.309820, 27.588041, 34.491245>,  <26.169691, 27.494688, 34.662270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.309820, 27.588041, 34.491245>,  <26.543369, 27.743631, 34.206207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309820, 27.588041, 34.491245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151368, 0.914514, 0.375169,
		-0.797610, 0.111186, -0.592837,
		-0.583871, -0.388975, 0.712596,
		26.134659, 27.471350, 34.705025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879002, 28.225161, 34.276566>,  <26.543369, 27.743631, 34.206207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879002, 28.225161, 34.276566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.887451, 28.029676, 34.625443>,  <25.892521, 27.912386, 34.834766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.887451, 28.029676, 34.625443>,  <25.879002, 28.225161, 34.276566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.887451, 28.029676, 34.625443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383981, 0.801512, 0.458406,
		-0.923099, -0.344588, -0.170726,
		0.021122, -0.488710, 0.872191,
		25.893787, 27.883064, 34.887100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229347, 28.298983, 34.616032>,  <25.879002, 28.225161, 34.276566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229347, 28.298983, 34.616032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.455408, 28.168991, 34.919346>,  <25.591045, 28.090996, 35.101334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.455408, 28.168991, 34.919346>,  <25.229347, 28.298983, 34.616032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455408, 28.168991, 34.919346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354717, 0.734124, 0.578997,
		-0.744834, -0.596198, 0.299618,
		0.565154, -0.324977, 0.758281,
		25.624954, 28.071499, 35.146832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745220, 28.351974, 35.098103>,  <25.229347, 28.298983, 34.616032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745220, 28.351974, 35.098103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.096342, 28.331602, 35.288624>,  <25.307016, 28.319380, 35.402935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.096342, 28.331602, 35.288624>,  <24.745220, 28.351974, 35.098103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096342, 28.331602, 35.288624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287694, 0.738972, 0.609223,
		-0.383001, -0.671809, 0.634022,
		0.877805, -0.050929, 0.476302,
		25.359684, 28.316324, 35.431515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619251, 28.342098, 35.750839>,  <24.745220, 28.351974, 35.098103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619251, 28.342098, 35.750839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.998318, 28.469236, 35.738834>,  <25.225758, 28.545519, 35.731632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.998318, 28.469236, 35.738834>,  <24.619251, 28.342098, 35.750839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998318, 28.469236, 35.738834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259701, 0.822135, 0.506606,
		0.185695, -0.472300, 0.861655,
		0.947667, 0.317847, -0.030009,
		25.282618, 28.564590, 35.729832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717014, 28.583765, 36.457676>,  <24.619251, 28.342098, 35.750839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717014, 28.583765, 36.457676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.977627, 28.750795, 36.204334>,  <25.133995, 28.851013, 36.052330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.977627, 28.750795, 36.204334>,  <24.717014, 28.583765, 36.457676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977627, 28.750795, 36.204334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182807, 0.896691, 0.403146,
		0.736267, -0.146881, 0.660559,
		0.651532, 0.417578, -0.633353,
		25.173086, 28.876068, 36.014328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160957, 29.086483, 36.883942>,  <24.717014, 28.583765, 36.457676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160957, 29.086483, 36.883942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.166153, 29.187553, 36.496956>,  <25.169270, 29.248196, 36.264763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.166153, 29.187553, 36.496956>,  <25.160957, 29.086483, 36.883942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166153, 29.187553, 36.496956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211408, 0.946366, 0.244330,
		0.977312, 0.201356, 0.065710,
		0.012988, 0.252678, -0.967463,
		25.170050, 29.263357, 36.206718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710075, 29.500172, 36.804470>,  <25.160957, 29.086483, 36.883942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710075, 29.500172, 36.804470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.452196, 29.574892, 36.507965>,  <25.297468, 29.619724, 36.330063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.452196, 29.574892, 36.507965>,  <25.710075, 29.500172, 36.804470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452196, 29.574892, 36.507965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089166, 0.981441, 0.169774,
		0.759220, 0.043357, -0.649389,
		-0.644697, 0.186799, -0.741263,
		25.258787, 29.630932, 36.285587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.910004, 30.099840, 36.552090>,  <25.710075, 29.500172, 36.804470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.910004, 30.099840, 36.552090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.572638, 30.064629, 36.340088>,  <25.370218, 30.043501, 36.212887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.572638, 30.064629, 36.340088>,  <25.910004, 30.099840, 36.552090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572638, 30.064629, 36.340088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031734, 0.992926, -0.114417,
		0.536323, -0.079682, -0.840243,
		-0.843416, -0.088029, -0.530000,
		25.319613, 30.038219, 36.181087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975109, 30.402872, 35.849380>,  <25.910004, 30.099840, 36.552090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975109, 30.402872, 35.849380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.599085, 30.414734, 35.985268>,  <25.373470, 30.421850, 36.066799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.599085, 30.414734, 35.985268>,  <25.975109, 30.402872, 35.849380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599085, 30.414734, 35.985268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012599, 0.998552, -0.052301,
		-0.340778, -0.044886, -0.939072,
		-0.940059, 0.029654, 0.339719,
		25.317066, 30.423630, 36.087185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770967, 30.978668, 35.494011>,  <25.975109, 30.402872, 35.849380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770967, 30.978668, 35.494011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.491072, 30.915743, 35.772755>,  <25.323133, 30.877987, 35.940002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.491072, 30.915743, 35.772755>,  <25.770967, 30.978668, 35.494011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491072, 30.915743, 35.772755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125578, 0.987351, 0.096793,
		-0.703274, -0.019780, -0.710644,
		-0.699740, -0.157313, 0.696862,
		25.281149, 30.868549, 35.981812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205971, 31.403406, 35.214199>,  <25.770967, 30.978668, 35.494011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205971, 31.403406, 35.214199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.130302, 31.341160, 35.602013>,  <25.084902, 31.303812, 35.834702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.130302, 31.341160, 35.602013>,  <25.205971, 31.403406, 35.214199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130302, 31.341160, 35.602013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223021, 0.968368, 0.111912,
		-0.956282, -0.195056, -0.217893,
		-0.189171, -0.155614, 0.969535,
		25.073551, 31.294476, 35.892872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.624807, 31.676418, 35.212311>,  <25.205971, 31.403406, 35.214199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.624807, 31.676418, 35.212311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.705023, 31.653757, 35.603531>,  <24.753153, 31.640162, 35.838261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.705023, 31.653757, 35.603531>,  <24.624807, 31.676418, 35.212311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705023, 31.653757, 35.603531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342672, 0.931209, 0.124200,
		-0.917802, -0.360056, 0.167331,
		0.200539, -0.056651, 0.978046,
		24.765184, 31.636763, 35.896946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016581, 31.921083, 35.570438>,  <24.624807, 31.676418, 35.212311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016581, 31.921083, 35.570438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.334883, 31.958347, 35.809803>,  <24.525864, 31.980705, 35.953423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.334883, 31.958347, 35.809803>,  <24.016581, 31.921083, 35.570438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334883, 31.958347, 35.809803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128464, 0.991577, 0.016465,
		-0.591835, -0.089976, 0.801022,
		0.795756, 0.093158, 0.598409,
		24.573610, 31.986294, 35.989326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.843451, 32.481380, 35.847202>,  <24.016581, 31.921083, 35.570438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.843451, 32.481380, 35.847202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.239727, 32.435246, 35.876137>,  <24.477493, 32.407566, 35.893497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.239727, 32.435246, 35.876137>,  <23.843451, 32.481380, 35.847202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.239727, 32.435246, 35.876137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128361, 0.968361, -0.214011,
		-0.045369, 0.221304, 0.974149,
		0.990689, -0.115333, 0.072340,
		24.536934, 32.400646, 35.897839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.965397, 33.073414, 36.227863>,  <23.843451, 32.481380, 35.847202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.965397, 33.073414, 36.227863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.287687, 32.932064, 36.037735>,  <24.481062, 32.847256, 35.923656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.287687, 32.932064, 36.037735>,  <23.965397, 33.073414, 36.227863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287687, 32.932064, 36.037735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154279, 0.900032, -0.407603,
		0.571843, 0.255085, 0.779697,
		0.805726, -0.353376, -0.475323,
		24.529406, 32.826050, 35.895138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430864, 33.564548, 36.456493>,  <23.965397, 33.073414, 36.227863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430864, 33.564548, 36.456493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.580860, 33.386562, 36.131191>,  <24.670858, 33.279770, 35.936008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.580860, 33.386562, 36.131191>,  <24.430864, 33.564548, 36.456493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.580860, 33.386562, 36.131191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166125, 0.895328, -0.413268,
		0.912022, 0.019869, 0.409659,
		0.374990, -0.444965, -0.813258,
		24.693357, 33.253075, 35.887215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.995605, 33.992157, 36.269016>,  <24.430864, 33.564548, 36.456493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.995605, 33.992157, 36.269016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.863842, 33.782112, 35.955135>,  <24.784784, 33.656086, 35.766808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.863842, 33.782112, 35.955135>,  <24.995605, 33.992157, 36.269016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863842, 33.782112, 35.955135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065656, 0.816331, -0.573840,
		0.941903, -0.240546, -0.234427,
		-0.329406, -0.525110, -0.784698,
		24.765020, 33.624580, 35.719727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419905, 34.237888, 35.770943>,  <24.995605, 33.992157, 36.269016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419905, 34.237888, 35.770943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.115639, 34.062527, 35.579445>,  <24.933079, 33.957310, 35.464546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.115639, 34.062527, 35.579445>,  <25.419905, 34.237888, 35.770943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115639, 34.062527, 35.579445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036866, 0.707135, -0.706117,
		0.648096, -0.554769, -0.521731,
		-0.760666, -0.438398, -0.478743,
		24.887440, 33.931007, 35.435822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623495, 34.832870, 36.261677>,  <25.419905, 34.237888, 35.770943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623495, 34.832870, 36.261677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778864, 34.850025, 36.629871>,  <25.872086, 34.860317, 36.850788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778864, 34.850025, 36.629871>,  <25.623495, 34.832870, 36.261677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778864, 34.850025, 36.629871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503836, -0.846261, -0.173177,
		0.771542, 0.531039, -0.350316,
		0.388423, 0.042888, 0.920483,
		25.895391, 34.862892, 36.906017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.246389, 34.784786, 36.180229>,  <25.623495, 34.832870, 36.261677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.246389, 34.784786, 36.180229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.192625, 34.670563, 36.559784>,  <26.160366, 34.602028, 36.787518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.192625, 34.670563, 36.559784>,  <26.246389, 34.784786, 36.180229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192625, 34.670563, 36.559784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499201, -0.846704, -0.184095,
		0.855997, 0.448941, 0.256359,
		-0.134413, -0.285559, 0.948888,
		26.152302, 34.584896, 36.844452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913637, 34.583862, 36.343784>,  <26.246389, 34.784786, 36.180229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913637, 34.583862, 36.343784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.666918, 34.428925, 36.617874>,  <26.518887, 34.335964, 36.782326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.666918, 34.428925, 36.617874>,  <26.913637, 34.583862, 36.343784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666918, 34.428925, 36.617874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528391, -0.848990, -0.004286,
		0.583406, 0.359421, 0.728322,
		-0.616798, -0.387340, 0.685221,
		26.481878, 34.312721, 36.823441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295620, 34.444923, 36.970802>,  <26.913637, 34.583862, 36.343784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295620, 34.444923, 36.970802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986116, 34.193920, 36.936077>,  <26.800415, 34.043320, 36.915241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986116, 34.193920, 36.936077>,  <27.295620, 34.444923, 36.970802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986116, 34.193920, 36.936077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631354, -0.752655, -0.186822,
		0.051889, -0.199366, 0.978550,
		-0.773757, -0.627505, -0.086816,
		26.753990, 34.005669, 36.910034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477129, 33.954468, 37.439457>,  <27.295620, 34.444923, 36.970802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477129, 33.954468, 37.439457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211189, 33.772060, 37.202808>,  <27.051626, 33.662617, 37.060818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.211189, 33.772060, 37.202808>,  <27.477129, 33.954468, 37.439457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211189, 33.772060, 37.202808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622796, -0.775711, -0.101966,
		-0.412432, -0.436254, 0.799739,
		-0.664850, -0.456020, -0.591625,
		27.011734, 33.635254, 37.025322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460943, 33.125374, 37.654778>,  <27.477129, 33.954468, 37.439457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460943, 33.125374, 37.654778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312849, 33.136925, 37.283382>,  <27.223991, 33.143856, 37.060547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312849, 33.136925, 37.283382>,  <27.460943, 33.125374, 37.654778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312849, 33.136925, 37.283382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550679, -0.798132, -0.244412,
		-0.748115, -0.601790, 0.279594,
		-0.370237, 0.028881, -0.928488,
		27.201778, 33.145588, 37.004837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327040, 32.375767, 37.409927>,  <27.460943, 33.125374, 37.654778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327040, 32.375767, 37.409927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259344, 32.533909, 37.048805>,  <27.218727, 32.628796, 36.832134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259344, 32.533909, 37.048805>,  <27.327040, 32.375767, 37.409927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259344, 32.533909, 37.048805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352904, -0.830970, -0.430056,
		-0.920226, -0.391386, 0.001111,
		-0.169241, 0.395356, -0.902802,
		27.208572, 32.652515, 36.777966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960545, 31.840496, 36.981762>,  <27.327040, 32.375767, 37.409927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960545, 31.840496, 36.981762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.147221, 32.095604, 36.736668>,  <27.259226, 32.248669, 36.589611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.147221, 32.095604, 36.736668>,  <26.960545, 31.840496, 36.981762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147221, 32.095604, 36.736668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320705, -0.767694, -0.554791,
		-0.824226, 0.062406, -0.562811,
		0.466689, 0.637770, -0.612740,
		27.287228, 32.286934, 36.552845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694708, 31.743914, 36.235054>,  <26.960545, 31.840496, 36.981762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694708, 31.743914, 36.235054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059984, 31.903008, 36.199528>,  <27.279150, 31.998465, 36.178211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.059984, 31.903008, 36.199528>,  <26.694708, 31.743914, 36.235054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059984, 31.903008, 36.199528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213827, -0.653149, -0.726412,
		-0.346928, 0.644362, -0.681497,
		0.913191, 0.397736, -0.088813,
		27.333942, 32.022327, 36.172882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753838, 31.903551, 35.499195>,  <26.694708, 31.743914, 36.235054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753838, 31.903551, 35.499195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117491, 31.875668, 35.663448>,  <27.335682, 31.858936, 35.762001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117491, 31.875668, 35.663448>,  <26.753838, 31.903551, 35.499195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117491, 31.875668, 35.663448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307217, -0.553484, -0.774127,
		0.281245, 0.829937, -0.481773,
		0.909131, -0.069711, 0.410636,
		27.390230, 31.854753, 35.786640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077448, 31.782684, 34.848869>,  <26.753838, 31.903551, 35.499195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077448, 31.782684, 34.848869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345861, 31.688948, 35.130238>,  <27.506910, 31.632706, 35.299057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.345861, 31.688948, 35.130238>,  <27.077448, 31.782684, 34.848869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345861, 31.688948, 35.130238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346867, -0.739281, -0.577188,
		0.655281, 0.631307, -0.414799,
		0.671036, -0.234340, 0.703417,
		27.547173, 31.618645, 35.341263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776194, 31.833046, 34.563896>,  <27.077448, 31.782684, 34.848869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776194, 31.833046, 34.563896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819162, 31.592302, 34.880432>,  <27.844944, 31.447857, 35.070354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819162, 31.592302, 34.880432>,  <27.776194, 31.833046, 34.563896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819162, 31.592302, 34.880432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463694, -0.673750, -0.575368,
		0.879459, 0.428750, 0.206701,
		0.107424, -0.601859, 0.791344,
		27.851389, 31.411745, 35.117836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463181, 31.697254, 34.594753>,  <27.776194, 31.833046, 34.563896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463181, 31.697254, 34.594753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292900, 31.411983, 34.817520>,  <28.190733, 31.240820, 34.951180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292900, 31.411983, 34.817520>,  <28.463181, 31.697254, 34.594753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292900, 31.411983, 34.817520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574369, -0.688555, -0.442710,
		0.699200, 0.131415, 0.702744,
		-0.425699, -0.713178, 0.556918,
		28.165190, 31.198030, 34.984596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019295, 31.249762, 34.860222>,  <28.463181, 31.697254, 34.594753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019295, 31.249762, 34.860222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699450, 31.014250, 34.907482>,  <28.507544, 30.872942, 34.935841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.699450, 31.014250, 34.907482>,  <29.019295, 31.249762, 34.860222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699450, 31.014250, 34.907482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540384, -0.791294, -0.286074,
		0.261929, -0.164899, 0.950895,
		-0.799611, -0.588780, 0.118155,
		28.459566, 30.837616, 34.942928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323036, 30.588726, 34.848557>,  <29.019295, 31.249762, 34.860222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323036, 30.588726, 34.848557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934551, 30.495640, 34.828186>,  <28.701460, 30.439789, 34.815964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934551, 30.495640, 34.828186>,  <29.323036, 30.588726, 34.848557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934551, 30.495640, 34.828186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235979, -0.910542, -0.339452,
		0.032625, -0.341697, 0.939244,
		-0.971210, -0.232716, -0.050927,
		28.643188, 30.425825, 34.812908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094383, 29.972727, 35.256680>,  <29.323036, 30.588726, 34.848557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094383, 29.972727, 35.256680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849461, 30.021292, 34.944183>,  <28.702507, 30.050430, 34.756683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849461, 30.021292, 34.944183>,  <29.094383, 29.972727, 35.256680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849461, 30.021292, 34.944183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205827, -0.929587, -0.305784,
		-0.763358, -0.348034, 0.544203,
		-0.612307, 0.121411, -0.781242,
		28.665768, 30.057714, 34.709812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750988, 29.381443, 35.210423>,  <29.094383, 29.972727, 35.256680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750988, 29.381443, 35.210423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676962, 29.526608, 34.845116>,  <28.632547, 29.613707, 34.625931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676962, 29.526608, 34.845116>,  <28.750988, 29.381443, 35.210423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676962, 29.526608, 34.845116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168365, -0.903866, -0.393293,
		-0.968197, -0.226546, 0.106171,
		-0.185063, 0.362909, -0.913263,
		28.621443, 29.635481, 34.571136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443417, 28.810947, 34.912590>,  <28.750988, 29.381443, 35.210423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443417, 28.810947, 34.912590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572407, 29.045313, 34.615211>,  <28.649801, 29.185932, 34.436783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572407, 29.045313, 34.615211>,  <28.443417, 28.810947, 34.912590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572407, 29.045313, 34.615211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118981, -0.804267, -0.582235,
		-0.939071, 0.099299, -0.329068,
		0.322474, 0.585913, -0.743449,
		28.669149, 29.221087, 34.392178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136709, 28.505049, 34.390358>,  <28.443417, 28.810947, 34.912590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136709, 28.505049, 34.390358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425564, 28.727419, 34.225697>,  <28.598877, 28.860842, 34.126900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425564, 28.727419, 34.225697>,  <28.136709, 28.505049, 34.390358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425564, 28.727419, 34.225697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216336, -0.746743, -0.628946,
		-0.657050, 0.365130, -0.659519,
		0.722138, 0.555927, -0.411657,
		28.642206, 28.894197, 34.102200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047142, 28.424339, 33.695896>,  <28.136709, 28.505049, 34.390358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047142, 28.424339, 33.695896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416599, 28.562574, 33.762169>,  <28.638273, 28.645515, 33.801933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416599, 28.562574, 33.762169>,  <28.047142, 28.424339, 33.695896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416599, 28.562574, 33.762169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382676, -0.807963, -0.448057,
		-0.020975, 0.477249, -0.878518,
		0.923644, 0.345586, 0.165685,
		28.693693, 28.666250, 33.811874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.472733, 38.059193, 48.667412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209511, 37.768032, 48.744476>,  <37.051579, 37.593334, 48.790714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209511, 37.768032, 48.744476>,  <37.472733, 38.059193, 48.667412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209511, 37.768032, 48.744476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106451, 0.343240, 0.933196,
		-0.745404, 0.593588, -0.303358,
		-0.658059, -0.727901, 0.192665,
		37.012093, 37.549664, 48.802277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174347, 38.383415, 49.230679>,  <37.472733, 38.059193, 48.667412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174347, 38.383415, 49.230679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001179, 38.023643, 49.254719>,  <36.897278, 37.807781, 49.269142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001179, 38.023643, 49.254719>,  <37.174347, 38.383415, 49.230679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001179, 38.023643, 49.254719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186903, 0.154787, 0.970107,
		-0.881842, 0.408749, -0.235116,
		-0.432923, -0.899425, 0.060101,
		36.871304, 37.753815, 49.272751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528629, 38.391964, 49.714027>,  <37.174347, 38.383415, 49.230679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528629, 38.391964, 49.714027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655731, 38.013348, 49.691784>,  <36.731991, 37.786179, 49.678440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.655731, 38.013348, 49.691784>,  <36.528629, 38.391964, 49.714027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655731, 38.013348, 49.691784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216280, -0.129453, 0.967711,
		-0.923178, -0.295465, -0.245852,
		0.317751, -0.946543, -0.055605,
		36.751057, 37.729385, 49.675102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972775, 38.005539, 49.932285>,  <36.528629, 38.391964, 49.714027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972775, 38.005539, 49.932285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.315536, 37.808262, 49.992256>,  <36.521194, 37.689896, 50.028240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.315536, 37.808262, 49.992256>,  <35.972775, 38.005539, 49.932285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315536, 37.808262, 49.992256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246138, -0.135921, 0.959657,
		-0.452918, -0.859236, -0.237864,
		0.856902, -0.493193, 0.149930,
		36.572609, 37.660305, 50.037235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763058, 37.440571, 50.256039>,  <35.972775, 38.005539, 49.932285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763058, 37.440571, 50.256039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154297, 37.469105, 50.334259>,  <36.389038, 37.486225, 50.381191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154297, 37.469105, 50.334259>,  <35.763058, 37.440571, 50.256039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154297, 37.469105, 50.334259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173830, -0.236874, 0.955863,
		0.114505, -0.968918, -0.219285,
		0.978096, 0.071333, 0.195550,
		36.447727, 37.490505, 50.392925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882130, 36.998787, 50.852341>,  <35.763058, 37.440571, 50.256039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882130, 36.998787, 50.852341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195526, 37.246700, 50.870277>,  <36.383564, 37.395447, 50.881039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195526, 37.246700, 50.870277>,  <35.882130, 36.998787, 50.852341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195526, 37.246700, 50.870277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101637, 0.056619, 0.993209,
		0.613031, -0.782731, 0.107353,
		0.783494, 0.619779, 0.044845,
		36.430573, 37.432632, 50.883732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315605, 36.666321, 51.399982>,  <35.882130, 36.998787, 50.852341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315605, 36.666321, 51.399982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433014, 37.047836, 51.374298>,  <36.503460, 37.276745, 51.358887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433014, 37.047836, 51.374298>,  <36.315605, 36.666321, 51.399982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433014, 37.047836, 51.374298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066394, 0.087343, 0.993963,
		0.953643, -0.287490, 0.088963,
		0.293525, 0.953793, -0.064207,
		36.521072, 37.333973, 51.355038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674957, 36.764820, 51.953712>,  <36.315605, 36.666321, 51.399982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674957, 36.764820, 51.953712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566570, 37.139889, 51.866669>,  <36.501537, 37.364929, 51.814442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.566570, 37.139889, 51.866669>,  <36.674957, 36.764820, 51.953712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566570, 37.139889, 51.866669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216443, 0.160923, 0.962941,
		0.937940, 0.308021, 0.159348,
		-0.270964, 0.937671, -0.217606,
		36.485283, 37.421188, 51.801388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552166, 36.960964, 52.544765>,  <36.674957, 36.764820, 51.953712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552166, 36.960964, 52.544765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449104, 37.291229, 52.344006>,  <36.387268, 37.489388, 52.223549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449104, 37.291229, 52.344006>,  <36.552166, 36.960964, 52.544765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449104, 37.291229, 52.344006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225987, 0.453536, 0.862111,
		0.939438, 0.335549, 0.069733,
		-0.257654, 0.825659, -0.501898,
		36.371807, 37.538925, 52.193436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885578, 37.421436, 52.925144>,  <36.552166, 36.960964, 52.544765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885578, 37.421436, 52.925144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581619, 37.602242, 52.738281>,  <36.399242, 37.710724, 52.626163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.581619, 37.602242, 52.738281>,  <36.885578, 37.421436, 52.925144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581619, 37.602242, 52.738281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147690, 0.579816, 0.801249,
		0.633042, 0.677863, -0.373844,
		-0.759899, 0.452011, -0.467162,
		36.353649, 37.737846, 52.598133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928303, 38.116108, 53.126827>,  <36.885578, 37.421436, 52.925144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928303, 38.116108, 53.126827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547783, 38.053391, 53.020660>,  <36.319473, 38.015762, 52.956959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547783, 38.053391, 53.020660>,  <36.928303, 38.116108, 53.126827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547783, 38.053391, 53.020660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306440, 0.387212, 0.869576,
		-0.033568, 0.908561, -0.416401,
		-0.951298, -0.156791, -0.265421,
		36.262394, 38.006351, 52.941032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609356, 38.757195, 53.390465>,  <36.928303, 38.116108, 53.126827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609356, 38.757195, 53.390465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.327209, 38.480339, 53.329269>,  <36.157921, 38.314224, 53.292553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.327209, 38.480339, 53.329269>,  <36.609356, 38.757195, 53.390465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327209, 38.480339, 53.329269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376812, 0.183316, 0.907969,
		-0.600394, 0.698098, -0.390111,
		-0.705365, -0.692138, -0.152990,
		36.115601, 38.272697, 53.283371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004574, 39.154560, 53.507935>,  <36.609356, 38.757195, 53.390465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004574, 39.154560, 53.507935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087585, 38.769535, 53.577675>,  <36.137390, 38.538521, 53.619518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087585, 38.769535, 53.577675>,  <36.004574, 39.154560, 53.507935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087585, 38.769535, 53.577675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086964, 0.159376, 0.983380,
		-0.974356, -0.219240, -0.050634,
		0.207527, -0.962566, 0.174355,
		36.149845, 38.480766, 53.629982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524845, 38.924271, 53.967960>,  <36.004574, 39.154560, 53.507935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524845, 38.924271, 53.967960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838989, 38.682529, 54.021576>,  <36.027477, 38.537483, 54.053745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838989, 38.682529, 54.021576>,  <35.524845, 38.924271, 53.967960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838989, 38.682529, 54.021576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057983, 0.143754, 0.987913,
		-0.616315, -0.783641, 0.077857,
		0.785362, -0.604352, 0.134036,
		36.074596, 38.501225, 54.061787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411243, 39.692364, 54.252350>,  <35.524845, 38.924271, 53.967960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411243, 39.692364, 54.252350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130844, 39.975864, 54.284035>,  <34.962605, 40.145966, 54.303043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.130844, 39.975864, 54.284035>,  <35.411243, 39.692364, 54.252350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130844, 39.975864, 54.284035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237333, -0.127105, -0.963077,
		-0.672511, -0.693917, 0.257310,
		-0.701001, 0.708748, 0.079210,
		34.920544, 40.188488, 54.307796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898350, 39.569370, 53.897472>,  <35.411243, 39.692364, 54.252350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898350, 39.569370, 53.897472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806496, 39.957947, 53.921371>,  <34.751385, 40.191093, 53.935711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806496, 39.957947, 53.921371>,  <34.898350, 39.569370, 53.897472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806496, 39.957947, 53.921371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379547, -0.032857, -0.924589,
		-0.896221, -0.234995, 0.376253,
		-0.229636, 0.971441, 0.059744,
		34.737606, 40.249378, 53.939293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340084, 39.725452, 53.542416>,  <34.898350, 39.569370, 53.897472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340084, 39.725452, 53.542416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456089, 40.106567, 53.578415>,  <34.525692, 40.335236, 53.600014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456089, 40.106567, 53.578415>,  <34.340084, 39.725452, 53.542416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456089, 40.106567, 53.578415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250119, 0.166225, -0.953839,
		-0.923762, 0.254112, 0.286516,
		0.290009, 0.952784, 0.089994,
		34.543091, 40.392403, 53.605412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806213, 40.089584, 53.258167>,  <34.340084, 39.725452, 53.542416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806213, 40.089584, 53.258167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150822, 40.291801, 53.239384>,  <34.357586, 40.413132, 53.228111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150822, 40.291801, 53.239384>,  <33.806213, 40.089584, 53.258167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150822, 40.291801, 53.239384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082134, 0.047494, -0.995489,
		-0.501031, 0.861494, 0.082439,
		0.861523, 0.505542, -0.046962,
		34.409279, 40.443462, 53.225296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714302, 40.668579, 52.793465>,  <33.806213, 40.089584, 53.258167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714302, 40.668579, 52.793465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113274, 40.682308, 52.768280>,  <34.352657, 40.690548, 52.753170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113274, 40.682308, 52.768280>,  <33.714302, 40.668579, 52.793465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113274, 40.682308, 52.768280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068821, 0.211533, -0.974945,
		-0.020149, 0.976768, 0.213351,
		0.997426, 0.034327, -0.062960,
		34.412502, 40.692608, 52.749393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856819, 41.248398, 52.319122>,  <33.714302, 40.668579, 52.793465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856819, 41.248398, 52.319122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173462, 41.004292, 52.331375>,  <34.363449, 40.857830, 52.338726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173462, 41.004292, 52.331375>,  <33.856819, 41.248398, 52.319122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173462, 41.004292, 52.331375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125332, 0.113095, -0.985648,
		0.598040, 0.784084, 0.166012,
		0.791606, -0.610264, 0.030635,
		34.410942, 40.821213, 52.340565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385494, 41.585976, 51.980663>,  <33.856819, 41.248398, 52.319122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385494, 41.585976, 51.980663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459713, 41.192986, 51.973473>,  <34.504246, 40.957191, 51.969158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459713, 41.192986, 51.973473>,  <34.385494, 41.585976, 51.980663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459713, 41.192986, 51.973473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172113, 0.050503, -0.983781,
		0.967444, 0.179446, 0.178467,
		0.185548, -0.982471, -0.017974,
		34.515377, 40.898243, 51.968079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799896, 41.584831, 51.380749>,  <34.385494, 41.585976, 51.980663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799896, 41.584831, 51.380749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746437, 41.194618, 51.450581>,  <34.714359, 40.960491, 51.492481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746437, 41.194618, 51.450581>,  <34.799896, 41.584831, 51.380749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746437, 41.194618, 51.450581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026044, -0.179561, -0.983402,
		0.990686, -0.126887, 0.049406,
		-0.133652, -0.975529, 0.174584,
		34.706341, 40.901958, 51.502956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349014, 41.217415, 51.058170>,  <34.799896, 41.584831, 51.380749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349014, 41.217415, 51.058170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054684, 40.951893, 51.111732>,  <34.878086, 40.792580, 51.143871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054684, 40.951893, 51.111732>,  <35.349014, 41.217415, 51.058170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054684, 40.951893, 51.111732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093997, -0.295956, -0.950565,
		0.670617, -0.686862, 0.280167,
		-0.735824, -0.663800, 0.133910,
		34.833935, 40.752754, 51.151905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548492, 40.534100, 50.793316>,  <35.349014, 41.217415, 51.058170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548492, 40.534100, 50.793316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148682, 40.526115, 50.802635>,  <34.908794, 40.521324, 50.808228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148682, 40.526115, 50.802635>,  <35.548492, 40.534100, 50.793316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148682, 40.526115, 50.802635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013434, -0.397954, -0.917307,
		0.027582, -0.917188, 0.397499,
		-0.999529, -0.019961, 0.023298,
		34.848824, 40.520126, 50.809624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400211, 39.885479, 50.679245>,  <35.548492, 40.534100, 50.793316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400211, 39.885479, 50.679245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087234, 40.112156, 50.575985>,  <34.899448, 40.248161, 50.514027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087234, 40.112156, 50.575985>,  <35.400211, 39.885479, 50.679245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087234, 40.112156, 50.575985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005394, -0.408375, -0.912798,
		-0.622700, -0.715604, 0.316474,
		-0.782442, 0.566692, -0.258155,
		34.852501, 40.282162, 50.498539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990948, 39.424461, 50.244671>,  <35.400211, 39.885479, 50.679245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990948, 39.424461, 50.244671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826717, 39.780563, 50.165813>,  <34.728180, 39.994225, 50.118500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826717, 39.780563, 50.165813>,  <34.990948, 39.424461, 50.244671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826717, 39.780563, 50.165813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080034, -0.180190, -0.980371,
		-0.908306, -0.418297, 0.002731,
		-0.410578, 0.890258, -0.197146,
		34.703545, 40.047642, 50.106670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698475, 39.254005, 49.599167>,  <34.990948, 39.424461, 50.244671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698475, 39.254005, 49.599167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722305, 39.652504, 49.624294>,  <34.736603, 39.891602, 49.639370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722305, 39.652504, 49.624294>,  <34.698475, 39.254005, 49.599167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722305, 39.652504, 49.624294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308213, 0.041499, -0.950411,
		-0.949450, 0.075981, -0.304584,
		0.059573, 0.996245, 0.062820,
		34.740177, 39.951378, 49.643139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137352, 39.525131, 49.230858>,  <34.698475, 39.254005, 49.599167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137352, 39.525131, 49.230858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431240, 39.796368, 49.238724>,  <34.607571, 39.959110, 49.243443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431240, 39.796368, 49.238724>,  <34.137352, 39.525131, 49.230858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431240, 39.796368, 49.238724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114197, -0.095048, -0.988901,
		-0.668694, 0.728807, -0.147269,
		0.734716, 0.678090, 0.019669,
		34.651653, 39.999794, 49.244625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682487, 40.097878, 49.286884>,  <34.137352, 39.525131, 49.230858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682487, 40.097878, 49.286884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303650, 40.082375, 49.159447>,  <33.076347, 40.073074, 49.082985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.303650, 40.082375, 49.159447>,  <33.682487, 40.097878, 49.286884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303650, 40.082375, 49.159447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320464, 0.168656, 0.932126,
		0.017606, 0.984913, -0.172154,
		-0.947097, -0.038758, -0.318598,
		33.019520, 40.070747, 49.063866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422665, 40.791218, 49.467110>,  <33.682487, 40.097878, 49.286884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422665, 40.791218, 49.467110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102337, 40.555695, 49.423298>,  <32.910141, 40.414379, 49.397011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.102337, 40.555695, 49.423298>,  <33.422665, 40.791218, 49.467110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102337, 40.555695, 49.423298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407413, 0.401535, 0.820234,
		-0.438983, 0.701480, -0.561445,
		-0.800818, -0.588808, -0.109525,
		32.862091, 40.379051, 49.390442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942585, 41.154510, 49.881718>,  <33.422665, 40.791218, 49.467110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942585, 41.154510, 49.881718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757065, 40.805801, 49.818592>,  <32.645752, 40.596577, 49.780716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757065, 40.805801, 49.818592>,  <32.942585, 41.154510, 49.881718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757065, 40.805801, 49.818592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646269, 0.211068, 0.733339,
		-0.605994, 0.442114, -0.661292,
		-0.463797, -0.871771, -0.157819,
		32.617928, 40.544270, 49.771248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268257, 41.251247, 49.861275>,  <32.942585, 41.154510, 49.881718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268257, 41.251247, 49.861275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.286182, 40.860893, 49.946735>,  <32.296940, 40.626682, 49.998013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.286182, 40.860893, 49.946735>,  <32.268257, 41.251247, 49.861275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286182, 40.860893, 49.946735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602361, 0.144215, 0.785088,
		-0.796964, -0.163880, -0.581370,
		0.044818, -0.975882, 0.213649,
		32.299629, 40.568130, 50.010830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555687, 41.037899, 49.955250>,  <32.268257, 41.251247, 49.861275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555687, 41.037899, 49.955250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802790, 40.770081, 50.120216>,  <31.951052, 40.609390, 50.219196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802790, 40.770081, 50.120216>,  <31.555687, 41.037899, 49.955250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802790, 40.770081, 50.120216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598755, -0.060505, 0.798643,
		-0.509775, -0.740302, -0.438271,
		0.617755, -0.669546, 0.412416,
		31.988117, 40.569218, 50.243942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123888, 40.497585, 50.207211>,  <31.555687, 41.037899, 49.955250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123888, 40.497585, 50.207211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449692, 40.514183, 50.438675>,  <31.645174, 40.524143, 50.577553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449692, 40.514183, 50.438675>,  <31.123888, 40.497585, 50.207211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449692, 40.514183, 50.438675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569932, -0.129145, 0.811480,
		0.108403, -0.990757, -0.081541,
		0.814510, 0.041494, 0.578663,
		31.694044, 40.526630, 50.612274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040461, 39.950481, 50.606110>,  <31.123888, 40.497585, 50.207211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040461, 39.950481, 50.606110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303823, 40.144119, 50.836639>,  <31.461842, 40.260303, 50.974957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.303823, 40.144119, 50.836639>,  <31.040461, 39.950481, 50.606110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303823, 40.144119, 50.836639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534569, -0.238266, 0.810842,
		0.529846, -0.841949, 0.101908,
		0.658406, 0.484099, 0.576324,
		31.501345, 40.289349, 51.009537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873680, 39.250099, 50.705822>,  <31.040461, 39.950481, 50.606110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873680, 39.250099, 50.705822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.734138, 38.898716, 50.836430>,  <30.650414, 38.687885, 50.914795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.734138, 38.898716, 50.836430>,  <30.873680, 39.250099, 50.705822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734138, 38.898716, 50.836430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220256, -0.261793, -0.939655,
		0.910927, -0.399719, -0.102158,
		-0.348853, -0.878458, 0.326515,
		30.629482, 38.635178, 50.934383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206423, 38.741978, 50.295006>,  <30.873680, 39.250099, 50.705822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206423, 38.741978, 50.295006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855684, 38.604637, 50.429615>,  <30.645241, 38.522232, 50.510380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855684, 38.604637, 50.429615>,  <31.206423, 38.741978, 50.295006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855684, 38.604637, 50.429615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259515, -0.251202, -0.932496,
		0.404712, -0.904989, 0.131160,
		-0.876846, -0.343354, 0.336523,
		30.592630, 38.501633, 50.530571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093100, 38.003979, 50.169136>,  <31.206423, 38.741978, 50.295006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093100, 38.003979, 50.169136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733055, 38.177410, 50.186123>,  <30.517029, 38.281471, 50.196316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733055, 38.177410, 50.186123>,  <31.093100, 38.003979, 50.169136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733055, 38.177410, 50.186123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164598, -0.248198, -0.954623,
		-0.403366, -0.866259, 0.294773,
		-0.900113, 0.433582, 0.042470,
		30.463022, 38.307484, 50.198864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718063, 37.655960, 49.689770>,  <31.093100, 38.003979, 50.169136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718063, 37.655960, 49.689770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.492668, 37.984119, 49.728603>,  <30.357430, 38.181015, 49.751904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.492668, 37.984119, 49.728603>,  <30.718063, 37.655960, 49.689770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492668, 37.984119, 49.728603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375767, -0.149876, -0.914514,
		-0.735716, -0.551800, 0.392732,
		-0.563490, 0.820399, 0.097082,
		30.323622, 38.230240, 49.757729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051991, 37.527733, 49.411575>,  <30.718063, 37.655960, 49.689770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051991, 37.527733, 49.411575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.045073, 37.926750, 49.384445>,  <30.040922, 38.166161, 49.368168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.045073, 37.926750, 49.384445>,  <30.051991, 37.527733, 49.411575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045073, 37.926750, 49.384445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166163, -0.069759, -0.983628,
		-0.985947, -0.005742, 0.166961,
		-0.017295, 0.997547, -0.067825,
		30.039885, 38.226013, 49.364098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544731, 37.782726, 48.945099>,  <30.051991, 37.527733, 49.411575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544731, 37.782726, 48.945099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.794149, 38.094910, 48.926884>,  <29.943800, 38.282219, 48.915955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.794149, 38.094910, 48.926884>,  <29.544731, 37.782726, 48.945099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794149, 38.094910, 48.926884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074681, 0.001483, -0.997206,
		-0.778211, 0.625205, 0.059211,
		0.623546, 0.780459, -0.045537,
		29.981213, 38.329048, 48.913223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290098, 38.227356, 48.365189>,  <29.544731, 37.782726, 48.945099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290098, 38.227356, 48.365189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.667023, 38.341450, 48.435261>,  <29.893177, 38.409904, 48.477303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.667023, 38.341450, 48.435261>,  <29.290098, 38.227356, 48.365189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667023, 38.341450, 48.435261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132026, 0.164198, -0.977552,
		-0.307596, 0.944288, 0.117068,
		0.942313, 0.285235, 0.175177,
		29.949717, 38.427021, 48.487812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.068249, 36.151596, 53.563702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.311462, 36.466911, 53.525955>,  <34.457390, 36.656101, 53.503307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.311462, 36.466911, 53.525955>,  <34.068249, 36.151596, 53.563702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311462, 36.466911, 53.525955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052340, -0.158406, -0.985986,
		-0.792187, 0.594570, -0.137575,
		0.608030, 0.788286, -0.094368,
		34.493870, 36.703396, 53.497646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821980, 36.742023, 53.117348>,  <34.068249, 36.151596, 53.563702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821980, 36.742023, 53.117348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.212654, 36.665638, 53.078129>,  <34.447060, 36.619808, 53.054596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.212654, 36.665638, 53.078129>,  <33.821980, 36.742023, 53.117348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212654, 36.665638, 53.078129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137227, -0.204191, -0.969265,
		0.165074, 0.960124, -0.225636,
		0.976688, -0.190964, -0.098049,
		34.505661, 36.608349, 53.048714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113892, 37.026981, 52.570667>,  <33.821980, 36.742023, 53.117348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113892, 37.026981, 52.570667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.368114, 36.723122, 52.625797>,  <34.520649, 36.540806, 52.658875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.368114, 36.723122, 52.625797>,  <34.113892, 37.026981, 52.570667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368114, 36.723122, 52.625797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045857, -0.215345, -0.975461,
		0.770687, 0.613645, -0.171700,
		0.635562, -0.759649, 0.137824,
		34.558784, 36.495228, 52.667145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561493, 37.239075, 52.116066>,  <34.113892, 37.026981, 52.570667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561493, 37.239075, 52.116066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573589, 36.848125, 52.199799>,  <34.580845, 36.613556, 52.250038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.573589, 36.848125, 52.199799>,  <34.561493, 37.239075, 52.116066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573589, 36.848125, 52.199799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085653, -0.206128, -0.974769,
		0.995866, 0.047404, 0.077483,
		0.030237, -0.977376, 0.209336,
		34.582661, 36.554913, 52.262600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849335, 36.968777, 51.422207>,  <34.561493, 37.239075, 52.116066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849335, 36.968777, 51.422207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780167, 36.639908, 51.639145>,  <34.738667, 36.442585, 51.769306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780167, 36.639908, 51.639145>,  <34.849335, 36.968777, 51.422207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780167, 36.639908, 51.639145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108473, -0.563182, -0.819182,
		0.978945, -0.082820, 0.186566,
		-0.172916, -0.822172, 0.542341,
		34.728291, 36.393257, 51.801846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414146, 36.594738, 51.228580>,  <34.849335, 36.968777, 51.422207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414146, 36.594738, 51.228580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.089870, 36.395725, 51.352032>,  <34.895306, 36.276318, 51.426102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.089870, 36.395725, 51.352032>,  <35.414146, 36.594738, 51.228580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089870, 36.395725, 51.352032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016944, -0.546849, -0.837060,
		0.585236, -0.673363, 0.451752,
		-0.810686, -0.497532, 0.308626,
		34.846664, 36.246464, 51.444618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473476, 36.087654, 50.841846>,  <35.414146, 36.594738, 51.228580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473476, 36.087654, 50.841846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.092693, 36.028275, 50.948986>,  <34.864223, 35.992645, 51.013271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.092693, 36.028275, 50.948986>,  <35.473476, 36.087654, 50.841846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092693, 36.028275, 50.948986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143307, -0.557034, -0.818032,
		0.270639, -0.817114, 0.508997,
		-0.951955, -0.148449, 0.267853,
		34.807106, 35.983742, 51.029343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367649, 35.294861, 50.883801>,  <35.473476, 36.087654, 50.841846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367649, 35.294861, 50.883801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.009399, 35.467903, 50.842396>,  <34.794449, 35.571728, 50.817554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.009399, 35.467903, 50.842396>,  <35.367649, 35.294861, 50.883801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009399, 35.467903, 50.842396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149972, -0.512750, -0.845338,
		-0.418775, -0.741578, 0.524109,
		-0.895620, 0.432608, -0.103511,
		34.740715, 35.597687, 50.811340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001579, 34.795464, 50.548447>,  <35.367649, 35.294861, 50.883801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001579, 34.795464, 50.548447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765961, 35.113808, 50.492405>,  <34.624588, 35.304813, 50.458782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765961, 35.113808, 50.492405>,  <35.001579, 34.795464, 50.548447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765961, 35.113808, 50.492405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189591, -0.304638, -0.933408,
		-0.785545, -0.523258, 0.330334,
		-0.589045, 0.795862, -0.140102,
		34.589249, 35.352566, 50.450375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225101, 34.547573, 50.435730>,  <35.001579, 34.795464, 50.548447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225101, 34.547573, 50.435730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.281513, 34.902420, 50.259945>,  <34.315361, 35.115330, 50.154472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.281513, 34.902420, 50.259945>,  <34.225101, 34.547573, 50.435730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281513, 34.902420, 50.259945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406676, -0.352809, -0.842699,
		-0.902622, 0.297561, 0.311016,
		0.141025, 0.887121, -0.439464,
		34.323822, 35.168556, 50.128105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709309, 34.542294, 49.819416>,  <34.225101, 34.547573, 50.435730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709309, 34.542294, 49.819416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.924812, 34.867409, 49.730774>,  <34.054115, 35.062477, 49.677589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.924812, 34.867409, 49.730774>,  <33.709309, 34.542294, 49.819416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924812, 34.867409, 49.730774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167383, -0.154528, -0.973706,
		-0.825662, 0.561690, 0.052793,
		0.538763, 0.812789, -0.221606,
		34.086441, 35.111244, 49.664291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349449, 34.894714, 49.357212>,  <33.709309, 34.542294, 49.819416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349449, 34.894714, 49.357212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.729374, 35.007484, 49.302990>,  <33.957329, 35.075146, 49.270454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.729374, 35.007484, 49.302990>,  <33.349449, 34.894714, 49.357212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729374, 35.007484, 49.302990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035325, -0.333912, -0.941942,
		-0.310819, 0.899457, -0.307195,
		0.949812, 0.281921, -0.135560,
		34.014317, 35.092060, 49.262321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085556, 35.576447, 49.353127>,  <33.349449, 34.894714, 49.357212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085556, 35.576447, 49.353127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.703171, 35.692413, 49.334869>,  <32.473740, 35.761993, 49.323914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.703171, 35.692413, 49.334869>,  <33.085556, 35.576447, 49.353127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703171, 35.692413, 49.334869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024155, 0.077276, 0.996717,
		0.292488, 0.953928, -0.066870,
		-0.955964, 0.289913, -0.045645,
		32.416382, 35.779388, 49.321175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023731, 36.068592, 49.938618>,  <33.085556, 35.576447, 49.353127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023731, 36.068592, 49.938618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.647816, 35.995281, 49.823235>,  <32.422268, 35.951294, 49.754005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.647816, 35.995281, 49.823235>,  <33.023731, 36.068592, 49.938618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647816, 35.995281, 49.823235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300076, 0.038553, 0.953136,
		-0.163566, 0.982305, -0.091228,
		-0.939788, -0.183276, -0.288460,
		32.365879, 35.940300, 49.736698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653084, 36.515892, 50.257778>,  <33.023731, 36.068592, 49.938618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653084, 36.515892, 50.257778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.362049, 36.252716, 50.180080>,  <32.187428, 36.094810, 50.133461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.362049, 36.252716, 50.180080>,  <32.653084, 36.515892, 50.257778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362049, 36.252716, 50.180080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387631, 0.160683, 0.907702,
		-0.566004, 0.735727, -0.371949,
		-0.727586, -0.657942, -0.194244,
		32.143772, 36.055332, 50.121807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033836, 36.822853, 50.532192>,  <32.653084, 36.515892, 50.257778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033836, 36.822853, 50.532192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.958565, 36.432018, 50.492420>,  <31.913403, 36.197517, 50.468559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.958565, 36.432018, 50.492420>,  <32.033836, 36.822853, 50.532192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958565, 36.432018, 50.492420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297999, -0.039659, 0.953742,
		-0.935835, 0.209100, -0.283709,
		-0.188176, -0.977090, -0.099425,
		31.902113, 36.138893, 50.462593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440144, 36.683125, 50.953224>,  <32.033836, 36.822853, 50.532192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440144, 36.683125, 50.953224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.593536, 36.318741, 50.892441>,  <31.685572, 36.100109, 50.855972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.593536, 36.318741, 50.892441>,  <31.440144, 36.683125, 50.953224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593536, 36.318741, 50.892441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314982, -0.283678, 0.905711,
		-0.868174, -0.299462, -0.395722,
		0.383484, -0.910960, -0.151956,
		31.708582, 36.045452, 50.846855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875435, 36.205189, 51.040638>,  <31.440144, 36.683125, 50.953224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875435, 36.205189, 51.040638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.226814, 36.025604, 51.106079>,  <31.437643, 35.917854, 51.145344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.226814, 36.025604, 51.106079>,  <30.875435, 36.205189, 51.040638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226814, 36.025604, 51.106079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320051, -0.298591, 0.899117,
		-0.354817, -0.842188, -0.405986,
		0.878449, -0.448958, 0.163598,
		31.490349, 35.890919, 51.155159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660686, 35.599365, 51.341793>,  <30.875435, 36.205189, 51.040638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660686, 35.599365, 51.341793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.054720, 35.612202, 51.409416>,  <31.291140, 35.619904, 51.449989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.054720, 35.612202, 51.409416>,  <30.660686, 35.599365, 51.341793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054720, 35.612202, 51.409416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142570, -0.397945, 0.906263,
		0.096362, -0.916848, -0.387433,
		0.985083, 0.032093, 0.169062,
		31.350245, 35.621830, 51.460136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927124, 34.917969, 51.726936>,  <30.660686, 35.599365, 51.341793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927124, 34.917969, 51.726936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.174297, 35.222355, 51.806026>,  <31.322601, 35.404987, 51.853481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.174297, 35.222355, 51.806026>,  <30.927124, 34.917969, 51.726936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174297, 35.222355, 51.806026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200325, -0.090801, 0.975513,
		0.760283, -0.642409, 0.096332,
		0.617931, 0.760964, 0.197725,
		31.359676, 35.450645, 51.865345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136013, 34.673347, 52.360027>,  <30.927124, 34.917969, 51.726936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136013, 34.673347, 52.360027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.258991, 35.053596, 52.343121>,  <31.332779, 35.281746, 52.332977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.258991, 35.053596, 52.343121>,  <31.136013, 34.673347, 52.360027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258991, 35.053596, 52.343121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015303, 0.049353, 0.998664,
		0.951442, -0.306389, 0.029721,
		0.307447, 0.950626, -0.042268,
		31.351225, 35.338783, 52.330441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647066, 34.722897, 52.939766>,  <31.136013, 34.673347, 52.360027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647066, 34.722897, 52.939766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.555290, 35.099670, 52.841698>,  <31.500225, 35.325737, 52.782856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.555290, 35.099670, 52.841698>,  <31.647066, 34.722897, 52.939766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555290, 35.099670, 52.841698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166470, 0.286157, 0.943611,
		0.958981, 0.175688, -0.222460,
		-0.229440, 0.941938, -0.245173,
		31.486458, 35.382252, 52.768147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242878, 35.213001, 53.214611>,  <31.647066, 34.722897, 52.939766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242878, 35.213001, 53.214611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.924072, 35.448551, 53.160946>,  <31.732790, 35.589882, 53.128746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.924072, 35.448551, 53.160946>,  <32.242878, 35.213001, 53.214611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924072, 35.448551, 53.160946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226741, 0.497629, 0.837230,
		0.559788, 0.636860, -0.530138,
		-0.797011, 0.588875, -0.134165,
		31.684969, 35.625214, 53.120697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422661, 35.947983, 53.279793>,  <32.242878, 35.213001, 53.214611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422661, 35.947983, 53.279793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.032772, 35.926228, 53.366467>,  <31.798838, 35.913174, 53.418472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.032772, 35.926228, 53.366467>,  <32.422661, 35.947983, 53.279793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032772, 35.926228, 53.366467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169366, 0.452618, 0.875472,
		-0.145693, 0.890044, -0.431966,
		-0.974725, -0.054389, 0.216687,
		31.740355, 35.909912, 53.431473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315605, 36.519798, 53.667076>,  <32.422661, 35.947983, 53.279793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315605, 36.519798, 53.667076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.989662, 36.300804, 53.743252>,  <31.794096, 36.169407, 53.788960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.989662, 36.300804, 53.743252>,  <32.315605, 36.519798, 53.667076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989662, 36.300804, 53.743252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133454, 0.496903, 0.857484,
		-0.564092, 0.673311, -0.477968,
		-0.814856, -0.547486, 0.190443,
		31.745205, 36.136559, 53.800385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807467, 36.996758, 53.897732>,  <32.315605, 36.519798, 53.667076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807467, 36.996758, 53.897732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.719332, 36.627525, 54.023827>,  <31.666451, 36.405987, 54.099483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.719332, 36.627525, 54.023827>,  <31.807467, 36.996758, 53.897732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719332, 36.627525, 54.023827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066004, 0.336545, 0.939351,
		-0.973188, 0.186166, -0.135080,
		-0.220336, -0.923081, 0.315234,
		31.653231, 36.350601, 54.118397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108231, 37.157810, 53.563400>,  <31.807467, 36.996758, 53.897732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108231, 37.157810, 53.563400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.937382, 37.499973, 53.680592>,  <30.834871, 37.705273, 53.750908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.937382, 37.499973, 53.680592>,  <31.108231, 37.157810, 53.563400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937382, 37.499973, 53.680592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135464, 0.259825, -0.956107,
		-0.893988, -0.448064, 0.004900,
		-0.427124, 0.855412, 0.292977,
		30.809244, 37.756596, 53.768486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460249, 37.220207, 53.171780>,  <31.108231, 37.157810, 53.563400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460249, 37.220207, 53.171780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.562010, 37.595627, 53.265076>,  <30.623066, 37.820881, 53.321053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.562010, 37.595627, 53.265076>,  <30.460249, 37.220207, 53.171780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562010, 37.595627, 53.265076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324349, 0.310013, -0.893695,
		-0.911086, 0.151704, 0.383285,
		0.254400, 0.938551, 0.233244,
		30.638330, 37.877193, 53.335049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883575, 37.529320, 53.024178>,  <30.460249, 37.220207, 53.171780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883575, 37.529320, 53.024178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.164480, 37.813385, 53.044140>,  <30.333023, 37.983826, 53.056118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.164480, 37.813385, 53.044140>,  <29.883575, 37.529320, 53.024178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164480, 37.813385, 53.044140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221028, 0.284125, -0.932963,
		-0.676737, 0.644157, 0.356497,
		0.702264, 0.710166, 0.049901,
		30.375160, 38.026436, 53.059109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623064, 38.122253, 52.769680>,  <29.883575, 37.529320, 53.024178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623064, 38.122253, 52.769680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009157, 38.226254, 52.758904>,  <30.240812, 38.288654, 52.752438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.009157, 38.226254, 52.758904>,  <29.623064, 38.122253, 52.769680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009157, 38.226254, 52.758904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114166, 0.326622, -0.938235,
		-0.235143, 0.908690, 0.344949,
		0.965233, 0.260000, -0.026938,
		30.298727, 38.304253, 52.750820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643700, 38.854786, 52.549835>,  <29.623064, 38.122253, 52.769680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643700, 38.854786, 52.549835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.972342, 38.651054, 52.447426>,  <30.169527, 38.528816, 52.385979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.972342, 38.651054, 52.447426>,  <29.643700, 38.854786, 52.549835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972342, 38.651054, 52.447426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136042, 0.260962, -0.955715,
		0.553589, 0.820049, 0.145117,
		0.821603, -0.509331, -0.256027,
		30.218822, 38.498257, 52.370617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996653, 39.336754, 52.074722>,  <29.643700, 38.854786, 52.549835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996653, 39.336754, 52.074722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195822, 39.002182, 51.983101>,  <30.315323, 38.801441, 51.928127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195822, 39.002182, 51.983101>,  <29.996653, 39.336754, 52.074722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195822, 39.002182, 51.983101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033551, 0.245349, -0.968854,
		0.866573, 0.490098, 0.094102,
		0.497921, -0.836426, -0.229056,
		30.345198, 38.751255, 51.914383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495920, 39.589428, 51.684853>,  <29.996653, 39.336754, 52.074722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495920, 39.589428, 51.684853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.406633, 39.219975, 51.560230>,  <30.353062, 38.998302, 51.485455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.406633, 39.219975, 51.560230>,  <30.495920, 39.589428, 51.684853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406633, 39.219975, 51.560230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045514, 0.329152, -0.943180,
		0.973706, -0.196353, -0.115510,
		-0.223217, -0.923636, -0.311560,
		30.339668, 38.942883, 51.466763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198282, 39.494064, 51.414326>,  <30.495920, 39.589428, 51.684853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198282, 39.494064, 51.414326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.295334, 39.878979, 51.463531>,  <31.353565, 40.109928, 51.493057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.295334, 39.878979, 51.463531>,  <31.198282, 39.494064, 51.414326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295334, 39.878979, 51.463531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437213, -0.004733, 0.899346,
		0.866012, -0.271992, 0.419576,
		0.242629, 0.962288, 0.123017,
		31.368122, 40.167664, 51.500435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493280, 39.535770, 52.000050>,  <31.198282, 39.494064, 51.414326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493280, 39.535770, 52.000050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.430744, 39.929558, 51.968079>,  <31.393223, 40.165829, 51.948895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.430744, 39.929558, 51.968079>,  <31.493280, 39.535770, 52.000050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430744, 39.929558, 51.968079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024209, 0.084717, 0.996111,
		0.987406, 0.153799, -0.037077,
		-0.156342, 0.984464, -0.079927,
		31.383842, 40.224895, 51.944099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854870, 39.793331, 52.577629>,  <31.493280, 39.535770, 52.000050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854870, 39.793331, 52.577629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.620560, 40.099236, 52.470287>,  <31.479975, 40.282776, 52.405884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.620560, 40.099236, 52.470287>,  <31.854870, 39.793331, 52.577629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620560, 40.099236, 52.470287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099526, 0.260728, 0.960268,
		0.804340, 0.589208, -0.076614,
		-0.585774, 0.764758, -0.268356,
		31.444828, 40.328663, 52.389782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968954, 40.193626, 53.018486>,  <31.854870, 39.793331, 52.577629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968954, 40.193626, 53.018486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638025, 40.363823, 52.871788>,  <31.439468, 40.465939, 52.783768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.638025, 40.363823, 52.871788>,  <31.968954, 40.193626, 53.018486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638025, 40.363823, 52.871788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129140, 0.491329, 0.861347,
		0.546684, 0.759972, -0.351539,
		-0.827321, 0.425487, -0.366744,
		31.389830, 40.491470, 52.761765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968563, 40.991852, 53.077362>,  <31.968954, 40.193626, 53.018486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968563, 40.991852, 53.077362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607758, 40.820423, 53.098133>,  <31.391273, 40.717567, 53.110596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607758, 40.820423, 53.098133>,  <31.968563, 40.991852, 53.077362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607758, 40.820423, 53.098133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067295, 0.258395, 0.963692,
		-0.426426, 0.865771, -0.261917,
		-0.902016, -0.428569, 0.051925,
		31.337152, 40.691853, 53.113712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581043, 41.486393, 53.466103>,  <31.968563, 40.991852, 53.077362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581043, 41.486393, 53.466103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344219, 41.164364, 53.480618>,  <31.202126, 40.971146, 53.489326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344219, 41.164364, 53.480618>,  <31.581043, 41.486393, 53.466103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344219, 41.164364, 53.480618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154882, 0.157862, 0.975239,
		-0.790870, 0.571780, -0.218156,
		-0.592061, -0.805076, 0.036290,
		31.166601, 40.922840, 53.491505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900883, 41.623943, 53.821754>,  <31.581043, 41.486393, 53.466103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900883, 41.623943, 53.821754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.962776, 41.230392, 53.857609>,  <30.999912, 40.994263, 53.879120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.962776, 41.230392, 53.857609>,  <30.900883, 41.623943, 53.821754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962776, 41.230392, 53.857609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317954, 0.036308, 0.947410,
		-0.935394, -0.175095, -0.307212,
		0.154733, -0.983882, 0.089635,
		31.009195, 40.935226, 53.884499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463190, 41.440468, 54.327679>,  <30.900883, 41.623943, 53.821754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463190, 41.440468, 54.327679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.741571, 41.153263, 54.323456>,  <30.908600, 40.980942, 54.320923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.741571, 41.153263, 54.323456>,  <30.463190, 41.440468, 54.327679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741571, 41.153263, 54.323456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053472, 0.037159, 0.997878,
		-0.716095, -0.695039, 0.064255,
		0.695951, -0.718011, -0.010556,
		30.950357, 40.937859, 54.320290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385258, 41.151855, 54.923306>,  <30.463190, 41.440468, 54.327679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385258, 41.151855, 54.923306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737339, 40.982220, 54.838089>,  <30.948587, 40.880440, 54.786961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.737339, 40.982220, 54.838089>,  <30.385258, 41.151855, 54.923306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737339, 40.982220, 54.838089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313117, 0.181592, 0.932192,
		-0.356647, -0.887227, 0.292628,
		0.880205, -0.424090, -0.213042,
		31.001400, 40.854992, 54.774178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.900139, 38.250957, 38.675861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220543, 38.310158, 38.907887>,  <35.412785, 38.345680, 39.047100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220543, 38.310158, 38.907887>,  <34.900139, 38.250957, 38.675861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220543, 38.310158, 38.907887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595444, 0.096890, 0.797533,
		0.061831, -0.984230, 0.165735,
		0.801014, 0.147999, 0.580063,
		35.460846, 38.354561, 39.081905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860909, 37.831257, 39.289104>,  <34.900139, 38.250957, 38.675861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860909, 37.831257, 39.289104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105179, 38.132633, 39.386593>,  <35.251740, 38.313457, 39.445087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105179, 38.132633, 39.386593>,  <34.860909, 37.831257, 39.289104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105179, 38.132633, 39.386593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523789, 0.153491, 0.837905,
		0.593903, -0.639349, 0.488378,
		0.610675, 0.753441, 0.243725,
		35.288380, 38.358665, 39.459709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007706, 37.745842, 39.942665>,  <34.860909, 37.831257, 39.289104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007706, 37.745842, 39.942665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084621, 38.133698, 39.882236>,  <35.130772, 38.366413, 39.845982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084621, 38.133698, 39.882236>,  <35.007706, 37.745842, 39.942665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084621, 38.133698, 39.882236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561147, 0.234934, 0.793675,
		0.805071, -0.067842, 0.589286,
		0.192288, 0.969641, -0.151069,
		35.142307, 38.424591, 39.836914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971218, 37.966885, 40.545315>,  <35.007706, 37.745842, 39.942665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971218, 37.966885, 40.545315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944618, 38.309845, 40.341179>,  <34.928658, 38.515621, 40.218697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944618, 38.309845, 40.341179>,  <34.971218, 37.966885, 40.545315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944618, 38.309845, 40.341179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523112, 0.405589, 0.749568,
		0.849666, 0.316811, 0.421543,
		-0.066499, 0.857396, -0.510343,
		34.924667, 38.567062, 40.188076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196804, 38.498020, 41.031963>,  <34.971218, 37.966885, 40.545315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196804, 38.498020, 41.031963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995392, 38.732620, 40.778198>,  <34.874546, 38.873379, 40.625938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995392, 38.732620, 40.778198>,  <35.196804, 38.498020, 41.031963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995392, 38.732620, 40.778198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553789, 0.344523, 0.758038,
		0.663158, 0.733024, 0.151319,
		-0.503527, 0.586497, -0.634414,
		34.844334, 38.908569, 40.587875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263489, 39.225769, 41.263973>,  <35.196804, 38.498020, 41.031963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263489, 39.225769, 41.263973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942551, 39.202225, 41.026394>,  <34.749989, 39.188099, 40.883846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942551, 39.202225, 41.026394>,  <35.263489, 39.225769, 41.263973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942551, 39.202225, 41.026394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578584, 0.321066, 0.749771,
		0.146564, 0.945226, -0.291662,
		-0.802346, -0.058861, -0.593949,
		34.701847, 39.184566, 40.848209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937336, 39.891163, 41.257866>,  <35.263489, 39.225769, 41.263973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937336, 39.891163, 41.257866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655350, 39.622707, 41.166134>,  <34.486160, 39.461632, 41.111095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655350, 39.622707, 41.166134>,  <34.937336, 39.891163, 41.257866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655350, 39.622707, 41.166134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549449, 0.312334, 0.774954,
		-0.448478, 0.672320, -0.588942,
		-0.704964, -0.671143, -0.229331,
		34.443859, 39.421364, 41.097336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547237, 40.060230, 41.740376>,  <34.937336, 39.891163, 41.257866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547237, 40.060230, 41.740376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318363, 39.768856, 41.589649>,  <34.181038, 39.594032, 41.499214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318363, 39.768856, 41.589649>,  <34.547237, 40.060230, 41.740376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318363, 39.768856, 41.589649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565766, 0.017965, 0.824370,
		-0.593730, 0.684881, -0.422402,
		-0.572184, -0.728434, -0.376816,
		34.146709, 39.550327, 41.476604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861286, 40.260242, 41.733932>,  <34.547237, 40.060230, 41.740376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861286, 40.260242, 41.733932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825539, 39.861897, 41.727383>,  <33.804089, 39.622890, 41.723454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825539, 39.861897, 41.727383>,  <33.861286, 40.260242, 41.733932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825539, 39.861897, 41.727383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581213, 0.038789, 0.812826,
		-0.808829, 0.082161, -0.582276,
		-0.089369, -0.995864, -0.016379,
		33.798729, 39.563137, 41.722469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119766, 40.110085, 41.879871>,  <33.861286, 40.260242, 41.733932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119766, 40.110085, 41.879871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322384, 39.781120, 41.983456>,  <33.443954, 39.583744, 42.045605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322384, 39.781120, 41.983456>,  <33.119766, 40.110085, 41.879871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322384, 39.781120, 41.983456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556031, -0.082034, 0.827103,
		-0.658973, -0.562952, -0.498838,
		0.506541, -0.822408, 0.258960,
		33.474346, 39.534397, 42.061142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720444, 39.414692, 41.994114>,  <33.119766, 40.110085, 41.879871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720444, 39.414692, 41.994114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041111, 39.377647, 42.230331>,  <33.233513, 39.355419, 42.372063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041111, 39.377647, 42.230331>,  <32.720444, 39.414692, 41.994114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041111, 39.377647, 42.230331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597713, -0.111323, 0.793943,
		-0.007789, -0.989459, -0.144601,
		0.801672, -0.092614, 0.590546,
		33.281612, 39.349861, 42.407494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424683, 38.966557, 42.535450>,  <32.720444, 39.414692, 41.994114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424683, 38.966557, 42.535450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776283, 39.077209, 42.690796>,  <32.987244, 39.143600, 42.784004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776283, 39.077209, 42.690796>,  <32.424683, 38.966557, 42.535450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776283, 39.077209, 42.690796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339137, -0.209818, 0.917040,
		0.335168, -0.937791, -0.090615,
		0.879004, 0.276632, 0.388363,
		33.039986, 39.160198, 42.807304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943724, 38.404785, 42.619217>,  <32.424683, 38.966557, 42.535450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943724, 38.404785, 42.619217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584192, 38.249680, 42.700939>,  <31.368473, 38.156616, 42.749973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584192, 38.249680, 42.700939>,  <31.943724, 38.404785, 42.619217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584192, 38.249680, 42.700939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097808, -0.276935, -0.955898,
		0.427245, -0.879173, 0.210991,
		-0.898830, -0.387766, 0.204309,
		31.314543, 38.133350, 42.762234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947325, 37.883469, 42.154163>,  <31.943724, 38.404785, 42.619217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947325, 37.883469, 42.154163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572035, 37.964428, 42.266426>,  <31.346861, 38.013004, 42.333782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572035, 37.964428, 42.266426>,  <31.947325, 37.883469, 42.154163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572035, 37.964428, 42.266426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291319, -0.024357, -0.956316,
		-0.186721, -0.979000, 0.081815,
		-0.938226, 0.202398, 0.280653,
		31.290567, 38.025146, 42.350620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567038, 37.469326, 41.762093>,  <31.947325, 37.883469, 42.154163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567038, 37.469326, 41.762093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282467, 37.724644, 41.879707>,  <31.111725, 37.877834, 41.950275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282467, 37.724644, 41.879707>,  <31.567038, 37.469326, 41.762093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282467, 37.724644, 41.879707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424010, -0.056194, -0.903912,
		-0.560435, -0.767742, 0.310619,
		-0.711427, 0.638290, 0.294037,
		31.069038, 37.916130, 41.967918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932003, 37.180096, 41.451550>,  <31.567038, 37.469326, 41.762093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932003, 37.180096, 41.451550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842951, 37.562267, 41.529099>,  <30.789518, 37.791569, 41.575630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842951, 37.562267, 41.529099>,  <30.932003, 37.180096, 41.451550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842951, 37.562267, 41.529099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562860, 0.036405, -0.825750,
		-0.796005, -0.292963, 0.529669,
		-0.222632, 0.955430, 0.193875,
		30.776161, 37.848896, 41.587261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150347, 37.294193, 41.343323>,  <30.932003, 37.180096, 41.451550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150347, 37.294193, 41.343323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330080, 37.647385, 41.288990>,  <30.437920, 37.859299, 41.256390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330080, 37.647385, 41.288990>,  <30.150347, 37.294193, 41.343323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330080, 37.647385, 41.288990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375922, 0.048947, -0.925357,
		-0.810421, 0.466857, 0.353924,
		0.449334, 0.882977, -0.135834,
		30.464880, 37.912277, 41.248241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693157, 37.590218, 40.999386>,  <30.150347, 37.294193, 41.343323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693157, 37.590218, 40.999386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018391, 37.814434, 40.936539>,  <30.213530, 37.948963, 40.898830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018391, 37.814434, 40.936539>,  <29.693157, 37.590218, 40.999386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018391, 37.814434, 40.936539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279370, 0.138923, -0.950081,
		-0.510736, 0.816388, 0.269555,
		0.813082, 0.560546, -0.157121,
		30.262316, 37.982597, 40.889400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471773, 38.167099, 40.603249>,  <29.693157, 37.590218, 40.999386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471773, 38.167099, 40.603249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862705, 38.139328, 40.523247>,  <30.097265, 38.122665, 40.475246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862705, 38.139328, 40.523247>,  <29.471773, 38.167099, 40.603249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862705, 38.139328, 40.523247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205299, -0.080035, -0.975421,
		0.051711, 0.994372, -0.092473,
		0.977332, -0.069425, -0.200004,
		30.155905, 38.118500, 40.463245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553980, 38.527290, 39.977020>,  <29.471773, 38.167099, 40.603249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553980, 38.527290, 39.977020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886276, 38.306232, 40.003700>,  <30.085653, 38.173595, 40.019711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886276, 38.306232, 40.003700>,  <29.553980, 38.527290, 39.977020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886276, 38.306232, 40.003700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061603, -0.210362, -0.975681,
		0.553241, 0.806428, -0.208801,
		0.830740, -0.552649, 0.066702,
		30.135498, 38.140438, 40.023712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895554, 38.734989, 39.409645>,  <29.553980, 38.527290, 39.977020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895554, 38.734989, 39.409645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057411, 38.383911, 39.512344>,  <30.154526, 38.173264, 39.573963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057411, 38.383911, 39.512344>,  <29.895554, 38.734989, 39.409645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057411, 38.383911, 39.512344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044474, -0.261542, -0.964167,
		0.913391, 0.401565, -0.066797,
		0.404646, -0.877691, 0.256750,
		30.178804, 38.120605, 39.589371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489491, 38.682171, 38.965984>,  <29.895554, 38.734989, 39.409645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489491, 38.682171, 38.965984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402590, 38.307281, 39.075092>,  <30.350449, 38.082348, 39.140556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402590, 38.307281, 39.075092>,  <30.489491, 38.682171, 38.965984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402590, 38.307281, 39.075092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125642, -0.303972, -0.944360,
		0.967995, -0.170894, 0.183794,
		-0.217253, -0.937228, 0.272772,
		30.337414, 38.026112, 39.156925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984409, 38.195595, 38.620724>,  <30.489491, 38.682171, 38.965984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984409, 38.195595, 38.620724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673313, 37.961052, 38.711330>,  <30.486656, 37.820328, 38.765694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673313, 37.961052, 38.711330>,  <30.984409, 38.195595, 38.620724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673313, 37.961052, 38.711330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046130, -0.412623, -0.909733,
		0.626893, -0.697086, 0.347961,
		-0.777739, -0.586356, 0.226514,
		30.439991, 37.785145, 38.779285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142477, 37.578701, 38.425240>,  <30.984409, 38.195595, 38.620724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142477, 37.578701, 38.425240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751715, 37.504749, 38.468098>,  <30.517258, 37.460381, 38.493813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751715, 37.504749, 38.468098>,  <31.142477, 37.578701, 38.425240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751715, 37.504749, 38.468098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007059, -0.473221, -0.880915,
		0.213564, -0.861326, 0.460987,
		-0.976903, -0.184878, 0.107143,
		30.458643, 37.449287, 38.500240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076094, 36.800541, 38.274132>,  <31.142477, 37.578701, 38.425240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076094, 36.800541, 38.274132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713772, 36.967396, 38.244427>,  <30.496378, 37.067509, 38.226604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713772, 36.967396, 38.244427>,  <31.076094, 36.800541, 38.274132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713772, 36.967396, 38.244427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180525, -0.538523, -0.823046,
		-0.383313, -0.732113, 0.563100,
		-0.905805, 0.417138, -0.074258,
		30.442030, 37.092537, 38.222149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838446, 36.061859, 38.039211>,  <31.076094, 36.800541, 38.274132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838446, 36.061859, 38.039211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849588, 35.782974, 38.325741>,  <30.856274, 35.615643, 38.497658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849588, 35.782974, 38.325741>,  <30.838446, 36.061859, 38.039211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849588, 35.782974, 38.325741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823678, 0.422030, 0.378741,
		-0.566373, 0.579466, 0.586039,
		0.027859, -0.697216, 0.716320,
		30.857946, 35.573811, 38.540638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920076, 36.288879, 38.817223>,  <30.838446, 36.061859, 38.039211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920076, 36.288879, 38.817223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088289, 35.930771, 38.758377>,  <31.189217, 35.715904, 38.723072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088289, 35.930771, 38.758377>,  <30.920076, 36.288879, 38.817223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088289, 35.930771, 38.758377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847038, 0.329316, 0.417226,
		-0.325085, -0.300065, 0.896817,
		0.420531, -0.895272, -0.147110,
		31.214449, 35.662189, 38.714245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265234, 36.038601, 39.454590>,  <30.920076, 36.288879, 38.817223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265234, 36.038601, 39.454590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426508, 35.952888, 39.098721>,  <31.523272, 35.901459, 38.885197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426508, 35.952888, 39.098721>,  <31.265234, 36.038601, 39.454590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426508, 35.952888, 39.098721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820949, 0.514248, 0.248177,
		0.404334, -0.830440, 0.383254,
		0.403183, -0.214285, -0.889677,
		31.547462, 35.888603, 38.831818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776691, 35.537117, 39.462982>,  <31.265234, 36.038601, 39.454590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776691, 35.537117, 39.462982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848639, 35.792000, 39.163219>,  <31.891808, 35.944931, 38.983360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848639, 35.792000, 39.163219>,  <31.776691, 35.537117, 39.462982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848639, 35.792000, 39.163219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862785, 0.263733, 0.431331,
		0.472492, -0.724159, -0.502339,
		0.179869, 0.637211, -0.749406,
		31.902599, 35.983162, 38.938396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324368, 34.933178, 39.407925>,  <31.776691, 35.537117, 39.462982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324368, 34.933178, 39.407925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718273, 34.904762, 39.471416>,  <31.954617, 34.887711, 39.509510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718273, 34.904762, 39.471416>,  <31.324368, 34.933178, 39.407925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718273, 34.904762, 39.471416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138191, 0.234426, 0.962262,
		-0.105572, -0.969535, 0.221037,
		0.984763, -0.071042, 0.158730,
		32.013702, 34.883450, 39.519035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432608, 34.383736, 39.888454>,  <31.324368, 34.933178, 39.407925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432608, 34.383736, 39.888454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743231, 34.633808, 39.919697>,  <31.929605, 34.783852, 39.938442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743231, 34.633808, 39.919697>,  <31.432608, 34.383736, 39.888454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743231, 34.633808, 39.919697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051607, -0.060428, 0.996837,
		0.627928, -0.778133, -0.014662,
		0.776558, 0.625185, 0.078102,
		31.976198, 34.821365, 39.943127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685431, 34.133179, 40.446289>,  <31.432608, 34.383736, 39.888454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685431, 34.133179, 40.446289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871881, 34.484268, 40.401886>,  <31.983753, 34.694923, 40.375244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871881, 34.484268, 40.401886>,  <31.685431, 34.133179, 40.446289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871881, 34.484268, 40.401886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120927, 0.061089, 0.990780,
		0.876413, -0.475256, -0.077665,
		0.466129, 0.877724, -0.111010,
		32.011719, 34.747585, 40.368584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277683, 34.126942, 40.864979>,  <31.685431, 34.133179, 40.446289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277683, 34.126942, 40.864979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183109, 34.514252, 40.832615>,  <32.126366, 34.746639, 40.813198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183109, 34.514252, 40.832615>,  <32.277683, 34.126942, 40.864979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183109, 34.514252, 40.832615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079601, 0.102292, 0.991565,
		0.968382, 0.227996, -0.101261,
		-0.236431, 0.968274, -0.080909,
		32.112179, 34.804733, 40.808342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708019, 34.474731, 41.251488>,  <32.277683, 34.126942, 40.864979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708019, 34.474731, 41.251488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419685, 34.751247, 41.231434>,  <32.246685, 34.917156, 41.219402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419685, 34.751247, 41.231434>,  <32.708019, 34.474731, 41.251488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419685, 34.751247, 41.231434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188952, 0.265588, 0.945389,
		0.666852, 0.671998, -0.322066,
		-0.720836, 0.691290, -0.050133,
		32.203434, 34.958633, 41.216393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054386, 34.979973, 41.455811>,  <32.708019, 34.474731, 41.251488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054386, 34.979973, 41.455811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665920, 35.051624, 41.518742>,  <32.432842, 35.094616, 41.556499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665920, 35.051624, 41.518742>,  <33.054386, 34.979973, 41.455811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665920, 35.051624, 41.518742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174046, 0.081698, 0.981343,
		0.162930, 0.980428, -0.110519,
		-0.971165, 0.179125, 0.157329,
		32.374569, 35.105362, 41.565941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087589, 35.380829, 41.996586>,  <33.054386, 34.979973, 41.455811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087589, 35.380829, 41.996586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697540, 35.293819, 41.979492>,  <32.463512, 35.241615, 41.969234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697540, 35.293819, 41.979492>,  <33.087589, 35.380829, 41.996586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697540, 35.293819, 41.979492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078895, 0.160372, 0.983899,
		-0.207165, 0.962791, -0.173543,
		-0.975120, -0.217521, -0.042736,
		32.405003, 35.228561, 41.966671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677368, 36.002907, 42.297710>,  <33.087589, 35.380829, 41.996586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677368, 36.002907, 42.297710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476612, 35.658646, 42.332073>,  <32.356159, 35.452087, 42.352692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476612, 35.658646, 42.332073>,  <32.677368, 36.002907, 42.297710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476612, 35.658646, 42.332073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122070, 0.168807, 0.978061,
		-0.856275, 0.480391, -0.189783,
		-0.501888, -0.860656, 0.085904,
		32.326046, 35.400448, 42.357845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048901, 36.184731, 42.612560>,  <32.677368, 36.002907, 42.297710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048901, 36.184731, 42.612560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093864, 35.795128, 42.691235>,  <32.120842, 35.561367, 42.738438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093864, 35.795128, 42.691235>,  <32.048901, 36.184731, 42.612560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093864, 35.795128, 42.691235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318913, 0.152102, 0.935500,
		-0.941095, -0.167883, -0.293524,
		0.112409, -0.974002, 0.196682,
		32.127586, 35.502926, 42.750240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553438, 36.063992, 43.024498>,  <32.048901, 36.184731, 42.612560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553438, 36.063992, 43.024498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798292, 35.755074, 43.092438>,  <31.945206, 35.569721, 43.133202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798292, 35.755074, 43.092438>,  <31.553438, 36.063992, 43.024498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798292, 35.755074, 43.092438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226708, 0.034381, 0.973356,
		-0.757557, -0.634333, -0.154039,
		0.612136, -0.772294, 0.169854,
		31.981934, 35.523384, 43.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174198, 35.660706, 43.484306>,  <31.553438, 36.063992, 43.024498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174198, 35.660706, 43.484306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550852, 35.528648, 43.510643>,  <31.776844, 35.449413, 43.526443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550852, 35.528648, 43.510643>,  <31.174198, 35.660706, 43.484306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550852, 35.528648, 43.510643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034362, 0.100293, 0.994364,
		-0.334883, -0.938589, 0.083095,
		0.941633, -0.330141, 0.065838,
		31.833342, 35.429607, 43.530396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259920, 35.246593, 44.131020>,  <31.174198, 35.660706, 43.484306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259920, 35.246593, 44.131020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648859, 35.307972, 44.060593>,  <31.882221, 35.344799, 44.018337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648859, 35.307972, 44.060593>,  <31.259920, 35.246593, 44.131020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648859, 35.307972, 44.060593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145879, 0.189665, 0.970951,
		0.182364, -0.969787, 0.162038,
		0.972349, 0.153429, -0.176060,
		31.940563, 35.354008, 44.007774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624802, 34.898464, 44.581524>,  <31.259920, 35.246593, 44.131020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624802, 34.898464, 44.581524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866793, 35.199417, 44.477272>,  <32.011986, 35.379990, 44.414722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866793, 35.199417, 44.477272>,  <31.624802, 34.898464, 44.581524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866793, 35.199417, 44.477272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112103, 0.243580, 0.963380,
		0.788313, -0.612038, 0.063016,
		0.604975, 0.752381, -0.260629,
		32.048286, 35.425133, 44.399082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191864, 34.730183, 44.914974>,  <31.624802, 34.898464, 44.581524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191864, 34.730183, 44.914974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239296, 35.117760, 44.828171>,  <32.267754, 35.350304, 44.776089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239296, 35.117760, 44.828171>,  <32.191864, 34.730183, 44.914974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239296, 35.117760, 44.828171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020081, 0.216169, 0.976149,
		0.992741, -0.120110, 0.006176,
		0.118580, 0.968940, -0.217012,
		32.274872, 35.408443, 44.763065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867729, 35.028175, 45.166660>,  <32.191864, 34.730183, 44.914974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867729, 35.028175, 45.166660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663017, 35.364758, 45.097343>,  <32.540192, 35.566708, 45.055752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663017, 35.364758, 45.097343>,  <32.867729, 35.028175, 45.166660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663017, 35.364758, 45.097343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343079, 0.385098, 0.856736,
		0.787643, 0.379005, -0.485772,
		-0.511777, 0.841460, -0.173291,
		32.509483, 35.617195, 45.045357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359531, 35.586578, 45.438736>,  <32.867729, 35.028175, 45.166660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359531, 35.586578, 45.438736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001633, 35.761600, 45.403008>,  <32.786896, 35.866611, 45.381569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001633, 35.761600, 45.403008>,  <33.359531, 35.586578, 45.438736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001633, 35.761600, 45.403008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053820, 0.304207, 0.951084,
		0.443322, 0.846171, -0.295737,
		-0.894745, 0.437553, -0.089320,
		32.733208, 35.892868, 45.376213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425335, 36.220161, 45.745693>,  <33.359531, 35.586578, 45.438736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425335, 36.220161, 45.745693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033283, 36.140850, 45.743187>,  <32.798054, 36.093262, 45.741684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033283, 36.140850, 45.743187>,  <33.425335, 36.220161, 45.745693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033283, 36.140850, 45.743187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046269, 0.197793, 0.979151,
		-0.192906, 0.959981, -0.203036,
		-0.980126, -0.198279, -0.006262,
		32.739246, 36.081367, 45.741310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079464, 36.845665, 46.021767>,  <33.425335, 36.220161, 45.745693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079464, 36.845665, 46.021767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861523, 36.514050, 46.072075>,  <32.730759, 36.315079, 46.102261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861523, 36.514050, 46.072075>,  <33.079464, 36.845665, 46.021767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861523, 36.514050, 46.072075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032791, 0.170944, 0.984735,
		-0.837887, 0.532416, -0.120325,
		-0.544857, -0.829043, 0.125773,
		32.698067, 36.265335, 46.109806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590809, 37.047401, 46.536057>,  <33.079464, 36.845665, 46.021767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590809, 37.047401, 46.536057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557953, 36.649014, 46.521633>,  <32.538239, 36.409981, 46.512978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557953, 36.649014, 46.521633>,  <32.590809, 37.047401, 46.536057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557953, 36.649014, 46.521633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367606, -0.003352, 0.929976,
		-0.926348, 0.089639, -0.365849,
		-0.082136, -0.995969, -0.036057,
		32.533314, 36.350224, 46.510815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927980, 36.903465, 46.849178>,  <32.590809, 37.047401, 46.536057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927980, 36.903465, 46.849178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135025, 36.561218, 46.849754>,  <32.259251, 36.355869, 46.850098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135025, 36.561218, 46.849754>,  <31.927980, 36.903465, 46.849178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135025, 36.561218, 46.849754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336300, -0.201904, 0.919857,
		-0.786753, -0.476611, -0.392251,
		0.517611, -0.855614, 0.001436,
		32.290310, 36.304535, 46.850185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430540, 36.403587, 47.201363>,  <31.927980, 36.903465, 46.849178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430540, 36.403587, 47.201363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799187, 36.255108, 47.246674>,  <32.020374, 36.166019, 47.273861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799187, 36.255108, 47.246674>,  <31.430540, 36.403587, 47.201363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799187, 36.255108, 47.246674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276687, -0.423761, 0.862480,
		-0.272151, -0.826219, -0.493252,
		0.921617, -0.371201, 0.113277,
		32.075672, 36.143745, 47.280655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461063, 35.630093, 47.415180>,  <31.430540, 36.403587, 47.201363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461063, 35.630093, 47.415180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813118, 35.769981, 47.543591>,  <32.024349, 35.853916, 47.620636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813118, 35.769981, 47.543591>,  <31.461063, 35.630093, 47.415180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813118, 35.769981, 47.543591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162113, -0.414168, 0.895647,
		0.446184, -0.840333, -0.307830,
		0.880136, 0.349721, 0.321024,
		32.077160, 35.874897, 47.639896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700045, 35.155769, 47.876583>,  <31.461063, 35.630093, 47.415180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700045, 35.155769, 47.876583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905436, 35.485435, 47.972157>,  <32.028671, 35.683235, 48.029503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905436, 35.485435, 47.972157>,  <31.700045, 35.155769, 47.876583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905436, 35.485435, 47.972157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048561, -0.305911, 0.950821,
		0.856729, -0.476620, -0.197100,
		0.513476, 0.824167, 0.238938,
		32.059479, 35.732685, 48.043839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114872, 34.972488, 48.401432>,  <31.700045, 35.155769, 47.876583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114872, 34.972488, 48.401432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159161, 35.366592, 48.453579>,  <32.185734, 35.603054, 48.484867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159161, 35.366592, 48.453579>,  <32.114872, 34.972488, 48.401432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159161, 35.366592, 48.453579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037055, -0.126993, 0.991211,
		0.993160, -0.114578, 0.022448,
		0.110721, 0.985264, 0.130370,
		32.192375, 35.662170, 48.492691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759998, 35.163731, 48.799637>,  <32.114872, 34.972488, 48.401432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759998, 35.163731, 48.799637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490067, 35.451355, 48.866035>,  <32.328110, 35.623932, 48.905876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490067, 35.451355, 48.866035>,  <32.759998, 35.163731, 48.799637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490067, 35.451355, 48.866035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127040, -0.108390, 0.985958,
		0.726958, 0.686440, -0.018205,
		-0.674828, 0.719063, 0.166000,
		32.287617, 35.667072, 48.915836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413342, 35.446762, 48.665825>,  <32.759998, 35.163731, 48.799637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413342, 35.446762, 48.665825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784737, 35.308598, 48.720371>,  <34.007576, 35.225700, 48.753098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784737, 35.308598, 48.720371>,  <33.413342, 35.446762, 48.665825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784737, 35.308598, 48.720371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103064, -0.113090, -0.988225,
		0.356763, 0.931613, -0.069405,
		0.928492, -0.345409, 0.136362,
		34.063286, 35.204975, 48.761280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823200, 35.743843, 48.305489>,  <33.413342, 35.446762, 48.665825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823200, 35.743843, 48.305489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068928, 35.434788, 48.369541>,  <34.216366, 35.249355, 48.407974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068928, 35.434788, 48.369541>,  <33.823200, 35.743843, 48.305489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068928, 35.434788, 48.369541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316996, 0.055818, -0.946783,
		0.722582, 0.632389, 0.279213,
		0.614320, -0.772637, 0.160132,
		34.253223, 35.202995, 48.417580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277134, 35.860134, 47.742519>,  <33.823200, 35.743843, 48.305489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277134, 35.860134, 47.742519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352848, 35.485043, 47.859024>,  <34.398277, 35.259987, 47.928928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352848, 35.485043, 47.859024>,  <34.277134, 35.860134, 47.742519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352848, 35.485043, 47.859024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201688, -0.253173, -0.946164,
		0.960986, 0.237835, 0.141208,
		0.189281, -0.937730, 0.291264,
		34.409634, 35.203724, 47.946404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021076, 35.588253, 47.494614>,  <34.277134, 35.860134, 47.742519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021076, 35.588253, 47.494614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765274, 35.289673, 47.568192>,  <34.611794, 35.110523, 47.612339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765274, 35.289673, 47.568192>,  <35.021076, 35.588253, 47.494614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765274, 35.289673, 47.568192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139544, -0.348000, -0.927051,
		0.756013, -0.567189, 0.326712,
		-0.639509, -0.746454, 0.183945,
		34.573421, 35.065739, 47.623375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408089, 34.939297, 47.493549>,  <35.021076, 35.588253, 47.494614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408089, 34.939297, 47.493549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030136, 34.852047, 47.395882>,  <34.803364, 34.799698, 47.337280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030136, 34.852047, 47.395882>,  <35.408089, 34.939297, 47.493549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030136, 34.852047, 47.395882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304806, -0.313752, -0.899251,
		0.119545, -0.924110, 0.362946,
		-0.944882, -0.218129, -0.244166,
		34.746670, 34.786610, 47.322632>
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
