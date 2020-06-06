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
	<23.904966, 34.685474, 35.072426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253475, 34.871006, 35.136608>,  <24.462582, 34.982327, 35.175117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253475, 34.871006, 35.136608>,  <23.904966, 34.685474, 35.072426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.253475, 34.871006, 35.136608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376035, -0.840957, 0.389087,
		0.315404, -0.278665, -0.907119,
		0.871274, 0.463828, 0.160454,
		24.514858, 35.010155, 35.184746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.526564, 34.354832, 34.765842>,  <23.904966, 34.685474, 35.072426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.526564, 34.354832, 34.765842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655653, 34.568817, 35.078167>,  <24.733107, 34.697208, 35.265564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655653, 34.568817, 35.078167>,  <24.526564, 34.354832, 34.765842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.655653, 34.568817, 35.078167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539447, -0.781810, 0.312682,
		0.777720, 0.320298, -0.540889,
		0.322721, 0.534960, 0.780813,
		24.752470, 34.729305, 35.312412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130232, 33.994087, 34.967075>,  <24.526564, 34.354832, 34.765842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130232, 33.994087, 34.967075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000917, 34.217018, 35.272980>,  <24.923328, 34.350777, 35.456524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000917, 34.217018, 35.272980>,  <25.130232, 33.994087, 34.967075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000917, 34.217018, 35.272980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350384, -0.680224, 0.643838,
		0.879043, 0.476106, 0.024628,
		-0.323287, 0.557332, 0.764766,
		24.903931, 34.384216, 35.502411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645411, 33.581802, 35.347557>,  <25.130232, 33.994087, 34.967075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645411, 33.581802, 35.347557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601112, 33.234043, 35.540176>,  <25.574533, 33.025387, 35.655746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601112, 33.234043, 35.540176>,  <25.645411, 33.581802, 35.347557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601112, 33.234043, 35.540176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857810, -0.328303, -0.395449,
		0.501895, 0.369279, 0.782135,
		-0.110746, -0.869396, 0.481545,
		25.567888, 32.973225, 35.684639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196749, 33.396965, 35.863689>,  <25.645411, 33.581802, 35.347557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196749, 33.396965, 35.863689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037703, 33.075718, 35.686192>,  <25.942274, 32.882969, 35.579693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037703, 33.075718, 35.686192>,  <26.196749, 33.396965, 35.863689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037703, 33.075718, 35.686192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888336, -0.215872, -0.405289,
		0.229700, -0.555345, 0.799268,
		-0.397615, -0.803113, -0.443747,
		25.918419, 32.834785, 35.553066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003305, 34.094872, 36.129665>,  <26.196749, 33.396965, 35.863689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003305, 34.094872, 36.129665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231857, 34.323174, 35.893780>,  <26.368988, 34.460155, 35.752247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231857, 34.323174, 35.893780>,  <26.003305, 34.094872, 36.129665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231857, 34.323174, 35.893780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679597, 0.073775, 0.729866,
		0.460082, -0.817799, -0.345731,
		0.571377, 0.570756, -0.589716,
		26.403271, 34.494400, 35.716866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779247, 33.920612, 36.260792>,  <26.003305, 34.094872, 36.129665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779247, 33.920612, 36.260792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780817, 34.291119, 36.110054>,  <26.781759, 34.513424, 36.019611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780817, 34.291119, 36.110054>,  <26.779247, 33.920612, 36.260792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780817, 34.291119, 36.110054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790346, 0.228003, 0.568654,
		0.612648, -0.300070, -0.731177,
		0.003926, 0.926268, -0.376844,
		26.781994, 34.569000, 35.997002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396975, 33.999123, 35.887413>,  <26.779247, 33.920612, 36.260792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396975, 33.999123, 35.887413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765150, 34.091515, 36.013554>,  <27.986055, 34.146950, 36.089237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765150, 34.091515, 36.013554>,  <27.396975, 33.999123, 35.887413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765150, 34.091515, 36.013554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323445, -0.903052, -0.282632,
		0.219494, 0.362142, -0.905911,
		0.920438, 0.230976, 0.315347,
		28.041281, 34.160809, 36.108158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872913, 33.829929, 35.437160>,  <27.396975, 33.999123, 35.887413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872913, 33.829929, 35.437160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998867, 33.798477, 35.815506>,  <28.074438, 33.779606, 36.042515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998867, 33.798477, 35.815506>,  <27.872913, 33.829929, 35.437160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998867, 33.798477, 35.815506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282872, -0.943500, -0.172602,
		0.905998, 0.321909, -0.274849,
		0.314882, -0.078630, 0.945868,
		28.093332, 33.774887, 36.099266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396070, 33.463928, 35.404945>,  <27.872913, 33.829929, 35.437160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396070, 33.463928, 35.404945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310486, 33.401337, 35.790638>,  <28.259134, 33.363781, 36.022053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310486, 33.401337, 35.790638>,  <28.396070, 33.463928, 35.404945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310486, 33.401337, 35.790638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214629, -0.970496, -0.109869,
		0.952971, 0.183443, 0.241235,
		-0.213963, -0.156478, 0.964227,
		28.246298, 33.354393, 36.079906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922693, 32.950089, 35.557182>,  <28.396070, 33.463928, 35.404945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922693, 32.950089, 35.557182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649899, 32.949215, 35.849728>,  <28.486221, 32.948692, 36.025253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.649899, 32.949215, 35.849728>,  <28.922693, 32.950089, 35.557182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649899, 32.949215, 35.849728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130937, -0.984203, 0.119161,
		0.719549, 0.177029, 0.671498,
		-0.681985, -0.002182, 0.731363,
		28.445303, 32.948559, 36.069138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201630, 32.696903, 36.225929>,  <28.922693, 32.950089, 35.557182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201630, 32.696903, 36.225929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810076, 32.615150, 36.227173>,  <28.575144, 32.566097, 36.227921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810076, 32.615150, 36.227173>,  <29.201630, 32.696903, 36.225929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810076, 32.615150, 36.227173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199342, -0.951147, 0.235758,
		-0.045228, 0.231400, 0.971807,
		-0.978886, -0.204385, 0.003110,
		28.516411, 32.553837, 36.228107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095430, 32.260128, 36.829594>,  <29.201630, 32.696903, 36.225929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095430, 32.260128, 36.829594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772409, 32.181244, 36.607254>,  <28.578596, 32.133915, 36.473850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772409, 32.181244, 36.607254>,  <29.095430, 32.260128, 36.829594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772409, 32.181244, 36.607254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005693, -0.945005, 0.327007,
		-0.589768, 0.260911, 0.764264,
		-0.807553, -0.197209, -0.555848,
		28.530144, 32.122082, 36.440498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649645, 31.821907, 37.228855>,  <29.095430, 32.260128, 36.829594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649645, 31.821907, 37.228855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517895, 31.754400, 36.857258>,  <28.438845, 31.713896, 36.634300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517895, 31.754400, 36.857258>,  <28.649645, 31.821907, 37.228855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517895, 31.754400, 36.857258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011044, -0.983141, 0.182518,
		-0.944134, 0.070377, 0.321960,
		-0.329376, -0.168766, -0.928994,
		28.419083, 31.703770, 36.578560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233044, 31.310204, 37.380997>,  <28.649645, 31.821907, 37.228855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.233044, 31.310204, 37.380997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223686, 31.289122, 36.981663>,  <28.218071, 31.276472, 36.742062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223686, 31.289122, 36.981663>,  <28.233044, 31.310204, 37.380997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223686, 31.289122, 36.981663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139945, -0.988604, 0.055469,
		-0.989883, 0.141010, 0.015750,
		-0.023392, -0.052704, -0.998336,
		28.216669, 31.273310, 36.682163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701643, 31.039804, 37.187923>,  <28.233044, 31.310204, 37.380997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701643, 31.039804, 37.187923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928228, 30.958250, 36.868538>,  <28.064180, 30.909317, 36.676907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928228, 30.958250, 36.868538>,  <27.701643, 31.039804, 37.187923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928228, 30.958250, 36.868538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178314, -0.976283, 0.122786,
		-0.804563, 0.072824, -0.589385,
		0.566464, -0.203884, -0.798467,
		28.098167, 30.897085, 36.628998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272161, 30.514023, 36.810970>,  <27.701643, 31.039804, 37.187923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272161, 30.514023, 36.810970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656845, 30.497095, 36.702652>,  <27.887655, 30.486938, 36.637661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656845, 30.497095, 36.702652>,  <27.272161, 30.514023, 36.810970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656845, 30.497095, 36.702652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035183, -0.960770, 0.275107,
		-0.271811, -0.274099, -0.922490,
		0.961707, -0.042321, -0.270792,
		27.945356, 30.484398, 36.621414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414454, 29.854103, 36.461052>,  <27.272161, 30.514023, 36.810970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414454, 29.854103, 36.461052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777536, 29.980640, 36.571323>,  <27.995386, 30.056562, 36.637486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777536, 29.980640, 36.571323>,  <27.414454, 29.854103, 36.461052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777536, 29.980640, 36.571323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308649, -0.948442, 0.072073,
		0.284263, 0.019666, -0.958545,
		0.907706, 0.316341, 0.275677,
		28.049849, 30.075542, 36.654026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855352, 29.308598, 36.195995>,  <27.414454, 29.854103, 36.461052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855352, 29.308598, 36.195995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082718, 29.492104, 36.469181>,  <28.219137, 29.602207, 36.633091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082718, 29.492104, 36.469181>,  <27.855352, 29.308598, 36.195995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082718, 29.492104, 36.469181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418375, -0.875940, 0.240190,
		0.708428, 0.149208, -0.689831,
		0.568412, 0.458765, 0.682966,
		28.253242, 29.629734, 36.674072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546900, 29.133541, 36.036716>,  <27.855352, 29.308598, 36.195995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546900, 29.133541, 36.036716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502480, 29.218994, 36.424950>,  <28.475828, 29.270266, 36.657890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502480, 29.218994, 36.424950>,  <28.546900, 29.133541, 36.036716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502480, 29.218994, 36.424950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366496, -0.898985, 0.239805,
		0.923769, 0.382345, 0.021536,
		-0.111049, 0.213632, 0.970582,
		28.469166, 29.283083, 36.716125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174749, 28.782188, 36.231411>,  <28.546900, 29.133541, 36.036716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174749, 28.782188, 36.231411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955446, 28.867155, 36.554966>,  <28.823864, 28.918135, 36.749100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955446, 28.867155, 36.554966>,  <29.174749, 28.782188, 36.231411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955446, 28.867155, 36.554966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123605, -0.936003, 0.329576,
		0.827126, 0.280674, 0.486913,
		-0.548256, 0.212416, 0.808885,
		28.790970, 28.930880, 36.797630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541225, 28.535522, 36.885181>,  <29.174749, 28.782188, 36.231411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541225, 28.535522, 36.885181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151869, 28.547998, 36.975990>,  <28.918255, 28.555483, 37.030476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151869, 28.547998, 36.975990>,  <29.541225, 28.535522, 36.885181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151869, 28.547998, 36.975990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091961, -0.854258, 0.511652,
		0.209895, 0.518914, 0.828657,
		-0.973390, 0.031189, 0.227024,
		28.859852, 28.557356, 37.044098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486462, 28.519876, 37.588314>,  <29.541225, 28.535522, 36.885181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486462, 28.519876, 37.588314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153063, 28.366747, 37.428951>,  <28.953024, 28.274870, 37.333332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153063, 28.366747, 37.428951>,  <29.486462, 28.519876, 37.588314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153063, 28.366747, 37.428951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058416, -0.778084, 0.625438,
		-0.549426, 0.498027, 0.670894,
		-0.833497, -0.382823, -0.398407,
		28.903013, 28.251900, 37.309429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249092, 28.238512, 38.146530>,  <29.486462, 28.519876, 37.588314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249092, 28.238512, 38.146530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990007, 28.086794, 37.882225>,  <28.834557, 27.995762, 37.723640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990007, 28.086794, 37.882225>,  <29.249092, 28.238512, 38.146530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990007, 28.086794, 37.882225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077601, -0.829916, 0.552465,
		-0.757925, 0.409113, 0.508111,
		-0.647710, -0.379297, -0.660762,
		28.795694, 27.973005, 37.683998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613396, 27.977587, 38.540905>,  <29.249092, 28.238512, 38.146530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613396, 27.977587, 38.540905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637054, 27.799791, 38.183372>,  <28.651251, 27.693113, 37.968853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637054, 27.799791, 38.183372>,  <28.613396, 27.977587, 38.540905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637054, 27.799791, 38.183372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021760, -0.894610, 0.446317,
		-0.998012, -0.045849, -0.043242,
		0.059148, -0.444489, -0.893829,
		28.654799, 27.666445, 37.915222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398993, 27.306232, 38.639477>,  <28.613396, 27.977587, 38.540905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398993, 27.306232, 38.639477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169901, 27.036201, 38.825489>,  <28.032446, 26.874182, 38.937096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169901, 27.036201, 38.825489>,  <28.398993, 27.306232, 38.639477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169901, 27.036201, 38.825489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608032, 0.030631, 0.793321,
		-0.549798, 0.737110, 0.392926,
		-0.572729, -0.675078, 0.465028,
		27.998083, 26.833677, 38.964996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895645, 27.216734, 39.202469>,  <28.398993, 27.306232, 38.639477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895645, 27.216734, 39.202469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533310, 27.050360, 39.234612>,  <28.315908, 26.950535, 39.253899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533310, 27.050360, 39.234612>,  <28.895645, 27.216734, 39.202469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533310, 27.050360, 39.234612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140367, -0.115719, 0.983314,
		-0.399698, 0.902001, 0.163206,
		-0.905836, -0.415938, 0.080359,
		28.261559, 26.925579, 39.258720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264269, 27.610573, 39.580803>,  <28.895645, 27.216734, 39.202469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264269, 27.610573, 39.580803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282040, 27.211123, 39.591942>,  <28.292702, 26.971453, 39.598625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282040, 27.211123, 39.591942>,  <28.264269, 27.610573, 39.580803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282040, 27.211123, 39.591942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001014, 0.027918, 0.999610,
		-0.999012, -0.044381, 0.002253,
		0.044427, -0.998624, 0.027846,
		28.295368, 26.911535, 39.600296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765560, 27.433121, 39.924591>,  <28.264269, 27.610573, 39.580803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765560, 27.433121, 39.924591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048414, 27.155352, 39.977867>,  <28.218126, 26.988691, 40.009830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.048414, 27.155352, 39.977867>,  <27.765560, 27.433121, 39.924591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048414, 27.155352, 39.977867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043391, 0.145390, 0.988423,
		-0.705745, -0.704728, 0.072679,
		0.707136, -0.694421, 0.133187,
		28.260555, 26.947025, 40.017822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554562, 26.800182, 40.396908>,  <27.765560, 27.433121, 39.924591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554562, 26.800182, 40.396908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927553, 26.944651, 40.394459>,  <28.151348, 27.031332, 40.392990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927553, 26.944651, 40.394459>,  <27.554562, 26.800182, 40.396908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927553, 26.944651, 40.394459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077336, 0.216163, 0.973290,
		0.352850, -0.907098, 0.229499,
		0.932479, 0.361174, -0.006121,
		28.207296, 27.053001, 40.392624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860657, 26.474813, 40.968983>,  <27.554562, 26.800182, 40.396908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860657, 26.474813, 40.968983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024950, 26.829418, 40.883759>,  <28.123526, 27.042181, 40.832623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024950, 26.829418, 40.883759>,  <27.860657, 26.474813, 40.968983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024950, 26.829418, 40.883759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143794, 0.293745, 0.945006,
		0.900346, -0.357507, 0.248126,
		0.410733, 0.886511, -0.213065,
		28.148170, 27.095371, 40.819839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352423, 26.988503, 41.229477>,  <27.860657, 26.474813, 40.968983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352423, 26.988503, 41.229477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270901, 27.137169, 41.591766>,  <27.221987, 27.226368, 41.809139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270901, 27.137169, 41.591766>,  <27.352423, 26.988503, 41.229477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270901, 27.137169, 41.591766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095821, -0.928268, 0.359357,
		0.974311, -0.013548, 0.224799,
		-0.203805, 0.371666, 0.905719,
		27.209759, 27.248669, 41.863483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675863, 26.592590, 41.771080>,  <27.352423, 26.988503, 41.229477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675863, 26.592590, 41.771080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385611, 26.784122, 41.968739>,  <27.211460, 26.899042, 42.087334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385611, 26.784122, 41.968739>,  <27.675863, 26.592590, 41.771080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385611, 26.784122, 41.968739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160294, -0.816024, 0.555348,
		0.669155, 0.323768, 0.668885,
		-0.725630, 0.478832, 0.494148,
		27.167921, 26.927773, 42.116982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184408, 26.847050, 42.377243>,  <27.675863, 26.592590, 41.771080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184408, 26.847050, 42.377243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568165, 26.808626, 42.483330>,  <28.798418, 26.785572, 42.546982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568165, 26.808626, 42.483330>,  <28.184408, 26.847050, 42.377243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568165, 26.808626, 42.483330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103278, 0.994563, -0.013370,
		-0.262493, 0.040219, 0.964095,
		0.959391, -0.096061, 0.265220,
		28.855982, 26.779808, 42.562897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387754, 27.327318, 42.955997>,  <28.184408, 26.847050, 42.377243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387754, 27.327318, 42.955997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720772, 27.254126, 42.746849>,  <28.920582, 27.210211, 42.621361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720772, 27.254126, 42.746849>,  <28.387754, 27.327318, 42.955997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720772, 27.254126, 42.746849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115020, 0.980400, -0.159957,
		0.541889, 0.073030, 0.837271,
		0.832542, -0.182982, -0.522868,
		28.970535, 27.199230, 42.589989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787338, 27.977240, 42.991627>,  <28.387754, 27.327318, 42.955997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787338, 27.977240, 42.991627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000269, 27.811956, 42.696091>,  <29.128027, 27.712786, 42.518768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000269, 27.811956, 42.696091>,  <28.787338, 27.977240, 42.991627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000269, 27.811956, 42.696091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217355, 0.910235, -0.352460,
		0.818160, 0.027033, 0.574355,
		0.532326, -0.413208, -0.738842,
		29.159967, 27.687994, 42.474438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487925, 28.313465, 42.913204>,  <28.787338, 27.977240, 42.991627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487925, 28.313465, 42.913204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414755, 28.174318, 42.545395>,  <29.370853, 28.090830, 42.324707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414755, 28.174318, 42.545395>,  <29.487925, 28.313465, 42.913204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414755, 28.174318, 42.545395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007752, 0.934768, -0.355173,
		0.983096, -0.072099, -0.168297,
		-0.182926, -0.347865, -0.919526,
		29.359877, 28.069960, 42.269539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994280, 28.584351, 42.424004>,  <29.487925, 28.313465, 42.913204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994280, 28.584351, 42.424004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654623, 28.517191, 42.223698>,  <29.450829, 28.476894, 42.103516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654623, 28.517191, 42.223698>,  <29.994280, 28.584351, 42.424004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654623, 28.517191, 42.223698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024161, 0.934785, -0.354391,
		0.527611, -0.313027, -0.789709,
		-0.849142, -0.167901, -0.500766,
		29.399879, 28.466822, 42.073467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108812, 28.792713, 41.755043>,  <29.994280, 28.584351, 42.424004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108812, 28.792713, 41.755043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709295, 28.792355, 41.774700>,  <29.469585, 28.792139, 41.786495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709295, 28.792355, 41.774700>,  <30.108812, 28.792713, 41.755043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709295, 28.792355, 41.774700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019556, 0.924547, -0.380565,
		-0.045092, -0.381066, -0.923447,
		-0.998791, -0.000898, 0.049142,
		29.409658, 28.792086, 41.789444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866507, 28.837318, 41.122257>,  <30.108812, 28.792713, 41.755043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866507, 28.837318, 41.122257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591171, 28.996004, 41.365173>,  <29.425970, 29.091215, 41.510925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591171, 28.996004, 41.365173>,  <29.866507, 28.837318, 41.122257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591171, 28.996004, 41.365173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038569, 0.815999, -0.576765,
		-0.724362, -0.420433, -0.546384,
		-0.688340, 0.396713, 0.607295,
		29.384670, 29.115019, 41.547363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332886, 28.909410, 40.665977>,  <29.866507, 28.837318, 41.122257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332886, 28.909410, 40.665977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232521, 29.157871, 40.962952>,  <29.172302, 29.306948, 41.141136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232521, 29.157871, 40.962952>,  <29.332886, 28.909410, 40.665977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232521, 29.157871, 40.962952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079813, 0.751087, -0.655361,
		-0.964714, -0.223695, -0.138882,
		-0.250914, 0.621151, 0.742438,
		29.157248, 29.344217, 41.185684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810463, 29.359236, 40.366516>,  <29.332886, 28.909410, 40.665977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810463, 29.359236, 40.366516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911451, 29.558445, 40.698357>,  <28.972044, 29.677971, 40.897461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911451, 29.558445, 40.698357>,  <28.810463, 29.359236, 40.366516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911451, 29.558445, 40.698357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037994, 0.861815, -0.505798,
		-0.966858, 0.096179, 0.236505,
		0.252471, 0.498021, 0.829599,
		28.987192, 29.707851, 40.947235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415138, 29.894762, 40.308613>,  <28.810463, 29.359236, 40.366516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415138, 29.894762, 40.308613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724705, 29.988396, 40.543987>,  <28.910444, 30.044575, 40.685211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724705, 29.988396, 40.543987>,  <28.415138, 29.894762, 40.308613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724705, 29.988396, 40.543987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053504, 0.901688, -0.429065,
		-0.631021, 0.363545, 0.685308,
		0.773918, 0.234082, 0.588435,
		28.956881, 30.058620, 40.720516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294476, 30.545744, 40.520638>,  <28.415138, 29.894762, 40.308613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294476, 30.545744, 40.520638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684544, 30.514341, 40.603470>,  <28.918585, 30.495501, 40.653172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684544, 30.514341, 40.603470>,  <28.294476, 30.545744, 40.520638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684544, 30.514341, 40.603470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177611, 0.835792, -0.519524,
		-0.132293, 0.543404, 0.828982,
		0.975168, -0.078507, 0.207083,
		28.977095, 30.490789, 40.665596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478199, 31.163374, 40.764053>,  <28.294476, 30.545744, 40.520638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478199, 31.163374, 40.764053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820463, 31.001078, 40.635544>,  <29.025822, 30.903700, 40.558437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820463, 31.001078, 40.635544>,  <28.478199, 31.163374, 40.764053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820463, 31.001078, 40.635544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236160, 0.858487, -0.455223,
		0.460513, 0.313645, 0.830394,
		0.855661, -0.405742, -0.321275,
		29.077162, 30.879354, 40.539162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013968, 31.681503, 40.938038>,  <28.478199, 31.163374, 40.764053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013968, 31.681503, 40.938038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146784, 31.449108, 40.640797>,  <29.226475, 31.309671, 40.462452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146784, 31.449108, 40.640797>,  <29.013968, 31.681503, 40.938038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146784, 31.449108, 40.640797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409666, 0.798443, -0.441207,
		0.849660, -0.157924, 0.503129,
		0.332042, -0.580990, -0.743101,
		29.246397, 31.274811, 40.417866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604382, 32.045361, 40.730122>,  <29.013968, 31.681503, 40.938038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604382, 32.045361, 40.730122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549049, 31.793221, 40.424568>,  <29.515850, 31.641935, 40.241234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549049, 31.793221, 40.424568>,  <29.604382, 32.045361, 40.730122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549049, 31.793221, 40.424568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441723, 0.651068, -0.617245,
		0.886423, -0.422809, 0.188379,
		-0.138330, -0.630351, -0.763886,
		29.507551, 31.604115, 40.195404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216946, 32.127937, 40.292667>,  <29.604382, 32.045361, 40.730122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216946, 32.127937, 40.292667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950552, 31.966515, 40.041714>,  <29.790716, 31.869661, 39.891144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950552, 31.966515, 40.041714>,  <30.216946, 32.127937, 40.292667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950552, 31.966515, 40.041714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290929, 0.633922, -0.716591,
		0.686895, -0.659762, -0.304777,
		-0.665984, -0.403554, -0.627382,
		29.750757, 31.845448, 39.853500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548449, 31.993399, 39.684948>,  <30.216946, 32.127937, 40.292667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548449, 31.993399, 39.684948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169294, 32.009418, 39.558517>,  <29.941801, 32.019032, 39.482658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169294, 32.009418, 39.558517>,  <30.548449, 31.993399, 39.684948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169294, 32.009418, 39.558517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249562, 0.710059, -0.658434,
		0.198064, -0.703002, -0.683051,
		-0.947887, 0.040051, -0.316080,
		29.884928, 32.021435, 39.463692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571936, 32.010117, 38.965794>,  <30.548449, 31.993399, 39.684948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571936, 32.010117, 38.965794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204756, 32.132126, 39.067245>,  <29.984447, 32.205334, 39.128117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204756, 32.132126, 39.067245>,  <30.571936, 32.010117, 38.965794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204756, 32.132126, 39.067245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015560, 0.666541, -0.745306,
		-0.396391, -0.680207, -0.616597,
		-0.917950, 0.305027, 0.253627,
		29.929371, 32.223633, 39.143333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102404, 31.863962, 38.371975>,  <30.571936, 32.010117, 38.965794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102404, 31.863962, 38.371975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947979, 32.152565, 38.601891>,  <29.855324, 32.325726, 38.739841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947979, 32.152565, 38.601891>,  <30.102404, 31.863962, 38.371975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947979, 32.152565, 38.601891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185914, 0.549457, -0.814575,
		-0.903545, -0.421337, -0.077986,
		-0.386061, 0.721507, 0.574791,
		29.832161, 32.369019, 38.774326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667194, 32.109322, 37.902393>,  <30.102404, 31.863962, 38.371975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667194, 32.109322, 37.902393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694210, 32.364811, 38.208981>,  <29.710419, 32.518105, 38.392933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694210, 32.364811, 38.208981>,  <29.667194, 32.109322, 37.902393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694210, 32.364811, 38.208981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034820, 0.769261, -0.637985,
		-0.997109, 0.016400, 0.074196,
		0.067539, 0.638724, 0.766466,
		29.714472, 32.556427, 38.438919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061436, 32.590977, 37.835392>,  <29.667194, 32.109322, 37.902393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061436, 32.590977, 37.835392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331421, 32.778690, 38.063145>,  <29.493412, 32.891319, 38.199795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331421, 32.778690, 38.063145>,  <29.061436, 32.590977, 37.835392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331421, 32.778690, 38.063145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139352, 0.838862, -0.526205,
		-0.724571, 0.275826, 0.631599,
		0.674965, 0.469287, 0.569378,
		29.533911, 32.919476, 38.233959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784204, 33.324024, 37.995667>,  <29.061436, 32.590977, 37.835392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784204, 33.324024, 37.995667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180410, 33.294643, 38.042122>,  <29.418133, 33.277016, 38.069996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180410, 33.294643, 38.042122>,  <28.784204, 33.324024, 37.995667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180410, 33.294643, 38.042122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128105, 0.799410, -0.586969,
		-0.049727, 0.596279, 0.801236,
		0.990513, -0.073454, 0.116138,
		29.477564, 33.272606, 38.076962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911192, 34.056122, 38.015919>,  <28.784204, 33.324024, 37.995667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911192, 34.056122, 38.015919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270887, 33.901485, 37.934025>,  <29.486706, 33.808704, 37.884888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270887, 33.901485, 37.934025>,  <28.911192, 34.056122, 38.015919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270887, 33.901485, 37.934025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182138, 0.756379, -0.628265,
		0.397736, 0.527671, 0.750579,
		0.899240, -0.386592, -0.204731,
		29.540659, 33.785507, 37.872604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392258, 34.637817, 38.070915>,  <28.911192, 34.056122, 38.015919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392258, 34.637817, 38.070915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538456, 34.341396, 37.845615>,  <29.626175, 34.163544, 37.710434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538456, 34.341396, 37.845615>,  <29.392258, 34.637817, 38.070915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538456, 34.341396, 37.845615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254752, 0.661651, -0.705210,
		0.895274, 0.114263, 0.430615,
		0.365496, -0.741055, -0.563250,
		29.648106, 34.119080, 37.676640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981344, 34.795132, 37.925385>,  <29.392258, 34.637817, 38.070915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981344, 34.795132, 37.925385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896694, 34.558125, 37.614479>,  <29.845903, 34.415920, 37.427937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.896694, 34.558125, 37.614479>,  <29.981344, 34.795132, 37.925385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896694, 34.558125, 37.614479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250521, 0.735820, -0.629132,
		0.944698, -0.327861, -0.007280,
		-0.211624, -0.592517, -0.777264,
		29.833206, 34.380371, 37.381298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541687, 34.424656, 37.544754>,  <29.981344, 34.795132, 37.925385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541687, 34.424656, 37.544754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232536, 34.512062, 37.306458>,  <30.047047, 34.564507, 37.163479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232536, 34.512062, 37.306458>,  <30.541687, 34.424656, 37.544754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232536, 34.512062, 37.306458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596497, 0.570440, -0.564615,
		0.216456, -0.791737, -0.571227,
		-0.772877, 0.218520, -0.595744,
		30.000673, 34.577618, 37.127735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186699, 34.890087, 37.395180>,  <30.541687, 34.424656, 37.544754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186699, 34.890087, 37.395180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286739, 35.194721, 37.156036>,  <31.346764, 35.377502, 37.012550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286739, 35.194721, 37.156036>,  <31.186699, 34.890087, 37.395180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286739, 35.194721, 37.156036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574741, -0.613703, -0.541332,
		-0.779179, -0.208227, -0.591203,
		0.250103, 0.761583, -0.597862,
		31.361771, 35.423195, 36.976677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306681, 35.611973, 37.641701>,  <31.186699, 34.890087, 37.395180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306681, 35.611973, 37.641701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208542, 35.709339, 37.266350>,  <31.149658, 35.767757, 37.041138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208542, 35.709339, 37.266350>,  <31.306681, 35.611973, 37.641701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208542, 35.709339, 37.266350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085145, 0.969634, 0.229259,
		0.965689, -0.023650, -0.258624,
		-0.245349, 0.243413, -0.938378,
		31.134937, 35.782364, 36.984837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831177, 35.898228, 37.397636>,  <31.306681, 35.611973, 37.641701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831177, 35.898228, 37.397636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501963, 36.047722, 37.226551>,  <31.304434, 36.137417, 37.123901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501963, 36.047722, 37.226551>,  <31.831177, 35.898228, 37.397636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501963, 36.047722, 37.226551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248311, 0.914003, 0.320842,
		0.510839, 0.157859, -0.845058,
		-0.823034, 0.373736, -0.427711,
		31.255053, 36.159843, 37.098236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928316, 36.627224, 36.983768>,  <31.831177, 35.898228, 37.397636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928316, 36.627224, 36.983768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560528, 36.595150, 37.137730>,  <31.339855, 36.575905, 37.230106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560528, 36.595150, 37.137730>,  <31.928316, 36.627224, 36.983768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560528, 36.595150, 37.137730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122364, 0.871996, 0.473973,
		-0.373636, 0.482901, -0.791961,
		-0.919469, -0.080186, 0.384899,
		31.284687, 36.571095, 37.253201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526257, 36.208324, 37.047157>,  <31.928316, 36.627224, 36.983768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526257, 36.208324, 37.047157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696720, 36.337399, 37.385212>,  <32.799000, 36.414845, 37.588047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696720, 36.337399, 37.385212>,  <32.526257, 36.208324, 37.047157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696720, 36.337399, 37.385212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027423, -0.929183, 0.368600,
		0.904231, -0.180260, -0.387133,
		0.426161, 0.322684, 0.845140,
		32.824570, 36.434204, 37.638756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715664, 35.574966, 37.194344>,  <32.526257, 36.208324, 37.047157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715664, 35.574966, 37.194344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715942, 35.778034, 37.538963>,  <32.716110, 35.899876, 37.745735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715942, 35.778034, 37.538963>,  <32.715664, 35.574966, 37.194344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715942, 35.778034, 37.538963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095116, -0.857610, 0.505428,
		0.995466, -0.082299, 0.047692,
		0.000695, 0.507673, 0.861550,
		32.716152, 35.930336, 37.797428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144470, 34.875107, 37.041573>,  <32.715664, 35.574966, 37.194344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144470, 34.875107, 37.041573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482819, 34.663765, 37.070808>,  <33.685829, 34.536961, 37.088348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482819, 34.663765, 37.070808>,  <33.144470, 34.875107, 37.041573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482819, 34.663765, 37.070808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149310, 0.366100, 0.918519,
		-0.512063, -0.766036, 0.388562,
		0.845871, -0.528356, 0.073089,
		33.736580, 34.505257, 37.092735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095123, 34.522381, 37.633366>,  <33.144470, 34.875107, 37.041573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095123, 34.522381, 37.633366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490837, 34.521656, 37.574963>,  <33.728264, 34.521221, 37.539921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490837, 34.521656, 37.574963>,  <33.095123, 34.522381, 37.633366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490837, 34.521656, 37.574963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137376, 0.350473, 0.926443,
		0.049495, -0.936571, 0.346965,
		0.989282, -0.001810, -0.146009,
		33.787621, 34.521114, 37.531158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330845, 34.248856, 38.299889>,  <33.095123, 34.522381, 37.633366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330845, 34.248856, 38.299889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626068, 34.451115, 38.121185>,  <33.803204, 34.572468, 38.013966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626068, 34.451115, 38.121185>,  <33.330845, 34.248856, 38.299889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626068, 34.451115, 38.121185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221475, 0.443886, 0.868282,
		0.637353, -0.739788, 0.215626,
		0.738059, 0.505647, -0.446756,
		33.847485, 34.602810, 37.987160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979702, 34.104385, 38.653778>,  <33.330845, 34.248856, 38.299889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979702, 34.104385, 38.653778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030933, 34.455971, 38.470028>,  <34.061672, 34.666920, 38.359779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030933, 34.455971, 38.470028>,  <33.979702, 34.104385, 38.653778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030933, 34.455971, 38.470028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271782, 0.414352, 0.868589,
		0.953798, -0.236098, -0.185816,
		0.128079, 0.878960, -0.459375,
		34.069359, 34.719658, 38.332214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541328, 34.317028, 38.979881>,  <33.979702, 34.104385, 38.653778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541328, 34.317028, 38.979881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384537, 34.646885, 38.816750>,  <34.290462, 34.844799, 38.718872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384537, 34.646885, 38.816750>,  <34.541328, 34.317028, 38.979881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384537, 34.646885, 38.816750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038843, 0.457739, 0.888238,
		0.919155, 0.332326, -0.211454,
		-0.391975, 0.824642, -0.407825,
		34.266945, 34.894276, 38.694401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951660, 34.814137, 39.285587>,  <34.541328, 34.317028, 38.979881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951660, 34.814137, 39.285587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615273, 35.002113, 39.178310>,  <34.413441, 35.114899, 39.113945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615273, 35.002113, 39.178310>,  <34.951660, 34.814137, 39.285587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615273, 35.002113, 39.178310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069504, 0.585372, 0.807780,
		0.536600, 0.660678, -0.524942,
		-0.840969, 0.469941, -0.268191,
		34.362980, 35.143097, 39.097855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032246, 35.480331, 39.570492>,  <34.951660, 34.814137, 39.285587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032246, 35.480331, 39.570492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642654, 35.500740, 39.482162>,  <34.408901, 35.512985, 39.429165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642654, 35.500740, 39.482162>,  <35.032246, 35.480331, 39.570492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642654, 35.500740, 39.482162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111489, 0.740433, 0.662819,
		0.197321, 0.670191, -0.715478,
		-0.973979, 0.051020, -0.220822,
		34.350460, 35.516045, 39.415916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831707, 36.198631, 39.458073>,  <35.032246, 35.480331, 39.570492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831707, 36.198631, 39.458073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486004, 36.016014, 39.542564>,  <34.278580, 35.906445, 39.593262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486004, 36.016014, 39.542564>,  <34.831707, 36.198631, 39.458073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486004, 36.016014, 39.542564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211990, 0.711349, 0.670107,
		-0.456195, 0.534368, -0.711574,
		-0.864261, -0.456546, 0.211233,
		34.226727, 35.879051, 39.605934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440575, 36.712265, 39.590092>,  <34.831707, 36.198631, 39.458073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440575, 36.712265, 39.590092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231495, 36.416466, 39.759766>,  <34.106049, 36.238987, 39.861568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231495, 36.416466, 39.759766>,  <34.440575, 36.712265, 39.590092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231495, 36.416466, 39.759766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439582, 0.660107, 0.609120,
		-0.730446, 0.131925, -0.670107,
		-0.522700, -0.739497, 0.424181,
		34.074684, 36.194618, 39.887020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857853, 37.164322, 39.814472>,  <34.440575, 36.712265, 39.590092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857853, 37.164322, 39.814472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842846, 36.819408, 40.016487>,  <33.833839, 36.612461, 40.137695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842846, 36.819408, 40.016487>,  <33.857853, 37.164322, 39.814472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842846, 36.819408, 40.016487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496703, 0.454629, 0.739323,
		-0.867109, -0.223111, -0.445357,
		-0.037521, -0.862284, 0.505033,
		33.831589, 36.560722, 40.167995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149578, 37.043114, 39.997280>,  <33.857853, 37.164322, 39.814472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149578, 37.043114, 39.997280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380680, 36.834923, 40.248772>,  <33.519341, 36.710007, 40.399666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380680, 36.834923, 40.248772>,  <33.149578, 37.043114, 39.997280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380680, 36.834923, 40.248772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435763, 0.454638, 0.776798,
		-0.690150, -0.722777, 0.035866,
		0.577757, -0.520478, 0.628728,
		33.554008, 36.678780, 40.437389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648186, 37.028339, 40.544785>,  <33.149578, 37.043114, 39.997280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648186, 37.028339, 40.544785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986626, 36.898037, 40.713547>,  <33.189690, 36.819855, 40.814804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986626, 36.898037, 40.713547>,  <32.648186, 37.028339, 40.544785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986626, 36.898037, 40.713547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289656, 0.383459, 0.876960,
		-0.447460, -0.864199, 0.230085,
		0.846096, -0.325759, 0.421903,
		33.240456, 36.800308, 40.840118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454792, 36.399914, 41.014103>,  <32.648186, 37.028339, 40.544785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454792, 36.399914, 41.014103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787624, 36.598175, 41.113674>,  <32.987324, 36.717133, 41.173416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787624, 36.598175, 41.113674>,  <32.454792, 36.399914, 41.014103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787624, 36.598175, 41.113674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378946, 0.180306, 0.907683,
		0.405018, -0.849596, 0.337857,
		0.832082, 0.495658, 0.248924,
		33.037251, 36.746872, 41.188351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591797, 36.286991, 41.707302>,  <32.454792, 36.399914, 41.014103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591797, 36.286991, 41.707302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817677, 36.607056, 41.626457>,  <32.953205, 36.799095, 41.577950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817677, 36.607056, 41.626457>,  <32.591797, 36.286991, 41.707302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817677, 36.607056, 41.626457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334215, 0.445642, 0.830483,
		0.754593, -0.401426, 0.519082,
		0.564703, 0.800162, -0.202116,
		32.987087, 36.847103, 41.565823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909164, 36.501919, 42.391617>,  <32.591797, 36.286991, 41.707302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909164, 36.501919, 42.391617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934834, 36.812687, 42.141090>,  <32.950237, 36.999149, 41.990776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934834, 36.812687, 42.141090>,  <32.909164, 36.501919, 42.391617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934834, 36.812687, 42.141090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492350, 0.570558, 0.657309,
		0.868028, 0.266183, 0.419134,
		0.064176, 0.776924, -0.626315,
		32.954086, 37.045765, 41.953197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261036, 37.007046, 42.824715>,  <32.909164, 36.501919, 42.391617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261036, 37.007046, 42.824715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063259, 37.193867, 42.531490>,  <32.944592, 37.305962, 42.355556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063259, 37.193867, 42.531490>,  <33.261036, 37.007046, 42.824715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063259, 37.193867, 42.531490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475335, 0.560800, 0.677908,
		0.727723, 0.683640, -0.055278,
		-0.494445, 0.467054, -0.733065,
		32.914925, 37.333984, 42.311569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166080, 37.658295, 43.109451>,  <33.261036, 37.007046, 42.824715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166080, 37.658295, 43.109451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922176, 37.679989, 42.793159>,  <32.775833, 37.693005, 42.603386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922176, 37.679989, 42.793159>,  <33.166080, 37.658295, 43.109451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922176, 37.679989, 42.793159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586050, 0.640816, 0.495883,
		0.533605, 0.765776, -0.358960,
		-0.609763, 0.054237, -0.790726,
		32.739246, 37.696259, 42.555943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027912, 38.349262, 43.078842>,  <33.166080, 37.658295, 43.109451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027912, 38.349262, 43.078842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735821, 38.161350, 42.880421>,  <32.560566, 38.048603, 42.761368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735821, 38.161350, 42.880421>,  <33.027912, 38.349262, 43.078842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735821, 38.161350, 42.880421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683001, 0.519534, 0.513414,
		0.016525, 0.713717, -0.700240,
		-0.730230, -0.469780, -0.496055,
		32.516750, 38.020416, 42.731606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702629, 38.869949, 42.845493>,  <33.027912, 38.349262, 43.078842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702629, 38.869949, 42.845493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439945, 38.568314, 42.849293>,  <32.282337, 38.387333, 42.851570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439945, 38.568314, 42.849293>,  <32.702629, 38.869949, 42.845493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439945, 38.568314, 42.849293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639927, 0.563863, 0.522065,
		-0.399037, 0.336767, -0.852852,
		-0.656706, -0.754087, 0.009495,
		32.242935, 38.342087, 42.852142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925495, 39.089596, 42.522003>,  <32.702629, 38.869949, 42.845493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925495, 39.089596, 42.522003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899731, 38.776897, 42.770107>,  <31.884272, 38.589279, 42.918972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899731, 38.776897, 42.770107>,  <31.925495, 39.089596, 42.522003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899731, 38.776897, 42.770107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680010, 0.489291, 0.546060,
		-0.730368, -0.386613, -0.563110,
		-0.064411, -0.781745, 0.620263,
		31.880407, 38.542374, 42.956184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208530, 39.001915, 42.728065>,  <31.925495, 39.089596, 42.522003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208530, 39.001915, 42.728065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400810, 38.779083, 42.998943>,  <31.516178, 38.645386, 43.161469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400810, 38.779083, 42.998943>,  <31.208530, 39.001915, 42.728065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400810, 38.779083, 42.998943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604523, 0.348885, 0.716122,
		-0.635199, -0.753619, -0.169058,
		0.480701, -0.557080, 0.677191,
		31.545021, 38.611958, 43.202103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741373, 38.808434, 43.232399>,  <31.208530, 39.001915, 42.728065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741373, 38.808434, 43.232399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069830, 38.741894, 43.450779>,  <31.266903, 38.701969, 43.581806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069830, 38.741894, 43.450779>,  <30.741373, 38.808434, 43.232399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069830, 38.741894, 43.450779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416727, 0.478843, 0.772689,
		-0.389958, -0.861996, 0.323876,
		0.821140, -0.166348, 0.545945,
		31.316172, 38.691990, 43.614563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620804, 38.395313, 43.898544>,  <30.741373, 38.808434, 43.232399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620804, 38.395313, 43.898544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951843, 38.613350, 43.952137>,  <31.150467, 38.744171, 43.984291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951843, 38.613350, 43.952137>,  <30.620804, 38.395313, 43.898544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951843, 38.613350, 43.952137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353342, 0.320445, 0.878900,
		0.436151, -0.774717, 0.457805,
		0.827600, 0.545095, 0.133978,
		31.200123, 38.776878, 43.992332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760088, 38.392899, 44.634113>,  <30.620804, 38.395313, 43.898544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760088, 38.392899, 44.634113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980259, 38.701008, 44.505295>,  <31.112362, 38.885872, 44.428005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.980259, 38.701008, 44.505295>,  <30.760088, 38.392899, 44.634113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980259, 38.701008, 44.505295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317376, 0.549824, 0.772636,
		0.772207, -0.323070, 0.547103,
		0.550426, 0.770272, -0.322043,
		31.145386, 38.932091, 44.408680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953981, 38.649307, 45.262142>,  <30.760088, 38.392899, 44.634113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953981, 38.649307, 45.262142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053516, 38.940033, 45.006073>,  <31.113237, 39.114468, 44.852432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053516, 38.940033, 45.006073>,  <30.953981, 38.649307, 45.262142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053516, 38.940033, 45.006073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175702, 0.683874, 0.708128,
		0.952475, -0.063729, 0.297876,
		0.248838, 0.726812, -0.640175,
		31.128168, 39.158077, 44.814022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375801, 39.025902, 45.663097>,  <30.953981, 38.649307, 45.262142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375801, 39.025902, 45.663097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275709, 39.285618, 45.375816>,  <31.215654, 39.441448, 45.203449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275709, 39.285618, 45.375816>,  <31.375801, 39.025902, 45.663097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275709, 39.285618, 45.375816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007678, 0.740445, 0.672073,
		0.968156, 0.173688, -0.180298,
		-0.250232, 0.649287, -0.718199,
		31.200640, 39.480404, 45.160358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823484, 39.631153, 45.730057>,  <31.375801, 39.025902, 45.663097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823484, 39.631153, 45.730057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490694, 39.747604, 45.541142>,  <31.291019, 39.817474, 45.427792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490694, 39.747604, 45.541142>,  <31.823484, 39.631153, 45.730057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490694, 39.747604, 45.541142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100627, 0.757971, 0.644480,
		0.545608, 0.583718, -0.601319,
		-0.831977, 0.291125, -0.472293,
		31.241100, 39.834942, 45.399452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914038, 40.272957, 45.650608>,  <31.823484, 39.631153, 45.730057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914038, 40.272957, 45.650608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521704, 40.198582, 45.673908>,  <31.286304, 40.153957, 45.687889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521704, 40.198582, 45.673908>,  <31.914038, 40.272957, 45.650608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521704, 40.198582, 45.673908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082202, 0.665899, 0.741500,
		-0.176660, 0.722500, -0.668420,
		-0.980833, -0.185938, 0.058247,
		31.227453, 40.142799, 45.691383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669460, 40.964790, 45.673573>,  <31.914038, 40.272957, 45.650608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669460, 40.964790, 45.673573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377771, 40.720631, 45.797283>,  <31.202757, 40.574135, 45.871510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377771, 40.720631, 45.797283>,  <31.669460, 40.964790, 45.673573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377771, 40.720631, 45.797283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161688, 0.592878, 0.788893,
		-0.664897, 0.525275, -0.531035,
		-0.729224, -0.610395, 0.309273,
		31.159004, 40.537514, 45.890064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064718, 41.306683, 45.717030>,  <31.669460, 40.964790, 45.673573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064718, 41.306683, 45.717030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021379, 41.015919, 45.988285>,  <30.995377, 40.841461, 46.151039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021379, 41.015919, 45.988285>,  <31.064718, 41.306683, 45.717030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021379, 41.015919, 45.988285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297489, 0.674600, 0.675585,
		-0.948557, -0.128541, -0.289337,
		-0.108347, -0.726906, 0.678137,
		30.988876, 40.797848, 46.191727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414301, 41.418411, 46.013374>,  <31.064718, 41.306683, 45.717030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414301, 41.418411, 46.013374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592447, 41.187622, 46.287239>,  <30.699335, 41.049149, 46.451557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592447, 41.187622, 46.287239>,  <30.414301, 41.418411, 46.013374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592447, 41.187622, 46.287239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264835, 0.645575, 0.716307,
		-0.855285, -0.500340, 0.134715,
		0.445365, -0.576969, 0.684658,
		30.726057, 41.014530, 46.492638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895691, 41.364689, 46.642315>,  <30.414301, 41.418411, 46.013374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895691, 41.364689, 46.642315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242741, 41.242001, 46.798851>,  <30.450970, 41.168388, 46.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242741, 41.242001, 46.798851>,  <29.895691, 41.364689, 46.642315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242741, 41.242001, 46.798851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223882, 0.461776, 0.858277,
		-0.443965, -0.832277, 0.331979,
		0.867624, -0.306720, 0.391345,
		30.503029, 41.149986, 46.916256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744692, 41.081837, 47.273300>,  <29.895691, 41.364689, 46.642315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744692, 41.081837, 47.273300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121527, 41.215816, 47.266632>,  <30.347628, 41.296204, 47.262630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121527, 41.215816, 47.266632>,  <29.744692, 41.081837, 47.273300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121527, 41.215816, 47.266632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110233, 0.356221, 0.927877,
		0.316731, -0.872304, 0.372515,
		0.942088, 0.334951, -0.016670,
		30.404154, 41.316303, 47.261631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925333, 40.912281, 47.851299>,  <29.744692, 41.081837, 47.273300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925333, 40.912281, 47.851299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196444, 41.187695, 47.748123>,  <30.359110, 41.352943, 47.686218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196444, 41.187695, 47.748123>,  <29.925333, 40.912281, 47.851299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196444, 41.187695, 47.748123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056215, 0.301265, 0.951882,
		0.733116, -0.659663, 0.165484,
		0.677777, 0.688537, -0.257945,
		30.399776, 41.394257, 47.670738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490448, 40.756649, 48.326611>,  <29.925333, 40.912281, 47.851299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490448, 40.756649, 48.326611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476213, 41.127476, 48.177326>,  <30.467672, 41.349972, 48.087753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476213, 41.127476, 48.177326>,  <30.490448, 40.756649, 48.326611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476213, 41.127476, 48.177326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063527, 0.370597, 0.926619,
		0.997345, 0.056684, 0.045705,
		-0.035587, 0.927063, -0.373214,
		30.465538, 41.405594, 48.065361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986237, 41.088226, 48.749893>,  <30.490448, 40.756649, 48.326611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986237, 41.088226, 48.749893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725290, 41.347252, 48.592373>,  <30.568722, 41.502666, 48.497860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725290, 41.347252, 48.592373>,  <30.986237, 41.088226, 48.749893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725290, 41.347252, 48.592373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174454, 0.377345, 0.909493,
		0.737554, 0.662022, -0.133196,
		-0.652365, 0.647563, -0.393804,
		30.529581, 41.541519, 48.474232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174004, 41.821999, 48.873543>,  <30.986237, 41.088226, 48.749893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174004, 41.821999, 48.873543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777529, 41.806366, 48.822910>,  <30.539644, 41.796986, 48.792530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777529, 41.806366, 48.822910>,  <31.174004, 41.821999, 48.873543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777529, 41.806366, 48.822910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132238, 0.349849, 0.927426,
		0.008036, 0.935990, -0.351934,
		-0.991185, -0.039086, -0.126585,
		30.480173, 41.794640, 48.784935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924868, 42.360619, 49.282772>,  <31.174004, 41.821999, 48.873543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924868, 42.360619, 49.282772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605062, 42.124672, 49.237446>,  <30.413179, 41.983105, 49.210251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605062, 42.124672, 49.237446>,  <30.924868, 42.360619, 49.282772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605062, 42.124672, 49.237446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240033, 0.140835, 0.960495,
		-0.550606, 0.795124, -0.254187,
		-0.799511, -0.589867, -0.113311,
		30.365210, 41.947712, 49.203453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417412, 42.669350, 49.609726>,  <30.924868, 42.360619, 49.282772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417412, 42.669350, 49.609726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233669, 42.316067, 49.571911>,  <30.123423, 42.104095, 49.549221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233669, 42.316067, 49.571911>,  <30.417412, 42.669350, 49.609726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233669, 42.316067, 49.571911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379273, 0.098782, 0.919997,
		-0.803207, 0.458465, -0.380352,
		-0.459358, -0.883206, -0.094541,
		30.095861, 42.051105, 49.543549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810442, 42.759331, 49.946705>,  <30.417412, 42.669350, 49.609726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810442, 42.759331, 49.946705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828545, 42.359749, 49.949326>,  <29.839407, 42.119999, 49.950897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828545, 42.359749, 49.949326>,  <29.810442, 42.759331, 49.946705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828545, 42.359749, 49.949326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482762, -0.016128, 0.875603,
		-0.874581, -0.042792, -0.482987,
		0.045258, -0.998954, 0.006553,
		29.842123, 42.060062, 49.951290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135399, 42.470226, 50.136871>,  <29.810442, 42.759331, 49.946705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135399, 42.470226, 50.136871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396898, 42.178268, 50.216743>,  <29.553799, 42.003094, 50.264668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396898, 42.178268, 50.216743>,  <29.135399, 42.470226, 50.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396898, 42.178268, 50.216743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518060, -0.239359, 0.821170,
		-0.551568, -0.640287, -0.534608,
		0.653748, -0.729890, 0.199684,
		29.593023, 41.959301, 50.276649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784765, 42.003456, 50.367569>,  <29.135399, 42.470226, 50.136871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784765, 42.003456, 50.367569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143230, 41.913738, 50.520714>,  <29.358309, 41.859909, 50.612602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143230, 41.913738, 50.520714>,  <28.784765, 42.003456, 50.367569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143230, 41.913738, 50.520714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443708, -0.445565, 0.777557,
		-0.003809, -0.866698, -0.498819,
		0.896163, -0.224292, 0.382864,
		29.412079, 41.846451, 50.635574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079550, 41.323936, 50.334236>,  <28.784765, 42.003456, 50.367569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079550, 41.323936, 50.334236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203115, 41.512863, 50.664444>,  <29.277254, 41.626221, 50.862568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203115, 41.512863, 50.664444>,  <29.079550, 41.323936, 50.334236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203115, 41.512863, 50.664444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609425, -0.568079, 0.553070,
		0.730187, -0.673946, 0.112354,
		0.308913, 0.472317, 0.825524,
		29.295790, 41.654556, 50.912102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206696, 40.517929, 50.422279>,  <29.079550, 41.323936, 50.334236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206696, 40.517929, 50.422279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529406, 40.419655, 50.637222>,  <29.723032, 40.360691, 50.766186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529406, 40.419655, 50.637222>,  <29.206696, 40.517929, 50.422279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529406, 40.419655, 50.637222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059177, 0.871277, 0.487210,
		-0.587888, -0.424868, 0.688386,
		0.806775, -0.245688, 0.537356,
		29.771439, 40.345947, 50.798428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075829, 40.468143, 51.141663>,  <29.206696, 40.517929, 50.422279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075829, 40.468143, 51.141663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452267, 40.581322, 51.067604>,  <29.678129, 40.649227, 51.023170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452267, 40.581322, 51.067604>,  <29.075829, 40.468143, 51.141663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452267, 40.581322, 51.067604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155120, 0.847792, 0.507135,
		0.300457, -0.448544, 0.841745,
		0.941097, 0.282944, -0.185147,
		29.734596, 40.666206, 51.012058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413099, 40.618610, 51.779102>,  <29.075829, 40.468143, 51.141663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413099, 40.618610, 51.779102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550081, 40.818237, 51.460693>,  <29.632271, 40.938015, 51.269646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550081, 40.818237, 51.460693>,  <29.413099, 40.618610, 51.779102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550081, 40.818237, 51.460693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288359, 0.862193, 0.416499,
		0.894189, 0.086908, 0.439174,
		0.342455, 0.499069, -0.796024,
		29.652819, 40.967957, 51.221886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756380, 41.260784, 52.008537>,  <29.413099, 40.618610, 51.779102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756380, 41.260784, 52.008537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528936, 41.277447, 51.679916>,  <29.392471, 41.287445, 51.482742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528936, 41.277447, 51.679916>,  <29.756380, 41.260784, 52.008537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528936, 41.277447, 51.679916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621475, 0.632561, 0.462208,
		0.538938, 0.773389, -0.333788,
		-0.568608, 0.041661, -0.821553,
		29.358355, 41.289944, 51.433449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370676, 40.973412, 51.799553>,  <29.756380, 41.260784, 52.008537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370676, 40.973412, 51.799553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619514, 41.174881, 52.039322>,  <30.768818, 41.295765, 52.183182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619514, 41.174881, 52.039322>,  <30.370676, 40.973412, 51.799553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619514, 41.174881, 52.039322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777338, -0.488776, -0.396035,
		0.093509, 0.712325, -0.695593,
		0.622095, 0.503678, 0.599422,
		30.806143, 41.325985, 52.219147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820019, 41.489647, 51.301498>,  <30.370676, 40.973412, 51.799553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820019, 41.489647, 51.301498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990164, 41.313629, 51.617836>,  <31.092251, 41.208019, 51.807636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990164, 41.313629, 51.617836>,  <30.820019, 41.489647, 51.301498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990164, 41.313629, 51.617836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629171, -0.484346, -0.607908,
		0.650547, 0.756155, 0.070841,
		0.425361, -0.440044, 0.790841,
		31.117771, 41.181618, 51.855087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606234, 41.384224, 51.295433>,  <30.820019, 41.489647, 51.301498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606234, 41.384224, 51.295433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463085, 41.068596, 51.495148>,  <31.377195, 40.879219, 51.614975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463085, 41.068596, 51.495148>,  <31.606234, 41.384224, 51.295433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463085, 41.068596, 51.495148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571656, -0.607929, -0.551028,
		0.738334, 0.088222, 0.668641,
		-0.357873, -0.789075, 0.499287,
		31.355722, 40.831875, 51.644936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204296, 41.071487, 51.544865>,  <31.606234, 41.384224, 51.295433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204296, 41.071487, 51.544865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926262, 40.784176, 51.557022>,  <31.759439, 40.611790, 51.564316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926262, 40.784176, 51.557022>,  <32.204296, 41.071487, 51.544865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926262, 40.784176, 51.557022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601768, -0.604431, -0.522053,
		0.393352, -0.344583, 0.852371,
		-0.695090, -0.718280, 0.030395,
		31.717735, 40.568691, 51.566139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567600, 40.292046, 51.676201>,  <32.204296, 41.071487, 51.544865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567600, 40.292046, 51.676201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226315, 40.296185, 51.467617>,  <32.021542, 40.298668, 51.342468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226315, 40.296185, 51.467617>,  <32.567600, 40.292046, 51.676201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226315, 40.296185, 51.467617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350363, -0.729253, -0.587738,
		-0.386352, -0.684166, 0.618586,
		-0.853216, 0.010345, -0.521455,
		31.970350, 40.299290, 51.311180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383720, 39.603027, 51.572422>,  <32.567600, 40.292046, 51.676201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383720, 39.603027, 51.572422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186043, 39.805050, 51.289387>,  <32.067436, 39.926266, 51.119564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186043, 39.805050, 51.289387>,  <32.383720, 39.603027, 51.572422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186043, 39.805050, 51.289387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208461, -0.721339, -0.660465,
		-0.843989, -0.473903, 0.251195,
		-0.494193, 0.505061, -0.707592,
		32.037785, 39.956570, 51.077110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102837, 39.082619, 51.161919>,  <32.383720, 39.603027, 51.572422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102837, 39.082619, 51.161919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075172, 39.404388, 50.925911>,  <32.058575, 39.597450, 50.784306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075172, 39.404388, 50.925911>,  <32.102837, 39.082619, 51.161919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075172, 39.404388, 50.925911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303963, -0.546316, -0.780477,
		-0.950170, -0.233322, -0.206731,
		-0.069162, 0.804425, -0.590015,
		32.054424, 39.645718, 50.748905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744284, 38.873829, 50.546005>,  <32.102837, 39.082619, 51.161919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744284, 38.873829, 50.546005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963194, 39.194920, 50.451252>,  <32.094540, 39.387573, 50.394402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963194, 39.194920, 50.451252>,  <31.744284, 38.873829, 50.546005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963194, 39.194920, 50.451252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102994, -0.345469, -0.932761,
		-0.830591, 0.486081, -0.271743,
		0.547277, 0.802731, -0.236880,
		32.127377, 39.435738, 50.380188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415443, 39.009819, 49.904243>,  <31.744284, 38.873829, 50.546005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415443, 39.009819, 49.904243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785070, 39.160793, 49.928387>,  <32.006847, 39.251377, 49.942871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785070, 39.160793, 49.928387>,  <31.415443, 39.009819, 49.904243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785070, 39.160793, 49.928387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197463, -0.336196, -0.920859,
		-0.327273, 0.862853, -0.385197,
		0.924067, 0.377434, 0.060354,
		32.062290, 39.274025, 49.946491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650177, 39.050529, 49.263371>,  <31.415443, 39.009819, 49.904243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650177, 39.050529, 49.263371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002342, 39.117928, 49.440674>,  <32.213642, 39.158367, 49.547058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002342, 39.117928, 49.440674>,  <31.650177, 39.050529, 49.263371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002342, 39.117928, 49.440674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463756, -0.501090, -0.730643,
		0.099002, 0.848833, -0.519308,
		0.880414, 0.168497, 0.443261,
		32.266468, 39.168476, 49.573650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087719, 39.298260, 48.666992>,  <31.650177, 39.050529, 49.263371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087719, 39.298260, 48.666992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347775, 39.188297, 48.950329>,  <32.503807, 39.122318, 49.120331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347775, 39.188297, 48.950329>,  <32.087719, 39.298260, 48.666992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347775, 39.188297, 48.950329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566137, -0.446503, -0.692910,
		0.506762, 0.851505, -0.134654,
		0.650140, -0.274908, 0.708339,
		32.542816, 39.105824, 49.162830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759178, 39.521900, 48.513271>,  <32.087719, 39.298260, 48.666992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759178, 39.521900, 48.513271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804924, 39.210030, 48.759533>,  <32.832371, 39.022907, 48.907288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804924, 39.210030, 48.759533>,  <32.759178, 39.521900, 48.513271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804924, 39.210030, 48.759533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556676, -0.462988, -0.689749,
		0.822820, 0.421598, 0.381080,
		0.114361, -0.779678, 0.615649,
		32.839233, 38.976128, 48.944229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490280, 39.333862, 48.416550>,  <32.759178, 39.521900, 48.513271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490280, 39.333862, 48.416550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332333, 39.013809, 48.597153>,  <33.237564, 38.821777, 48.705513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332333, 39.013809, 48.597153>,  <33.490280, 39.333862, 48.416550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332333, 39.013809, 48.597153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519257, -0.599788, -0.608791,
		0.757923, -0.005948, 0.652316,
		-0.394873, -0.800137, 0.451504,
		33.213871, 38.773769, 48.732605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049938, 38.879829, 48.702225>,  <33.490280, 39.333862, 48.416550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049938, 38.879829, 48.702225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739178, 38.635288, 48.641998>,  <33.552719, 38.488564, 48.605862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739178, 38.635288, 48.641998>,  <34.049938, 38.879829, 48.702225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739178, 38.635288, 48.641998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561740, -0.565029, -0.604311,
		0.284373, -0.554070, 0.782393,
		-0.776905, -0.611351, -0.150564,
		33.506107, 38.451881, 48.596828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402794, 38.229561, 48.524723>,  <34.049938, 38.879829, 48.702225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402794, 38.229561, 48.524723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028229, 38.141861, 48.415142>,  <33.803490, 38.089241, 48.349392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028229, 38.141861, 48.415142>,  <34.402794, 38.229561, 48.524723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028229, 38.141861, 48.415142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349648, -0.648621, -0.676045,
		-0.029467, -0.728848, 0.684041,
		-0.936418, -0.219253, -0.273954,
		33.747303, 38.076084, 48.332954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294899, 37.471111, 48.440853>,  <34.402794, 38.229561, 48.524723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294899, 37.471111, 48.440853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000435, 37.629238, 48.221111>,  <33.823757, 37.724113, 48.089268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000435, 37.629238, 48.221111>,  <34.294899, 37.471111, 48.440853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000435, 37.629238, 48.221111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101109, -0.738341, -0.666806,
		-0.669213, -0.546420, 0.503566,
		-0.736159, 0.395320, -0.549356,
		33.779587, 37.747833, 48.056305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986866, 36.951210, 48.246632>,  <34.294899, 37.471111, 48.440853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986866, 36.951210, 48.246632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847649, 37.234550, 48.000996>,  <33.764118, 37.404552, 47.853615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847649, 37.234550, 48.000996>,  <33.986866, 36.951210, 48.246632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847649, 37.234550, 48.000996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022680, -0.648491, -0.760885,
		-0.937204, -0.278749, 0.209638,
		-0.348044, 0.708350, -0.614090,
		33.743237, 37.447056, 47.816769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458580, 36.593063, 47.790005>,  <33.986866, 36.951210, 48.246632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458580, 36.593063, 47.790005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583641, 36.921177, 47.598427>,  <33.658680, 37.118046, 47.483482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583641, 36.921177, 47.598427>,  <33.458580, 36.593063, 47.790005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583641, 36.921177, 47.598427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024668, -0.497039, -0.867377,
		-0.949546, 0.283004, -0.135167,
		0.312655, 0.820281, -0.478943,
		33.677437, 37.167263, 47.454742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079330, 36.581112, 47.189419>,  <33.458580, 36.593063, 47.790005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079330, 36.581112, 47.189419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390068, 36.818752, 47.105934>,  <33.576511, 36.961338, 47.055843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390068, 36.818752, 47.105934>,  <33.079330, 36.581112, 47.189419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390068, 36.818752, 47.105934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112789, -0.457366, -0.882097,
		-0.619515, 0.661708, -0.422308,
		0.776840, 0.594104, -0.208712,
		33.623119, 36.996983, 47.043320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896919, 36.896908, 46.622158>,  <33.079330, 36.581112, 47.189419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896919, 36.896908, 46.622158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293583, 36.947887, 46.614544>,  <33.531582, 36.978474, 46.609978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293583, 36.947887, 46.614544>,  <32.896919, 36.896908, 46.622158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293583, 36.947887, 46.614544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029615, -0.369145, -0.928900,
		-0.125409, 0.920592, -0.369842,
		0.991663, 0.127445, -0.019031,
		33.591084, 36.986122, 46.608833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150627, 37.262051, 45.932705>,  <32.896919, 36.896908, 46.622158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150627, 37.262051, 45.932705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458221, 37.057125, 46.085651>,  <33.642776, 36.934170, 46.177418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458221, 37.057125, 46.085651>,  <33.150627, 37.262051, 45.932705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458221, 37.057125, 46.085651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170061, -0.412628, -0.894884,
		0.616236, 0.753174, -0.230179,
		0.768981, -0.512315, 0.382362,
		33.688915, 36.903431, 46.200359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690044, 37.392151, 45.476162>,  <33.150627, 37.262051, 45.932705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690044, 37.392151, 45.476162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803143, 37.064205, 45.675312>,  <33.871002, 36.867439, 45.794804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803143, 37.064205, 45.675312>,  <33.690044, 37.392151, 45.476162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803143, 37.064205, 45.675312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275846, -0.427629, -0.860838,
		0.918675, 0.380734, 0.105247,
		0.282744, -0.819863, 0.497876,
		33.887966, 36.818245, 45.824677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265934, 37.068073, 45.103981>,  <33.690044, 37.392151, 45.476162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265934, 37.068073, 45.103981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163803, 36.768597, 45.348690>,  <34.102524, 36.588909, 45.495518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163803, 36.768597, 45.348690>,  <34.265934, 37.068073, 45.103981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163803, 36.768597, 45.348690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284620, -0.662914, -0.692486,
		0.924012, -0.002689, 0.382353,
		-0.255329, -0.748691, 0.611775,
		34.087204, 36.543991, 45.532223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826607, 36.681110, 45.198875>,  <34.265934, 37.068073, 45.103981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826607, 36.681110, 45.198875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498188, 36.458466, 45.249577>,  <34.301136, 36.324879, 45.279999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498188, 36.458466, 45.249577>,  <34.826607, 36.681110, 45.198875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498188, 36.458466, 45.249577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330275, -0.644272, -0.689806,
		0.465618, -0.524499, 0.712812,
		-0.821047, -0.556610, 0.126756,
		34.251873, 36.291481, 45.287601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040905, 36.039932, 45.202999>,  <34.826607, 36.681110, 45.198875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040905, 36.039932, 45.202999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656204, 35.991879, 45.104523>,  <34.425385, 35.963047, 45.045437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656204, 35.991879, 45.104523>,  <35.040905, 36.039932, 45.202999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656204, 35.991879, 45.104523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272142, -0.521698, -0.808560,
		-0.031298, -0.844629, 0.534436,
		-0.961748, -0.120137, -0.246187,
		34.367680, 35.955837, 45.030666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995655, 35.372566, 45.011295>,  <35.040905, 36.039932, 45.202999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995655, 35.372566, 45.011295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657082, 35.517570, 44.855270>,  <34.453938, 35.604572, 44.761658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657082, 35.517570, 44.855270>,  <34.995655, 35.372566, 45.011295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657082, 35.517570, 44.855270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043800, -0.682624, -0.729456,
		-0.530697, -0.634517, 0.561915,
		-0.846429, 0.362508, -0.390058,
		34.403152, 35.626324, 44.738255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757210, 34.814598, 44.771816>,  <34.995655, 35.372566, 45.011295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757210, 34.814598, 44.771816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557343, 35.097347, 44.571552>,  <34.437420, 35.266998, 44.451393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557343, 35.097347, 44.571552>,  <34.757210, 34.814598, 44.771816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557343, 35.097347, 44.571552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053690, -0.551596, -0.832381,
		-0.864549, -0.442798, 0.237665,
		-0.499672, 0.706875, -0.500656,
		34.407440, 35.309410, 44.421356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361851, 34.479488, 44.312248>,  <34.757210, 34.814598, 44.771816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361851, 34.479488, 44.312248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351082, 34.842442, 44.144474>,  <34.344620, 35.060215, 44.043808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351082, 34.842442, 44.144474>,  <34.361851, 34.479488, 44.312248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351082, 34.842442, 44.144474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129577, -0.412884, -0.901519,
		-0.991204, -0.078619, -0.106461,
		-0.026921, 0.907384, -0.419439,
		34.343006, 35.114658, 44.018642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884743, 34.425629, 43.752533>,  <34.361851, 34.479488, 44.312248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884743, 34.425629, 43.752533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106358, 34.750370, 43.678852>,  <34.239326, 34.945217, 43.634644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106358, 34.750370, 43.678852>,  <33.884743, 34.425629, 43.752533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106358, 34.750370, 43.678852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295921, -0.398878, -0.867944,
		-0.778122, 0.426362, -0.461238,
		0.554037, 0.811857, -0.184206,
		34.272568, 34.993927, 43.623589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777855, 34.647564, 43.066341>,  <33.884743, 34.425629, 43.752533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777855, 34.647564, 43.066341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119888, 34.843296, 43.134914>,  <34.325108, 34.960735, 43.176060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119888, 34.843296, 43.134914>,  <33.777855, 34.647564, 43.066341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119888, 34.843296, 43.134914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356821, -0.315470, -0.879294,
		-0.376182, 0.813040, -0.444356,
		0.855082, 0.489331, 0.171436,
		34.376411, 34.990097, 43.186344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998528, 34.984516, 42.394371>,  <33.777855, 34.647564, 43.066341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998528, 34.984516, 42.394371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323185, 34.983231, 42.628029>,  <34.517979, 34.982460, 42.768223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323185, 34.983231, 42.628029>,  <33.998528, 34.984516, 42.394371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323185, 34.983231, 42.628029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560343, -0.278309, -0.780102,
		0.165080, 0.960486, -0.224087,
		0.811643, -0.003214, 0.584145,
		34.566677, 34.982265, 42.803272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512787, 35.449696, 42.141941>,  <33.998528, 34.984516, 42.394371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512787, 35.449696, 42.141941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691601, 35.173759, 42.369724>,  <34.798889, 35.008198, 42.506393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691601, 35.173759, 42.369724>,  <34.512787, 35.449696, 42.141941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691601, 35.173759, 42.369724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752965, -0.053485, -0.655883,
		0.482909, 0.721987, 0.495513,
		0.447037, -0.689836, 0.569460,
		34.825710, 34.966808, 42.540562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257587, 35.620518, 42.174969>,  <34.512787, 35.449696, 42.141941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257587, 35.620518, 42.174969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202892, 35.230675, 42.245899>,  <35.170074, 34.996769, 42.288456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202892, 35.230675, 42.245899>,  <35.257587, 35.620518, 42.174969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202892, 35.230675, 42.245899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745379, -0.219125, -0.629599,
		0.652468, 0.046086, 0.756414,
		-0.136734, -0.974608, 0.177324,
		35.161873, 34.938293, 42.299095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977722, 35.335926, 42.095520>,  <35.257587, 35.620518, 42.174969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977722, 35.335926, 42.095520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715012, 35.035629, 42.067181>,  <35.557384, 34.855450, 42.050179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715012, 35.035629, 42.067181>,  <35.977722, 35.335926, 42.095520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715012, 35.035629, 42.067181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625509, -0.489913, -0.607226,
		0.421163, -0.443130, 0.791364,
		-0.656780, -0.750747, -0.070849,
		35.517979, 34.810406, 42.045925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411404, 34.854229, 41.922108>,  <35.977722, 35.335926, 42.095520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411404, 34.854229, 41.922108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047173, 34.708424, 41.844154>,  <35.828636, 34.620941, 41.797382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047173, 34.708424, 41.844154>,  <36.411404, 34.854229, 41.922108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047173, 34.708424, 41.844154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393821, -0.621906, -0.676859,
		0.125524, -0.693082, 0.709846,
		-0.910576, -0.364514, -0.194886,
		35.773998, 34.599068, 41.785690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455803, 34.129433, 41.963314>,  <36.411404, 34.854229, 41.922108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455803, 34.129433, 41.963314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138687, 34.203522, 41.731049>,  <35.948418, 34.247974, 41.591690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138687, 34.203522, 41.731049>,  <36.455803, 34.129433, 41.963314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138687, 34.203522, 41.731049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366252, -0.616733, -0.696778,
		-0.487173, -0.765071, 0.421105,
		-0.792794, 0.185221, -0.580664,
		35.900848, 34.259087, 41.556850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325363, 33.504208, 41.585121>,  <36.455803, 34.129433, 41.963314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325363, 33.504208, 41.585121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123337, 33.772095, 41.367355>,  <36.002121, 33.932827, 41.236694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123337, 33.772095, 41.367355>,  <36.325363, 33.504208, 41.585121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123337, 33.772095, 41.367355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244560, -0.493876, -0.834432,
		-0.827709, -0.554583, 0.085652,
		-0.505063, 0.669720, -0.544415,
		35.971817, 33.973011, 41.204033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836060, 33.141090, 41.219746>,  <36.325363, 33.504208, 41.585121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836060, 33.141090, 41.219746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863861, 33.469429, 40.992985>,  <35.880543, 33.666431, 40.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863861, 33.469429, 40.992985>,  <35.836060, 33.141090, 41.219746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863861, 33.469429, 40.992985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225932, -0.566466, -0.792509,
		-0.971661, -0.073002, -0.224825,
		0.069501, 0.820845, -0.566907,
		35.884712, 33.715683, 40.822914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316235, 33.016624, 40.574383>,  <35.836060, 33.141090, 41.219746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316235, 33.016624, 40.574383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587276, 33.295029, 40.479362>,  <35.749901, 33.462070, 40.422352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587276, 33.295029, 40.479362>,  <35.316235, 33.016624, 40.574383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587276, 33.295029, 40.479362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102105, -0.408911, -0.906844,
		-0.728306, 0.590225, -0.348145,
		0.677602, 0.696007, -0.237547,
		35.790558, 33.503830, 40.408100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138012, 33.208317, 39.919495>,  <35.316235, 33.016624, 40.574383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138012, 33.208317, 39.919495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520451, 33.321419, 39.950298>,  <35.749912, 33.389278, 39.968781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520451, 33.321419, 39.950298>,  <35.138012, 33.208317, 39.919495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520451, 33.321419, 39.950298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174481, -0.338124, -0.924785,
		-0.235449, 0.897620, -0.372615,
		0.956096, 0.282754, 0.077007,
		35.807278, 33.406246, 39.973400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279411, 33.374977, 39.200272>,  <35.138012, 33.208317, 39.919495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279411, 33.374977, 39.200272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645969, 33.388302, 39.359825>,  <35.865906, 33.396297, 39.455555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645969, 33.388302, 39.359825>,  <35.279411, 33.374977, 39.200272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645969, 33.388302, 39.359825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385795, -0.339065, -0.858019,
		0.106663, 0.940173, -0.323571,
		0.916398, 0.033313, 0.398879,
		35.920887, 33.398296, 39.479488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748936, 33.830429, 38.716702>,  <35.279411, 33.374977, 39.200272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748936, 33.830429, 38.716702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978703, 33.598587, 38.947910>,  <36.116562, 33.459484, 39.086636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978703, 33.598587, 38.947910>,  <35.748936, 33.830429, 38.716702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978703, 33.598587, 38.947910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566035, -0.228853, -0.791979,
		0.591315, 0.782104, 0.196619,
		0.574413, -0.579603, 0.578023,
		36.151028, 33.424706, 39.121319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500805, 33.958160, 38.395947>,  <35.748936, 33.830429, 38.716702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500805, 33.958160, 38.395947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475163, 33.612259, 38.595181>,  <36.459778, 33.404716, 38.714722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475163, 33.612259, 38.595181>,  <36.500805, 33.958160, 38.395947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475163, 33.612259, 38.595181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340690, -0.488090, -0.803554,
		0.937987, 0.118176, 0.325906,
		-0.064110, -0.864756, 0.498083,
		36.455929, 33.352833, 38.744606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139442, 33.703079, 38.348091>,  <36.500805, 33.958160, 38.395947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139442, 33.703079, 38.348091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861328, 33.421047, 38.403858>,  <36.694458, 33.251827, 38.437321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861328, 33.421047, 38.403858>,  <37.139442, 33.703079, 38.348091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861328, 33.421047, 38.403858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391794, -0.534443, -0.748911,
		0.602554, -0.466085, 0.647838,
		-0.695289, -0.705078, 0.139422,
		36.652740, 33.209522, 38.445686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715984, 33.259686, 38.617886>,  <37.139442, 33.703079, 38.348091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715984, 33.259686, 38.617886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085121, 33.267193, 38.771778>,  <38.306602, 33.271698, 38.864113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085121, 33.267193, 38.771778>,  <37.715984, 33.259686, 38.617886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085121, 33.267193, 38.771778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288845, 0.694503, 0.658965,
		-0.254829, -0.719245, 0.646335,
		0.922839, 0.018767, 0.384730,
		38.361973, 33.272823, 38.887196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747726, 33.089798, 39.297112>,  <37.715984, 33.259686, 38.617886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747726, 33.089798, 39.297112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076790, 33.312622, 39.251648>,  <38.274227, 33.446316, 39.224369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076790, 33.312622, 39.251648>,  <37.747726, 33.089798, 39.297112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076790, 33.312622, 39.251648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250131, 0.534153, 0.807537,
		0.510554, -0.635900, 0.578763,
		0.822660, 0.557057, -0.113656,
		38.323586, 33.479740, 39.217548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124477, 33.000404, 39.881943>,  <37.747726, 33.089798, 39.297112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124477, 33.000404, 39.881943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241272, 33.359570, 39.750191>,  <38.311348, 33.575069, 39.671139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241272, 33.359570, 39.750191>,  <38.124477, 33.000404, 39.881943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241272, 33.359570, 39.750191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121367, 0.376387, 0.918479,
		0.948691, -0.228206, 0.218877,
		0.291985, 0.897917, -0.329378,
		38.328869, 33.628944, 39.651379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067802, 33.312805, 40.468250>,  <38.124477, 33.000404, 39.881943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067802, 33.312805, 40.468250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169769, 33.623657, 40.238091>,  <38.230949, 33.810169, 40.099995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169769, 33.623657, 40.238091>,  <38.067802, 33.312805, 40.468250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169769, 33.623657, 40.238091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017970, 0.591147, 0.806364,
		0.966797, -0.215894, 0.136727,
		0.254915, 0.777133, -0.575398,
		38.246243, 33.856796, 40.065472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439331, 33.633217, 40.885738>,  <38.067802, 33.312805, 40.468250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439331, 33.633217, 40.885738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334015, 33.916008, 40.623177>,  <38.270824, 34.085682, 40.465641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334015, 33.916008, 40.623177>,  <38.439331, 33.633217, 40.885738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334015, 33.916008, 40.623177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000833, 0.680576, 0.732677,
		0.964715, 0.192362, -0.179780,
		-0.263294, 0.706974, -0.656402,
		38.255028, 34.128101, 40.426254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814156, 34.127254, 41.136002>,  <38.439331, 33.633217, 40.885738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814156, 34.127254, 41.136002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526672, 34.303703, 40.921017>,  <38.354183, 34.409573, 40.792027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526672, 34.303703, 40.921017>,  <38.814156, 34.127254, 41.136002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526672, 34.303703, 40.921017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125008, 0.678416, 0.723965,
		0.683980, 0.587509, -0.432441,
		-0.718711, 0.441119, -0.537466,
		38.311058, 34.436039, 40.759777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873798, 34.861973, 41.208160>,  <38.814156, 34.127254, 41.136002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873798, 34.861973, 41.208160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507374, 34.864441, 41.047760>,  <38.287521, 34.865921, 40.951519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507374, 34.864441, 41.047760>,  <38.873798, 34.861973, 41.208160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507374, 34.864441, 41.047760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235605, 0.800869, 0.550544,
		0.324546, 0.598807, -0.732188,
		-0.916057, 0.006170, -0.401000,
		38.232555, 34.866291, 40.927460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615475, 35.621910, 41.059177>,  <38.873798, 34.861973, 41.208160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615475, 35.621910, 41.059177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300762, 35.382236, 41.118431>,  <38.111935, 35.238430, 41.153984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.300762, 35.382236, 41.118431>,  <38.615475, 35.621910, 41.059177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300762, 35.382236, 41.118431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318328, 0.599538, 0.734317,
		-0.528808, 0.530592, -0.662445,
		-0.786784, -0.599188, 0.148138,
		38.064728, 35.202480, 41.162872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151100, 36.070137, 41.216640>,  <38.615475, 35.621910, 41.059177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151100, 36.070137, 41.216640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016510, 35.714111, 41.339645>,  <37.935757, 35.500496, 41.413448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016510, 35.714111, 41.339645>,  <38.151100, 36.070137, 41.216640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016510, 35.714111, 41.339645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402527, 0.431161, 0.807510,
		-0.851324, 0.147929, -0.503353,
		-0.336480, -0.890066, 0.307512,
		37.915565, 35.447090, 41.431900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428261, 36.158840, 41.442123>,  <38.151100, 36.070137, 41.216640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428261, 36.158840, 41.442123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560936, 35.836155, 41.637756>,  <37.640541, 35.642544, 41.755135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560936, 35.836155, 41.637756>,  <37.428261, 36.158840, 41.442123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560936, 35.836155, 41.637756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455394, 0.317107, 0.831901,
		-0.826194, -0.498658, -0.262189,
		0.331693, -0.806711, 0.489078,
		37.660442, 35.594143, 41.784481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784336, 35.871223, 41.797523>,  <37.428261, 36.158840, 41.442123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784336, 35.871223, 41.797523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109180, 35.731102, 41.984184>,  <37.304089, 35.647030, 42.096180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109180, 35.731102, 41.984184>,  <36.784336, 35.871223, 41.797523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109180, 35.731102, 41.984184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364830, 0.319313, 0.874608,
		-0.455387, -0.880526, 0.131515,
		0.812109, -0.350304, 0.466653,
		37.352814, 35.626011, 42.124180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460812, 35.649509, 42.586056>,  <36.784336, 35.871223, 41.797523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460812, 35.649509, 42.586056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855705, 35.594120, 42.617561>,  <37.092640, 35.560886, 42.636463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855705, 35.594120, 42.617561>,  <36.460812, 35.649509, 42.586056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855705, 35.594120, 42.617561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024267, 0.357927, 0.933434,
		-0.157446, -0.923425, 0.349996,
		0.987229, -0.138472, 0.078763,
		37.151875, 35.552578, 42.641190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521408, 35.222950, 43.201172>,  <36.460812, 35.649509, 42.586056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521408, 35.222950, 43.201172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848389, 35.442318, 43.130722>,  <37.044575, 35.573936, 43.088451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.848389, 35.442318, 43.130722>,  <36.521408, 35.222950, 43.201172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848389, 35.442318, 43.130722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066245, 0.393248, 0.917043,
		0.572181, -0.737967, 0.357789,
		0.817448, 0.548416, -0.176122,
		37.093624, 35.606842, 43.077885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936810, 35.075008, 43.681934>,  <36.521408, 35.222950, 43.201172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936810, 35.075008, 43.681934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081314, 35.429794, 43.566845>,  <37.168018, 35.642666, 43.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081314, 35.429794, 43.566845>,  <36.936810, 35.075008, 43.681934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081314, 35.429794, 43.566845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071534, 0.281292, 0.956952,
		0.929716, -0.366293, 0.038172,
		0.361263, 0.886963, -0.287724,
		37.189693, 35.695885, 43.480526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566605, 35.186684, 44.075413>,  <36.936810, 35.075008, 43.681934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566605, 35.186684, 44.075413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442524, 35.544792, 43.947502>,  <37.368076, 35.759659, 43.870754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442524, 35.544792, 43.947502>,  <37.566605, 35.186684, 44.075413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442524, 35.544792, 43.947502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016601, 0.331219, 0.943408,
		0.950525, 0.297958, -0.087883,
		-0.310205, 0.895273, -0.319779,
		37.349464, 35.813374, 43.851570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968391, 35.684223, 44.398228>,  <37.566605, 35.186684, 44.075413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968391, 35.684223, 44.398228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650120, 35.899071, 44.286228>,  <37.459156, 36.027981, 44.219028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650120, 35.899071, 44.286228>,  <37.968391, 35.684223, 44.398228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650120, 35.899071, 44.286228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095339, 0.345446, 0.933583,
		0.598170, 0.769526, -0.223655,
		-0.795677, 0.537119, -0.280001,
		37.411415, 36.060207, 44.202229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152489, 36.368740, 44.591221>,  <37.968391, 35.684223, 44.398228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152489, 36.368740, 44.591221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754696, 36.357464, 44.550797>,  <37.516022, 36.350697, 44.526543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754696, 36.357464, 44.550797>,  <38.152489, 36.368740, 44.591221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754696, 36.357464, 44.550797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099423, 0.560972, 0.821843,
		0.033522, 0.827355, -0.560679,
		-0.994480, -0.028194, -0.101063,
		37.456352, 36.349007, 44.520477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920673, 36.986309, 44.849148>,  <38.152489, 36.368740, 44.591221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920673, 36.986309, 44.849148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585621, 36.767860, 44.853683>,  <37.384590, 36.636791, 44.856403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585621, 36.767860, 44.853683>,  <37.920673, 36.986309, 44.849148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585621, 36.767860, 44.853683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252175, 0.405029, 0.878840,
		-0.484541, 0.733285, -0.476982,
		-0.837632, -0.546117, 0.011338,
		37.334332, 36.604027, 44.857086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290913, 37.378971, 44.916473>,  <37.920673, 36.986309, 44.849148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290913, 37.378971, 44.916473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176682, 37.015739, 45.039001>,  <37.108143, 36.797798, 45.112518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176682, 37.015739, 45.039001>,  <37.290913, 37.378971, 44.916473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176682, 37.015739, 45.039001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488487, 0.412920, 0.768686,
		-0.824515, 0.069886, -0.561507,
		-0.285577, -0.908082, 0.306320,
		37.091007, 36.743317, 45.130898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623032, 37.401745, 44.967209>,  <37.290913, 37.378971, 44.916473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623032, 37.401745, 44.967209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700703, 37.088257, 45.203201>,  <36.747303, 36.900166, 45.344795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700703, 37.088257, 45.203201>,  <36.623032, 37.401745, 44.967209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700703, 37.088257, 45.203201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628233, 0.362561, 0.688384,
		-0.753405, -0.504313, -0.421959,
		0.194176, -0.783721, 0.589981,
		36.758957, 36.853142, 45.380196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946320, 37.061695, 45.205162>,  <36.623032, 37.401745, 44.967209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946320, 37.061695, 45.205162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246548, 36.976902, 45.455509>,  <36.426685, 36.926025, 45.605717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246548, 36.976902, 45.455509>,  <35.946320, 37.061695, 45.205162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246548, 36.976902, 45.455509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549268, 0.326405, 0.769263,
		-0.367353, -0.921154, 0.128556,
		0.750571, -0.211979, 0.625866,
		36.471718, 36.913307, 45.643269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666229, 36.632389, 45.832752>,  <35.946320, 37.061695, 45.205162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666229, 36.632389, 45.832752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004158, 36.827232, 45.921295>,  <36.206917, 36.944138, 45.974422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004158, 36.827232, 45.921295>,  <35.666229, 36.632389, 45.832752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004158, 36.827232, 45.921295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479868, 0.506823, 0.716140,
		0.236646, -0.711236, 0.661923,
		0.844823, 0.487108, 0.221362,
		36.257607, 36.973366, 45.987705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704037, 36.608761, 46.557117>,  <35.666229, 36.632389, 45.832752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704037, 36.608761, 46.557117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967510, 36.893791, 46.460484>,  <36.125595, 37.064812, 46.402504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967510, 36.893791, 46.460484>,  <35.704037, 36.608761, 46.557117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967510, 36.893791, 46.460484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391474, 0.598761, 0.698738,
		0.642559, -0.365673, 0.673351,
		0.658685, 0.712579, -0.241588,
		36.165115, 37.107563, 46.388008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972336, 36.892906, 47.197842>,  <35.704037, 36.608761, 46.557117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972336, 36.892906, 47.197842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054905, 37.175148, 46.926689>,  <36.104446, 37.344494, 46.764000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054905, 37.175148, 46.926689>,  <35.972336, 36.892906, 47.197842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054905, 37.175148, 46.926689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220304, 0.708524, 0.670417,
		0.953340, 0.010951, 0.301701,
		0.206420, 0.705602, -0.677877,
		36.116833, 37.386829, 46.723328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458263, 37.450310, 47.419365>,  <35.972336, 36.892906, 47.197842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458263, 37.450310, 47.419365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265537, 37.643639, 47.126995>,  <36.149902, 37.759636, 46.951572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.265537, 37.643639, 47.126995>,  <36.458263, 37.450310, 47.419365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265537, 37.643639, 47.126995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045306, 0.819275, 0.571608,
		0.875101, 0.308525, -0.372842,
		-0.481815, 0.483322, -0.730926,
		36.120991, 37.788635, 46.907719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738132, 38.110462, 47.409119>,  <36.458263, 37.450310, 47.419365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738132, 38.110462, 47.409119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373341, 38.137859, 47.247326>,  <36.154465, 38.154297, 47.150249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373341, 38.137859, 47.247326>,  <36.738132, 38.110462, 47.409119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373341, 38.137859, 47.247326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196623, 0.792368, 0.577488,
		0.360051, 0.606186, -0.709155,
		-0.911977, 0.068489, -0.404483,
		36.099747, 38.158405, 47.125980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760796, 38.886860, 47.080215>,  <36.738132, 38.110462, 47.409119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760796, 38.886860, 47.080215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390923, 38.738567, 47.114902>,  <36.168999, 38.649590, 47.135715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390923, 38.738567, 47.114902>,  <36.760796, 38.886860, 47.080215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390923, 38.738567, 47.114902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299235, 0.848456, 0.436557,
		-0.235421, 0.377728, -0.895488,
		-0.924681, -0.370735, 0.086715,
		36.113518, 38.627346, 47.140919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351204, 39.433380, 46.861351>,  <36.760796, 38.886860, 47.080215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351204, 39.433380, 46.861351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084545, 39.216141, 47.065559>,  <35.924549, 39.085796, 47.188084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084545, 39.216141, 47.065559>,  <36.351204, 39.433380, 46.861351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084545, 39.216141, 47.065559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343882, 0.831763, 0.435792,
		-0.661312, 0.114958, -0.741250,
		-0.666642, -0.543097, 0.510523,
		35.884552, 39.053211, 47.218716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713516, 39.749565, 46.794308>,  <36.351204, 39.433380, 46.861351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713516, 39.749565, 46.794308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694672, 39.523235, 47.123581>,  <35.683365, 39.387440, 47.321144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694672, 39.523235, 47.123581>,  <35.713516, 39.749565, 46.794308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694672, 39.523235, 47.123581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625338, 0.659334, 0.417410,
		-0.778931, -0.495099, -0.384894,
		-0.047115, -0.565822, 0.823180,
		35.680538, 39.353489, 47.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989933, 39.652260, 46.971848>,  <35.713516, 39.749565, 46.794308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989933, 39.652260, 46.971848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204975, 39.606453, 47.306000>,  <35.334000, 39.578968, 47.506493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204975, 39.606453, 47.306000>,  <34.989933, 39.652260, 46.971848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204975, 39.606453, 47.306000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527809, 0.726920, 0.439323,
		-0.657567, -0.677106, 0.330354,
		0.537609, -0.114520, 0.835381,
		35.366257, 39.572098, 47.556614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512806, 39.736389, 47.427223>,  <34.989933, 39.652260, 46.971848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512806, 39.736389, 47.427223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836861, 39.776592, 47.658249>,  <35.031292, 39.800713, 47.796864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836861, 39.776592, 47.658249>,  <34.512806, 39.736389, 47.427223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836861, 39.776592, 47.658249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536605, 0.523877, 0.661520,
		-0.236084, -0.845844, 0.478344,
		0.810135, 0.100507, 0.577563,
		35.079903, 39.806744, 47.831516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314365, 39.607815, 48.085228>,  <34.512806, 39.736389, 47.427223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314365, 39.607815, 48.085228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644142, 39.832752, 48.110718>,  <34.842007, 39.967716, 48.126011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644142, 39.832752, 48.110718>,  <34.314365, 39.607815, 48.085228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644142, 39.832752, 48.110718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430207, 0.549555, 0.716178,
		0.367718, -0.617864, 0.695002,
		0.824442, 0.562347, 0.063728,
		34.891476, 40.001457, 48.129837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146057, 39.842445, 48.724926>,  <34.314365, 39.607815, 48.085228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146057, 39.842445, 48.724926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453941, 40.070602, 48.610245>,  <34.638672, 40.207497, 48.541435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453941, 40.070602, 48.610245>,  <34.146057, 39.842445, 48.724926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453941, 40.070602, 48.610245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319680, 0.733123, 0.600280,
		0.552583, -0.370389, 0.746635,
		0.769712, 0.570388, -0.286706,
		34.684856, 40.241718, 48.524235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395870, 40.195026, 49.367897>,  <34.146057, 39.842445, 48.724926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395870, 40.195026, 49.367897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482250, 40.401897, 49.036621>,  <34.534077, 40.526020, 48.837856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482250, 40.401897, 49.036621>,  <34.395870, 40.195026, 49.367897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482250, 40.401897, 49.036621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256540, 0.848455, 0.462937,
		0.942100, 0.112493, 0.315899,
		0.215949, 0.517174, -0.828189,
		34.547035, 40.557049, 48.788166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700996, 40.906982, 49.634750>,  <34.395870, 40.195026, 49.367897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700996, 40.906982, 49.634750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577156, 40.978085, 49.261108>,  <34.502853, 41.020744, 49.036922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577156, 40.978085, 49.261108>,  <34.700996, 40.906982, 49.634750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577156, 40.978085, 49.261108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386596, 0.873984, 0.294442,
		0.868731, 0.452280, -0.201864,
		-0.309596, 0.177751, -0.934106,
		34.484276, 41.031410, 48.980877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801468, 41.595074, 49.548206>,  <34.700996, 40.906982, 49.634750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801468, 41.595074, 49.548206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567913, 41.517323, 49.232918>,  <34.427780, 41.470673, 49.043743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567913, 41.517323, 49.232918>,  <34.801468, 41.595074, 49.548206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567913, 41.517323, 49.232918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462866, 0.877354, 0.126509,
		0.666960, 0.438708, -0.602246,
		-0.583884, -0.194383, -0.788223,
		34.392750, 41.459007, 48.996452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653984, 42.242878, 49.256813>,  <34.801468, 41.595074, 49.548206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653984, 42.242878, 49.256813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372093, 42.030827, 49.068211>,  <34.202957, 41.903595, 48.955048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372093, 42.030827, 49.068211>,  <34.653984, 42.242878, 49.256813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372093, 42.030827, 49.068211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570698, 0.818408, -0.067166,
		0.421493, 0.221755, -0.879300,
		-0.704732, -0.530125, -0.471509,
		34.160675, 41.871788, 48.926758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497879, 42.877941, 49.584621>,  <34.653984, 42.242878, 49.256813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497879, 42.877941, 49.584621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698479, 43.223076, 49.559299>,  <34.818836, 43.430157, 49.544106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698479, 43.223076, 49.559299>,  <34.497879, 42.877941, 49.584621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698479, 43.223076, 49.559299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548357, -0.373604, -0.748148,
		-0.669184, 0.340479, -0.660505,
		0.501496, 0.862841, -0.063306,
		34.848927, 43.481930, 49.540306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496964, 43.168743, 48.947578>,  <34.497879, 42.877941, 49.584621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496964, 43.168743, 48.947578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822430, 43.357853, 49.082890>,  <35.017712, 43.471317, 49.164074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822430, 43.357853, 49.082890>,  <34.496964, 43.168743, 48.947578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822430, 43.357853, 49.082890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517808, -0.324931, -0.791388,
		-0.264231, 0.819089, -0.509191,
		0.813669, 0.472773, 0.338274,
		35.066532, 43.499683, 49.184372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936275, 43.321743, 48.336292>,  <34.496964, 43.168743, 48.947578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936275, 43.321743, 48.336292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214172, 43.396595, 48.614086>,  <35.380909, 43.441505, 48.780762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214172, 43.396595, 48.614086>,  <34.936275, 43.321743, 48.336292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214172, 43.396595, 48.614086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710729, -0.326876, -0.622910,
		0.110444, 0.926355, -0.360096,
		0.694742, 0.187134, 0.694488,
		35.422596, 43.452736, 48.822433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462093, 43.643852, 48.018784>,  <34.936275, 43.321743, 48.336292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462093, 43.643852, 48.018784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601879, 43.453205, 48.341450>,  <35.685749, 43.338818, 48.535049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601879, 43.453205, 48.341450>,  <35.462093, 43.643852, 48.018784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601879, 43.453205, 48.341450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696580, -0.443626, -0.563890,
		0.626618, 0.758967, 0.176971,
		0.349466, -0.476618, 0.806665,
		35.706718, 43.310219, 48.583450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119774, 43.720963, 47.922298>,  <35.462093, 43.643852, 48.018784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119774, 43.720963, 47.922298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103165, 43.412971, 48.176987>,  <36.093201, 43.228176, 48.329800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103165, 43.412971, 48.176987>,  <36.119774, 43.720963, 47.922298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103165, 43.412971, 48.176987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770232, -0.430582, -0.470471,
		0.636411, 0.470889, 0.610937,
		-0.041519, -0.769976, 0.636721,
		36.090710, 43.181980, 48.368004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817188, 43.625790, 48.180817>,  <36.119774, 43.720963, 47.922298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817188, 43.625790, 48.180817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603310, 43.290615, 48.224575>,  <36.474983, 43.089512, 48.250828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603310, 43.290615, 48.224575>,  <36.817188, 43.625790, 48.180817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603310, 43.290615, 48.224575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715334, -0.517731, -0.469310,
		0.449887, -0.172686, 0.876232,
		-0.534695, -0.837935, 0.109392,
		36.442902, 43.039234, 48.257393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234100, 43.202789, 48.420734>,  <36.817188, 43.625790, 48.180817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234100, 43.202789, 48.420734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956406, 42.965389, 48.257862>,  <36.789787, 42.822948, 48.160141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956406, 42.965389, 48.257862>,  <37.234100, 43.202789, 48.420734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956406, 42.965389, 48.257862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718345, -0.536044, -0.443438,
		0.044916, -0.600344, 0.798479,
		-0.694236, -0.593501, -0.407177,
		36.748135, 42.787338, 48.135708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531403, 42.522198, 48.402496>,  <37.234100, 43.202789, 48.420734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531403, 42.522198, 48.402496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224609, 42.468781, 48.151451>,  <37.040531, 42.436729, 48.000824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224609, 42.468781, 48.151451>,  <37.531403, 42.522198, 48.402496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224609, 42.468781, 48.151451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497606, -0.741322, -0.450366,
		-0.405120, -0.657729, 0.635036,
		-0.766985, -0.133546, -0.627614,
		36.994514, 42.428719, 47.963165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480667, 41.790169, 48.321842>,  <37.531403, 42.522198, 48.402496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480667, 41.790169, 48.321842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307823, 41.959541, 48.003349>,  <37.204117, 42.061165, 47.812252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307823, 41.959541, 48.003349>,  <37.480667, 41.790169, 48.321842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307823, 41.959541, 48.003349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556297, -0.569772, -0.604891,
		-0.709802, -0.704320, 0.010648,
		-0.432105, 0.423430, -0.796237,
		37.178192, 42.086571, 47.764477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362953, 41.300411, 47.905716>,  <37.480667, 41.790169, 48.321842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362953, 41.300411, 47.905716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300274, 41.578079, 47.624695>,  <37.262665, 41.744678, 47.456081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300274, 41.578079, 47.624695>,  <37.362953, 41.300411, 47.905716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300274, 41.578079, 47.624695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334800, -0.631883, -0.699023,
		-0.929168, -0.344751, -0.133391,
		-0.156701, 0.694169, -0.702548,
		37.253265, 41.786331, 47.413929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979179, 40.979347, 47.316269>,  <37.362953, 41.300411, 47.905716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979179, 40.979347, 47.316269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150368, 41.298386, 47.146248>,  <37.253082, 41.489811, 47.044235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150368, 41.298386, 47.146248>,  <36.979179, 40.979347, 47.316269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150368, 41.298386, 47.146248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352998, -0.580465, -0.733793,
		-0.832003, 0.164002, -0.529976,
		0.427976, 0.797599, -0.425056,
		37.278759, 41.537666, 47.018730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759212, 40.905228, 46.728367>,  <36.979179, 40.979347, 47.316269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759212, 40.905228, 46.728367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063782, 41.158955, 46.674896>,  <37.246525, 41.311192, 46.642815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063782, 41.158955, 46.674896>,  <36.759212, 40.905228, 46.728367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063782, 41.158955, 46.674896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198743, -0.424701, -0.883250,
		-0.617034, 0.645963, -0.449445,
		0.761426, 0.634319, -0.133674,
		37.292210, 41.349251, 46.634792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617374, 41.107475, 46.103252>,  <36.759212, 40.905228, 46.728367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617374, 41.107475, 46.103252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010605, 41.153263, 46.160465>,  <37.246544, 41.180737, 46.194794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010605, 41.153263, 46.160465>,  <36.617374, 41.107475, 46.103252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010605, 41.153263, 46.160465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183188, -0.605619, -0.774382,
		-0.002024, 0.787478, -0.616339,
		0.983076, 0.114473, 0.143031,
		37.305527, 41.187607, 46.203373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816525, 41.247509, 45.537010>,  <36.617374, 41.107475, 46.103252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816525, 41.247509, 45.537010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163441, 41.148876, 45.709988>,  <37.371590, 41.089699, 45.813774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163441, 41.148876, 45.709988>,  <36.816525, 41.247509, 45.537010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163441, 41.148876, 45.709988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279088, -0.478487, -0.832562,
		0.412211, 0.842762, -0.346170,
		0.867290, -0.246579, 0.432443,
		37.423626, 41.074902, 45.839722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323116, 41.457672, 45.154404>,  <36.816525, 41.247509, 45.537010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323116, 41.457672, 45.154404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475155, 41.138248, 45.341091>,  <37.566380, 40.946594, 45.453102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475155, 41.138248, 45.341091>,  <37.323116, 41.457672, 45.154404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475155, 41.138248, 45.341091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128419, -0.454138, -0.881628,
		0.915988, 0.395040, -0.070066,
		0.380098, -0.798563, 0.466716,
		37.589184, 40.898678, 45.481106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927235, 41.203362, 44.727329>,  <37.323116, 41.457672, 45.154404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927235, 41.203362, 44.727329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851788, 40.886158, 44.959038>,  <37.806519, 40.695835, 45.098064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851788, 40.886158, 44.959038>,  <37.927235, 41.203362, 44.727329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851788, 40.886158, 44.959038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130139, -0.604839, -0.785642,
		0.973390, -0.072797, 0.217283,
		-0.188614, -0.793014, 0.579271,
		37.795204, 40.648254, 45.132820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577118, 40.776508, 44.694286>,  <37.927235, 41.203362, 44.727329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577118, 40.776508, 44.694286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309895, 40.517334, 44.840645>,  <38.149559, 40.361832, 44.928459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309895, 40.517334, 44.840645>,  <38.577118, 40.776508, 44.694286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309895, 40.517334, 44.840645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311915, -0.690282, -0.652856,
		0.675580, -0.322015, 0.663248,
		-0.668057, -0.647933, 0.365899,
		38.109478, 40.322952, 44.950413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967365, 40.172871, 44.856728>,  <38.577118, 40.776508, 44.694286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967365, 40.172871, 44.856728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586014, 40.058578, 44.817890>,  <38.357204, 39.990002, 44.794590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586014, 40.058578, 44.817890>,  <38.967365, 40.172871, 44.856728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586014, 40.058578, 44.817890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289135, -0.772745, -0.565037,
		0.086422, -0.566766, 0.819333,
		-0.953379, -0.285730, -0.097090,
		38.299999, 39.972858, 44.788765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995499, 39.496010, 44.965965>,  <38.967365, 40.172871, 44.856728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995499, 39.496010, 44.965965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656517, 39.535152, 44.757256>,  <38.453129, 39.558640, 44.632030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656517, 39.535152, 44.757256>,  <38.995499, 39.496010, 44.965965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656517, 39.535152, 44.757256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258093, -0.782945, -0.566026,
		-0.463916, -0.614346, 0.638249,
		-0.847449, 0.097861, -0.521778,
		38.402283, 39.564510, 44.600723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847244, 38.848618, 44.917599>,  <38.995499, 39.496010, 44.965965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847244, 38.848618, 44.917599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605736, 38.998981, 44.636414>,  <38.460831, 39.089199, 44.467705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605736, 38.998981, 44.636414>,  <38.847244, 38.848618, 44.917599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605736, 38.998981, 44.636414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219408, -0.769409, -0.599892,
		-0.766390, -0.516419, 0.382044,
		-0.603744, 0.375927, -0.702974,
		38.424606, 39.111755, 44.425526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493019, 38.253159, 44.662785>,  <38.847244, 38.848618, 44.917599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493019, 38.253159, 44.662785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424526, 38.542194, 44.394890>,  <38.383430, 38.715614, 44.234154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424526, 38.542194, 44.394890>,  <38.493019, 38.253159, 44.662785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424526, 38.542194, 44.394890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041580, -0.673870, -0.737679,
		-0.984353, -0.154160, 0.085341,
		-0.171230, 0.722588, -0.669736,
		38.373158, 38.758972, 44.193970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928776, 37.993080, 44.260334>,  <38.493019, 38.253159, 44.662785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928776, 37.993080, 44.260334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143284, 38.235714, 44.025570>,  <38.271988, 38.381294, 43.884712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143284, 38.235714, 44.025570>,  <37.928776, 37.993080, 44.260334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143284, 38.235714, 44.025570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003016, -0.693976, -0.719991,
		-0.844042, 0.387879, -0.370328,
		0.536269, 0.606586, -0.586915,
		38.304165, 38.417690, 43.849495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659298, 37.895061, 43.600060>,  <37.928776, 37.993080, 44.260334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659298, 37.895061, 43.600060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017593, 38.062557, 43.540314>,  <38.232571, 38.163055, 43.504467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017593, 38.062557, 43.540314>,  <37.659298, 37.895061, 43.600060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017593, 38.062557, 43.540314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235076, -0.731262, -0.640309,
		-0.377350, 0.538436, -0.753455,
		0.895738, 0.418739, -0.149369,
		38.286316, 38.188179, 43.495502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775089, 37.934689, 42.830757>,  <37.659298, 37.895061, 43.600060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775089, 37.934689, 42.830757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147964, 37.975292, 42.969734>,  <38.371689, 37.999657, 43.053120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147964, 37.975292, 42.969734>,  <37.775089, 37.934689, 42.830757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147964, 37.975292, 42.969734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324472, -0.659778, -0.677799,
		0.160429, 0.744573, -0.647977,
		0.932191, 0.101512, 0.347441,
		38.427620, 38.005745, 43.073967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195171, 37.868214, 42.304451>,  <37.775089, 37.934689, 42.830757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195171, 37.868214, 42.304451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469822, 37.797859, 42.586617>,  <38.634613, 37.755646, 42.755917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469822, 37.797859, 42.586617>,  <38.195171, 37.868214, 42.304451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469822, 37.797859, 42.586617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548902, -0.510807, -0.661651,
		0.476706, 0.841510, -0.254190,
		0.686628, -0.175888, 0.705411,
		38.675812, 37.745094, 42.798241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939892, 38.063046, 42.051464>,  <38.195171, 37.868214, 42.304451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939892, 38.063046, 42.051464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982918, 37.803310, 42.352608>,  <39.008732, 37.647469, 42.533295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982918, 37.803310, 42.352608>,  <38.939892, 38.063046, 42.051464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982918, 37.803310, 42.352608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585866, -0.570404, -0.575673,
		0.803238, 0.502995, 0.319069,
		0.107562, -0.649334, 0.752858,
		39.015186, 37.608509, 42.578465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664646, 37.993946, 42.257614>,  <38.939892, 38.063046, 42.051464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664646, 37.993946, 42.257614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495911, 37.659779, 42.398540>,  <39.394669, 37.459278, 42.483097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495911, 37.659779, 42.398540>,  <39.664646, 37.993946, 42.257614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495911, 37.659779, 42.398540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635600, -0.549592, -0.542181,
		0.646581, -0.004776, 0.762830,
		-0.421835, -0.835419, 0.352321,
		39.369362, 37.409153, 42.504238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182560, 37.551510, 42.359711>,  <39.664646, 37.993946, 42.257614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182560, 37.551510, 42.359711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868206, 37.304340, 42.350292>,  <39.679592, 37.156040, 42.344639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868206, 37.304340, 42.350292>,  <40.182560, 37.551510, 42.359711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868206, 37.304340, 42.350292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501147, -0.614138, -0.609661,
		0.362260, -0.490926, 0.792313,
		-0.785888, -0.617921, -0.023549,
		39.632439, 37.118965, 42.343227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447227, 36.886467, 42.251034>,  <40.182560, 37.551510, 42.359711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447227, 36.886467, 42.251034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060120, 36.823368, 42.172501>,  <39.827854, 36.785511, 42.125381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060120, 36.823368, 42.172501>,  <40.447227, 36.886467, 42.251034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060120, 36.823368, 42.172501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251827, -0.594964, -0.763283,
		0.003592, -0.788121, 0.615510,
		-0.967766, -0.157743, -0.196333,
		39.769791, 36.776047, 42.113602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373215, 36.173950, 42.180901>,  <40.447227, 36.886467, 42.251034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373215, 36.173950, 42.180901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075272, 36.330700, 41.964893>,  <39.896507, 36.424751, 41.835289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075272, 36.330700, 41.964893>,  <40.373215, 36.173950, 42.180901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075272, 36.330700, 41.964893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268424, -0.564977, -0.780224,
		-0.610848, -0.726111, 0.315640,
		-0.744858, 0.391873, -0.540021,
		39.851814, 36.448261, 41.802887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138756, 35.636276, 41.748432>,  <40.373215, 36.173950, 42.180901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138756, 35.636276, 41.748432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999149, 35.968773, 41.575356>,  <39.915386, 36.168270, 41.471512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999149, 35.968773, 41.575356>,  <40.138756, 35.636276, 41.748432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999149, 35.968773, 41.575356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279479, -0.348381, -0.894719,
		-0.894471, -0.433199, -0.110725,
		-0.349017, 0.831245, -0.432687,
		39.894444, 36.218147, 41.445549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831738, 35.390755, 41.251915>,  <40.138756, 35.636276, 41.748432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831738, 35.390755, 41.251915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856308, 35.776215, 41.147911>,  <39.871052, 36.007492, 41.085510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856308, 35.776215, 41.147911>,  <39.831738, 35.390755, 41.251915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856308, 35.776215, 41.147911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225298, -0.267165, -0.936944,
		-0.972351, -0.001024, -0.233520,
		0.061429, 0.963650, -0.260009,
		39.874737, 36.065311, 41.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372303, 35.539940, 40.667641>,  <39.831738, 35.390755, 41.251915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372303, 35.539940, 40.667641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676342, 35.799232, 40.649593>,  <39.858765, 35.954807, 40.638763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676342, 35.799232, 40.649593>,  <39.372303, 35.539940, 40.667641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676342, 35.799232, 40.649593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146520, -0.238623, -0.959995,
		-0.633070, 0.723083, -0.276358,
		0.760102, 0.648236, -0.045119,
		39.904373, 35.993702, 40.636059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373589, 35.732128, 39.877140>,  <39.372303, 35.539940, 40.667641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373589, 35.732128, 39.877140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720169, 35.858562, 40.031719>,  <39.928120, 35.934422, 40.124466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720169, 35.858562, 40.031719>,  <39.373589, 35.732128, 39.877140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720169, 35.858562, 40.031719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412897, -0.018534, -0.910589,
		-0.280663, 0.948549, -0.146571,
		0.866455, 0.316087, 0.386451,
		39.980106, 35.953388, 40.147655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708790, 36.185463, 39.342171>,  <39.373589, 35.732128, 39.877140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708790, 36.185463, 39.342171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025551, 36.061600, 39.552692>,  <40.215607, 35.987282, 39.679005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025551, 36.061600, 39.552692>,  <39.708790, 36.185463, 39.342171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025551, 36.061600, 39.552692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506287, -0.148927, -0.849409,
		0.341407, 0.939113, 0.038840,
		0.791906, -0.309658, 0.526305,
		40.263123, 35.968704, 39.710583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226631, 36.633808, 39.134411>,  <39.708790, 36.185463, 39.342171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226631, 36.633808, 39.134411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366188, 36.287815, 39.278675>,  <40.449921, 36.080219, 39.365234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366188, 36.287815, 39.278675>,  <40.226631, 36.633808, 39.134411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366188, 36.287815, 39.278675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505077, -0.150620, -0.849830,
		0.789413, 0.478659, 0.384334,
		0.348890, -0.864985, 0.360661,
		40.470856, 36.028320, 39.386875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020348, 36.651825, 39.116291>,  <40.226631, 36.633808, 39.134411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020348, 36.651825, 39.116291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907284, 36.269073, 39.143063>,  <40.839447, 36.039421, 39.159126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907284, 36.269073, 39.143063>,  <41.020348, 36.651825, 39.116291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907284, 36.269073, 39.143063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631297, -0.238112, -0.738083,
		0.722196, -0.166372, 0.671382,
		-0.282661, -0.956882, 0.066934,
		40.822487, 35.982010, 39.163143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658558, 36.354660, 39.090336>,  <41.020348, 36.651825, 39.116291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658558, 36.354660, 39.090336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387829, 36.074451, 38.999840>,  <41.225391, 35.906326, 38.945541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387829, 36.074451, 38.999840>,  <41.658558, 36.354660, 39.090336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387829, 36.074451, 38.999840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562870, -0.294396, -0.772339,
		0.474436, -0.650078, 0.593556,
		-0.676822, -0.700521, -0.226237,
		41.184784, 35.864296, 38.931969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026920, 35.705360, 38.858837>,  <41.658558, 36.354660, 39.090336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026920, 35.705360, 38.858837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662197, 35.631386, 38.712196>,  <41.443363, 35.587002, 38.624210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662197, 35.631386, 38.712196>,  <42.026920, 35.705360, 38.858837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662197, 35.631386, 38.712196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408809, -0.325344, -0.852658,
		0.038417, -0.927334, 0.372257,
		-0.911811, -0.184939, -0.366605,
		41.388653, 35.575905, 38.602215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122551, 35.033916, 38.553486>,  <42.026920, 35.705360, 38.858837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122551, 35.033916, 38.553486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808926, 35.223038, 38.392639>,  <41.620750, 35.336510, 38.296131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808926, 35.223038, 38.392639>,  <42.122551, 35.033916, 38.553486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808926, 35.223038, 38.392639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373662, -0.157748, -0.914053,
		-0.495597, -0.866935, -0.052982,
		-0.784066, 0.472799, -0.402121,
		41.573704, 35.364876, 38.272003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005478, 34.586201, 37.916889>,  <42.122551, 35.033916, 38.553486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005478, 34.586201, 37.916889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812401, 34.930832, 37.854023>,  <41.696556, 35.137611, 37.816303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812401, 34.930832, 37.854023>,  <42.005478, 34.586201, 37.916889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812401, 34.930832, 37.854023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167187, -0.085510, -0.982210,
		-0.859686, -0.500379, -0.102770,
		-0.482689, 0.861574, -0.157169,
		41.667595, 35.189304, 37.806873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548309, 34.382576, 37.389854>,  <42.005478, 34.586201, 37.916889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548309, 34.382576, 37.389854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630581, 34.765850, 37.310276>,  <41.679943, 34.995815, 37.262527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630581, 34.765850, 37.310276>,  <41.548309, 34.382576, 37.389854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630581, 34.765850, 37.310276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029888, -0.197050, -0.979938,
		-0.978164, 0.207496, -0.011890,
		0.205676, 0.958184, -0.198949,
		41.692284, 35.053307, 37.250591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353451, 34.575054, 36.592407>,  <41.548309, 34.382576, 37.389854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353451, 34.575054, 36.592407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645020, 34.782364, 36.771320>,  <41.819962, 34.906750, 36.878670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.645020, 34.782364, 36.771320>,  <41.353451, 34.575054, 36.592407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645020, 34.782364, 36.771320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450846, 0.128262, -0.883338,
		-0.515185, 0.845539, -0.140171,
		0.728919, 0.518278, 0.447287,
		41.863693, 34.937847, 36.905506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472000, 35.119301, 36.078030>,  <41.353451, 34.575054, 36.592407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472000, 35.119301, 36.078030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749218, 34.995438, 36.338432>,  <41.915546, 34.921120, 36.494675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749218, 34.995438, 36.338432>,  <41.472000, 35.119301, 36.078030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749218, 34.995438, 36.338432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694504, 0.044676, -0.718101,
		0.193282, 0.949798, 0.246021,
		0.693042, -0.309658, 0.651003,
		41.957130, 34.902538, 36.533733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052540, 35.506790, 36.066490>,  <41.472000, 35.119301, 36.078030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052540, 35.506790, 36.066490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155350, 35.139755, 36.187805>,  <42.217037, 34.919537, 36.260593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155350, 35.139755, 36.187805>,  <42.052540, 35.506790, 36.066490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155350, 35.139755, 36.187805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836318, 0.053931, -0.545586,
		0.484263, 0.393870, 0.781253,
		0.257023, -0.917583, 0.303284,
		42.232456, 34.864479, 36.278790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748608, 35.539421, 36.342758>,  <42.052540, 35.506790, 36.066490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748608, 35.539421, 36.342758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672432, 35.167324, 36.217293>,  <42.626724, 34.944065, 36.142014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672432, 35.167324, 36.217293>,  <42.748608, 35.539421, 36.342758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672432, 35.167324, 36.217293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790514, 0.044135, -0.610852,
		0.582083, -0.364287, 0.726962,
		-0.190441, -0.930240, -0.313664,
		42.615299, 34.888252, 36.123192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279732, 35.308132, 35.794647>,  <42.748608, 35.539421, 36.342758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279732, 35.308132, 35.794647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058052, 34.975395, 35.806686>,  <42.925045, 34.775753, 35.813908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058052, 34.975395, 35.806686>,  <43.279732, 35.308132, 35.794647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058052, 34.975395, 35.806686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530469, -0.380818, -0.757351,
		0.641454, -0.403761, 0.652315,
		-0.554202, -0.831838, 0.030095,
		42.891792, 34.725845, 35.815716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695267, 34.749844, 35.817158>,  <43.279732, 35.308132, 35.794647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695267, 34.749844, 35.817158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369537, 34.614506, 35.628517>,  <43.174099, 34.533302, 35.515331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369537, 34.614506, 35.628517>,  <43.695267, 34.749844, 35.817158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369537, 34.614506, 35.628517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578278, -0.403241, -0.709219,
		0.049792, -0.850247, 0.524024,
		-0.814319, -0.338345, -0.471601,
		43.125240, 34.513004, 35.487038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301800, 34.811924, 35.332294>,  <43.695267, 34.749844, 35.817158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301800, 34.811924, 35.332294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577084, 34.818031, 35.042152>,  <44.742252, 34.821693, 34.868069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577084, 34.818031, 35.042152>,  <44.301800, 34.811924, 35.332294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577084, 34.818031, 35.042152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722295, 0.108494, -0.683022,
		0.068269, 0.993980, 0.085693,
		0.688208, 0.015266, -0.725353,
		44.783546, 34.822613, 34.824547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010338, 35.221973, 34.748775>,  <44.301800, 34.811924, 35.332294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010338, 35.221973, 34.748775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308735, 35.028065, 34.566135>,  <44.487774, 34.911720, 34.456551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308735, 35.028065, 34.566135>,  <44.010338, 35.221973, 34.748775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308735, 35.028065, 34.566135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579007, -0.133425, -0.804331,
		0.328999, 0.864401, -0.380223,
		0.745996, -0.484776, -0.456598,
		44.532536, 34.882633, 34.429157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167561, 35.484505, 34.124031>,  <44.010338, 35.221973, 34.748775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167561, 35.484505, 34.124031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315998, 35.117241, 34.068497>,  <44.405060, 34.896885, 34.035175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315998, 35.117241, 34.068497>,  <44.167561, 35.484505, 34.124031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315998, 35.117241, 34.068497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474313, -0.058882, -0.878385,
		0.798320, 0.391817, -0.457344,
		0.371096, -0.918157, -0.138838,
		44.427326, 34.841793, 34.026844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499454, 35.494789, 33.463833>,  <44.167561, 35.484505, 34.124031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499454, 35.494789, 33.463833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402229, 35.118065, 33.556709>,  <44.343895, 34.892029, 33.612434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402229, 35.118065, 33.556709>,  <44.499454, 35.494789, 33.463833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402229, 35.118065, 33.556709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335291, -0.143040, -0.931193,
		0.910220, -0.304188, -0.281013,
		-0.243061, -0.941812, 0.232189,
		44.329311, 34.835522, 33.626366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565151, 35.134285, 32.847557>,  <44.499454, 35.494789, 33.463833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565151, 35.134285, 32.847557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370659, 34.866039, 33.071648>,  <44.253963, 34.705090, 33.206104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370659, 34.866039, 33.071648>,  <44.565151, 35.134285, 32.847557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370659, 34.866039, 33.071648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467428, -0.342078, -0.815165,
		0.738305, -0.658222, -0.147137,
		-0.486227, -0.670616, 0.560229,
		44.224792, 34.664856, 33.239716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624897, 34.542362, 32.438988>,  <44.565151, 35.134285, 32.847557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624897, 34.542362, 32.438988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310802, 34.496632, 32.682411>,  <44.122345, 34.469193, 32.828465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310802, 34.496632, 32.682411>,  <44.624897, 34.542362, 32.438988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310802, 34.496632, 32.682411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615403, 0.035406, -0.787417,
		0.068483, -0.992811, -0.098164,
		-0.785232, -0.114335, 0.608554,
		44.075233, 34.462334, 32.864979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232590, 34.047810, 32.173679>,  <44.624897, 34.542362, 32.438988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232590, 34.047810, 32.173679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968914, 34.247288, 32.398811>,  <43.810711, 34.366974, 32.533890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968914, 34.247288, 32.398811>,  <44.232590, 34.047810, 32.173679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968914, 34.247288, 32.398811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641863, 0.016795, -0.766636,
		-0.391771, -0.866614, 0.309023,
		-0.659187, 0.498696, 0.562827,
		43.771156, 34.396896, 32.567661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529697, 33.815498, 31.943821>,  <44.232590, 34.047810, 32.173679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529697, 33.815498, 31.943821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477825, 34.163696, 32.133736>,  <43.446701, 34.372616, 32.247684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477825, 34.163696, 32.133736>,  <43.529697, 33.815498, 31.943821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477825, 34.163696, 32.133736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603005, 0.310874, -0.734671,
		-0.787126, -0.381575, 0.484597,
		-0.129684, 0.870493, 0.474788,
		43.438919, 34.424843, 32.276173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745579, 33.993454, 31.910196>,  <43.529697, 33.815498, 31.943821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745579, 33.993454, 31.910196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928616, 34.340252, 31.989120>,  <43.038437, 34.548328, 32.036476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.928616, 34.340252, 31.989120>,  <42.745579, 33.993454, 31.910196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928616, 34.340252, 31.989120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550386, 0.450472, -0.702958,
		-0.698343, 0.213071, 0.683314,
		0.457594, 0.866992, 0.197312,
		43.065895, 34.600349, 32.048313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186348, 34.399113, 31.612156>,  <42.745579, 33.993454, 31.910196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186348, 34.399113, 31.612156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493862, 34.642975, 31.689402>,  <42.678371, 34.789291, 31.735748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493862, 34.642975, 31.689402>,  <42.186348, 34.399113, 31.612156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493862, 34.642975, 31.689402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341986, 0.647090, -0.681410,
		-0.540386, 0.457815, 0.705966,
		0.768784, 0.609655, 0.193112,
		42.724499, 34.825871, 31.747335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851181, 35.068375, 31.717648>,  <42.186348, 34.399113, 31.612156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851181, 35.068375, 31.717648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233810, 35.089439, 31.602974>,  <42.463390, 35.102077, 31.534170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233810, 35.089439, 31.602974>,  <41.851181, 35.068375, 31.717648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233810, 35.089439, 31.602974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223033, 0.765477, -0.603573,
		0.187661, 0.641304, 0.743984,
		0.956577, 0.052666, -0.286682,
		42.520782, 35.105240, 31.516970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032677, 35.827538, 31.729094>,  <41.851181, 35.068375, 31.717648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032677, 35.827538, 31.729094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323208, 35.669624, 31.504030>,  <42.497528, 35.574875, 31.368992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323208, 35.669624, 31.504030>,  <42.032677, 35.827538, 31.729094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323208, 35.669624, 31.504030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059484, 0.779426, -0.623664,
		0.684766, 0.486456, 0.542638,
		0.726331, -0.394786, -0.562661,
		42.541107, 35.551189, 31.335232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521866, 36.393936, 31.569550>,  <42.032677, 35.827538, 31.729094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521866, 36.393936, 31.569550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531429, 36.114700, 31.283306>,  <42.537167, 35.947159, 31.111561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531429, 36.114700, 31.283306>,  <42.521866, 36.393936, 31.569550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531429, 36.114700, 31.283306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173072, 0.702115, -0.690710,
		0.984619, 0.140365, -0.104034,
		0.023908, -0.698091, -0.715609,
		42.538601, 35.905273, 31.068623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634926, 36.807236, 31.048794>,  <42.521866, 36.393936, 31.569550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634926, 36.807236, 31.048794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547626, 36.456394, 30.877655>,  <42.495247, 36.245888, 30.774973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547626, 36.456394, 30.877655>,  <42.634926, 36.807236, 31.048794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547626, 36.456394, 30.877655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311880, 0.478110, -0.821061,
		0.924716, -0.045758, -0.377899,
		-0.218247, -0.877107, -0.427845,
		42.482151, 36.193260, 30.749302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940247, 36.776974, 30.459816>,  <42.634926, 36.807236, 31.048794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940247, 36.776974, 30.459816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644264, 36.515118, 30.397964>,  <42.466675, 36.358006, 30.360853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644264, 36.515118, 30.397964>,  <42.940247, 36.776974, 30.459816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644264, 36.515118, 30.397964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240373, 0.472046, -0.848171,
		0.628239, -0.590441, -0.506651,
		-0.739957, -0.654639, -0.154631,
		42.422276, 36.318726, 30.351576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895924, 36.778069, 29.679668>,  <42.940247, 36.776974, 30.459816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895924, 36.778069, 29.679668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546394, 36.621765, 29.795422>,  <42.336678, 36.527985, 29.864874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546394, 36.621765, 29.795422>,  <42.895924, 36.778069, 29.679668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546394, 36.621765, 29.795422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416639, 0.294872, -0.859920,
		0.250689, -0.871986, -0.420470,
		-0.873823, -0.390757, 0.289382,
		42.284248, 36.504536, 29.882236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726757, 36.385765, 29.218201>,  <42.895924, 36.778069, 29.679668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726757, 36.385765, 29.218201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369507, 36.428921, 29.392870>,  <42.155155, 36.454815, 29.497671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369507, 36.428921, 29.392870>,  <42.726757, 36.385765, 29.218201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369507, 36.428921, 29.392870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412971, 0.188073, -0.891114,
		-0.178270, -0.976211, -0.123417,
		-0.893126, 0.107892, 0.436675,
		42.101570, 36.461288, 29.523872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178055, 35.835903, 28.911591>,  <42.726757, 36.385765, 29.218201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178055, 35.835903, 28.911591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003685, 36.161747, 29.064631>,  <41.899063, 36.357254, 29.156454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.003685, 36.161747, 29.064631>,  <42.178055, 35.835903, 28.911591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003685, 36.161747, 29.064631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595664, 0.057529, -0.801171,
		-0.674652, -0.577150, 0.460155,
		-0.435924, 0.814609, 0.382600,
		41.872910, 36.406128, 29.179411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585838, 35.709667, 28.785246>,  <42.178055, 35.835903, 28.911591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585838, 35.709667, 28.785246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583652, 36.103764, 28.853691>,  <41.582340, 36.340221, 28.894758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583652, 36.103764, 28.853691>,  <41.585838, 35.709667, 28.785246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583652, 36.103764, 28.853691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578208, 0.136497, -0.804390,
		-0.815871, -0.103331, 0.568926,
		-0.005462, 0.985237, 0.171111,
		41.582012, 36.399334, 28.905024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934643, 35.913300, 28.490294>,  <41.585838, 35.709667, 28.785246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934643, 35.913300, 28.490294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108009, 36.271740, 28.528570>,  <41.212029, 36.486805, 28.551537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108009, 36.271740, 28.528570>,  <40.934643, 35.913300, 28.490294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108009, 36.271740, 28.528570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418093, 0.294000, -0.859513,
		-0.798343, 0.332517, 0.502077,
		0.433413, 0.896101, 0.095690,
		41.238033, 36.540569, 28.557278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390594, 36.502914, 28.356926>,  <40.934643, 35.913300, 28.490294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390594, 36.502914, 28.356926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747765, 36.673737, 28.299917>,  <40.962067, 36.776230, 28.265711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.747765, 36.673737, 28.299917>,  <40.390594, 36.502914, 28.356926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747765, 36.673737, 28.299917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421107, 0.680272, -0.599916,
		-0.159242, 0.595696, 0.787266,
		0.892923, 0.427055, -0.142524,
		41.015640, 36.801853, 28.257160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468777, 37.247597, 28.628948>,  <40.390594, 36.502914, 28.356926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468777, 37.247597, 28.628948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692848, 37.153870, 28.311132>,  <40.827293, 37.097633, 28.120443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692848, 37.153870, 28.311132>,  <40.468777, 37.247597, 28.628948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692848, 37.153870, 28.311132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557004, 0.603404, -0.570658,
		0.613142, 0.762234, 0.207501,
		0.560182, -0.234316, -0.794539,
		40.860901, 37.083576, 28.072771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723724, 37.813915, 28.351250>,  <40.468777, 37.247597, 28.628948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723724, 37.813915, 28.351250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688736, 37.546387, 28.055946>,  <40.667744, 37.385868, 27.878765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688736, 37.546387, 28.055946>,  <40.723724, 37.813915, 28.351250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688736, 37.546387, 28.055946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480540, 0.677501, -0.556843,
		0.872599, 0.306052, -0.380661,
		-0.087475, -0.668823, -0.738257,
		40.662495, 37.345741, 27.834469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004990, 38.038982, 27.688316>,  <40.723724, 37.813915, 28.351250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004990, 38.038982, 27.688316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706478, 37.776588, 27.643129>,  <40.527370, 37.619152, 27.616016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706478, 37.776588, 27.643129>,  <41.004990, 38.038982, 27.688316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706478, 37.776588, 27.643129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578812, 0.723325, -0.376533,
		0.328711, -0.215610, -0.919490,
		-0.746275, -0.655982, -0.112967,
		40.482597, 37.579792, 27.609240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994358, 37.390835, 27.231230>,  <41.004990, 38.038982, 27.688316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994358, 37.390835, 27.231230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206665, 37.682934, 27.059175>,  <41.334049, 37.858192, 26.955944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206665, 37.682934, 27.059175>,  <40.994358, 37.390835, 27.231230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206665, 37.682934, 27.059175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633419, -0.004607, 0.773795,
		0.563083, -0.683163, -0.465000,
		0.530771, 0.730251, -0.430134,
		41.365898, 37.902008, 26.930136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698215, 37.263039, 27.318302>,  <40.994358, 37.390835, 27.231230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698215, 37.263039, 27.318302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653240, 37.657749, 27.271599>,  <41.626255, 37.894577, 27.243578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653240, 37.657749, 27.271599>,  <41.698215, 37.263039, 27.318302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653240, 37.657749, 27.271599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720304, 0.161885, 0.674504,
		0.684484, -0.008259, -0.728981,
		-0.112441, 0.986775, -0.116757,
		41.619507, 37.953781, 27.236572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382915, 37.616821, 27.283873>,  <41.698215, 37.263039, 27.318302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382915, 37.616821, 27.283873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130192, 37.913376, 27.374352>,  <41.978558, 38.091309, 27.428638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130192, 37.913376, 27.374352>,  <42.382915, 37.616821, 27.283873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130192, 37.913376, 27.374352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699846, 0.420170, 0.577644,
		0.333217, 0.523263, -0.784323,
		-0.631809, 0.741386, 0.226196,
		41.940651, 38.135792, 27.442211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753948, 38.179218, 27.100155>,  <42.382915, 37.616821, 27.283873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753948, 38.179218, 27.100155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472462, 38.235878, 27.378641>,  <42.303570, 38.269875, 27.545732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472462, 38.235878, 27.378641>,  <42.753948, 38.179218, 27.100155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472462, 38.235878, 27.378641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701388, 0.294762, 0.648977,
		-0.113288, 0.945013, -0.306783,
		-0.703719, 0.141652, 0.696214,
		42.261345, 38.278374, 27.587505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811615, 38.939812, 27.284784>,  <42.753948, 38.179218, 27.100155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811615, 38.939812, 27.284784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659561, 38.702896, 27.568953>,  <42.568329, 38.560749, 27.739454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659561, 38.702896, 27.568953>,  <42.811615, 38.939812, 27.284784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659561, 38.702896, 27.568953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578475, 0.447079, 0.682266,
		-0.721711, 0.670312, 0.172673,
		-0.380132, -0.592286, 0.710420,
		42.545521, 38.525211, 27.782078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248463, 39.182377, 27.757528>,  <42.811615, 38.939812, 27.284784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248463, 39.182377, 27.757528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982937, 38.930332, 27.918684>,  <42.823624, 38.779106, 28.015377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982937, 38.930332, 27.918684>,  <43.248463, 39.182377, 27.757528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982937, 38.930332, 27.918684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288334, 0.281441, 0.915235,
		-0.690086, 0.723709, -0.005141,
		-0.663810, -0.630109, 0.402888,
		42.783794, 38.741299, 28.039551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977039, 39.561577, 28.308607>,  <43.248463, 39.182377, 27.757528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977039, 39.561577, 28.308607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904396, 39.175045, 28.381523>,  <42.860809, 38.943127, 28.425274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904396, 39.175045, 28.381523>,  <42.977039, 39.561577, 28.308607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904396, 39.175045, 28.381523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137340, 0.158634, 0.977739,
		-0.973733, 0.202603, 0.103905,
		-0.181610, -0.966327, 0.182292,
		42.849915, 38.885147, 28.436211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657795, 39.585087, 28.875832>,  <42.977039, 39.561577, 28.308607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657795, 39.585087, 28.875832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783310, 39.207180, 28.837990>,  <42.858620, 38.980434, 28.815285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783310, 39.207180, 28.837990>,  <42.657795, 39.585087, 28.875832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783310, 39.207180, 28.837990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077662, -0.073767, 0.994247,
		-0.946313, -0.319326, 0.050226,
		0.313783, -0.944770, -0.094606,
		42.877445, 38.923748, 28.809608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309772, 39.245277, 29.377577>,  <42.657795, 39.585087, 28.875832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309772, 39.245277, 29.377577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632389, 39.030830, 29.277925>,  <42.825958, 38.902164, 29.218134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632389, 39.030830, 29.277925>,  <42.309772, 39.245277, 29.377577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632389, 39.030830, 29.277925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092860, -0.301296, 0.948998,
		-0.583835, -0.788544, -0.193225,
		0.806545, -0.536116, -0.249131,
		42.874352, 38.869995, 29.203186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134583, 38.640263, 29.671148>,  <42.309772, 39.245277, 29.377577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134583, 38.640263, 29.671148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532799, 38.659584, 29.638712>,  <42.771729, 38.671177, 29.619251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532799, 38.659584, 29.638712>,  <42.134583, 38.640263, 29.671148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532799, 38.659584, 29.638712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090508, -0.244837, 0.965331,
		0.026772, -0.968361, -0.248115,
		0.995535, 0.048300, -0.081090,
		42.831459, 38.674072, 29.614386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339630, 38.125381, 30.098984>,  <42.134583, 38.640263, 29.671148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339630, 38.125381, 30.098984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694679, 38.305088, 30.058434>,  <42.907711, 38.412914, 30.034103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694679, 38.305088, 30.058434>,  <42.339630, 38.125381, 30.098984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694679, 38.305088, 30.058434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240283, -0.263951, 0.934128,
		0.392919, -0.853514, -0.342242,
		0.887626, 0.449271, -0.101373,
		42.960968, 38.439869, 30.028021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914650, 37.591980, 30.202879>,  <42.339630, 38.125381, 30.098984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.914650, 37.591980, 30.202879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044384, 37.965439, 30.263676>,  <43.122227, 38.189514, 30.300154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044384, 37.965439, 30.263676>,  <42.914650, 37.591980, 30.202879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044384, 37.965439, 30.263676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574938, -0.322163, 0.752102,
		0.751166, -0.156551, -0.641281,
		0.324339, 0.933650, 0.151991,
		43.141685, 38.245533, 30.309273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536297, 37.458057, 30.479557>,  <42.914650, 37.591980, 30.202879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536297, 37.458057, 30.479557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485680, 37.841324, 30.582241>,  <43.455311, 38.071285, 30.643852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485680, 37.841324, 30.582241>,  <43.536297, 37.458057, 30.479557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485680, 37.841324, 30.582241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480806, -0.167115, 0.860754,
		0.867648, 0.232350, -0.439546,
		-0.126541, 0.958168, 0.256712,
		43.447716, 38.128773, 30.659254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161209, 37.717896, 30.769272>,  <43.536297, 37.458057, 30.479557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161209, 37.717896, 30.769272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906963, 37.982452, 30.928549>,  <43.754417, 38.141186, 31.024115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906963, 37.982452, 30.928549>,  <44.161209, 37.717896, 30.769272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906963, 37.982452, 30.928549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545742, 0.020128, 0.837711,
		0.546040, 0.749771, -0.373743,
		-0.635615, 0.661391, 0.398191,
		43.716278, 38.180870, 31.048006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.549496, 38.259315, 31.091516>,  <44.161209, 37.717896, 30.769272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.549496, 38.259315, 31.091516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193020, 38.280872, 31.271687>,  <43.979134, 38.293804, 31.379789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193020, 38.280872, 31.271687>,  <44.549496, 38.259315, 31.091516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193020, 38.280872, 31.271687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452430, 0.033111, 0.891185,
		0.033111, 0.997998, -0.053889,
		-0.891185, 0.053889, 0.450427,
		43.925663, 38.297039, 31.406815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628468, 38.759335, 31.664219>,  <44.549496, 38.259315, 31.091516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628468, 38.759335, 31.664219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296432, 38.557095, 31.758310>,  <44.097214, 38.435753, 31.814766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.296432, 38.557095, 31.758310>,  <44.628468, 38.759335, 31.664219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296432, 38.557095, 31.758310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361318, -0.166350, 0.917484,
		-0.424745, 0.846582, 0.320765,
		-0.830085, -0.505595, 0.235229,
		44.047405, 38.405415, 31.828878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448059, 39.019466, 32.285351>,  <44.628468, 38.759335, 31.664219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448059, 39.019466, 32.285351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297546, 38.649166, 32.270393>,  <44.207241, 38.426987, 32.261417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.297546, 38.649166, 32.270393>,  <44.448059, 39.019466, 32.285351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297546, 38.649166, 32.270393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343137, -0.176733, 0.922509,
		-0.860623, 0.334288, 0.384160,
		-0.376278, -0.925752, -0.037394,
		44.184662, 38.371441, 32.259174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303493, 38.915394, 33.036018>,  <44.448059, 39.019466, 32.285351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303493, 38.915394, 33.036018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325710, 38.568707, 32.837742>,  <44.339039, 38.360695, 32.718777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325710, 38.568707, 32.837742>,  <44.303493, 38.915394, 33.036018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325710, 38.568707, 32.837742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346423, -0.448892, 0.823704,
		-0.936433, -0.217466, 0.275321,
		0.055539, -0.866721, -0.495692,
		44.342373, 38.308689, 32.689034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933872, 38.348133, 33.524044>,  <44.303493, 38.915394, 33.036018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933872, 38.348133, 33.524044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172798, 38.157352, 33.266136>,  <44.316154, 38.042885, 33.111393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172798, 38.157352, 33.266136>,  <43.933872, 38.348133, 33.524044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172798, 38.157352, 33.266136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304609, -0.608784, 0.732527,
		-0.741908, -0.633952, -0.218352,
		0.597316, -0.476955, -0.644769,
		44.351994, 38.014267, 33.072704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948406, 37.651176, 33.737579>,  <43.933872, 38.348133, 33.524044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948406, 37.651176, 33.737579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276421, 37.684341, 33.511070>,  <44.473228, 37.704239, 33.375164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276421, 37.684341, 33.511070>,  <43.948406, 37.651176, 33.737579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276421, 37.684341, 33.511070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495036, -0.599276, 0.629133,
		-0.287189, -0.796238, -0.532474,
		0.820038, 0.082913, -0.566272,
		44.522430, 37.709217, 33.341190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111721, 37.007736, 33.690865>,  <43.948406, 37.651176, 33.737579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111721, 37.007736, 33.690865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436203, 37.235287, 33.636711>,  <44.630890, 37.371819, 33.604218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436203, 37.235287, 33.636711>,  <44.111721, 37.007736, 33.690865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436203, 37.235287, 33.636711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548229, -0.659297, 0.514561,
		0.203467, -0.491632, -0.846699,
		0.811201, 0.568881, -0.135382,
		44.679562, 37.405952, 33.596096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528687, 36.442883, 33.776737>,  <44.111721, 37.007736, 33.690865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528687, 36.442883, 33.776737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760006, 36.768753, 33.794056>,  <44.898800, 36.964275, 33.804447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.760006, 36.768753, 33.794056>,  <44.528687, 36.442883, 33.776737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760006, 36.768753, 33.794056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730369, -0.540640, 0.417456,
		0.363496, -0.209796, -0.907665,
		0.578301, 0.814674, 0.043293,
		44.933495, 37.013157, 33.807045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229374, 36.241070, 33.605221>,  <44.528687, 36.442883, 33.776737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229374, 36.241070, 33.605221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278576, 36.589790, 33.794884>,  <45.308098, 36.799023, 33.908680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278576, 36.589790, 33.794884>,  <45.229374, 36.241070, 33.605221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278576, 36.589790, 33.794884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701948, -0.414176, 0.579419,
		0.701526, 0.261563, -0.662908,
		0.123006, 0.871805, 0.474159,
		45.315479, 36.851334, 33.937130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929108, 36.321705, 33.712093>,  <45.229374, 36.241070, 33.605221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929108, 36.321705, 33.712093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769203, 36.576054, 33.976170>,  <45.673260, 36.728664, 34.134617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769203, 36.576054, 33.976170>,  <45.929108, 36.321705, 33.712093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769203, 36.576054, 33.976170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660716, -0.299324, 0.688375,
		0.635330, 0.711388, -0.300472,
		-0.399763, 0.635871, 0.660195,
		45.649273, 36.766815, 34.174229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439362, 36.888359, 33.773285>,  <45.929108, 36.321705, 33.712093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439362, 36.888359, 33.773285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215942, 36.867516, 34.104416>,  <46.081890, 36.855011, 34.303097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215942, 36.867516, 34.104416>,  <46.439362, 36.888359, 33.773285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215942, 36.867516, 34.104416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823008, 0.089525, 0.560931,
		-0.103341, 0.994621, -0.007118,
		-0.558551, -0.052109, 0.827832,
		46.048378, 36.851883, 34.352764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.749851, 37.266773, 34.260059>,  <46.439362, 36.888359, 33.773285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.749851, 37.266773, 34.260059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514843, 37.057091, 34.506645>,  <46.373840, 36.931282, 34.654598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514843, 37.057091, 34.506645>,  <46.749851, 37.266773, 34.260059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514843, 37.057091, 34.506645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792186, -0.217140, 0.570343,
		-0.165119, 0.823442, 0.542843,
		-0.587518, -0.524207, 0.616465,
		46.338589, 36.899830, 34.691586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.997692, 37.398361, 34.915485>,  <46.749851, 37.266773, 34.260059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.997692, 37.398361, 34.915485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819233, 37.040432, 34.909214>,  <46.712158, 36.825676, 34.905449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.819233, 37.040432, 34.909214>,  <46.997692, 37.398361, 34.915485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.819233, 37.040432, 34.909214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789505, -0.401773, 0.463962,
		-0.421463, 0.194617, 0.885716,
		-0.446152, -0.894820, -0.015681,
		46.685387, 36.771984, 34.904510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178921, 37.070251, 35.533173>,  <46.997692, 37.398361, 34.915485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178921, 37.070251, 35.533173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.060364, 36.768284, 35.299164>,  <46.989231, 36.587105, 35.158760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.060364, 36.768284, 35.299164>,  <47.178921, 37.070251, 35.533173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.060364, 36.768284, 35.299164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766524, -0.553431, 0.325813,
		-0.569732, -0.351866, 0.742695,
		-0.296388, -0.754920, -0.585022,
		46.971447, 36.541809, 35.123657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.219368, 36.480976, 36.014324>,  <47.178921, 37.070251, 35.533173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.219368, 36.480976, 36.014324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.249302, 36.374805, 35.629833>,  <47.267262, 36.311104, 35.399139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.249302, 36.374805, 35.629833>,  <47.219368, 36.480976, 36.014324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.249302, 36.374805, 35.629833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812098, -0.543174, 0.213211,
		-0.578703, -0.796562, 0.174904,
		0.074832, -0.265425, -0.961223,
		47.271751, 36.295177, 35.341465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.348999, 35.842876, 36.058712>,  <47.219368, 36.480976, 36.014324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.348999, 35.842876, 36.058712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492310, 35.967445, 35.706654>,  <47.578297, 36.042187, 35.495419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.492310, 35.967445, 35.706654>,  <47.348999, 35.842876, 36.058712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.492310, 35.967445, 35.706654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876801, -0.436080, 0.202619,
		-0.320714, -0.844306, -0.429290,
		0.358277, 0.311419, -0.880145,
		47.599792, 36.060871, 35.442612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.594078, 35.277744, 35.664562>,  <47.348999, 35.842876, 36.058712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.594078, 35.277744, 35.664562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.803329, 35.605259, 35.569969>,  <47.928879, 35.801769, 35.513214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.803329, 35.605259, 35.569969>,  <47.594078, 35.277744, 35.664562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.803329, 35.605259, 35.569969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812602, -0.395541, 0.428048,
		0.256940, -0.416093, -0.872266,
		0.523125, 0.818788, -0.236487,
		47.960266, 35.850895, 35.499023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.400909, 35.149178, 34.839550>,  <47.594078, 35.277744, 35.664562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.400909, 35.149178, 34.839550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746181, 35.006706, 34.982697>,  <47.953342, 34.921223, 35.068584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746181, 35.006706, 34.982697>,  <47.400909, 35.149178, 34.839550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.746181, 35.006706, 34.982697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208407, 0.896917, 0.390008,
		-0.459885, -0.262065, 0.848427,
		0.863176, -0.356177, 0.357862,
		48.005135, 34.899853, 35.090054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.236893, 41.855114, 43.331509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880302, 41.679367, 43.287273>,  <33.666348, 41.573917, 43.260731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880302, 41.679367, 43.287273>,  <34.236893, 41.855114, 43.331509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880302, 41.679367, 43.287273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416313, -0.698062, -0.582574,
		0.178766, -0.565389, 0.805219,
		-0.891474, -0.439368, -0.110589,
		33.612862, 41.547558, 43.254097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360298, 41.196831, 43.384380>,  <34.236893, 41.855114, 43.331509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360298, 41.196831, 43.384380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.999180, 41.150898, 43.218597>,  <33.782509, 41.123337, 43.119129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.999180, 41.150898, 43.218597>,  <34.360298, 41.196831, 43.384380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999180, 41.150898, 43.218597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350600, -0.754642, -0.554613,
		-0.249080, -0.646010, 0.721547,
		-0.902795, -0.114831, -0.414457,
		33.728340, 41.116447, 43.094261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171947, 40.517578, 43.484215>,  <34.360298, 41.196831, 43.384380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171947, 40.517578, 43.484215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.954723, 40.642712, 43.172516>,  <33.824390, 40.717793, 42.985497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.954723, 40.642712, 43.172516>,  <34.171947, 40.517578, 43.484215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954723, 40.642712, 43.172516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204412, -0.850840, -0.484032,
		-0.814432, -0.422146, 0.398112,
		-0.543062, 0.312833, -0.779243,
		33.791805, 40.736561, 42.938744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869724, 39.938099, 43.344566>,  <34.171947, 40.517578, 43.484215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869724, 39.938099, 43.344566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.831745, 40.147228, 43.005711>,  <33.808956, 40.272705, 42.802399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.831745, 40.147228, 43.005711>,  <33.869724, 39.938099, 43.344566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831745, 40.147228, 43.005711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158414, -0.832200, -0.531365,
		-0.982797, -0.184650, -0.003808,
		-0.094948, 0.522827, -0.847135,
		33.803261, 40.304077, 42.751572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468487, 39.556454, 42.745457>,  <33.869724, 39.938099, 43.344566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468487, 39.556454, 42.745457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705223, 39.828861, 42.572971>,  <33.847263, 39.992306, 42.469479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705223, 39.828861, 42.572971>,  <33.468487, 39.556454, 42.745457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705223, 39.828861, 42.572971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393002, -0.710868, -0.583281,
		-0.703760, 0.175740, -0.688359,
		0.591837, 0.681016, -0.431214,
		33.882774, 40.033165, 42.443607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356865, 39.427769, 42.016815>,  <33.468487, 39.556454, 42.745457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356865, 39.427769, 42.016815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705231, 39.622681, 42.042332>,  <33.914249, 39.739628, 42.057644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705231, 39.622681, 42.042332>,  <33.356865, 39.427769, 42.016815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705231, 39.622681, 42.042332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426325, -0.684545, -0.591307,
		-0.244463, 0.542173, -0.803919,
		0.870910, 0.487284, 0.063796,
		33.966503, 39.768867, 42.061470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593506, 39.599854, 41.251118>,  <33.356865, 39.427769, 42.016815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593506, 39.599854, 41.251118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917751, 39.649658, 41.479996>,  <34.112297, 39.679539, 41.617321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917751, 39.649658, 41.479996>,  <33.593506, 39.599854, 41.251118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917751, 39.649658, 41.479996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518947, -0.605440, -0.603437,
		0.271294, 0.786091, -0.555392,
		0.810613, 0.124510, 0.572192,
		34.160934, 39.687012, 41.651653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154808, 39.667625, 40.839874>,  <33.593506, 39.599854, 41.251118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154808, 39.667625, 40.839874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.320732, 39.565277, 41.189152>,  <34.420288, 39.503868, 41.398716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.320732, 39.565277, 41.189152>,  <34.154808, 39.667625, 40.839874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320732, 39.565277, 41.189152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565819, -0.679006, -0.467760,
		0.712588, 0.688100, -0.136883,
		0.414810, -0.255869, 0.873192,
		34.445175, 39.488518, 41.451111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926094, 39.676895, 40.774036>,  <34.154808, 39.667625, 40.839874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926094, 39.676895, 40.774036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844986, 39.426842, 41.075523>,  <34.796322, 39.276810, 41.256416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.844986, 39.426842, 41.075523>,  <34.926094, 39.676895, 40.774036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844986, 39.426842, 41.075523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646197, -0.663743, -0.376661,
		0.735739, 0.410673, 0.538550,
		-0.202775, -0.625134, 0.753717,
		34.784153, 39.239300, 41.301640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610195, 39.533108, 40.974785>,  <34.926094, 39.676895, 40.774036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610195, 39.533108, 40.974785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359058, 39.259911, 41.124096>,  <35.208378, 39.095993, 41.213680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359058, 39.259911, 41.124096>,  <35.610195, 39.533108, 40.974785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359058, 39.259911, 41.124096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636418, -0.726566, -0.258985,
		0.448093, 0.074956, 0.890839,
		-0.627841, -0.682996, 0.373273,
		35.170708, 39.055012, 41.236076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047512, 38.989883, 41.378742>,  <35.610195, 39.533108, 40.974785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047512, 38.989883, 41.378742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723446, 38.815105, 41.222431>,  <35.529007, 38.710239, 41.128643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.723446, 38.815105, 41.222431>,  <36.047512, 38.989883, 41.378742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723446, 38.815105, 41.222431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577907, -0.707076, -0.407514,
		-0.098248, -0.555988, 0.825364,
		-0.810167, -0.436946, -0.390778,
		35.480396, 38.684021, 41.105198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155899, 38.333679, 41.524925>,  <36.047512, 38.989883, 41.378742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155899, 38.333679, 41.524925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892132, 38.336948, 41.224232>,  <35.733871, 38.338909, 41.043816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892132, 38.336948, 41.224232>,  <36.155899, 38.333679, 41.524925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892132, 38.336948, 41.224232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515196, -0.723299, -0.459795,
		-0.547483, -0.690487, 0.472747,
		-0.659420, 0.008173, -0.751730,
		35.694305, 38.339401, 40.998714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194633, 37.722729, 41.203396>,  <36.155899, 38.333679, 41.524925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194633, 37.722729, 41.203396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963764, 37.871010, 40.912342>,  <35.825245, 37.959980, 40.737709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963764, 37.871010, 40.912342>,  <36.194633, 37.722729, 41.203396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963764, 37.871010, 40.912342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416921, -0.632390, -0.652886,
		-0.702177, -0.680193, 0.210442,
		-0.577170, 0.370704, -0.727636,
		35.790611, 37.982220, 40.694050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904266, 37.123798, 40.789803>,  <36.194633, 37.722729, 41.203396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904266, 37.123798, 40.789803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891975, 37.447708, 40.555428>,  <35.884602, 37.642052, 40.414803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891975, 37.447708, 40.555428>,  <35.904266, 37.123798, 40.789803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891975, 37.447708, 40.555428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377398, -0.533423, -0.756988,
		-0.925541, -0.244396, -0.289213,
		-0.030732, 0.809772, -0.585940,
		35.882755, 37.690639, 40.379646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583038, 36.890640, 40.115612>,  <35.904266, 37.123798, 40.789803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583038, 36.890640, 40.115612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772678, 37.238075, 40.057941>,  <35.886463, 37.446537, 40.023338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772678, 37.238075, 40.057941>,  <35.583038, 36.890640, 40.115612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772678, 37.238075, 40.057941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355617, -0.338696, -0.871104,
		-0.805461, 0.361718, -0.469459,
		0.474098, 0.868588, -0.144174,
		35.914909, 37.498653, 40.014690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409939, 37.069103, 39.419357>,  <35.583038, 36.890640, 40.115612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409939, 37.069103, 39.419357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744209, 37.273323, 39.500340>,  <35.944771, 37.395855, 39.548931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744209, 37.273323, 39.500340>,  <35.409939, 37.069103, 39.419357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744209, 37.273323, 39.500340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367357, -0.245555, -0.897079,
		-0.408286, 0.824041, -0.392757,
		0.835674, 0.510548, 0.202460,
		35.994911, 37.426487, 39.561077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709393, 37.202515, 38.789795>,  <35.409939, 37.069103, 39.419357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709393, 37.202515, 38.789795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040081, 37.310108, 38.987453>,  <36.238495, 37.374664, 39.106049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040081, 37.310108, 38.987453>,  <35.709393, 37.202515, 38.789795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040081, 37.310108, 38.987453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562365, -0.421204, -0.711571,
		0.016740, 0.866163, -0.499482,
		0.826720, 0.268979, 0.494151,
		36.288097, 37.390800, 39.135700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305458, 37.629578, 38.340698>,  <35.709393, 37.202515, 38.789795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305458, 37.629578, 38.340698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471588, 37.425312, 38.641823>,  <36.571266, 37.302753, 38.822498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471588, 37.425312, 38.641823>,  <36.305458, 37.629578, 38.340698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471588, 37.425312, 38.641823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617272, -0.449673, -0.645577,
		0.668194, 0.732812, 0.128462,
		0.415321, -0.510667, 0.752813,
		36.596184, 37.272114, 38.867668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926025, 37.771049, 38.230732>,  <36.305458, 37.629578, 38.340698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926025, 37.771049, 38.230732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930767, 37.447540, 38.465931>,  <36.933613, 37.253433, 38.607052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930767, 37.447540, 38.465931>,  <36.926025, 37.771049, 38.230732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930767, 37.447540, 38.465931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563740, -0.480273, -0.671964,
		0.825867, 0.339447, 0.450244,
		0.011856, -0.808773, 0.588001,
		36.934322, 37.204906, 38.642330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663017, 37.532520, 38.233902>,  <36.926025, 37.771049, 38.230732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663017, 37.532520, 38.233902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488132, 37.200691, 38.372845>,  <37.383202, 37.001595, 38.456211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488132, 37.200691, 38.372845>,  <37.663017, 37.532520, 38.233902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488132, 37.200691, 38.372845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627063, -0.558051, -0.543480,
		0.644698, -0.019802, 0.764181,
		-0.437214, -0.829570, 0.347358,
		37.356968, 36.951820, 38.477051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165150, 37.068462, 38.518734>,  <37.663017, 37.532520, 38.233902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165150, 37.068462, 38.518734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858780, 36.820641, 38.450024>,  <37.674957, 36.671947, 38.408798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858780, 36.820641, 38.450024>,  <38.165150, 37.068462, 38.518734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858780, 36.820641, 38.450024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622031, -0.646532, -0.441671,
		0.162584, -0.445135, 0.880580,
		-0.765927, -0.619557, -0.171772,
		37.629002, 36.634773, 38.398491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293163, 36.416595, 38.820568>,  <38.165150, 37.068462, 38.518734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293163, 36.416595, 38.820568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064663, 36.382889, 38.493992>,  <37.927563, 36.362667, 38.298046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064663, 36.382889, 38.493992>,  <38.293163, 36.416595, 38.820568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064663, 36.382889, 38.493992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759285, -0.432015, -0.486671,
		-0.311707, -0.897921, 0.310767,
		-0.571248, -0.084262, -0.816441,
		37.893288, 36.357609, 38.249058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795204, 36.838657, 39.007137>,  <38.293163, 36.416595, 38.820568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795204, 36.838657, 39.007137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029984, 37.053349, 38.764679>,  <39.170853, 37.182163, 38.619205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.029984, 37.053349, 38.764679>,  <38.795204, 36.838657, 39.007137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029984, 37.053349, 38.764679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031605, 0.732917, 0.679583,
		0.809006, -0.418039, 0.413222,
		0.586950, 0.536727, -0.606147,
		39.206070, 37.214367, 38.582836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206966, 37.106239, 39.473370>,  <38.795204, 36.838657, 39.007137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206966, 37.106239, 39.473370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185860, 37.319820, 39.135822>,  <39.173195, 37.447968, 38.933296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.185860, 37.319820, 39.135822>,  <39.206966, 37.106239, 39.473370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185860, 37.319820, 39.135822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289037, 0.800705, 0.524718,
		0.955863, 0.271595, 0.112083,
		-0.052765, 0.533954, -0.843865,
		39.170029, 37.480007, 38.882664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484707, 37.684864, 39.621944>,  <39.206966, 37.106239, 39.473370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484707, 37.684864, 39.621944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300316, 37.804554, 39.287766>,  <39.189682, 37.876366, 39.087257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300316, 37.804554, 39.287766>,  <39.484707, 37.684864, 39.621944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300316, 37.804554, 39.287766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186373, 0.887798, 0.420809,
		0.867621, 0.349687, -0.353487,
		-0.460976, 0.299222, -0.835444,
		39.162022, 37.894321, 39.037132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769035, 38.357323, 39.537460>,  <39.484707, 37.684864, 39.621944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769035, 38.357323, 39.537460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.421848, 38.320194, 39.342316>,  <39.213535, 38.297916, 39.225227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.421848, 38.320194, 39.342316>,  <39.769035, 38.357323, 39.537460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421848, 38.320194, 39.342316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368843, 0.778298, 0.508141,
		0.332536, 0.620997, -0.709777,
		-0.867971, -0.092821, -0.487862,
		39.161457, 38.292347, 39.195957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728104, 38.924957, 39.153816>,  <39.769035, 38.357323, 39.537460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728104, 38.924957, 39.153816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362911, 38.775562, 39.219494>,  <39.143795, 38.685925, 39.258900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362911, 38.775562, 39.219494>,  <39.728104, 38.924957, 39.153816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362911, 38.775562, 39.219494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268834, 0.853446, 0.446495,
		-0.306897, 0.363501, -0.879591,
		-0.912985, -0.373492, 0.164198,
		39.089016, 38.663513, 39.268753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363747, 39.526562, 39.174393>,  <39.728104, 38.924957, 39.153816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363747, 39.526562, 39.174393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105347, 39.264687, 39.331402>,  <38.950306, 39.107563, 39.425606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105347, 39.264687, 39.331402>,  <39.363747, 39.526562, 39.174393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105347, 39.264687, 39.331402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452664, 0.742597, 0.493604,
		-0.614642, 0.141185, -0.776068,
		-0.645996, -0.654688, 0.392522,
		38.911549, 39.068279, 39.449158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836422, 39.956142, 39.265415>,  <39.363747, 39.526562, 39.174393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836422, 39.956142, 39.265415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727814, 39.628208, 39.467068>,  <38.662651, 39.431446, 39.588058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727814, 39.628208, 39.467068>,  <38.836422, 39.956142, 39.265415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727814, 39.628208, 39.467068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618681, 0.549921, 0.561089,
		-0.737233, -0.159552, -0.656529,
		-0.271516, -0.819835, 0.504132,
		38.646358, 39.382259, 39.618309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178009, 40.097534, 39.373726>,  <38.836422, 39.956142, 39.265415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178009, 40.097534, 39.373726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278187, 39.808147, 39.631058>,  <38.338295, 39.634514, 39.785458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.278187, 39.808147, 39.631058>,  <38.178009, 40.097534, 39.373726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278187, 39.808147, 39.631058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601715, 0.404248, 0.688856,
		-0.758429, -0.559622, -0.334078,
		0.250449, -0.723468, 0.643327,
		38.353321, 39.591106, 39.824055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552902, 39.740673, 39.603264>,  <38.178009, 40.097534, 39.373726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552902, 39.740673, 39.603264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819271, 39.722763, 39.901134>,  <37.979092, 39.712017, 40.079857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.819271, 39.722763, 39.901134>,  <37.552902, 39.740673, 39.603264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819271, 39.722763, 39.901134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645861, 0.464996, 0.605510,
		-0.373386, -0.884180, 0.280729,
		0.665917, -0.044777, 0.744681,
		38.019047, 39.709332, 40.124538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104591, 39.648338, 40.243935>,  <37.552902, 39.740673, 39.603264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104591, 39.648338, 40.243935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475430, 39.713085, 40.379169>,  <37.697933, 39.751934, 40.460308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.475430, 39.713085, 40.379169>,  <37.104591, 39.648338, 40.243935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475430, 39.713085, 40.379169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367483, 0.570227, 0.734709,
		-0.073862, -0.805383, 0.588135,
		0.927092, 0.161863, 0.338083,
		37.753559, 39.761642, 40.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039768, 39.646988, 40.981640>,  <37.104591, 39.648338, 40.243935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039768, 39.646988, 40.981640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.382233, 39.840183, 40.908199>,  <37.587711, 39.956100, 40.864136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.382233, 39.840183, 40.908199>,  <37.039768, 39.646988, 40.981640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382233, 39.840183, 40.908199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222437, 0.665231, 0.712734,
		0.466381, -0.569375, 0.676979,
		0.856160, 0.482991, -0.183601,
		37.639080, 39.985081, 40.853119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353645, 39.629902, 41.582836>,  <37.039768, 39.646988, 40.981640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353645, 39.629902, 41.582836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485146, 39.942123, 41.370171>,  <37.564045, 40.129456, 41.242573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485146, 39.942123, 41.370171>,  <37.353645, 39.629902, 41.582836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485146, 39.942123, 41.370171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293988, 0.619561, 0.727815,
		0.897493, -0.082967, 0.433154,
		0.328750, 0.780551, -0.531661,
		37.583771, 40.176289, 41.210670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842270, 40.096176, 42.030354>,  <37.353645, 39.629902, 41.582836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842270, 40.096176, 42.030354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677849, 40.325726, 41.747028>,  <37.579197, 40.463455, 41.577034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677849, 40.325726, 41.747028>,  <37.842270, 40.096176, 42.030354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677849, 40.325726, 41.747028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239523, 0.681702, 0.691311,
		0.879583, 0.453822, -0.142759,
		-0.411051, 0.573871, -0.708314,
		37.554535, 40.497887, 41.534534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989723, 40.725117, 42.290455>,  <37.842270, 40.096176, 42.030354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989723, 40.725117, 42.290455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714470, 40.801956, 42.010578>,  <37.549316, 40.848061, 41.842651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714470, 40.801956, 42.010578>,  <37.989723, 40.725117, 42.290455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714470, 40.801956, 42.010578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418909, 0.682184, 0.599284,
		0.592438, 0.705496, -0.388964,
		-0.688137, 0.192098, -0.699690,
		37.508030, 40.859585, 41.800671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955597, 41.406235, 42.200954>,  <37.989723, 40.725117, 42.290455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955597, 41.406235, 42.200954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595791, 41.285942, 42.074192>,  <37.379906, 41.213764, 41.998135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595791, 41.285942, 42.074192>,  <37.955597, 41.406235, 42.200954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595791, 41.285942, 42.074192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434461, 0.692115, 0.576385,
		0.045998, 0.656151, -0.753226,
		-0.899515, -0.300735, -0.316908,
		37.325935, 41.195721, 41.979118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536598, 42.001541, 42.119518>,  <37.955597, 41.406235, 42.200954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536598, 42.001541, 42.119518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258163, 41.714954, 42.101059>,  <37.091103, 41.543003, 42.089985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258163, 41.714954, 42.101059>,  <37.536598, 42.001541, 42.119518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258163, 41.714954, 42.101059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624250, 0.572240, 0.531840,
		-0.354642, 0.399014, -0.845587,
		-0.696090, -0.716470, -0.046144,
		37.049335, 41.500015, 42.087215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969334, 42.356380, 41.996967>,  <37.536598, 42.001541, 42.119518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969334, 42.356380, 41.996967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859444, 42.007397, 42.158627>,  <36.793510, 41.798004, 42.255623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859444, 42.007397, 42.158627>,  <36.969334, 42.356380, 41.996967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859444, 42.007397, 42.158627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720859, 0.465043, 0.513905,
		-0.636309, -0.150154, -0.756680,
		-0.274724, -0.872462, 0.404151,
		36.777027, 41.745659, 42.279873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277534, 42.369987, 41.861534>,  <36.969334, 42.356380, 41.996967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277534, 42.369987, 41.861534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315445, 42.104221, 42.158066>,  <36.338192, 41.944763, 42.335983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315445, 42.104221, 42.158066>,  <36.277534, 42.369987, 41.861534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315445, 42.104221, 42.158066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666440, 0.510843, 0.543045,
		-0.739510, -0.545520, -0.394377,
		0.094777, -0.664415, 0.741330,
		36.343880, 41.904896, 42.380466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.644653, 42.033211, 42.064590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.856335, 42.003628, 42.402695>,  <35.983345, 41.985878, 42.605556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.856335, 42.003628, 42.402695>,  <35.644653, 42.033211, 42.064590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856335, 42.003628, 42.402695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613924, 0.654273, 0.441615,
		-0.585697, -0.752633, 0.300836,
		0.529204, -0.073962, 0.845265,
		36.015095, 41.981438, 42.656273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113167, 41.936699, 42.531090>,  <35.644653, 42.033211, 42.064590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113167, 41.936699, 42.531090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438526, 42.023521, 42.746967>,  <35.633739, 42.075615, 42.876495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438526, 42.023521, 42.746967>,  <35.113167, 41.936699, 42.531090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438526, 42.023521, 42.746967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556956, 0.558363, 0.614841,
		-0.167890, -0.800697, 0.575063,
		0.813396, 0.217059, 0.539697,
		35.682545, 42.088638, 42.908875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009838, 41.710754, 43.206009>,  <35.113167, 41.936699, 42.531090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009838, 41.710754, 43.206009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277039, 42.008411, 43.208324>,  <35.437359, 42.187004, 43.209713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277039, 42.008411, 43.208324>,  <35.009838, 41.710754, 43.206009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277039, 42.008411, 43.208324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509966, 0.452089, 0.731813,
		0.541955, -0.491801, 0.681481,
		0.667997, 0.744142, 0.005790,
		35.477436, 42.231655, 43.210060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169632, 41.868557, 43.853664>,  <35.009838, 41.710754, 43.206009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169632, 41.868557, 43.853664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283577, 42.216969, 43.693581>,  <35.351944, 42.426014, 43.597530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.283577, 42.216969, 43.693581>,  <35.169632, 41.868557, 43.853664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283577, 42.216969, 43.693581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298396, 0.477340, 0.826502,
		0.910939, -0.116023, 0.395889,
		0.284867, 0.871025, -0.400207,
		35.369038, 42.478275, 43.573517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383179, 42.212231, 44.428082>,  <35.169632, 41.868557, 43.853664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383179, 42.212231, 44.428082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349823, 42.510048, 44.163143>,  <35.329811, 42.688740, 44.004181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349823, 42.510048, 44.163143>,  <35.383179, 42.212231, 44.428082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349823, 42.510048, 44.163143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457713, 0.561784, 0.689128,
		0.885181, 0.360626, 0.293943,
		-0.083385, 0.744545, -0.662344,
		35.324806, 42.733410, 43.964439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610714, 42.798897, 44.759769>,  <35.383179, 42.212231, 44.428082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610714, 42.798897, 44.759769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396431, 42.947521, 44.456467>,  <35.267860, 43.036697, 44.274483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396431, 42.947521, 44.456467>,  <35.610714, 42.798897, 44.759769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396431, 42.947521, 44.456467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290324, 0.762188, 0.578603,
		0.792924, 0.530103, -0.300436,
		-0.535708, 0.371565, -0.758259,
		35.235718, 43.058990, 44.228989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700062, 43.580414, 44.652088>,  <35.610714, 42.798897, 44.759769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700062, 43.580414, 44.652088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346447, 43.501221, 44.482719>,  <35.134277, 43.453705, 44.381100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346447, 43.501221, 44.482719>,  <35.700062, 43.580414, 44.652088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346447, 43.501221, 44.482719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432757, 0.689029, 0.581343,
		0.176651, 0.697165, -0.694806,
		-0.884034, -0.197987, -0.423421,
		35.081238, 43.441826, 44.355694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440941, 44.283314, 44.707249>,  <35.700062, 43.580414, 44.652088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440941, 44.283314, 44.707249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.131630, 44.051983, 44.603264>,  <34.946045, 43.913185, 44.540871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.131630, 44.051983, 44.603264>,  <35.440941, 44.283314, 44.707249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131630, 44.051983, 44.603264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606477, 0.554972, 0.569378,
		-0.185014, 0.597949, -0.779889,
		-0.773276, -0.578328, -0.259965,
		34.899647, 43.878483, 44.525276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901913, 44.719421, 44.623001>,  <35.440941, 44.283314, 44.707249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901913, 44.719421, 44.623001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728233, 44.369350, 44.708355>,  <34.624027, 44.159306, 44.759567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.728233, 44.369350, 44.708355>,  <34.901913, 44.719421, 44.623001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728233, 44.369350, 44.708355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628160, 0.463941, 0.624639,
		-0.645668, 0.137178, -0.751196,
		-0.434197, -0.875181, 0.213382,
		34.597973, 44.106796, 44.772369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180298, 44.894901, 44.781597>,  <34.901913, 44.719421, 44.623001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180298, 44.894901, 44.781597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225182, 44.538963, 44.958496>,  <34.252113, 44.325401, 45.064636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225182, 44.538963, 44.958496>,  <34.180298, 44.894901, 44.781597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225182, 44.538963, 44.958496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333271, 0.385580, 0.860383,
		-0.936129, -0.243935, -0.253293,
		0.112213, -0.889845, 0.442249,
		34.258846, 44.272011, 45.091171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570087, 44.783546, 45.059620>,  <34.180298, 44.894901, 44.781597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570087, 44.783546, 45.059620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835423, 44.558559, 45.257050>,  <33.994625, 44.423569, 45.375507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835423, 44.558559, 45.257050>,  <33.570087, 44.783546, 45.059620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835423, 44.558559, 45.257050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528771, 0.114399, 0.841019,
		-0.529508, -0.818869, -0.221529,
		0.663342, -0.562465, 0.493570,
		34.034424, 44.389820, 45.405121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141819, 44.622829, 45.636108>,  <33.570087, 44.783546, 45.059620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141819, 44.622829, 45.636108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490959, 44.480637, 45.769829>,  <33.700443, 44.395321, 45.850060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.490959, 44.480637, 45.769829>,  <33.141819, 44.622829, 45.636108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490959, 44.480637, 45.769829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368412, -0.030810, 0.929152,
		-0.319999, -0.934175, -0.157857,
		0.872854, -0.355484, 0.334302,
		33.752815, 44.373993, 45.870121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023174, 43.884682, 46.062588>,  <33.141819, 44.622829, 45.636108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023174, 43.884682, 46.062588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361954, 44.057781, 46.186134>,  <33.565224, 44.161640, 46.260262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.361954, 44.057781, 46.186134>,  <33.023174, 43.884682, 46.062588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361954, 44.057781, 46.186134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305789, -0.078743, 0.948837,
		0.434932, -0.898068, 0.065639,
		0.846952, 0.432752, 0.308867,
		33.616039, 44.187607, 46.278793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153969, 43.555275, 46.716072>,  <33.023174, 43.884682, 46.062588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153969, 43.555275, 46.716072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408798, 43.863575, 46.719704>,  <33.561695, 44.048553, 46.721882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.408798, 43.863575, 46.719704>,  <33.153969, 43.555275, 46.716072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408798, 43.863575, 46.719704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113877, 0.082467, 0.990066,
		0.762342, -0.631782, 0.140308,
		0.637077, 0.770747, 0.009077,
		33.599922, 44.094799, 46.722427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714851, 43.444553, 47.254612>,  <33.153969, 43.555275, 46.716072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714851, 43.444553, 47.254612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664066, 43.836403, 47.192371>,  <33.633595, 44.071514, 47.155025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.664066, 43.836403, 47.192371>,  <33.714851, 43.444553, 47.254612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664066, 43.836403, 47.192371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001330, 0.157038, 0.987592,
		0.991907, 0.125176, -0.021241,
		-0.126959, 0.979627, -0.155601,
		33.625980, 44.130291, 47.145691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121761, 43.734810, 47.744175>,  <33.714851, 43.444553, 47.254612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121761, 43.734810, 47.744175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903183, 44.055161, 47.646198>,  <33.772038, 44.247372, 47.587414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903183, 44.055161, 47.646198>,  <34.121761, 43.734810, 47.744175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903183, 44.055161, 47.646198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110057, 0.358600, 0.926981,
		0.830234, 0.479584, -0.284096,
		-0.546442, 0.800878, -0.244940,
		33.739250, 44.295425, 47.572716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419884, 44.290741, 48.088085>,  <34.121761, 43.734810, 47.744175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419884, 44.290741, 48.088085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059353, 44.447357, 48.014000>,  <33.843033, 44.541328, 47.969551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059353, 44.447357, 48.014000>,  <34.419884, 44.290741, 48.088085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059353, 44.447357, 48.014000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012891, 0.403163, 0.915037,
		0.432948, 0.827135, -0.358334,
		-0.901326, 0.391545, -0.185211,
		33.788956, 44.564819, 47.958435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462349, 45.045654, 48.216141>,  <34.419884, 44.290741, 48.088085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462349, 45.045654, 48.216141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079067, 44.937103, 48.252369>,  <33.849098, 44.871971, 48.274105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079067, 44.937103, 48.252369>,  <34.462349, 45.045654, 48.216141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079067, 44.937103, 48.252369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027515, 0.402518, 0.914999,
		-0.284768, 0.874261, -0.393160,
		-0.958201, -0.271381, 0.090569,
		33.791607, 44.855690, 48.279541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103798, 45.552567, 48.624012>,  <34.462349, 45.045654, 48.216141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103798, 45.552567, 48.624012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845997, 45.247234, 48.641624>,  <33.691319, 45.064034, 48.652191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845997, 45.247234, 48.641624>,  <34.103798, 45.552567, 48.624012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845997, 45.247234, 48.641624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245855, 0.261421, 0.933389,
		-0.723999, 0.590744, -0.356156,
		-0.644500, -0.763335, 0.044031,
		33.652645, 45.018234, 48.654835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540684, 45.874104, 48.844315>,  <34.103798, 45.552567, 48.624012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540684, 45.874104, 48.844315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503143, 45.489384, 48.947174>,  <33.480621, 45.258553, 49.008892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503143, 45.489384, 48.947174>,  <33.540684, 45.874104, 48.844315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503143, 45.489384, 48.947174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259184, 0.272987, 0.926446,
		-0.961258, 0.020294, -0.274903,
		-0.093847, -0.961803, 0.257151,
		33.474991, 45.200844, 49.024319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924545, 45.824329, 49.215549>,  <33.540684, 45.874104, 48.844315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924545, 45.824329, 49.215549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121845, 45.490894, 49.315022>,  <33.240227, 45.290833, 49.374706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121845, 45.490894, 49.315022>,  <32.924545, 45.824329, 49.215549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121845, 45.490894, 49.315022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179995, 0.181890, 0.966705,
		-0.851062, -0.521589, -0.060324,
		0.493250, -0.833584, 0.248683,
		33.269821, 45.240818, 49.389626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459888, 45.432091, 49.674606>,  <32.924545, 45.824329, 49.215549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459888, 45.432091, 49.674606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822964, 45.279491, 49.744537>,  <33.040810, 45.187931, 49.786495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822964, 45.279491, 49.744537>,  <32.459888, 45.432091, 49.674606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822964, 45.279491, 49.744537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172523, 0.040526, 0.984172,
		-0.382545, -0.923481, -0.029032,
		0.907687, -0.381498, 0.174824,
		33.095268, 45.165043, 49.796986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445404, 44.928341, 50.163105>,  <32.459888, 45.432091, 49.674606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445404, 44.928341, 50.163105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.831333, 45.031563, 50.183239>,  <33.062889, 45.093494, 50.195320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.831333, 45.031563, 50.183239>,  <32.445404, 44.928341, 50.163105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831333, 45.031563, 50.183239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017073, -0.129533, 0.991428,
		0.262361, -0.957408, -0.120570,
		0.964818, 0.258054, 0.050330,
		33.120777, 45.108978, 50.198338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646038, 44.953884, 50.351688>,  <32.445404, 44.928341, 50.163105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646038, 44.953884, 50.351688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398209, 45.264881, 50.394833>,  <31.249510, 45.451481, 50.420719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398209, 45.264881, 50.394833>,  <31.646038, 44.953884, 50.351688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398209, 45.264881, 50.394833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614145, 0.565739, -0.550241,
		-0.488828, -0.274674, -0.828010,
		-0.619575, 0.777492, 0.107859,
		31.212336, 45.498127, 50.427189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316380, 45.213947, 49.710732>,  <31.646038, 44.953884, 50.351688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316380, 45.213947, 49.710732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928785, 45.118343, 49.735855>,  <30.696230, 45.060982, 49.750927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928785, 45.118343, 49.735855>,  <31.316380, 45.213947, 49.710732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928785, 45.118343, 49.735855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081266, -0.548191, -0.832395,
		0.233381, -0.801474, 0.550612,
		-0.968983, -0.239011, 0.062805,
		30.638090, 45.046638, 49.754696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240486, 44.496586, 49.575993>,  <31.316380, 45.213947, 49.710732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240486, 44.496586, 49.575993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.865122, 44.619869, 49.513519>,  <30.639904, 44.693840, 49.476036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.865122, 44.619869, 49.513519>,  <31.240486, 44.496586, 49.575993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865122, 44.619869, 49.513519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027633, -0.517507, -0.855233,
		-0.344415, -0.798244, 0.494151,
		-0.938410, 0.308210, -0.156179,
		30.583599, 44.712334, 49.466667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873604, 43.892891, 49.448658>,  <31.240486, 44.496586, 49.575993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873604, 43.892891, 49.448658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.675312, 44.210754, 49.308502>,  <30.556337, 44.401474, 49.224411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.675312, 44.210754, 49.308502>,  <30.873604, 43.892891, 49.448658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675312, 44.210754, 49.308502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023084, -0.415364, -0.909362,
		-0.868170, -0.442709, 0.224252,
		-0.495729, 0.794658, -0.350387,
		30.526594, 44.449150, 49.203384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390772, 43.544220, 49.018265>,  <30.873604, 43.892891, 49.448658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390772, 43.544220, 49.018265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.362247, 43.922768, 48.892212>,  <30.345133, 44.149895, 48.816582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.362247, 43.922768, 48.892212>,  <30.390772, 43.544220, 49.018265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362247, 43.922768, 48.892212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078389, -0.309644, -0.947616,
		-0.994369, -0.092278, -0.052103,
		-0.071310, 0.946365, -0.315134,
		30.340855, 44.206676, 48.797672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952805, 43.517933, 48.483486>,  <30.390772, 43.544220, 49.018265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952805, 43.517933, 48.483486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.163866, 43.851093, 48.416729>,  <30.290503, 44.050991, 48.376675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.163866, 43.851093, 48.416729>,  <29.952805, 43.517933, 48.483486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163866, 43.851093, 48.416729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325046, -0.379486, -0.866219,
		-0.784810, 0.402816, -0.470969,
		0.527653, 0.832905, -0.166890,
		30.322163, 44.100964, 48.366661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938747, 43.549984, 47.860928>,  <29.952805, 43.517933, 48.483486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938747, 43.549984, 47.860928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232368, 43.814579, 47.922386>,  <30.408541, 43.973335, 47.959259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232368, 43.814579, 47.922386>,  <29.938747, 43.549984, 47.860928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232368, 43.814579, 47.922386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328236, -0.147534, -0.933003,
		-0.594498, 0.735305, -0.325420,
		0.734053, 0.661483, 0.153645,
		30.452583, 44.013023, 47.968479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064194, 44.006741, 47.160774>,  <29.938747, 43.549984, 47.860928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064194, 44.006741, 47.160774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395100, 43.996899, 47.385281>,  <30.593643, 43.990993, 47.519985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395100, 43.996899, 47.385281>,  <30.064194, 44.006741, 47.160774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395100, 43.996899, 47.385281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523281, -0.329847, -0.785734,
		0.204465, 0.943714, -0.259997,
		0.827267, -0.024604, 0.561270,
		30.643280, 43.989517, 47.553661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565769, 44.522144, 46.925079>,  <30.064194, 44.006741, 47.160774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565769, 44.522144, 46.925079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.743652, 44.213360, 47.106762>,  <30.850382, 44.028088, 47.215771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.743652, 44.213360, 47.106762>,  <30.565769, 44.522144, 46.925079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743652, 44.213360, 47.106762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471484, -0.229405, -0.851514,
		0.761535, 0.592830, 0.261949,
		0.444710, -0.771963, 0.454210,
		30.877066, 43.981770, 47.243027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327744, 44.585114, 46.838402>,  <30.565769, 44.522144, 46.925079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327744, 44.585114, 46.838402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260641, 44.202770, 46.934887>,  <31.220379, 43.973362, 46.992779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260641, 44.202770, 46.934887>,  <31.327744, 44.585114, 46.838402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260641, 44.202770, 46.934887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734284, -0.284419, -0.616387,
		0.657787, 0.073718, 0.749587,
		-0.167758, -0.955862, 0.241217,
		31.210314, 43.916012, 47.007252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983862, 44.322742, 46.940033>,  <31.327744, 44.585114, 46.838402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983862, 44.322742, 46.940033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757662, 44.001762, 46.863838>,  <31.621943, 43.809174, 46.818123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757662, 44.001762, 46.863838>,  <31.983862, 44.322742, 46.940033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757662, 44.001762, 46.863838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768582, -0.428964, -0.474628,
		0.299155, -0.414803, 0.859328,
		-0.565498, -0.802451, -0.190483,
		31.588013, 43.761028, 46.806694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429554, 43.898979, 46.809559>,  <31.983862, 44.322742, 46.940033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429554, 43.898979, 46.809559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.111221, 43.706554, 46.662457>,  <31.920223, 43.591099, 46.574196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.111221, 43.706554, 46.662457>,  <32.429554, 43.898979, 46.809559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111221, 43.706554, 46.662457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576207, -0.414952, -0.704131,
		0.186128, -0.772269, 0.607419,
		-0.795828, -0.481057, -0.367753,
		31.872473, 43.562237, 46.552132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550133, 43.076202, 46.788986>,  <32.429554, 43.898979, 46.809559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550133, 43.076202, 46.788986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.266014, 43.155994, 46.518967>,  <32.095543, 43.203869, 46.356956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.266014, 43.155994, 46.518967>,  <32.550133, 43.076202, 46.788986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266014, 43.155994, 46.518967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499273, -0.533247, -0.682916,
		-0.496190, -0.822106, 0.279173,
		-0.710297, 0.199473, -0.675047,
		32.052925, 43.215836, 46.316452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469948, 42.419704, 46.492168>,  <32.550133, 43.076202, 46.788986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469948, 42.419704, 46.492168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284496, 42.659874, 46.231541>,  <32.173225, 42.803974, 46.075165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284496, 42.659874, 46.231541>,  <32.469948, 42.419704, 46.492168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284496, 42.659874, 46.231541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433384, -0.487738, -0.757819,
		-0.772807, -0.633726, -0.034085,
		-0.463625, 0.600420, -0.651574,
		32.145409, 42.840000, 46.036068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184586, 42.036438, 45.983383>,  <32.469948, 42.419704, 46.492168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184586, 42.036438, 45.983383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212315, 42.388977, 45.796444>,  <32.228951, 42.600502, 45.684280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212315, 42.388977, 45.796444>,  <32.184586, 42.036438, 45.983383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212315, 42.388977, 45.796444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413998, -0.451646, -0.790330,
		-0.907634, -0.138695, -0.396187,
		0.069321, 0.881351, -0.467349,
		32.233112, 42.653381, 45.656239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954012, 41.869900, 45.272312>,  <32.184586, 42.036438, 45.983383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954012, 41.869900, 45.272312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130379, 42.225525, 45.223068>,  <32.236198, 42.438900, 45.193520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130379, 42.225525, 45.223068>,  <31.954012, 41.869900, 45.272312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130379, 42.225525, 45.223068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404265, -0.319183, -0.857142,
		-0.801349, 0.328160, -0.500151,
		0.440919, 0.889063, -0.123114,
		32.262653, 42.492245, 45.186134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668051, 42.213120, 44.684887>,  <31.954012, 41.869900, 45.272312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668051, 42.213120, 44.684887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036461, 42.356087, 44.746807>,  <32.257507, 42.441868, 44.783958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036461, 42.356087, 44.746807>,  <31.668051, 42.213120, 44.684887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036461, 42.356087, 44.746807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314836, -0.449158, -0.836143,
		-0.229325, 0.818846, -0.526215,
		0.921026, 0.357419, 0.154799,
		32.312767, 42.463314, 44.793247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836691, 42.684814, 44.070107>,  <31.668051, 42.213120, 44.684887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836691, 42.684814, 44.070107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.197990, 42.589851, 44.213093>,  <32.414768, 42.532875, 44.298885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.197990, 42.589851, 44.213093>,  <31.836691, 42.684814, 44.070107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197990, 42.589851, 44.213093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286231, -0.287315, -0.914069,
		0.319709, 0.927949, -0.191564,
		0.903248, -0.237404, 0.357465,
		32.468964, 42.518631, 44.320332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205467, 42.785351, 43.552013>,  <31.836691, 42.684814, 44.070107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205467, 42.785351, 43.552013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458740, 42.568844, 43.773323>,  <32.610703, 42.438938, 43.906109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.458740, 42.568844, 43.773323>,  <32.205467, 42.785351, 43.552013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458740, 42.568844, 43.773323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404298, -0.378261, -0.832743,
		0.660020, 0.750964, -0.020673,
		0.633180, -0.541269, 0.553273,
		32.648693, 42.406464, 43.939304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941292, 42.879463, 43.324547>,  <32.205467, 42.785351, 43.552013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941292, 42.879463, 43.324547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933430, 42.523571, 43.506973>,  <32.928711, 42.310036, 43.616428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933430, 42.523571, 43.506973>,  <32.941292, 42.879463, 43.324547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933430, 42.523571, 43.506973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274746, -0.443399, -0.853178,
		0.961316, 0.108530, 0.253167,
		-0.019659, -0.889730, 0.456064,
		32.927532, 42.256653, 43.643791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585735, 42.585297, 43.112930>,  <32.941292, 42.879463, 43.324547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585735, 42.585297, 43.112930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.391441, 42.262264, 43.246723>,  <33.274864, 42.068447, 43.327000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.391441, 42.262264, 43.246723>,  <33.585735, 42.585297, 43.112930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391441, 42.262264, 43.246723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167509, -0.461565, -0.871148,
		0.857906, -0.367118, 0.359475,
		-0.485735, -0.807578, 0.334483,
		33.245720, 42.019989, 43.347069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.199322, 37.250706, 28.013811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821609, 37.130898, 28.068394>,  <41.594982, 37.059013, 28.101143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821609, 37.130898, 28.068394>,  <42.199322, 37.250706, 28.013811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821609, 37.130898, 28.068394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130539, 0.039778, 0.990645,
		-0.302142, 0.953262, 0.001537,
		-0.944283, -0.299516, 0.136456,
		41.538326, 37.041042, 28.109331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019112, 37.524254, 28.602551>,  <42.199322, 37.250706, 28.013811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019112, 37.524254, 28.602551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.770405, 37.211945, 28.577881>,  <41.621181, 37.024559, 28.563078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.770405, 37.211945, 28.577881>,  <42.019112, 37.524254, 28.602551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770405, 37.211945, 28.577881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084576, -0.145222, 0.985778,
		-0.778624, 0.607706, 0.156328,
		-0.621765, -0.780772, -0.061676,
		41.583874, 36.977715, 28.559378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416451, 37.656445, 29.094973>,  <42.019112, 37.524254, 28.602551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416451, 37.656445, 29.094973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.477688, 37.264977, 29.040184>,  <41.514431, 37.030094, 29.007311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.477688, 37.264977, 29.040184>,  <41.416451, 37.656445, 29.094973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477688, 37.264977, 29.040184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344789, -0.076999, 0.935517,
		-0.926113, -0.190444, 0.325648,
		0.153090, -0.978674, -0.136973,
		41.523613, 36.971375, 28.999092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181515, 37.381290, 29.668943>,  <41.416451, 37.656445, 29.094973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181515, 37.381290, 29.668943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.391685, 37.074936, 29.520702>,  <41.517788, 36.891125, 29.431759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.391685, 37.074936, 29.520702>,  <41.181515, 37.381290, 29.668943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391685, 37.074936, 29.520702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270121, -0.262881, 0.926244,
		-0.806820, -0.586783, 0.068756,
		0.525429, -0.765885, -0.370600,
		41.549313, 36.845169, 29.409523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998005, 36.677273, 30.078003>,  <41.181515, 37.381290, 29.668943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998005, 36.677273, 30.078003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352261, 36.600945, 29.908663>,  <41.564816, 36.555149, 29.807058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352261, 36.600945, 29.908663>,  <40.998005, 36.677273, 30.078003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352261, 36.600945, 29.908663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277446, -0.513626, 0.811919,
		-0.372372, -0.836527, -0.401948,
		0.885643, -0.190817, -0.423351,
		41.617954, 36.543697, 29.781658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151176, 36.021988, 30.293650>,  <40.998005, 36.677273, 30.078003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151176, 36.021988, 30.293650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.496563, 36.166100, 30.152443>,  <41.703796, 36.252567, 30.067719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.496563, 36.166100, 30.152443>,  <41.151176, 36.021988, 30.293650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496563, 36.166100, 30.152443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502102, -0.547195, 0.669680,
		0.048101, -0.755499, -0.653382,
		0.863470, 0.360277, -0.353017,
		41.755604, 36.274181, 30.046537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502419, 35.427391, 30.192204>,  <41.151176, 36.021988, 30.293650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502419, 35.427391, 30.192204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796814, 35.697620, 30.209700>,  <41.973454, 35.859756, 30.220198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796814, 35.697620, 30.209700>,  <41.502419, 35.427391, 30.192204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796814, 35.697620, 30.209700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518750, -0.604297, 0.604751,
		0.434987, -0.422402, -0.795213,
		0.735993, 0.675575, 0.043740,
		42.017612, 35.900291, 30.222822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024948, 35.099167, 30.194891>,  <41.502419, 35.427391, 30.192204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024948, 35.099167, 30.194891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177937, 35.437027, 30.344711>,  <42.269730, 35.639744, 30.434603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177937, 35.437027, 30.344711>,  <42.024948, 35.099167, 30.194891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177937, 35.437027, 30.344711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626612, -0.535021, 0.566666,
		0.679026, 0.017965, -0.733895,
		0.382469, 0.844648, 0.374550,
		42.292679, 35.690422, 30.457077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740150, 34.973499, 30.145254>,  <42.024948, 35.099167, 30.194891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740150, 34.973499, 30.145254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.677185, 35.248249, 30.429066>,  <42.639404, 35.413097, 30.599352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.677185, 35.248249, 30.429066>,  <42.740150, 34.973499, 30.145254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677185, 35.248249, 30.429066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496552, -0.565999, 0.658090,
		0.853614, 0.455910, -0.251970,
		-0.157415, 0.686871, 0.709527,
		42.629959, 35.454311, 30.641924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430225, 35.135185, 30.481276>,  <42.740150, 34.973499, 30.145254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430225, 35.135185, 30.481276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153526, 35.246380, 30.747871>,  <42.987507, 35.313095, 30.907829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153526, 35.246380, 30.747871>,  <43.430225, 35.135185, 30.481276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153526, 35.246380, 30.747871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444659, -0.563254, 0.696436,
		0.569004, 0.778118, 0.266020,
		-0.691746, 0.277987, 0.666491,
		42.946003, 35.329777, 30.947819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758877, 35.064762, 31.080807>,  <43.430225, 35.135185, 30.481276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758877, 35.064762, 31.080807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.377476, 35.065994, 31.201353>,  <43.148636, 35.066734, 31.273682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.377476, 35.065994, 31.201353>,  <43.758877, 35.064762, 31.080807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377476, 35.065994, 31.201353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237428, -0.608234, 0.757417,
		0.185631, 0.793752, 0.579223,
		-0.953504, 0.003076, 0.301365,
		43.091423, 35.066917, 31.291763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753063, 35.506805, 31.583038>,  <43.758877, 35.064762, 31.080807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753063, 35.506805, 31.583038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425713, 35.287716, 31.652611>,  <43.229301, 35.156261, 31.694353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425713, 35.287716, 31.652611>,  <43.753063, 35.506805, 31.583038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425713, 35.287716, 31.652611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385795, -0.299314, 0.872682,
		-0.425930, 0.781286, 0.456262,
		-0.818380, -0.547725, 0.173930,
		43.180199, 35.123398, 31.704790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617546, 35.733948, 32.305599>,  <43.753063, 35.506805, 31.583038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617546, 35.733948, 32.305599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445049, 35.382519, 32.223492>,  <43.341553, 35.171661, 32.174229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445049, 35.382519, 32.223492>,  <43.617546, 35.733948, 32.305599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445049, 35.382519, 32.223492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481849, -0.416618, 0.770877,
		-0.762793, 0.233525, 0.603004,
		-0.431241, -0.878576, -0.205270,
		43.315678, 35.118946, 32.161911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302856, 35.548820, 32.903728>,  <43.617546, 35.733948, 32.305599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302856, 35.548820, 32.903728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336842, 35.199776, 32.711342>,  <43.357231, 34.990349, 32.595909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336842, 35.199776, 32.711342>,  <43.302856, 35.548820, 32.903728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336842, 35.199776, 32.711342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472457, -0.389714, 0.790511,
		-0.877249, -0.294397, 0.379162,
		0.084959, -0.872613, -0.480967,
		43.362328, 34.937992, 32.567051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891724, 34.949291, 33.309147>,  <43.302856, 35.548820, 32.903728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891724, 34.949291, 33.309147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183239, 34.789898, 33.086407>,  <43.358147, 34.694263, 32.952763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183239, 34.789898, 33.086407>,  <42.891724, 34.949291, 33.309147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183239, 34.789898, 33.086407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493117, -0.258811, 0.830573,
		-0.475089, -0.879903, 0.007882,
		0.728784, -0.398483, -0.556853,
		43.401875, 34.670353, 32.919350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076118, 34.382957, 33.673557>,  <42.891724, 34.949291, 33.309147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076118, 34.382957, 33.673557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387470, 34.416618, 33.424706>,  <43.574280, 34.436817, 33.275394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.387470, 34.416618, 33.424706>,  <43.076118, 34.382957, 33.673557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387470, 34.416618, 33.424706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608405, -0.345504, 0.714472,
		-0.154821, -0.934636, -0.320134,
		0.778378, 0.084156, -0.622129,
		43.620983, 34.441864, 33.238068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509453, 33.860367, 33.989552>,  <43.076118, 34.382957, 33.673557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509453, 33.860367, 33.989552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721359, 34.089054, 33.738956>,  <43.848503, 34.226265, 33.588600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721359, 34.089054, 33.738956>,  <43.509453, 33.860367, 33.989552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721359, 34.089054, 33.738956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801330, -0.095390, 0.590569,
		0.277880, -0.814885, -0.508670,
		0.529768, 0.571719, -0.626485,
		43.880291, 34.260571, 33.551010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143055, 33.554569, 33.859264>,  <43.509453, 33.860367, 33.989552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143055, 33.554569, 33.859264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231277, 33.937355, 33.783817>,  <44.284210, 34.167027, 33.738548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231277, 33.937355, 33.783817>,  <44.143055, 33.554569, 33.859264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231277, 33.937355, 33.783817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670702, -0.008394, 0.741679,
		0.708176, -0.290089, -0.643689,
		0.220556, 0.956963, -0.188619,
		44.297443, 34.224445, 33.727230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888863, 33.676365, 33.892815>,  <44.143055, 33.554569, 33.859264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888863, 33.676365, 33.892815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.750637, 34.049366, 33.934811>,  <44.667702, 34.273167, 33.960007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.750637, 34.049366, 33.934811>,  <44.888863, 33.676365, 33.892815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750637, 34.049366, 33.934811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775731, 0.220915, 0.591133,
		0.528040, 0.285719, -0.799712,
		-0.345566, 0.932503, 0.104990,
		44.646969, 34.329117, 33.966309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538071, 34.173603, 33.964897>,  <44.888863, 33.676365, 33.892815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538071, 34.173603, 33.964897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.229046, 34.391968, 34.094589>,  <45.043633, 34.522987, 34.172405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.229046, 34.391968, 34.094589>,  <45.538071, 34.173603, 33.964897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229046, 34.391968, 34.094589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555582, 0.334010, 0.761424,
		0.307375, 0.768384, -0.561344,
		-0.772560, 0.545915, 0.324233,
		44.997276, 34.555744, 34.191860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783062, 34.871918, 33.966103>,  <45.538071, 34.173603, 33.964897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783062, 34.871918, 33.966103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.470631, 34.848919, 34.214817>,  <45.283173, 34.835121, 34.364044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.470631, 34.848919, 34.214817>,  <45.783062, 34.871918, 33.966103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470631, 34.848919, 34.214817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542295, 0.431200, 0.721098,
		-0.309574, 0.900422, -0.305620,
		-0.781077, -0.057497, 0.621782,
		45.236309, 34.831669, 34.401352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710827, 35.593376, 34.309505>,  <45.783062, 34.871918, 33.966103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710827, 35.593376, 34.309505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.514977, 35.329865, 34.537991>,  <45.397469, 35.171757, 34.675083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.514977, 35.329865, 34.537991>,  <45.710827, 35.593376, 34.309505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.514977, 35.329865, 34.537991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462293, 0.359320, 0.810663,
		-0.739293, 0.660987, 0.128615,
		-0.489624, -0.658775, 0.571212,
		45.368088, 35.132233, 34.709354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894440, 35.679451, 35.069767>,  <45.710827, 35.593376, 34.309505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894440, 35.679451, 35.069767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.126606, 36.004868, 35.055485>,  <46.265903, 36.200119, 35.046917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.126606, 36.004868, 35.055485>,  <45.894440, 35.679451, 35.069767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.126606, 36.004868, 35.055485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711767, 0.485525, -0.507596,
		-0.395613, 0.320028, 0.860855,
		0.580412, 0.813540, -0.035706,
		46.300728, 36.248928, 35.044773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513660, 36.237888, 35.412052>,  <45.894440, 35.679451, 35.069767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513660, 36.237888, 35.412052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788841, 36.426079, 35.191013>,  <45.953949, 36.538994, 35.058388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.788841, 36.426079, 35.191013>,  <45.513660, 36.237888, 35.412052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.788841, 36.426079, 35.191013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725191, 0.475599, -0.497899,
		0.028567, 0.743274, 0.668377,
		0.687955, 0.470477, -0.552601,
		45.995228, 36.567223, 35.025234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350410, 36.967304, 35.460537>,  <45.513660, 36.237888, 35.412052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350410, 36.967304, 35.460537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.554405, 36.905312, 35.122097>,  <45.676804, 36.868114, 34.919033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.554405, 36.905312, 35.122097>,  <45.350410, 36.967304, 35.460537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554405, 36.905312, 35.122097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760682, 0.377967, -0.527734,
		0.401591, 0.912754, 0.074863,
		0.509987, -0.154986, -0.846104,
		45.707401, 36.858814, 34.868267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201283, 37.616089, 35.018917>,  <45.350410, 36.967304, 35.460537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201283, 37.616089, 35.018917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357708, 37.349991, 34.764507>,  <45.451561, 37.190334, 34.611862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.357708, 37.349991, 34.764507>,  <45.201283, 37.616089, 35.018917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357708, 37.349991, 34.764507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522209, 0.408668, -0.748524,
		0.757871, 0.624856, -0.187580,
		0.391062, -0.665241, -0.636023,
		45.475025, 37.150417, 34.573700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469326, 38.056847, 34.509125>,  <45.201283, 37.616089, 35.018917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469326, 38.056847, 34.509125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.417816, 37.694500, 34.347717>,  <45.386909, 37.477093, 34.250874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.417816, 37.694500, 34.347717>,  <45.469326, 38.056847, 34.509125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417816, 37.694500, 34.347717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511096, 0.409324, -0.755801,
		0.849822, 0.108906, -0.515695,
		-0.128774, -0.905866, -0.403514,
		45.379185, 37.422741, 34.226662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708378, 38.120522, 33.788956>,  <45.469326, 38.056847, 34.509125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708378, 38.120522, 33.788956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488659, 37.786278, 33.786583>,  <45.356827, 37.585732, 33.785160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.488659, 37.786278, 33.786583>,  <45.708378, 38.120522, 33.788956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.488659, 37.786278, 33.786583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542989, 0.362323, -0.757552,
		0.635166, -0.412898, -0.652748,
		-0.549298, -0.835606, -0.005936,
		45.323868, 37.535595, 33.784801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834766, 37.831345, 33.186722>,  <45.708378, 38.120522, 33.788956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834766, 37.831345, 33.186722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.468876, 37.707218, 33.290249>,  <45.249344, 37.632744, 33.352367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.468876, 37.707218, 33.290249>,  <45.834766, 37.831345, 33.186722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468876, 37.707218, 33.290249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366616, 0.367974, -0.854510,
		0.169928, -0.876527, -0.450361,
		-0.914722, -0.310315, 0.258819,
		45.194458, 37.614124, 33.367893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632771, 37.678490, 32.613533>,  <45.834766, 37.831345, 33.186722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632771, 37.678490, 32.613533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291965, 37.693096, 32.822430>,  <45.087482, 37.701862, 32.947769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.291965, 37.693096, 32.822430>,  <45.632771, 37.678490, 32.613533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291965, 37.693096, 32.822430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472881, 0.374340, -0.797654,
		-0.224627, -0.926572, -0.301673,
		-0.852013, 0.036519, 0.522246,
		45.036362, 37.704052, 32.979103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171543, 37.533962, 32.158936>,  <45.632771, 37.678490, 32.613533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171543, 37.533962, 32.158936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924938, 37.672077, 32.441971>,  <44.776974, 37.754948, 32.611794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924938, 37.672077, 32.441971>,  <45.171543, 37.533962, 32.158936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924938, 37.672077, 32.441971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663035, 0.256986, -0.703095,
		-0.424614, -0.902625, 0.070505,
		-0.616512, 0.345291, 0.707592,
		44.739983, 37.775665, 32.654247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443794, 37.178749, 32.123234>,  <45.171543, 37.533962, 32.158936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443794, 37.178749, 32.123234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390919, 37.531227, 32.304790>,  <44.359196, 37.742714, 32.413723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390919, 37.531227, 32.304790>,  <44.443794, 37.178749, 32.123234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390919, 37.531227, 32.304790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722295, 0.227967, -0.652933,
		-0.678835, -0.414151, 0.606351,
		-0.132185, 0.881198, 0.453891,
		44.351265, 37.795586, 32.440956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798649, 37.230999, 32.054428>,  <44.443794, 37.178749, 32.123234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798649, 37.230999, 32.054428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.876667, 37.607910, 32.163296>,  <43.923477, 37.834057, 32.228615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.876667, 37.607910, 32.163296>,  <43.798649, 37.230999, 32.054428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876667, 37.607910, 32.163296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727318, 0.325121, -0.604405,
		-0.658003, -0.080066, 0.748746,
		0.195041, 0.942277, 0.272164,
		43.935181, 37.890594, 32.244946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093994, 37.531555, 32.097179>,  <43.798649, 37.230999, 32.054428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093994, 37.531555, 32.097179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371708, 37.808094, 32.017170>,  <43.538334, 37.974018, 31.969166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371708, 37.808094, 32.017170>,  <43.093994, 37.531555, 32.097179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371708, 37.808094, 32.017170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538307, 0.314367, -0.781920,
		-0.477701, 0.650544, 0.590418,
		0.694282, 0.691350, -0.200019,
		43.579994, 38.015499, 31.957165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747082, 38.277996, 31.974854>,  <43.093994, 37.531555, 32.097179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747082, 38.277996, 31.974854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.104836, 38.282570, 31.795994>,  <43.319489, 38.285313, 31.688679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.104836, 38.282570, 31.795994>,  <42.747082, 38.277996, 31.974854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104836, 38.282570, 31.795994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432617, 0.276086, -0.858265,
		0.113641, 0.961065, 0.251873,
		0.894387, 0.011431, -0.447148,
		43.373150, 38.285999, 31.661850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790657, 38.943401, 31.523420>,  <42.747082, 38.277996, 31.974854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790657, 38.943401, 31.523420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069294, 38.700867, 31.370003>,  <43.236477, 38.555344, 31.277952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069294, 38.700867, 31.370003>,  <42.790657, 38.943401, 31.523420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069294, 38.700867, 31.370003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269328, 0.274496, -0.923100,
		0.664995, 0.746326, 0.027909,
		0.696595, -0.606340, -0.383545,
		43.278271, 38.518963, 31.254940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058411, 39.367638, 30.912300>,  <42.790657, 38.943401, 31.523420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058411, 39.367638, 30.912300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156994, 38.986320, 30.842451>,  <43.216145, 38.757530, 30.800541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156994, 38.986320, 30.842451>,  <43.058411, 39.367638, 30.912300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156994, 38.986320, 30.842451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061944, 0.195306, -0.978784,
		0.967172, 0.230411, 0.107185,
		0.246456, -0.953292, -0.174622,
		43.230930, 38.700333, 30.790064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643738, 39.437092, 30.516663>,  <43.058411, 39.367638, 30.912300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643738, 39.437092, 30.516663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.504307, 39.066803, 30.457966>,  <43.420647, 38.844631, 30.422749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.504307, 39.066803, 30.457966>,  <43.643738, 39.437092, 30.516663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504307, 39.066803, 30.457966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047432, 0.138938, -0.989165,
		0.936078, -0.351765, -0.004522,
		-0.348582, -0.925720, -0.146742,
		43.399731, 38.789085, 30.413942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919136, 39.202652, 29.974201>,  <43.643738, 39.437092, 30.516663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919136, 39.202652, 29.974201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632629, 38.923588, 29.968109>,  <43.460728, 38.756149, 29.964455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.632629, 38.923588, 29.968109>,  <43.919136, 39.202652, 29.974201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632629, 38.923588, 29.968109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004654, 0.026599, -0.999635,
		0.697814, -0.715932, -0.022299,
		-0.716264, -0.697663, -0.015229,
		43.417751, 38.714291, 29.963541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120689, 38.755245, 29.496964>,  <43.919136, 39.202652, 29.974201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120689, 38.755245, 29.496964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723740, 38.715786, 29.526522>,  <43.485569, 38.692112, 29.544256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.723740, 38.715786, 29.526522>,  <44.120689, 38.755245, 29.496964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723740, 38.715786, 29.526522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077365, 0.031832, -0.996495,
		0.095953, -0.994613, -0.039222,
		-0.992375, -0.098651, 0.073894,
		43.426025, 38.686192, 29.548691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997196, 38.204334, 29.089224>,  <44.120689, 38.755245, 29.496964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997196, 38.204334, 29.089224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.650982, 38.403591, 29.109995>,  <43.443253, 38.523144, 29.122458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.650982, 38.403591, 29.109995>,  <43.997196, 38.204334, 29.089224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650982, 38.403591, 29.109995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112342, -0.092063, -0.989396,
		-0.488077, -0.862195, 0.135646,
		-0.865540, 0.498140, 0.051927,
		43.391319, 38.553032, 29.125572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489399, 37.768314, 28.752960>,  <43.997196, 38.204334, 29.089224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489399, 37.768314, 28.752960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359810, 38.146713, 28.757559>,  <43.282059, 38.373753, 28.760319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359810, 38.146713, 28.757559>,  <43.489399, 37.768314, 28.752960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359810, 38.146713, 28.757559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225483, -0.065407, -0.972049,
		-0.918804, -0.317507, 0.234496,
		-0.323970, 0.945998, 0.011496,
		43.262619, 38.430511, 28.761007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.974358, 41.225769, 40.612625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853703, 40.901684, 40.813652>,  <37.781311, 40.707233, 40.934269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853703, 40.901684, 40.813652>,  <37.974358, 41.225769, 40.612625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853703, 40.901684, 40.813652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515550, -0.582011, -0.628865,
		0.802013, 0.069410, 0.593260,
		-0.301634, -0.810213, 0.502565,
		37.763214, 40.658619, 40.964420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576916, 40.791195, 40.586670>,  <37.974358, 41.225769, 40.612625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576916, 40.791195, 40.586670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282516, 40.528584, 40.652729>,  <38.105877, 40.371017, 40.692364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282516, 40.528584, 40.652729>,  <38.576916, 40.791195, 40.586670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282516, 40.528584, 40.652729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530040, -0.710596, -0.462722,
		0.421147, -0.253026, 0.870984,
		-0.735998, -0.656530, 0.165151,
		38.061718, 40.331623, 40.702274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930264, 40.155075, 40.786903>,  <38.576916, 40.791195, 40.586670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930264, 40.155075, 40.786903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559849, 40.008869, 40.749264>,  <38.337601, 39.921146, 40.726681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559849, 40.008869, 40.749264>,  <38.930264, 40.155075, 40.786903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559849, 40.008869, 40.749264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366406, -0.810754, -0.456536,
		0.090577, -0.457248, 0.884714,
		-0.926036, -0.365517, -0.094103,
		38.282040, 39.899216, 40.721031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896599, 39.424438, 41.028687>,  <38.930264, 40.155075, 40.786903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896599, 39.424438, 41.028687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629765, 39.506512, 40.742218>,  <38.469666, 39.555756, 40.570335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629765, 39.506512, 40.742218>,  <38.896599, 39.424438, 41.028687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629765, 39.506512, 40.742218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308925, -0.798589, -0.516547,
		-0.677912, -0.565823, 0.469341,
		-0.667084, 0.205182, -0.716170,
		38.429638, 39.568066, 40.527367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668400, 38.797745, 40.806900>,  <38.896599, 39.424438, 41.028687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668400, 38.797745, 40.806900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591259, 39.041252, 40.499081>,  <38.544975, 39.187359, 40.314388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591259, 39.041252, 40.499081>,  <38.668400, 38.797745, 40.806900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591259, 39.041252, 40.499081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237027, -0.732141, -0.638583,
		-0.952169, -0.305557, -0.003099,
		-0.192855, 0.608773, -0.769547,
		38.533401, 39.223885, 40.268215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142113, 38.461319, 40.427124>,  <38.668400, 38.797745, 40.806900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142113, 38.461319, 40.427124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353462, 38.713192, 40.199326>,  <38.480270, 38.864315, 40.062649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353462, 38.713192, 40.199326>,  <38.142113, 38.461319, 40.427124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353462, 38.713192, 40.199326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064185, -0.698476, -0.712749,
		-0.846585, 0.340041, -0.409470,
		0.528369, 0.629684, -0.569494,
		38.511974, 38.902096, 40.028477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017120, 38.065796, 39.828045>,  <38.142113, 38.461319, 40.427124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017120, 38.065796, 39.828045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260342, 38.362869, 39.715839>,  <38.406273, 38.541115, 39.648518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260342, 38.362869, 39.715839>,  <38.017120, 38.065796, 39.828045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260342, 38.362869, 39.715839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463970, -0.619152, -0.633548,
		-0.644206, 0.255083, -0.721063,
		0.608054, 0.742687, -0.280511,
		38.442757, 38.585674, 39.631687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839748, 38.203289, 39.191738>,  <38.017120, 38.065796, 39.828045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839748, 38.203289, 39.191738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217800, 38.313934, 39.261272>,  <38.444630, 38.380322, 39.302994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217800, 38.313934, 39.261272>,  <37.839748, 38.203289, 39.191738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217800, 38.313934, 39.261272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311814, -0.604989, -0.732639,
		-0.097491, 0.746641, -0.658044,
		0.945128, 0.276613, 0.173832,
		38.501339, 38.396919, 39.313423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029270, 38.360508, 38.540367>,  <37.839748, 38.203289, 39.191738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029270, 38.360508, 38.540367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374504, 38.334965, 38.740768>,  <38.581646, 38.319637, 38.861012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374504, 38.334965, 38.740768>,  <38.029270, 38.360508, 38.540367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374504, 38.334965, 38.740768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362713, -0.611924, -0.702843,
		0.351464, 0.788334, -0.504977,
		0.863083, -0.063862, 0.501008,
		38.633430, 38.315807, 38.891071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442360, 38.129345, 38.049870>,  <38.029270, 38.360508, 38.540367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442360, 38.129345, 38.049870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687370, 38.091248, 38.363747>,  <38.834377, 38.068390, 38.552074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687370, 38.091248, 38.363747>,  <38.442360, 38.129345, 38.049870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687370, 38.091248, 38.363747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626044, -0.547610, -0.555151,
		0.482584, 0.831295, -0.275794,
		0.612521, -0.095248, 0.784695,
		38.871128, 38.062672, 38.599155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148296, 38.126472, 37.697746>,  <38.442360, 38.129345, 38.049870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148296, 38.126472, 37.697746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167755, 37.956051, 38.059101>,  <39.179432, 37.853798, 38.275913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167755, 37.956051, 38.059101>,  <39.148296, 38.126472, 37.697746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167755, 37.956051, 38.059101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483220, -0.781529, -0.394601,
		0.874146, 0.455733, 0.167856,
		0.048648, -0.426050, 0.903390,
		39.182350, 37.828236, 38.330120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861076, 37.937271, 37.750923>,  <39.148296, 38.126472, 37.697746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861076, 37.937271, 37.750923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674011, 37.710968, 38.022575>,  <39.561771, 37.575188, 38.185566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674011, 37.710968, 38.022575>,  <39.861076, 37.937271, 37.750923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674011, 37.710968, 38.022575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473797, -0.809070, -0.347739,
		0.746197, 0.159144, 0.646424,
		-0.467661, -0.565755, 0.679127,
		39.533714, 37.541241, 38.226315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246773, 37.417328, 37.738209>,  <39.861076, 37.937271, 37.750923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246773, 37.417328, 37.738209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979229, 37.274086, 37.998791>,  <39.818703, 37.188141, 38.155140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979229, 37.274086, 37.998791>,  <40.246773, 37.417328, 37.738209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979229, 37.274086, 37.998791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255380, -0.933680, -0.251043,
		0.698148, -0.001544, 0.715952,
		-0.668858, -0.358105, 0.651453,
		39.778572, 37.166656, 38.194225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508453, 36.711082, 37.950291>,  <40.246773, 37.417328, 37.738209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508453, 36.711082, 37.950291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113819, 36.725533, 38.013973>,  <39.877037, 36.734203, 38.052181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113819, 36.725533, 38.013973>,  <40.508453, 36.711082, 37.950291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113819, 36.725533, 38.013973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035551, -0.999347, 0.006426,
		0.159332, 0.000680, 0.987225,
		-0.986585, 0.036120, 0.159203,
		39.817844, 36.736370, 38.061733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041084, 36.257217, 37.576412>,  <40.508453, 36.711082, 37.950291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041084, 36.257217, 37.576412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234344, 35.910484, 37.625664>,  <41.350300, 35.702442, 37.655212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234344, 35.910484, 37.625664>,  <41.041084, 36.257217, 37.576412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234344, 35.910484, 37.625664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584590, -0.214699, 0.782406,
		-0.651784, -0.449997, -0.610476,
		0.483149, -0.866837, 0.123126,
		41.379288, 35.650433, 37.662601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532108, 35.923706, 37.783451>,  <41.041084, 36.257217, 37.576412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532108, 35.923706, 37.783451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845482, 35.713322, 37.915871>,  <41.033504, 35.587090, 37.995323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845482, 35.713322, 37.915871>,  <40.532108, 35.923706, 37.783451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845482, 35.713322, 37.915871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448880, -0.110499, 0.886734,
		-0.429812, -0.843297, -0.322665,
		0.783434, -0.525966, 0.331045,
		41.080513, 35.555531, 38.015182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236427, 35.332142, 38.071365>,  <40.532108, 35.923706, 37.783451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236427, 35.332142, 38.071365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586216, 35.410690, 38.248783>,  <40.796089, 35.457821, 38.355232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586216, 35.410690, 38.248783>,  <40.236427, 35.332142, 38.071365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586216, 35.410690, 38.248783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453450, 0.006203, 0.891260,
		0.172270, -0.980509, 0.094470,
		0.874475, 0.196375, 0.443543,
		40.848560, 35.469601, 38.381847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305145, 34.961269, 38.668827>,  <40.236427, 35.332142, 38.071365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305145, 34.961269, 38.668827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568951, 35.255459, 38.730961>,  <40.727234, 35.431973, 38.768242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568951, 35.255459, 38.730961>,  <40.305145, 34.961269, 38.668827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568951, 35.255459, 38.730961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376907, 0.144751, 0.914871,
		0.650375, -0.661915, 0.372669,
		0.659510, 0.735470, 0.155337,
		40.766804, 35.476101, 38.777561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771778, 34.690784, 39.199390>,  <40.305145, 34.961269, 38.668827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771778, 34.690784, 39.199390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757046, 35.090511, 39.199528>,  <40.748207, 35.330349, 39.199612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757046, 35.090511, 39.199528>,  <40.771778, 34.690784, 39.199390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757046, 35.090511, 39.199528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559824, -0.020916, 0.828348,
		0.827793, 0.030317, 0.560214,
		-0.036830, 0.999322, 0.000342,
		40.745998, 35.390308, 39.199631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942299, 34.923519, 39.881195>,  <40.771778, 34.690784, 39.199390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942299, 34.923519, 39.881195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782940, 35.259506, 39.733829>,  <40.687325, 35.461098, 39.645409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782940, 35.259506, 39.733829>,  <40.942299, 34.923519, 39.881195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782940, 35.259506, 39.733829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252961, 0.285468, 0.924402,
		0.881639, 0.461477, 0.098749,
		-0.398401, 0.839969, -0.368415,
		40.663418, 35.511497, 39.623306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041721, 35.351524, 40.464123>,  <40.942299, 34.923519, 39.881195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041721, 35.351524, 40.464123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818344, 35.572384, 40.216488>,  <40.684319, 35.704899, 40.067905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818344, 35.572384, 40.216488>,  <41.041721, 35.351524, 40.464123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818344, 35.572384, 40.216488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259353, 0.592680, 0.762540,
		0.787956, 0.586400, -0.187779,
		-0.558445, 0.552147, -0.619090,
		40.650810, 35.738029, 40.030762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181076, 36.146336, 40.613239>,  <41.041721, 35.351524, 40.464123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181076, 36.146336, 40.613239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805073, 36.105045, 40.483173>,  <40.579472, 36.080273, 40.405136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805073, 36.105045, 40.483173>,  <41.181076, 36.146336, 40.613239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805073, 36.105045, 40.483173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330789, 0.508915, 0.794723,
		0.083444, 0.854605, -0.512530,
		-0.940008, -0.103225, -0.325160,
		40.523071, 36.074078, 40.385624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883736, 36.806877, 40.745159>,  <41.181076, 36.146336, 40.613239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883736, 36.806877, 40.745159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578186, 36.555271, 40.687408>,  <40.394855, 36.404308, 40.652760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578186, 36.555271, 40.687408>,  <40.883736, 36.806877, 40.745159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578186, 36.555271, 40.687408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574773, 0.561332, 0.595435,
		-0.293493, 0.537819, -0.790325,
		-0.763870, -0.629014, -0.144377,
		40.349026, 36.366566, 40.644096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244389, 37.268696, 40.740517>,  <40.883736, 36.806877, 40.745159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244389, 37.268696, 40.740517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124798, 36.894974, 40.818172>,  <40.053043, 36.670742, 40.864765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124798, 36.894974, 40.818172>,  <40.244389, 37.268696, 40.740517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124798, 36.894974, 40.818172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581150, 0.339641, 0.739533,
		-0.756886, 0.108277, -0.644515,
		-0.298978, -0.934302, 0.194144,
		40.035103, 36.614685, 40.876415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522499, 37.292294, 40.782993>,  <40.244389, 37.268696, 40.740517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522499, 37.292294, 40.782993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633957, 36.966293, 40.986221>,  <39.700832, 36.770695, 41.108158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633957, 36.966293, 40.986221>,  <39.522499, 37.292294, 40.782993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633957, 36.966293, 40.986221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558912, 0.292598, 0.775889,
		-0.781007, -0.500167, -0.373979,
		0.278649, -0.814996, 0.508070,
		39.717552, 36.721794, 41.138641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916763, 36.975918, 41.134380>,  <39.522499, 37.292294, 40.782993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916763, 36.975918, 41.134380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220192, 36.798450, 41.325264>,  <39.402248, 36.691971, 41.439793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220192, 36.798450, 41.325264>,  <38.916763, 36.975918, 41.134380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220192, 36.798450, 41.325264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424499, 0.219132, 0.878511,
		-0.494338, -0.868989, -0.022108,
		0.758572, -0.443667, 0.477210,
		39.447762, 36.665352, 41.468426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538971, 36.649807, 41.716576>,  <38.916763, 36.975918, 41.134380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538971, 36.649807, 41.716576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915501, 36.691944, 41.844830>,  <39.141418, 36.717228, 41.921783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915501, 36.691944, 41.844830>,  <38.538971, 36.649807, 41.716576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915501, 36.691944, 41.844830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336482, 0.219271, 0.915806,
		0.026165, -0.969961, 0.241850,
		0.941326, 0.105340, 0.320637,
		39.197899, 36.723545, 41.941021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668751, 36.243023, 42.323067>,  <38.538971, 36.649807, 41.716576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668751, 36.243023, 42.323067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975239, 36.499912, 42.331669>,  <39.159130, 36.654045, 42.336830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975239, 36.499912, 42.331669>,  <38.668751, 36.243023, 42.323067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975239, 36.499912, 42.331669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199450, 0.205872, 0.958038,
		0.610847, -0.738353, 0.285834,
		0.766215, 0.642224, 0.021508,
		39.205105, 36.692581, 42.338120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455391, 35.651970, 42.821335>,  <38.668751, 36.243023, 42.323067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455391, 35.651970, 42.821335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059429, 35.651348, 42.764648>,  <37.821850, 35.650974, 42.730637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059429, 35.651348, 42.764648>,  <38.455391, 35.651970, 42.821335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059429, 35.651348, 42.764648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100293, -0.714195, -0.692724,
		-0.100131, -0.699945, 0.707143,
		-0.989906, -0.001559, -0.141713,
		37.762459, 35.650879, 42.722134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355110, 34.993210, 42.717373>,  <38.455391, 35.651970, 42.821335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355110, 34.993210, 42.717373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057602, 35.194698, 42.541611>,  <37.879097, 35.315590, 42.436153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057602, 35.194698, 42.541611>,  <38.355110, 34.993210, 42.717373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057602, 35.194698, 42.541611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090693, -0.575235, -0.812945,
		-0.662256, -0.644494, 0.382158,
		-0.743769, 0.503718, -0.439404,
		37.834473, 35.345814, 42.409790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143574, 34.550186, 42.254921>,  <38.355110, 34.993210, 42.717373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143574, 34.550186, 42.254921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921104, 34.864033, 42.145336>,  <37.787624, 35.052341, 42.079586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921104, 34.864033, 42.145336>,  <38.143574, 34.550186, 42.254921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921104, 34.864033, 42.145336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055868, -0.364207, -0.929641,
		-0.829190, -0.501731, 0.246395,
		-0.556169, 0.784614, -0.273966,
		37.754253, 35.099419, 42.063145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608162, 34.251663, 41.835899>,  <38.143574, 34.550186, 42.254921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608162, 34.251663, 41.835899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687866, 34.623989, 41.713345>,  <37.735687, 34.847385, 41.639812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687866, 34.623989, 41.713345>,  <37.608162, 34.251663, 41.835899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687866, 34.623989, 41.713345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022972, -0.317011, -0.948144,
		-0.979677, 0.181890, -0.084551,
		0.199262, 0.930817, -0.306390,
		37.747646, 34.903233, 41.621429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058605, 34.348686, 41.256844>,  <37.608162, 34.251663, 41.835899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058605, 34.348686, 41.256844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361366, 34.609695, 41.242313>,  <37.543022, 34.766300, 41.233593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361366, 34.609695, 41.242313>,  <37.058605, 34.348686, 41.256844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361366, 34.609695, 41.242313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205079, -0.289927, -0.934818,
		-0.620521, 0.700113, -0.353264,
		0.756899, 0.652521, -0.036327,
		37.588436, 34.805450, 41.231415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953129, 34.767982, 40.695065>,  <37.058605, 34.348686, 41.256844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953129, 34.767982, 40.695065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348721, 34.773354, 40.754036>,  <37.586075, 34.776577, 40.789421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348721, 34.773354, 40.754036>,  <36.953129, 34.767982, 40.695065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348721, 34.773354, 40.754036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144353, -0.308373, -0.940249,
		0.032841, 0.951171, -0.306914,
		0.988981, 0.013425, 0.147432,
		37.645416, 34.777382, 40.798267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274616, 35.079388, 40.184235>,  <36.953129, 34.767982, 40.695065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274616, 35.079388, 40.184235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575924, 34.858906, 40.327766>,  <37.756706, 34.726616, 40.413887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575924, 34.858906, 40.327766>,  <37.274616, 35.079388, 40.184235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575924, 34.858906, 40.327766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237158, -0.281247, -0.929869,
		0.613473, 0.785537, -0.081130,
		0.753265, -0.551208, 0.358834,
		37.801903, 34.693542, 40.435417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742786, 35.006218, 39.575504>,  <37.274616, 35.079388, 40.184235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742786, 35.006218, 39.575504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911537, 34.748985, 39.831150>,  <38.012787, 34.594646, 39.984539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911537, 34.748985, 39.831150>,  <37.742786, 35.006218, 39.575504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911537, 34.748985, 39.831150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500090, -0.422936, -0.755669,
		0.756262, 0.638411, 0.143173,
		0.421874, -0.643083, 0.639113,
		38.038101, 34.556061, 40.022884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438259, 34.973186, 39.467552>,  <37.742786, 35.006218, 39.575504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438259, 34.973186, 39.467552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360336, 34.626965, 39.652107>,  <38.313583, 34.419231, 39.762840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360336, 34.626965, 39.652107>,  <38.438259, 34.973186, 39.467552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360336, 34.626965, 39.652107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455918, -0.496395, -0.738736,
		0.868441, 0.066445, 0.491320,
		-0.194804, -0.865550, 0.461383,
		38.301895, 34.367298, 39.790524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975471, 34.664547, 39.314678>,  <38.438259, 34.973186, 39.467552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975471, 34.664547, 39.314678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780796, 34.332901, 39.424732>,  <38.663990, 34.133915, 39.490765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780796, 34.332901, 39.424732>,  <38.975471, 34.664547, 39.314678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780796, 34.332901, 39.424732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501231, -0.522987, -0.689385,
		0.715470, -0.197615, 0.670113,
		-0.486693, -0.829116, 0.275131,
		38.634789, 34.084167, 39.507271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454575, 34.048290, 39.184830>,  <38.975471, 34.664547, 39.314678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454575, 34.048290, 39.184830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088448, 33.887733, 39.171692>,  <38.868771, 33.791397, 39.163807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088448, 33.887733, 39.171692>,  <39.454575, 34.048290, 39.184830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088448, 33.887733, 39.171692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329663, -0.699886, -0.633626,
		0.231345, -0.590796, 0.772942,
		-0.915315, -0.401397, -0.032849,
		38.813854, 33.767315, 39.161839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605610, 33.262886, 39.105022>,  <39.454575, 34.048290, 39.184830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605610, 33.262886, 39.105022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216190, 33.298344, 39.020798>,  <38.982536, 33.319618, 38.970261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216190, 33.298344, 39.020798>,  <39.605610, 33.262886, 39.105022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216190, 33.298344, 39.020798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074083, -0.749368, -0.657996,
		-0.216118, -0.656193, 0.722982,
		-0.973553, 0.088644, -0.210565,
		38.924126, 33.324936, 38.957626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.308784, 36.297718, 46.485378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029900, 36.446087, 46.240002>,  <36.862568, 36.535110, 46.092777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029900, 36.446087, 46.240002>,  <37.308784, 36.297718, 46.485378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029900, 36.446087, 46.240002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311929, -0.613491, -0.725485,
		-0.645442, -0.697167, 0.312030,
		-0.697212, 0.370928, -0.613440,
		36.820736, 36.557365, 46.055969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966213, 35.755932, 46.082993>,  <37.308784, 36.297718, 46.485378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966213, 35.755932, 46.082993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890751, 36.079918, 45.860867>,  <36.845474, 36.274307, 45.727592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890751, 36.079918, 45.860867>,  <36.966213, 35.755932, 46.082993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890751, 36.079918, 45.860867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297254, -0.491844, -0.818370,
		-0.935976, -0.319456, -0.147978,
		-0.188651, 0.809961, -0.555314,
		36.834156, 36.322906, 45.694271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688278, 35.560593, 45.545937>,  <36.966213, 35.755932, 46.082993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688278, 35.560593, 45.545937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785969, 35.923782, 45.409744>,  <36.844582, 36.141697, 45.328030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.785969, 35.923782, 45.409744>,  <36.688278, 35.560593, 45.545937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785969, 35.923782, 45.409744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197678, -0.390360, -0.899190,
		-0.949356, 0.152302, -0.274824,
		0.244228, 0.907978, -0.340484,
		36.859238, 36.196175, 45.307598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372997, 35.683201, 44.838383>,  <36.688278, 35.560593, 45.545937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372997, 35.683201, 44.838383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646587, 35.973549, 44.867485>,  <36.810741, 36.147758, 44.884949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646587, 35.973549, 44.867485>,  <36.372997, 35.683201, 44.838383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646587, 35.973549, 44.867485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144313, -0.036867, -0.988845,
		-0.715088, 0.686846, -0.129968,
		0.683976, 0.725867, 0.072758,
		36.851780, 36.191311, 44.889313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152420, 36.140015, 44.370995>,  <36.372997, 35.683201, 44.838383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152420, 36.140015, 44.370995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540607, 36.217026, 44.429142>,  <36.773518, 36.263233, 44.464031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540607, 36.217026, 44.429142>,  <36.152420, 36.140015, 44.370995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540607, 36.217026, 44.429142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149308, -0.006053, -0.988772,
		-0.189487, 0.981273, -0.034620,
		0.970465, 0.192529, 0.145364,
		36.831745, 36.274784, 44.472752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366329, 36.701939, 43.824505>,  <36.152420, 36.140015, 44.370995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366329, 36.701939, 43.824505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688972, 36.493954, 43.936951>,  <36.882557, 36.369164, 44.004417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688972, 36.493954, 43.936951>,  <36.366329, 36.701939, 43.824505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688972, 36.493954, 43.936951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257465, -0.119040, -0.958927,
		0.532068, 0.845855, 0.037853,
		0.806608, -0.519960, 0.281116,
		36.930954, 36.337967, 44.021286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016960, 37.041229, 43.550644>,  <36.366329, 36.701939, 43.824505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016960, 37.041229, 43.550644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.107738, 36.659031, 43.626026>,  <37.162205, 36.429710, 43.671257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.107738, 36.659031, 43.626026>,  <37.016960, 37.041229, 43.550644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107738, 36.659031, 43.626026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337980, -0.104211, -0.935366,
		0.913381, 0.275974, 0.299289,
		0.226948, -0.955499, 0.188458,
		37.175823, 36.372379, 43.682564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673500, 36.863964, 43.247925>,  <37.016960, 37.041229, 43.550644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673500, 36.863964, 43.247925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495049, 36.509949, 43.301098>,  <37.387978, 36.297539, 43.333000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495049, 36.509949, 43.301098>,  <37.673500, 36.863964, 43.247925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495049, 36.509949, 43.301098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207625, -0.246828, -0.946556,
		0.870550, -0.394691, 0.293874,
		-0.446133, -0.885040, 0.132929,
		37.361210, 36.244438, 43.340977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207603, 36.338490, 42.970062>,  <37.673500, 36.863964, 43.247925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207603, 36.338490, 42.970062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862141, 36.137001, 42.977673>,  <37.654861, 36.016109, 42.982239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862141, 36.137001, 42.977673>,  <38.207603, 36.338490, 42.970062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862141, 36.137001, 42.977673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329102, -0.592049, -0.735643,
		0.381821, -0.629083, 0.677102,
		-0.863658, -0.503719, 0.019024,
		37.603043, 35.985886, 42.983379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888180, 36.300964, 43.021412>,  <38.207603, 36.338490, 42.970062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888180, 36.300964, 43.021412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023361, 36.639652, 42.857044>,  <39.104469, 36.842865, 42.758423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.023361, 36.639652, 42.857044>,  <38.888180, 36.300964, 43.021412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023361, 36.639652, 42.857044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132559, 0.475074, 0.869904,
		0.931782, -0.239513, 0.272792,
		0.337950, 0.846722, -0.410916,
		39.124744, 36.893669, 42.733768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077568, 36.717926, 43.588676>,  <38.888180, 36.300964, 43.021412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077568, 36.717926, 43.588676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.072647, 36.974094, 43.281506>,  <39.069695, 37.127796, 43.097202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.072647, 36.974094, 43.281506>,  <39.077568, 36.717926, 43.588676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072647, 36.974094, 43.281506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301246, 0.729931, 0.613557,
		0.953467, 0.238882, 0.183946,
		-0.012300, 0.640419, -0.767927,
		39.068958, 37.166222, 43.051128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321266, 37.359821, 43.837662>,  <39.077568, 36.717926, 43.588676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321266, 37.359821, 43.837662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141273, 37.476238, 43.499950>,  <39.033279, 37.546089, 43.297321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141273, 37.476238, 43.499950>,  <39.321266, 37.359821, 43.837662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141273, 37.476238, 43.499950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223933, 0.878427, 0.422161,
		0.864506, 0.379027, -0.330102,
		-0.449981, 0.291040, -0.844282,
		39.006279, 37.563549, 43.246666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606201, 38.062611, 43.701366>,  <39.321266, 37.359821, 43.837662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606201, 38.062611, 43.701366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257259, 38.038956, 43.507256>,  <39.047894, 38.024761, 43.390789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257259, 38.038956, 43.507256>,  <39.606201, 38.062611, 43.701366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257259, 38.038956, 43.507256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234405, 0.921707, 0.309046,
		0.429008, 0.383350, -0.817921,
		-0.872357, -0.059142, -0.485279,
		38.995552, 38.021214, 43.361671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485466, 38.670143, 43.305298>,  <39.606201, 38.062611, 43.701366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485466, 38.670143, 43.305298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110600, 38.537655, 43.349148>,  <38.885681, 38.458160, 43.375458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110600, 38.537655, 43.349148>,  <39.485466, 38.670143, 43.305298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110600, 38.537655, 43.349148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264786, 0.879824, 0.394712,
		-0.227187, 0.340883, -0.912242,
		-0.937163, -0.331222, 0.109624,
		38.829453, 38.438290, 43.382034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982815, 39.167873, 43.047958>,  <39.485466, 38.670143, 43.305298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982815, 39.167873, 43.047958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.784756, 38.948360, 43.317375>,  <38.665920, 38.816650, 43.479027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.784756, 38.948360, 43.317375>,  <38.982815, 39.167873, 43.047958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784756, 38.948360, 43.317375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269762, 0.834046, 0.481245,
		-0.825866, 0.056592, -0.561019,
		-0.495150, -0.548785, 0.673544,
		38.636211, 38.783726, 43.519440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389214, 39.589409, 43.251125>,  <38.982815, 39.167873, 43.047958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389214, 39.589409, 43.251125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.356880, 39.313545, 43.538971>,  <38.337482, 39.148026, 43.711678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.356880, 39.313545, 43.538971>,  <38.389214, 39.589409, 43.251125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356880, 39.313545, 43.538971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262518, 0.711212, 0.652121,
		-0.961535, -0.136199, -0.238536,
		-0.080831, -0.689658, 0.719610,
		38.332630, 39.106647, 43.754852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813499, 39.768436, 43.519093>,  <38.389214, 39.589409, 43.251125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813499, 39.768436, 43.519093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987438, 39.557369, 43.810978>,  <38.091801, 39.430729, 43.986107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987438, 39.557369, 43.810978>,  <37.813499, 39.768436, 43.519093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987438, 39.557369, 43.810978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330014, 0.660575, 0.674338,
		-0.837856, -0.534046, 0.113108,
		0.434844, -0.527671, 0.729709,
		38.117889, 39.399067, 44.029892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241898, 39.795570, 44.036713>,  <37.813499, 39.768436, 43.519093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241898, 39.795570, 44.036713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594444, 39.708652, 44.204514>,  <37.805973, 39.656502, 44.305195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594444, 39.708652, 44.204514>,  <37.241898, 39.795570, 44.036713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594444, 39.708652, 44.204514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274878, 0.486316, 0.829420,
		-0.384238, -0.846333, 0.368892,
		0.881364, -0.217294, 0.419500,
		37.858852, 39.643463, 44.330364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094658, 39.513424, 44.729877>,  <37.241898, 39.795570, 44.036713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094658, 39.513424, 44.729877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455807, 39.685291, 44.735756>,  <37.672497, 39.788410, 44.739281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.455807, 39.685291, 44.735756>,  <37.094658, 39.513424, 44.729877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455807, 39.685291, 44.735756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243271, 0.482412, 0.841486,
		0.354470, -0.763325, 0.540080,
		0.902868, 0.429667, 0.014694,
		37.726665, 39.814190, 44.740166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249321, 39.531738, 45.461483>,  <37.094658, 39.513424, 44.729877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249321, 39.531738, 45.461483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506374, 39.780487, 45.282467>,  <37.660606, 39.929737, 45.175056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506374, 39.780487, 45.282467>,  <37.249321, 39.531738, 45.461483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506374, 39.780487, 45.282467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068473, 0.628408, 0.774865,
		0.763108, -0.467309, 0.446417,
		0.642633, 0.621873, -0.447545,
		37.699165, 39.967049, 45.148205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655319, 39.675068, 45.996460>,  <37.249321, 39.531738, 45.461483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655319, 39.675068, 45.996460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721958, 39.964039, 45.728027>,  <37.761940, 40.137421, 45.566967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721958, 39.964039, 45.728027>,  <37.655319, 39.675068, 45.996460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721958, 39.964039, 45.728027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064710, 0.671114, 0.738524,
		0.983900, -0.166460, 0.065056,
		0.166595, 0.722424, -0.671081,
		37.771938, 40.180767, 45.526703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273716, 40.043037, 46.160912>,  <37.655319, 39.675068, 45.996460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273716, 40.043037, 46.160912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034908, 40.286686, 45.952091>,  <37.891624, 40.432877, 45.826797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.034908, 40.286686, 45.952091>,  <38.273716, 40.043037, 46.160912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034908, 40.286686, 45.952091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126204, 0.713964, 0.688714,
		0.792236, 0.345292, -0.503125,
		-0.597021, 0.609121, -0.522051,
		37.855801, 40.469421, 45.795475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579590, 40.617779, 46.294502>,  <38.273716, 40.043037, 46.160912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579590, 40.617779, 46.294502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.224373, 40.744080, 46.160828>,  <38.011242, 40.819862, 46.080624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.224373, 40.744080, 46.160828>,  <38.579590, 40.617779, 46.294502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224373, 40.744080, 46.160828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037716, 0.674385, 0.737416,
		0.458215, 0.667460, -0.586972,
		-0.888041, 0.315757, -0.334187,
		37.957962, 40.838806, 46.060570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.179796, 40.275028, 44.785355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489182, 40.127289, 44.991398>,  <30.674812, 40.038647, 45.115025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.489182, 40.127289, 44.991398>,  <30.179796, 40.275028, 44.785355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489182, 40.127289, 44.991398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296588, -0.507326, -0.809108,
		0.560172, 0.778589, -0.282853,
		0.773461, -0.369349, 0.515110,
		30.721220, 40.016483, 45.145931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742771, 40.397655, 44.342846>,  <30.179796, 40.275028, 44.785355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742771, 40.397655, 44.342846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.861313, 40.102051, 44.584850>,  <30.932438, 39.924686, 44.730053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.861313, 40.102051, 44.584850>,  <30.742771, 40.397655, 44.342846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861313, 40.102051, 44.584850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366612, -0.496914, -0.786557,
		0.881912, 0.454903, 0.123668,
		0.296355, -0.739013, 0.605008,
		30.950220, 39.880348, 44.766354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300964, 40.180012, 44.042839>,  <30.742771, 40.397655, 44.342846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300964, 40.180012, 44.042839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.273169, 39.874687, 44.299751>,  <31.256491, 39.691494, 44.453899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.273169, 39.874687, 44.299751>,  <31.300964, 40.180012, 44.042839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273169, 39.874687, 44.299751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545654, -0.568071, -0.616082,
		0.835124, 0.307653, 0.455979,
		-0.069489, -0.763312, 0.642282,
		31.252321, 39.645695, 44.492435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963095, 39.887520, 44.236725>,  <31.300964, 40.180012, 44.042839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963095, 39.887520, 44.236725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.704073, 39.587574, 44.290943>,  <31.548660, 39.407604, 44.323475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.704073, 39.587574, 44.290943>,  <31.963095, 39.887520, 44.236725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704073, 39.587574, 44.290943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578700, -0.599653, -0.552741,
		0.495762, -0.279491, 0.822256,
		-0.647554, -0.749868, 0.135544,
		31.509808, 39.362614, 44.331608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411591, 39.307587, 44.265701>,  <31.963095, 39.887520, 44.236725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411591, 39.307587, 44.265701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.044647, 39.170605, 44.184525>,  <31.824482, 39.088417, 44.135818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.044647, 39.170605, 44.184525>,  <32.411591, 39.307587, 44.265701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044647, 39.170605, 44.184525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395454, -0.725623, -0.563105,
		0.045576, -0.596822, 0.801078,
		-0.917354, -0.342454, -0.202945,
		31.769442, 39.067867, 44.123642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428631, 38.563599, 44.248306>,  <32.411591, 39.307587, 44.265701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428631, 38.563599, 44.248306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086136, 38.610256, 44.047012>,  <31.880638, 38.638252, 43.926235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086136, 38.610256, 44.047012>,  <32.428631, 38.563599, 44.248306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086136, 38.610256, 44.047012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264639, -0.737583, -0.621239,
		-0.443645, -0.665105, 0.600678,
		-0.856239, 0.116646, -0.503238,
		31.829264, 38.645248, 43.896042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114407, 37.946045, 44.109840>,  <32.428631, 38.563599, 44.248306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114407, 37.946045, 44.109840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.940607, 38.171234, 43.828621>,  <31.836329, 38.306347, 43.659889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.940607, 38.171234, 43.828621>,  <32.114407, 37.946045, 44.109840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940607, 38.171234, 43.828621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130177, -0.733133, -0.667510,
		-0.891217, -0.381550, 0.245257,
		-0.434495, 0.562969, -0.703050,
		31.810259, 38.340126, 43.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754732, 37.466419, 43.654831>,  <32.114407, 37.946045, 44.109840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754732, 37.466419, 43.654831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773048, 37.801258, 43.436779>,  <31.784039, 38.002163, 43.305946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773048, 37.801258, 43.436779>,  <31.754732, 37.466419, 43.654831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773048, 37.801258, 43.436779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251937, -0.537744, -0.804586,
		-0.966660, -0.100497, -0.235520,
		0.045791, 0.837097, -0.545134,
		31.786785, 38.052387, 43.273239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402800, 37.299473, 42.962292>,  <31.754732, 37.466419, 43.654831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402800, 37.299473, 42.962292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668444, 37.596287, 42.925758>,  <31.827829, 37.774376, 42.903839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.668444, 37.596287, 42.925758>,  <31.402800, 37.299473, 42.962292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668444, 37.596287, 42.925758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534333, -0.556532, -0.636208,
		-0.522920, 0.373708, -0.766092,
		0.664111, 0.742034, -0.091337,
		31.867678, 37.818897, 42.898357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551718, 37.311443, 42.277039>,  <31.402800, 37.299473, 42.962292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551718, 37.311443, 42.277039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.845877, 37.546005, 42.412872>,  <32.022373, 37.686741, 42.494373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.845877, 37.546005, 42.412872>,  <31.551718, 37.311443, 42.277039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845877, 37.546005, 42.412872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616573, -0.371148, -0.694325,
		-0.281120, 0.719984, -0.634503,
		0.735397, 0.586406, 0.339586,
		32.066498, 37.721928, 42.514748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774939, 37.535793, 41.650166>,  <31.551718, 37.311443, 42.277039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774939, 37.535793, 41.650166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070988, 37.626175, 41.903515>,  <32.248619, 37.680405, 42.055523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070988, 37.626175, 41.903515>,  <31.774939, 37.535793, 41.650166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070988, 37.626175, 41.903515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662867, -0.403741, -0.630556,
		0.113238, 0.886530, -0.448599,
		0.740125, 0.225959, 0.633371,
		32.293026, 37.693962, 42.093525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340954, 37.799332, 41.295982>,  <31.774939, 37.535793, 41.650166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340954, 37.799332, 41.295982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.507496, 37.682789, 41.640484>,  <32.607422, 37.612862, 41.847187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.507496, 37.682789, 41.640484>,  <32.340954, 37.799332, 41.295982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507496, 37.682789, 41.640484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788249, -0.356411, -0.501631,
		0.453117, 0.887739, 0.081273,
		0.416351, -0.291361, 0.861255,
		32.632401, 37.595379, 41.898861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993816, 38.071301, 41.204426>,  <32.340954, 37.799332, 41.295982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993816, 38.071301, 41.204426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.002640, 37.767036, 41.463936>,  <33.007935, 37.584480, 41.619644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.002640, 37.767036, 41.463936>,  <32.993816, 38.071301, 41.204426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002640, 37.767036, 41.463936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704879, -0.448367, -0.549648,
		0.708985, 0.469434, 0.526282,
		0.022056, -0.760657, 0.648779,
		33.009258, 37.538841, 41.658569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738350, 37.895695, 41.350655>,  <32.993816, 38.071301, 41.204426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738350, 37.895695, 41.350655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.514797, 37.569218, 41.409279>,  <33.380665, 37.373329, 41.444454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.514797, 37.569218, 41.409279>,  <33.738350, 37.895695, 41.350655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514797, 37.569218, 41.409279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580224, -0.511158, -0.634080,
		0.592447, -0.269339, 0.759252,
		-0.558880, -0.816195, 0.146557,
		33.347134, 37.324360, 41.453247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278358, 38.183056, 41.689514>,  <33.738350, 37.895695, 41.350655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278358, 38.183056, 41.689514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.554188, 38.429596, 41.537403>,  <34.719685, 38.577518, 41.446136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.554188, 38.429596, 41.537403>,  <34.278358, 38.183056, 41.689514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554188, 38.429596, 41.537403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297619, 0.719870, 0.627064,
		0.660238, -0.319228, 0.679837,
		0.689571, 0.616345, -0.380278,
		34.761059, 38.614498, 41.423321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594818, 38.473915, 42.288551>,  <34.278358, 38.183056, 41.689514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594818, 38.473915, 42.288551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645054, 38.712120, 41.971165>,  <34.675194, 38.855042, 41.780731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645054, 38.712120, 41.971165>,  <34.594818, 38.473915, 42.288551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645054, 38.712120, 41.971165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332196, 0.778872, 0.531981,
		0.934812, 0.196777, 0.295643,
		0.125587, 0.595514, -0.793468,
		34.682732, 38.890774, 41.733124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992851, 39.099335, 42.590351>,  <34.594818, 38.473915, 42.288551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992851, 39.099335, 42.590351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823391, 39.206902, 42.244358>,  <34.721714, 39.271442, 42.036762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823391, 39.206902, 42.244358>,  <34.992851, 39.099335, 42.590351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823391, 39.206902, 42.244358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267709, 0.875089, 0.403177,
		0.865362, 0.402371, -0.298741,
		-0.423652, 0.268918, -0.864987,
		34.696297, 39.287579, 41.984863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118492, 39.808929, 42.561928>,  <34.992851, 39.099335, 42.590351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118492, 39.808929, 42.561928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847015, 39.774078, 42.270233>,  <34.684128, 39.753166, 42.095215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847015, 39.774078, 42.270233>,  <35.118492, 39.808929, 42.561928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847015, 39.774078, 42.270233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377627, 0.893024, 0.244755,
		0.629901, 0.441493, -0.638991,
		-0.678692, -0.087129, -0.729237,
		34.643410, 39.747940, 42.051460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003632, 40.534103, 42.178188>,  <35.118492, 39.808929, 42.561928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003632, 40.534103, 42.178188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.682369, 40.301041, 42.128460>,  <34.489613, 40.161201, 42.098621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.682369, 40.301041, 42.128460>,  <35.003632, 40.534103, 42.178188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682369, 40.301041, 42.128460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572519, 0.697078, 0.431630,
		-0.164833, 0.417839, -0.893443,
		-0.803151, -0.582660, -0.124319,
		34.441425, 40.126244, 42.091164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459206, 40.950977, 41.803589>,  <35.003632, 40.534103, 42.178188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459206, 40.950977, 41.803589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276505, 40.655720, 42.002193>,  <34.166885, 40.478565, 42.121357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.276505, 40.655720, 42.002193>,  <34.459206, 40.950977, 41.803589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276505, 40.655720, 42.002193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657381, 0.656099, 0.370652,
		-0.599355, -0.157100, -0.784916,
		-0.456753, -0.738142, 0.496511,
		34.139477, 40.434277, 42.151146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812347, 41.092480, 41.662766>,  <34.459206, 40.950977, 41.803589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812347, 41.092480, 41.662766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810783, 40.852871, 41.983055>,  <33.809845, 40.709106, 42.175228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810783, 40.852871, 41.983055>,  <33.812347, 41.092480, 41.662766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810783, 40.852871, 41.983055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800627, 0.481635, 0.356404,
		-0.599150, -0.639690, -0.481472,
		-0.003906, -0.599019, 0.800725,
		33.809612, 40.673164, 42.223274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044014, 41.000275, 41.899033>,  <33.812347, 41.092480, 41.662766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044014, 41.000275, 41.899033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.266125, 40.932087, 42.224632>,  <33.399391, 40.891174, 42.419994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.266125, 40.932087, 42.224632>,  <33.044014, 41.000275, 41.899033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266125, 40.932087, 42.224632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608621, 0.583739, 0.537428,
		-0.566783, -0.793843, 0.220386,
		0.555281, -0.170474, 0.814003,
		33.432709, 40.880943, 42.468834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595879, 40.973179, 42.503784>,  <33.044014, 41.000275, 41.899033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595879, 40.973179, 42.503784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947510, 41.010086, 42.690849>,  <33.158489, 41.032230, 42.803089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.947510, 41.010086, 42.690849>,  <32.595879, 40.973179, 42.503784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947510, 41.010086, 42.690849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427699, 0.585837, 0.688381,
		-0.210461, -0.805160, 0.554458,
		0.879079, 0.092264, 0.467662,
		33.211235, 41.037766, 42.831146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431007, 40.941124, 43.179974>,  <32.595879, 40.973179, 42.503784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431007, 40.941124, 43.179974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.772125, 41.149750, 43.169277>,  <32.976795, 41.274925, 43.162861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.772125, 41.149750, 43.169277>,  <32.431007, 40.941124, 43.179974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772125, 41.149750, 43.169277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285955, 0.509172, 0.811772,
		0.437009, -0.684625, 0.583362,
		0.852791, 0.521567, -0.026741,
		33.027962, 41.306221, 43.161255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488041, 41.061169, 43.862679>,  <32.431007, 40.941124, 43.179974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488041, 41.061169, 43.862679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738495, 41.323635, 43.694202>,  <32.888767, 41.481113, 43.593117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738495, 41.323635, 43.694202>,  <32.488041, 41.061169, 43.862679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738495, 41.323635, 43.694202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060053, 0.579168, 0.812993,
		0.777400, -0.483748, 0.402041,
		0.626133, 0.656165, -0.421195,
		32.926334, 41.520485, 43.567844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046452, 41.152584, 44.290081>,  <32.488041, 41.061169, 43.862679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046452, 41.152584, 44.290081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996567, 41.486961, 44.076294>,  <32.966637, 41.687588, 43.948021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.996567, 41.486961, 44.076294>,  <33.046452, 41.152584, 44.290081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996567, 41.486961, 44.076294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234116, 0.498666, 0.834579,
		0.964177, 0.229206, 0.133519,
		-0.124709, 0.835941, -0.534463,
		32.959152, 41.737743, 43.915955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332924, 41.699173, 44.781319>,  <33.046452, 41.152584, 44.290081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332924, 41.699173, 44.781319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.134953, 41.934998, 44.525990>,  <33.016171, 42.076492, 44.372791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.134953, 41.934998, 44.525990>,  <33.332924, 41.699173, 44.781319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134953, 41.934998, 44.525990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074165, 0.703270, 0.707044,
		0.865760, 0.397281, -0.304347,
		-0.494933, 0.589559, -0.638327,
		32.986473, 42.111866, 44.334492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660275, 42.403584, 44.818119>,  <33.332924, 41.699173, 44.781319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660275, 42.403584, 44.818119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293507, 42.445751, 44.664162>,  <33.073444, 42.471050, 44.571785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.293507, 42.445751, 44.664162>,  <33.660275, 42.403584, 44.818119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293507, 42.445751, 44.664162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293593, 0.475070, 0.829525,
		0.270301, 0.873610, -0.404651,
		-0.916919, 0.105419, -0.384898,
		33.018433, 42.477375, 44.548691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914665, 43.008396, 44.327560>,  <33.660275, 42.403584, 44.818119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914665, 43.008396, 44.327560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203278, 43.278263, 44.389801>,  <34.376446, 43.440182, 44.427143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203278, 43.278263, 44.389801>,  <33.914665, 43.008396, 44.327560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203278, 43.278263, 44.389801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448205, -0.283844, -0.847670,
		-0.527730, 0.681364, -0.507192,
		0.721536, 0.674667, 0.155598,
		34.419739, 43.480663, 44.436481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000393, 43.299324, 43.688656>,  <33.914665, 43.008396, 44.327560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000393, 43.299324, 43.688656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340378, 43.349266, 43.893387>,  <34.544369, 43.379230, 44.016224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340378, 43.349266, 43.893387>,  <34.000393, 43.299324, 43.688656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340378, 43.349266, 43.893387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507990, -0.451753, -0.733393,
		0.139652, 0.883363, -0.447400,
		0.849967, 0.124855, 0.511828,
		34.595367, 43.386723, 44.046936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633732, 43.608192, 43.193218>,  <34.000393, 43.299324, 43.688656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633732, 43.608192, 43.193218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790119, 43.427540, 43.514011>,  <34.883953, 43.319149, 43.706486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790119, 43.427540, 43.514011>,  <34.633732, 43.608192, 43.193218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790119, 43.427540, 43.514011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649440, -0.482068, -0.588080,
		0.652202, 0.750762, 0.104830,
		0.390973, -0.451627, 0.801981,
		34.907410, 43.292053, 43.754604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348309, 43.765877, 43.165920>,  <34.633732, 43.608192, 43.193218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348309, 43.765877, 43.165920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318684, 43.442650, 43.399685>,  <35.300907, 43.248714, 43.539944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.318684, 43.442650, 43.399685>,  <35.348309, 43.765877, 43.165920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318684, 43.442650, 43.399685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748150, -0.432501, -0.503203,
		0.659382, 0.399960, 0.636590,
		-0.074065, -0.808068, 0.584414,
		35.296463, 43.200230, 43.575008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955341, 43.518272, 43.233990>,  <35.348309, 43.765877, 43.165920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955341, 43.518272, 43.233990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782909, 43.175789, 43.347881>,  <35.679451, 42.970299, 43.416218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.782909, 43.175789, 43.347881>,  <35.955341, 43.518272, 43.233990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782909, 43.175789, 43.347881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742825, -0.515889, -0.426696,
		0.512233, 0.027567, 0.858404,
		-0.431078, -0.856212, 0.284733,
		35.653587, 42.918926, 43.433300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511627, 43.087692, 43.246994>,  <35.955341, 43.518272, 43.233990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511627, 43.087692, 43.246994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.205151, 42.830925, 43.258926>,  <36.021263, 42.676865, 43.266087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.205151, 42.830925, 43.258926>,  <36.511627, 43.087692, 43.246994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205151, 42.830925, 43.258926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510161, -0.635842, -0.579173,
		0.390748, -0.428541, 0.814659,
		-0.766193, -0.641917, 0.029829,
		35.975292, 42.638351, 43.267876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784012, 42.480621, 43.434120>,  <36.511627, 43.087692, 43.246994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784012, 42.480621, 43.434120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.436630, 42.346134, 43.288380>,  <36.228203, 42.265442, 43.200935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.436630, 42.346134, 43.288380>,  <36.784012, 42.480621, 43.434120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436630, 42.346134, 43.288380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487801, -0.710759, -0.506825,
		-0.088562, -0.617882, 0.781267,
		-0.868451, -0.336217, -0.364350,
		36.176094, 42.245270, 43.179073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726299, 41.737415, 43.664368>,  <36.784012, 42.480621, 43.434120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726299, 41.737415, 43.664368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507221, 41.804276, 43.336441>,  <36.375774, 41.844391, 43.139687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.507221, 41.804276, 43.336441>,  <36.726299, 41.737415, 43.664368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507221, 41.804276, 43.336441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552790, -0.663231, -0.504527,
		-0.628058, -0.729510, 0.270846,
		-0.547691, 0.167151, -0.819814,
		36.342915, 41.854420, 43.090496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571522, 41.053143, 43.412357>,  <36.726299, 41.737415, 43.664368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571522, 41.053143, 43.412357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522488, 41.302105, 43.103146>,  <36.493069, 41.451485, 42.917618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.522488, 41.302105, 43.103146>,  <36.571522, 41.053143, 43.412357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522488, 41.302105, 43.103146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508674, -0.629416, -0.587440,
		-0.852188, -0.465231, -0.239448,
		-0.122583, 0.622411, -0.773032,
		36.485714, 41.488827, 42.871235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557758, 40.583466, 42.893135>,  <36.571522, 41.053143, 43.412357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557758, 40.583466, 42.893135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563534, 40.927231, 42.688702>,  <36.566998, 41.133488, 42.566040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.563534, 40.927231, 42.688702>,  <36.557758, 40.583466, 42.893135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563534, 40.927231, 42.688702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388783, -0.475742, -0.788997,
		-0.921216, -0.187310, -0.340993,
		0.014438, 0.859409, -0.511084,
		36.567863, 41.185055, 42.535378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186375, 40.548668, 42.198315>,  <36.557758, 40.583466, 42.893135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186375, 40.548668, 42.198315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457054, 40.842590, 42.179794>,  <36.619461, 41.018944, 42.168682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.457054, 40.842590, 42.179794>,  <36.186375, 40.548668, 42.198315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457054, 40.842590, 42.179794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491889, -0.497996, -0.714175,
		-0.547838, 0.460503, -0.698434,
		0.676697, 0.734804, -0.046305,
		36.660065, 41.063030, 42.165901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162327, 40.808174, 41.491035>,  <36.186375, 40.548668, 42.198315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162327, 40.808174, 41.491035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520336, 40.905094, 41.640823>,  <36.735142, 40.963245, 41.730698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.520336, 40.905094, 41.640823>,  <36.162327, 40.808174, 41.491035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520336, 40.905094, 41.640823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445786, -0.458494, -0.768803,
		-0.014592, 0.855028, -0.518377,
		0.895021, 0.242304, 0.374469,
		36.788841, 40.977787, 41.753162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503822, 41.193638, 40.999111>,  <36.162327, 40.808174, 41.491035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503822, 41.193638, 40.999111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816483, 41.075703, 41.218964>,  <37.004078, 41.004940, 41.350876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816483, 41.075703, 41.218964>,  <36.503822, 41.193638, 40.999111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816483, 41.075703, 41.218964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354709, -0.514705, -0.780551,
		0.513031, 0.805078, -0.297739,
		0.781652, -0.294837, 0.549628,
		37.050980, 40.987251, 41.383854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114548, 41.305641, 40.598793>,  <36.503822, 41.193638, 40.999111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114548, 41.305641, 40.598793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.246494, 41.057468, 40.883400>,  <37.325661, 40.908566, 41.054165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.246494, 41.057468, 40.883400>,  <37.114548, 41.305641, 40.598793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246494, 41.057468, 40.883400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484606, -0.535525, -0.691643,
		0.810152, 0.572953, 0.124014,
		0.329866, -0.620434, 0.711513,
		37.345455, 40.871338, 41.096855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.779867, 27.032900, 36.801754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719738, 27.214466, 37.153065>,  <28.683661, 27.323406, 37.363850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719738, 27.214466, 37.153065>,  <28.779867, 27.032900, 36.801754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719738, 27.214466, 37.153065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129209, 0.871727, -0.472648,
		-0.980157, -0.184530, -0.072389,
		-0.150321, 0.453916, 0.878273,
		28.674641, 27.350641, 37.416546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180513, 27.444811, 36.662552>,  <28.779867, 27.032900, 36.801754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180513, 27.444811, 36.662552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355572, 27.630966, 36.970287>,  <28.460608, 27.742659, 37.154930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.355572, 27.630966, 36.970287>,  <28.180513, 27.444811, 36.662552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355572, 27.630966, 36.970287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183537, 0.883853, -0.430254,
		-0.880216, 0.047097, 0.472231,
		0.437646, 0.465388, 0.769337,
		28.486866, 27.770582, 37.201088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725348, 27.979120, 36.835190>,  <28.180513, 27.444811, 36.662552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725348, 27.979120, 36.835190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080755, 28.075827, 36.991184>,  <28.293999, 28.133850, 37.084782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080755, 28.075827, 36.991184>,  <27.725348, 27.979120, 36.835190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080755, 28.075827, 36.991184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186451, 0.966829, -0.174579,
		-0.419253, 0.082404, 0.904122,
		0.888517, 0.241767, 0.389982,
		28.347311, 28.148357, 37.108177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627468, 28.523542, 37.334755>,  <27.725348, 27.979120, 36.835190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627468, 28.523542, 37.334755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010981, 28.539787, 37.222263>,  <28.241087, 28.549534, 37.154766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010981, 28.539787, 37.222263>,  <27.627468, 28.523542, 37.334755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010981, 28.539787, 37.222263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070109, 0.992945, -0.095634,
		0.275364, 0.111409, 0.954863,
		0.958780, 0.040610, -0.281232,
		28.298615, 28.551970, 37.137894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970348, 29.062214, 37.817375>,  <27.627468, 28.523542, 37.334755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970348, 29.062214, 37.817375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185436, 29.020397, 37.482727>,  <28.314489, 28.995308, 37.281940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185436, 29.020397, 37.482727>,  <27.970348, 29.062214, 37.817375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185436, 29.020397, 37.482727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015922, 0.993365, -0.113894,
		0.842974, 0.047922, 0.535815,
		0.537718, -0.104541, -0.836618,
		28.346752, 28.989035, 37.231743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614756, 29.481615, 37.945366>,  <27.970348, 29.062214, 37.817375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614756, 29.481615, 37.945366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543978, 29.431330, 37.554901>,  <28.501511, 29.401159, 37.320621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.543978, 29.431330, 37.554901>,  <28.614756, 29.481615, 37.945366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543978, 29.431330, 37.554901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079240, 0.986770, -0.141443,
		0.981025, -0.102378, -0.164644,
		-0.176947, -0.125712, -0.976159,
		28.490894, 29.393616, 37.262054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879793, 30.201147, 37.648113>,  <28.614756, 29.481615, 37.945366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879793, 30.201147, 37.648113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697247, 30.019457, 37.342064>,  <28.587719, 29.910442, 37.158436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697247, 30.019457, 37.342064>,  <28.879793, 30.201147, 37.648113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697247, 30.019457, 37.342064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018536, 0.864554, -0.502197,
		0.889600, -0.215002, -0.402971,
		-0.456364, -0.454224, -0.765123,
		28.560337, 29.883190, 37.112526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289850, 30.340223, 36.998241>,  <28.879793, 30.201147, 37.648113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289850, 30.340223, 36.998241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.901121, 30.283873, 36.922649>,  <28.667883, 30.250063, 36.877293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.901121, 30.283873, 36.922649>,  <29.289850, 30.340223, 36.998241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901121, 30.283873, 36.922649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038403, 0.885663, -0.462737,
		0.232563, -0.442441, -0.866118,
		-0.971823, -0.140877, -0.188982,
		28.609573, 30.241610, 36.865955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236877, 30.580448, 36.365170>,  <29.289850, 30.340223, 36.998241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236877, 30.580448, 36.365170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849146, 30.560286, 36.461388>,  <28.616507, 30.548187, 36.519119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849146, 30.560286, 36.461388>,  <29.236877, 30.580448, 36.365170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849146, 30.560286, 36.461388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167805, 0.850847, -0.497897,
		-0.179570, -0.522990, -0.833208,
		-0.969328, -0.050409, 0.240547,
		28.558348, 30.545162, 36.533550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896099, 30.775578, 35.675438>,  <29.236877, 30.580448, 36.365170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896099, 30.775578, 35.675438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669807, 30.825703, 36.001442>,  <28.534033, 30.855778, 36.197044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.669807, 30.825703, 36.001442>,  <28.896099, 30.775578, 35.675438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669807, 30.825703, 36.001442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166603, 0.950631, -0.261810,
		-0.807586, -0.283898, -0.516921,
		-0.565728, 0.125313, 0.815014,
		28.500090, 30.863297, 36.245945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465904, 31.203630, 35.383495>,  <28.896099, 30.775578, 35.675438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465904, 31.203630, 35.383495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400333, 31.249971, 35.775352>,  <28.360991, 31.277777, 36.010468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.400333, 31.249971, 35.775352>,  <28.465904, 31.203630, 35.383495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400333, 31.249971, 35.775352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223164, 0.962979, -0.151224,
		-0.960898, -0.243412, -0.132006,
		-0.163929, 0.115852, 0.979646,
		28.351154, 31.284727, 36.069244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831707, 31.499504, 35.390079>,  <28.465904, 31.203630, 35.383495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831707, 31.499504, 35.390079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006052, 31.562050, 35.744610>,  <28.110659, 31.599577, 35.957329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006052, 31.562050, 35.744610>,  <27.831707, 31.499504, 35.390079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006052, 31.562050, 35.744610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283618, 0.958480, -0.029622,
		-0.854156, -0.238466, 0.462115,
		0.435864, 0.156366, 0.886325,
		28.136812, 31.608959, 36.010506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390488, 32.021034, 35.754570>,  <27.831707, 31.499504, 35.390079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390488, 32.021034, 35.754570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735006, 32.047825, 35.956036>,  <27.941717, 32.063900, 36.076916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735006, 32.047825, 35.956036>,  <27.390488, 32.021034, 35.754570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735006, 32.047825, 35.956036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115471, 0.991138, 0.065665,
		-0.494807, -0.114716, 0.861398,
		0.861297, 0.066976, 0.503669,
		27.993395, 32.067917, 36.107136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261406, 32.319359, 36.378269>,  <27.390488, 32.021034, 35.754570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261406, 32.319359, 36.378269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.648575, 32.398739, 36.316631>,  <27.880877, 32.446365, 36.279648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.648575, 32.398739, 36.316631>,  <27.261406, 32.319359, 36.378269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648575, 32.398739, 36.316631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177881, 0.974394, 0.137534,
		0.177444, -0.105711, 0.978437,
		0.967921, 0.198450, -0.154096,
		27.938951, 32.458275, 36.270401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451338, 32.726688, 36.887379>,  <27.261406, 32.319359, 36.378269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451338, 32.726688, 36.887379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754166, 32.800175, 36.636589>,  <27.935862, 32.844265, 36.486115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.754166, 32.800175, 36.636589>,  <27.451338, 32.726688, 36.887379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754166, 32.800175, 36.636589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022967, 0.951574, 0.306561,
		0.652931, -0.246487, 0.716188,
		0.757069, 0.183714, -0.626973,
		27.981287, 32.855289, 36.448498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910831, 33.129250, 37.319244>,  <27.451338, 32.726688, 36.887379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910831, 33.129250, 37.319244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013393, 33.197521, 36.938694>,  <28.074930, 33.238483, 36.710361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013393, 33.197521, 36.938694>,  <27.910831, 33.129250, 37.319244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013393, 33.197521, 36.938694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087744, 0.976112, 0.198764,
		0.962578, -0.134443, 0.235306,
		0.256407, 0.170679, -0.951380,
		28.090315, 33.248726, 36.653278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282185, 33.677696, 37.364960>,  <27.910831, 33.129250, 37.319244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282185, 33.677696, 37.364960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213953, 33.697201, 36.971306>,  <28.173014, 33.708904, 36.735111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213953, 33.697201, 36.971306>,  <28.282185, 33.677696, 37.364960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213953, 33.697201, 36.971306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116333, 0.992786, 0.029030,
		0.978453, -0.109536, -0.175020,
		-0.170578, 0.048765, -0.984137,
		28.162779, 33.711830, 36.676064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734396, 34.223377, 37.176552>,  <28.282185, 33.677696, 37.364960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734396, 34.223377, 37.176552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488380, 34.161232, 36.867336>,  <28.340771, 34.123947, 36.681808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488380, 34.161232, 36.867336>,  <28.734396, 34.223377, 37.176552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488380, 34.161232, 36.867336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172089, 0.983211, -0.060681,
		0.769487, 0.095710, -0.631450,
		-0.615041, -0.155359, -0.773039,
		28.303869, 34.114624, 36.635426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840328, 34.604237, 36.505276>,  <28.734396, 34.223377, 37.176552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840328, 34.604237, 36.505276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450275, 34.531410, 36.555820>,  <28.216244, 34.487717, 36.586147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.450275, 34.531410, 36.555820>,  <28.840328, 34.604237, 36.505276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450275, 34.531410, 36.555820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189865, 0.980399, -0.052626,
		-0.114301, -0.075308, -0.990588,
		-0.975134, -0.182062, 0.126358,
		28.157736, 34.476791, 36.593727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144867, 33.883518, 36.366962>,  <28.840328, 34.604237, 36.505276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144867, 33.883518, 36.366962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.419779, 34.115425, 36.542011>,  <29.584726, 34.254570, 36.647041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.419779, 34.115425, 36.542011>,  <29.144867, 33.883518, 36.366962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419779, 34.115425, 36.542011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197642, -0.728984, 0.655378,
		0.698986, -0.363937, -0.615604,
		0.687282, 0.579769, 0.437620,
		29.625963, 34.289356, 36.673298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618689, 33.429333, 36.560482>,  <29.144867, 33.883518, 36.366962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618689, 33.429333, 36.560482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695732, 33.732258, 36.810085>,  <29.741959, 33.914013, 36.959846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695732, 33.732258, 36.810085>,  <29.618689, 33.429333, 36.560482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695732, 33.732258, 36.810085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012968, -0.637824, 0.770073,
		0.981190, -0.140231, -0.132671,
		0.192609, 0.757308, 0.624008,
		29.753515, 33.959450, 36.997288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205994, 33.141449, 37.022743>,  <29.618689, 33.429333, 36.560482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205994, 33.141449, 37.022743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027273, 33.445015, 37.212234>,  <29.920040, 33.627155, 37.325932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027273, 33.445015, 37.212234>,  <30.205994, 33.141449, 37.022743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027273, 33.445015, 37.212234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196255, -0.599772, 0.775731,
		0.872841, 0.253626, 0.416919,
		-0.446802, 0.758912, 0.473730,
		29.893232, 33.672688, 37.354355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657337, 33.171932, 37.537899>,  <30.205994, 33.141449, 37.022743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657337, 33.171932, 37.537899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.303015, 33.340748, 37.615074>,  <30.090422, 33.442039, 37.661377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.303015, 33.340748, 37.615074>,  <30.657337, 33.171932, 37.537899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303015, 33.340748, 37.615074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099042, -0.578126, 0.809914,
		0.453360, 0.698319, 0.553909,
		-0.885808, 0.422043, 0.192936,
		30.037271, 33.467361, 37.672955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718464, 33.639179, 38.189030>,  <30.657337, 33.171932, 37.537899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718464, 33.639179, 38.189030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.355181, 33.491711, 38.109795>,  <30.137211, 33.403229, 38.062252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.355181, 33.491711, 38.109795>,  <30.718464, 33.639179, 38.189030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355181, 33.491711, 38.109795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066960, -0.339208, 0.938325,
		-0.413131, 0.865457, 0.283385,
		-0.908207, -0.368676, -0.198088,
		30.082718, 33.381107, 38.050369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540850, 33.494427, 38.828281>,  <30.718464, 33.639179, 38.189030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540850, 33.494427, 38.828281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234219, 33.319622, 38.640076>,  <30.050240, 33.214741, 38.527153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234219, 33.319622, 38.640076>,  <30.540850, 33.494427, 38.828281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234219, 33.319622, 38.640076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202830, -0.530421, 0.823112,
		-0.609276, 0.726414, 0.317971,
		-0.766578, -0.437009, -0.470511,
		30.004246, 33.188519, 38.498920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922640, 33.527893, 39.291908>,  <30.540850, 33.494427, 38.828281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922640, 33.527893, 39.291908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882671, 33.226894, 39.031521>,  <29.858690, 33.046295, 38.875290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.882671, 33.226894, 39.031521>,  <29.922640, 33.527893, 39.291908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882671, 33.226894, 39.031521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246571, -0.615109, 0.748895,
		-0.963960, 0.235341, -0.124082,
		-0.099922, -0.752499, -0.650969,
		29.852695, 33.001144, 38.836231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246506, 33.293682, 39.444069>,  <29.922640, 33.527893, 39.291908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246506, 33.293682, 39.444069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448338, 33.018291, 39.235683>,  <29.569437, 32.853058, 39.110653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448338, 33.018291, 39.235683>,  <29.246506, 33.293682, 39.444069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448338, 33.018291, 39.235683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180898, -0.674322, 0.715937,
		-0.844202, -0.267005, -0.464792,
		0.504578, -0.688476, -0.520963,
		29.599710, 32.811749, 39.079395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751236, 32.768173, 39.430359>,  <29.246506, 33.293682, 39.444069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751236, 32.768173, 39.430359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096170, 32.585392, 39.343124>,  <29.303131, 32.475723, 39.290783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096170, 32.585392, 39.343124>,  <28.751236, 32.768173, 39.430359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096170, 32.585392, 39.343124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188843, -0.689900, 0.698839,
		-0.469799, -0.561451, -0.681221,
		0.862338, -0.456958, -0.218088,
		29.354872, 32.448303, 39.277699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610094, 32.157753, 39.257298>,  <28.751236, 32.768173, 39.430359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610094, 32.157753, 39.257298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.004728, 32.103600, 39.293793>,  <29.241508, 32.071110, 39.315689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.004728, 32.103600, 39.293793>,  <28.610094, 32.157753, 39.257298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004728, 32.103600, 39.293793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162388, -0.871378, 0.462958,
		0.016830, -0.471564, -0.881672,
		0.986584, -0.135382, 0.091242,
		29.300703, 32.062984, 39.321167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807343, 31.380411, 39.148045>,  <28.610094, 32.157753, 39.257298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807343, 31.380411, 39.148045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.117889, 31.527220, 39.353004>,  <29.304218, 31.615305, 39.475979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.117889, 31.527220, 39.353004>,  <28.807343, 31.380411, 39.148045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117889, 31.527220, 39.353004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022739, -0.828744, 0.559166,
		0.629871, -0.422466, -0.651755,
		0.776367, 0.367022, 0.512396,
		29.350800, 31.637327, 39.506721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198290, 30.882044, 39.202396>,  <28.807343, 31.380411, 39.148045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198290, 30.882044, 39.202396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.307709, 31.091125, 39.525372>,  <29.373360, 31.216574, 39.719154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.307709, 31.091125, 39.525372>,  <29.198290, 30.882044, 39.202396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307709, 31.091125, 39.525372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107030, -0.817700, 0.565607,
		0.955885, -0.241141, -0.167736,
		0.273549, 0.522702, 0.807436,
		29.389774, 31.247936, 39.767601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845232, 30.584839, 39.529217>,  <29.198290, 30.882044, 39.202396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845232, 30.584839, 39.529217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647779, 30.801775, 39.801155>,  <29.529308, 30.931936, 39.964317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.647779, 30.801775, 39.801155>,  <29.845232, 30.584839, 39.529217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647779, 30.801775, 39.801155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210293, -0.684096, 0.698419,
		0.843864, 0.487728, 0.223640,
		-0.493630, 0.542341, 0.679850,
		29.499691, 30.964478, 40.005112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140541, 30.411819, 40.080444>,  <29.845232, 30.584839, 39.529217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140541, 30.411819, 40.080444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789204, 30.553116, 40.209274>,  <29.578402, 30.637894, 40.286572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789204, 30.553116, 40.209274>,  <30.140541, 30.411819, 40.080444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789204, 30.553116, 40.209274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012103, -0.689979, 0.723728,
		0.477878, 0.631783, 0.610313,
		-0.878343, 0.353241, 0.322079,
		29.525702, 30.659088, 40.305897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259089, 30.349237, 40.793831>,  <30.140541, 30.411819, 40.080444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259089, 30.349237, 40.793831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864645, 30.385405, 40.738091>,  <29.627979, 30.407104, 40.704647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864645, 30.385405, 40.738091>,  <30.259089, 30.349237, 40.793831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864645, 30.385405, 40.738091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163151, -0.684927, 0.710111,
		-0.031238, 0.722980, 0.690162,
		-0.986107, 0.090418, -0.139351,
		29.568813, 30.412531, 40.696285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966049, 30.383625, 41.532734>,  <30.259089, 30.349237, 40.793831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966049, 30.383625, 41.532734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643768, 30.302439, 41.310146>,  <29.450399, 30.253727, 41.176594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643768, 30.302439, 41.310146>,  <29.966049, 30.383625, 41.532734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643768, 30.302439, 41.310146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245136, -0.740973, 0.625193,
		-0.539217, 0.640128, 0.547248,
		-0.805700, -0.202965, -0.556464,
		29.402058, 30.241549, 41.143208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414045, 30.378525, 41.983425>,  <29.966049, 30.383625, 41.532734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414045, 30.378525, 41.983425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328714, 30.151411, 41.665401>,  <29.277515, 30.015142, 41.474586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.328714, 30.151411, 41.665401>,  <29.414045, 30.378525, 41.983425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328714, 30.151411, 41.665401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407937, -0.687686, 0.600562,
		-0.887738, 0.452448, -0.084919,
		-0.213325, -0.567784, -0.795056,
		29.264717, 29.981075, 41.426884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790882, 30.090450, 42.182049>,  <29.414045, 30.378525, 41.983425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790882, 30.090450, 42.182049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919720, 29.857157, 41.883762>,  <28.997023, 29.717180, 41.704792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.919720, 29.857157, 41.883762>,  <28.790882, 30.090450, 42.182049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919720, 29.857157, 41.883762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318020, -0.808580, 0.495037,
		-0.891693, 0.077704, -0.445920,
		0.322096, -0.583233, -0.745717,
		29.016348, 29.682186, 41.660046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341000, 29.512476, 42.170258>,  <28.790882, 30.090450, 42.182049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341000, 29.512476, 42.170258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662388, 29.380610, 41.971962>,  <28.855221, 29.301489, 41.852985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.662388, 29.380610, 41.971962>,  <28.341000, 29.512476, 42.170258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662388, 29.380610, 41.971962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172932, -0.926022, 0.335526,
		-0.569675, -0.183857, -0.801041,
		0.803470, -0.329666, -0.495737,
		28.903429, 29.281710, 41.823242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131502, 28.808472, 41.987099>,  <28.341000, 29.512476, 42.170258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131502, 28.808472, 41.987099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.528566, 28.800810, 41.939335>,  <28.766806, 28.796213, 41.910679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.528566, 28.800810, 41.939335>,  <28.131502, 28.808472, 41.987099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528566, 28.800810, 41.939335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027235, -0.926596, 0.375071,
		-0.117825, -0.375570, -0.919274,
		0.992661, -0.019156, -0.119405,
		28.826365, 28.795063, 41.903515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301971, 28.188667, 41.484806>,  <28.131502, 28.808472, 41.987099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301971, 28.188667, 41.484806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639517, 28.280319, 41.678879>,  <28.842043, 28.335310, 41.795322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.639517, 28.280319, 41.678879>,  <28.301971, 28.188667, 41.484806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639517, 28.280319, 41.678879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090799, -0.952177, 0.291745,
		0.528822, -0.202138, -0.824310,
		0.843862, 0.229128, 0.485178,
		28.892675, 28.349058, 41.824432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830866, 27.608450, 41.200054>,  <28.301971, 28.188667, 41.484806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830866, 27.608450, 41.200054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.971502, 27.758013, 41.543350>,  <29.055885, 27.847750, 41.749329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.971502, 27.758013, 41.543350>,  <28.830866, 27.608450, 41.200054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971502, 27.758013, 41.543350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010692, -0.918318, 0.395699,
		0.936092, -0.129948, -0.326872,
		0.351593, 0.373905, 0.858241,
		29.076981, 27.870184, 41.800823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457741, 27.211439, 41.435814>,  <28.830866, 27.608450, 41.200054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457741, 27.211439, 41.435814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252769, 27.377596, 41.736446>,  <29.129787, 27.477289, 41.916824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252769, 27.377596, 41.736446>,  <29.457741, 27.211439, 41.435814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252769, 27.377596, 41.736446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009263, -0.872495, 0.488535,
		0.858681, 0.257300, 0.443241,
		-0.512426, 0.415390, 0.751579,
		29.099041, 27.502213, 41.961922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.606754, 41.433357, 46.430813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.218334, 41.357872, 46.372227>,  <37.985283, 41.312580, 46.337074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.218334, 41.357872, 46.372227>,  <38.606754, 41.433357, 46.430813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218334, 41.357872, 46.372227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238864, 0.759880, 0.604588,
		-0.002799, 0.622070, -0.782957,
		-0.971049, -0.188713, -0.146463,
		37.927021, 41.301258, 46.328289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273674, 42.056923, 46.246155>,  <38.606754, 41.433357, 46.430813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273674, 42.056923, 46.246155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.984501, 41.832085, 46.406864>,  <37.810997, 41.697182, 46.503288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.984501, 41.832085, 46.406864>,  <38.273674, 42.056923, 46.246155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984501, 41.832085, 46.406864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306130, 0.781899, 0.543064,
		-0.619399, 0.269603, -0.737333,
		-0.722931, -0.562093, 0.401774,
		37.767620, 41.663456, 46.527397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941898, 42.576313, 46.598740>,  <38.273674, 42.056923, 46.246155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941898, 42.576313, 46.598740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729847, 42.261005, 46.723709>,  <37.602615, 42.071823, 46.798691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729847, 42.261005, 46.723709>,  <37.941898, 42.576313, 46.598740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729847, 42.261005, 46.723709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506786, 0.589956, 0.628585,
		-0.679806, 0.174898, -0.712232,
		-0.530124, -0.788265, 0.312420,
		37.570808, 42.024525, 46.817436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244259, 42.744839, 46.538704>,  <37.941898, 42.576313, 46.598740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244259, 42.744839, 46.538704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235348, 42.450230, 46.809124>,  <37.230003, 42.273464, 46.971375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235348, 42.450230, 46.809124>,  <37.244259, 42.744839, 46.538704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235348, 42.450230, 46.809124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528225, 0.582793, 0.617520,
		-0.848812, -0.343349, -0.402031,
		-0.022276, -0.736521, 0.676048,
		37.228664, 42.229275, 47.011940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556927, 42.662766, 46.726360>,  <37.244259, 42.744839, 46.538704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556927, 42.662766, 46.726360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763447, 42.517960, 47.036812>,  <36.887360, 42.431076, 47.223083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763447, 42.517960, 47.036812>,  <36.556927, 42.662766, 46.726360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763447, 42.517960, 47.036812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659549, 0.410007, 0.629992,
		-0.546284, -0.837162, -0.027076,
		0.516304, -0.362012, 0.776129,
		36.918339, 42.409355, 47.269650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984177, 42.346523, 47.119915>,  <36.556927, 42.662766, 46.726360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984177, 42.346523, 47.119915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294258, 42.388786, 47.369041>,  <36.480305, 42.414146, 47.518517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294258, 42.388786, 47.369041>,  <35.984177, 42.346523, 47.119915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294258, 42.388786, 47.369041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610106, 0.380879, 0.694767,
		-0.163808, -0.918568, 0.359722,
		0.775201, 0.105660, 0.622815,
		36.526817, 42.420483, 47.555885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684933, 42.073288, 47.722019>,  <35.984177, 42.346523, 47.119915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684933, 42.073288, 47.722019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003559, 42.294823, 47.818974>,  <36.194736, 42.427742, 47.877144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003559, 42.294823, 47.818974>,  <35.684933, 42.073288, 47.722019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003559, 42.294823, 47.818974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548803, 0.494286, 0.674164,
		0.253567, -0.670037, 0.697677,
		0.796567, 0.553833, 0.242384,
		36.242531, 42.460972, 47.891689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737377, 42.019508, 48.463516>,  <35.684933, 42.073288, 47.722019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737377, 42.019508, 48.463516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941334, 42.343773, 48.348389>,  <36.063709, 42.538330, 48.279312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941334, 42.343773, 48.348389>,  <35.737377, 42.019508, 48.463516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941334, 42.343773, 48.348389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402778, 0.520624, 0.752808,
		0.760119, -0.267921, 0.591978,
		0.509891, 0.810660, -0.287823,
		36.094299, 42.586971, 48.262043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885551, 42.233974, 49.142208>,  <35.737377, 42.019508, 48.463516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885551, 42.233974, 49.142208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978325, 42.545334, 48.908867>,  <36.033989, 42.732151, 48.768864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978325, 42.545334, 48.908867>,  <35.885551, 42.233974, 49.142208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978325, 42.545334, 48.908867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385175, 0.624178, 0.679737,
		0.893223, 0.067038, 0.444588,
		0.231934, 0.778400, -0.583351,
		36.047905, 42.778854, 48.733860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251621, 42.710423, 49.572926>,  <35.885551, 42.233974, 49.142208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251621, 42.710423, 49.572926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059124, 42.900490, 49.278275>,  <35.943626, 43.014530, 49.101482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059124, 42.900490, 49.278275>,  <36.251621, 42.710423, 49.572926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059124, 42.900490, 49.278275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385801, 0.639760, 0.664729,
		0.787125, 0.604086, -0.124556,
		-0.481239, 0.475172, -0.736628,
		35.914753, 43.043041, 49.057285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235943, 43.372875, 49.817749>,  <36.251621, 42.710423, 49.572926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235943, 43.372875, 49.817749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.988396, 43.419338, 49.507008>,  <35.839867, 43.447216, 49.320560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.988396, 43.419338, 49.507008>,  <36.235943, 43.372875, 49.817749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988396, 43.419338, 49.507008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426194, 0.781114, 0.456311,
		0.659815, 0.613490, -0.433906,
		-0.618873, 0.116153, -0.776856,
		35.802734, 43.454185, 49.273952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186050, 44.082664, 49.623112>,  <36.235943, 43.372875, 49.817749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186050, 44.082664, 49.623112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855709, 43.889458, 49.506729>,  <35.657505, 43.773533, 49.436901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.855709, 43.889458, 49.506729>,  <36.186050, 44.082664, 49.623112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855709, 43.889458, 49.506729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559679, 0.639282, 0.527331,
		-0.068705, 0.598343, -0.798289,
		-0.825857, -0.483016, -0.290958,
		35.607952, 43.744553, 49.419441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660133, 44.599220, 49.449867>,  <36.186050, 44.082664, 49.623112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660133, 44.599220, 49.449867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494564, 44.253716, 49.564819>,  <35.395222, 44.046413, 49.633789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494564, 44.253716, 49.564819>,  <35.660133, 44.599220, 49.449867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494564, 44.253716, 49.564819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607947, 0.497273, 0.618967,
		-0.677543, 0.081496, -0.730954,
		-0.413927, -0.863758, 0.287379,
		35.370384, 43.994587, 49.651031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878155, 44.733593, 49.431843>,  <35.660133, 44.599220, 49.449867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878155, 44.733593, 49.431843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964184, 44.403324, 49.640465>,  <35.015800, 44.205162, 49.765636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964184, 44.403324, 49.640465>,  <34.878155, 44.733593, 49.431843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964184, 44.403324, 49.640465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649539, 0.277864, 0.707736,
		-0.729276, -0.490981, -0.476544,
		0.215071, -0.825668, 0.521551,
		35.028706, 44.155624, 49.796928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265862, 44.685040, 49.896492>,  <34.878155, 44.733593, 49.431843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265862, 44.685040, 49.896492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885235, 44.807896, 49.890945>,  <33.656860, 44.881611, 49.887615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885235, 44.807896, 49.890945>,  <34.265862, 44.685040, 49.896492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885235, 44.807896, 49.890945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101504, -0.356419, -0.928796,
		-0.290212, -0.882402, 0.370331,
		-0.951564, 0.307138, -0.013869,
		33.599766, 44.900040, 49.886784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909260, 44.143028, 49.585957>,  <34.265862, 44.685040, 49.896492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909260, 44.143028, 49.585957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693687, 44.477081, 49.541927>,  <33.564346, 44.677513, 49.515511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.693687, 44.477081, 49.541927>,  <33.909260, 44.143028, 49.585957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693687, 44.477081, 49.541927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248217, -0.282320, -0.926652,
		-0.804950, -0.472076, 0.359443,
		-0.538928, 0.835129, -0.110076,
		33.532009, 44.727619, 49.508904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377140, 43.917137, 49.231720>,  <33.909260, 44.143028, 49.585957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377140, 43.917137, 49.231720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387581, 44.312714, 49.173321>,  <33.393845, 44.550060, 49.138283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387581, 44.312714, 49.173321>,  <33.377140, 43.917137, 49.231720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387581, 44.312714, 49.173321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120007, -0.141891, -0.982581,
		-0.992430, 0.043166, 0.114977,
		0.026099, 0.988941, -0.145997,
		33.395412, 44.609394, 49.129520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771332, 44.083809, 48.746063>,  <33.377140, 43.917137, 49.231720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771332, 44.083809, 48.746063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040401, 44.377880, 48.712536>,  <33.201843, 44.554325, 48.692421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040401, 44.377880, 48.712536>,  <32.771332, 44.083809, 48.746063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040401, 44.377880, 48.712536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099703, -0.022183, -0.994770,
		-0.733194, 0.677509, 0.058378,
		0.672670, 0.735180, -0.083814,
		33.242203, 44.598434, 48.687393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546749, 44.468292, 48.163700>,  <32.771332, 44.083809, 48.746063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546749, 44.468292, 48.163700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920841, 44.603436, 48.206028>,  <33.145298, 44.684521, 48.231422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920841, 44.603436, 48.206028>,  <32.546749, 44.468292, 48.163700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920841, 44.603436, 48.206028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119308, -0.019353, -0.992669,
		-0.333333, 0.940998, -0.058409,
		0.935230, 0.337858, 0.105818,
		33.201408, 44.704792, 48.237774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634907, 44.999786, 47.604023>,  <32.546749, 44.468292, 48.163700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634907, 44.999786, 47.604023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987972, 44.861233, 47.731094>,  <33.199814, 44.778099, 47.807335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987972, 44.861233, 47.731094>,  <32.634907, 44.999786, 47.604023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987972, 44.861233, 47.731094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260928, -0.201034, -0.944194,
		0.390920, 0.916298, -0.087064,
		0.882666, -0.346386, 0.317676,
		33.252773, 44.757317, 47.826397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125530, 45.422665, 47.328533>,  <32.634907, 44.999786, 47.604023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125530, 45.422665, 47.328533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290951, 45.063919, 47.391277>,  <33.390205, 44.848671, 47.428925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.290951, 45.063919, 47.391277>,  <33.125530, 45.422665, 47.328533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290951, 45.063919, 47.391277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141476, -0.106890, -0.984154,
		0.899421, 0.429192, 0.082680,
		0.413553, -0.896866, 0.156860,
		33.415016, 44.794861, 47.438335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699337, 45.423103, 46.952499>,  <33.125530, 45.422665, 47.328533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699337, 45.423103, 46.952499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660503, 45.028465, 47.004971>,  <33.637203, 44.791683, 47.036453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660503, 45.028465, 47.004971>,  <33.699337, 45.423103, 46.952499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660503, 45.028465, 47.004971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173616, -0.146567, -0.973846,
		0.980016, -0.071774, 0.185519,
		-0.097088, -0.986593, 0.131176,
		33.631378, 44.732487, 47.044323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284138, 45.113708, 46.791550>,  <33.699337, 45.423103, 46.952499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284138, 45.113708, 46.791550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066280, 44.778324, 46.799065>,  <33.935566, 44.577095, 46.803574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066280, 44.778324, 46.799065>,  <34.284138, 45.113708, 46.791550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066280, 44.778324, 46.799065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528710, -0.360656, -0.768370,
		0.651025, -0.408550, 0.639729,
		-0.544639, -0.838460, 0.018792,
		33.902889, 44.526787, 46.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762318, 44.658031, 46.651173>,  <34.284138, 45.113708, 46.791550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762318, 44.658031, 46.651173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408955, 44.513622, 46.531670>,  <34.196938, 44.426979, 46.459969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408955, 44.513622, 46.531670>,  <34.762318, 44.658031, 46.651173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408955, 44.513622, 46.531670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403134, -0.260454, -0.877295,
		0.238906, -0.895449, 0.375625,
		-0.883407, -0.361018, -0.298762,
		34.143932, 44.405315, 46.442039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927792, 44.140644, 46.250454>,  <34.762318, 44.658031, 46.651173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927792, 44.140644, 46.250454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.548950, 44.184631, 46.129856>,  <34.321644, 44.211025, 46.057495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.548950, 44.184631, 46.129856>,  <34.927792, 44.140644, 46.250454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548950, 44.184631, 46.129856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235241, -0.401156, -0.885288,
		-0.218305, -0.909384, 0.354067,
		-0.947103, 0.109971, -0.301498,
		34.264820, 44.217625, 46.039406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779598, 43.472256, 46.025139>,  <34.927792, 44.140644, 46.250454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779598, 43.472256, 46.025139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537781, 43.747311, 45.864296>,  <34.392689, 43.912342, 45.767792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537781, 43.747311, 45.864296>,  <34.779598, 43.472256, 46.025139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537781, 43.747311, 45.864296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196870, -0.360155, -0.911883,
		-0.771860, -0.630436, 0.082355,
		-0.604544, 0.687633, -0.402103,
		34.356419, 43.953602, 45.743664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198120, 43.175053, 45.707237>,  <34.779598, 43.472256, 46.025139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198120, 43.175053, 45.707237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.262371, 43.514355, 45.505379>,  <34.300922, 43.717934, 45.384262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.262371, 43.514355, 45.505379>,  <34.198120, 43.175053, 45.707237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262371, 43.514355, 45.505379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165278, -0.527184, -0.833523,
		-0.973079, 0.050476, -0.224875,
		0.160624, 0.848251, -0.504649,
		34.310558, 43.768829, 45.353985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062309, 42.964180, 45.080559>,  <34.198120, 43.175053, 45.707237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062309, 42.964180, 45.080559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200500, 43.325493, 44.978802>,  <34.283417, 43.542282, 44.917747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200500, 43.325493, 44.978802>,  <34.062309, 42.964180, 45.080559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200500, 43.325493, 44.978802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242790, -0.347894, -0.905551,
		-0.906474, 0.251087, -0.339500,
		0.345482, 0.903286, -0.254395,
		34.304146, 43.596478, 44.902485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456062, 43.132652, 44.954037>,  <34.062309, 42.964180, 45.080559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456062, 43.132652, 44.954037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121094, 42.924454, 44.887333>,  <32.920113, 42.799534, 44.847309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121094, 42.924454, 44.887333>,  <33.456062, 43.132652, 44.954037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121094, 42.924454, 44.887333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438450, 0.457586, 0.773548,
		-0.326320, 0.720903, -0.611404,
		-0.837423, -0.520494, -0.166760,
		32.869865, 42.768307, 44.837303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968651, 43.577507, 45.016335>,  <33.456062, 43.132652, 44.954037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968651, 43.577507, 45.016335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737053, 43.253723, 45.055416>,  <32.598095, 43.059452, 45.078865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737053, 43.253723, 45.055416>,  <32.968651, 43.577507, 45.016335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737053, 43.253723, 45.055416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530231, 0.464852, 0.709061,
		-0.619373, 0.358735, -0.698345,
		-0.578993, -0.809458, 0.097704,
		32.563354, 43.010887, 45.084728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379185, 43.855495, 45.219414>,  <32.968651, 43.577507, 45.016335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379185, 43.855495, 45.219414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301968, 43.476097, 45.319881>,  <32.255638, 43.248459, 45.380161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301968, 43.476097, 45.319881>,  <32.379185, 43.855495, 45.219414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301968, 43.476097, 45.319881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564981, 0.316740, 0.761888,
		-0.802204, 0.005173, -0.597028,
		-0.193043, -0.948498, 0.251167,
		32.244053, 43.191547, 45.395233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590973, 43.672352, 45.189556>,  <32.379185, 43.855495, 45.219414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590973, 43.672352, 45.189556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.767496, 43.420677, 45.445484>,  <31.873409, 43.269672, 45.599041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.767496, 43.420677, 45.445484>,  <31.590973, 43.672352, 45.189556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767496, 43.420677, 45.445484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604234, 0.318793, 0.730255,
		-0.663436, -0.708870, -0.239489,
		0.441308, -0.629185, 0.639823,
		31.899889, 43.231922, 45.637432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059622, 43.338589, 45.497864>,  <31.590973, 43.672352, 45.189556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059622, 43.338589, 45.497864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.364851, 43.299088, 45.753353>,  <31.547989, 43.275387, 45.906647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.364851, 43.299088, 45.753353>,  <31.059622, 43.338589, 45.497864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364851, 43.299088, 45.753353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633331, 0.082839, 0.769435,
		-0.128896, -0.991658, 0.000668,
		0.763071, -0.098753, 0.638725,
		31.593773, 43.269463, 45.944969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964283, 42.745342, 46.030708>,  <31.059622, 43.338589, 45.497864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964283, 42.745342, 46.030708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219912, 43.005234, 46.195362>,  <31.373289, 43.161167, 46.294155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.219912, 43.005234, 46.195362>,  <30.964283, 42.745342, 46.030708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219912, 43.005234, 46.195362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644091, 0.159552, 0.748124,
		0.420399, -0.743235, 0.520448,
		0.639071, 0.649726, 0.411636,
		31.411633, 43.200153, 46.318851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009802, 42.589008, 46.694420>,  <30.964283, 42.745342, 46.030708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009802, 42.589008, 46.694420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174395, 42.951992, 46.728344>,  <31.273149, 43.169785, 46.748699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174395, 42.951992, 46.728344>,  <31.009802, 42.589008, 46.694420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174395, 42.951992, 46.728344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442651, 0.117633, 0.888944,
		0.796708, -0.403327, 0.450094,
		0.411481, 0.907464, 0.084814,
		31.297838, 43.224232, 46.753788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355059, 42.081680, 47.176235>,  <31.009802, 42.589008, 46.694420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355059, 42.081680, 47.176235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.072212, 41.858253, 47.349667>,  <30.902504, 41.724197, 47.453724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.072212, 41.858253, 47.349667>,  <31.355059, 42.081680, 47.176235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072212, 41.858253, 47.349667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288077, -0.787551, -0.544770,
		0.645755, -0.260312, 0.717801,
		-0.707115, -0.558570, 0.433575,
		30.860077, 41.690681, 47.479740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651360, 41.403038, 47.467018>,  <31.355059, 42.081680, 47.176235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651360, 41.403038, 47.467018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.259834, 41.364311, 47.394848>,  <31.024920, 41.341076, 47.351543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.259834, 41.364311, 47.394848>,  <31.651360, 41.403038, 47.467018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259834, 41.364311, 47.394848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184753, -0.797495, -0.574341,
		-0.088284, -0.595506, 0.798485,
		-0.978812, -0.096817, -0.180427,
		30.966190, 41.335266, 47.340721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497725, 40.694878, 47.552204>,  <31.651360, 41.403038, 47.467018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497725, 40.694878, 47.552204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215252, 40.849834, 47.315144>,  <31.045769, 40.942810, 47.172909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.215252, 40.849834, 47.315144>,  <31.497725, 40.694878, 47.552204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215252, 40.849834, 47.315144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022021, -0.824617, -0.565262,
		-0.707688, -0.412229, 0.573799,
		-0.706182, 0.387393, -0.592650,
		31.003397, 40.966053, 47.137348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094934, 40.093323, 47.376450>,  <31.497725, 40.694878, 47.552204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094934, 40.093323, 47.376450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980663, 40.374977, 47.116425>,  <30.912100, 40.543968, 46.960411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980663, 40.374977, 47.116425>,  <31.094934, 40.093323, 47.376450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980663, 40.374977, 47.116425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017104, -0.674476, -0.738098,
		-0.958173, -0.221977, 0.180639,
		-0.285677, 0.704136, -0.650062,
		30.894960, 40.586220, 46.921406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653658, 39.715736, 46.886051>,  <31.094934, 40.093323, 47.376450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653658, 39.715736, 46.886051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761213, 40.047157, 46.689602>,  <30.825747, 40.246010, 46.571732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761213, 40.047157, 46.689602>,  <30.653658, 39.715736, 46.886051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761213, 40.047157, 46.689602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019600, -0.514501, -0.857266,
		-0.962971, 0.220885, -0.154584,
		0.268891, 0.828552, -0.491120,
		30.841881, 40.295723, 46.542267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202105, 39.744343, 46.231159>,  <30.653658, 39.715736, 46.886051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202105, 39.744343, 46.231159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.489939, 40.004257, 46.133202>,  <30.662640, 40.160206, 46.074425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.489939, 40.004257, 46.133202>,  <30.202105, 39.744343, 46.231159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489939, 40.004257, 46.133202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045498, -0.307798, -0.950363,
		-0.692911, 0.695011, -0.191923,
		0.719586, 0.649785, -0.244898,
		30.705814, 40.199192, 46.059731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936016, 40.159031, 45.653011>,  <30.202105, 39.744343, 46.231159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936016, 40.159031, 45.653011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335989, 40.154762, 45.651333>,  <30.575974, 40.152199, 45.650326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335989, 40.154762, 45.651333>,  <29.936016, 40.159031, 45.653011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335989, 40.154762, 45.651333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006705, -0.247453, -0.968877,
		0.009304, 0.968841, -0.247508,
		0.999934, -0.010674, -0.004194,
		30.635969, 40.151562, 45.650074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.800503, 41.712700, 48.977623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184837, 41.822861, 48.965347>,  <33.415440, 41.888958, 48.957981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184837, 41.822861, 48.965347>,  <32.800503, 41.712700, 48.977623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184837, 41.822861, 48.965347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259942, -0.934157, -0.244501,
		-0.096007, 0.226948, -0.969163,
		0.960840, 0.275400, -0.030692,
		33.473091, 41.905479, 48.956139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092251, 41.207161, 48.608925>,  <32.800503, 41.712700, 48.977623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092251, 41.207161, 48.608925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.435207, 41.386490, 48.710030>,  <33.640980, 41.494087, 48.770691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.435207, 41.386490, 48.710030>,  <33.092251, 41.207161, 48.608925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435207, 41.386490, 48.710030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510101, -0.805495, -0.301619,
		0.068378, 0.387540, -0.919313,
		0.857392, 0.448319, 0.252763,
		33.692425, 41.520985, 48.785858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534584, 41.143002, 48.061134>,  <33.092251, 41.207161, 48.608925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534584, 41.143002, 48.061134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784618, 41.240211, 48.357838>,  <33.934639, 41.298538, 48.535858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.784618, 41.240211, 48.357838>,  <33.534584, 41.143002, 48.061134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784618, 41.240211, 48.357838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652536, -0.684168, -0.325747,
		0.428324, 0.687644, -0.586245,
		0.625088, 0.243021, 0.741758,
		33.972145, 41.313118, 48.580364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166977, 41.189289, 47.738682>,  <33.534584, 41.143002, 48.061134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166977, 41.189289, 47.738682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.285721, 41.135757, 48.116879>,  <34.356968, 41.103638, 48.343796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.285721, 41.135757, 48.116879>,  <34.166977, 41.189289, 47.738682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285721, 41.135757, 48.116879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566516, -0.772382, -0.287202,
		0.768721, 0.620898, -0.153474,
		0.296863, -0.133833, 0.945495,
		34.374779, 41.095608, 48.400528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851578, 41.193783, 47.694736>,  <34.166977, 41.189289, 47.738682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851578, 41.193783, 47.694736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.748550, 41.015377, 48.037601>,  <34.686733, 40.908333, 48.243320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.748550, 41.015377, 48.037601>,  <34.851578, 41.193783, 47.694736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748550, 41.015377, 48.037601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510159, -0.816147, -0.271372,
		0.820609, 0.367396, 0.437746,
		-0.257564, -0.446010, 0.857167,
		34.671280, 40.881573, 48.294750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489651, 41.012642, 47.927860>,  <34.851578, 41.193783, 47.694736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489651, 41.012642, 47.927860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.222584, 40.757320, 48.081108>,  <35.062344, 40.604126, 48.173058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.222584, 40.757320, 48.081108>,  <35.489651, 41.012642, 47.927860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222584, 40.757320, 48.081108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559204, -0.769733, -0.307899,
		0.491437, 0.008669, 0.870870,
		-0.667668, -0.638307, 0.383124,
		35.022282, 40.565830, 48.196045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943100, 40.626335, 48.461514>,  <35.489651, 41.012642, 47.927860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943100, 40.626335, 48.461514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618782, 40.439655, 48.320202>,  <35.424191, 40.327648, 48.235416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618782, 40.439655, 48.320202>,  <35.943100, 40.626335, 48.461514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618782, 40.439655, 48.320202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576554, -0.740899, -0.344461,
		-0.100985, -0.482972, 0.869793,
		-0.810794, -0.466698, -0.353279,
		35.375546, 40.299644, 48.214218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099480, 39.874329, 48.637398>,  <35.943100, 40.626335, 48.461514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099480, 39.874329, 48.637398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.789211, 39.824196, 48.389969>,  <35.603050, 39.794117, 48.241512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.789211, 39.824196, 48.389969>,  <36.099480, 39.874329, 48.637398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789211, 39.824196, 48.389969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416376, -0.838164, -0.352296,
		-0.474309, -0.530823, 0.702323,
		-0.775669, -0.125333, -0.618571,
		35.556511, 39.786594, 48.204399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061569, 39.165211, 48.609497>,  <36.099480, 39.874329, 48.637398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061569, 39.165211, 48.609497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.842327, 39.296230, 48.301655>,  <35.710781, 39.374840, 48.116951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.842327, 39.296230, 48.301655>,  <36.061569, 39.165211, 48.609497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842327, 39.296230, 48.301655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210483, -0.836505, -0.505921,
		-0.809489, -0.439289, 0.389555,
		-0.548110, 0.327543, -0.769604,
		35.677895, 39.394493, 48.070774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527515, 38.658146, 48.448433>,  <36.061569, 39.165211, 48.609497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527515, 38.658146, 48.448433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.581215, 38.865986, 48.110912>,  <35.613434, 38.990688, 47.908401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.581215, 38.865986, 48.110912>,  <35.527515, 38.658146, 48.448433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581215, 38.865986, 48.110912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067485, -0.844736, -0.530912,
		-0.988647, 0.128217, -0.078338,
		0.134247, 0.519598, -0.843799,
		35.621490, 39.021866, 47.857773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086613, 38.303883, 47.963783>,  <35.527515, 38.658146, 48.448433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086613, 38.303883, 47.963783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345524, 38.515060, 47.743855>,  <35.500870, 38.641769, 47.611897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345524, 38.515060, 47.743855>,  <35.086613, 38.303883, 47.963783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345524, 38.515060, 47.743855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037174, -0.742312, -0.669022,
		-0.761346, 0.412605, -0.500109,
		0.647280, 0.527948, -0.549818,
		35.539707, 38.673447, 47.578911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883141, 38.197456, 47.310055>,  <35.086613, 38.303883, 47.963783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883141, 38.197456, 47.310055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.256954, 38.327835, 47.252930>,  <35.481243, 38.406063, 47.218655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.256954, 38.327835, 47.252930>,  <34.883141, 38.197456, 47.310055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256954, 38.327835, 47.252930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133552, -0.693216, -0.708248,
		-0.329852, 0.642812, -0.691368,
		0.934538, 0.325951, -0.142810,
		35.537315, 38.425621, 47.210087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144478, 38.261127, 46.946732>,  <34.883141, 38.197456, 47.310055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144478, 38.261127, 46.946732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986355, 37.916714, 47.074699>,  <33.891479, 37.710064, 47.151482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986355, 37.916714, 47.074699>,  <34.144478, 38.261127, 46.946732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986355, 37.916714, 47.074699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584427, 0.504467, 0.635577,
		-0.708644, 0.064278, -0.702632,
		-0.395308, -0.861035, 0.319921,
		33.867764, 37.658401, 47.170677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426788, 38.359821, 46.951214>,  <34.144478, 38.261127, 46.946732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426788, 38.359821, 46.951214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.496334, 38.065182, 47.212654>,  <33.538063, 37.888397, 47.369518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.496334, 38.065182, 47.212654>,  <33.426788, 38.359821, 46.951214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496334, 38.065182, 47.212654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430015, 0.540302, 0.723298,
		-0.885922, -0.406817, -0.222807,
		0.173867, -0.736596, 0.653603,
		33.548496, 37.844204, 47.408733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844612, 38.260376, 47.303265>,  <33.426788, 38.359821, 46.951214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844612, 38.260376, 47.303265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.115547, 38.094299, 47.546192>,  <33.278107, 37.994656, 47.691948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.115547, 38.094299, 47.546192>,  <32.844612, 38.260376, 47.303265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115547, 38.094299, 47.546192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447608, 0.422562, 0.788092,
		-0.583836, -0.805643, 0.100375,
		0.677336, -0.415187, 0.607319,
		33.318748, 37.969742, 47.728386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481182, 37.909790, 47.869225>,  <32.844612, 38.260376, 47.303265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481182, 37.909790, 47.869225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.849442, 37.952393, 48.019451>,  <33.070396, 37.977955, 48.109589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.849442, 37.952393, 48.019451>,  <32.481182, 37.909790, 47.869225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849442, 37.952393, 48.019451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389108, 0.328018, 0.860813,
		-0.031509, -0.938648, 0.343434,
		0.920653, 0.106509, 0.375571,
		33.125637, 37.984344, 48.132122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512299, 37.678097, 48.473095>,  <32.481182, 37.909790, 47.869225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512299, 37.678097, 48.473095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.838356, 37.907516, 48.505569>,  <33.033989, 38.045166, 48.525055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.838356, 37.907516, 48.505569>,  <32.512299, 37.678097, 48.473095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838356, 37.907516, 48.505569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385439, 0.432417, 0.815140,
		0.432417, -0.695743, 0.573547,
		-0.815140, -0.573547, -0.081182,
		33.082897, 38.079582, 48.529922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672741, 37.623360, 49.106522>,  <32.512299, 37.678097, 48.473095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672741, 37.623360, 49.106522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.816128, 37.977348, 48.987640>,  <32.902161, 38.189739, 48.916313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.816128, 37.977348, 48.987640>,  <32.672741, 37.623360, 49.106522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816128, 37.977348, 48.987640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438107, 0.440603, 0.783537,
		0.824355, -0.150667, 0.545654,
		0.358470, 0.884968, -0.297205,
		32.923668, 38.242840, 48.898479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960400, 37.965527, 49.830040>,  <32.672741, 37.623360, 49.106522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960400, 37.965527, 49.830040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.903854, 38.254620, 49.559433>,  <32.869926, 38.428078, 49.397068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.903854, 38.254620, 49.559433>,  <32.960400, 37.965527, 49.830040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903854, 38.254620, 49.559433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227033, 0.641495, 0.732762,
		0.963573, 0.257174, 0.073404,
		-0.141359, 0.722735, -0.676515,
		32.861446, 38.471439, 49.356480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416523, 38.602856, 50.106709>,  <32.960400, 37.965527, 49.830040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416523, 38.602856, 50.106709> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165890, 38.756710, 49.835575>,  <33.015511, 38.849022, 49.672897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165890, 38.756710, 49.835575>,  <33.416523, 38.602856, 50.106709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165890, 38.756710, 49.835575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218619, 0.748066, 0.626580,
		0.748066, 0.540789, -0.384635,
		-0.626580, 0.384635, -0.677830,
		32.977917, 38.872101, 49.632225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390720, 39.301231, 50.222588>,  <33.416523, 38.602856, 50.106709>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390720, 39.301231, 50.222588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.063282, 39.273079, 49.994572>,  <32.866821, 39.256187, 49.857761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.063282, 39.273079, 49.994572>,  <33.390720, 39.301231, 50.222588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063282, 39.273079, 49.994572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434884, 0.724273, 0.535074,
		0.375206, 0.685911, -0.623495,
		-0.818594, -0.070385, -0.570044,
		32.817703, 39.251965, 49.823559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178772, 39.935806, 50.073086>,  <33.390720, 39.301231, 50.222588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178772, 39.935806, 50.073086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.831436, 39.744297, 50.021290>,  <32.623035, 39.629391, 49.990211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.831436, 39.744297, 50.021290>,  <33.178772, 39.935806, 50.073086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831436, 39.744297, 50.021290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484783, 0.764171, 0.425474,
		-0.104754, 0.432228, -0.895659,
		-0.868339, -0.478770, -0.129487,
		32.570934, 39.600666, 49.982445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738277, 40.559292, 49.975227>,  <33.178772, 39.935806, 50.073086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738277, 40.559292, 49.975227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.548988, 40.231514, 50.104576>,  <32.435413, 40.034847, 50.182186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.548988, 40.231514, 50.104576>,  <32.738277, 40.559292, 49.975227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548988, 40.231514, 50.104576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621118, 0.570675, 0.537162,
		-0.624715, 0.053346, -0.779029,
		-0.473227, -0.819442, 0.323375,
		32.407021, 39.985680, 50.201588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095585, 40.723194, 49.922115>,  <32.738277, 40.559292, 49.975227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095585, 40.723194, 49.922115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.080406, 40.424347, 50.187557>,  <32.071301, 40.245037, 50.346825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.080406, 40.424347, 50.187557>,  <32.095585, 40.723194, 49.922115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080406, 40.424347, 50.187557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665040, 0.514541, 0.541266,
		-0.745843, -0.420789, -0.516387,
		-0.037943, -0.747118, 0.663608,
		32.069023, 40.200211, 50.386639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447739, 40.663723, 50.135448>,  <32.095585, 40.723194, 49.922115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447739, 40.663723, 50.135448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.617586, 40.447472, 50.425941>,  <31.719494, 40.317719, 50.600239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.617586, 40.447472, 50.425941>,  <31.447739, 40.663723, 50.135448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617586, 40.447472, 50.425941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587846, 0.445435, 0.675296,
		-0.688576, -0.713657, -0.128668,
		0.424617, -0.540630, 0.726237,
		31.744970, 40.285282, 50.643814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893797, 40.500927, 50.519615>,  <31.447739, 40.663723, 50.135448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893797, 40.500927, 50.519615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.207886, 40.433826, 50.758038>,  <31.396339, 40.393566, 50.901093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.207886, 40.433826, 50.758038>,  <30.893797, 40.500927, 50.519615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207886, 40.433826, 50.758038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548845, 0.257141, 0.795391,
		-0.286703, -0.951702, 0.109841,
		0.785220, -0.167755, 0.596060,
		31.443451, 40.383499, 50.936855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174404, 40.848064, 50.527462>,  <30.893797, 40.500927, 50.519615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174404, 40.848064, 50.527462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.984129, 41.188416, 50.438263>,  <29.869965, 41.392628, 50.384743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.984129, 41.188416, 50.438263>,  <30.174404, 40.848064, 50.527462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984129, 41.188416, 50.438263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448586, 0.016594, -0.893586,
		-0.756633, -0.525100, -0.389585,
		-0.475687, 0.850879, -0.222997,
		29.841423, 41.443680, 50.371365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169571, 40.787445, 49.832542>,  <30.174404, 40.848064, 50.527462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169571, 40.787445, 49.832542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.064014, 41.170521, 49.878471>,  <30.000681, 41.400368, 49.906029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.064014, 41.170521, 49.878471>,  <30.169571, 40.787445, 49.832542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064014, 41.170521, 49.878471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306012, 0.196020, -0.931629,
		-0.914723, -0.210711, -0.344794,
		-0.263891, 0.957694, 0.114824,
		29.984848, 41.457829, 49.912918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598303, 40.866512, 49.449100>,  <30.169571, 40.787445, 49.832542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598303, 40.866512, 49.449100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.769819, 41.226402, 49.481670>,  <29.872730, 41.442337, 49.501213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.769819, 41.226402, 49.481670>,  <29.598303, 40.866512, 49.449100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769819, 41.226402, 49.481670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052933, 0.064958, -0.996483,
		-0.901851, 0.431596, -0.019772,
		0.428793, 0.899726, 0.081428,
		29.898457, 41.496319, 49.506100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272823, 41.283333, 49.003117>,  <29.598303, 40.866512, 49.449100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272823, 41.283333, 49.003117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.613796, 41.482010, 49.068424>,  <29.818380, 41.601215, 49.107609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.613796, 41.482010, 49.068424>,  <29.272823, 41.283333, 49.003117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613796, 41.482010, 49.068424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082759, 0.180151, -0.980151,
		-0.516243, 0.849027, 0.112461,
		0.852434, 0.496689, 0.163266,
		29.869526, 41.631016, 49.117405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284065, 41.865582, 48.445866>,  <29.272823, 41.283333, 49.003117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284065, 41.865582, 48.445866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.657253, 41.801605, 48.574852>,  <29.881166, 41.763218, 48.652245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.657253, 41.801605, 48.574852>,  <29.284065, 41.865582, 48.445866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657253, 41.801605, 48.574852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352474, 0.224270, -0.908551,
		0.072995, 0.961313, 0.265612,
		0.932970, -0.159941, 0.322467,
		29.937145, 41.753624, 48.671593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627735, 42.369213, 47.955799>,  <29.284065, 41.865582, 48.445866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627735, 42.369213, 47.955799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.919098, 42.141869, 48.108841>,  <30.093916, 42.005463, 48.200665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.919098, 42.141869, 48.108841>,  <29.627735, 42.369213, 47.955799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919098, 42.141869, 48.108841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410981, -0.084346, -0.907734,
		0.548192, 0.818444, 0.172148,
		0.728409, -0.568362, 0.382602,
		30.137621, 41.971359, 48.223621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263218, 42.602383, 47.646614>,  <29.627735, 42.369213, 47.955799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263218, 42.602383, 47.646614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.316751, 42.224743, 47.767120>,  <30.348873, 41.998158, 47.839424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.316751, 42.224743, 47.767120>,  <30.263218, 42.602383, 47.646614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316751, 42.224743, 47.767120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356506, -0.237785, -0.903528,
		0.924658, 0.228329, 0.304752,
		0.133836, -0.944100, 0.301270,
		30.356903, 41.941513, 47.857502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076803, 42.759979, 47.547020>,  <30.263218, 42.602383, 47.646614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076803, 42.759979, 47.547020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.152487, 43.117508, 47.384403>,  <31.197897, 43.332027, 47.286835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.152487, 43.117508, 47.384403>,  <31.076803, 42.759979, 47.547020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152487, 43.117508, 47.384403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211607, 0.441408, 0.871998,
		0.958865, -0.078961, 0.272658,
		0.189207, 0.893826, -0.406542,
		31.209249, 43.385654, 47.262440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505274, 43.229301, 48.021019>,  <31.076803, 42.759979, 47.547020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505274, 43.229301, 48.021019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.351698, 43.486992, 47.756428>,  <31.259552, 43.641605, 47.597672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.351698, 43.486992, 47.756428>,  <31.505274, 43.229301, 48.021019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351698, 43.486992, 47.756428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389971, 0.536226, 0.748588,
		0.836967, 0.545370, 0.045353,
		-0.383938, 0.644230, -0.661482,
		31.236517, 43.680260, 47.557983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786392, 43.962883, 48.121056>,  <31.505274, 43.229301, 48.021019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786392, 43.962883, 48.121056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.418507, 43.953506, 47.964302>,  <31.197775, 43.947880, 47.870251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.418507, 43.953506, 47.964302>,  <31.786392, 43.962883, 48.121056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418507, 43.953506, 47.964302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335321, 0.566029, 0.753108,
		0.204164, 0.824052, -0.528446,
		-0.919716, -0.023441, -0.391885,
		31.142591, 43.946476, 47.846737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569572, 44.655853, 48.166592>,  <31.786392, 43.962883, 48.121056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569572, 44.655853, 48.166592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.223869, 44.457687, 48.131672>,  <31.016447, 44.338787, 48.110718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.223869, 44.457687, 48.131672>,  <31.569572, 44.655853, 48.166592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223869, 44.457687, 48.131672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309548, 0.386950, 0.868591,
		-0.396530, 0.777712, -0.487779,
		-0.864259, -0.495413, -0.087302,
		30.964592, 44.309063, 48.105480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999722, 45.231403, 48.226807>,  <31.569572, 44.655853, 48.166592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999722, 45.231403, 48.226807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822206, 44.877708, 48.285007>,  <30.715698, 44.665489, 48.319927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822206, 44.877708, 48.285007>,  <30.999722, 45.231403, 48.226807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822206, 44.877708, 48.285007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387470, 0.335740, 0.858572,
		-0.808034, 0.324647, -0.491615,
		-0.443788, -0.884241, 0.145499,
		30.689070, 44.612434, 48.328655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303862, 45.416348, 48.372852>,  <30.999722, 45.231403, 48.226807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303862, 45.416348, 48.372852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.296207, 45.038956, 48.505207>,  <30.291615, 44.812523, 48.584618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.296207, 45.038956, 48.505207>,  <30.303862, 45.416348, 48.372852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296207, 45.038956, 48.505207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325446, 0.318798, 0.890198,
		-0.945367, -0.090651, -0.313152,
		-0.019135, -0.943478, 0.330883,
		30.290466, 44.755913, 48.604473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659088, 45.336681, 48.665253>,  <30.303862, 45.416348, 48.372852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659088, 45.336681, 48.665253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.926584, 45.083923, 48.821964>,  <30.087082, 44.932270, 48.915993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.926584, 45.083923, 48.821964>,  <29.659088, 45.336681, 48.665253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926584, 45.083923, 48.821964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278712, 0.275462, 0.920022,
		-0.689280, -0.724450, 0.008095,
		0.668739, -0.631896, 0.391783,
		30.127207, 44.894356, 48.939499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340761, 45.202435, 49.291855>,  <29.659088, 45.336681, 48.665253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340761, 45.202435, 49.291855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.711412, 45.058605, 49.335808>,  <29.933804, 44.972309, 49.362179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.711412, 45.058605, 49.335808>,  <29.340761, 45.202435, 49.291855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711412, 45.058605, 49.335808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022712, 0.238194, 0.970952,
		-0.375298, -0.902205, 0.212550,
		0.926626, -0.359569, 0.109885,
		29.989401, 44.950733, 49.368774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404577, 44.723824, 49.846989>,  <29.340761, 45.202435, 49.291855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404577, 44.723824, 49.846989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.780468, 44.855255, 49.809151>,  <30.006002, 44.934113, 49.786449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.780468, 44.855255, 49.809151>,  <29.404577, 44.723824, 49.846989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780468, 44.855255, 49.809151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015675, 0.234969, 0.971876,
		0.341567, -0.914781, 0.215656,
		0.939727, 0.328581, -0.094596,
		30.062386, 44.953831, 49.780773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.861031, 36.169468, 37.415768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153236, 36.172813, 37.688908>,  <37.328560, 36.174820, 37.852791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153236, 36.172813, 37.688908>,  <36.861031, 36.169468, 37.415768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153236, 36.172813, 37.688908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641160, 0.352623, 0.681595,
		-0.235088, -0.935728, 0.262956,
		0.730512, 0.008362, 0.682848,
		37.372391, 36.175323, 37.893761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670681, 35.820656, 38.049011>,  <36.861031, 36.169468, 37.415768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670681, 35.820656, 38.049011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938404, 36.104755, 38.136257>,  <37.099037, 36.275215, 38.188602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938404, 36.104755, 38.136257>,  <36.670681, 35.820656, 38.049011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938404, 36.104755, 38.136257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659366, 0.432505, 0.614960,
		0.342441, -0.555412, 0.757794,
		0.669306, 0.710251, 0.218112,
		37.139194, 36.317829, 38.201691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585075, 35.945591, 38.809418>,  <36.670681, 35.820656, 38.049011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585075, 35.945591, 38.809418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815033, 36.251575, 38.693256>,  <36.953007, 36.435165, 38.623562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815033, 36.251575, 38.693256>,  <36.585075, 35.945591, 38.809418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815033, 36.251575, 38.693256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342621, 0.547355, 0.763553,
		0.743042, -0.339463, 0.576762,
		0.574892, 0.764962, -0.290400,
		36.987499, 36.481064, 38.606136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979591, 36.171898, 39.390358>,  <36.585075, 35.945591, 38.809418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979591, 36.171898, 39.390358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945488, 36.484295, 39.142883>,  <36.925026, 36.671734, 38.994396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945488, 36.484295, 39.142883>,  <36.979591, 36.171898, 39.390358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945488, 36.484295, 39.142883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389875, 0.545287, 0.742064,
		0.916912, 0.304480, 0.258000,
		-0.085260, 0.780995, -0.618690,
		36.919910, 36.718594, 38.957275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326542, 36.779320, 39.744995>,  <36.979591, 36.171898, 39.390358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326542, 36.779320, 39.744995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056553, 36.918034, 39.484489>,  <36.894558, 37.001263, 39.328186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056553, 36.918034, 39.484489>,  <37.326542, 36.779320, 39.744995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056553, 36.918034, 39.484489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361047, 0.614538, 0.701418,
		0.643473, 0.708577, -0.289589,
		-0.674972, 0.346788, -0.651268,
		36.854061, 37.022072, 39.289108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360325, 37.586784, 39.856861>,  <37.326542, 36.779320, 39.744995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360325, 37.586784, 39.856861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019630, 37.494392, 39.668736>,  <36.815216, 37.438957, 39.555859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019630, 37.494392, 39.668736>,  <37.360325, 37.586784, 39.856861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019630, 37.494392, 39.668736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438993, 0.804622, 0.399836,
		0.286073, 0.547019, -0.786723,
		-0.851732, -0.230984, -0.470318,
		36.764111, 37.425098, 39.527641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004875, 38.222218, 39.607956>,  <37.360325, 37.586784, 39.856861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004875, 38.222218, 39.607956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706608, 37.955704, 39.610863>,  <36.527649, 37.795795, 39.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706608, 37.955704, 39.610863>,  <37.004875, 38.222218, 39.607956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706608, 37.955704, 39.610863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586638, 0.661625, 0.467021,
		-0.315976, 0.343977, -0.884217,
		-0.745664, -0.666283, 0.007268,
		36.482910, 37.755817, 39.613045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444160, 38.591679, 39.642086>,  <37.004875, 38.222218, 39.607956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444160, 38.591679, 39.642086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284271, 38.239422, 39.743816>,  <36.188335, 38.028069, 39.804855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284271, 38.239422, 39.743816>,  <36.444160, 38.591679, 39.642086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284271, 38.239422, 39.743816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726526, 0.473560, 0.497896,
		-0.558908, 0.014250, -0.829108,
		-0.399727, -0.880646, 0.254323,
		36.164352, 37.975227, 39.820114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779808, 38.729988, 39.549183>,  <36.444160, 38.591679, 39.642086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779808, 38.729988, 39.549183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819157, 38.420036, 39.798946>,  <35.842766, 38.234066, 39.948803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819157, 38.420036, 39.798946>,  <35.779808, 38.729988, 39.549183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819157, 38.420036, 39.798946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791728, 0.319193, 0.520849,
		-0.602901, -0.545597, -0.582095,
		0.098373, -0.774881, 0.624406,
		35.848667, 38.187572, 39.986267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041492, 38.500744, 39.757706>,  <35.779808, 38.729988, 39.549183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041492, 38.500744, 39.757706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257347, 38.335152, 40.050938>,  <35.386860, 38.235794, 40.226875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257347, 38.335152, 40.050938>,  <35.041492, 38.500744, 39.757706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257347, 38.335152, 40.050938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652445, 0.344667, 0.674922,
		-0.532075, -0.842510, -0.084105,
		0.539641, -0.413983, 0.733080,
		35.419239, 38.210957, 40.270863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605923, 38.228031, 40.291660>,  <35.041492, 38.500744, 39.757706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605923, 38.228031, 40.291660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960274, 38.262444, 40.474014>,  <35.172882, 38.283089, 40.583427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960274, 38.262444, 40.474014>,  <34.605923, 38.228031, 40.291660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960274, 38.262444, 40.474014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458466, 0.312660, 0.831897,
		-0.070971, -0.945962, 0.316417,
		0.885874, 0.086026, 0.455882,
		35.226036, 38.288250, 40.610779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406796, 38.017662, 40.987923>,  <34.605923, 38.228031, 40.291660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406796, 38.017662, 40.987923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735264, 38.245716, 40.998001>,  <34.932343, 38.382549, 41.004047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735264, 38.245716, 40.998001>,  <34.406796, 38.017662, 40.987923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735264, 38.245716, 40.998001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407155, 0.554343, 0.725898,
		0.399887, -0.606344, 0.687340,
		0.821167, 0.570132, 0.025201,
		34.981613, 38.416756, 41.005562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231956, 37.376263, 41.432747>,  <34.406796, 38.017662, 40.987923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231956, 37.376263, 41.432747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884655, 37.194241, 41.353695>,  <33.676273, 37.085030, 41.306263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884655, 37.194241, 41.353695>,  <34.231956, 37.376263, 41.432747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884655, 37.194241, 41.353695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472189, -0.635783, -0.610588,
		0.152201, -0.623465, 0.766894,
		-0.868259, -0.455051, -0.197626,
		33.624176, 37.057724, 41.294407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399776, 36.634048, 41.366699>,  <34.231956, 37.376263, 41.432747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399776, 36.634048, 41.366699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041298, 36.664627, 41.191891>,  <33.826210, 36.682972, 41.087006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041298, 36.664627, 41.191891>,  <34.399776, 36.634048, 41.366699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041298, 36.664627, 41.191891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273696, -0.680003, -0.680210,
		-0.349174, -0.729213, 0.588494,
		-0.896196, 0.076443, -0.437022,
		33.772438, 36.687561, 41.060783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204914, 35.984962, 41.278286>,  <34.399776, 36.634048, 41.366699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204914, 35.984962, 41.278286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999527, 36.209629, 41.018787>,  <33.876293, 36.344429, 40.863087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999527, 36.209629, 41.018787>,  <34.204914, 35.984962, 41.278286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999527, 36.209629, 41.018787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249017, -0.625959, -0.739031,
		-0.821182, -0.541019, 0.181544,
		-0.513469, 0.561671, -0.648749,
		33.845486, 36.378132, 40.824162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897121, 35.425587, 40.864567>,  <34.204914, 35.984962, 41.278286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897121, 35.425587, 40.864567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868015, 35.769619, 40.662590>,  <33.850552, 35.976040, 40.541405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868015, 35.769619, 40.662590>,  <33.897121, 35.425587, 40.864567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868015, 35.769619, 40.662590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032655, -0.503959, -0.863110,
		-0.996814, -0.079297, 0.008586,
		-0.072769, 0.860080, -0.504943,
		33.846184, 36.027641, 40.511108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277550, 35.366230, 40.454453>,  <33.897121, 35.425587, 40.864567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277550, 35.366230, 40.454453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523407, 35.623341, 40.271561>,  <33.670921, 35.777607, 40.161827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523407, 35.623341, 40.271561>,  <33.277550, 35.366230, 40.454453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523407, 35.623341, 40.271561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058059, -0.614935, -0.786438,
		-0.786669, 0.456828, -0.415282,
		0.614638, 0.642777, -0.457228,
		33.707798, 35.816174, 40.134392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029770, 35.390839, 39.752468>,  <33.277550, 35.366230, 40.454453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029770, 35.390839, 39.752468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400200, 35.538269, 39.720131>,  <33.622459, 35.626728, 39.700729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400200, 35.538269, 39.720131>,  <33.029770, 35.390839, 39.752468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400200, 35.538269, 39.720131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183919, -0.627979, -0.756185,
		-0.329478, 0.685416, -0.649345,
		0.926076, 0.368574, -0.080844,
		33.678024, 35.648842, 39.695877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050888, 35.617729, 39.188007>,  <33.029770, 35.390839, 39.752468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050888, 35.617729, 39.188007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443314, 35.565784, 39.245476>,  <33.678768, 35.534618, 39.279957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443314, 35.565784, 39.245476>,  <33.050888, 35.617729, 39.188007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443314, 35.565784, 39.245476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041467, -0.583773, -0.810857,
		0.189172, 0.801464, -0.567336,
		0.981068, -0.129866, 0.143668,
		33.737633, 35.526825, 39.288574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378155, 35.821148, 38.633423>,  <33.050888, 35.617729, 39.188007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378155, 35.821148, 38.633423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667595, 35.588913, 38.782730>,  <33.841259, 35.449574, 38.872314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667595, 35.588913, 38.782730>,  <33.378155, 35.821148, 38.633423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667595, 35.588913, 38.782730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154396, -0.390939, -0.907374,
		0.672732, 0.714205, -0.193243,
		0.723598, -0.580584, 0.373268,
		33.884674, 35.414738, 38.894711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963577, 36.043434, 38.250404>,  <33.378155, 35.821148, 38.633423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963577, 36.043434, 38.250404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044052, 35.675694, 38.385647>,  <34.092335, 35.455048, 38.466793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044052, 35.675694, 38.385647>,  <33.963577, 36.043434, 38.250404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044052, 35.675694, 38.385647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118457, -0.319797, -0.940052,
		0.972365, 0.229174, 0.044566,
		0.201183, -0.919353, 0.338107,
		34.104408, 35.399887, 38.487080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515568, 35.773106, 37.765171>,  <33.963577, 36.043434, 38.250404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515568, 35.773106, 37.765171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361050, 35.452362, 37.947510>,  <34.268341, 35.259914, 38.056915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361050, 35.452362, 37.947510>,  <34.515568, 35.773106, 37.765171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361050, 35.452362, 37.947510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005142, -0.492332, -0.870392,
		0.922362, -0.338570, 0.186062,
		-0.386293, -0.801860, 0.455850,
		34.245163, 35.211803, 38.084263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904034, 35.179020, 37.460129>,  <34.515568, 35.773106, 37.765171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904034, 35.179020, 37.460129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580730, 35.002960, 37.616581>,  <34.386749, 34.897324, 37.710453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580730, 35.002960, 37.616581>,  <34.904034, 35.179020, 37.460129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580730, 35.002960, 37.616581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014921, -0.648737, -0.760866,
		0.588634, -0.620815, 0.517782,
		-0.808262, -0.440146, 0.391132,
		34.338253, 34.870918, 37.733921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037506, 34.498127, 37.350330>,  <34.904034, 35.179020, 37.460129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037506, 34.498127, 37.350330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645889, 34.503139, 37.431641>,  <34.410919, 34.506145, 37.480427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645889, 34.503139, 37.431641>,  <35.037506, 34.498127, 37.350330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645889, 34.503139, 37.431641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166139, -0.626424, -0.761571,
		0.117794, -0.779382, 0.615377,
		-0.979042, 0.012530, 0.203274,
		34.352177, 34.506897, 37.492622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779823, 33.788898, 37.464775>,  <35.037506, 34.498127, 37.350330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779823, 33.788898, 37.464775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517502, 34.045696, 37.305897>,  <34.360107, 34.199776, 37.210571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517502, 34.045696, 37.305897>,  <34.779823, 33.788898, 37.464775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517502, 34.045696, 37.305897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060095, -0.568855, -0.820240,
		-0.752536, -0.514047, 0.411638,
		-0.655804, 0.641997, -0.397192,
		34.320759, 34.238297, 37.186741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397495, 33.335007, 37.251358>,  <34.779823, 33.788898, 37.464775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397495, 33.335007, 37.251358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481030, 32.954811, 37.159306>,  <35.531151, 32.726692, 37.104073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481030, 32.954811, 37.159306>,  <35.397495, 33.335007, 37.251358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481030, 32.954811, 37.159306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517443, 0.307074, -0.798723,
		0.829844, 0.047720, 0.555951,
		0.208833, -0.950489, -0.230131,
		35.543678, 32.669666, 37.090267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777443, 32.887657, 37.760780>,  <35.397495, 33.335007, 37.251358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777443, 32.887657, 37.760780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144527, 32.729538, 37.745071>,  <36.364780, 32.634666, 37.735645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144527, 32.729538, 37.745071>,  <35.777443, 32.887657, 37.760780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144527, 32.729538, 37.745071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059478, 0.038984, 0.997468,
		-0.392762, -0.917727, 0.059287,
		0.917714, -0.395294, -0.039273,
		36.419842, 32.610950, 37.733288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722092, 32.399609, 38.287289>,  <35.777443, 32.887657, 37.760780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722092, 32.399609, 38.287289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093235, 32.531868, 38.218285>,  <36.315922, 32.611221, 38.176884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093235, 32.531868, 38.218285>,  <35.722092, 32.399609, 38.287289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093235, 32.531868, 38.218285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082679, 0.268674, 0.959676,
		0.363661, -0.904703, 0.221953,
		0.927855, 0.330646, -0.172506,
		36.371593, 32.631062, 38.166534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054398, 32.007408, 38.759392>,  <35.722092, 32.399609, 38.287289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054398, 32.007408, 38.759392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238731, 32.352726, 38.677074>,  <36.349331, 32.559917, 38.627686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238731, 32.352726, 38.677074>,  <36.054398, 32.007408, 38.759392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238731, 32.352726, 38.677074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015834, 0.223847, 0.974496,
		0.887342, -0.452344, 0.089488,
		0.460839, 0.863294, -0.205791,
		36.376984, 32.611713, 38.615337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373650, 32.168892, 39.450657>,  <36.054398, 32.007408, 38.759392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373650, 32.168892, 39.450657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423679, 32.497353, 39.227921>,  <36.453697, 32.694427, 39.094280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423679, 32.497353, 39.227921>,  <36.373650, 32.168892, 39.450657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423679, 32.497353, 39.227921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106081, 0.569098, 0.815398,
		0.986460, -0.042917, 0.158289,
		0.125077, 0.821149, -0.556840,
		36.461201, 32.743698, 39.060867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915249, 32.543156, 39.703098>,  <36.373650, 32.168892, 39.450657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915249, 32.543156, 39.703098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674366, 32.810295, 39.528130>,  <36.529839, 32.970577, 39.423149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674366, 32.810295, 39.528130>,  <36.915249, 32.543156, 39.703098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674366, 32.810295, 39.528130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092343, 0.602500, 0.792759,
		0.792983, 0.437011, -0.424499,
		-0.602205, 0.667844, -0.437417,
		36.493706, 33.010647, 39.396904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101696, 33.160606, 39.943607>,  <36.915249, 32.543156, 39.703098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101696, 33.160606, 39.943607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745113, 33.270298, 39.799332>,  <36.531162, 33.336113, 39.712765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745113, 33.270298, 39.799332>,  <37.101696, 33.160606, 39.943607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745113, 33.270298, 39.799332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187063, 0.502292, 0.844222,
		0.412684, 0.820061, -0.396474,
		-0.891459, 0.274231, -0.360691,
		36.477676, 33.352566, 39.691124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993755, 33.891102, 40.052036>,  <37.101696, 33.160606, 39.943607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993755, 33.891102, 40.052036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620995, 33.748283, 40.026501>,  <36.397339, 33.662594, 40.011181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620995, 33.748283, 40.026501>,  <36.993755, 33.891102, 40.052036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620995, 33.748283, 40.026501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267776, 0.558554, 0.785056,
		-0.244643, 0.748690, -0.616127,
		-0.931904, -0.357043, -0.063835,
		36.341423, 33.641171, 40.007351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550301, 34.435646, 39.998932>,  <36.993755, 33.891102, 40.052036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550301, 34.435646, 39.998932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330154, 34.133396, 40.140991>,  <36.198067, 33.952045, 40.226227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330154, 34.133396, 40.140991>,  <36.550301, 34.435646, 39.998932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330154, 34.133396, 40.140991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241769, 0.551378, 0.798455,
		-0.799153, 0.353577, -0.486146,
		-0.550366, -0.755622, 0.355152,
		36.165043, 33.906708, 40.247536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049847, 34.810081, 40.184204>,  <36.550301, 34.435646, 39.998932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049847, 34.810081, 40.184204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999268, 34.472134, 40.392132>,  <35.968922, 34.269363, 40.516888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999268, 34.472134, 40.392132>,  <36.049847, 34.810081, 40.184204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999268, 34.472134, 40.392132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373899, 0.525965, 0.763911,
		-0.918809, -0.097764, -0.382402,
		-0.126447, -0.844868, 0.519815,
		35.961334, 34.218674, 40.548077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387844, 34.894695, 40.518833>,  <36.049847, 34.810081, 40.184204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387844, 34.894695, 40.518833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555763, 34.607491, 40.740910>,  <35.656513, 34.435169, 40.874153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555763, 34.607491, 40.740910>,  <35.387844, 34.894695, 40.518833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555763, 34.607491, 40.740910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417076, 0.390678, 0.820621,
		-0.806113, -0.576050, -0.135458,
		0.419798, -0.718009, 0.555187,
		35.681702, 34.392086, 40.907467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838303, 34.482738, 40.837769>,  <35.387844, 34.894695, 40.518833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838303, 34.482738, 40.837769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168953, 34.407722, 41.050003>,  <35.367344, 34.362713, 41.177341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168953, 34.407722, 41.050003>,  <34.838303, 34.482738, 40.837769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168953, 34.407722, 41.050003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459841, 0.318403, 0.828955,
		-0.324404, -0.929218, 0.176960,
		0.826625, -0.187543, 0.530584,
		35.416939, 34.351460, 41.209179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540119, 34.093765, 41.420593>,  <34.838303, 34.482738, 40.837769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540119, 34.093765, 41.420593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895111, 34.235409, 41.538567>,  <35.108105, 34.320396, 41.609352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895111, 34.235409, 41.538567>,  <34.540119, 34.093765, 41.420593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895111, 34.235409, 41.538567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333549, 0.051941, 0.941301,
		0.318006, -0.933760, 0.164210,
		0.887478, 0.354111, 0.294937,
		35.161354, 34.341640, 41.627048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809731, 33.685158, 41.949310>,  <34.540119, 34.093765, 41.420593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809731, 33.685158, 41.949310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002579, 34.033470, 41.987881>,  <35.118286, 34.242458, 42.011024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002579, 34.033470, 41.987881>,  <34.809731, 33.685158, 41.949310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002579, 34.033470, 41.987881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268947, 0.042350, 0.962224,
		0.833805, -0.489839, 0.254612,
		0.482117, 0.870784, 0.096429,
		35.147213, 34.294704, 42.016808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060123, 33.670094, 42.642464>,  <34.809731, 33.685158, 41.949310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060123, 33.670094, 42.642464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100742, 34.052887, 42.533752>,  <35.125114, 34.282562, 42.468525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100742, 34.052887, 42.533752>,  <35.060123, 33.670094, 42.642464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100742, 34.052887, 42.533752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301079, 0.289940, 0.908453,
		0.948177, -0.010430, 0.317572,
		0.101552, 0.956988, -0.271774,
		35.131207, 34.339985, 42.452221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402840, 34.032238, 43.200871>,  <35.060123, 33.670094, 42.642464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402840, 34.032238, 43.200871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205883, 34.324390, 43.011513>,  <35.087708, 34.499680, 42.897900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205883, 34.324390, 43.011513>,  <35.402840, 34.032238, 43.200871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205883, 34.324390, 43.011513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330651, 0.346150, 0.877981,
		0.805121, 0.588838, 0.071058,
		-0.492392, 0.730377, -0.473392,
		35.058167, 34.543503, 42.869495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596649, 34.686646, 43.499546>,  <35.402840, 34.032238, 43.200871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596649, 34.686646, 43.499546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282318, 34.797012, 43.278152>,  <35.093719, 34.863232, 43.145317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282318, 34.797012, 43.278152>,  <35.596649, 34.686646, 43.499546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282318, 34.797012, 43.278152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313348, 0.593942, 0.740976,
		0.533180, 0.755715, -0.380282,
		-0.785832, 0.275913, -0.553480,
		35.046570, 34.879787, 43.112110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478859, 35.369576, 43.712189>,  <35.596649, 34.686646, 43.499546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478859, 35.369576, 43.712189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142929, 35.266327, 43.521160>,  <34.941372, 35.204380, 43.406544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142929, 35.266327, 43.521160>,  <35.478859, 35.369576, 43.712189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142929, 35.266327, 43.521160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534695, 0.545326, 0.645539,
		0.093806, 0.797492, -0.595992,
		-0.839823, -0.258119, -0.477570,
		34.890984, 35.188892, 43.377888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155754, 35.989063, 43.475403>,  <35.478859, 35.369576, 43.712189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155754, 35.989063, 43.475403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887234, 35.694042, 43.504719>,  <34.726120, 35.517029, 43.522308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887234, 35.694042, 43.504719>,  <35.155754, 35.989063, 43.475403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887234, 35.694042, 43.504719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506572, 0.528747, 0.681037,
		-0.541054, 0.420052, -0.728572,
		-0.671301, -0.737552, 0.073294,
		34.685844, 35.472778, 43.526707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388451, 36.299618, 43.445179>,  <35.155754, 35.989063, 43.475403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388451, 36.299618, 43.445179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382568, 35.942802, 43.625870>,  <34.379040, 35.728714, 43.734283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382568, 35.942802, 43.625870>,  <34.388451, 36.299618, 43.445179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382568, 35.942802, 43.625870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442869, 0.410855, 0.796910,
		-0.896466, -0.188340, -0.401095,
		-0.014702, -0.892035, 0.451727,
		34.378159, 35.675194, 43.761387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779881, 36.231815, 43.741245>,  <34.388451, 36.299618, 43.445179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779881, 36.231815, 43.741245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991802, 35.966885, 43.953144>,  <34.118954, 35.807926, 44.080284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991802, 35.966885, 43.953144>,  <33.779881, 36.231815, 43.741245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991802, 35.966885, 43.953144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328847, 0.415331, 0.848151,
		-0.781772, -0.623560, 0.002240,
		0.529803, -0.662324, 0.529750,
		34.150742, 35.768188, 44.112068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289131, 36.021870, 44.211163>,  <33.779881, 36.231815, 43.741245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289131, 36.021870, 44.211163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622528, 35.871216, 44.372868>,  <33.822567, 35.780823, 44.469891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622528, 35.871216, 44.372868>,  <33.289131, 36.021870, 44.211163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622528, 35.871216, 44.372868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239388, 0.413264, 0.878582,
		-0.497977, -0.829069, 0.254290,
		0.833494, -0.376639, 0.404265,
		33.872578, 35.758224, 44.494148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078506, 35.907612, 44.864059>,  <33.289131, 36.021870, 44.211163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078506, 35.907612, 44.864059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477669, 35.915131, 44.888809>,  <33.717167, 35.919640, 44.903660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477669, 35.915131, 44.888809>,  <33.078506, 35.907612, 44.864059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477669, 35.915131, 44.888809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064641, 0.316573, 0.946363,
		-0.001802, -0.948382, 0.317126,
		0.997907, 0.018794, 0.061875,
		33.777042, 35.920769, 44.907372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227600, 35.469330, 45.533199>,  <33.078506, 35.907612, 44.864059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227600, 35.469330, 45.533199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524868, 35.719070, 45.436958>,  <33.703228, 35.868916, 45.379215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524868, 35.719070, 45.436958>,  <33.227600, 35.469330, 45.533199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524868, 35.719070, 45.436958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008173, 0.368032, 0.929777,
		0.669058, -0.689012, 0.278612,
		0.743165, 0.624352, -0.240603,
		33.747818, 35.906376, 45.364777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643269, 35.518787, 46.145630>,  <33.227600, 35.469330, 45.533199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643269, 35.518787, 46.145630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759468, 35.840454, 45.938202>,  <33.829189, 36.033455, 45.813744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759468, 35.840454, 45.938202>,  <33.643269, 35.518787, 46.145630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759468, 35.840454, 45.938202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037602, 0.531933, 0.845951,
		0.956135, -0.265250, 0.124289,
		0.290502, 0.804171, -0.518573,
		33.846619, 36.081707, 45.782631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174011, 35.814533, 46.526493>,  <33.643269, 35.518787, 46.145630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174011, 35.814533, 46.526493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099216, 36.131321, 46.294006>,  <34.054340, 36.321396, 46.154514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099216, 36.131321, 46.294006>,  <34.174011, 35.814533, 46.526493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099216, 36.131321, 46.294006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010212, 0.590056, 0.807298,
		0.982309, 0.156890, -0.102245,
		-0.186987, 0.791972, -0.581220,
		34.043121, 36.368912, 46.119640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750637, 36.331238, 46.626255>,  <34.174011, 35.814533, 46.526493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750637, 36.331238, 46.626255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432800, 36.525120, 46.480000>,  <34.242100, 36.641449, 46.392246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432800, 36.525120, 46.480000>,  <34.750637, 36.331238, 46.626255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432800, 36.525120, 46.480000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093529, 0.692745, 0.715092,
		0.599902, 0.534006, -0.595780,
		-0.794588, 0.484708, -0.365634,
		34.194424, 36.670532, 46.370308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897514, 37.066422, 46.590748>,  <34.750637, 36.331238, 46.626255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897514, 37.066422, 46.590748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501568, 37.023941, 46.628452>,  <34.264000, 36.998451, 46.651073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501568, 37.023941, 46.628452>,  <34.897514, 37.066422, 46.590748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501568, 37.023941, 46.628452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006718, 0.698104, 0.715965,
		-0.141841, 0.708077, -0.691743,
		-0.989867, -0.106200, 0.094263,
		34.204609, 36.992081, 46.656731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665215, 37.723747, 46.678085>,  <34.897514, 37.066422, 46.590748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665215, 37.723747, 46.678085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364239, 37.485542, 46.790649>,  <34.183651, 37.342617, 46.858189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364239, 37.485542, 46.790649>,  <34.665215, 37.723747, 46.678085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364239, 37.485542, 46.790649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134837, 0.557471, 0.819173,
		-0.644708, 0.578437, -0.499763,
		-0.752443, -0.595514, 0.281411,
		34.138504, 37.306889, 46.875072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963749, 38.354019, 46.515808>,  <34.665215, 37.723747, 46.678085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963749, 38.354019, 46.515808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323029, 38.317741, 46.687862>,  <35.538597, 38.295975, 46.791096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323029, 38.317741, 46.687862>,  <34.963749, 38.354019, 46.515808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323029, 38.317741, 46.687862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249326, -0.700783, -0.668386,
		0.362051, 0.707586, -0.606828,
		0.898196, -0.090692, 0.430139,
		35.592487, 38.290535, 46.816902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415447, 38.274590, 45.946674>,  <34.963749, 38.354019, 46.515808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415447, 38.274590, 45.946674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650238, 38.142673, 46.242428>,  <35.791115, 38.063522, 46.419880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650238, 38.142673, 46.242428>,  <35.415447, 38.274590, 45.946674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650238, 38.142673, 46.242428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480131, -0.593538, -0.645900,
		0.651865, 0.734133, -0.190054,
		0.586981, -0.329789, 0.739387,
		35.826332, 38.043736, 46.464245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127861, 38.259148, 45.672043>,  <35.415447, 38.274590, 45.946674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127861, 38.259148, 45.672043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124611, 38.018532, 45.991562>,  <36.122662, 37.874161, 46.183273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124611, 38.018532, 45.991562>,  <36.127861, 38.259148, 45.672043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124611, 38.018532, 45.991562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684532, -0.585658, -0.434075,
		0.728938, 0.543279, 0.416531,
		-0.008121, -0.601543, 0.798799,
		36.122173, 37.838070, 46.231201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806980, 38.166302, 46.014145>,  <36.127861, 38.259148, 45.672043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806980, 38.166302, 46.014145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639751, 37.826180, 46.142017>,  <36.539413, 37.622105, 46.218742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639751, 37.826180, 46.142017>,  <36.806980, 38.166302, 46.014145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639751, 37.826180, 46.142017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651798, -0.525905, -0.546429,
		0.632753, -0.020079, 0.774093,
		-0.418071, -0.850307, 0.319680,
		36.514332, 37.571087, 46.237923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314281, 37.666344, 46.187336>,  <36.806980, 38.166302, 46.014145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314281, 37.666344, 46.187336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979237, 37.460613, 46.113708>,  <36.778210, 37.337177, 46.069530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979237, 37.460613, 46.113708>,  <37.314281, 37.666344, 46.187336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979237, 37.460613, 46.113708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537488, -0.715776, -0.445838,
		0.097553, -0.472373, 0.875983,
		-0.837609, -0.514324, -0.184069,
		36.727955, 37.306316, 46.058487>
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
