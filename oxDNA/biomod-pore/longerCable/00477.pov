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
	<24.181381, 35.367523, 35.080727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377914, 35.026779, 35.008148>,  <24.495834, 34.822330, 34.964600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.377914, 35.026779, 35.008148>,  <24.181381, 35.367523, 35.080727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.377914, 35.026779, 35.008148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863684, 0.449636, 0.227765,
		-0.112439, -0.268621, 0.956661,
		0.491331, -0.851863, -0.181447,
		24.525314, 34.771221, 34.953712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634695, 35.268250, 35.624809>,  <24.181381, 35.367523, 35.080727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634695, 35.268250, 35.624809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781012, 35.071526, 35.308754>,  <24.868801, 34.953491, 35.119122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781012, 35.071526, 35.308754>,  <24.634695, 35.268250, 35.624809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781012, 35.071526, 35.308754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865503, 0.491909, 0.094496,
		0.342202, -0.718433, 0.605600,
		0.365789, -0.491812, -0.790139,
		24.890749, 34.923981, 35.071712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336109, 35.044888, 35.833775>,  <24.634695, 35.268250, 35.624809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336109, 35.044888, 35.833775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293663, 35.058067, 35.436253>,  <25.268196, 35.065975, 35.197739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293663, 35.058067, 35.436253>,  <25.336109, 35.044888, 35.833775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293663, 35.058067, 35.436253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730560, 0.680594, -0.055440,
		0.674553, -0.731919, -0.096292,
		-0.106113, 0.032950, -0.993808,
		25.261829, 35.067951, 35.138111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086452, 35.086689, 35.575855>,  <25.336109, 35.044888, 35.833775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086452, 35.086689, 35.575855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861244, 35.199142, 35.264992>,  <25.726118, 35.266613, 35.078476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861244, 35.199142, 35.264992>,  <26.086452, 35.086689, 35.575855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861244, 35.199142, 35.264992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489435, 0.871147, -0.039449,
		0.665927, -0.402579, -0.628069,
		-0.563022, 0.281129, -0.777157,
		25.692337, 35.283482, 35.031845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467361, 35.336731, 35.036259>,  <26.086452, 35.086689, 35.575855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467361, 35.336731, 35.036259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112112, 35.519894, 35.020470>,  <25.898962, 35.629791, 35.010994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112112, 35.519894, 35.020470>,  <26.467361, 35.336731, 35.036259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112112, 35.519894, 35.020470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459548, 0.886090, -0.060501,
		0.007276, -0.071874, -0.997387,
		-0.888123, 0.457907, -0.039477,
		25.845675, 35.657265, 35.008625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273474, 35.725174, 34.338627>,  <26.467361, 35.336731, 35.036259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273474, 35.725174, 34.338627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142691, 35.879345, 34.683777>,  <26.064220, 35.971848, 34.890865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142691, 35.879345, 34.683777>,  <26.273474, 35.725174, 34.338627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142691, 35.879345, 34.683777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435704, 0.871702, -0.224272,
		-0.838607, 0.302630, -0.452938,
		-0.326956, 0.385423, 0.862872,
		26.044603, 35.994972, 34.942638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.860765, 36.255711, 34.162624>,  <26.273474, 35.725174, 34.338627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.860765, 36.255711, 34.162624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991571, 36.321609, 34.534843>,  <26.070055, 36.361149, 34.758175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991571, 36.321609, 34.534843>,  <25.860765, 36.255711, 34.162624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991571, 36.321609, 34.534843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333921, 0.901024, -0.276863,
		-0.884057, 0.401268, 0.239639,
		0.327016, 0.164743, 0.930548,
		26.089676, 36.371033, 34.814007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431896, 36.795506, 34.476994>,  <25.860765, 36.255711, 34.162624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431896, 36.795506, 34.476994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778437, 36.779091, 34.676090>,  <25.986361, 36.769241, 34.795547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778437, 36.779091, 34.676090>,  <25.431896, 36.795506, 34.476994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778437, 36.779091, 34.676090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230063, 0.917374, -0.324801,
		-0.443288, 0.395904, 0.804211,
		0.866352, -0.041039, 0.497744,
		26.038342, 36.766781, 34.825413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480951, 37.408192, 34.788776>,  <25.431896, 36.795506, 34.476994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480951, 37.408192, 34.788776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862206, 37.287327, 34.794823>,  <26.090958, 37.214806, 34.798450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.862206, 37.287327, 34.794823>,  <25.480951, 37.408192, 34.788776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862206, 37.287327, 34.794823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301609, 0.945087, -0.125865,
		0.023749, 0.124525, 0.991932,
		0.953136, -0.302165, 0.015113,
		26.148146, 37.196678, 34.799358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811337, 37.942474, 35.094597>,  <25.480951, 37.408192, 34.788776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811337, 37.942474, 35.094597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127031, 37.746872, 34.946014>,  <26.316448, 37.629513, 34.856865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127031, 37.746872, 34.946014>,  <25.811337, 37.942474, 35.094597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127031, 37.746872, 34.946014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389942, 0.866368, -0.312011,
		0.474396, 0.101402, 0.874452,
		0.789236, -0.489003, -0.371461,
		26.363802, 37.600170, 34.834576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327835, 38.370937, 35.283962>,  <25.811337, 37.942474, 35.094597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327835, 38.370937, 35.283962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468311, 38.162872, 34.972553>,  <26.552597, 38.038033, 34.785709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468311, 38.162872, 34.972553>,  <26.327835, 38.370937, 35.283962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468311, 38.162872, 34.972553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128422, 0.850386, -0.510246,
		0.927455, 0.079215, 0.365449,
		0.351192, -0.520162, -0.778522,
		26.573669, 38.006824, 34.738998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787638, 38.755451, 34.982666>,  <26.327835, 38.370937, 35.283962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787638, 38.755451, 34.982666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676895, 38.521534, 34.677677>,  <26.610449, 38.381184, 34.494686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676895, 38.521534, 34.677677>,  <26.787638, 38.755451, 34.982666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676895, 38.521534, 34.677677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190583, 0.744306, -0.640068,
		0.941821, -0.322522, -0.094615,
		-0.276858, -0.584798, -0.762471,
		26.593838, 38.346096, 34.448936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779394, 39.266933, 34.539921>,  <26.787638, 38.755451, 34.982666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779394, 39.266933, 34.539921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729698, 39.271332, 34.143044>,  <26.699881, 39.273972, 33.904919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729698, 39.271332, 34.143044>,  <26.779394, 39.266933, 34.539921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729698, 39.271332, 34.143044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076809, -0.996832, -0.020670,
		-0.989275, -0.078778, 0.123003,
		-0.124242, 0.011000, -0.992191,
		26.692425, 39.274632, 33.845387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202984, 38.857887, 34.353806>,  <26.779394, 39.266933, 34.539921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202984, 38.857887, 34.353806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495359, 38.850208, 34.080936>,  <26.670786, 38.845600, 33.917217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495359, 38.850208, 34.080936>,  <26.202984, 38.857887, 34.353806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495359, 38.850208, 34.080936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089104, -0.993731, -0.067515,
		-0.676599, 0.110133, -0.728069,
		0.730941, -0.019193, -0.682171,
		26.714642, 38.844452, 33.876286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014380, 38.421555, 33.745636>,  <26.202984, 38.857887, 34.353806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014380, 38.421555, 33.745636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403957, 38.435017, 33.835346>,  <26.637705, 38.443092, 33.889172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403957, 38.435017, 33.835346>,  <26.014380, 38.421555, 33.745636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403957, 38.435017, 33.835346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066800, -0.902487, 0.425506,
		0.216727, -0.429401, -0.876724,
		0.973944, 0.033653, 0.224277,
		26.696140, 38.445114, 33.902630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351547, 37.826550, 33.394966>,  <26.014380, 38.421555, 33.745636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351547, 37.826550, 33.394966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532248, 37.960670, 33.725662>,  <26.640667, 38.041142, 33.924080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532248, 37.960670, 33.725662>,  <26.351547, 37.826550, 33.394966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532248, 37.960670, 33.725662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176212, -0.874893, 0.451122,
		0.874569, -0.349475, -0.336148,
		0.451749, 0.335304, 0.826737,
		26.667772, 38.061260, 33.973682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793285, 37.325169, 33.646965>,  <26.351547, 37.826550, 33.394966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793285, 37.325169, 33.646965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745537, 37.536198, 33.983398>,  <26.716888, 37.662815, 34.185257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745537, 37.536198, 33.983398>,  <26.793285, 37.325169, 33.646965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745537, 37.536198, 33.983398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031851, -0.848738, 0.527854,
		0.992339, 0.036221, 0.118118,
		-0.119371, 0.527573, 0.841081,
		26.709726, 37.694469, 34.235722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331448, 36.989101, 34.222660>,  <26.793285, 37.325169, 33.646965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331448, 36.989101, 34.222660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034008, 37.179550, 34.410435>,  <26.855545, 37.293819, 34.523098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034008, 37.179550, 34.410435>,  <27.331448, 36.989101, 34.222660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034008, 37.179550, 34.410435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134140, -0.794043, 0.592877,
		0.655032, 0.377893, 0.654316,
		-0.743599, 0.476123, 0.469433,
		26.810928, 37.322388, 34.551266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348873, 36.754341, 34.947052>,  <27.331448, 36.989101, 34.222660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348873, 36.754341, 34.947052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976641, 36.897190, 34.914837>,  <26.753302, 36.982899, 34.895508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976641, 36.897190, 34.914837>,  <27.348873, 36.754341, 34.947052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976641, 36.897190, 34.914837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357404, -0.838622, 0.411067,
		0.079259, 0.411316, 0.908041,
		-0.930581, 0.357118, -0.080538,
		26.697466, 37.004326, 34.890675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051853, 36.751373, 35.620319>,  <27.348873, 36.754341, 34.947052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051853, 36.751373, 35.620319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755474, 36.739491, 35.351959>,  <26.577646, 36.732361, 35.190941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755474, 36.739491, 35.351959>,  <27.051853, 36.751373, 35.620319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755474, 36.739491, 35.351959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385066, -0.799686, 0.460680,
		-0.550200, 0.599683, 0.581086,
		-0.740948, -0.029710, -0.670905,
		26.533190, 36.730576, 35.150688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608358, 37.249653, 35.636208>,  <27.051853, 36.751373, 35.620319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608358, 37.249653, 35.636208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621782, 37.408768, 36.002953>,  <26.629837, 37.504234, 36.223000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.621782, 37.408768, 36.002953>,  <26.608358, 37.249653, 35.636208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621782, 37.408768, 36.002953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358749, 0.851449, -0.382536,
		-0.932831, 0.341762, -0.114130,
		0.033560, 0.397785, 0.916865,
		26.631851, 37.528103, 36.278011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454523, 36.615982, 36.080013>,  <26.608358, 37.249653, 35.636208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454523, 36.615982, 36.080013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347601, 36.564686, 35.697998>,  <26.283447, 36.533909, 35.468788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347601, 36.564686, 35.697998>,  <26.454523, 36.615982, 36.080013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347601, 36.564686, 35.697998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690262, -0.666073, 0.282638,
		-0.672373, 0.734779, 0.089523,
		-0.267306, -0.128244, -0.955040,
		26.267408, 36.526211, 35.411488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731644, 36.579994, 36.112869>,  <26.454523, 36.615982, 36.080013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731644, 36.579994, 36.112869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854269, 36.399132, 35.777828>,  <25.927843, 36.290615, 35.576805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854269, 36.399132, 35.777828>,  <25.731644, 36.579994, 36.112869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854269, 36.399132, 35.777828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595218, -0.777761, 0.202000,
		-0.742789, 0.436630, -0.507562,
		0.306562, -0.452153, -0.837602,
		25.946238, 36.263485, 35.526546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286499, 36.077995, 35.980522>,  <25.731644, 36.579994, 36.112869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286499, 36.077995, 35.980522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552340, 35.928391, 35.721779>,  <25.711843, 35.838627, 35.566532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552340, 35.928391, 35.721779>,  <25.286499, 36.077995, 35.980522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552340, 35.928391, 35.721779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403156, -0.908374, 0.111000,
		-0.629103, 0.187013, -0.754491,
		0.664602, -0.374008, -0.646856,
		25.751720, 35.816189, 35.527721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420536, 36.364132, 35.172302>,  <25.286499, 36.077995, 35.980522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420536, 36.364132, 35.172302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660864, 36.189651, 34.904350>,  <25.805061, 36.084965, 34.743580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.660864, 36.189651, 34.904350>,  <25.420536, 36.364132, 35.172302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660864, 36.189651, 34.904350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725832, -0.648801, -0.228527,
		-0.334937, 0.623526, -0.706422,
		0.600820, -0.436201, -0.669883,
		25.841110, 36.058792, 34.703384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022396, 36.198170, 34.551479>,  <25.420536, 36.364132, 35.172302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022396, 36.198170, 34.551479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328888, 35.949043, 34.614716>,  <25.512783, 35.799568, 34.652657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328888, 35.949043, 34.614716>,  <25.022396, 36.198170, 34.551479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328888, 35.949043, 34.614716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586034, -0.778244, -0.225612,
		0.263550, 0.080222, -0.961304,
		0.766228, -0.622817, 0.158094,
		25.558756, 35.762199, 34.662144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.982256, 35.683838, 34.009922>,  <25.022396, 36.198170, 34.551479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.982256, 35.683838, 34.009922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200342, 35.545643, 34.315437>,  <25.331194, 35.462727, 34.498749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200342, 35.545643, 34.315437>,  <24.982256, 35.683838, 34.009922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200342, 35.545643, 34.315437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581126, -0.812436, 0.047330,
		0.604181, -0.469664, -0.643725,
		0.545214, -0.345490, 0.763792,
		25.363907, 35.441998, 34.544575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151957, 35.064476, 33.833466>,  <24.982256, 35.683838, 34.009922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151957, 35.064476, 33.833466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199368, 35.075298, 34.230499>,  <25.227814, 35.081791, 34.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199368, 35.075298, 34.230499>,  <25.151957, 35.064476, 33.833466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199368, 35.075298, 34.230499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603996, -0.791461, 0.093700,
		0.788125, -0.610621, -0.077464,
		0.118525, 0.027060, 0.992582,
		25.234926, 35.083416, 34.528275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247545, 34.417873, 33.963295>,  <25.151957, 35.064476, 33.833466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247545, 34.417873, 33.963295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140724, 34.575916, 34.314880>,  <25.076632, 34.670742, 34.525829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140724, 34.575916, 34.314880>,  <25.247545, 34.417873, 33.963295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140724, 34.575916, 34.314880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551691, -0.810516, 0.196724,
		0.790139, -0.432378, 0.434431,
		-0.267054, 0.395111, 0.878959,
		25.060608, 34.694450, 34.578568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155972, 33.790092, 33.589981>,  <25.247545, 34.417873, 33.963295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155972, 33.790092, 33.589981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495098, 33.951260, 33.452076>,  <25.698574, 34.047958, 33.369331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495098, 33.951260, 33.452076>,  <25.155972, 33.790092, 33.589981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495098, 33.951260, 33.452076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011306, -0.663734, -0.747883,
		-0.530166, 0.630171, -0.567282,
		0.847819, 0.402916, -0.344764,
		25.749443, 34.072136, 33.348648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015224, 33.832428, 32.857288>,  <25.155972, 33.790092, 33.589981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015224, 33.832428, 32.857288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410786, 33.859993, 32.909931>,  <25.648123, 33.876534, 32.941517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410786, 33.859993, 32.909931>,  <25.015224, 33.832428, 32.857288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410786, 33.859993, 32.909931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148392, -0.499780, -0.853346,
		0.006963, 0.863406, -0.504461,
		0.988904, 0.068917, 0.131602,
		25.707457, 33.880669, 32.949413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243525, 34.197102, 32.271336>,  <25.015224, 33.832428, 32.857288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243525, 34.197102, 32.271336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556393, 33.990257, 32.410366>,  <25.744114, 33.866150, 32.493786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556393, 33.990257, 32.410366>,  <25.243525, 34.197102, 32.271336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556393, 33.990257, 32.410366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030018, -0.525931, -0.849997,
		0.622342, 0.675275, -0.395845,
		0.782169, -0.517107, 0.347580,
		25.791044, 33.835125, 32.514641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695824, 34.322903, 31.695623>,  <25.243525, 34.197102, 32.271336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695824, 34.322903, 31.695623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797098, 34.018047, 31.933968>,  <25.857862, 33.835136, 32.076973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797098, 34.018047, 31.933968>,  <25.695824, 34.322903, 31.695623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797098, 34.018047, 31.933968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075202, -0.629568, -0.773297,
		0.964490, 0.150980, -0.216712,
		0.253187, -0.762135, 0.595858,
		25.873055, 33.789406, 32.112724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113232, 33.938431, 31.279221>,  <25.695824, 34.322903, 31.695623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113232, 33.938431, 31.279221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039209, 33.699833, 31.591618>,  <25.994797, 33.556675, 31.779057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039209, 33.699833, 31.591618>,  <26.113232, 33.938431, 31.279221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039209, 33.699833, 31.591618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044727, -0.788785, -0.613040,
		0.981710, -0.148378, 0.119290,
		-0.185056, -0.596492, 0.780994,
		25.983692, 33.520885, 31.825916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541889, 33.383034, 31.277695>,  <26.113232, 33.938431, 31.279221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541889, 33.383034, 31.277695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284485, 33.173321, 31.500771>,  <26.130041, 33.047493, 31.634617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284485, 33.173321, 31.500771>,  <26.541889, 33.383034, 31.277695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284485, 33.173321, 31.500771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095106, -0.777712, -0.621385,
		0.759504, -0.346830, 0.550330,
		-0.643513, -0.524284, 0.557689,
		26.091431, 33.016037, 31.668077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780428, 32.696152, 31.388390>,  <26.541889, 33.383034, 31.277695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780428, 32.696152, 31.388390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402411, 32.624187, 31.497585>,  <26.175600, 32.581009, 31.563103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402411, 32.624187, 31.497585>,  <26.780428, 32.696152, 31.388390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402411, 32.624187, 31.497585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004959, -0.842764, -0.538261,
		0.326908, -0.507326, 0.797340,
		-0.945043, -0.179916, 0.272991,
		26.118898, 32.570213, 31.579483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824425, 32.075394, 31.584774>,  <26.780428, 32.696152, 31.388390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824425, 32.075394, 31.584774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453558, 32.150322, 31.454988>,  <26.231037, 32.195278, 31.377117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453558, 32.150322, 31.454988>,  <26.824425, 32.075394, 31.584774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453558, 32.150322, 31.454988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074039, -0.757350, -0.648799,
		-0.367261, -0.625567, 0.688321,
		-0.927167, 0.187316, -0.324462,
		26.175407, 32.206516, 31.357651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335505, 31.417322, 31.598377>,  <26.824425, 32.075394, 31.584774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335505, 31.417322, 31.598377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221760, 31.687990, 31.326715>,  <26.153513, 31.850391, 31.163717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221760, 31.687990, 31.326715>,  <26.335505, 31.417322, 31.598377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221760, 31.687990, 31.326715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107197, -0.726400, -0.678861,
		-0.952705, -0.120239, 0.279098,
		-0.284362, 0.676673, -0.679156,
		26.136452, 31.890991, 31.122969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622562, 31.517132, 30.889421>,  <26.335505, 31.417322, 31.598377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622562, 31.517132, 30.889421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689665, 31.139374, 30.776300>,  <26.729925, 30.912720, 30.708427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689665, 31.139374, 30.776300>,  <26.622562, 31.517132, 30.889421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689665, 31.139374, 30.776300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833011, 0.289205, -0.471650,
		0.527211, -0.156455, 0.835207,
		0.167754, -0.944395, -0.282801,
		26.739990, 30.856054, 30.691460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226234, 31.023367, 30.494257>,  <26.622562, 31.517132, 30.889421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226234, 31.023367, 30.494257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867748, 31.082872, 30.327085>,  <25.652657, 31.118576, 30.226782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867748, 31.082872, 30.327085>,  <26.226234, 31.023367, 30.494257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867748, 31.082872, 30.327085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091575, 0.859766, 0.502411,
		0.434063, 0.488541, -0.756913,
		-0.896216, 0.148764, -0.417931,
		25.598883, 31.127502, 30.201706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253355, 31.622341, 30.074078>,  <26.226234, 31.023367, 30.494257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253355, 31.622341, 30.074078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886595, 31.565144, 30.223125>,  <25.666538, 31.530825, 30.312555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886595, 31.565144, 30.223125>,  <26.253355, 31.622341, 30.074078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886595, 31.565144, 30.223125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098361, 0.823860, 0.558194,
		-0.386806, 0.548459, -0.741332,
		-0.916900, -0.142995, 0.372621,
		25.611525, 31.522245, 30.334911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819548, 32.249710, 29.972044>,  <26.253355, 31.622341, 30.074078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819548, 32.249710, 29.972044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713575, 32.042355, 30.297272>,  <25.649992, 31.917942, 30.492409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713575, 32.042355, 30.297272>,  <25.819548, 32.249710, 29.972044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713575, 32.042355, 30.297272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222228, 0.787679, 0.574610,
		-0.938311, 0.332918, -0.093478,
		-0.264929, -0.518390, 0.813071,
		25.634096, 31.886837, 30.541193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352200, 32.743103, 30.438055>,  <25.819548, 32.249710, 29.972044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352200, 32.743103, 30.438055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506451, 32.446415, 30.657558>,  <25.599001, 32.268402, 30.789261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506451, 32.446415, 30.657558>,  <25.352200, 32.743103, 30.438055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506451, 32.446415, 30.657558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226127, 0.652600, 0.723173,
		-0.894516, -0.154785, 0.419384,
		0.385626, -0.741724, 0.548760,
		25.622139, 32.223896, 30.822187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955677, 32.543167, 30.917614>,  <25.352200, 32.743103, 30.438055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955677, 32.543167, 30.917614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302896, 32.436260, 31.084972>,  <25.511229, 32.372116, 31.185389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302896, 32.436260, 31.084972>,  <24.955677, 32.543167, 30.917614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302896, 32.436260, 31.084972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092307, 0.741161, 0.664951,
		-0.487819, -0.615832, 0.618695,
		0.868051, -0.267266, 0.418398,
		25.563313, 32.356079, 31.210491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878866, 32.514904, 31.675541>,  <24.955677, 32.543167, 30.917614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878866, 32.514904, 31.675541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267820, 32.563663, 31.595936>,  <25.501192, 32.592918, 31.548172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267820, 32.563663, 31.595936>,  <24.878866, 32.514904, 31.675541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267820, 32.563663, 31.595936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042274, 0.746637, 0.663887,
		0.229518, -0.653968, 0.720866,
		0.972386, 0.121900, -0.199012,
		25.559536, 32.600235, 31.536232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.086592, 32.582264, 32.294449>,  <24.878866, 32.514904, 31.675541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.086592, 32.582264, 32.294449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403044, 32.703480, 32.081928>,  <25.592915, 32.776211, 31.954416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403044, 32.703480, 32.081928>,  <25.086592, 32.582264, 32.294449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403044, 32.703480, 32.081928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227308, 0.660754, 0.715357,
		0.567839, -0.686710, 0.453860,
		0.791132, 0.303042, -0.531296,
		25.640383, 32.794392, 31.922539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632381, 32.626232, 32.742546>,  <25.086592, 32.582264, 32.294449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632381, 32.626232, 32.742546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740150, 32.874928, 32.448376>,  <25.804811, 33.024143, 32.271873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740150, 32.874928, 32.448376>,  <25.632381, 32.626232, 32.742546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740150, 32.874928, 32.448376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290801, 0.675494, 0.677601,
		0.918066, -0.396425, 0.001193,
		0.269423, 0.621736, -0.735429,
		25.820978, 33.061447, 32.227749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353477, 32.759457, 32.714993>,  <25.632381, 32.626232, 32.742546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353477, 32.759457, 32.714993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168367, 33.067379, 32.539158>,  <26.057301, 33.252132, 32.433659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168367, 33.067379, 32.539158>,  <26.353477, 32.759457, 32.714993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168367, 33.067379, 32.539158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353920, 0.615088, 0.704562,
		0.812761, 0.170476, -0.557098,
		-0.462775, 0.769808, -0.439584,
		26.029535, 33.298321, 32.407284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840723, 33.207497, 32.764843>,  <26.353477, 32.759457, 32.714993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840723, 33.207497, 32.764843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491352, 33.398323, 32.725773>,  <26.281731, 33.512817, 32.702332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491352, 33.398323, 32.725773>,  <26.840723, 33.207497, 32.764843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491352, 33.398323, 32.725773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283150, 0.660730, 0.695170,
		0.396174, 0.579524, -0.712179,
		-0.873426, 0.477061, -0.097672,
		26.229324, 33.541443, 32.696472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013250, 33.898289, 32.831722>,  <26.840723, 33.207497, 32.764843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013250, 33.898289, 32.831722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622929, 33.907310, 32.918713>,  <26.388735, 33.912724, 32.970905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622929, 33.907310, 32.918713>,  <27.013250, 33.898289, 32.831722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622929, 33.907310, 32.918713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158457, 0.758316, 0.632336,
		-0.150649, 0.651497, -0.743543,
		-0.975806, 0.022559, 0.217474,
		26.330187, 33.914078, 32.983955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974070, 34.471413, 33.101082>,  <27.013250, 33.898289, 32.831722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974070, 34.471413, 33.101082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600380, 34.352745, 33.180290>,  <26.376167, 34.281544, 33.227814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600380, 34.352745, 33.180290>,  <26.974070, 34.471413, 33.101082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600380, 34.352745, 33.180290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070971, 0.698670, 0.711915,
		-0.349558, 0.651034, -0.673769,
		-0.934223, -0.296673, 0.198021,
		26.320112, 34.263744, 33.239697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469400, 35.049450, 33.109890>,  <26.974070, 34.471413, 33.101082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469400, 35.049450, 33.109890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368097, 34.736248, 33.337139>,  <26.307316, 34.548328, 33.473488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368097, 34.736248, 33.337139>,  <26.469400, 35.049450, 33.109890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368097, 34.736248, 33.337139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221785, 0.618622, 0.753737,
		-0.941633, 0.064888, -0.330329,
		-0.253257, -0.783005, 0.568123,
		26.292120, 34.501347, 33.507576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095045, 35.198811, 33.530743>,  <26.469400, 35.049450, 33.109890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095045, 35.198811, 33.530743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252314, 35.131081, 33.892239>,  <27.346676, 35.090443, 34.109135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.252314, 35.131081, 33.892239>,  <27.095045, 35.198811, 33.530743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252314, 35.131081, 33.892239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919302, 0.090857, -0.382921,
		-0.017272, 0.981363, 0.191386,
		0.393173, -0.169328, 0.903738,
		27.370266, 35.080284, 34.163361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725918, 35.544708, 33.817825>,  <27.095045, 35.198811, 33.530743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725918, 35.544708, 33.817825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708111, 35.170010, 33.956688>,  <27.697426, 34.945190, 34.040005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708111, 35.170010, 33.956688>,  <27.725918, 35.544708, 33.817825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708111, 35.170010, 33.956688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976115, -0.114754, -0.184473,
		0.212643, 0.330656, 0.919483,
		-0.044517, -0.936749, 0.347160,
		27.694756, 34.888985, 34.060837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221304, 35.522579, 34.312618>,  <27.725918, 35.544708, 33.817825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221304, 35.522579, 34.312618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156994, 35.182442, 34.112194>,  <28.118408, 34.978359, 33.991940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156994, 35.182442, 34.112194>,  <28.221304, 35.522579, 34.312618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156994, 35.182442, 34.112194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923596, 0.049393, -0.380172,
		0.348027, -0.523903, 0.777434,
		-0.160774, -0.850345, -0.501065,
		28.108763, 34.927338, 33.961876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865805, 35.466549, 34.013126>,  <28.221304, 35.522579, 34.312618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865805, 35.466549, 34.013126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691008, 35.113777, 33.942425>,  <28.586128, 34.902115, 33.900002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691008, 35.113777, 33.942425>,  <28.865805, 35.466549, 34.013126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691008, 35.113777, 33.942425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825475, -0.315176, -0.468247,
		0.357249, -0.350530, 0.865738,
		-0.436994, -0.881926, -0.176757,
		28.559910, 34.849201, 33.889397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535358, 35.445160, 34.085976>,  <28.865805, 35.466549, 34.013126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535358, 35.445160, 34.085976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419893, 35.546978, 33.716785>,  <29.350615, 35.608067, 33.495270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419893, 35.546978, 33.716785>,  <29.535358, 35.445160, 34.085976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419893, 35.546978, 33.716785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443707, 0.889807, 0.106624,
		0.848409, -0.378751, -0.369797,
		-0.288664, 0.254542, -0.922974,
		29.333294, 35.623341, 33.439892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126316, 35.518665, 33.664913>,  <29.535358, 35.445160, 34.085976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126316, 35.518665, 33.664913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816980, 35.733173, 33.529644>,  <29.631378, 35.861877, 33.448483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816980, 35.733173, 33.529644>,  <30.126316, 35.518665, 33.664913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816980, 35.733173, 33.529644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585412, 0.808787, -0.056174,
		0.243386, -0.241412, -0.939406,
		-0.773340, 0.536268, -0.338173,
		29.584978, 35.894054, 33.428192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016590, 35.873398, 34.381195>,  <30.126316, 35.518665, 33.664913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016590, 35.873398, 34.381195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388201, 35.833256, 34.238739>,  <30.611168, 35.809170, 34.153263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388201, 35.833256, 34.238739>,  <30.016590, 35.873398, 34.381195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388201, 35.833256, 34.238739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326343, 0.231389, -0.916493,
		0.174380, 0.967671, 0.182217,
		0.929027, -0.100353, -0.356142,
		30.666908, 35.803150, 34.131897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548563, 35.585995, 34.813644>,  <30.016590, 35.873398, 34.381195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548563, 35.585995, 34.813644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631107, 35.224567, 34.963829>,  <29.680634, 35.007710, 35.053940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631107, 35.224567, 34.963829>,  <29.548563, 35.585995, 34.813644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631107, 35.224567, 34.963829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964128, 0.253240, 0.079540,
		-0.166952, 0.345583, 0.923417,
		0.206359, -0.903572, 0.375465,
		29.693014, 34.953495, 35.076469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008387, 35.716576, 35.409439>,  <29.548563, 35.585995, 34.813644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008387, 35.716576, 35.409439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050846, 35.341583, 35.276859>,  <30.076321, 35.116589, 35.197311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050846, 35.341583, 35.276859>,  <30.008387, 35.716576, 35.409439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050846, 35.341583, 35.276859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993822, 0.089157, 0.066100,
		-0.032418, -0.336414, 0.941156,
		0.106148, -0.937484, -0.331445,
		30.082691, 35.060337, 35.177425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511408, 35.552017, 35.841446>,  <30.008387, 35.716576, 35.409439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511408, 35.552017, 35.841446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527157, 35.256363, 35.572487>,  <30.536606, 35.078968, 35.411110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527157, 35.256363, 35.572487>,  <30.511408, 35.552017, 35.841446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527157, 35.256363, 35.572487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994628, -0.035481, 0.097246,
		-0.095736, -0.672616, 0.733773,
		0.039375, -0.739140, -0.672399,
		30.538969, 35.034622, 35.370766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848507, 34.996639, 36.204453>,  <30.511408, 35.552017, 35.841446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848507, 34.996639, 36.204453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888762, 34.956905, 35.808472>,  <30.912914, 34.933064, 35.570885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888762, 34.956905, 35.808472>,  <30.848507, 34.996639, 36.204453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888762, 34.956905, 35.808472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994242, 0.046850, 0.096369,
		0.036807, -0.993950, 0.103478,
		0.100634, -0.099335, -0.989952,
		30.918951, 34.927105, 35.511486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262997, 34.475338, 35.932243>,  <30.848507, 34.996639, 36.204453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262997, 34.475338, 35.932243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291630, 34.692135, 35.597313>,  <31.308809, 34.822212, 35.396355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291630, 34.692135, 35.597313>,  <31.262997, 34.475338, 35.932243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291630, 34.692135, 35.597313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968502, -0.238494, -0.071581,
		-0.238494, -0.805829, -0.541996,
		0.071581, 0.541996, -0.837327,
		31.313105, 34.854733, 35.346115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482136, 34.051754, 35.294048>,  <31.262997, 34.475338, 35.932243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482136, 34.051754, 35.294048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597454, 34.433914, 35.268433>,  <31.666645, 34.663208, 35.253063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597454, 34.433914, 35.268433>,  <31.482136, 34.051754, 35.294048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597454, 34.433914, 35.268433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949762, -0.293823, -0.107795,
		-0.121804, -0.029748, -0.992108,
		0.288297, 0.955397, -0.064043,
		31.683943, 34.720531, 35.249218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864613, 34.176136, 34.641514>,  <31.482136, 34.051754, 35.294048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864613, 34.176136, 34.641514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979530, 34.397697, 34.954090>,  <32.048481, 34.530632, 35.141636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979530, 34.397697, 34.954090>,  <31.864613, 34.176136, 34.641514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979530, 34.397697, 34.954090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950978, -0.262443, -0.163599,
		0.114467, 0.790138, -0.602146,
		0.287295, 0.553901, 0.781444,
		32.065720, 34.563869, 35.188522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897993, 34.644619, 34.003452>,  <31.864613, 34.176136, 34.641514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897993, 34.644619, 34.003452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206474, 34.806450, 34.200047>,  <32.391563, 34.903549, 34.318005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206474, 34.806450, 34.200047>,  <31.897993, 34.644619, 34.003452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206474, 34.806450, 34.200047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316500, 0.426192, -0.847460,
		-0.552333, 0.809120, 0.200632,
		0.771204, 0.404580, 0.491487,
		32.437836, 34.927822, 34.347492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818373, 35.429764, 33.982380>,  <31.897993, 34.644619, 34.003452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818373, 35.429764, 33.982380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191833, 35.286613, 33.976471>,  <32.415909, 35.200722, 33.972923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191833, 35.286613, 33.976471>,  <31.818373, 35.429764, 33.982380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191833, 35.286613, 33.976471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232425, 0.636720, -0.735232,
		0.272531, 0.683016, 0.677655,
		0.933652, -0.357877, -0.014776,
		32.471928, 35.179249, 33.972038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214386, 35.946812, 33.777737>,  <31.818373, 35.429764, 33.982380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214386, 35.946812, 33.777737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481319, 35.661739, 33.691250>,  <32.641479, 35.490696, 33.639359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481319, 35.661739, 33.691250>,  <32.214386, 35.946812, 33.777737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481319, 35.661739, 33.691250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461536, 0.623592, -0.630965,
		0.584510, 0.321272, 0.745072,
		0.667332, -0.712683, -0.216217,
		32.681519, 35.447933, 33.626385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851799, 36.263435, 33.589996>,  <32.214386, 35.946812, 33.777737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851799, 36.263435, 33.589996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900867, 35.891380, 33.451550>,  <32.930309, 35.668148, 33.368481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900867, 35.891380, 33.451550>,  <32.851799, 36.263435, 33.589996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900867, 35.891380, 33.451550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628300, 0.342747, -0.698401,
		0.768239, -0.131794, 0.626450,
		0.122669, -0.930137, -0.346117,
		32.937668, 35.612339, 33.347713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553112, 36.023495, 33.651150>,  <32.851799, 36.263435, 33.589996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553112, 36.023495, 33.651150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380554, 35.830029, 33.346527>,  <33.277020, 35.713947, 33.163754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380554, 35.830029, 33.346527>,  <33.553112, 36.023495, 33.651150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380554, 35.830029, 33.346527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706605, 0.343689, -0.618537,
		0.560903, -0.804951, 0.193496,
		-0.431390, -0.483664, -0.761559,
		33.251137, 35.684929, 33.118061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136559, 35.845757, 33.282776>,  <33.553112, 36.023495, 33.651150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136559, 35.845757, 33.282776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824120, 35.799480, 33.037338>,  <33.636654, 35.771713, 32.890076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824120, 35.799480, 33.037338>,  <34.136559, 35.845757, 33.282776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824120, 35.799480, 33.037338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527087, 0.404671, -0.747276,
		0.334754, -0.907115, -0.255111,
		-0.781102, -0.115688, -0.613594,
		33.589790, 35.764774, 32.853260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415272, 35.480495, 32.668522>,  <34.136559, 35.845757, 33.282776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415272, 35.480495, 32.668522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063782, 35.639305, 32.562534>,  <33.852886, 35.734592, 32.498943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063782, 35.639305, 32.562534>,  <34.415272, 35.480495, 32.668522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063782, 35.639305, 32.562534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430040, 0.417616, -0.800414,
		-0.207131, -0.817293, -0.537708,
		-0.878728, 0.397026, -0.264967,
		33.800163, 35.758411, 32.483044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257393, 35.237713, 32.017357>,  <34.415272, 35.480495, 32.668522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257393, 35.237713, 32.017357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058395, 35.583900, 32.040890>,  <33.938995, 35.791615, 32.055008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058395, 35.583900, 32.040890>,  <34.257393, 35.237713, 32.017357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058395, 35.583900, 32.040890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435578, 0.307876, -0.845863,
		-0.750181, -0.395188, -0.530146,
		-0.497494, 0.865471, 0.058828,
		33.909149, 35.843540, 32.058537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090214, 35.333405, 31.284576>,  <34.257393, 35.237713, 32.017357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090214, 35.333405, 31.284576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048866, 35.693043, 31.454723>,  <34.024055, 35.908825, 31.556812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048866, 35.693043, 31.454723>,  <34.090214, 35.333405, 31.284576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048866, 35.693043, 31.454723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325218, 0.434704, -0.839801,
		-0.939972, 0.051526, -0.337339,
		-0.103371, 0.899098, 0.425367,
		34.017857, 35.962772, 31.582333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757050, 35.746361, 30.787907>,  <34.090214, 35.333405, 31.284576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757050, 35.746361, 30.787907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916218, 36.022064, 31.030092>,  <34.011719, 36.187485, 31.175404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916218, 36.022064, 31.030092>,  <33.757050, 35.746361, 30.787907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916218, 36.022064, 31.030092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386829, 0.472374, -0.791976,
		-0.831880, 0.549353, -0.078658,
		0.397918, 0.689257, 0.605464,
		34.035595, 36.228840, 31.211731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603584, 36.405056, 30.541229>,  <33.757050, 35.746361, 30.787907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603584, 36.405056, 30.541229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940186, 36.467247, 30.748190>,  <34.142147, 36.504562, 30.872366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940186, 36.467247, 30.748190>,  <33.603584, 36.405056, 30.541229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940186, 36.467247, 30.748190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327075, 0.615635, -0.716949,
		-0.430000, 0.772542, 0.467204,
		0.841500, 0.155477, 0.517402,
		34.192635, 36.513889, 30.903410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720646, 37.152908, 30.550304>,  <33.603584, 36.405056, 30.541229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720646, 37.152908, 30.550304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083481, 37.062752, 30.692514>,  <34.301182, 37.008659, 30.777840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083481, 37.062752, 30.692514>,  <33.720646, 37.152908, 30.550304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083481, 37.062752, 30.692514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364472, 0.843084, -0.395435,
		-0.210609, 0.488272, 0.846897,
		0.907085, -0.225388, 0.355523,
		34.355606, 36.995136, 30.799171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928425, 37.730907, 30.901981>,  <33.720646, 37.152908, 30.550304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928425, 37.730907, 30.901981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243046, 37.508297, 30.794935>,  <34.431820, 37.374733, 30.730707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243046, 37.508297, 30.794935>,  <33.928425, 37.730907, 30.901981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243046, 37.508297, 30.794935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376670, 0.775792, -0.506228,
		0.489340, 0.297372, 0.819827,
		0.786553, -0.556522, -0.267615,
		34.479012, 37.341339, 30.714651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415607, 38.201275, 30.871172>,  <33.928425, 37.730907, 30.901981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415607, 38.201275, 30.871172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615742, 37.910049, 30.683733>,  <34.735821, 37.735313, 30.571270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615742, 37.910049, 30.683733>,  <34.415607, 38.201275, 30.871172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615742, 37.910049, 30.683733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493357, 0.684487, -0.536727,
		0.711522, 0.037357, 0.701670,
		0.500334, -0.728067, -0.468598,
		34.765842, 37.691628, 30.543154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826530, 38.580246, 30.520414>,  <34.415607, 38.201275, 30.871172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826530, 38.580246, 30.520414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001656, 38.241531, 30.399574>,  <35.106731, 38.038303, 30.327070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001656, 38.241531, 30.399574>,  <34.826530, 38.580246, 30.520414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001656, 38.241531, 30.399574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725347, 0.531217, -0.437813,
		0.531217, -0.027448, 0.846791,
		0.437813, -0.846791, -0.302101,
		35.132999, 37.987495, 30.308945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538784, 38.599079, 30.595066>,  <34.826530, 38.580246, 30.520414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538784, 38.599079, 30.595066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464504, 38.355713, 30.286430>,  <35.419937, 38.209694, 30.101250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464504, 38.355713, 30.286430>,  <35.538784, 38.599079, 30.595066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464504, 38.355713, 30.286430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639852, 0.521069, -0.564869,
		0.745725, -0.598597, 0.292534,
		-0.185698, -0.608415, -0.771587,
		35.408794, 38.173187, 30.054955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197189, 38.396358, 30.316351>,  <35.538784, 38.599079, 30.595066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197189, 38.396358, 30.316351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932316, 38.331444, 30.023729>,  <35.773392, 38.292496, 29.848156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932316, 38.331444, 30.023729>,  <36.197189, 38.396358, 30.316351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932316, 38.331444, 30.023729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510030, 0.617622, -0.598676,
		0.548978, -0.769551, -0.326212,
		-0.662187, -0.162282, -0.731555,
		35.733662, 38.282761, 29.804262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593685, 38.497208, 29.683876>,  <36.197189, 38.396358, 30.316351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593685, 38.497208, 29.683876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213715, 38.524158, 29.561827>,  <35.985733, 38.540329, 29.488596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213715, 38.524158, 29.561827>,  <36.593685, 38.497208, 29.683876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213715, 38.524158, 29.561827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279878, 0.617716, -0.734912,
		0.138961, -0.783509, -0.605642,
		-0.949925, 0.067382, -0.305125,
		35.928738, 38.544373, 29.470289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664829, 38.438038, 28.987284>,  <36.593685, 38.497208, 29.683876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664829, 38.438038, 28.987284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325439, 38.634369, 29.066452>,  <36.121803, 38.752167, 29.113953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325439, 38.634369, 29.066452>,  <36.664829, 38.438038, 28.987284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325439, 38.634369, 29.066452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240669, 0.690919, -0.681696,
		-0.471343, -0.530771, -0.704357,
		-0.848478, 0.490830, 0.197919,
		36.070896, 38.781616, 29.125828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444176, 38.638977, 28.384748>,  <36.664829, 38.438038, 28.987284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444176, 38.638977, 28.384748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235798, 38.865795, 28.639959>,  <36.110771, 39.001884, 28.793085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235798, 38.865795, 28.639959>,  <36.444176, 38.638977, 28.384748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235798, 38.865795, 28.639959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036512, 0.761581, -0.647041,
		-0.852807, -0.313779, -0.417447,
		-0.520948, 0.567043, 0.638025,
		36.079514, 39.035908, 28.831367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942104, 38.925407, 27.967619>,  <36.444176, 38.638977, 28.384748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942104, 38.925407, 27.967619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989052, 39.172081, 28.278982>,  <36.017220, 39.320087, 28.465801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989052, 39.172081, 28.278982>,  <35.942104, 38.925407, 27.967619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989052, 39.172081, 28.278982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126380, 0.768180, -0.627637,
		-0.985014, 0.172042, 0.012225,
		0.117371, 0.616686, 0.778410,
		36.024261, 39.357086, 28.512505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560013, 39.607529, 27.789818>,  <35.942104, 38.925407, 27.967619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560013, 39.607529, 27.789818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810192, 39.690655, 28.090652>,  <35.960300, 39.740532, 28.271152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810192, 39.690655, 28.090652>,  <35.560013, 39.607529, 27.789818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810192, 39.690655, 28.090652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146796, 0.915328, -0.375000,
		-0.766336, 0.344944, 0.541980,
		0.625444, 0.207815, 0.752086,
		35.997826, 39.752998, 28.316278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371376, 40.296036, 27.995899>,  <35.560013, 39.607529, 27.789818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371376, 40.296036, 27.995899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730896, 40.261600, 28.167831>,  <35.946606, 40.240940, 28.270990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730896, 40.261600, 28.167831>,  <35.371376, 40.296036, 27.995899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730896, 40.261600, 28.167831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242443, 0.914537, -0.323796,
		-0.365219, 0.395236, 0.842854,
		0.898797, -0.086088, 0.429829,
		36.000534, 40.235775, 28.296780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425087, 40.863674, 28.390356>,  <35.371376, 40.296036, 27.995899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425087, 40.863674, 28.390356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780350, 40.719673, 28.276115>,  <35.993507, 40.633274, 28.207571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780350, 40.719673, 28.276115>,  <35.425087, 40.863674, 28.390356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780350, 40.719673, 28.276115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268374, 0.910858, -0.313548,
		0.373021, 0.201833, 0.905604,
		0.888161, -0.360000, -0.285603,
		36.046799, 40.611671, 28.190435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926167, 41.454567, 28.508093>,  <35.425087, 40.863674, 28.390356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926167, 41.454567, 28.508093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125435, 41.214260, 28.258001>,  <36.244995, 41.070076, 28.107946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125435, 41.214260, 28.258001>,  <35.926167, 41.454567, 28.508093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125435, 41.214260, 28.258001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357696, 0.799245, -0.482971,
		0.789862, 0.016959, 0.613050,
		0.498168, -0.600766, -0.625227,
		36.274887, 41.034031, 28.070433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575233, 41.630913, 28.483379>,  <35.926167, 41.454567, 28.508093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575233, 41.630913, 28.483379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580154, 41.411087, 28.149235>,  <36.583107, 41.279194, 27.948748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580154, 41.411087, 28.149235>,  <36.575233, 41.630913, 28.483379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580154, 41.411087, 28.149235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583956, 0.682109, -0.440139,
		0.811692, -0.482398, 0.329315,
		0.012307, -0.549563, -0.835362,
		36.583847, 41.246220, 27.898626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245308, 41.609131, 28.295700>,  <36.575233, 41.630913, 28.483379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245308, 41.609131, 28.295700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050137, 41.533115, 27.954922>,  <36.933033, 41.487507, 27.750454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050137, 41.533115, 27.954922>,  <37.245308, 41.609131, 28.295700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050137, 41.533115, 27.954922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631478, 0.596980, -0.494824,
		0.602635, -0.779422, -0.171269,
		-0.487921, -0.190046, -0.851948,
		36.903759, 41.476105, 27.699337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763958, 41.425285, 27.734547>,  <37.245308, 41.609131, 28.295700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763958, 41.425285, 27.734547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431103, 41.540993, 27.545286>,  <37.231392, 41.610416, 27.431730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431103, 41.540993, 27.545286>,  <37.763958, 41.425285, 27.734547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431103, 41.540993, 27.545286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522611, 0.694489, -0.494534,
		0.185546, -0.658793, -0.729084,
		-0.832136, 0.289269, -0.473152,
		37.181461, 41.627773, 27.403341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040829, 41.628113, 27.107195>,  <37.763958, 41.425285, 27.734547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040829, 41.628113, 27.107195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673443, 41.785412, 27.090343>,  <37.453011, 41.879791, 27.080233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673443, 41.785412, 27.090343>,  <38.040829, 41.628113, 27.107195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673443, 41.785412, 27.090343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340828, 0.732965, -0.588727,
		-0.200636, -0.555085, -0.807234,
		-0.918467, 0.393247, -0.042129,
		37.397903, 41.903385, 27.077705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832115, 41.620430, 26.436447>,  <38.040829, 41.628113, 27.107195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832115, 41.620430, 26.436447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687286, 41.920898, 26.657225>,  <37.600391, 42.101181, 26.789692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687286, 41.920898, 26.657225>,  <37.832115, 41.620430, 26.436447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687286, 41.920898, 26.657225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487385, 0.657289, -0.574827,
		-0.794583, 0.060883, -0.604096,
		-0.362069, 0.751175, 0.551944,
		37.578667, 42.146252, 26.822807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920387, 42.066742, 26.034658>,  <37.832115, 41.620430, 26.436447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920387, 42.066742, 26.034658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779388, 42.295517, 26.330935>,  <37.694790, 42.432781, 26.508701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779388, 42.295517, 26.330935>,  <37.920387, 42.066742, 26.034658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779388, 42.295517, 26.330935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434683, 0.801001, -0.411641,
		-0.828730, 0.176862, -0.530967,
		-0.352501, 0.571942, 0.740692,
		37.673637, 42.467098, 26.553143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614906, 42.653111, 25.739658>,  <37.920387, 42.066742, 26.034658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614906, 42.653111, 25.739658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738850, 42.767014, 26.102514>,  <37.813213, 42.835358, 26.320227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738850, 42.767014, 26.102514>,  <37.614906, 42.653111, 25.739658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738850, 42.767014, 26.102514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495042, 0.766249, -0.409628,
		-0.811740, 0.575998, 0.096459,
		0.309857, 0.284760, 0.907138,
		37.831806, 42.852440, 26.374657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559978, 43.384121, 25.710606>,  <37.614906, 42.653111, 25.739658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559978, 43.384121, 25.710606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823605, 43.268269, 25.988237>,  <37.981781, 43.198757, 26.154818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823605, 43.268269, 25.988237>,  <37.559978, 43.384121, 25.710606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823605, 43.268269, 25.988237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629162, 0.717947, -0.297837,
		-0.412051, 0.632984, 0.655397,
		0.659066, -0.289627, 0.694081,
		38.021324, 43.181381, 26.196461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724667, 44.039604, 26.012947>,  <37.559978, 43.384121, 25.710606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724667, 44.039604, 26.012947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017742, 43.790630, 26.123026>,  <38.193588, 43.641247, 26.189074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017742, 43.790630, 26.123026>,  <37.724667, 44.039604, 26.012947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017742, 43.790630, 26.123026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674621, 0.717576, -0.173123,
		-0.089716, 0.312499, 0.945672,
		0.732692, -0.622438, 0.275197,
		38.237549, 43.603897, 26.205585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132256, 44.413620, 26.445263>,  <37.724667, 44.039604, 26.012947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132256, 44.413620, 26.445263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365311, 44.105396, 26.341904>,  <38.505142, 43.920460, 26.279888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365311, 44.105396, 26.341904>,  <38.132256, 44.413620, 26.445263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365311, 44.105396, 26.341904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763446, 0.627939, -0.151141,
		0.278723, -0.109215, 0.954141,
		0.582636, -0.770561, -0.258400,
		38.540100, 43.874229, 26.264383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770775, 44.547882, 26.697390>,  <38.132256, 44.413620, 26.445263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770775, 44.547882, 26.697390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860378, 44.281631, 26.412642>,  <38.914139, 44.121880, 26.241793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860378, 44.281631, 26.412642>,  <38.770775, 44.547882, 26.697390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860378, 44.281631, 26.412642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764465, 0.573064, -0.295281,
		0.604495, -0.478056, 0.637219,
		0.224006, -0.665627, -0.711872,
		38.927582, 44.081944, 26.199080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513500, 44.352200, 26.831850>,  <38.770775, 44.547882, 26.697390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513500, 44.352200, 26.831850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435909, 44.254509, 26.451801>,  <39.389355, 44.195896, 26.223772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435909, 44.254509, 26.451801>,  <39.513500, 44.352200, 26.831850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435909, 44.254509, 26.451801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813462, 0.501295, -0.294929,
		0.548319, -0.830095, 0.101429,
		-0.193973, -0.244224, -0.950120,
		39.377716, 44.181240, 26.166765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118515, 44.177658, 26.493261>,  <39.513500, 44.352200, 26.831850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118515, 44.177658, 26.493261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894436, 44.241951, 26.168217>,  <39.759987, 44.280525, 25.973190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894436, 44.241951, 26.168217>,  <40.118515, 44.177658, 26.493261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894436, 44.241951, 26.168217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701235, 0.614228, -0.361931,
		0.440957, -0.772587, -0.456801,
		-0.560203, 0.160729, -0.812613,
		39.726376, 44.290169, 25.924433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486408, 43.941277, 26.024914>,  <40.118515, 44.177658, 26.493261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486408, 43.941277, 26.024914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240303, 44.216316, 25.870687>,  <40.092640, 44.381340, 25.778151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240303, 44.216316, 25.870687>,  <40.486408, 43.941277, 26.024914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240303, 44.216316, 25.870687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785002, 0.579246, -0.219650,
		0.072307, -0.437814, -0.896153,
		-0.615259, 0.687600, -0.385568,
		40.055725, 44.422596, 25.755016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823273, 44.095074, 25.480721>,  <40.486408, 43.941277, 26.024914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823273, 44.095074, 25.480721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592850, 44.420620, 25.511127>,  <40.454597, 44.615948, 25.529371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592850, 44.420620, 25.511127>,  <40.823273, 44.095074, 25.480721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592850, 44.420620, 25.511127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756533, 0.566058, -0.327469,
		-0.309547, -0.131130, -0.941799,
		-0.576054, 0.813869, 0.076018,
		40.420033, 44.664780, 25.533934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928337, 44.539467, 24.903570>,  <40.823273, 44.095074, 25.480721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928337, 44.539467, 24.903570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763416, 44.785801, 25.172121>,  <40.664463, 44.933601, 25.333252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763416, 44.785801, 25.172121>,  <40.928337, 44.539467, 24.903570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763416, 44.785801, 25.172121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706151, 0.681646, -0.191597,
		-0.575636, 0.395099, -0.715919,
		-0.412304, 0.615837, 0.671380,
		40.639725, 44.970551, 25.373535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873009, 45.142994, 24.535734>,  <40.928337, 44.539467, 24.903570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873009, 45.142994, 24.535734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820400, 45.269161, 24.911652>,  <40.788837, 45.344860, 25.137203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.820400, 45.269161, 24.911652>,  <40.873009, 45.142994, 24.535734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820400, 45.269161, 24.911652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679985, 0.718543, -0.146002,
		-0.721334, 0.619845, -0.308980,
		-0.131517, 0.315418, 0.939795,
		40.780945, 45.363785, 25.193590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882015, 45.843559, 24.569391>,  <40.873009, 45.142994, 24.535734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882015, 45.843559, 24.569391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953701, 45.800522, 24.960554>,  <40.996712, 45.774700, 25.195251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953701, 45.800522, 24.960554>,  <40.882015, 45.843559, 24.569391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953701, 45.800522, 24.960554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667717, 0.743308, -0.040587,
		-0.722520, 0.660240, 0.205056,
		0.179217, -0.107594, 0.977908,
		41.007465, 45.768242, 25.253927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977139, 46.491047, 24.826706>,  <40.882015, 45.843559, 24.569391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977139, 46.491047, 24.826706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116653, 46.261333, 25.122963>,  <41.200363, 46.123505, 25.300716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.116653, 46.261333, 25.122963>,  <40.977139, 46.491047, 24.826706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116653, 46.261333, 25.122963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661210, 0.710843, 0.239798,
		-0.664192, 0.406082, 0.627652,
		0.348785, -0.574282, 0.740641,
		41.221291, 46.089050, 25.345156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805866, 46.698860, 25.524065>,  <40.977139, 46.491047, 24.826706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805866, 46.698860, 25.524065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153481, 46.503212, 25.553848>,  <41.362049, 46.385822, 25.571718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153481, 46.503212, 25.553848>,  <40.805866, 46.698860, 25.524065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153481, 46.503212, 25.553848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474260, 0.866412, 0.156229,
		-0.140925, -0.100457, 0.984910,
		0.869033, -0.489120, 0.074456,
		41.414192, 46.356476, 25.576185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088333, 46.896576, 26.200802>,  <40.805866, 46.698860, 25.524065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088333, 46.896576, 26.200802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373508, 46.814137, 25.932701>,  <41.544613, 46.764671, 25.771841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373508, 46.814137, 25.932701>,  <41.088333, 46.896576, 26.200802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373508, 46.814137, 25.932701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404834, 0.901426, 0.153429,
		0.572561, -0.380726, 0.726100,
		0.712940, -0.206102, -0.670252,
		41.587391, 46.752304, 25.731625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767647, 46.937885, 26.550552>,  <41.088333, 46.896576, 26.200802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767647, 46.937885, 26.550552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822750, 47.015472, 26.162037>,  <41.855812, 47.062027, 25.928928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.822750, 47.015472, 26.162037>,  <41.767647, 46.937885, 26.550552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822750, 47.015472, 26.162037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578876, 0.779950, 0.237864,
		0.803694, -0.595023, -0.004838,
		0.137762, 0.193970, -0.971286,
		41.864079, 47.073662, 25.870651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745834, 46.416641, 27.091833>,  <41.767647, 46.937885, 26.550552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745834, 46.416641, 27.091833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137936, 46.344769, 27.124882>,  <42.373196, 46.301647, 27.144711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137936, 46.344769, 27.124882>,  <41.745834, 46.416641, 27.091833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137936, 46.344769, 27.124882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197747, 0.895931, -0.397748,
		-0.002557, 0.406231, 0.913767,
		0.980250, -0.179677, 0.082622,
		42.432011, 46.290867, 27.149668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002464, 46.984608, 27.372198>,  <41.745834, 46.416641, 27.091833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002464, 46.984608, 27.372198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294025, 46.791859, 27.177671>,  <42.468960, 46.676208, 27.060955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294025, 46.791859, 27.177671>,  <42.002464, 46.984608, 27.372198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294025, 46.791859, 27.177671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221235, 0.838024, -0.498770,
		0.647889, 0.255963, 0.717442,
		0.728900, -0.481871, -0.486319,
		42.512695, 46.647297, 27.031776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566273, 47.393631, 27.138571>,  <42.002464, 46.984608, 27.372198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566273, 47.393631, 27.138571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636059, 47.090862, 26.886656>,  <42.677933, 46.909203, 26.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636059, 47.090862, 26.886656>,  <42.566273, 47.393631, 27.138571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636059, 47.090862, 26.886656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192898, 0.653476, -0.731956,
		0.965584, 0.006218, 0.260019,
		0.174467, -0.756922, -0.629786,
		42.688400, 46.863785, 26.697720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639450, 47.318428, 26.457396>,  <42.566273, 47.393631, 27.138571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639450, 47.318428, 26.457396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008678, 47.330593, 26.610767>,  <43.230213, 47.337891, 26.702791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008678, 47.330593, 26.610767>,  <42.639450, 47.318428, 26.457396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008678, 47.330593, 26.610767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151432, -0.887630, 0.434950,
		0.353571, -0.459553, -0.814739,
		0.923069, 0.030408, 0.383431,
		43.285599, 47.339714, 26.725796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111870, 46.772110, 26.213152>,  <42.639450, 47.318428, 26.457396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111870, 46.772110, 26.213152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207981, 46.905975, 26.577627>,  <43.265648, 46.986294, 26.796312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207981, 46.905975, 26.577627>,  <43.111870, 46.772110, 26.213152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207981, 46.905975, 26.577627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378706, -0.831986, 0.405439,
		0.893783, -0.442491, -0.073169,
		0.240279, 0.334665, 0.911189,
		43.280064, 47.006374, 26.850985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525738, 46.258034, 26.607990>,  <43.111870, 46.772110, 26.213152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525738, 46.258034, 26.607990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312164, 46.474266, 26.868048>,  <43.184021, 46.604004, 27.024082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312164, 46.474266, 26.868048>,  <43.525738, 46.258034, 26.607990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312164, 46.474266, 26.868048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181920, -0.824361, 0.536036,
		0.825722, 0.167935, 0.538498,
		-0.533936, 0.540581, 0.650142,
		43.151985, 46.636440, 27.063091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743973, 46.383713, 27.289305>,  <43.525738, 46.258034, 26.607990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743973, 46.383713, 27.289305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347591, 46.339687, 27.258575>,  <43.109764, 46.313271, 27.240137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.347591, 46.339687, 27.258575>,  <43.743973, 46.383713, 27.289305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347591, 46.339687, 27.258575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055941, -0.858930, 0.509029,
		-0.122013, 0.500125, 0.857314,
		-0.990951, -0.110067, -0.076823,
		43.050304, 46.306667, 27.235529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486088, 46.109001, 28.007244>,  <43.743973, 46.383713, 27.289305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486088, 46.109001, 28.007244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189735, 46.030548, 27.750299>,  <43.011925, 45.983475, 27.596132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189735, 46.030548, 27.750299>,  <43.486088, 46.109001, 28.007244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189735, 46.030548, 27.750299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299859, -0.759208, 0.577657,
		-0.600985, 0.620593, 0.503669,
		-0.740879, -0.196134, -0.642362,
		42.967472, 45.971706, 27.557590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883274, 45.848480, 28.424843>,  <43.486088, 46.109001, 28.007244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883274, 45.848480, 28.424843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782688, 45.729691, 28.056372>,  <42.722336, 45.658417, 27.835289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.782688, 45.729691, 28.056372>,  <42.883274, 45.848480, 28.424843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782688, 45.729691, 28.056372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442817, -0.811007, 0.382335,
		-0.860625, 0.504059, 0.072440,
		-0.251469, -0.296970, -0.921180,
		42.707249, 45.640598, 27.780018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234112, 45.883389, 28.534662>,  <42.883274, 45.848480, 28.424843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234112, 45.883389, 28.534662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357391, 45.631710, 28.249252>,  <42.431358, 45.480701, 28.078007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357391, 45.631710, 28.249252>,  <42.234112, 45.883389, 28.534662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357391, 45.631710, 28.249252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673732, -0.673892, 0.303241,
		-0.671635, 0.387260, -0.631614,
		0.308206, -0.629205, -0.713519,
		42.449852, 45.442951, 28.035194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584034, 45.596817, 28.181879>,  <42.234112, 45.883389, 28.534662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584034, 45.596817, 28.181879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873741, 45.333584, 28.099556>,  <42.047565, 45.175644, 28.050163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873741, 45.333584, 28.099556>,  <41.584034, 45.596817, 28.181879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873741, 45.333584, 28.099556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588268, -0.745453, 0.313434,
		-0.359684, -0.105942, -0.927040,
		0.724271, -0.658085, -0.205805,
		42.091022, 45.136158, 28.037815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198372, 45.049915, 27.962673>,  <41.584034, 45.596817, 28.181879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198372, 45.049915, 27.962673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559101, 44.907768, 28.061007>,  <41.775539, 44.822479, 28.120007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.559101, 44.907768, 28.061007>,  <41.198372, 45.049915, 27.962673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559101, 44.907768, 28.061007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431808, -0.762309, 0.482106,
		0.016077, -0.540926, -0.840917,
		0.901823, -0.355364, 0.245832,
		41.829647, 44.801159, 28.134756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303650, 44.368183, 27.709095>,  <41.198372, 45.049915, 27.962673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303650, 44.368183, 27.709095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566906, 44.392769, 28.009247>,  <41.724861, 44.407520, 28.189337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566906, 44.392769, 28.009247>,  <41.303650, 44.368183, 27.709095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566906, 44.392769, 28.009247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302581, -0.891036, 0.338378,
		0.689413, -0.449751, -0.567832,
		0.658145, 0.061467, 0.750378,
		41.764351, 44.411209, 28.234360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399849, 43.669979, 27.879402>,  <41.303650, 44.368183, 27.709095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399849, 43.669979, 27.879402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583076, 43.840679, 28.191313>,  <41.693012, 43.943100, 28.378460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583076, 43.840679, 28.191313>,  <41.399849, 43.669979, 27.879402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583076, 43.840679, 28.191313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273282, -0.767130, 0.580369,
		0.845864, -0.478950, -0.234778,
		0.458073, 0.426753, 0.779776,
		41.720497, 43.968704, 28.425245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829285, 43.139713, 28.170736>,  <41.399849, 43.669979, 27.879402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829285, 43.139713, 28.170736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794659, 43.408493, 28.464943>,  <41.773884, 43.569763, 28.641468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794659, 43.408493, 28.464943>,  <41.829285, 43.139713, 28.170736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794659, 43.408493, 28.464943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275908, -0.725581, 0.630402,
		0.957278, -0.148363, 0.248210,
		-0.086568, 0.671953, 0.735517,
		41.768688, 43.610077, 28.685598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073097, 42.693981, 28.828070>,  <41.829285, 43.139713, 28.170736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073097, 42.693981, 28.828070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865952, 43.013840, 28.949648>,  <41.741665, 43.205753, 29.022594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865952, 43.013840, 28.949648>,  <42.073097, 42.693981, 28.828070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865952, 43.013840, 28.949648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504858, -0.572512, 0.646026,
		0.690602, 0.181108, 0.700192,
		-0.517868, 0.799644, 0.303944,
		41.710590, 43.253735, 29.040831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143883, 42.739250, 29.606113>,  <42.073097, 42.693981, 28.828070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143883, 42.739250, 29.606113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806923, 42.929016, 29.503906>,  <41.604748, 43.042877, 29.442581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806923, 42.929016, 29.503906>,  <42.143883, 42.739250, 29.606113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806923, 42.929016, 29.503906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459305, -0.384220, 0.800883,
		0.281776, 0.792026, 0.541569,
		-0.842402, 0.474415, -0.255518,
		41.554203, 43.071342, 29.427252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750542, 42.889187, 30.238443>,  <42.143883, 42.739250, 29.606113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750542, 42.889187, 30.238443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466934, 42.916065, 29.957651>,  <41.296772, 42.932194, 29.789175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466934, 42.916065, 29.957651>,  <41.750542, 42.889187, 30.238443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466934, 42.916065, 29.957651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681463, -0.321338, 0.657533,
		-0.181391, 0.944578, 0.273625,
		-0.709017, 0.067195, -0.701983,
		41.254230, 42.936222, 29.747057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992889, 43.126404, 30.577864>,  <41.750542, 42.889187, 30.238443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992889, 43.126404, 30.577864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926476, 42.927860, 30.237026>,  <40.886627, 42.808735, 30.032524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926476, 42.927860, 30.237026>,  <40.992889, 43.126404, 30.577864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926476, 42.927860, 30.237026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846315, -0.371784, 0.381482,
		-0.506145, 0.784479, -0.358344,
		-0.166038, -0.496357, -0.852092,
		40.876663, 42.778954, 29.981398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208206, 43.174507, 30.522131>,  <40.992889, 43.126404, 30.577864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208206, 43.174507, 30.522131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328930, 42.879333, 30.280680>,  <40.401363, 42.702229, 30.135809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328930, 42.879333, 30.280680>,  <40.208206, 43.174507, 30.522131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328930, 42.879333, 30.280680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710743, -0.596150, 0.373430,
		-0.635419, 0.316322, -0.704403,
		0.301805, -0.737933, -0.603628,
		40.419472, 42.657955, 30.099590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567501, 42.990910, 30.206772>,  <40.208206, 43.174507, 30.522131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567501, 42.990910, 30.206772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807880, 42.672569, 30.177149>,  <39.952106, 42.481564, 30.159374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807880, 42.672569, 30.177149>,  <39.567501, 42.990910, 30.206772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807880, 42.672569, 30.177149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765267, -0.599637, 0.234097,
		-0.230714, -0.084006, -0.969388,
		0.600947, -0.795851, -0.074057,
		39.988163, 42.433815, 30.154932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176151, 42.458714, 29.839144>,  <39.567501, 42.990910, 30.206772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176151, 42.458714, 29.839144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445351, 42.235889, 30.033772>,  <39.606873, 42.102196, 30.150549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445351, 42.235889, 30.033772>,  <39.176151, 42.458714, 29.839144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445351, 42.235889, 30.033772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728467, -0.613130, 0.305628,
		0.128078, -0.560139, -0.818437,
		0.673002, -0.557060, 0.486571,
		39.647251, 42.068771, 30.179743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153820, 41.797626, 29.582321>,  <39.176151, 42.458714, 29.839144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153820, 41.797626, 29.582321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305107, 41.760544, 29.950747>,  <39.395878, 41.738293, 30.171803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305107, 41.760544, 29.950747>,  <39.153820, 41.797626, 29.582321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305107, 41.760544, 29.950747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672802, -0.710935, 0.204716,
		0.635837, -0.697120, -0.331261,
		0.378217, -0.092707, 0.921063,
		39.418571, 41.732731, 30.227066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112980, 41.170242, 29.763245>,  <39.153820, 41.797626, 29.582321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112980, 41.170242, 29.763245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203659, 41.270901, 30.139603>,  <39.258068, 41.331295, 30.365417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203659, 41.270901, 30.139603>,  <39.112980, 41.170242, 29.763245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203659, 41.270901, 30.139603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437454, -0.836813, 0.329209,
		0.870197, -0.486229, -0.079620,
		0.226698, 0.251647, 0.940894,
		39.271667, 41.346394, 30.421871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330631, 40.576748, 30.115988>,  <39.112980, 41.170242, 29.763245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330631, 40.576748, 30.115988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212830, 40.828533, 30.403610>,  <39.142151, 40.979607, 30.576183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212830, 40.828533, 30.403610>,  <39.330631, 40.576748, 30.115988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212830, 40.828533, 30.403610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436182, -0.758017, 0.484928,
		0.850303, -0.170828, 0.497798,
		-0.294500, 0.629466, 0.719057,
		39.124481, 41.017372, 30.619328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565830, 40.303753, 30.803093>,  <39.330631, 40.576748, 30.115988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565830, 40.303753, 30.803093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289906, 40.568333, 30.920837>,  <39.124352, 40.727081, 30.991484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289906, 40.568333, 30.920837>,  <39.565830, 40.303753, 30.803093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289906, 40.568333, 30.920837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334285, -0.651638, 0.680897,
		0.642195, 0.371290, 0.670619,
		-0.689811, 0.661447, 0.294362,
		39.082962, 40.766766, 31.009146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514233, 40.144592, 31.478422>,  <39.565830, 40.303753, 30.803093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514233, 40.144592, 31.478422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178547, 40.334217, 31.371849>,  <38.977135, 40.447994, 31.307905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178547, 40.334217, 31.371849>,  <39.514233, 40.144592, 31.478422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178547, 40.334217, 31.371849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539930, -0.667983, 0.512128,
		0.064809, 0.573638, 0.816541,
		-0.839211, 0.474065, -0.266433,
		38.926785, 40.476437, 31.291920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154484, 40.211731, 32.126171>,  <39.514233, 40.144592, 31.478422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154484, 40.211731, 32.126171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884590, 40.248451, 31.833239>,  <38.722652, 40.270481, 31.657480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884590, 40.248451, 31.833239>,  <39.154484, 40.211731, 32.126171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884590, 40.248451, 31.833239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629066, -0.590482, 0.505576,
		-0.386016, 0.801813, 0.456166,
		-0.674735, 0.091798, -0.732329,
		38.682171, 40.275990, 31.613541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515179, 40.468758, 32.408356>,  <39.154484, 40.211731, 32.126171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515179, 40.468758, 32.408356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442310, 40.264683, 32.072136>,  <38.398590, 40.142239, 31.870403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442310, 40.264683, 32.072136>,  <38.515179, 40.468758, 32.408356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442310, 40.264683, 32.072136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563328, -0.646497, 0.514494,
		-0.805900, 0.567231, -0.169628,
		-0.182173, -0.510187, -0.840549,
		38.387657, 40.111626, 31.819971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724628, 40.249435, 32.437767>,  <38.515179, 40.468758, 32.408356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724628, 40.249435, 32.437767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860695, 40.028885, 32.133064>,  <37.942337, 39.896557, 31.950243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860695, 40.028885, 32.133064>,  <37.724628, 40.249435, 32.437767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860695, 40.028885, 32.133064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619503, -0.740832, 0.259583,
		-0.707460, 0.383608, -0.593587,
		0.340170, -0.551374, -0.761756,
		37.962746, 39.863472, 31.904537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092594, 39.916161, 32.135735>,  <37.724628, 40.249435, 32.437767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092594, 39.916161, 32.135735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413372, 39.706379, 32.021309>,  <37.605839, 39.580509, 31.952652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413372, 39.706379, 32.021309>,  <37.092594, 39.916161, 32.135735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413372, 39.706379, 32.021309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506772, -0.850784, 0.139100,
		-0.316332, 0.033420, -0.948060,
		0.801945, -0.524452, -0.286067,
		37.653957, 39.549042, 31.935490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788166, 39.435459, 31.783941>,  <37.092594, 39.916161, 32.135735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788166, 39.435459, 31.783941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157883, 39.312778, 31.874828>,  <37.379711, 39.239170, 31.929361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157883, 39.312778, 31.874828>,  <36.788166, 39.435459, 31.783941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157883, 39.312778, 31.874828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366620, -0.879000, 0.304876,
		0.106220, -0.365096, -0.924891,
		0.924287, -0.306699, 0.227219,
		37.435169, 39.220768, 31.942993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903584, 38.754868, 31.437714>,  <36.788166, 39.435459, 31.783941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903584, 38.754868, 31.437714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147495, 38.776627, 31.753994>,  <37.293842, 38.789680, 31.943762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147495, 38.776627, 31.753994>,  <36.903584, 38.754868, 31.437714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147495, 38.776627, 31.753994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338764, -0.884031, 0.322068,
		0.716525, -0.464252, -0.520636,
		0.609779, 0.054398, 0.790702,
		37.330429, 38.792946, 31.991205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972763, 38.025818, 31.496098>,  <36.903584, 38.754868, 31.437714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972763, 38.025818, 31.496098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097168, 38.194500, 31.836788>,  <37.171810, 38.295708, 32.041203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097168, 38.194500, 31.836788>,  <36.972763, 38.025818, 31.496098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097168, 38.194500, 31.836788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318299, -0.798201, 0.511430,
		0.895522, -0.430163, -0.114019,
		0.311009, 0.421705, 0.851727,
		37.190472, 38.321011, 32.092308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386463, 37.437935, 31.890438>,  <36.972763, 38.025818, 31.496098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386463, 37.437935, 31.890438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263172, 37.717236, 32.148876>,  <37.189198, 37.884815, 32.303940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263172, 37.717236, 32.148876>,  <37.386463, 37.437935, 31.890438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263172, 37.717236, 32.148876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305093, -0.715843, 0.628082,
		0.901064, -0.003529, 0.433672,
		-0.308225, 0.698252, 0.646097,
		37.170704, 37.926712, 32.342705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669914, 37.148132, 32.505142>,  <37.386463, 37.437935, 31.890438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669914, 37.148132, 32.505142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400875, 37.428047, 32.601398>,  <37.239452, 37.595997, 32.659153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400875, 37.428047, 32.601398>,  <37.669914, 37.148132, 32.505142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400875, 37.428047, 32.601398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394726, -0.614335, 0.683215,
		0.625940, 0.364543, 0.689426,
		-0.672600, 0.699786, 0.240642,
		37.199097, 37.637981, 32.673592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626541, 37.117146, 33.187767>,  <37.669914, 37.148132, 32.505142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626541, 37.117146, 33.187767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285072, 37.318020, 33.132553>,  <37.080193, 37.438545, 33.099422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285072, 37.318020, 33.132553>,  <37.626541, 37.117146, 33.187767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285072, 37.318020, 33.132553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470325, -0.629506, 0.618479,
		0.223695, 0.592901, 0.773582,
		-0.853671, 0.502186, -0.138039,
		37.028973, 37.468674, 33.091141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311672, 37.036716, 33.749702>,  <37.626541, 37.117146, 33.187767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311672, 37.036716, 33.749702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008156, 37.175396, 33.529144>,  <36.826046, 37.258602, 33.396809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008156, 37.175396, 33.529144>,  <37.311672, 37.036716, 33.749702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008156, 37.175396, 33.529144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647455, -0.493743, 0.580534,
		-0.070977, 0.797508, 0.599119,
		-0.758791, 0.346698, -0.551395,
		36.780518, 37.279404, 33.363728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862259, 37.356262, 34.216938>,  <37.311672, 37.036716, 33.749702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862259, 37.356262, 34.216938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616928, 37.296597, 33.906693>,  <36.469730, 37.260796, 33.720547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616928, 37.296597, 33.906693>,  <36.862259, 37.356262, 34.216938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616928, 37.296597, 33.906693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664919, -0.432476, 0.608973,
		-0.426272, 0.889221, 0.166067,
		-0.613331, -0.149167, -0.775612,
		36.432930, 37.251846, 33.674007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109398, 37.573376, 34.405380>,  <36.862259, 37.356262, 34.216938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109398, 37.573376, 34.405380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116554, 37.297806, 34.115532>,  <36.120846, 37.132465, 33.941624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116554, 37.297806, 34.115532>,  <36.109398, 37.573376, 34.405380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116554, 37.297806, 34.115532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572661, -0.601142, 0.557393,
		-0.819597, 0.404990, -0.405270,
		0.017886, -0.688920, -0.724617,
		36.121922, 37.091129, 33.898148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336208, 37.359535, 34.327957>,  <36.109398, 37.573376, 34.405380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336208, 37.359535, 34.327957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567337, 37.070000, 34.177128>,  <35.706013, 36.896278, 34.086632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567337, 37.070000, 34.177128>,  <35.336208, 37.359535, 34.327957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567337, 37.070000, 34.177128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521215, -0.682786, 0.511994,
		-0.628058, -0.099308, -0.771804,
		0.577822, -0.723838, -0.377069,
		35.740685, 36.852848, 34.064007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836250, 36.849403, 33.954021>,  <35.336208, 37.359535, 34.327957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836250, 36.849403, 33.954021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174538, 36.647388, 34.022957>,  <35.377510, 36.526180, 34.064316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174538, 36.647388, 34.022957>,  <34.836250, 36.849403, 33.954021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174538, 36.647388, 34.022957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522826, -0.848852, 0.078124,
		0.106831, -0.156172, -0.981936,
		0.845718, -0.505036, 0.172335,
		35.428253, 36.495876, 34.074657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791183, 36.131565, 33.714096>,  <34.836250, 36.849403, 33.954021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791183, 36.131565, 33.714096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099258, 36.077312, 33.963387>,  <35.284103, 36.044762, 34.112961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099258, 36.077312, 33.963387>,  <34.791183, 36.131565, 33.714096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099258, 36.077312, 33.963387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289909, -0.944801, 0.152657,
		0.568118, -0.298253, -0.766999,
		0.770192, -0.135633, 0.623225,
		35.330315, 36.036621, 34.150352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099503, 35.455109, 33.529682>,  <34.791183, 36.131565, 33.714096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099503, 35.455109, 33.529682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182415, 35.547623, 33.909901>,  <35.232162, 35.603130, 34.138031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182415, 35.547623, 33.909901>,  <35.099503, 35.455109, 33.529682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182415, 35.547623, 33.909901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308345, -0.906678, 0.287850,
		0.928416, -0.352763, -0.116623,
		0.207282, 0.231284, 0.950548,
		35.244598, 35.617008, 34.195065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415794, 34.856373, 33.744328>,  <35.099503, 35.455109, 33.529682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415794, 34.856373, 33.744328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354469, 35.045673, 34.091320>,  <35.317677, 35.159256, 34.299515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354469, 35.045673, 34.091320>,  <35.415794, 34.856373, 33.744328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354469, 35.045673, 34.091320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212340, -0.873132, 0.438809,
		0.965095, -0.116927, 0.234350,
		-0.153310, 0.473254, 0.867483,
		35.308475, 35.187649, 34.351566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759117, 34.454533, 34.278778>,  <35.415794, 34.856373, 33.744328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759117, 34.454533, 34.278778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514042, 34.697411, 34.481136>,  <35.366997, 34.843136, 34.602551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514042, 34.697411, 34.481136>,  <35.759117, 34.454533, 34.278778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514042, 34.697411, 34.481136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353544, -0.783061, 0.511685,
		0.706841, 0.134645, 0.694440,
		-0.612685, 0.607195, 0.505897,
		35.330235, 34.879570, 34.632904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363155, 34.751602, 34.284298>,  <35.759117, 34.454533, 34.278778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363155, 34.751602, 34.284298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568199, 34.431381, 34.408455>,  <36.691227, 34.239246, 34.482948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568199, 34.431381, 34.408455>,  <36.363155, 34.751602, 34.284298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568199, 34.431381, 34.408455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788942, 0.296503, -0.538197,
		0.338824, 0.520768, 0.783581,
		0.512610, -0.800554, 0.310393,
		36.721981, 34.191216, 34.501572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097248, 35.018559, 34.376312>,  <36.363155, 34.751602, 34.284298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097248, 35.018559, 34.376312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055046, 34.624367, 34.323112>,  <37.029724, 34.387852, 34.291191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055046, 34.624367, 34.323112>,  <37.097248, 35.018559, 34.376312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055046, 34.624367, 34.323112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811754, -0.008096, -0.583945,
		0.574391, -0.169575, 0.800824,
		-0.105506, -0.985484, -0.133002,
		37.023396, 34.328720, 34.283211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830460, 34.646976, 34.594925>,  <37.097248, 35.018559, 34.376312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830460, 34.646976, 34.594925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643536, 34.409290, 34.333076>,  <37.531380, 34.266678, 34.175968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643536, 34.409290, 34.333076>,  <37.830460, 34.646976, 34.594925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643536, 34.409290, 34.333076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799422, 0.032205, -0.599907,
		0.377555, -0.803663, 0.459977,
		-0.467309, -0.594213, -0.654624,
		37.503342, 34.231026, 34.136688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253609, 34.062279, 34.498844>,  <37.830460, 34.646976, 34.594925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253609, 34.062279, 34.498844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016991, 34.089657, 34.177498>,  <37.875019, 34.106083, 33.984692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016991, 34.089657, 34.177498>,  <38.253609, 34.062279, 34.498844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016991, 34.089657, 34.177498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800402, -0.070204, -0.595339,
		-0.097144, -0.995182, -0.013250,
		-0.591540, 0.068439, -0.803365,
		37.839527, 34.110188, 33.936489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689999, 33.673695, 34.062229>,  <38.253609, 34.062279, 34.498844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689999, 33.673695, 34.062229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420105, 33.878254, 33.849361>,  <38.258167, 34.000988, 33.721642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420105, 33.878254, 33.849361>,  <38.689999, 33.673695, 34.062229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420105, 33.878254, 33.849361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691294, 0.185313, -0.698407,
		-0.258544, -0.839126, -0.478562,
		-0.674735, 0.511396, -0.532171,
		38.217686, 34.031673, 33.689709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649570, 33.499737, 33.321529>,  <38.689999, 33.673695, 34.062229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649570, 33.499737, 33.321529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517403, 33.877262, 33.318790>,  <38.438103, 34.103775, 33.317146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517403, 33.877262, 33.318790>,  <38.649570, 33.499737, 33.321529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517403, 33.877262, 33.318790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626002, 0.213719, -0.749964,
		-0.706360, -0.252087, -0.661444,
		-0.330420, 0.943809, -0.006845,
		38.418278, 34.160404, 33.316738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499977, 33.774914, 32.640675>,  <38.649570, 33.499737, 33.321529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499977, 33.774914, 32.640675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549686, 34.148991, 32.773323>,  <38.579510, 34.373436, 32.852913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549686, 34.148991, 32.773323>,  <38.499977, 33.774914, 32.640675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549686, 34.148991, 32.773323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577637, 0.203561, -0.790505,
		-0.806779, 0.289796, -0.514904,
		0.124271, 0.935190, 0.331625,
		38.586967, 34.429546, 32.872810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606369, 34.213047, 32.014359>,  <38.499977, 33.774914, 32.640675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606369, 34.213047, 32.014359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739864, 34.430931, 32.322098>,  <38.819962, 34.561661, 32.506741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739864, 34.430931, 32.322098>,  <38.606369, 34.213047, 32.014359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739864, 34.430931, 32.322098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509811, 0.582194, -0.633358,
		-0.792911, 0.603603, -0.083399,
		0.333743, 0.544714, 0.769352,
		38.839989, 34.594345, 32.552902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493694, 34.825806, 31.798077>,  <38.606369, 34.213047, 32.014359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493694, 34.825806, 31.798077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737370, 34.908314, 32.104370>,  <38.883575, 34.957817, 32.288147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737370, 34.908314, 32.104370>,  <38.493694, 34.825806, 31.798077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737370, 34.908314, 32.104370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346169, 0.799564, -0.490779,
		-0.713485, 0.564048, 0.415679,
		0.609185, 0.206268, 0.765733,
		38.920124, 34.970196, 32.334091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448540, 35.592426, 32.011337>,  <38.493694, 34.825806, 31.798077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448540, 35.592426, 32.011337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815109, 35.473423, 32.118408>,  <39.035053, 35.402023, 32.182652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815109, 35.473423, 32.118408>,  <38.448540, 35.592426, 32.011337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815109, 35.473423, 32.118408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398825, 0.734321, -0.549283,
		-0.033146, 0.610135, 0.791604,
		0.916428, -0.297504, 0.267677,
		39.090038, 35.384171, 32.198711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812229, 36.199043, 32.113998>,  <38.448540, 35.592426, 32.011337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812229, 36.199043, 32.113998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095284, 35.923122, 32.052788>,  <39.265118, 35.757568, 32.016064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095284, 35.923122, 32.052788>,  <38.812229, 36.199043, 32.113998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095284, 35.923122, 32.052788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508095, 0.647279, -0.568215,
		0.491008, 0.324340, 0.808526,
		0.707637, -0.689807, -0.153024,
		39.307575, 35.716179, 32.006882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408787, 36.544807, 32.350529>,  <38.812229, 36.199043, 32.113998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408787, 36.544807, 32.350529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534485, 36.236481, 32.128864>,  <39.609905, 36.051487, 31.995865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534485, 36.236481, 32.128864>,  <39.408787, 36.544807, 32.350529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534485, 36.236481, 32.128864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595610, 0.614633, -0.517179,
		0.739254, -0.167542, 0.652252,
		0.314247, -0.770815, -0.554160,
		39.628757, 36.005238, 31.962616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068317, 36.540504, 32.488777>,  <39.408787, 36.544807, 32.350529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068317, 36.540504, 32.488777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026669, 36.333382, 32.149120>,  <40.001678, 36.209110, 31.945328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026669, 36.333382, 32.149120>,  <40.068317, 36.540504, 32.488777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026669, 36.333382, 32.149120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644203, 0.615360, -0.454240,
		0.757733, -0.594316, 0.269497,
		-0.104124, -0.517803, -0.849139,
		39.995430, 36.178040, 31.894379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716763, 36.251163, 32.177650>,  <40.068317, 36.540504, 32.488777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716763, 36.251163, 32.177650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439426, 36.339718, 31.903349>,  <40.273026, 36.392853, 31.738768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439426, 36.339718, 31.903349>,  <40.716763, 36.251163, 32.177650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439426, 36.339718, 31.903349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591101, 0.719028, -0.365511,
		0.412157, -0.658776, -0.629397,
		-0.693344, 0.221390, -0.685756,
		40.231422, 36.406136, 31.697622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033470, 36.775421, 31.807419>,  <40.716763, 36.251163, 32.177650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033470, 36.775421, 31.807419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688461, 36.777176, 31.605019>,  <40.481457, 36.778229, 31.483578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688461, 36.777176, 31.605019>,  <41.033470, 36.775421, 31.807419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688461, 36.777176, 31.605019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267136, 0.853213, -0.447958,
		0.429760, -0.521545, -0.737087,
		-0.862523, 0.004388, -0.506000,
		40.429703, 36.778492, 31.453218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093918, 36.869576, 31.063929>,  <41.033470, 36.775421, 31.807419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093918, 36.869576, 31.063929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731243, 37.002934, 31.167284>,  <40.513638, 37.082947, 31.229298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731243, 37.002934, 31.167284>,  <41.093918, 36.869576, 31.063929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731243, 37.002934, 31.167284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183577, 0.863431, -0.469880,
		-0.379756, -0.378601, -0.844066,
		-0.906689, 0.333391, 0.258391,
		40.459236, 37.102951, 31.244801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800972, 37.281822, 30.497894>,  <41.093918, 36.869576, 31.063929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800972, 37.281822, 30.497894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544144, 37.384712, 30.786777>,  <40.390045, 37.446445, 30.960108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544144, 37.384712, 30.786777>,  <40.800972, 37.281822, 30.497894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544144, 37.384712, 30.786777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099679, 0.906028, -0.411311,
		-0.760137, -0.336080, -0.556095,
		-0.642071, 0.257222, 0.722206,
		40.351521, 37.461880, 31.003439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246136, 37.601475, 30.218403>,  <40.800972, 37.281822, 30.497894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246136, 37.601475, 30.218403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215622, 37.729019, 30.596292>,  <40.197315, 37.805546, 30.823027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215622, 37.729019, 30.596292>,  <40.246136, 37.601475, 30.218403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215622, 37.729019, 30.596292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006104, 0.947320, -0.320231,
		-0.997068, -0.030193, -0.070315,
		-0.076280, 0.318863, 0.944726,
		40.192738, 37.824677, 30.879711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739380, 38.115566, 30.254034>,  <40.246136, 37.601475, 30.218403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739380, 38.115566, 30.254034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955463, 38.180393, 30.584345>,  <40.085114, 38.219292, 30.782532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955463, 38.180393, 30.584345>,  <39.739380, 38.115566, 30.254034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955463, 38.180393, 30.584345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161100, 0.943214, -0.290507,
		-0.825968, 0.289967, 0.483421,
		0.540207, 0.162070, 0.825778,
		40.117527, 38.229015, 30.832079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503078, 38.720245, 30.525974>,  <39.739380, 38.115566, 30.254034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503078, 38.720245, 30.525974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867916, 38.657471, 30.677477>,  <40.086819, 38.619808, 30.768379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867916, 38.657471, 30.677477>,  <39.503078, 38.720245, 30.525974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867916, 38.657471, 30.677477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343628, 0.796523, -0.497465,
		-0.223621, 0.583886, 0.780430,
		0.912093, -0.156934, 0.378759,
		40.141544, 38.610390, 30.791105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676796, 39.377323, 30.590021>,  <39.503078, 38.720245, 30.525974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676796, 39.377323, 30.590021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020470, 39.176903, 30.631500>,  <40.226673, 39.056648, 30.656387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020470, 39.176903, 30.631500>,  <39.676796, 39.377323, 30.590021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020470, 39.176903, 30.631500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504348, 0.795134, -0.336743,
		0.086272, 0.341623, 0.935869,
		0.859180, -0.501055, 0.103699,
		40.278225, 39.026585, 30.662609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189350, 39.831902, 30.973097>,  <39.676796, 39.377323, 30.590021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189350, 39.831902, 30.973097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390331, 39.558044, 30.761889>,  <40.510921, 39.393730, 30.635162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390331, 39.558044, 30.761889>,  <40.189350, 39.831902, 30.973097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390331, 39.558044, 30.761889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492967, 0.728569, -0.475573,
		0.710297, -0.021344, 0.703579,
		0.502455, -0.684639, -0.528022,
		40.541069, 39.352654, 30.603481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746243, 40.003952, 31.116283>,  <40.189350, 39.831902, 30.973097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746243, 40.003952, 31.116283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761406, 39.808296, 30.767731>,  <40.770504, 39.690903, 30.558599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761406, 39.808296, 30.767731>,  <40.746243, 40.003952, 31.116283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761406, 39.808296, 30.767731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532602, 0.747718, -0.396549,
		0.845516, -0.449069, 0.288859,
		0.037907, -0.489136, -0.871383,
		40.772778, 39.661556, 30.506315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510582, 39.941811, 30.925135>,  <40.746243, 40.003952, 31.116283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510582, 39.941811, 30.925135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287098, 39.887417, 30.597878>,  <41.153008, 39.854778, 30.401524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287098, 39.887417, 30.597878>,  <41.510582, 39.941811, 30.925135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287098, 39.887417, 30.597878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605378, 0.607405, -0.514371,
		0.566891, -0.782666, -0.257036,
		-0.558706, -0.135988, -0.818141,
		41.119488, 39.846619, 30.352436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998783, 39.875401, 30.347853>,  <41.510582, 39.941811, 30.925135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998783, 39.875401, 30.347853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639423, 39.927803, 30.180180>,  <41.423805, 39.959244, 30.079576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.639423, 39.927803, 30.180180>,  <41.998783, 39.875401, 30.347853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639423, 39.927803, 30.180180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415222, 0.564286, -0.713563,
		0.143060, -0.815120, -0.561350,
		-0.898401, 0.131003, -0.419182,
		41.369904, 39.967102, 30.054424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764515, 39.486732, 29.663836>,  <41.998783, 39.875401, 30.347853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764515, 39.486732, 29.663836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554329, 39.826973, 29.671434>,  <41.428219, 40.031116, 29.675993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554329, 39.826973, 29.671434>,  <41.764515, 39.486732, 29.663836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554329, 39.826973, 29.671434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437425, 0.289236, -0.851471,
		-0.729760, -0.439104, -0.524058,
		-0.525461, 0.850605, 0.018998,
		41.396690, 40.082153, 29.677134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439205, 39.598896, 29.006016>,  <41.764515, 39.486732, 29.663836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439205, 39.598896, 29.006016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428516, 39.982899, 29.117496>,  <41.422104, 40.213299, 29.184385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428516, 39.982899, 29.117496>,  <41.439205, 39.598896, 29.006016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428516, 39.982899, 29.117496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151172, 0.279476, -0.948177,
		-0.988146, 0.016792, -0.152594,
		-0.026725, 0.960006, 0.278702,
		41.420498, 40.270901, 29.201107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988220, 39.937168, 28.555237>,  <41.439205, 39.598896, 29.006016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988220, 39.937168, 28.555237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214825, 40.234875, 28.696732>,  <41.350788, 40.413498, 28.781628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214825, 40.234875, 28.696732>,  <40.988220, 39.937168, 28.555237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214825, 40.234875, 28.696732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090694, 0.370343, -0.924457,
		-0.819047, 0.555798, 0.142303,
		0.566513, 0.744268, 0.353736,
		41.384777, 40.458157, 28.802853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723595, 40.583790, 28.255251>,  <40.988220, 39.937168, 28.555237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723595, 40.583790, 28.255251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095882, 40.660591, 28.379761>,  <41.319256, 40.706673, 28.454468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095882, 40.660591, 28.379761>,  <40.723595, 40.583790, 28.255251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095882, 40.660591, 28.379761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205296, 0.430093, -0.879132,
		-0.302673, 0.882131, 0.360880,
		0.930722, 0.192002, 0.311276,
		41.375099, 40.718193, 28.473143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875397, 41.330750, 28.027914>,  <40.723595, 40.583790, 28.255251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875397, 41.330750, 28.027914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229469, 41.149887, 28.071739>,  <41.441914, 41.041370, 28.098034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229469, 41.149887, 28.071739>,  <40.875397, 41.330750, 28.027914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229469, 41.149887, 28.071739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234714, 0.230685, -0.944295,
		0.401692, 0.861592, 0.310326,
		0.885185, -0.452154, 0.109564,
		41.495026, 41.014240, 28.104609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050140, 41.468853, 27.472515>,  <40.875397, 41.330750, 28.027914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050140, 41.468853, 27.472515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387833, 41.273838, 27.561584>,  <41.590450, 41.156830, 27.615026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387833, 41.273838, 27.561584>,  <41.050140, 41.468853, 27.472515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387833, 41.273838, 27.561584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406484, 0.311605, -0.858879,
		0.349346, 0.815606, 0.461241,
		0.844232, -0.487533, 0.222673,
		41.641102, 41.127579, 27.628386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684372, 41.939404, 27.451138>,  <41.050140, 41.468853, 27.472515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684372, 41.939404, 27.451138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788498, 41.560421, 27.376778>,  <41.850975, 41.333031, 27.332161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788498, 41.560421, 27.376778>,  <41.684372, 41.939404, 27.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788498, 41.560421, 27.376778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348128, 0.271689, -0.897214,
		0.900580, 0.168841, 0.400561,
		0.260314, -0.947459, -0.185899,
		41.866592, 41.276184, 27.321009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306698, 41.984383, 27.326035>,  <41.684372, 41.939404, 27.451138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306698, 41.984383, 27.326035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218761, 41.630539, 27.161533>,  <42.166000, 41.418232, 27.062832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218761, 41.630539, 27.161533>,  <42.306698, 41.984383, 27.326035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218761, 41.630539, 27.161533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508175, 0.256004, -0.822326,
		0.832722, -0.389772, 0.393257,
		-0.219845, -0.884613, -0.411253,
		42.152809, 41.365154, 27.038158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883656, 41.783016, 26.927433>,  <42.306698, 41.984383, 27.326035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883656, 41.783016, 26.927433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595242, 41.576473, 26.742617>,  <42.422192, 41.452549, 26.631727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595242, 41.576473, 26.742617>,  <42.883656, 41.783016, 26.927433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595242, 41.576473, 26.742617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348721, 0.305793, -0.885937,
		0.598749, -0.799916, -0.040424,
		-0.721037, -0.516357, -0.462041,
		42.378929, 41.421566, 26.604004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268608, 41.430817, 26.372276>,  <42.883656, 41.783016, 26.927433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268608, 41.430817, 26.372276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882374, 41.413952, 26.269615>,  <42.650635, 41.403831, 26.208019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882374, 41.413952, 26.269615>,  <43.268608, 41.430817, 26.372276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882374, 41.413952, 26.269615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241269, 0.223375, -0.944401,
		0.097149, -0.973820, -0.205514,
		-0.965583, -0.042164, -0.256653,
		42.592697, 41.401302, 26.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377831, 41.333569, 25.746983>,  <43.268608, 41.430817, 26.372276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377831, 41.333569, 25.746983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986938, 41.418156, 25.739916>,  <42.752403, 41.468906, 25.735676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986938, 41.418156, 25.739916>,  <43.377831, 41.333569, 25.746983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986938, 41.418156, 25.739916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122970, 0.496489, -0.859289,
		-0.172938, -0.841892, -0.511185,
		-0.977226, 0.211464, -0.017666,
		42.693771, 41.481594, 25.734615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105618, 41.177155, 25.038382>,  <43.377831, 41.333569, 25.746983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105618, 41.177155, 25.038382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829872, 41.429230, 25.181290>,  <42.664425, 41.580475, 25.267035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829872, 41.429230, 25.181290>,  <43.105618, 41.177155, 25.038382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829872, 41.429230, 25.181290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099457, 0.570847, -0.815010,
		-0.717555, -0.526306, -0.456198,
		-0.689364, 0.630187, 0.357270,
		42.623062, 41.618286, 25.288471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719742, 41.355995, 24.440294>,  <43.105618, 41.177155, 25.038382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719742, 41.355995, 24.440294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706417, 41.642490, 24.719120>,  <42.698421, 41.814388, 24.886415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706417, 41.642490, 24.719120>,  <42.719742, 41.355995, 24.440294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706417, 41.642490, 24.719120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269375, 0.678074, -0.683851,
		-0.962459, 0.164988, -0.215527,
		-0.033316, 0.716236, 0.697062,
		42.696423, 41.857361, 24.928238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091061, 41.313057, 23.903976>,  <42.719742, 41.355995, 24.440294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091061, 41.313057, 23.903976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109035, 41.141453, 23.543104>,  <42.119820, 41.038490, 23.326580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109035, 41.141453, 23.543104>,  <42.091061, 41.313057, 23.903976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109035, 41.141453, 23.543104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530475, -0.775495, 0.342350,
		-0.846509, 0.463201, -0.262426,
		0.044933, -0.429012, -0.902180,
		42.122517, 41.012749, 23.272449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347652, 41.119850, 23.743109>,  <42.091061, 41.313057, 23.903976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347652, 41.119850, 23.743109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586224, 40.897266, 23.511723>,  <41.729366, 40.763718, 23.372890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586224, 40.897266, 23.511723>,  <41.347652, 41.119850, 23.743109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586224, 40.897266, 23.511723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459205, -0.827646, 0.322695,
		-0.658331, 0.073168, -0.749164,
		0.596432, -0.556460, -0.578464,
		41.765152, 40.730328, 23.338182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844818, 40.745232, 23.372303>,  <41.347652, 41.119850, 23.743109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844818, 40.745232, 23.372303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186512, 40.538784, 23.347315>,  <41.391529, 40.414917, 23.332323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186512, 40.538784, 23.347315>,  <40.844818, 40.745232, 23.372303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186512, 40.538784, 23.347315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509931, -0.855213, 0.092634,
		-0.101233, -0.047277, -0.993739,
		0.854238, -0.516115, -0.062468,
		41.442783, 40.383949, 23.328575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640495, 40.142563, 23.069830>,  <40.844818, 40.745232, 23.372303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640495, 40.142563, 23.069830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982479, 40.067013, 23.263063>,  <41.187668, 40.021683, 23.379004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982479, 40.067013, 23.263063>,  <40.640495, 40.142563, 23.069830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982479, 40.067013, 23.263063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358073, -0.888739, 0.286228,
		0.375275, -0.417693, -0.827467,
		0.854958, -0.188879, 0.483086,
		41.238968, 40.010349, 23.407990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835865, 39.417099, 22.838856>,  <40.640495, 40.142563, 23.069830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835865, 39.417099, 22.838856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025608, 39.493462, 23.182610>,  <41.139454, 39.539280, 23.388861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025608, 39.493462, 23.182610>,  <40.835865, 39.417099, 22.838856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025608, 39.493462, 23.182610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265617, -0.899670, 0.346470,
		0.839304, -0.392618, -0.376058,
		0.474359, 0.190906, 0.859383,
		41.167915, 39.550732, 23.440424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102253, 38.802639, 22.994083>,  <40.835865, 39.417099, 22.838856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102253, 38.802639, 22.994083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110180, 39.008770, 23.336788>,  <41.114937, 39.132450, 23.542412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110180, 39.008770, 23.336788>,  <41.102253, 38.802639, 22.994083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110180, 39.008770, 23.336788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221814, -0.833308, 0.506356,
		0.974887, -0.200077, 0.097794,
		0.019818, 0.515332, 0.856761,
		41.116127, 39.163368, 23.593817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455940, 38.390793, 23.409365>,  <41.102253, 38.802639, 22.994083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455940, 38.390793, 23.409365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304771, 38.644268, 23.679359>,  <41.214069, 38.796352, 23.841356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304771, 38.644268, 23.679359>,  <41.455940, 38.390793, 23.409365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304771, 38.644268, 23.679359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008694, -0.726596, 0.687010,
		0.925797, 0.265505, 0.269087,
		-0.377922, 0.633692, 0.674988,
		41.191395, 38.834377, 23.881855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976067, 38.549091, 23.955759>,  <41.455940, 38.390793, 23.409365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976067, 38.549091, 23.955759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614391, 38.613724, 24.113916>,  <41.397385, 38.652504, 24.208811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614391, 38.613724, 24.113916>,  <41.976067, 38.549091, 23.955759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614391, 38.613724, 24.113916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249432, -0.551714, 0.795861,
		0.346739, 0.818232, 0.458550,
		-0.904188, 0.161579, 0.395394,
		41.343136, 38.662197, 24.232534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064011, 38.879585, 24.637224>,  <41.976067, 38.549091, 23.955759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064011, 38.879585, 24.637224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703693, 38.706280, 24.648930>,  <41.487503, 38.602295, 24.655952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703693, 38.706280, 24.648930>,  <42.064011, 38.879585, 24.637224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703693, 38.706280, 24.648930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260843, -0.485976, 0.834139,
		-0.347185, 0.759017, 0.550777,
		-0.900791, -0.433267, 0.029261,
		41.433456, 38.576302, 24.657707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903423, 38.898407, 25.386961>,  <42.064011, 38.879585, 24.637224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903423, 38.898407, 25.386961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642517, 38.633774, 25.238983>,  <41.485973, 38.474995, 25.150196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642517, 38.633774, 25.238983>,  <41.903423, 38.898407, 25.386961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642517, 38.633774, 25.238983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122536, -0.573675, 0.809866,
		-0.748017, 0.482919, 0.455258,
		-0.652269, -0.661579, -0.369943,
		41.446835, 38.435299, 25.128000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454895, 38.786560, 25.955509>,  <41.903423, 38.898407, 25.386961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454895, 38.786560, 25.955509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393959, 38.463264, 25.727985>,  <41.357399, 38.269287, 25.591471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393959, 38.463264, 25.727985>,  <41.454895, 38.786560, 25.955509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393959, 38.463264, 25.727985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107929, -0.585688, 0.803319,
		-0.982418, 0.060985, 0.176455,
		-0.152339, -0.808239, -0.568808,
		41.348259, 38.220791, 25.557343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944664, 38.322788, 26.218704>,  <41.454895, 38.786560, 25.955509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944664, 38.322788, 26.218704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160458, 38.072903, 25.992891>,  <41.289932, 37.922970, 25.857403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160458, 38.072903, 25.992891>,  <40.944664, 38.322788, 26.218704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160458, 38.072903, 25.992891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041859, -0.649739, 0.759004,
		-0.840958, -0.433098, -0.324371,
		0.539479, -0.624713, -0.564532,
		41.322300, 37.885490, 25.823532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845951, 37.492622, 26.167856>,  <40.944664, 38.322788, 26.218704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845951, 37.492622, 26.167856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242409, 37.536728, 26.138277>,  <41.480286, 37.563190, 26.120529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242409, 37.536728, 26.138277>,  <40.845951, 37.492622, 26.167856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242409, 37.536728, 26.138277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128630, -0.659626, 0.740505,
		0.032873, -0.743462, -0.667970,
		0.991148, 0.110264, -0.073948,
		41.539753, 37.569805, 26.116093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160114, 36.817364, 26.144285>,  <40.845951, 37.492622, 26.167856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160114, 36.817364, 26.144285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416531, 37.083328, 26.297630>,  <41.570381, 37.242905, 26.389637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416531, 37.083328, 26.297630>,  <41.160114, 36.817364, 26.144285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416531, 37.083328, 26.297630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187393, -0.619964, 0.761925,
		0.744279, -0.416586, -0.522020,
		0.641040, 0.664908, 0.383361,
		41.608841, 37.282799, 26.412638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729431, 36.483952, 26.125765>,  <41.160114, 36.817364, 26.144285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729431, 36.483952, 26.125765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746830, 36.767830, 26.407030>,  <41.757267, 36.938156, 26.575788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746830, 36.767830, 26.407030>,  <41.729431, 36.483952, 26.125765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746830, 36.767830, 26.407030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156323, -0.699994, 0.696830,
		0.986748, 0.079612, -0.141388,
		0.043495, 0.709697, 0.703163,
		41.759880, 36.980740, 26.617979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041363, 36.111546, 26.699087>,  <41.729431, 36.483952, 26.125765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041363, 36.111546, 26.699087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974403, 36.456013, 26.891071>,  <41.934227, 36.662693, 27.006262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974403, 36.456013, 26.891071>,  <42.041363, 36.111546, 26.699087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974403, 36.456013, 26.891071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014328, -0.488904, 0.872220,
		0.985785, 0.139131, 0.094181,
		-0.167398, 0.861171, 0.479961,
		41.924183, 36.714363, 27.035059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541748, 36.093822, 27.265244>,  <42.041363, 36.111546, 26.699087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541748, 36.093822, 27.265244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263546, 36.363411, 27.364864>,  <42.096622, 36.525166, 27.424637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263546, 36.363411, 27.364864>,  <42.541748, 36.093822, 27.265244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263546, 36.363411, 27.364864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145335, -0.471414, 0.869854,
		0.703667, 0.568794, 0.425824,
		-0.695508, 0.673975, 0.249053,
		42.054893, 36.565605, 27.439581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693920, 36.305824, 27.938915>,  <42.541748, 36.093822, 27.265244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693920, 36.305824, 27.938915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301418, 36.355324, 27.879818>,  <42.065918, 36.385021, 27.844360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301418, 36.355324, 27.879818>,  <42.693920, 36.305824, 27.938915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301418, 36.355324, 27.879818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189373, -0.476863, 0.858335,
		0.035761, 0.870223, 0.491358,
		-0.981254, 0.123745, -0.147744,
		42.007042, 36.392448, 27.835495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399452, 36.588497, 28.573036>,  <42.693920, 36.305824, 27.938915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399452, 36.588497, 28.573036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096664, 36.441017, 28.357237>,  <41.914993, 36.352528, 28.227757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096664, 36.441017, 28.357237>,  <42.399452, 36.588497, 28.573036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096664, 36.441017, 28.357237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308558, -0.526095, 0.792474,
		-0.576015, 0.766344, 0.284471,
		-0.756967, -0.368701, -0.539500,
		41.869576, 36.330406, 28.195387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876152, 36.641888, 29.032406>,  <42.399452, 36.588497, 28.573036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876152, 36.641888, 29.032406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749432, 36.376099, 28.761671>,  <41.673397, 36.216625, 28.599230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749432, 36.376099, 28.761671>,  <41.876152, 36.641888, 29.032406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749432, 36.376099, 28.761671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406483, -0.549627, 0.729850,
		-0.856975, 0.506342, -0.095975,
		-0.316804, -0.664476, -0.676836,
		41.654392, 36.176754, 28.558620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191242, 36.563080, 29.121666>,  <41.876152, 36.641888, 29.032406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191242, 36.563080, 29.121666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268307, 36.223595, 28.924658>,  <41.314545, 36.019905, 28.806454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268307, 36.223595, 28.924658>,  <41.191242, 36.563080, 29.121666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268307, 36.223595, 28.924658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481997, -0.519048, 0.705881,
		-0.854729, 0.101398, -0.509075,
		0.192659, -0.848709, -0.492519,
		41.326103, 35.968983, 28.776903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575577, 36.196869, 29.127541>,  <41.191242, 36.563080, 29.121666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575577, 36.196869, 29.127541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847866, 35.925449, 29.017136>,  <41.011238, 35.762596, 28.950893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847866, 35.925449, 29.017136>,  <40.575577, 36.196869, 29.127541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847866, 35.925449, 29.017136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389313, -0.654284, 0.648342,
		-0.620522, -0.333889, -0.709557,
		0.680726, -0.678550, -0.276010,
		41.052082, 35.721886, 28.934332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202602, 35.549561, 28.839588>,  <40.575577, 36.196869, 29.127541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202602, 35.549561, 28.839588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570267, 35.454472, 28.965206>,  <40.790867, 35.397419, 29.040577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570267, 35.454472, 28.965206>,  <40.202602, 35.549561, 28.839588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570267, 35.454472, 28.965206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379116, -0.750189, 0.541745,
		0.106809, -0.617012, -0.779672,
		0.919164, -0.237723, 0.314046,
		40.846016, 35.383156, 29.059420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303982, 34.879276, 28.674500>,  <40.202602, 35.549561, 28.839588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303982, 34.879276, 28.674500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562325, 34.945206, 28.972681>,  <40.717331, 34.984764, 29.151590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562325, 34.945206, 28.972681>,  <40.303982, 34.879276, 28.674500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562325, 34.945206, 28.972681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371372, -0.785284, 0.495390,
		0.667045, -0.596792, -0.445971,
		0.645859, 0.164826, 0.745452,
		40.756081, 34.994652, 29.196316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521091, 34.293320, 28.850697>,  <40.303982, 34.879276, 28.674500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521091, 34.293320, 28.850697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582298, 34.522972, 29.172430>,  <40.619022, 34.660763, 29.365471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582298, 34.522972, 29.172430>,  <40.521091, 34.293320, 28.850697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582298, 34.522972, 29.172430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409319, -0.703999, 0.580382,
		0.899469, -0.418038, 0.127281,
		0.153016, 0.574134, 0.804336,
		40.628204, 34.695213, 29.413731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480312, 33.791553, 29.300394>,  <40.521091, 34.293320, 28.850697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480312, 33.791553, 29.300394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501873, 34.107895, 29.544243>,  <40.514809, 34.297699, 29.690552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501873, 34.107895, 29.544243>,  <40.480312, 33.791553, 29.300394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501873, 34.107895, 29.544243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359168, -0.554294, 0.750837,
		0.931715, -0.259431, 0.254172,
		0.053904, 0.790857, 0.609623,
		40.518044, 34.345150, 29.727129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868523, 33.526169, 29.855337>,  <40.480312, 33.791553, 29.300394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868523, 33.526169, 29.855337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648319, 33.839569, 29.970629>,  <40.516197, 34.027607, 30.039803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648319, 33.839569, 29.970629>,  <40.868523, 33.526169, 29.855337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648319, 33.839569, 29.970629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566388, -0.604164, 0.560527,
		0.613307, 0.145326, 0.776360,
		-0.550508, 0.783496, 0.288227,
		40.483166, 34.074619, 30.057096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080551, 33.730427, 30.605320>,  <40.868523, 33.526169, 29.855337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080551, 33.730427, 30.605320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702011, 33.845341, 30.546144>,  <40.474888, 33.914288, 30.510639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702011, 33.845341, 30.546144>,  <41.080551, 33.730427, 30.605320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702011, 33.845341, 30.546144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313138, -0.702307, 0.639304,
		0.079762, 0.651333, 0.754588,
		-0.946352, 0.287282, -0.147939,
		40.418106, 33.931526, 30.501762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755333, 33.594372, 31.228054>,  <41.080551, 33.730427, 30.605320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755333, 33.594372, 31.228054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452610, 33.638317, 30.970318>,  <40.270977, 33.664684, 30.815676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452610, 33.638317, 30.970318>,  <40.755333, 33.594372, 31.228054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452610, 33.638317, 30.970318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518523, -0.701098, 0.489485,
		-0.397969, 0.704551, 0.587561,
		-0.756805, 0.109864, -0.644341,
		40.225567, 33.671276, 30.777016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063950, 33.765553, 31.635876>,  <40.755333, 33.594372, 31.228054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063950, 33.765553, 31.635876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945042, 33.629475, 31.279022>,  <39.873699, 33.547829, 31.064911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945042, 33.629475, 31.279022>,  <40.063950, 33.765553, 31.635876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945042, 33.629475, 31.279022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637198, -0.625169, 0.450714,
		-0.711064, 0.702447, -0.030929,
		-0.297267, -0.340194, -0.892132,
		39.855862, 33.527416, 31.011383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282108, 33.782349, 31.685719>,  <40.063950, 33.765553, 31.635876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282108, 33.782349, 31.685719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362221, 33.566925, 31.358343>,  <39.410290, 33.437672, 31.161917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362221, 33.566925, 31.358343>,  <39.282108, 33.782349, 31.685719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362221, 33.566925, 31.358343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818784, -0.550759, 0.162044,
		-0.538033, 0.637671, -0.551267,
		0.200284, -0.538554, -0.818441,
		39.422306, 33.405357, 31.112812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721706, 33.814251, 31.285519>,  <39.282108, 33.782349, 31.685719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721706, 33.814251, 31.285519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919720, 33.485653, 31.172314>,  <39.038528, 33.288494, 31.104391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919720, 33.485653, 31.172314>,  <38.721706, 33.814251, 31.285519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919720, 33.485653, 31.172314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813787, -0.552495, 0.180279,
		-0.304462, 0.141070, -0.942020,
		0.495030, -0.821492, -0.283015,
		39.068230, 33.239204, 31.087410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261967, 33.458477, 30.900959>,  <38.721706, 33.814251, 31.285519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261967, 33.458477, 30.900959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506195, 33.160156, 31.007530>,  <38.652733, 32.981163, 31.071474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506195, 33.160156, 31.007530>,  <38.261967, 33.458477, 30.900959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506195, 33.160156, 31.007530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791295, -0.588302, 0.166592,
		0.032496, -0.312541, -0.949348,
		0.610570, -0.745801, 0.266430,
		38.689365, 32.936417, 31.087460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192329, 32.797344, 30.485163>,  <38.261967, 33.458477, 30.900959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192329, 32.797344, 30.485163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338650, 32.674755, 30.836678>,  <38.426441, 32.601200, 31.047586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338650, 32.674755, 30.836678>,  <38.192329, 32.797344, 30.485163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338650, 32.674755, 30.836678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716955, -0.694858, 0.056110,
		0.593436, -0.650575, -0.473905,
		0.365800, -0.306471, 0.878786,
		38.448391, 32.582813, 31.100313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140915, 32.056728, 30.442034>,  <38.192329, 32.797344, 30.485163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140915, 32.056728, 30.442034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177639, 32.132175, 30.833134>,  <38.199673, 32.177444, 31.067793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177639, 32.132175, 30.833134>,  <38.140915, 32.056728, 30.442034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177639, 32.132175, 30.833134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634395, -0.745760, 0.203435,
		0.767538, -0.638956, 0.051192,
		0.091809, 0.188620, 0.977749,
		38.205181, 32.188763, 31.126459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256741, 31.434427, 30.704062>,  <38.140915, 32.056728, 30.442034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256741, 31.434427, 30.704062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122414, 31.656553, 31.008390>,  <38.041817, 31.789829, 31.190989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122414, 31.656553, 31.008390>,  <38.256741, 31.434427, 30.704062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122414, 31.656553, 31.008390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493928, -0.791587, 0.359758,
		0.802036, -0.254978, 0.540116,
		-0.335818, 0.555317, 0.760821,
		38.021667, 31.823149, 31.236637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418392, 31.014301, 31.268536>,  <38.256741, 31.434427, 30.704062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418392, 31.014301, 31.268536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146950, 31.289680, 31.370935>,  <37.984085, 31.454908, 31.432375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146950, 31.289680, 31.370935>,  <38.418392, 31.014301, 31.268536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146950, 31.289680, 31.370935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550085, -0.707312, 0.443977,
		0.486727, 0.160463, 0.858690,
		-0.678604, 0.688448, 0.255999,
		37.943367, 31.496216, 31.447735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176346, 30.818193, 31.936182>,  <38.418392, 31.014301, 31.268536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176346, 30.818193, 31.936182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900295, 31.068794, 31.791283>,  <37.734665, 31.219154, 31.704344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900295, 31.068794, 31.791283>,  <38.176346, 30.818193, 31.936182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900295, 31.068794, 31.791283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723599, -0.605349, 0.331598,
		-0.011539, 0.490966, 0.871102,
		-0.690125, 0.626502, -0.362247,
		37.693256, 31.256744, 31.682608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646114, 30.931726, 32.499035>,  <38.176346, 30.818193, 31.936182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646114, 30.931726, 32.499035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439457, 31.031984, 32.171558>,  <37.315460, 31.092138, 31.975073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439457, 31.031984, 32.171558>,  <37.646114, 30.931726, 32.499035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439457, 31.031984, 32.171558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687344, -0.691561, 0.222037,
		-0.510521, 0.677436, 0.529572,
		-0.516648, 0.250644, -0.818689,
		37.284462, 31.107178, 31.925951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081913, 31.097408, 32.797455>,  <37.646114, 30.931726, 32.499035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081913, 31.097408, 32.797455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033997, 31.024921, 32.407005>,  <37.005245, 30.981430, 32.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033997, 31.024921, 32.407005>,  <37.081913, 31.097408, 32.797455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033997, 31.024921, 32.407005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671023, -0.709842, 0.214132,
		-0.731695, 0.680651, -0.036566,
		-0.119793, -0.181216, -0.976120,
		36.998058, 30.970556, 32.114170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328671, 30.958191, 32.686188>,  <37.081913, 31.097408, 32.797455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328671, 30.958191, 32.686188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544258, 30.775858, 32.402855>,  <36.673611, 30.666458, 32.232857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544258, 30.775858, 32.402855>,  <36.328671, 30.958191, 32.686188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544258, 30.775858, 32.402855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632116, -0.774675, 0.017545,
		-0.556722, 0.438289, -0.705665,
		0.538971, -0.455830, -0.708328,
		36.705948, 30.639109, 32.190357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891674, 30.884705, 32.106411>,  <36.328671, 30.958191, 32.686188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891674, 30.884705, 32.106411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160534, 30.604761, 32.203087>,  <36.321850, 30.436794, 32.261093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160534, 30.604761, 32.203087>,  <35.891674, 30.884705, 32.106411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160534, 30.604761, 32.203087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740418, -0.635756, 0.218164,
		0.000972, -0.325591, -0.945510,
		0.672146, -0.699861, 0.241691,
		36.362179, 30.394802, 32.275593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684139, 30.407003, 31.746634>,  <35.891674, 30.884705, 32.106411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684139, 30.407003, 31.746634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897083, 30.258175, 32.050781>,  <36.024849, 30.168879, 32.233269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897083, 30.258175, 32.050781>,  <35.684139, 30.407003, 31.746634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897083, 30.258175, 32.050781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669641, -0.734586, 0.109382,
		0.517858, -0.567404, -0.640216,
		0.532357, -0.372070, 0.760368,
		36.056789, 30.146553, 32.278893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586739, 29.735893, 31.676580>,  <35.684139, 30.407003, 31.746634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586739, 29.735893, 31.676580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690655, 29.803215, 32.056934>,  <35.753006, 29.843607, 32.285145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690655, 29.803215, 32.056934>,  <35.586739, 29.735893, 31.676580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690655, 29.803215, 32.056934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820704, -0.480420, 0.309260,
		0.508873, -0.860739, 0.013317,
		0.259794, 0.168303, 0.950884,
		35.768593, 29.853706, 32.342201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102772, 29.695082, 31.087509>,  <35.586739, 29.735893, 31.676580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102772, 29.695082, 31.087509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331196, 29.415882, 30.914677>,  <36.468250, 29.248363, 30.810978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331196, 29.415882, 30.914677>,  <36.102772, 29.695082, 31.087509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331196, 29.415882, 30.914677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565069, -0.047571, 0.823671,
		-0.595475, -0.714518, 0.367252,
		0.571057, -0.697998, -0.432079,
		36.502514, 29.206482, 30.785053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009151, 29.042759, 31.475786>,  <36.102772, 29.695082, 31.087509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009151, 29.042759, 31.475786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351780, 29.136040, 31.291655>,  <36.557358, 29.192009, 31.181175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351780, 29.136040, 31.291655>,  <36.009151, 29.042759, 31.475786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351780, 29.136040, 31.291655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497701, -0.137714, 0.856346,
		0.136309, -0.962627, -0.234027,
		0.856571, 0.233203, -0.460329,
		36.608749, 29.206001, 31.153555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524364, 28.333086, 31.583336>,  <36.009151, 29.042759, 31.475786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524364, 28.333086, 31.583336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670868, 28.704361, 31.557041>,  <36.758770, 28.927126, 31.541264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670868, 28.704361, 31.557041>,  <36.524364, 28.333086, 31.583336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670868, 28.704361, 31.557041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594334, -0.178995, 0.784046,
		0.715975, -0.326235, -0.617212,
		0.366261, 0.928187, -0.065737,
		36.780746, 28.982817, 31.537319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301563, 28.384068, 31.521822>,  <36.524364, 28.333086, 31.583336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301563, 28.384068, 31.521822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163567, 28.715954, 31.697346>,  <37.080769, 28.915085, 31.802660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163567, 28.715954, 31.697346>,  <37.301563, 28.384068, 31.521822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163567, 28.715954, 31.697346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721744, -0.064380, 0.689159,
		0.600057, 0.554462, -0.576631,
		-0.344989, 0.829715, 0.438811,
		37.060070, 28.964869, 31.828989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808552, 28.665180, 31.829170>,  <37.301563, 28.384068, 31.521822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808552, 28.665180, 31.829170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542736, 28.908112, 32.003315>,  <37.383247, 29.053871, 32.107803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542736, 28.908112, 32.003315>,  <37.808552, 28.665180, 31.829170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542736, 28.908112, 32.003315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654997, 0.192991, 0.730571,
		0.359675, 0.770653, -0.526049,
		-0.664540, 0.607328, 0.435361,
		37.343372, 29.090311, 32.133923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175529, 29.304682, 32.060215>,  <37.808552, 28.665180, 31.829170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175529, 29.304682, 32.060215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828724, 29.261528, 32.254803>,  <37.620640, 29.235636, 32.371555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828724, 29.261528, 32.254803>,  <38.175529, 29.304682, 32.060215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828724, 29.261528, 32.254803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475674, 0.111593, 0.872514,
		-0.148418, 0.987880, -0.045435,
		-0.867010, -0.107885, 0.486471,
		37.568623, 29.229162, 32.400745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994404, 29.281046, 32.277538>,  <38.175529, 29.304682, 32.060215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994404, 29.281046, 32.277538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948109, 29.070904, 32.614727>,  <38.920330, 28.944818, 32.817039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948109, 29.070904, 32.614727>,  <38.994404, 29.281046, 32.277538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948109, 29.070904, 32.614727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569743, 0.660069, 0.489594,
		-0.813632, 0.536944, 0.222921,
		-0.115742, -0.525357, 0.842973,
		38.913387, 28.913296, 32.867619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725403, 29.713015, 32.765499>,  <38.994404, 29.281046, 32.277538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725403, 29.713015, 32.765499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943954, 29.432961, 32.949360>,  <39.075085, 29.264927, 33.059677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943954, 29.432961, 32.949360>,  <38.725403, 29.713015, 32.765499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943954, 29.432961, 32.949360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493158, 0.712524, 0.499103,
		-0.676952, -0.046020, 0.734587,
		0.546379, -0.700137, 0.459650,
		39.107868, 29.222919, 33.087254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667629, 29.807207, 33.411507>,  <38.725403, 29.713015, 32.765499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667629, 29.807207, 33.411507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015690, 29.618311, 33.355183>,  <39.224525, 29.504972, 33.321388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015690, 29.618311, 33.355183>,  <38.667629, 29.807207, 33.411507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015690, 29.618311, 33.355183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434119, 0.599368, 0.672531,
		-0.233197, -0.646333, 0.726548,
		0.870149, -0.472241, -0.140814,
		39.276733, 29.476639, 33.312939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991486, 29.630962, 33.980976>,  <38.667629, 29.807207, 33.411507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991486, 29.630962, 33.980976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322666, 29.657124, 33.758186>,  <39.521374, 29.672819, 33.624512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322666, 29.657124, 33.758186>,  <38.991486, 29.630962, 33.980976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322666, 29.657124, 33.758186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499364, 0.365989, 0.785295,
		0.255205, -0.928318, 0.270362,
		0.827953, 0.065402, -0.556971,
		39.571053, 29.676744, 33.591095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506329, 29.347124, 34.347111>,  <38.991486, 29.630962, 33.980976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506329, 29.347124, 34.347111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726658, 29.558298, 34.088535>,  <39.858856, 29.685003, 33.933392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726658, 29.558298, 34.088535>,  <39.506329, 29.347124, 34.347111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726658, 29.558298, 34.088535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648126, 0.217436, 0.729832,
		0.525863, -0.820979, -0.222401,
		0.550819, 0.527935, -0.646439,
		39.891903, 29.716679, 33.894604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149471, 29.079535, 34.335049>,  <39.506329, 29.347124, 34.347111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149471, 29.079535, 34.335049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196182, 29.454571, 34.204033>,  <40.224209, 29.679592, 34.125423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196182, 29.454571, 34.204033>,  <40.149471, 29.079535, 34.335049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196182, 29.454571, 34.204033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610204, 0.192476, 0.768508,
		0.783591, -0.289610, -0.549646,
		0.116774, 0.937592, -0.327544,
		40.231213, 29.735847, 34.105770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847569, 29.221201, 34.371078>,  <40.149471, 29.079535, 34.335049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847569, 29.221201, 34.371078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665958, 29.577522, 34.378372>,  <40.556992, 29.791315, 34.382748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665958, 29.577522, 34.378372>,  <40.847569, 29.221201, 34.371078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665958, 29.577522, 34.378372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478700, 0.226622, 0.848227,
		0.751469, 0.393847, -0.529319,
		-0.454027, 0.890801, 0.018235,
		40.529751, 29.844763, 34.383842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300629, 29.738550, 34.550343>,  <40.847569, 29.221201, 34.371078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300629, 29.738550, 34.550343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952797, 29.911552, 34.645649>,  <40.744099, 30.015354, 34.702831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952797, 29.911552, 34.645649>,  <41.300629, 29.738550, 34.550343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952797, 29.911552, 34.645649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341962, 0.179372, 0.922436,
		0.356219, 0.883610, -0.303878,
		-0.869581, 0.432504, 0.238265,
		40.691921, 30.041304, 34.717129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476963, 30.276911, 34.915215>,  <41.300629, 29.738550, 34.550343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476963, 30.276911, 34.915215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085430, 30.298141, 34.994286>,  <40.850510, 30.310881, 35.041729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085430, 30.298141, 34.994286>,  <41.476963, 30.276911, 34.915215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085430, 30.298141, 34.994286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204398, 0.304137, 0.930442,
		-0.010734, 0.951148, -0.308547,
		-0.978829, 0.053079, 0.197677,
		40.791782, 30.314066, 35.053589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326389, 30.977358, 35.156387>,  <41.476963, 30.276911, 34.915215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326389, 30.977358, 35.156387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056709, 30.712217, 35.286663>,  <40.894901, 30.553133, 35.364830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.056709, 30.712217, 35.286663>,  <41.326389, 30.977358, 35.156387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056709, 30.712217, 35.286663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207747, 0.252971, 0.944906,
		-0.708724, 0.704721, -0.032848,
		-0.674204, -0.662854, 0.325690,
		40.854446, 30.513361, 35.384369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923504, 31.337261, 35.584431>,  <41.326389, 30.977358, 35.156387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923504, 31.337261, 35.584431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919319, 30.953463, 35.697041>,  <40.916809, 30.723183, 35.764606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919319, 30.953463, 35.697041>,  <40.923504, 31.337261, 35.584431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919319, 30.953463, 35.697041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420796, 0.251175, 0.871689,
		-0.907095, 0.127583, 0.401125,
		-0.010460, -0.959496, 0.281526,
		40.916180, 30.665613, 35.781498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008232, 31.162003, 36.216389>,  <40.923504, 31.337261, 35.584431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008232, 31.162003, 36.216389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369034, 31.209566, 36.382401>,  <41.585514, 31.238104, 36.482010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369034, 31.209566, 36.382401>,  <41.008232, 31.162003, 36.216389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369034, 31.209566, 36.382401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400685, 0.588524, 0.702204,
		-0.160760, -0.799688, 0.578494,
		0.902002, 0.118907, 0.415034,
		41.639633, 31.245239, 36.506912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516529, 30.638266, 36.419930>,  <41.008232, 31.162003, 36.216389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516529, 30.638266, 36.419930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126362, 30.688402, 36.492432>,  <40.892262, 30.718485, 36.535934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126362, 30.688402, 36.492432>,  <41.516529, 30.638266, 36.419930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126362, 30.688402, 36.492432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216796, -0.398113, -0.891350,
		-0.039562, -0.908733, 0.415499,
		-0.975415, 0.125342, 0.181260,
		40.833736, 30.726006, 36.546810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176197, 29.895926, 36.294998>,  <41.516529, 30.638266, 36.419930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176197, 29.895926, 36.294998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906467, 30.190424, 36.272282>,  <40.744629, 30.367123, 36.258652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.906467, 30.190424, 36.272282>,  <41.176197, 29.895926, 36.294998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906467, 30.190424, 36.272282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260073, -0.308771, -0.914889,
		-0.691119, -0.602164, 0.399690,
		-0.674326, 0.736246, -0.056791,
		40.704170, 30.411299, 36.255245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565334, 29.620537, 36.113922>,  <41.176197, 29.895926, 36.294998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565334, 29.620537, 36.113922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546528, 30.008045, 36.016541>,  <40.535244, 30.240551, 35.958111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546528, 30.008045, 36.016541>,  <40.565334, 29.620537, 36.113922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546528, 30.008045, 36.016541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304336, -0.246028, -0.920244,
		-0.951404, 0.030823, 0.306400,
		-0.047018, 0.968772, -0.243453,
		40.532421, 30.298677, 35.943504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895248, 29.813375, 35.773838>,  <40.565334, 29.620537, 36.113922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895248, 29.813375, 35.773838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161213, 30.096872, 35.679539>,  <40.320793, 30.266972, 35.622959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161213, 30.096872, 35.679539>,  <39.895248, 29.813375, 35.773838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161213, 30.096872, 35.679539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254026, -0.082236, -0.963695,
		-0.702400, 0.700656, 0.125360,
		0.664910, 0.708744, -0.235747,
		40.360687, 30.309496, 35.608814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513657, 30.204519, 35.295849>,  <39.895248, 29.813375, 35.773838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513657, 30.204519, 35.295849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907791, 30.240278, 35.237728>,  <40.144272, 30.261734, 35.202858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907791, 30.240278, 35.237728>,  <39.513657, 30.204519, 35.295849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907791, 30.240278, 35.237728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129242, -0.164768, -0.977828,
		-0.111356, 0.982272, -0.150799,
		0.985341, 0.089398, -0.145299,
		40.203392, 30.267097, 35.194138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639969, 30.815187, 34.877556>,  <39.513657, 30.204519, 35.295849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639969, 30.815187, 34.877556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966961, 30.589075, 34.833393>,  <40.163155, 30.453407, 34.806896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966961, 30.589075, 34.833393>,  <39.639969, 30.815187, 34.877556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966961, 30.589075, 34.833393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140253, -0.009447, -0.990071,
		0.558626, 0.824844, -0.087005,
		0.817475, -0.565282, -0.110409,
		40.212204, 30.419491, 34.800270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040653, 31.073555, 34.286942>,  <39.639969, 30.815187, 34.877556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040653, 31.073555, 34.286942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168816, 30.696945, 34.328640>,  <40.245712, 30.470980, 34.353661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168816, 30.696945, 34.328640>,  <40.040653, 31.073555, 34.286942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168816, 30.696945, 34.328640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033171, -0.121132, -0.992082,
		0.946699, 0.314412, -0.070043,
		0.320407, -0.941526, 0.104247,
		40.264938, 30.414488, 34.359913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384495, 30.867989, 33.626987>,  <40.040653, 31.073555, 34.286942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384495, 30.867989, 33.626987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368088, 30.492500, 33.763878>,  <40.358242, 30.267208, 33.846012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368088, 30.492500, 33.763878>,  <40.384495, 30.867989, 33.626987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368088, 30.492500, 33.763878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258435, -0.320894, -0.911174,
		0.965157, -0.125819, -0.229436,
		-0.041019, -0.938721, 0.342230,
		40.355782, 30.210884, 33.866547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701801, 30.400543, 33.060673>,  <40.384495, 30.867989, 33.626987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701801, 30.400543, 33.060673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446682, 30.211187, 33.303692>,  <40.293610, 30.097574, 33.449505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446682, 30.211187, 33.303692>,  <40.701801, 30.400543, 33.060673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446682, 30.211187, 33.303692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406481, -0.463127, -0.787583,
		0.654206, -0.749276, 0.102958,
		-0.637799, -0.473391, 0.607547,
		40.255341, 30.069170, 33.485954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681183, 29.698524, 32.881649>,  <40.701801, 30.400543, 33.060673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681183, 29.698524, 32.881649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338341, 29.706589, 33.087547>,  <40.132633, 29.711428, 33.211086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.338341, 29.706589, 33.087547>,  <40.681183, 29.698524, 32.881649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338341, 29.706589, 33.087547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480912, -0.389447, -0.785528,
		0.184630, -0.920828, 0.343493,
		-0.857109, 0.020158, 0.514741,
		40.081207, 29.712637, 33.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301575, 29.021210, 32.960052>,  <40.681183, 29.698524, 32.881649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301575, 29.021210, 32.960052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054955, 29.335899, 32.972240>,  <39.906982, 29.524714, 32.979553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054955, 29.335899, 32.972240>,  <40.301575, 29.021210, 32.960052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054955, 29.335899, 32.972240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577230, -0.425377, -0.697036,
		-0.535413, -0.447349, 0.716388,
		-0.616554, 0.786723, 0.030471,
		39.869987, 29.571917, 32.981380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727024, 28.516287, 33.274803>,  <40.301575, 29.021210, 32.960052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727024, 28.516287, 33.274803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111523, 28.420494, 33.220181>,  <41.342224, 28.363018, 33.187405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111523, 28.420494, 33.220181>,  <40.727024, 28.516287, 33.274803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111523, 28.420494, 33.220181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156019, 0.064188, 0.985666,
		-0.227284, -0.968777, 0.099064,
		0.961249, -0.239482, -0.136558,
		41.399899, 28.348650, 33.179214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961880, 27.953911, 33.622845>,  <40.727024, 28.516287, 33.274803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961880, 27.953911, 33.622845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263897, 28.215254, 33.600803>,  <41.445107, 28.372059, 33.587578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263897, 28.215254, 33.600803>,  <40.961880, 27.953911, 33.622845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263897, 28.215254, 33.600803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004627, 0.089354, 0.995989,
		0.655660, -0.751759, 0.070489,
		0.755042, 0.653356, -0.055108,
		41.490410, 28.411261, 33.584270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656269, 27.779959, 33.951511>,  <40.961880, 27.953911, 33.622845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656269, 27.779959, 33.951511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634426, 28.178080, 33.983494>,  <41.621323, 28.416952, 34.002686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634426, 28.178080, 33.983494>,  <41.656269, 27.779959, 33.951511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634426, 28.178080, 33.983494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125182, -0.072623, 0.989472,
		0.990630, 0.064038, -0.120629,
		-0.054603, 0.995301, 0.079959,
		41.618046, 28.476669, 34.007481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308472, 28.158073, 34.220901>,  <41.656269, 27.779959, 33.951511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308472, 28.158073, 34.220901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001583, 28.385338, 34.339939>,  <41.817448, 28.521696, 34.411362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001583, 28.385338, 34.339939>,  <42.308472, 28.158073, 34.220901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001583, 28.385338, 34.339939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480791, 0.202371, 0.853162,
		0.424507, 0.797647, -0.428430,
		-0.767225, 0.568159, 0.297594,
		41.771416, 28.555786, 34.429218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567951, 28.751091, 34.459324>,  <42.308472, 28.158073, 34.220901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567951, 28.751091, 34.459324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204166, 28.732241, 34.624569>,  <41.985897, 28.720930, 34.723717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.204166, 28.732241, 34.624569>,  <42.567951, 28.751091, 34.459324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204166, 28.732241, 34.624569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395158, 0.211137, 0.894020,
		-0.129354, 0.976320, -0.173399,
		-0.909460, -0.047125, 0.413112,
		41.931328, 28.718103, 34.748501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133976, 29.248840, 34.153839>,  <42.567951, 28.751091, 34.459324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133976, 29.248840, 34.153839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451534, 29.166498, 33.924980>,  <42.642071, 29.117094, 33.787666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451534, 29.166498, 33.924980>,  <42.133976, 29.248840, 34.153839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451534, 29.166498, 33.924980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203260, 0.796977, -0.568782,
		0.573074, 0.567849, 0.590876,
		0.793896, -0.205853, -0.572148,
		42.689705, 29.104742, 33.753334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602322, 29.852673, 34.176472>,  <42.133976, 29.248840, 34.153839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602322, 29.852673, 34.176472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601269, 29.623409, 33.848698>,  <42.600636, 29.485851, 33.652031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601269, 29.623409, 33.848698>,  <42.602322, 29.852673, 34.176472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601269, 29.623409, 33.848698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129181, 0.812771, -0.568082,
		0.991618, 0.104360, -0.076180,
		-0.002632, -0.573161, -0.819439,
		42.600479, 29.451462, 33.602867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850147, 30.526197, 34.002575>,  <42.602322, 29.852673, 34.176472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850147, 30.526197, 34.002575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157024, 30.575016, 33.750694>,  <43.341148, 30.604307, 33.599567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157024, 30.575016, 33.750694>,  <42.850147, 30.526197, 34.002575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157024, 30.575016, 33.750694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078758, 0.992226, 0.096358,
		0.636565, -0.024331, 0.770840,
		0.767191, 0.122048, -0.629700,
		43.387180, 30.611629, 33.561783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498497, 30.773973, 34.335579>,  <42.850147, 30.526197, 34.002575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498497, 30.773973, 34.335579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629082, 30.459175, 34.126175>,  <43.707432, 30.270296, 34.000534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629082, 30.459175, 34.126175>,  <43.498497, 30.773973, 34.335579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629082, 30.459175, 34.126175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819143, 0.511912, -0.258750,
		0.471626, -0.344356, 0.811781,
		0.326458, -0.786998, -0.523507,
		43.727020, 30.223076, 33.969124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184219, 30.420065, 34.652840>,  <43.498497, 30.773973, 34.335579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184219, 30.420065, 34.652840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152210, 30.370718, 34.257187>,  <44.133003, 30.341110, 34.019794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152210, 30.370718, 34.257187>,  <44.184219, 30.420065, 34.652840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152210, 30.370718, 34.257187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892293, 0.433445, -0.126247,
		0.444308, -0.892696, 0.075394,
		-0.080021, -0.123366, -0.989130,
		44.128204, 30.333708, 33.960449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784618, 30.065973, 34.409351>,  <44.184219, 30.420065, 34.652840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784618, 30.065973, 34.409351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636295, 30.311367, 34.130455>,  <44.547302, 30.458603, 33.963120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.636295, 30.311367, 34.130455>,  <44.784618, 30.065973, 34.409351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636295, 30.311367, 34.130455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886387, 0.457840, -0.068556,
		0.277166, -0.643444, -0.713553,
		-0.370805, 0.613483, -0.697239,
		44.525055, 30.495413, 33.921284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240604, 30.031904, 33.758282>,  <44.784618, 30.065973, 34.409351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240604, 30.031904, 33.758282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040169, 30.378044, 33.754776>,  <44.919907, 30.585728, 33.752674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040169, 30.378044, 33.754776>,  <45.240604, 30.031904, 33.758282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040169, 30.378044, 33.754776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864895, 0.501118, 0.028945,
		0.029438, 0.006927, -0.999543,
		-0.501089, 0.865351, -0.008760,
		44.889843, 30.637650, 33.752148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568958, 30.462387, 33.191208>,  <45.240604, 30.031904, 33.758282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568958, 30.462387, 33.191208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374580, 30.722075, 33.425259>,  <45.257954, 30.877886, 33.565689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.374580, 30.722075, 33.425259>,  <45.568958, 30.462387, 33.191208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.374580, 30.722075, 33.425259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818137, 0.573395, 0.043256,
		-0.307427, 0.499735, -0.809786,
		-0.485944, 0.649217, 0.585129,
		45.228798, 30.916840, 33.600796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601181, 31.129345, 32.884827>,  <45.568958, 30.462387, 33.191208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601181, 31.129345, 32.884827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559620, 31.166403, 33.280933>,  <45.534683, 31.188637, 33.518597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559620, 31.166403, 33.280933>,  <45.601181, 31.129345, 32.884827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559620, 31.166403, 33.280933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897876, 0.437006, 0.053328,
		-0.427810, 0.894675, -0.128591,
		-0.103906, 0.092644, 0.990263,
		45.528446, 31.194197, 33.578011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900894, 30.981123, 32.513542>,  <45.601181, 31.129345, 32.884827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900894, 30.981123, 32.513542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964363, 30.640907, 32.312981>,  <45.002445, 30.436777, 32.192642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.964363, 30.640907, 32.312981>,  <44.900894, 30.981123, 32.513542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964363, 30.640907, 32.312981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841720, 0.148915, -0.518971,
		0.516072, 0.504386, -0.692289,
		0.158670, -0.850540, -0.501403,
		45.011963, 30.385746, 32.162560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905552, 31.131796, 31.772509>,  <44.900894, 30.981123, 32.513542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905552, 31.131796, 31.772509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805542, 30.758139, 31.874378>,  <44.745537, 30.533943, 31.935501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805542, 30.758139, 31.874378>,  <44.905552, 31.131796, 31.772509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805542, 30.758139, 31.874378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866678, 0.098651, -0.489016,
		0.431688, -0.342990, -0.834268,
		-0.250029, -0.934144, 0.254675,
		44.730534, 30.477896, 31.950781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537373, 31.364321, 32.169060>,  <44.905552, 31.131796, 31.772509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537373, 31.364321, 32.169060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642712, 31.132299, 31.860727>,  <45.705914, 30.993086, 31.675726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642712, 31.132299, 31.860727>,  <45.537373, 31.364321, 32.169060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642712, 31.132299, 31.860727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393818, 0.794068, -0.462993,
		0.880657, -0.181641, 0.437551,
		0.263347, -0.580053, -0.770835,
		45.721714, 30.958282, 31.629477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283916, 31.242920, 32.063599>,  <45.537373, 31.364321, 32.169060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283916, 31.242920, 32.063599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085892, 31.254541, 31.716249>,  <45.967075, 31.261515, 31.507839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.085892, 31.254541, 31.716249>,  <46.283916, 31.242920, 32.063599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.085892, 31.254541, 31.716249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494010, 0.831584, -0.253815,
		0.714750, -0.554639, -0.426037,
		-0.495062, 0.029052, -0.868372,
		45.937374, 31.263256, 31.455738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808899, 31.551626, 31.569450>,  <46.283916, 31.242920, 32.063599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808899, 31.551626, 31.569450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425049, 31.604519, 31.470140>,  <46.194740, 31.636253, 31.410555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425049, 31.604519, 31.470140>,  <46.808899, 31.551626, 31.569450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.425049, 31.604519, 31.470140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170005, 0.975820, -0.137383,
		0.224103, -0.174043, -0.958899,
		-0.959623, 0.132230, -0.248272,
		46.137161, 31.644188, 31.395658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676441, 31.572636, 30.827398>,  <46.808899, 31.551626, 31.569450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676441, 31.572636, 30.827398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439293, 31.806675, 31.048725>,  <46.297005, 31.947098, 31.181522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439293, 31.806675, 31.048725>,  <46.676441, 31.572636, 30.827398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439293, 31.806675, 31.048725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581879, 0.786246, -0.207927,
		-0.556702, 0.198690, -0.806601,
		-0.592874, 0.585098, 0.553318,
		46.261429, 31.982204, 31.214720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209026, 32.035946, 30.462732>,  <46.676441, 31.572636, 30.827398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209026, 32.035946, 30.462732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353611, 32.144962, 30.819399>,  <46.440361, 32.210373, 31.033400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.353611, 32.144962, 30.819399>,  <46.209026, 32.035946, 30.462732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353611, 32.144962, 30.819399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581603, 0.681560, -0.444088,
		-0.728756, 0.679115, 0.087845,
		0.361459, 0.272541, 0.891666,
		46.462048, 32.226727, 31.086899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249844, 32.839172, 30.633745>,  <46.209026, 32.035946, 30.462732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249844, 32.839172, 30.633745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.550732, 32.685684, 30.848005>,  <46.731266, 32.593594, 30.976562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.550732, 32.685684, 30.848005>,  <46.249844, 32.839172, 30.633745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.550732, 32.685684, 30.848005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615814, 0.698579, -0.364363,
		-0.234382, 0.603943, 0.761786,
		0.752222, -0.383718, 0.535651,
		46.776398, 32.570568, 31.008701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.828976, 32.984356, 30.199909>,  <46.249844, 32.839172, 30.633745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.828976, 32.984356, 30.199909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.674187, 33.340897, 30.105469>,  <46.581314, 33.554821, 30.048805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.674187, 33.340897, 30.105469>,  <46.828976, 32.984356, 30.199909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.674187, 33.340897, 30.105469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412087, 0.061880, 0.909041,
		0.824884, 0.449071, 0.343368,
		-0.386976, 0.891351, -0.236100,
		46.558094, 33.608303, 30.034639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.197041, 33.207397, 30.865101>,  <46.828976, 32.984356, 30.199909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.197041, 33.207397, 30.865101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889320, 32.984898, 30.990803>,  <46.704689, 32.851398, 31.066225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889320, 32.984898, 30.990803>,  <47.197041, 33.207397, 30.865101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889320, 32.984898, 30.990803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638747, 0.659428, -0.396429,
		0.013285, -0.505704, -0.862604,
		-0.769302, -0.556253, 0.314257,
		46.658531, 32.818020, 31.085079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.091022, 33.313484, 31.531857>,  <47.197041, 33.207397, 30.865101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.091022, 33.313484, 31.531857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.425747, 33.333607, 31.749926>,  <47.626583, 33.345680, 31.880768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.425747, 33.333607, 31.749926>,  <47.091022, 33.313484, 31.531857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.425747, 33.333607, 31.749926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240419, 0.928388, 0.283362,
		-0.491878, -0.368191, 0.788981,
		0.836812, 0.050307, 0.545174,
		47.676792, 33.348698, 31.913477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.990078, 33.617874, 32.142796>,  <47.091022, 33.313484, 31.531857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.990078, 33.617874, 32.142796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376987, 33.682499, 32.064529>,  <47.609131, 33.721272, 32.017570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.376987, 33.682499, 32.064529>,  <46.990078, 33.617874, 32.142796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.376987, 33.682499, 32.064529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095527, 0.946235, 0.309055,
		0.235073, -0.280249, 0.930699,
		0.967272, 0.161557, -0.195663,
		47.667168, 33.730965, 32.005829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.396938, 33.816746, 32.732761>,  <46.990078, 33.617874, 32.142796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.396938, 33.816746, 32.732761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560886, 34.005192, 32.420338>,  <47.659256, 34.118259, 32.232883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560886, 34.005192, 32.420338>,  <47.396938, 33.816746, 32.732761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.560886, 34.005192, 32.420338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009199, 0.854112, 0.520008,
		0.912098, -0.220320, 0.345740,
		0.409869, 0.471118, -0.781061,
		47.683849, 34.146526, 32.186020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.294601, 34.217026, 33.484093>,  <47.396938, 33.816746, 32.732761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.294601, 34.217026, 33.484093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066502, 34.241241, 33.811787>,  <46.929642, 34.255772, 34.008404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066502, 34.241241, 33.811787>,  <47.294601, 34.217026, 33.484093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.066502, 34.241241, 33.811787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194206, 0.978946, 0.062840,
		-0.798183, 0.194936, -0.570004,
		-0.570252, 0.060540, 0.819236,
		46.895428, 34.259403, 34.057556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.900902, 34.838600, 33.372715>,  <47.294601, 34.217026, 33.484093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.900902, 34.838600, 33.372715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923714, 34.736053, 33.758675>,  <46.937401, 34.674526, 33.990250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923714, 34.736053, 33.758675>,  <46.900902, 34.838600, 33.372715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923714, 34.736053, 33.758675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279792, 0.931844, 0.231047,
		-0.958366, 0.256794, 0.124870,
		0.057028, -0.256365, 0.964896,
		46.940823, 34.659145, 34.048145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584255, 35.255592, 33.929550>,  <46.900902, 34.838600, 33.372715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584255, 35.255592, 33.929550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.860085, 35.132107, 34.191601>,  <47.025581, 35.058014, 34.348831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.860085, 35.132107, 34.191601>,  <46.584255, 35.255592, 33.929550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.860085, 35.132107, 34.191601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111200, 0.848733, 0.516998,
		-0.715629, -0.429357, 0.550933,
		0.689572, -0.308715, 0.655122,
		47.066956, 35.039494, 34.388138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.386902, 35.376617, 34.640209>,  <46.584255, 35.255592, 33.929550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.386902, 35.376617, 34.640209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783657, 35.404499, 34.597675>,  <47.021709, 35.421230, 34.572155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783657, 35.404499, 34.597675>,  <46.386902, 35.376617, 34.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783657, 35.404499, 34.597675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005234, 0.813216, 0.581938,
		0.127035, -0.577772, 0.806252,
		0.991885, 0.069707, -0.106331,
		47.081223, 35.425411, 34.565777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.729137, 35.204639, 35.287361>,  <46.386902, 35.376617, 34.640209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.729137, 35.204639, 35.287361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886044, 35.502884, 35.071884>,  <46.980186, 35.681831, 34.942596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886044, 35.502884, 35.071884>,  <46.729137, 35.204639, 35.287361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886044, 35.502884, 35.071884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245395, 0.649229, 0.719918,
		0.886515, -0.150206, 0.437640,
		0.392265, 0.745613, -0.538692,
		47.003723, 35.726566, 34.910278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.222385, 35.687134, 35.758736>,  <46.729137, 35.204639, 35.287361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.222385, 35.687134, 35.758736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069374, 35.874321, 35.440067>,  <46.977566, 35.986633, 35.248867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069374, 35.874321, 35.440067>,  <47.222385, 35.687134, 35.758736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069374, 35.874321, 35.440067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418953, 0.680657, 0.600986,
		0.823499, 0.563661, -0.064316,
		-0.382529, 0.467966, -0.796668,
		46.954617, 36.014709, 35.201069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.744934, 35.536228, 35.300533>,  <47.222385, 35.687134, 35.758736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.744934, 35.536228, 35.300533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826893, 35.185719, 35.126102>,  <47.876068, 34.975414, 35.021442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826893, 35.185719, 35.126102>,  <47.744934, 35.536228, 35.300533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.826893, 35.185719, 35.126102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166149, 0.470200, -0.866779,
		0.964579, 0.105144, 0.241933,
		0.204893, -0.876274, -0.436076,
		47.888359, 34.922836, 34.995281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.128502, 38.280251, 25.070593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945957, 38.587627, 25.250027>,  <36.836430, 38.772053, 25.357687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945957, 38.587627, 25.250027>,  <37.128502, 38.280251, 25.070593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945957, 38.587627, 25.250027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394060, -0.626554, 0.672418,
		0.797776, 0.130101, 0.588751,
		-0.456366, 0.768442, 0.448582,
		36.809048, 38.818161, 25.384602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264389, 38.176666, 25.651119>,  <37.128502, 38.280251, 25.070593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264389, 38.176666, 25.651119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954002, 38.425808, 25.690964>,  <36.767769, 38.575294, 25.714870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954002, 38.425808, 25.690964>,  <37.264389, 38.176666, 25.651119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954002, 38.425808, 25.690964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427448, -0.635377, 0.643105,
		0.463852, 0.456452, 0.759272,
		-0.775970, 0.622854, 0.099612,
		36.721210, 38.612663, 25.720848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155701, 38.265175, 26.297136>,  <37.264389, 38.176666, 25.651119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155701, 38.265175, 26.297136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805862, 38.379486, 26.140467>,  <36.595959, 38.448074, 26.046465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805862, 38.379486, 26.140467>,  <37.155701, 38.265175, 26.297136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805862, 38.379486, 26.140467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484141, -0.471086, 0.737351,
		0.026208, 0.834511, 0.550368,
		-0.874598, 0.285780, -0.391674,
		36.543484, 38.465221, 26.022964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936234, 38.566669, 26.810539>,  <37.155701, 38.265175, 26.297136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936234, 38.566669, 26.810539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612934, 38.464619, 26.598255>,  <36.418957, 38.403389, 26.470884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.612934, 38.464619, 26.598255>,  <36.936234, 38.566669, 26.810539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612934, 38.464619, 26.598255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365880, -0.488590, 0.792093,
		-0.461383, 0.834381, 0.301555,
		-0.808244, -0.255125, -0.530710,
		36.370461, 38.388081, 26.439043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355114, 38.643147, 27.313843>,  <36.936234, 38.566669, 26.810539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355114, 38.643147, 27.313843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218548, 38.396629, 27.029978>,  <36.136608, 38.248718, 26.859659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218548, 38.396629, 27.029978>,  <36.355114, 38.643147, 27.313843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218548, 38.396629, 27.029978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238960, -0.673306, 0.699684,
		-0.909029, 0.408463, 0.082607,
		-0.341415, -0.616293, -0.709661,
		36.116123, 38.211742, 26.817080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687904, 38.419708, 27.508512>,  <36.355114, 38.643147, 27.313843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687904, 38.419708, 27.508512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775295, 38.140579, 27.235657>,  <35.827728, 37.973103, 27.071943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.775295, 38.140579, 27.235657>,  <35.687904, 38.419708, 27.508512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775295, 38.140579, 27.235657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500969, -0.680085, 0.535271,
		-0.837436, 0.224787, -0.498169,
		0.218475, -0.697822, -0.682139,
		35.840839, 37.931232, 27.031015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054707, 37.953690, 27.401104>,  <35.687904, 38.419708, 27.508512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054707, 37.953690, 27.401104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350956, 37.719055, 27.270014>,  <35.528706, 37.578274, 27.191360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.350956, 37.719055, 27.270014>,  <35.054707, 37.953690, 27.401104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350956, 37.719055, 27.270014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334031, -0.744620, 0.577896,
		-0.583013, -0.318532, -0.747417,
		0.740620, -0.586582, -0.327724,
		35.573143, 37.543079, 27.171696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809708, 37.188290, 27.376902>,  <35.054707, 37.953690, 27.401104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809708, 37.188290, 27.376902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205555, 37.131767, 27.366352>,  <35.443062, 37.097855, 27.360023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205555, 37.131767, 27.366352>,  <34.809708, 37.188290, 27.376902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205555, 37.131767, 27.366352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111747, -0.871678, 0.477170,
		-0.090413, -0.469267, -0.878415,
		0.989615, -0.141303, -0.026371,
		35.502441, 37.089375, 27.358440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000793, 36.495434, 26.979298>,  <34.809708, 37.188290, 27.376902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000793, 36.495434, 26.979298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277588, 36.606697, 27.245766>,  <35.443665, 36.673454, 27.405645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277588, 36.606697, 27.245766>,  <35.000793, 36.495434, 26.979298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277588, 36.606697, 27.245766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061290, -0.896820, 0.438128,
		0.719301, -0.344010, -0.603543,
		0.691990, 0.278154, 0.666168,
		35.485184, 36.690144, 27.445616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323532, 35.957706, 26.991302>,  <35.000793, 36.495434, 26.979298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323532, 35.957706, 26.991302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419956, 36.146183, 27.330683>,  <35.477810, 36.259270, 27.534311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.419956, 36.146183, 27.330683>,  <35.323532, 35.957706, 26.991302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419956, 36.146183, 27.330683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068165, -0.863854, 0.499109,
		0.968113, -0.178150, -0.176122,
		0.241060, 0.471188, 0.848452,
		35.492275, 36.287540, 27.585218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765682, 35.524776, 27.306320>,  <35.323532, 35.957706, 26.991302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765682, 35.524776, 27.306320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667786, 35.765511, 27.610397>,  <35.609047, 35.909950, 27.792843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.667786, 35.765511, 27.610397>,  <35.765682, 35.524776, 27.306320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667786, 35.765511, 27.610397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137697, -0.797665, 0.587172,
		0.959761, 0.039031, 0.278094,
		-0.244743, 0.601837, 0.760192,
		35.594364, 35.946060, 27.838455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283325, 35.492954, 27.953131>,  <35.765682, 35.524776, 27.306320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283325, 35.492954, 27.953131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.935905, 35.626186, 28.099930>,  <35.727455, 35.706123, 28.188009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.935905, 35.626186, 28.099930>,  <36.283325, 35.492954, 27.953131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935905, 35.626186, 28.099930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006166, -0.733180, 0.680007,
		0.495568, 0.592881, 0.634748,
		-0.868547, 0.333076, 0.366996,
		35.675343, 35.726109, 28.210030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367062, 35.436687, 28.740679>,  <36.283325, 35.492954, 27.953131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367062, 35.436687, 28.740679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978741, 35.464554, 28.648855>,  <35.745750, 35.481274, 28.593761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.978741, 35.464554, 28.648855>,  <36.367062, 35.436687, 28.740679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978741, 35.464554, 28.648855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222243, -0.621451, 0.751270,
		-0.090326, 0.780350, 0.618786,
		-0.970798, 0.069661, -0.229560,
		35.687500, 35.485451, 28.579987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023907, 35.627316, 29.404922>,  <36.367062, 35.436687, 28.740679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023907, 35.627316, 29.404922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757172, 35.467434, 29.153347>,  <35.597130, 35.371506, 29.002401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757172, 35.467434, 29.153347>,  <36.023907, 35.627316, 29.404922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757172, 35.467434, 29.153347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235988, -0.687279, 0.686992,
		-0.706847, 0.606535, 0.363980,
		-0.666840, -0.399703, -0.628936,
		35.557121, 35.347523, 28.964666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561817, 35.472431, 29.822950>,  <36.023907, 35.627316, 29.404922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561817, 35.472431, 29.822950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469849, 35.237488, 29.512560>,  <35.414665, 35.096519, 29.326324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469849, 35.237488, 29.512560>,  <35.561817, 35.472431, 29.822950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469849, 35.237488, 29.512560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296264, -0.717253, 0.630695,
		-0.927018, 0.374906, -0.009102,
		-0.229923, -0.587362, -0.775977,
		35.400871, 35.061279, 29.279766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937950, 35.171486, 30.033566>,  <35.561817, 35.472431, 29.822950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937950, 35.171486, 30.033566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.067364, 34.945015, 29.730310>,  <35.145012, 34.809132, 29.548357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.067364, 34.945015, 29.730310>,  <34.937950, 35.171486, 30.033566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067364, 34.945015, 29.730310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287908, -0.822143, 0.491111,
		-0.901352, 0.059383, -0.428997,
		0.323533, -0.566176, -0.758137,
		35.164425, 34.775162, 29.502869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469490, 34.670582, 29.904144>,  <34.937950, 35.171486, 30.033566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469490, 34.670582, 29.904144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792694, 34.501305, 29.740181>,  <34.986618, 34.399738, 29.641802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.792694, 34.501305, 29.740181>,  <34.469490, 34.670582, 29.904144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792694, 34.501305, 29.740181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171458, -0.834530, 0.523605,
		-0.563670, -0.352795, -0.746868,
		0.808009, -0.423196, -0.409910,
		35.035095, 34.374344, 29.617208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275166, 33.923595, 29.721539>,  <34.469490, 34.670582, 29.904144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275166, 33.923595, 29.721539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673443, 33.947109, 29.750196>,  <34.912411, 33.961216, 29.767391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.673443, 33.947109, 29.750196>,  <34.275166, 33.923595, 29.721539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673443, 33.947109, 29.750196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001353, -0.763788, 0.645466,
		0.092666, -0.642785, -0.760422,
		0.995696, 0.058784, 0.071647,
		34.972153, 33.964745, 29.771690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460999, 33.165554, 29.687023>,  <34.275166, 33.923595, 29.721539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460999, 33.165554, 29.687023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770180, 33.366318, 29.842264>,  <34.955688, 33.486778, 29.935410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770180, 33.366318, 29.842264>,  <34.460999, 33.165554, 29.687023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770180, 33.366318, 29.842264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110976, -0.709230, 0.696188,
		0.624680, -0.495051, -0.603903,
		0.772954, 0.501914, 0.388103,
		35.002068, 33.516891, 29.958694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112720, 32.721909, 29.752863>,  <34.460999, 33.165554, 29.687023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112720, 32.721909, 29.752863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.145290, 33.005829, 30.032734>,  <35.164833, 33.176182, 30.200657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.145290, 33.005829, 30.032734>,  <35.112720, 32.721909, 29.752863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145290, 33.005829, 30.032734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141068, -0.703150, 0.696907,
		0.986646, 0.041956, -0.157385,
		0.081426, 0.709802, 0.699679,
		35.169720, 33.218769, 30.242638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762486, 32.619663, 30.059082>,  <35.112720, 32.721909, 29.752863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762486, 32.619663, 30.059082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555378, 32.834244, 30.325657>,  <35.431114, 32.962994, 30.485601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555378, 32.834244, 30.325657>,  <35.762486, 32.619663, 30.059082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555378, 32.834244, 30.325657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299561, -0.615987, 0.728577,
		0.801362, 0.576871, 0.158237,
		-0.517766, 0.536452, 0.666436,
		35.400047, 32.995178, 30.525587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470692, 31.942394, 29.872152>,  <35.762486, 32.619663, 30.059082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470692, 31.942394, 29.872152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623901, 31.573496, 29.893160>,  <35.715828, 31.352158, 29.905766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.623901, 31.573496, 29.893160>,  <35.470692, 31.942394, 29.872152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623901, 31.573496, 29.893160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697424, 0.251431, -0.671105,
		0.605718, 0.293677, 0.739499,
		0.383021, -0.922245, 0.052521,
		35.738808, 31.296822, 29.908916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161587, 32.024330, 30.110312>,  <35.470692, 31.942394, 29.872152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161587, 32.024330, 30.110312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155231, 31.661570, 29.941891>,  <36.151421, 31.443914, 29.840837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155231, 31.661570, 29.941891>,  <36.161587, 32.024330, 30.110312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155231, 31.661570, 29.941891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824303, 0.226466, -0.518881,
		0.565926, -0.355319, 0.743960,
		-0.015886, -0.906897, -0.421054,
		36.150467, 31.389500, 29.815575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749012, 31.701479, 30.263405>,  <36.161587, 32.024330, 30.110312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749012, 31.701479, 30.263405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635151, 31.534245, 29.918343>,  <36.566833, 31.433903, 29.711306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635151, 31.534245, 29.918343>,  <36.749012, 31.701479, 30.263405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635151, 31.534245, 29.918343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705467, 0.517929, -0.483804,
		0.649067, -0.746292, 0.147516,
		-0.284656, -0.418088, -0.862655,
		36.549755, 31.408817, 29.659546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312946, 31.742689, 29.844860>,  <36.749012, 31.701479, 30.263405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312946, 31.742689, 29.844860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071899, 31.642002, 29.541943>,  <36.927273, 31.581591, 29.360191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.071899, 31.642002, 29.541943>,  <37.312946, 31.742689, 29.844860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071899, 31.642002, 29.541943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634728, 0.424003, -0.646020,
		0.483708, -0.869977, -0.095740,
		-0.602616, -0.251717, -0.757293,
		36.891113, 31.566486, 29.314754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729919, 31.430180, 29.281214>,  <37.312946, 31.742689, 29.844860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729919, 31.430180, 29.281214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393604, 31.584206, 29.129004>,  <37.191814, 31.676620, 29.037678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.393604, 31.584206, 29.129004>,  <37.729919, 31.430180, 29.281214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393604, 31.584206, 29.129004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540656, 0.561305, -0.626600,
		-0.027690, -0.732572, -0.680126,
		-0.840788, 0.385065, -0.380527,
		37.141369, 31.699724, 29.014845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847141, 31.272755, 28.521736>,  <37.729919, 31.430180, 29.281214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847141, 31.272755, 28.521736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582073, 31.564352, 28.590364>,  <37.423031, 31.739309, 28.631540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582073, 31.564352, 28.590364>,  <37.847141, 31.272755, 28.521736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582073, 31.564352, 28.590364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425214, 0.554828, -0.715094,
		-0.616489, -0.400919, -0.677646,
		-0.662672, 0.728992, 0.171569,
		37.383270, 31.783051, 28.641836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619263, 31.482241, 27.922365>,  <37.847141, 31.272755, 28.521736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619263, 31.482241, 27.922365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491356, 31.798403, 28.131365>,  <37.414612, 31.988100, 28.256765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491356, 31.798403, 28.131365>,  <37.619263, 31.482241, 27.922365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491356, 31.798403, 28.131365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381132, 0.612175, -0.692807,
		-0.867460, -0.022397, -0.497003,
		-0.319769, 0.790405, 0.522501,
		37.395424, 32.035526, 28.288115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203663, 31.968630, 27.455923>,  <37.619263, 31.482241, 27.922365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203663, 31.968630, 27.455923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328335, 32.191303, 27.763939>,  <37.403137, 32.324909, 27.948748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328335, 32.191303, 27.763939>,  <37.203663, 31.968630, 27.455923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328335, 32.191303, 27.763939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277817, 0.721603, -0.634119,
		-0.908667, 0.411570, 0.070251,
		0.311677, 0.556686, 0.770038,
		37.421837, 32.358311, 27.994951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922462, 32.664829, 27.367668>,  <37.203663, 31.968630, 27.455923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922462, 32.664829, 27.367668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231213, 32.698914, 27.619686>,  <37.416462, 32.719364, 27.770897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.231213, 32.698914, 27.619686>,  <36.922462, 32.664829, 27.367668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231213, 32.698914, 27.619686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368294, 0.747851, -0.552339,
		-0.518242, 0.658376, 0.545864,
		0.771872, 0.085207, 0.630043,
		37.462772, 32.724476, 27.808699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032814, 33.382767, 27.448299>,  <36.922462, 32.664829, 27.367668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032814, 33.382767, 27.448299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385498, 33.253830, 27.586102>,  <37.597107, 33.176468, 27.668783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385498, 33.253830, 27.586102>,  <37.032814, 33.382767, 27.448299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385498, 33.253830, 27.586102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465418, 0.713925, -0.523161,
		-0.077312, 0.621615, 0.779499,
		0.881708, -0.322346, 0.344506,
		37.650009, 33.157127, 27.689453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364059, 34.039356, 27.504873>,  <37.032814, 33.382767, 27.448299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364059, 34.039356, 27.504873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.658039, 33.768223, 27.512768>,  <37.834427, 33.605541, 27.517504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.658039, 33.768223, 27.512768>,  <37.364059, 34.039356, 27.504873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658039, 33.768223, 27.512768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608955, 0.646895, -0.459021,
		0.298374, 0.349375, 0.888206,
		0.734947, -0.677837, 0.019736,
		37.878525, 33.564873, 27.518688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007526, 34.280540, 27.755957>,  <37.364059, 34.039356, 27.504873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007526, 34.280540, 27.755957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130398, 33.989857, 27.510181>,  <38.204121, 33.815445, 27.362717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130398, 33.989857, 27.510181>,  <38.007526, 34.280540, 27.755957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130398, 33.989857, 27.510181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314066, 0.686890, -0.655396,
		0.898335, 0.008347, 0.439231,
		0.307174, -0.726713, -0.614436,
		38.222549, 33.771843, 27.325850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655201, 34.460850, 27.601992>,  <38.007526, 34.280540, 27.755957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655201, 34.460850, 27.601992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504589, 34.235115, 27.308121>,  <38.414223, 34.099674, 27.131798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504589, 34.235115, 27.308121>,  <38.655201, 34.460850, 27.601992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504589, 34.235115, 27.308121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120656, 0.756414, -0.642869,
		0.918514, -0.330702, -0.216722,
		-0.376529, -0.564335, -0.734678,
		38.391632, 34.065815, 27.087717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082893, 34.632999, 26.978785>,  <38.655201, 34.460850, 27.601992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082893, 34.632999, 26.978785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755604, 34.474827, 26.811865>,  <38.559231, 34.379925, 26.711712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.755604, 34.474827, 26.811865>,  <39.082893, 34.632999, 26.978785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755604, 34.474827, 26.811865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036834, 0.760440, -0.648362,
		0.573714, -0.515137, -0.636778,
		-0.818227, -0.395429, -0.417301,
		38.510136, 34.356197, 26.686674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237415, 34.487892, 26.238546>,  <39.082893, 34.632999, 26.978785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237415, 34.487892, 26.238546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840656, 34.519539, 26.278318>,  <38.602600, 34.538528, 26.302181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840656, 34.519539, 26.278318>,  <39.237415, 34.487892, 26.238546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840656, 34.519539, 26.278318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029921, 0.615058, -0.787914,
		-0.123494, -0.784502, -0.607705,
		-0.991894, 0.079120, 0.099429,
		38.543087, 34.543274, 26.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964642, 34.727558, 25.474014>,  <39.237415, 34.487892, 26.238546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964642, 34.727558, 25.474014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634781, 34.781822, 25.693668>,  <38.436867, 34.814381, 25.825460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634781, 34.781822, 25.693668>,  <38.964642, 34.727558, 25.474014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634781, 34.781822, 25.693668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401429, 0.543603, -0.737123,
		-0.398508, -0.828307, -0.393826,
		-0.824648, 0.135656, 0.549137,
		38.387386, 34.822517, 25.858410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373505, 34.622772, 25.046391>,  <38.964642, 34.727558, 25.474014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373505, 34.622772, 25.046391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248161, 34.864132, 25.339706>,  <38.172955, 35.008949, 25.515696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248161, 34.864132, 25.339706>,  <38.373505, 34.622772, 25.046391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248161, 34.864132, 25.339706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391813, 0.621240, -0.678634,
		-0.865039, -0.499964, 0.041754,
		-0.313354, 0.603404, 0.733289,
		38.154156, 35.045155, 25.559692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849064, 34.825607, 24.868225>,  <38.373505, 34.622772, 25.046391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849064, 34.825607, 24.868225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.949844, 35.099895, 25.141371>,  <38.010311, 35.264469, 25.305258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.949844, 35.099895, 25.141371>,  <37.849064, 34.825607, 24.868225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949844, 35.099895, 25.141371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382850, 0.718689, -0.580441,
		-0.888789, -0.115191, 0.443605,
		0.251952, 0.685724, 0.682863,
		38.025429, 35.305614, 25.346230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216465, 35.315151, 24.912775>,  <37.849064, 34.825607, 24.868225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216465, 35.315151, 24.912775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550419, 35.503956, 25.026035>,  <37.750790, 35.617241, 25.093992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550419, 35.503956, 25.026035>,  <37.216465, 35.315151, 24.912775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550419, 35.503956, 25.026035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313768, 0.830771, -0.459750,
		-0.452243, 0.294993, 0.841698,
		0.834881, 0.472016, 0.283151,
		37.800884, 35.645561, 25.110981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.047848, 36.340626, 24.942219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.440582, 36.286407, 24.995319>,  <37.676224, 36.253876, 25.027180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.440582, 36.286407, 24.995319>,  <37.047848, 36.340626, 24.942219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440582, 36.286407, 24.995319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142596, 0.988755, -0.045050,
		-0.125153, 0.063161, 0.990125,
		0.981837, -0.135550, 0.132753,
		37.735134, 36.245743, 25.035145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250977, 36.919212, 25.368099>,  <37.047848, 36.340626, 24.942219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250977, 36.919212, 25.368099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588558, 36.794762, 25.193310>,  <37.791107, 36.720093, 25.088436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.588558, 36.794762, 25.193310>,  <37.250977, 36.919212, 25.368099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588558, 36.794762, 25.193310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220648, 0.943853, -0.245877,
		0.488938, 0.111091, 0.865216,
		0.843952, -0.311127, -0.436973,
		37.841743, 36.701424, 25.062218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692963, 37.491993, 25.411663>,  <37.250977, 36.919212, 25.368099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692963, 37.491993, 25.411663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900551, 37.285206, 25.139366>,  <38.025105, 37.161133, 24.975988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.900551, 37.285206, 25.139366>,  <37.692963, 37.491993, 25.411663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900551, 37.285206, 25.139366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231186, 0.851593, -0.470471,
		0.822936, 0.086783, 0.561468,
		0.518971, -0.516970, -0.680743,
		38.056244, 37.130116, 24.935143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329144, 37.751846, 25.351566>,  <37.692963, 37.491993, 25.411663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329144, 37.751846, 25.351566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301315, 37.572010, 24.995358>,  <38.284618, 37.464108, 24.781631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.301315, 37.572010, 24.995358>,  <38.329144, 37.751846, 25.351566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301315, 37.572010, 24.995358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420526, 0.796277, -0.434858,
		0.904609, -0.404741, 0.133668,
		-0.069568, -0.449587, -0.890523,
		38.280445, 37.437134, 24.728201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962837, 37.810268, 25.061764>,  <38.329144, 37.751846, 25.351566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962837, 37.810268, 25.061764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.737263, 37.728985, 24.741592>,  <38.601917, 37.680214, 24.549490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.737263, 37.728985, 24.741592>,  <38.962837, 37.810268, 25.061764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737263, 37.728985, 24.741592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350188, 0.818950, -0.454631,
		0.747893, -0.536683, -0.390676,
		-0.563936, -0.203205, -0.800426,
		38.568081, 37.668022, 24.501465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436947, 37.826462, 24.520781>,  <38.962837, 37.810268, 25.061764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436947, 37.826462, 24.520781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078987, 37.845154, 24.343252>,  <38.864212, 37.856369, 24.236734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078987, 37.845154, 24.343252>,  <39.436947, 37.826462, 24.520781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078987, 37.845154, 24.343252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353300, 0.681777, -0.640592,
		0.272656, -0.730066, -0.626628,
		-0.894895, 0.046726, -0.443823,
		38.810520, 37.859173, 24.210106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472172, 37.770660, 23.743517>,  <39.436947, 37.826462, 24.520781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472172, 37.770660, 23.743517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.116657, 37.945374, 23.799051>,  <38.903347, 38.050201, 23.832373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.116657, 37.945374, 23.799051>,  <39.472172, 37.770660, 23.743517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116657, 37.945374, 23.799051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195821, 0.635787, -0.746612,
		-0.414376, -0.636394, -0.650612,
		-0.888789, 0.436782, 0.138835,
		38.850021, 38.076408, 23.840702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264404, 37.825562, 23.078871>,  <39.472172, 37.770660, 23.743517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264404, 37.825562, 23.078871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032280, 38.069977, 23.294231>,  <38.893005, 38.216625, 23.423449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.032280, 38.069977, 23.294231>,  <39.264404, 37.825562, 23.078871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032280, 38.069977, 23.294231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175993, 0.739577, -0.649656,
		-0.795151, -0.282248, -0.536722,
		-0.580311, 0.611034, 0.538402,
		38.858185, 38.253288, 23.455751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984627, 38.101318, 22.531740>,  <39.264404, 37.825562, 23.078871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984627, 38.101318, 22.531740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956612, 38.338615, 22.852528>,  <38.939804, 38.480995, 23.045000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.956612, 38.338615, 22.852528>,  <38.984627, 38.101318, 22.531740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956612, 38.338615, 22.852528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339809, 0.770050, -0.539955,
		-0.937883, 0.234700, -0.255522,
		-0.070037, 0.593244, 0.801971,
		38.935600, 38.516590, 23.093119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629063, 38.561707, 22.289806>,  <38.984627, 38.101318, 22.531740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629063, 38.561707, 22.289806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818939, 38.730549, 22.598738>,  <38.932865, 38.831856, 22.784096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818939, 38.730549, 22.598738>,  <38.629063, 38.561707, 22.289806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818939, 38.730549, 22.598738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203726, 0.800970, -0.562977,
		-0.856250, 0.424583, 0.294218,
		0.474691, 0.422110, 0.772329,
		38.961346, 38.857182, 22.830437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335545, 39.195736, 22.235312>,  <38.629063, 38.561707, 22.289806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335545, 39.195736, 22.235312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667271, 39.229942, 22.456190>,  <38.866306, 39.250465, 22.588718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667271, 39.229942, 22.456190>,  <38.335545, 39.195736, 22.235312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667271, 39.229942, 22.456190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219388, 0.859036, -0.462522,
		-0.513911, 0.504722, 0.693651,
		0.829316, 0.085517, 0.552197,
		38.916065, 39.255596, 22.621849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269791, 39.886257, 22.564392>,  <38.335545, 39.195736, 22.235312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269791, 39.886257, 22.564392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652668, 39.772537, 22.542641>,  <38.882393, 39.704304, 22.529591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652668, 39.772537, 22.542641>,  <38.269791, 39.886257, 22.564392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652668, 39.772537, 22.542641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248713, 0.903928, -0.347930,
		0.148069, 0.319512, 0.935942,
		0.957192, -0.284298, -0.054377,
		38.939827, 39.687248, 22.526327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634571, 40.490345, 22.682993>,  <38.269791, 39.886257, 22.564392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634571, 40.490345, 22.682993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920544, 40.240082, 22.558144>,  <39.092129, 40.089924, 22.483234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.920544, 40.240082, 22.558144>,  <38.634571, 40.490345, 22.682993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920544, 40.240082, 22.558144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506252, 0.771114, -0.386125,
		0.482267, 0.118039, 0.868035,
		0.714931, -0.625660, -0.312125,
		39.135021, 40.052383, 22.464506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273491, 40.816463, 22.742010>,  <38.634571, 40.490345, 22.682993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273491, 40.816463, 22.742010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.378574, 40.521584, 22.493004>,  <39.441624, 40.344658, 22.343599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.378574, 40.521584, 22.493004>,  <39.273491, 40.816463, 22.742010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378574, 40.521584, 22.493004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661804, 0.607167, -0.439732,
		0.702140, -0.296462, 0.647387,
		0.262709, -0.737196, -0.622516,
		39.457386, 40.300426, 22.306250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035126, 40.858879, 22.677937>,  <39.273491, 40.816463, 22.742010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035126, 40.858879, 22.677937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858345, 40.696754, 22.357836>,  <39.752277, 40.599480, 22.165775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858345, 40.696754, 22.357836>,  <40.035126, 40.858879, 22.677937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858345, 40.696754, 22.357836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548490, 0.583811, -0.598602,
		0.709818, -0.703480, -0.035702,
		-0.441947, -0.405316, -0.800251,
		39.725761, 40.575161, 22.117760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643105, 40.777782, 22.196178>,  <40.035126, 40.858879, 22.677937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643105, 40.777782, 22.196178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297161, 40.776733, 21.995375>,  <40.089596, 40.776104, 21.874893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.297161, 40.776733, 21.995375>,  <40.643105, 40.777782, 22.196178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297161, 40.776733, 21.995375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330589, 0.749579, -0.573448,
		0.377795, -0.661910, -0.647415,
		-0.864859, -0.002617, -0.502007,
		40.037704, 40.775948, 21.844772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910583, 40.955090, 21.569969>,  <40.643105, 40.777782, 22.196178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910583, 40.955090, 21.569969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.523960, 41.013893, 21.485928>,  <40.291985, 41.049175, 21.435503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.523960, 41.013893, 21.485928>,  <40.910583, 40.955090, 21.569969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523960, 41.013893, 21.485928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248629, 0.737830, -0.627528,
		0.062767, -0.658783, -0.749710,
		-0.966563, 0.147011, -0.210104,
		40.233990, 41.057995, 21.422895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730545, 40.787525, 20.814411>,  <40.910583, 40.955090, 21.569969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730545, 40.787525, 20.814411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.493942, 41.061817, 20.984068>,  <40.351982, 41.226391, 21.085861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.493942, 41.061817, 20.984068>,  <40.730545, 40.787525, 20.814411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493942, 41.061817, 20.984068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409431, 0.708614, -0.574658,
		-0.694611, -0.166259, -0.699910,
		-0.591508, 0.685729, 0.424140,
		40.316490, 41.267536, 21.111309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610580, 41.228119, 20.313534>,  <40.730545, 40.787525, 20.814411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610580, 41.228119, 20.313534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.486984, 41.445347, 20.625841>,  <40.412827, 41.575684, 20.813225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.486984, 41.445347, 20.625841>,  <40.610580, 41.228119, 20.313534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486984, 41.445347, 20.625841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423679, 0.813582, -0.398222,
		-0.851480, 0.207746, -0.481480,
		-0.308994, 0.543071, 0.780767,
		40.394287, 41.608269, 20.860071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515606, 41.777420, 20.007845>,  <40.610580, 41.228119, 20.313534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515606, 41.777420, 20.007845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.536530, 41.904411, 20.386574>,  <40.549084, 41.980606, 20.613811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.536530, 41.904411, 20.386574>,  <40.515606, 41.777420, 20.007845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536530, 41.904411, 20.386574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471296, 0.828042, -0.303687,
		-0.880422, 0.462120, -0.106309,
		0.052311, 0.317476, 0.946822,
		40.552223, 41.999653, 20.670620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340416, 42.518623, 20.019737>,  <40.515606, 41.777420, 20.007845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340416, 42.518623, 20.019737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518921, 42.477287, 20.375303>,  <40.626022, 42.452488, 20.588644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518921, 42.477287, 20.375303>,  <40.340416, 42.518623, 20.019737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518921, 42.477287, 20.375303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548001, 0.816848, -0.180153,
		-0.707492, 0.567522, 0.421157,
		0.446262, -0.103337, 0.888916,
		40.652798, 42.446285, 20.641977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273716, 43.126266, 20.320129>,  <40.340416, 42.518623, 20.019737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273716, 43.126266, 20.320129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587704, 42.967766, 20.510630>,  <40.776096, 42.872665, 20.624929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587704, 42.967766, 20.510630>,  <40.273716, 43.126266, 20.320129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587704, 42.967766, 20.510630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507713, 0.851969, -0.127972,
		-0.355044, 0.342253, 0.869947,
		0.784966, -0.396248, 0.476252,
		40.823193, 42.848892, 20.653505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579792, 43.594982, 20.869703>,  <40.273716, 43.126266, 20.320129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579792, 43.594982, 20.869703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865177, 43.360779, 20.715744>,  <41.036407, 43.220257, 20.623369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.865177, 43.360779, 20.715744>,  <40.579792, 43.594982, 20.869703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865177, 43.360779, 20.715744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475049, 0.807987, -0.348548,
		0.515071, 0.065831, 0.854616,
		0.713463, -0.585512, -0.384898,
		41.079216, 43.185123, 20.600275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402779, 44.230427, 20.993170>,  <40.579792, 43.594982, 20.869703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402779, 44.230427, 20.993170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.691120, 44.076565, 21.223787>,  <40.864124, 43.984249, 21.362158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.691120, 44.076565, 21.223787>,  <40.402779, 44.230427, 20.993170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691120, 44.076565, 21.223787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324104, 0.922383, 0.210157,
		-0.612634, 0.035368, 0.789575,
		0.720858, -0.384654, 0.576546,
		40.907379, 43.961170, 21.396751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481289, 44.674911, 21.504963>,  <40.402779, 44.230427, 20.993170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481289, 44.674911, 21.504963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.215504, 44.967171, 21.567751>,  <40.056034, 45.142525, 21.605425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.215504, 44.967171, 21.567751>,  <40.481289, 44.674911, 21.504963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215504, 44.967171, 21.567751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526595, -0.606806, 0.595386,
		0.530269, 0.312952, 0.787957,
		-0.664464, 0.730649, 0.156971,
		40.016163, 45.186367, 21.614841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435841, 44.787170, 22.269484>,  <40.481289, 44.674911, 21.504963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435841, 44.787170, 22.269484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.088306, 44.874557, 22.091763>,  <39.879787, 44.926991, 21.985130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.088306, 44.874557, 22.091763>,  <40.435841, 44.787170, 22.269484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088306, 44.874557, 22.091763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489916, -0.508987, 0.707754,
		-0.071523, 0.832589, 0.549254,
		-0.868831, 0.218467, -0.444303,
		39.827656, 44.940098, 21.958471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061123, 45.099270, 22.802341>,  <40.435841, 44.787170, 22.269484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061123, 45.099270, 22.802341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.795151, 44.977600, 22.529476>,  <39.635567, 44.904598, 22.365757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.795151, 44.977600, 22.529476>,  <40.061123, 45.099270, 22.802341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795151, 44.977600, 22.529476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497647, -0.500642, 0.708311,
		-0.556967, 0.810455, 0.181523,
		-0.664932, -0.304172, -0.682162,
		39.595673, 44.886349, 22.324827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406090, 45.075878, 23.180380>,  <40.061123, 45.099270, 22.802341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406090, 45.075878, 23.180380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335197, 44.861153, 22.850430>,  <39.292664, 44.732315, 22.652460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335197, 44.861153, 22.850430>,  <39.406090, 45.075878, 23.180380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335197, 44.861153, 22.850430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609590, -0.598131, 0.520230,
		-0.772651, 0.595034, -0.221233,
		-0.177229, -0.536818, -0.824874,
		39.282028, 44.700108, 22.602968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742058, 44.904232, 23.208393>,  <39.406090, 45.075878, 23.180380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742058, 44.904232, 23.208393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874249, 44.621761, 22.957922>,  <38.953564, 44.452278, 22.807640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.874249, 44.621761, 22.957922>,  <38.742058, 44.904232, 23.208393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874249, 44.621761, 22.957922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485963, -0.696068, 0.528516,
		-0.809088, 0.129636, -0.573211,
		0.330479, -0.706175, -0.626179,
		38.973392, 44.409908, 22.770069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116859, 44.415474, 23.183887>,  <38.742058, 44.904232, 23.208393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116859, 44.415474, 23.183887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442543, 44.241413, 23.030159>,  <38.637955, 44.136974, 22.937922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.442543, 44.241413, 23.030159>,  <38.116859, 44.415474, 23.183887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442543, 44.241413, 23.030159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288110, -0.877558, 0.383256,
		-0.504040, -0.201323, -0.839888,
		0.814209, -0.435156, -0.384322,
		38.686806, 44.110867, 22.914862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840816, 43.836620, 23.058630>,  <38.116859, 44.415474, 23.183887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840816, 43.836620, 23.058630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234039, 43.766022, 23.078405>,  <38.469975, 43.723663, 23.090271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.234039, 43.766022, 23.078405>,  <37.840816, 43.836620, 23.058630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234039, 43.766022, 23.078405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178913, -0.865446, 0.467968,
		-0.039808, -0.468885, -0.882362,
		0.983059, -0.176495, 0.049438,
		38.528957, 43.713074, 23.093237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931454, 43.149105, 22.782799>,  <37.840816, 43.836620, 23.058630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931454, 43.149105, 22.782799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237507, 43.251492, 23.019121>,  <38.421139, 43.312923, 23.160915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237507, 43.251492, 23.019121>,  <37.931454, 43.149105, 22.782799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237507, 43.251492, 23.019121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140654, -0.828974, 0.541312,
		0.628322, -0.497275, -0.598272,
		0.765133, 0.255968, 0.590806,
		38.467045, 43.328281, 23.196363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333691, 42.635380, 22.840590>,  <37.931454, 43.149105, 22.782799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333691, 42.635380, 22.840590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514832, 42.806522, 23.153475>,  <38.623516, 42.909210, 23.341206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514832, 42.806522, 23.153475>,  <38.333691, 42.635380, 22.840590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514832, 42.806522, 23.153475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059218, -0.889827, 0.452440,
		0.889616, -0.158568, -0.428298,
		0.452853, 0.427861, 0.782214,
		38.650688, 42.934879, 23.388140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863110, 42.201260, 23.056297>,  <38.333691, 42.635380, 22.840590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863110, 42.201260, 23.056297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807076, 42.411583, 23.391891>,  <38.773457, 42.537777, 23.593248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807076, 42.411583, 23.391891>,  <38.863110, 42.201260, 23.056297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807076, 42.411583, 23.391891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001468, -0.847451, 0.530871,
		0.990138, 0.073136, 0.119488,
		-0.140086, 0.525811, 0.838987,
		38.765049, 42.569324, 23.643587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279961, 41.855289, 23.538515>,  <38.863110, 42.201260, 23.056297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279961, 41.855289, 23.538515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029789, 42.061642, 23.772682>,  <38.879688, 42.185452, 23.913181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.029789, 42.061642, 23.772682>,  <39.279961, 41.855289, 23.538515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029789, 42.061642, 23.772682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295677, -0.850995, 0.434030,
		0.722093, 0.098359, 0.684768,
		-0.625425, 0.515880, 0.585415,
		38.842163, 42.216404, 23.948307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459526, 41.647049, 24.180641>,  <39.279961, 41.855289, 23.538515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459526, 41.647049, 24.180641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088463, 41.794315, 24.205603>,  <38.865826, 41.882675, 24.220579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088463, 41.794315, 24.205603>,  <39.459526, 41.647049, 24.180641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088463, 41.794315, 24.205603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289346, -0.814333, 0.503131,
		0.236055, 0.448679, 0.861954,
		-0.927662, 0.368169, 0.062404,
		38.810165, 41.904766, 24.224323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286400, 41.431545, 24.759912>,  <39.459526, 41.647049, 24.180641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286400, 41.431545, 24.759912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931843, 41.491726, 24.584795>,  <38.719109, 41.527836, 24.479725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931843, 41.491726, 24.584795>,  <39.286400, 41.431545, 24.759912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931843, 41.491726, 24.584795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382742, -0.770163, 0.510253,
		-0.260404, 0.619849, 0.740254,
		-0.886396, 0.150454, -0.437796,
		38.665924, 41.536861, 24.453457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917484, 41.181496, 25.267218>,  <39.286400, 41.431545, 24.759912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917484, 41.181496, 25.267218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.654892, 41.195183, 24.965792>,  <38.497337, 41.203396, 24.784935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.654892, 41.195183, 24.965792>,  <38.917484, 41.181496, 25.267218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654892, 41.195183, 24.965792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499948, -0.767796, 0.400676,
		-0.564875, 0.639780, 0.521150,
		-0.656481, 0.034216, -0.753566,
		38.457947, 41.205448, 24.739721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229721, 41.208981, 25.512529>,  <38.917484, 41.181496, 25.267218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229721, 41.208981, 25.512529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123734, 41.081955, 25.148344>,  <38.060139, 41.005741, 24.929832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123734, 41.081955, 25.148344>,  <38.229721, 41.208981, 25.512529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123734, 41.081955, 25.148344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640268, -0.648076, 0.412378,
		-0.721005, 0.692209, -0.031602,
		-0.264971, -0.317560, -0.910465,
		38.044243, 40.986687, 24.875204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401306, 41.103889, 25.410831>,  <38.229721, 41.208981, 25.512529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401306, 41.103889, 25.410831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582886, 40.876736, 25.136185>,  <37.691833, 40.740444, 24.971397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.582886, 40.876736, 25.136185>,  <37.401306, 41.103889, 25.410831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582886, 40.876736, 25.136185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567283, -0.778430, 0.268768,
		-0.687112, 0.267500, -0.675515,
		0.453946, -0.567882, -0.686617,
		37.719070, 40.706371, 24.930201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764011, 40.754539, 25.051006>,  <37.401306, 41.103889, 25.410831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764011, 40.754539, 25.051006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104183, 40.551601, 24.995338>,  <37.308289, 40.429840, 24.961937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104183, 40.551601, 24.995338>,  <36.764011, 40.754539, 25.051006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104183, 40.551601, 24.995338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474337, -0.853877, 0.214241,
		-0.227527, -0.116184, -0.966816,
		0.850433, -0.507342, -0.139170,
		37.359314, 40.399399, 24.953587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503414, 40.275414, 24.568369>,  <36.764011, 40.754539, 25.051006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503414, 40.275414, 24.568369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828102, 40.112926, 24.736221>,  <37.022915, 40.015434, 24.836933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828102, 40.112926, 24.736221>,  <36.503414, 40.275414, 24.568369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828102, 40.112926, 24.736221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523145, -0.825153, 0.213171,
		0.259667, -0.392565, -0.882307,
		0.811722, -0.406221, 0.419633,
		37.071617, 39.991058, 24.862112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656170, 39.421951, 24.295856>,  <36.503414, 40.275414, 24.568369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656170, 39.421951, 24.295856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855488, 39.480846, 24.637621>,  <36.975079, 39.516186, 24.842680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855488, 39.480846, 24.637621>,  <36.656170, 39.421951, 24.295856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855488, 39.480846, 24.637621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531604, -0.726606, 0.435249,
		0.684908, -0.671092, -0.283790,
		0.498295, 0.147242, 0.854413,
		37.004978, 39.525021, 24.893946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852390, 38.759823, 24.452888>,  <36.656170, 39.421951, 24.295856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852390, 38.759823, 24.452888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.871536, 38.976505, 24.788570>,  <36.883022, 39.106514, 24.989979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.871536, 38.976505, 24.788570>,  <36.852390, 38.759823, 24.452888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871536, 38.976505, 24.788570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474423, -0.727022, 0.496348,
		0.878995, -0.421893, 0.222202,
		0.047860, 0.541706, 0.839205,
		36.885895, 39.139015, 25.040333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.016132, 33.192619, 26.220329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.124535, 33.476460, 26.480492>,  <38.189575, 33.646763, 26.636589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.124535, 33.476460, 26.480492>,  <38.016132, 33.192619, 26.220329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124535, 33.476460, 26.480492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004549, -0.674740, 0.738042,
		0.962567, -0.202973, -0.179631,
		0.271006, 0.709598, 0.650405,
		38.205837, 33.689339, 26.675613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589386, 32.863380, 26.564373>,  <38.016132, 33.192619, 26.220329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589386, 32.863380, 26.564373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422997, 33.147671, 26.791296>,  <38.323162, 33.318245, 26.927450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422997, 33.147671, 26.791296>,  <38.589386, 32.863380, 26.564373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422997, 33.147671, 26.791296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100422, -0.655926, 0.748116,
		0.903815, 0.254226, 0.344220,
		-0.415973, 0.710725, 0.567305,
		38.298206, 33.360889, 26.961487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951809, 32.797005, 27.259743>,  <38.589386, 32.863380, 26.564373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951809, 32.797005, 27.259743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.624119, 33.004898, 27.356691>,  <38.427505, 33.129635, 27.414860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.624119, 33.004898, 27.356691>,  <38.951809, 32.797005, 27.259743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624119, 33.004898, 27.356691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126383, -0.575881, 0.807706,
		0.559366, 0.631065, 0.537463,
		-0.819230, 0.519729, 0.242372,
		38.378349, 33.160816, 27.429403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773674, 32.685814, 28.046312>,  <38.951809, 32.797005, 27.259743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773674, 32.685814, 28.046312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.427036, 32.853195, 27.937563>,  <38.219055, 32.953625, 27.872313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.427036, 32.853195, 27.937563>,  <38.773674, 32.685814, 28.046312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427036, 32.853195, 27.937563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444568, -0.399915, 0.801516,
		0.226672, 0.815453, 0.532594,
		-0.866591, 0.418455, -0.271875,
		38.167061, 32.978733, 27.856001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425041, 32.965050, 28.633102>,  <38.773674, 32.685814, 28.046312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425041, 32.965050, 28.633102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129017, 32.886436, 28.375828>,  <37.951405, 32.839268, 28.221462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129017, 32.886436, 28.375828>,  <38.425041, 32.965050, 28.633102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129017, 32.886436, 28.375828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563079, -0.341909, 0.752356,
		-0.367772, 0.918952, 0.142371,
		-0.740057, -0.196529, -0.643188,
		37.907001, 32.827477, 28.182871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751057, 33.157429, 28.946735>,  <38.425041, 32.965050, 28.633102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751057, 33.157429, 28.946735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.673908, 32.909996, 28.642063>,  <37.627617, 32.761536, 28.459261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.673908, 32.909996, 28.642063>,  <37.751057, 33.157429, 28.946735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673908, 32.909996, 28.642063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552573, -0.572990, 0.605265,
		-0.810841, 0.537623, -0.231298,
		-0.192873, -0.618583, -0.761680,
		37.616047, 32.724422, 28.413559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089691, 32.964111, 29.083147>,  <37.751057, 33.157429, 28.946735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089691, 32.964111, 29.083147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.186665, 32.689030, 28.809420>,  <37.244850, 32.523983, 28.645184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.186665, 32.689030, 28.809420>,  <37.089691, 32.964111, 29.083147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186665, 32.689030, 28.809420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575905, -0.669652, 0.468934,
		-0.780742, 0.280415, -0.558399,
		0.242437, -0.687701, -0.684318,
		37.259396, 32.482719, 28.604124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424877, 32.685284, 28.701086>,  <37.089691, 32.964111, 29.083147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424877, 32.685284, 28.701086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.718735, 32.413929, 28.697500>,  <36.895050, 32.251114, 28.695349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.718735, 32.413929, 28.697500>,  <36.424877, 32.685284, 28.701086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718735, 32.413929, 28.697500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636490, -0.693728, 0.337079,
		-0.234891, -0.241927, -0.941434,
		0.734647, -0.678390, -0.008966,
		36.939129, 32.210411, 28.694811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052422, 32.122936, 28.482021>,  <36.424877, 32.685284, 28.701086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052422, 32.122936, 28.482021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.397598, 31.989698, 28.634008>,  <36.604706, 31.909754, 28.725201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.397598, 31.989698, 28.634008>,  <36.052422, 32.122936, 28.482021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397598, 31.989698, 28.634008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475229, -0.790544, 0.386261,
		0.171718, -0.513892, -0.840492,
		0.862943, -0.333099, 0.379967,
		36.656483, 31.889769, 28.747999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000809, 31.460356, 28.419744>,  <36.052422, 32.122936, 28.482021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000809, 31.460356, 28.419744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283310, 31.460712, 28.702929>,  <36.452808, 31.460926, 28.872839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283310, 31.460712, 28.702929>,  <36.000809, 31.460356, 28.419744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283310, 31.460712, 28.702929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516665, -0.683021, 0.516275,
		0.484013, -0.730398, -0.481923,
		0.706250, 0.000891, 0.707962,
		36.495186, 31.460979, 28.915318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305721, 30.741282, 28.571228>,  <36.000809, 31.460356, 28.419744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305721, 30.741282, 28.571228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.358215, 30.965202, 28.898495>,  <36.389709, 31.099554, 29.094854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.358215, 30.965202, 28.898495>,  <36.305721, 30.741282, 28.571228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358215, 30.965202, 28.898495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523338, -0.661816, 0.536766,
		0.841959, -0.498620, 0.206113,
		0.131233, 0.559802, 0.818169,
		36.397587, 31.133142, 29.143946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190582, 30.265032, 29.143440>,  <36.305721, 30.741282, 28.571228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190582, 30.265032, 29.143440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169727, 30.611992, 29.341389>,  <36.157215, 30.820168, 29.460157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169727, 30.611992, 29.341389>,  <36.190582, 30.265032, 29.143440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169727, 30.611992, 29.341389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607502, -0.420854, 0.673664,
		0.792605, -0.265513, 0.548889,
		-0.052136, 0.867401, 0.494871,
		36.154087, 30.872211, 29.489849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148823, 30.086313, 29.770941>,  <36.190582, 30.265032, 29.143440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148823, 30.086313, 29.770941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004398, 30.457424, 29.808599>,  <35.917744, 30.680090, 29.831194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.004398, 30.457424, 29.808599>,  <36.148823, 30.086313, 29.770941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004398, 30.457424, 29.808599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720230, -0.341568, 0.603821,
		0.592368, 0.150211, 0.791541,
		-0.361066, 0.927776, 0.094147,
		35.896080, 30.735758, 29.836843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080944, 30.310078, 30.480343>,  <36.148823, 30.086313, 29.770941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080944, 30.310078, 30.480343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829269, 30.485975, 30.223984>,  <35.678265, 30.591515, 30.070168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.829269, 30.485975, 30.223984>,  <36.080944, 30.310078, 30.480343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829269, 30.485975, 30.223984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776093, -0.400524, 0.487093,
		-0.042499, 0.803869, 0.593286,
		-0.629184, 0.439745, -0.640899,
		35.640514, 30.617899, 30.031713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654400, 30.572102, 30.946434>,  <36.080944, 30.310078, 30.480343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654400, 30.572102, 30.946434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.758511, 30.707581, 31.308105>,  <36.820976, 30.788868, 31.525108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.758511, 30.707581, 31.308105>,  <36.654400, 30.572102, 30.946434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758511, 30.707581, 31.308105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331331, 0.848261, -0.413126,
		-0.906906, 0.407108, 0.108557,
		0.260272, 0.338698, 0.904180,
		36.836594, 30.809191, 31.579359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630276, 31.365849, 30.885443>,  <36.654400, 30.572102, 30.946434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630276, 31.365849, 30.885443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.859695, 31.295568, 31.205486>,  <36.997345, 31.253401, 31.397512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.859695, 31.295568, 31.205486>,  <36.630276, 31.365849, 30.885443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859695, 31.295568, 31.205486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576882, 0.780086, -0.242225,
		-0.581594, 0.600496, 0.548774,
		0.573546, -0.175701, 0.800109,
		37.031761, 31.242859, 31.445518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710865, 31.999092, 31.266462>,  <36.630276, 31.365849, 30.885443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710865, 31.999092, 31.266462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010044, 31.759436, 31.380730>,  <37.189552, 31.615643, 31.449289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.010044, 31.759436, 31.380730>,  <36.710865, 31.999092, 31.266462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010044, 31.759436, 31.380730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654479, 0.737407, -0.166996,
		-0.110599, 0.311867, 0.943667,
		0.747947, -0.599141, 0.285667,
		37.234428, 31.579693, 31.466431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073826, 32.401550, 31.920910>,  <36.710865, 31.999092, 31.266462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073826, 32.401550, 31.920910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.330982, 32.123787, 31.791609>,  <37.485275, 31.957130, 31.714027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.330982, 32.123787, 31.791609>,  <37.073826, 32.401550, 31.920910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330982, 32.123787, 31.791609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727108, 0.685972, -0.027499,
		0.240837, -0.217361, 0.945913,
		0.642893, -0.694404, -0.323252,
		37.523849, 31.915466, 31.694633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742443, 32.537369, 32.316895>,  <37.073826, 32.401550, 31.920910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742443, 32.537369, 32.316895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821243, 32.322182, 31.989046>,  <37.868523, 32.193069, 31.792336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821243, 32.322182, 31.989046>,  <37.742443, 32.537369, 32.316895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821243, 32.322182, 31.989046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809806, 0.560529, -0.173266,
		0.552635, -0.629604, 0.546071,
		0.196999, -0.537964, -0.819625,
		37.880344, 32.160793, 31.743158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451382, 32.430588, 32.381428>,  <37.742443, 32.537369, 32.316895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451382, 32.430588, 32.381428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368729, 32.343960, 31.999767>,  <38.319138, 32.291985, 31.770771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368729, 32.343960, 31.999767>,  <38.451382, 32.430588, 32.381428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368729, 32.343960, 31.999767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860372, 0.424150, -0.282591,
		0.465902, -0.879316, 0.098686,
		-0.206629, -0.216566, -0.954151,
		38.306740, 32.278992, 31.713522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062122, 32.081066, 32.119518>,  <38.451382, 32.430588, 32.381428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062122, 32.081066, 32.119518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.867786, 32.232491, 31.804392>,  <38.751186, 32.323345, 31.615316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.867786, 32.232491, 31.804392>,  <39.062122, 32.081066, 32.119518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867786, 32.232491, 31.804392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813352, 0.525835, -0.248909,
		0.320034, -0.761702, -0.563373,
		-0.485835, 0.378561, -0.787817,
		38.722034, 32.346058, 31.568047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490776, 32.011616, 31.516979>,  <39.062122, 32.081066, 32.119518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490776, 32.011616, 31.516979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.256409, 32.304329, 31.377731>,  <39.115788, 32.479958, 31.294184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.256409, 32.304329, 31.377731>,  <39.490776, 32.011616, 31.516979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256409, 32.304329, 31.377731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779204, 0.390772, -0.490039,
		-0.222568, -0.558380, -0.799172,
		-0.585922, 0.731785, -0.348118,
		39.080631, 32.523865, 31.273296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549915, 32.104095, 30.717493>,  <39.490776, 32.011616, 31.516979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549915, 32.104095, 30.717493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394554, 32.457455, 30.822376>,  <39.301338, 32.669468, 30.885307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394554, 32.457455, 30.822376>,  <39.549915, 32.104095, 30.717493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394554, 32.457455, 30.822376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651197, 0.464460, -0.600183,
		-0.651985, -0.062364, -0.755663,
		-0.388405, 0.883395, 0.262210,
		39.278034, 32.722473, 30.901039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781540, 32.547775, 30.178782>,  <39.549915, 32.104095, 30.717493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781540, 32.547775, 30.178782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.654816, 32.807270, 30.455555>,  <39.578781, 32.962967, 30.621618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.654816, 32.807270, 30.455555>,  <39.781540, 32.547775, 30.178782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654816, 32.807270, 30.455555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489874, 0.736593, -0.466319,
		-0.812193, 0.191227, -0.551158,
		-0.316807, 0.648739, 0.691933,
		39.559772, 33.001892, 30.663136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525887, 33.079960, 29.844234>,  <39.781540, 32.547775, 30.178782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525887, 33.079960, 29.844234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.622154, 33.225639, 30.204109>,  <39.679916, 33.313046, 30.420034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.622154, 33.225639, 30.204109>,  <39.525887, 33.079960, 29.844234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622154, 33.225639, 30.204109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558178, 0.706386, -0.435266,
		-0.794049, 0.606941, -0.033281,
		0.240672, 0.364199, 0.899687,
		39.694355, 33.334900, 30.474014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296486, 33.804398, 29.896431>,  <39.525887, 33.079960, 29.844234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296486, 33.804398, 29.896431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581779, 33.750740, 30.171619>,  <39.752956, 33.718548, 30.336733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581779, 33.750740, 30.171619>,  <39.296486, 33.804398, 29.896431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581779, 33.750740, 30.171619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420126, 0.867478, -0.266412,
		-0.561065, 0.479049, 0.675069,
		0.713232, -0.134140, 0.687973,
		39.795750, 33.710499, 30.378012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305012, 34.476509, 30.279619>,  <39.296486, 33.804398, 29.896431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305012, 34.476509, 30.279619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.654949, 34.292107, 30.339113>,  <39.864910, 34.181465, 30.374809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.654949, 34.292107, 30.339113>,  <39.305012, 34.476509, 30.279619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654949, 34.292107, 30.339113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472819, 0.745901, -0.469119,
		0.105325, 0.480731, 0.870520,
		0.874842, -0.461008, 0.148737,
		39.917400, 34.153805, 30.383734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675735, 34.955704, 30.550356>,  <39.305012, 34.476509, 30.279619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675735, 34.955704, 30.550356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925980, 34.688396, 30.389347>,  <40.076126, 34.528011, 30.292742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925980, 34.688396, 30.389347>,  <39.675735, 34.955704, 30.550356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925980, 34.688396, 30.389347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494416, 0.738750, -0.458040,
		0.603457, 0.087544, 0.792575,
		0.625614, -0.668269, -0.402521,
		40.113663, 34.487915, 30.268591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135105, 35.072868, 31.150885>,  <39.675735, 34.955704, 30.550356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135105, 35.072868, 31.150885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973156, 35.342125, 31.398417>,  <39.875984, 35.503681, 31.546936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973156, 35.342125, 31.398417>,  <40.135105, 35.072868, 31.150885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973156, 35.342125, 31.398417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382970, -0.739400, 0.553735,
		0.830307, -0.012799, 0.557160,
		-0.404876, 0.673145, 0.618830,
		39.851692, 35.544067, 31.584066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171101, 34.760002, 31.816362>,  <40.135105, 35.072868, 31.150885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171101, 34.760002, 31.816362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922478, 35.068222, 31.872820>,  <39.773304, 35.253155, 31.906694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.922478, 35.068222, 31.872820>,  <40.171101, 34.760002, 31.816362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922478, 35.068222, 31.872820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521943, -0.541715, 0.658878,
		0.584157, 0.335861, 0.738889,
		-0.621559, 0.770547, 0.141146,
		39.736012, 35.299385, 31.915163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100010, 34.684776, 32.579742>,  <40.171101, 34.760002, 31.816362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100010, 34.684776, 32.579742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.807625, 34.930420, 32.460705>,  <39.632195, 35.077805, 32.389282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.807625, 34.930420, 32.460705>,  <40.100010, 34.684776, 32.579742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807625, 34.930420, 32.460705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579940, -0.329176, 0.745193,
		0.359664, 0.717300, 0.596761,
		-0.730966, 0.614105, -0.297598,
		39.588337, 35.114651, 32.371426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872925, 35.207619, 33.195419>,  <40.100010, 34.684776, 32.579742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872925, 35.207619, 33.195419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591389, 35.121700, 32.924576>,  <39.422466, 35.070148, 32.762070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591389, 35.121700, 32.924576>,  <39.872925, 35.207619, 33.195419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591389, 35.121700, 32.924576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598222, -0.334790, 0.728043,
		-0.383069, 0.917485, 0.107143,
		-0.703839, -0.214795, -0.677107,
		39.380238, 35.057262, 32.721443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224365, 35.348507, 33.534222>,  <39.872925, 35.207619, 33.195419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224365, 35.348507, 33.534222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138432, 35.114204, 33.221626>,  <39.086872, 34.973621, 33.034069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138432, 35.114204, 33.221626>,  <39.224365, 35.348507, 33.534222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138432, 35.114204, 33.221626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745280, -0.418813, 0.518800,
		-0.631191, 0.693888, -0.346579,
		-0.214837, -0.585760, -0.781492,
		39.073982, 34.938477, 32.987179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493412, 35.513882, 33.469357>,  <39.224365, 35.348507, 33.534222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493412, 35.513882, 33.469357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.518463, 35.160431, 33.283760>,  <38.533493, 34.948360, 33.172401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.518463, 35.160431, 33.283760>,  <38.493412, 35.513882, 33.469357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518463, 35.160431, 33.283760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829138, -0.304838, 0.468620,
		-0.555525, 0.355363, -0.751737,
		0.062628, -0.883624, -0.463990,
		38.537251, 34.895344, 33.144562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835484, 35.258286, 33.381451>,  <38.493412, 35.513882, 33.469357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835484, 35.258286, 33.381451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008446, 34.899105, 33.348682>,  <38.112225, 34.683598, 33.329021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008446, 34.899105, 33.348682>,  <37.835484, 35.258286, 33.381451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008446, 34.899105, 33.348682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773735, -0.416168, 0.477638,
		-0.462988, -0.143148, -0.874729,
		0.432407, -0.897949, -0.081922,
		38.138168, 34.629719, 33.324108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371426, 34.789413, 32.985729>,  <37.835484, 35.258286, 33.381451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371426, 34.789413, 32.985729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618038, 34.559349, 33.200790>,  <37.766006, 34.421310, 33.329826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618038, 34.559349, 33.200790>,  <37.371426, 34.789413, 32.985729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618038, 34.559349, 33.200790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783328, -0.516860, 0.345331,
		0.079270, -0.634068, -0.769204,
		0.616534, -0.575164, 0.537655,
		37.802998, 34.386799, 33.362087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139668, 34.019264, 32.836941>,  <37.371426, 34.789413, 32.985729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139668, 34.019264, 32.836941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.339897, 34.067039, 33.179905>,  <37.460037, 34.095703, 33.385685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.339897, 34.067039, 33.179905>,  <37.139668, 34.019264, 32.836941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339897, 34.067039, 33.179905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719732, -0.492950, 0.488861,
		0.481049, -0.861821, -0.160799,
		0.500577, 0.119434, 0.857414,
		37.490070, 34.102871, 33.437130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860794, 33.512951, 33.274498>,  <37.139668, 34.019264, 32.836941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860794, 33.512951, 33.274498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.041576, 33.735016, 33.553787>,  <37.150047, 33.868256, 33.721363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.041576, 33.735016, 33.553787>,  <36.860794, 33.512951, 33.274498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041576, 33.735016, 33.553787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693848, -0.273147, 0.666307,
		0.560630, -0.785609, 0.261750,
		0.451960, 0.555167, 0.698228,
		37.177166, 33.901566, 33.763256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831593, 33.044491, 33.953037>,  <36.860794, 33.512951, 33.274498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831593, 33.044491, 33.953037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911541, 33.422016, 34.058308>,  <36.959511, 33.648533, 34.121468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.911541, 33.422016, 34.058308>,  <36.831593, 33.044491, 33.953037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911541, 33.422016, 34.058308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567280, -0.107531, 0.816474,
		0.798901, -0.312487, 0.513915,
		0.199876, 0.943816, 0.263174,
		36.971504, 33.705162, 34.137260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930374, 33.048267, 34.635387>,  <36.831593, 33.044491, 33.953037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930374, 33.048267, 34.635387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.780807, 33.406620, 34.539406>,  <36.691067, 33.621632, 34.481815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.780807, 33.406620, 34.539406>,  <36.930374, 33.048267, 34.635387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780807, 33.406620, 34.539406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594678, -0.033047, 0.803284,
		0.711719, 0.443059, 0.545119,
		-0.373917, 0.895883, -0.239958,
		36.668633, 33.675385, 34.467419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.204594, 38.095219, 30.615349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961399, 38.410290, 30.655172>,  <40.815483, 38.599335, 30.679068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961399, 38.410290, 30.655172>,  <41.204594, 38.095219, 30.615349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961399, 38.410290, 30.655172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359751, -0.385100, 0.849869,
		0.707768, 0.480890, 0.517504,
		-0.607984, 0.787682, 0.099561,
		40.779003, 38.646595, 30.685041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311378, 38.499866, 31.333382>,  <41.204594, 38.095219, 30.615349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311378, 38.499866, 31.333382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946865, 38.521881, 31.170151>,  <40.728157, 38.535088, 31.072212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946865, 38.521881, 31.170151>,  <41.311378, 38.499866, 31.333382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946865, 38.521881, 31.170151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367293, -0.556655, 0.745138,
		-0.186152, 0.828919, 0.527485,
		-0.911287, 0.055033, -0.408078,
		40.673477, 38.538391, 31.047728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808605, 38.459377, 31.908628>,  <41.311378, 38.499866, 31.333382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808605, 38.459377, 31.908628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615482, 38.367405, 31.570627>,  <40.499611, 38.312222, 31.367826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615482, 38.367405, 31.570627>,  <40.808605, 38.459377, 31.908628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615482, 38.367405, 31.570627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414201, -0.790206, 0.451678,
		-0.771582, 0.568073, 0.286276,
		-0.482803, -0.229931, -0.845005,
		40.470642, 38.298424, 31.317125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177143, 38.186092, 32.130711>,  <40.808605, 38.459377, 31.908628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177143, 38.186092, 32.130711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181351, 38.071701, 31.747438>,  <40.183876, 38.003067, 31.517475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181351, 38.071701, 31.747438>,  <40.177143, 38.186092, 32.130711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181351, 38.071701, 31.747438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364817, -0.893279, 0.262603,
		-0.931020, 0.346797, -0.113726,
		0.010519, -0.285978, -0.958178,
		40.184505, 37.985909, 31.459986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568272, 37.849171, 31.981754>,  <40.177143, 38.186092, 32.130711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568272, 37.849171, 31.981754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820442, 37.732147, 31.694153>,  <39.971745, 37.661934, 31.521591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820442, 37.732147, 31.694153>,  <39.568272, 37.849171, 31.981754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820442, 37.732147, 31.694153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283039, -0.949125, 0.138027,
		-0.722807, 0.116490, -0.681161,
		0.630428, -0.292562, -0.719005,
		40.009571, 37.644379, 31.478451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227859, 37.358818, 31.555418>,  <39.568272, 37.849171, 31.981754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227859, 37.358818, 31.555418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610691, 37.304272, 31.453117>,  <39.840389, 37.271545, 31.391737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610691, 37.304272, 31.453117>,  <39.227859, 37.358818, 31.555418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610691, 37.304272, 31.453117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147071, -0.988856, -0.023113,
		-0.249751, 0.059734, -0.966466,
		0.957076, -0.136367, -0.255753,
		39.897816, 37.263363, 31.376392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206436, 37.014450, 30.951344>,  <39.227859, 37.358818, 31.555418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206436, 37.014450, 30.951344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546726, 36.938099, 31.147236>,  <39.750900, 36.892288, 31.264771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546726, 36.938099, 31.147236>,  <39.206436, 37.014450, 30.951344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546726, 36.938099, 31.147236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253258, -0.965299, 0.063707,
		0.460577, -0.178225, -0.869543,
		0.850723, -0.190877, 0.489731,
		39.801945, 36.880836, 31.294155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475685, 36.438698, 30.693140>,  <39.206436, 37.014450, 30.951344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475685, 36.438698, 30.693140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668312, 36.457478, 31.043201>,  <39.783886, 36.468746, 31.253239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668312, 36.457478, 31.043201>,  <39.475685, 36.438698, 30.693140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668312, 36.457478, 31.043201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148538, -0.979745, 0.134300,
		0.863732, -0.194667, -0.464835,
		0.481563, 0.046953, 0.875153,
		39.812782, 36.471565, 31.305748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658924, 35.648582, 30.735695>,  <39.475685, 36.438698, 30.693140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658924, 35.648582, 30.735695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775677, 35.811977, 31.081631>,  <39.845730, 35.910015, 31.289192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775677, 35.811977, 31.081631>,  <39.658924, 35.648582, 30.735695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775677, 35.811977, 31.081631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182708, -0.863749, 0.469634,
		0.938841, -0.295090, -0.177480,
		0.291883, 0.408484, 0.864838,
		39.863243, 35.934525, 31.341082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355019, 35.358181, 30.471912>,  <39.658924, 35.648582, 30.735695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355019, 35.358181, 30.471912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446850, 35.032150, 30.259144>,  <40.501949, 34.836533, 30.131483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446850, 35.032150, 30.259144>,  <40.355019, 35.358181, 30.471912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446850, 35.032150, 30.259144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281240, 0.578760, -0.765467,
		0.931771, 0.026138, 0.362104,
		0.229580, -0.815078, -0.531921,
		40.515724, 34.787628, 30.099567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985817, 35.458481, 30.372250>,  <40.355019, 35.358181, 30.471912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985817, 35.458481, 30.372250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856869, 35.206551, 30.089581>,  <40.779499, 35.055393, 29.919979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856869, 35.206551, 30.089581>,  <40.985817, 35.458481, 30.372250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856869, 35.206551, 30.089581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496120, 0.523372, -0.692782,
		0.806188, -0.573931, 0.143749,
		-0.322375, -0.629830, -0.706674,
		40.760155, 35.017601, 29.877579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638199, 35.259266, 30.108673>,  <40.985817, 35.458481, 30.372250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638199, 35.259266, 30.108673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360394, 35.181866, 29.831486>,  <41.193710, 35.135426, 29.665173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360394, 35.181866, 29.831486>,  <41.638199, 35.259266, 30.108673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360394, 35.181866, 29.831486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530452, 0.512987, -0.674881,
		0.486071, -0.836304, -0.253637,
		-0.694518, -0.193497, -0.692967,
		41.152039, 35.123814, 29.623596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986221, 35.089382, 29.554869>,  <41.638199, 35.259266, 30.108673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986221, 35.089382, 29.554869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626385, 35.177258, 29.403891>,  <41.410480, 35.229984, 29.313303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626385, 35.177258, 29.403891>,  <41.986221, 35.089382, 29.554869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626385, 35.177258, 29.403891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436722, 0.455664, -0.775658,
		0.001585, -0.862617, -0.505856,
		-0.899595, 0.219689, -0.377446,
		41.356506, 35.243164, 29.290657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007256, 34.927856, 28.778746>,  <41.986221, 35.089382, 29.554869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007256, 34.927856, 28.778746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702850, 35.182007, 28.831135>,  <41.520206, 35.334496, 28.862568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702850, 35.182007, 28.831135>,  <42.007256, 34.927856, 28.778746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702850, 35.182007, 28.831135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204284, 0.426324, -0.881201,
		-0.615732, -0.643851, -0.454236,
		-0.761014, 0.635377, 0.130973,
		41.474545, 35.372620, 28.870426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761486, 34.910431, 28.100513>,  <42.007256, 34.927856, 28.778746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761486, 34.910431, 28.100513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608204, 35.232338, 28.281845>,  <41.516235, 35.425484, 28.390644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608204, 35.232338, 28.281845>,  <41.761486, 34.910431, 28.100513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608204, 35.232338, 28.281845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117252, 0.529205, -0.840354,
		-0.916192, -0.268872, -0.297153,
		-0.383202, 0.804767, 0.453328,
		41.493244, 35.473766, 28.417843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339092, 35.326000, 27.612656>,  <41.761486, 34.910431, 28.100513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339092, 35.326000, 27.612656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412807, 35.575558, 27.916445>,  <41.457035, 35.725292, 28.098719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412807, 35.575558, 27.916445>,  <41.339092, 35.326000, 27.612656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412807, 35.575558, 27.916445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109757, 0.754812, -0.646694,
		-0.976725, 0.202534, 0.070625,
		0.184286, 0.623891, 0.759473,
		41.468094, 35.762726, 28.144287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948105, 35.906227, 27.457661>,  <41.339092, 35.326000, 27.612656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948105, 35.906227, 27.457661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224514, 36.037140, 27.715458>,  <41.390362, 36.115688, 27.870136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224514, 36.037140, 27.715458>,  <40.948105, 35.906227, 27.457661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224514, 36.037140, 27.715458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154155, 0.804385, -0.573761,
		-0.706201, 0.495835, 0.505398,
		0.691025, 0.327280, 0.644493,
		41.431820, 36.135323, 27.908806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722561, 36.600224, 27.727619>,  <40.948105, 35.906227, 27.457661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722561, 36.600224, 27.727619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118076, 36.540520, 27.729202>,  <41.355385, 36.504696, 27.730152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118076, 36.540520, 27.729202>,  <40.722561, 36.600224, 27.727619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118076, 36.540520, 27.729202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121864, 0.791400, -0.599028,
		0.086280, 0.592795, 0.800718,
		0.988790, -0.149263, 0.003958,
		41.414715, 36.495739, 27.730391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982479, 37.211071, 27.744963>,  <40.722561, 36.600224, 27.727619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982479, 37.211071, 27.744963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304512, 36.995781, 27.645235>,  <41.497730, 36.866608, 27.585398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304512, 36.995781, 27.645235>,  <40.982479, 37.211071, 27.744963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304512, 36.995781, 27.645235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225090, 0.666091, -0.711096,
		0.548798, 0.516371, 0.657405,
		0.805081, -0.538224, -0.249319,
		41.546036, 36.834312, 27.570438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504002, 37.791908, 27.590521>,  <40.982479, 37.211071, 27.744963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504002, 37.791908, 27.590521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647205, 37.464241, 27.411278>,  <41.733128, 37.267643, 27.303732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647205, 37.464241, 27.411278>,  <41.504002, 37.791908, 27.590521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647205, 37.464241, 27.411278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144842, 0.522831, -0.840041,
		0.922417, 0.235834, 0.305826,
		0.358005, -0.819164, -0.448110,
		41.754608, 37.218491, 27.276844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985130, 38.049316, 27.319132>,  <41.504002, 37.791908, 27.590521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985130, 38.049316, 27.319132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936562, 37.708817, 27.114925>,  <41.907421, 37.504517, 26.992401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936562, 37.708817, 27.114925>,  <41.985130, 38.049316, 27.319132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936562, 37.708817, 27.114925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241541, 0.473521, -0.847016,
		0.962765, -0.226152, 0.148119,
		-0.121417, -0.851254, -0.510515,
		41.900135, 37.453442, 26.961771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537056, 38.003227, 26.908901>,  <41.985130, 38.049316, 27.319132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537056, 38.003227, 26.908901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264523, 37.764854, 26.738886>,  <42.101002, 37.621830, 26.636877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264523, 37.764854, 26.738886>,  <42.537056, 38.003227, 26.908901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264523, 37.764854, 26.738886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177332, 0.428989, -0.885733,
		0.710168, -0.678851, -0.186607,
		-0.681333, -0.595928, -0.425037,
		42.060123, 37.586075, 26.611376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857346, 37.754120, 26.312481>,  <42.537056, 38.003227, 26.908901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857346, 37.754120, 26.312481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468323, 37.703438, 26.234432>,  <42.234909, 37.673027, 26.187603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468323, 37.703438, 26.234432>,  <42.857346, 37.754120, 26.312481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468323, 37.703438, 26.234432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116469, 0.460858, -0.879798,
		0.201399, -0.878382, -0.433454,
		-0.972560, -0.126706, -0.195121,
		42.176556, 37.665424, 26.175896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.366848, 42.660606, 27.005407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681564, 42.416145, 27.039925>,  <36.870396, 42.269470, 27.060635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681564, 42.416145, 27.039925>,  <36.366848, 42.660606, 27.005407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681564, 42.416145, 27.039925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608396, -0.744389, 0.275207,
		-0.103956, -0.269033, -0.957504,
		0.786795, -0.611152, 0.086294,
		36.917603, 42.232800, 27.065813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027321, 41.922779, 26.773653>,  <36.366848, 42.660606, 27.005407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027321, 41.922779, 26.773653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378571, 41.831867, 26.942051>,  <36.589321, 41.777321, 27.043089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.378571, 41.831867, 26.942051>,  <36.027321, 41.922779, 26.773653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378571, 41.831867, 26.942051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418915, -0.790303, 0.447136,
		0.231090, -0.569004, -0.789198,
		0.878128, -0.227278, 0.420995,
		36.642010, 41.763683, 27.068350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113522, 41.254925, 26.740330>,  <36.027321, 41.922779, 26.773653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113522, 41.254925, 26.740330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387287, 41.322536, 27.024023>,  <36.551544, 41.363106, 27.194239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387287, 41.322536, 27.024023>,  <36.113522, 41.254925, 26.740330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387287, 41.322536, 27.024023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242262, -0.864761, 0.439884,
		0.687670, -0.472882, -0.550902,
		0.684412, 0.169032, 0.709231,
		36.592609, 41.373245, 27.236792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519165, 40.693935, 26.786119>,  <36.113522, 41.254925, 26.740330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519165, 40.693935, 26.786119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.546741, 40.871750, 27.143360>,  <36.563286, 40.978439, 27.357704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.546741, 40.871750, 27.143360>,  <36.519165, 40.693935, 26.786119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546741, 40.871750, 27.143360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163958, -0.878012, 0.449681,
		0.984055, -0.177433, 0.012355,
		0.068940, 0.444536, 0.893104,
		36.567425, 41.005112, 27.411291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985207, 40.257908, 27.310669>,  <36.519165, 40.693935, 26.786119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985207, 40.257908, 27.310669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753090, 40.487888, 27.541386>,  <36.613819, 40.625877, 27.679815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753090, 40.487888, 27.541386>,  <36.985207, 40.257908, 27.310669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753090, 40.487888, 27.541386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144837, -0.769801, 0.621633,
		0.801427, 0.277187, 0.529984,
		-0.580291, 0.574955, 0.576792,
		36.579002, 40.660374, 27.714424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236111, 40.128418, 27.950138>,  <36.985207, 40.257908, 27.310669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236111, 40.128418, 27.950138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871956, 40.284145, 28.006166>,  <36.653461, 40.377583, 28.039783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.871956, 40.284145, 28.006166>,  <37.236111, 40.128418, 27.950138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871956, 40.284145, 28.006166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215710, -0.735500, 0.642269,
		0.353068, 0.554501, 0.753572,
		-0.910391, 0.389318, 0.140070,
		36.598839, 40.400940, 28.048187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227539, 40.012970, 28.647055>,  <37.236111, 40.128418, 27.950138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227539, 40.012970, 28.647055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844521, 40.060352, 28.541929>,  <36.614708, 40.088783, 28.478853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.844521, 40.060352, 28.541929>,  <37.227539, 40.012970, 28.647055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844521, 40.060352, 28.541929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255418, -0.771312, 0.582957,
		-0.133657, 0.625337, 0.768824,
		-0.957548, 0.118455, -0.262813,
		36.557255, 40.095890, 28.463085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823689, 40.123173, 29.192308>,  <37.227539, 40.012970, 28.647055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823689, 40.123173, 29.192308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572102, 39.985443, 28.913500>,  <36.421150, 39.902805, 28.746214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.572102, 39.985443, 28.913500>,  <36.823689, 40.123173, 29.192308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572102, 39.985443, 28.913500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305699, -0.714809, 0.628965,
		-0.714809, 0.608676, 0.344329,
		-0.628965, -0.344329, -0.697023,
		36.383411, 39.882145, 28.704393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097637, 40.178623, 29.497578>,  <36.823689, 40.123173, 29.192308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097637, 40.178623, 29.497578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113876, 39.911636, 29.200165>,  <36.123619, 39.751446, 29.021717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.113876, 39.911636, 29.200165>,  <36.097637, 40.178623, 29.497578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113876, 39.911636, 29.200165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288171, -0.720346, 0.630920,
		-0.956718, 0.188648, -0.221591,
		0.040600, -0.667468, -0.743531,
		36.126057, 39.711395, 28.977106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548424, 39.762688, 29.734850>,  <36.097637, 40.178623, 29.497578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548424, 39.762688, 29.734850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713848, 39.550972, 29.438522>,  <35.813103, 39.423943, 29.260725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713848, 39.550972, 29.438522>,  <35.548424, 39.762688, 29.734850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713848, 39.550972, 29.438522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371999, -0.840881, 0.393111,
		-0.831008, 0.113003, -0.544662,
		0.413573, -0.529291, -0.740816,
		35.837917, 39.392185, 29.216276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963192, 39.492405, 29.364779>,  <35.548424, 39.762688, 29.734850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963192, 39.492405, 29.364779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.292862, 39.274193, 29.303930>,  <35.490662, 39.143265, 29.267422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.292862, 39.274193, 29.303930>,  <34.963192, 39.492405, 29.364779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292862, 39.274193, 29.303930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392534, -0.743865, 0.540909,
		-0.408236, -0.386091, -0.827211,
		0.824173, -0.545527, -0.152119,
		35.540115, 39.110535, 29.258295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748631, 38.773857, 28.992085>,  <34.963192, 39.492405, 29.364779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748631, 38.773857, 28.992085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.102352, 38.707664, 29.166725>,  <35.314587, 38.667950, 29.271509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.102352, 38.707664, 29.166725>,  <34.748631, 38.773857, 28.992085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102352, 38.707664, 29.166725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374669, -0.809485, 0.452059,
		0.278618, -0.563339, -0.777831,
		0.884305, -0.165477, 0.436603,
		35.367645, 38.658020, 29.297707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896423, 38.077770, 28.847492>,  <34.748631, 38.773857, 28.992085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896423, 38.077770, 28.847492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145687, 38.154369, 29.150808>,  <35.295246, 38.200329, 29.332798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.145687, 38.154369, 29.150808>,  <34.896423, 38.077770, 28.847492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145687, 38.154369, 29.150808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279674, -0.850889, 0.444713,
		0.730380, -0.489201, -0.476684,
		0.623159, 0.191493, 0.758289,
		35.332634, 38.211819, 29.378296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239735, 37.463596, 28.971176>,  <34.896423, 38.077770, 28.847492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239735, 37.463596, 28.971176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288078, 37.671749, 29.309311>,  <35.317085, 37.796642, 29.512192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288078, 37.671749, 29.309311>,  <35.239735, 37.463596, 28.971176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288078, 37.671749, 29.309311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381287, -0.761920, 0.523544,
		0.916522, -0.385593, 0.106327,
		0.120862, 0.520381, 0.845338,
		35.324337, 37.827862, 29.562912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913033, 36.931786, 28.726084>,  <35.239735, 37.463596, 28.971176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913033, 36.931786, 28.726084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836838, 36.742046, 28.382292>,  <35.791119, 36.628204, 28.176016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836838, 36.742046, 28.382292>,  <35.913033, 36.931786, 28.726084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836838, 36.742046, 28.382292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219837, 0.832666, -0.508270,
		0.956758, -0.285765, -0.054335,
		-0.190489, -0.474347, -0.859482,
		35.779690, 36.599743, 28.124447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510006, 36.981934, 28.209238>,  <35.913033, 36.931786, 28.726084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510006, 36.981934, 28.209238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191010, 36.901726, 27.981625>,  <35.999611, 36.853603, 27.845057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191010, 36.901726, 27.981625>,  <36.510006, 36.981934, 28.209238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191010, 36.901726, 27.981625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304164, 0.680909, -0.666219,
		0.521049, -0.704384, -0.482028,
		-0.797491, -0.200517, -0.569035,
		35.951763, 36.841572, 27.810915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769142, 37.050476, 27.473814>,  <36.510006, 36.981934, 28.209238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769142, 37.050476, 27.473814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.371124, 37.043865, 27.434612>,  <36.132313, 37.039898, 27.411091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.371124, 37.043865, 27.434612>,  <36.769142, 37.050476, 27.473814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371124, 37.043865, 27.434612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059590, 0.689959, -0.721391,
		0.079540, -0.723659, -0.685558,
		-0.995049, -0.016528, -0.098002,
		36.072609, 37.038906, 27.405212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647785, 36.855019, 26.732649>,  <36.769142, 37.050476, 27.473814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647785, 36.855019, 26.732649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338787, 37.065674, 26.874578>,  <36.153389, 37.192066, 26.959736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.338787, 37.065674, 26.874578>,  <36.647785, 36.855019, 26.732649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338787, 37.065674, 26.874578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110623, 0.661819, -0.741457,
		-0.625313, -0.533519, -0.569510,
		-0.772494, 0.526643, 0.354824,
		36.107040, 37.223667, 26.981026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298641, 36.989006, 26.198420>,  <36.647785, 36.855019, 26.732649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298641, 36.989006, 26.198420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147160, 37.272793, 26.436155>,  <36.056271, 37.443066, 26.578796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147160, 37.272793, 26.436155>,  <36.298641, 36.989006, 26.198420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147160, 37.272793, 26.436155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239879, 0.695465, -0.677338,
		-0.893891, -0.113942, -0.433562,
		-0.378704, 0.709469, 0.594337,
		36.033546, 37.485634, 26.614456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813927, 37.374065, 25.842388>,  <36.298641, 36.989006, 26.198420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813927, 37.374065, 25.842388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.906460, 37.631741, 26.134005>,  <35.961979, 37.786346, 26.308975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.906460, 37.631741, 26.134005>,  <35.813927, 37.374065, 25.842388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906460, 37.631741, 26.134005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147277, 0.717545, -0.680763,
		-0.961662, 0.264855, 0.071118,
		0.231334, 0.644190, 0.729043,
		35.975861, 37.824997, 26.352718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507805, 37.980408, 25.579456>,  <35.813927, 37.374065, 25.842388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507805, 37.980408, 25.579456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749687, 38.101021, 25.874321>,  <35.894817, 38.173389, 26.051241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749687, 38.101021, 25.874321>,  <35.507805, 37.980408, 25.579456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749687, 38.101021, 25.874321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251281, 0.806059, -0.535842,
		-0.755769, 0.509263, 0.411661,
		0.604707, 0.301530, 0.737163,
		35.931099, 38.191479, 26.095470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338890, 38.726330, 25.623236>,  <35.507805, 37.980408, 25.579456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338890, 38.726330, 25.623236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.712402, 38.661251, 25.750721>,  <35.936512, 38.622204, 25.827211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.712402, 38.661251, 25.750721>,  <35.338890, 38.726330, 25.623236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712402, 38.661251, 25.750721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314132, 0.799250, -0.512367,
		-0.171373, 0.578558, 0.797434,
		0.933784, -0.162694, 0.318713,
		35.992538, 38.612442, 25.846334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682846, 39.406265, 25.867567>,  <35.338890, 38.726330, 25.623236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682846, 39.406265, 25.867567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001255, 39.170433, 25.812792>,  <36.192299, 39.028934, 25.779926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001255, 39.170433, 25.812792>,  <35.682846, 39.406265, 25.867567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001255, 39.170433, 25.812792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475574, 0.749183, -0.461036,
		0.374408, 0.301870, 0.876752,
		0.796020, -0.589576, -0.136939,
		36.240063, 38.993561, 25.771709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082363, 39.809341, 25.776562>,  <35.682846, 39.406265, 25.867567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082363, 39.809341, 25.776562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307785, 39.500462, 25.659182>,  <36.443039, 39.315132, 25.588753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307785, 39.500462, 25.659182>,  <36.082363, 39.809341, 25.776562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307785, 39.500462, 25.659182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666662, 0.634908, -0.390453,
		0.487824, 0.024407, 0.872601,
		0.563551, -0.772202, -0.293452,
		36.476849, 39.268803, 25.571146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777252, 39.873550, 26.112020>,  <36.082363, 39.809341, 25.776562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777252, 39.873550, 26.112020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809959, 39.635361, 25.792339>,  <36.829582, 39.492447, 25.600531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809959, 39.635361, 25.792339>,  <36.777252, 39.873550, 26.112020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809959, 39.635361, 25.792339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755969, 0.559615, -0.339619,
		0.649480, -0.576401, 0.495921,
		0.081769, -0.595477, -0.799200,
		36.834492, 39.456718, 25.552580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505474, 39.767284, 26.049227>,  <36.777252, 39.873550, 26.112020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505474, 39.767284, 26.049227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354317, 39.692577, 25.686501>,  <37.263622, 39.647751, 25.468864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.354317, 39.692577, 25.686501>,  <37.505474, 39.767284, 26.049227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354317, 39.692577, 25.686501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752245, 0.509051, -0.418324,
		0.539747, -0.840228, -0.051868,
		-0.377891, -0.186772, -0.906816,
		37.240948, 39.636547, 25.414455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046291, 39.513599, 25.593500>,  <37.505474, 39.767284, 26.049227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046291, 39.513599, 25.593500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.771431, 39.699669, 25.370274>,  <37.606514, 39.811310, 25.236338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.771431, 39.699669, 25.370274>,  <38.046291, 39.513599, 25.593500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771431, 39.699669, 25.370274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713430, 0.577172, -0.397354,
		0.137263, -0.671183, -0.728472,
		-0.687151, 0.465172, -0.558067,
		37.565285, 39.839222, 25.202854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322292, 39.534084, 24.849281>,  <38.046291, 39.513599, 25.593500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322292, 39.534084, 24.849281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039764, 39.814888, 24.885721>,  <37.870247, 39.983368, 24.907585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039764, 39.814888, 24.885721>,  <38.322292, 39.534084, 24.849281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039764, 39.814888, 24.885721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564578, 0.636277, -0.525741,
		-0.427039, -0.319908, -0.845752,
		-0.706321, 0.702005, 0.091102,
		37.827869, 40.025490, 24.913052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211384, 39.087227, 24.167749>,  <38.322292, 39.534084, 24.849281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211384, 39.087227, 24.167749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407635, 38.825500, 23.937565>,  <38.525383, 38.668465, 23.799454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407635, 38.825500, 23.937565>,  <38.211384, 39.087227, 24.167749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407635, 38.825500, 23.937565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695675, -0.691808, 0.193488,
		-0.524712, 0.305405, -0.794610,
		0.490626, -0.654316, -0.575463,
		38.554821, 38.629208, 23.764927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681915, 38.661808, 24.012638>,  <38.211384, 39.087227, 24.167749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681915, 38.661808, 24.012638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037266, 38.488552, 23.951754>,  <38.250477, 38.384598, 23.915224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.037266, 38.488552, 23.951754>,  <37.681915, 38.661808, 24.012638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037266, 38.488552, 23.951754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329031, -0.831884, 0.446887,
		-0.320187, -0.346924, -0.881546,
		0.888380, -0.433144, -0.152210,
		38.303780, 38.358608, 23.906090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586285, 38.000450, 23.742256>,  <37.681915, 38.661808, 24.012638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586285, 38.000450, 23.742256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.954205, 37.961685, 23.894346>,  <38.174957, 37.938427, 23.985600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.954205, 37.961685, 23.894346>,  <37.586285, 38.000450, 23.742256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954205, 37.961685, 23.894346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200546, -0.949000, 0.243269,
		0.337259, -0.300012, -0.892328,
		0.919803, -0.096908, 0.380225,
		38.230145, 37.932613, 24.008413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891090, 37.373848, 23.455542>,  <37.586285, 38.000450, 23.742256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891090, 37.373848, 23.455542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114719, 37.468765, 23.773315>,  <38.248898, 37.525715, 23.963980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114719, 37.468765, 23.773315>,  <37.891090, 37.373848, 23.455542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114719, 37.468765, 23.773315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149148, -0.913756, 0.377896,
		0.815591, -0.329761, -0.475467,
		0.559076, 0.237294, 0.794434,
		38.282444, 37.539955, 24.011646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210007, 36.790234, 23.629894>,  <37.891090, 37.373848, 23.455542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210007, 36.790234, 23.629894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243633, 36.997314, 23.970461>,  <38.263809, 37.121563, 24.174801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243633, 36.997314, 23.970461>,  <38.210007, 36.790234, 23.629894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243633, 36.997314, 23.970461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048530, -0.851302, 0.522426,
		0.995277, -0.085239, -0.046443,
		0.084068, 0.517705, 0.851419,
		38.268852, 37.152626, 24.225887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667027, 36.411854, 24.034300>,  <38.210007, 36.790234, 23.629894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667027, 36.411854, 24.034300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.487389, 36.633549, 24.314625>,  <38.379604, 36.766563, 24.482819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.487389, 36.633549, 24.314625>,  <38.667027, 36.411854, 24.034300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487389, 36.633549, 24.314625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062915, -0.802029, 0.593963,
		0.891265, 0.222656, 0.395059,
		-0.449098, 0.554233, 0.700812,
		38.352661, 36.799820, 24.524868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969315, 36.225323, 24.561993>,  <38.667027, 36.411854, 24.034300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969315, 36.225323, 24.561993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626640, 36.363483, 24.715246>,  <38.421036, 36.446381, 24.807199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626640, 36.363483, 24.715246>,  <38.969315, 36.225323, 24.561993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626640, 36.363483, 24.715246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040412, -0.785388, 0.617683,
		0.514260, 0.513675, 0.686786,
		-0.856682, 0.345404, 0.383135,
		38.369637, 36.467106, 24.830187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994621, 36.031326, 25.180223>,  <38.969315, 36.225323, 24.561993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994621, 36.031326, 25.180223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604980, 36.094452, 25.115448>,  <38.371197, 36.132328, 25.076584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604980, 36.094452, 25.115448>,  <38.994621, 36.031326, 25.180223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604980, 36.094452, 25.115448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225170, -0.742410, 0.630972,
		-0.020650, 0.651093, 0.758717,
		-0.974101, 0.157811, -0.161937,
		38.312752, 36.141796, 25.066866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755444, 36.134472, 25.802813>,  <38.994621, 36.031326, 25.180223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755444, 36.134472, 25.802813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.447060, 36.001194, 25.585701>,  <38.262032, 35.921227, 25.455435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.447060, 36.001194, 25.585701>,  <38.755444, 36.134472, 25.802813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447060, 36.001194, 25.585701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150105, -0.733166, 0.663276,
		-0.618947, 0.592830, 0.515225,
		-0.770956, -0.333195, -0.542778,
		38.215775, 35.901234, 25.422867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202217, 36.261200, 26.186724>,  <38.755444, 36.134472, 25.802813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202217, 36.261200, 26.186724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.162788, 35.949158, 25.939592>,  <38.139130, 35.761932, 25.791313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.162788, 35.949158, 25.939592>,  <38.202217, 36.261200, 26.186724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162788, 35.949158, 25.939592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132489, -0.605037, 0.785096,
		-0.986271, 0.159245, -0.043716,
		-0.098573, -0.780110, -0.617829,
		38.133217, 35.715126, 25.754244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873695, 35.809631, 26.581656>,  <38.202217, 36.261200, 26.186724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873695, 35.809631, 26.581656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935493, 35.567009, 26.269703>,  <37.972572, 35.421436, 26.082531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.935493, 35.567009, 26.269703>,  <37.873695, 35.809631, 26.581656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935493, 35.567009, 26.269703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052050, -0.783268, 0.619502,
		-0.986621, -0.136303, -0.089440,
		0.154495, -0.606558, -0.779883,
		37.981842, 35.385040, 26.035738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412766, 35.215767, 26.663496>,  <37.873695, 35.809631, 26.581656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412766, 35.215767, 26.663496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.702400, 35.082821, 26.421759>,  <37.876183, 35.003052, 26.276716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.702400, 35.082821, 26.421759>,  <37.412766, 35.215767, 26.663496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702400, 35.082821, 26.421759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009073, -0.880744, 0.473506,
		-0.689648, -0.337377, -0.640752,
		0.724088, -0.332365, -0.604342,
		37.919628, 34.983112, 26.240456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286243, 34.471451, 26.405489>,  <37.412766, 35.215767, 26.663496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286243, 34.471451, 26.405489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681881, 34.493900, 26.351023>,  <37.919262, 34.507370, 26.318342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681881, 34.493900, 26.351023>,  <37.286243, 34.471451, 26.405489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681881, 34.493900, 26.351023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110244, -0.895207, 0.431800,
		-0.097661, -0.442103, -0.891632,
		0.989095, 0.056127, -0.136166,
		37.978611, 34.510738, 26.310173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447014, 33.830879, 26.234789>,  <37.286243, 34.471451, 26.405489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447014, 33.830879, 26.234789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780590, 33.995686, 26.381641>,  <37.980736, 34.094570, 26.469753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780590, 33.995686, 26.381641>,  <37.447014, 33.830879, 26.234789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780590, 33.995686, 26.381641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055210, -0.724221, 0.687354,
		0.549086, -0.552943, -0.626705,
		0.833941, 0.412017, 0.367131,
		38.030773, 34.119289, 26.491781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.996166, 37.252880, 24.981390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.727711, 37.415977, 25.229042>,  <41.566639, 37.513836, 25.377632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.727711, 37.415977, 25.229042>,  <41.996166, 37.252880, 24.981390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727711, 37.415977, 25.229042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446856, 0.443876, -0.776720,
		-0.591522, -0.797945, -0.115696,
		-0.671135, 0.407747, 0.619129,
		41.526371, 37.538303, 25.414780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256313, 37.189297, 24.785311>,  <41.996166, 37.252880, 24.981390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256313, 37.189297, 24.785311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262653, 37.513657, 25.019300>,  <41.266457, 37.708271, 25.159695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262653, 37.513657, 25.019300>,  <41.256313, 37.189297, 24.785311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262653, 37.513657, 25.019300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466608, 0.523435, -0.712946,
		-0.884322, -0.261655, 0.386666,
		0.015849, 0.810896, 0.584975,
		41.267406, 37.756924, 25.194794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605854, 37.497383, 24.765745>,  <41.256313, 37.189297, 24.785311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605854, 37.497383, 24.765745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.868088, 37.785324, 24.856983>,  <41.025429, 37.958088, 24.911726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.868088, 37.785324, 24.856983>,  <40.605854, 37.497383, 24.765745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868088, 37.785324, 24.856983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364068, 0.565949, -0.739700,
		-0.661566, 0.401890, 0.633100,
		0.655580, 0.719851, 0.228097,
		41.064762, 38.001278, 24.925413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237774, 38.065468, 24.849176>,  <40.605854, 37.497383, 24.765745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237774, 38.065468, 24.849176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599922, 38.213482, 24.765865>,  <40.817211, 38.302292, 24.715878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599922, 38.213482, 24.765865>,  <40.237774, 38.065468, 24.849176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599922, 38.213482, 24.765865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411076, 0.640887, -0.648290,
		-0.106406, 0.672561, 0.732352,
		0.905370, 0.370034, -0.208280,
		40.871532, 38.324493, 24.703381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107159, 38.815681, 24.714779>,  <40.237774, 38.065468, 24.849176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107159, 38.815681, 24.714779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470051, 38.740067, 24.564470>,  <40.687786, 38.694698, 24.474285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470051, 38.740067, 24.564470>,  <40.107159, 38.815681, 24.714779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470051, 38.740067, 24.564470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074901, 0.806456, -0.586531,
		0.413917, 0.560264, 0.717480,
		0.907228, -0.189035, -0.375770,
		40.742218, 38.683357, 24.451740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484818, 39.410938, 24.807522>,  <40.107159, 38.815681, 24.714779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484818, 39.410938, 24.807522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.632271, 39.221310, 24.487682>,  <40.720745, 39.107533, 24.295778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.632271, 39.221310, 24.487682>,  <40.484818, 39.410938, 24.807522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632271, 39.221310, 24.487682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083629, 0.839777, -0.536452,
		0.925805, 0.264625, 0.269925,
		0.368636, -0.474076, -0.799600,
		40.742863, 39.079086, 24.247803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083447, 39.822742, 24.723845>,  <40.484818, 39.410938, 24.807522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083447, 39.822742, 24.723845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118195, 39.621544, 24.379879>,  <41.139042, 39.500824, 24.173500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118195, 39.621544, 24.379879>,  <41.083447, 39.822742, 24.723845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118195, 39.621544, 24.379879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381840, 0.814065, -0.437602,
		0.920137, -0.290334, 0.262782,
		0.086871, -0.502994, -0.859913,
		41.144257, 39.470646, 24.121904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833767, 39.843681, 24.526066>,  <41.083447, 39.822742, 24.723845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833767, 39.843681, 24.526066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.628044, 39.763851, 24.192442>,  <41.504608, 39.715954, 23.992268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.628044, 39.763851, 24.192442>,  <41.833767, 39.843681, 24.526066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628044, 39.763851, 24.192442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469284, 0.748528, -0.468484,
		0.717813, -0.632358, -0.291320,
		-0.514311, -0.199573, -0.834059,
		41.473751, 39.703979, 23.942225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349438, 39.759251, 24.013981>,  <41.833767, 39.843681, 24.526066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349438, 39.759251, 24.013981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.012123, 39.856251, 23.822124>,  <41.809734, 39.914452, 23.707010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.012123, 39.856251, 23.822124>,  <42.349438, 39.759251, 24.013981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012123, 39.856251, 23.822124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520783, 0.589269, -0.617694,
		0.132843, -0.770684, -0.623217,
		-0.843289, 0.242504, -0.479640,
		41.759136, 39.929001, 23.678232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610210, 39.761059, 23.283081>,  <42.349438, 39.759251, 24.013981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610210, 39.761059, 23.283081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258839, 39.951996, 23.292044>,  <42.048016, 40.066559, 23.297422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.258839, 39.951996, 23.292044>,  <42.610210, 39.761059, 23.283081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258839, 39.951996, 23.292044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388528, 0.740716, -0.548074,
		-0.278218, -0.472740, -0.836130,
		-0.878431, 0.477344, 0.022407,
		41.995308, 40.095200, 23.298765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421490, 39.956902, 22.578957>,  <42.610210, 39.761059, 23.283081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421490, 39.956902, 22.578957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210342, 40.204075, 22.812031>,  <42.083656, 40.352379, 22.951876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210342, 40.204075, 22.812031>,  <42.421490, 39.956902, 22.578957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210342, 40.204075, 22.812031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229792, 0.764373, -0.602436,
		-0.817651, -0.184109, -0.545483,
		-0.527866, 0.617930, 0.582683,
		42.051983, 40.389454, 22.986835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066292, 40.404068, 22.128267>,  <42.421490, 39.956902, 22.578957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066292, 40.404068, 22.128267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.093697, 40.608944, 22.470720>,  <42.110142, 40.731869, 22.676193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.093697, 40.608944, 22.470720>,  <42.066292, 40.404068, 22.128267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093697, 40.608944, 22.470720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303281, 0.806844, -0.506975,
		-0.950435, 0.294384, -0.100057,
		0.068515, 0.512192, 0.856134,
		42.114250, 40.762600, 22.727560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683178, 41.084606, 22.132187>,  <42.066292, 40.404068, 22.128267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683178, 41.084606, 22.132187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.989697, 41.109726, 22.387953>,  <42.173607, 41.124798, 22.541412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.989697, 41.109726, 22.387953>,  <41.683178, 41.084606, 22.132187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989697, 41.109726, 22.387953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305188, 0.840192, -0.448261,
		-0.565378, 0.538642, 0.624670,
		0.766295, 0.062795, 0.639413,
		42.219585, 41.128563, 22.579777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731087, 41.674183, 21.558825>,  <41.683178, 41.084606, 22.132187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731087, 41.674183, 21.558825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.785435, 41.531769, 21.189007>,  <41.818043, 41.446320, 20.967115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.785435, 41.531769, 21.189007>,  <41.731087, 41.674183, 21.558825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785435, 41.531769, 21.189007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590731, 0.720049, -0.364097,
		0.795346, 0.595627, -0.112484,
		0.135872, -0.356031, -0.924544,
		41.826195, 41.424961, 20.911644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852928, 42.317734, 21.262386>,  <41.731087, 41.674183, 21.558825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852928, 42.317734, 21.262386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.532440, 42.473164, 21.080368>,  <41.340149, 42.566422, 20.971157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.532440, 42.473164, 21.080368>,  <41.852928, 42.317734, 21.262386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532440, 42.473164, 21.080368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584178, -0.672619, 0.454224,
		-0.129573, 0.629758, 0.765908,
		-0.801216, 0.388572, -0.455044,
		41.292076, 42.589737, 20.943855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278469, 42.235817, 21.726713>,  <41.852928, 42.317734, 21.262386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278469, 42.235817, 21.726713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.066170, 42.333160, 21.401976>,  <40.938789, 42.391567, 21.207134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.066170, 42.333160, 21.401976>,  <41.278469, 42.235817, 21.726713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066170, 42.333160, 21.401976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751506, -0.578005, 0.318041,
		-0.391852, 0.778903, 0.489656,
		-0.530746, 0.243354, -0.811842,
		40.906944, 42.406166, 21.158422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546455, 42.349861, 21.904427>,  <41.278469, 42.235817, 21.726713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546455, 42.349861, 21.904427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.534145, 42.256062, 21.515776>,  <40.526760, 42.199783, 21.282585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.534145, 42.256062, 21.515776>,  <40.546455, 42.349861, 21.904427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534145, 42.256062, 21.515776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697334, -0.691392, 0.188951,
		-0.716085, 0.683366, -0.142244,
		-0.030776, -0.234497, -0.971630,
		40.524914, 42.185711, 21.224287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893551, 42.296345, 21.839722>,  <40.546455, 42.349861, 21.904427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893551, 42.296345, 21.839722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.013817, 42.088654, 21.519720>,  <40.085976, 41.964039, 21.327719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.013817, 42.088654, 21.519720>,  <39.893551, 42.296345, 21.839722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013817, 42.088654, 21.519720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730203, -0.664919, 0.157121,
		-0.613519, 0.536923, -0.579058,
		0.300665, -0.519227, -0.800003,
		40.104015, 41.932884, 21.279718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277729, 41.931156, 21.625071>,  <39.893551, 42.296345, 21.839722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277729, 41.931156, 21.625071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.594997, 41.736553, 21.478539>,  <39.785358, 41.619793, 21.390619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.594997, 41.736553, 21.478539>,  <39.277729, 41.931156, 21.625071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594997, 41.736553, 21.478539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481886, -0.869181, 0.110951,
		-0.372385, 0.088526, -0.923847,
		0.793168, -0.486505, -0.366329,
		39.832947, 41.590603, 21.368639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982937, 41.340126, 21.415571>,  <39.277729, 41.931156, 21.625071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982937, 41.340126, 21.415571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371338, 41.245190, 21.404051>,  <39.604378, 41.188229, 21.397139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371338, 41.245190, 21.404051>,  <38.982937, 41.340126, 21.415571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371338, 41.245190, 21.404051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222336, -0.940696, 0.256238,
		-0.087909, -0.242403, -0.966185,
		0.970999, -0.237343, -0.028800,
		39.662636, 41.173988, 21.395411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938263, 40.711525, 21.082361>,  <38.982937, 41.340126, 21.415571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938263, 40.711525, 21.082361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290920, 40.706226, 21.271057>,  <39.502514, 40.703049, 21.384275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290920, 40.706226, 21.271057>,  <38.938263, 40.711525, 21.082361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290920, 40.706226, 21.271057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219348, -0.896573, 0.384764,
		0.417852, -0.442698, -0.793359,
		0.881638, -0.013247, 0.471739,
		39.555412, 40.702251, 21.412579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220554, 40.030380, 21.020718>,  <38.938263, 40.711525, 21.082361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220554, 40.030380, 21.020718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386211, 40.189690, 21.348097>,  <39.485607, 40.285275, 21.544525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.386211, 40.189690, 21.348097>,  <39.220554, 40.030380, 21.020718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386211, 40.189690, 21.348097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175124, -0.847520, 0.501040,
		0.893204, -0.350834, -0.281249,
		0.414147, 0.398278, 0.818448,
		39.510456, 40.309174, 21.593632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717037, 39.513256, 21.321138>,  <39.220554, 40.030380, 21.020718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717037, 39.513256, 21.321138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610237, 39.759815, 21.617455>,  <39.546158, 39.907749, 21.795244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.610237, 39.759815, 21.617455>,  <39.717037, 39.513256, 21.321138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610237, 39.759815, 21.617455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073358, -0.779466, 0.622135,
		0.960900, 0.111768, 0.253336,
		-0.267002, 0.616393, 0.740790,
		39.530136, 39.944733, 21.839691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129166, 39.358387, 21.982458>,  <39.717037, 39.513256, 21.321138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129166, 39.358387, 21.982458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.799614, 39.550800, 22.102341>,  <39.601883, 39.666248, 22.174271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.799614, 39.550800, 22.102341>,  <40.129166, 39.358387, 21.982458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799614, 39.550800, 22.102341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148185, -0.693242, 0.705306,
		0.547046, 0.536677, 0.642432,
		-0.823882, 0.481034, 0.299708,
		39.552448, 39.695110, 22.192253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170357, 39.270931, 22.625574>,  <40.129166, 39.358387, 21.982458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170357, 39.270931, 22.625574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.788094, 39.382736, 22.588491>,  <39.558735, 39.449818, 22.566242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.788094, 39.382736, 22.588491>,  <40.170357, 39.270931, 22.625574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788094, 39.382736, 22.588491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263227, -0.669641, 0.694473,
		0.132034, 0.688080, 0.713521,
		-0.955656, 0.279512, -0.092706,
		39.501396, 39.466591, 22.560680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944736, 39.491322, 23.353596>,  <40.170357, 39.270931, 22.625574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944736, 39.491322, 23.353596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.622875, 39.396713, 23.135757>,  <39.429756, 39.339947, 23.005054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.622875, 39.396713, 23.135757>,  <39.944736, 39.491322, 23.353596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622875, 39.396713, 23.135757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357081, -0.540030, 0.762142,
		-0.474362, 0.807727, 0.350081,
		-0.804657, -0.236524, -0.544594,
		39.381477, 39.325756, 22.972380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527332, 39.301788, 23.888414>,  <39.944736, 39.491322, 23.353596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527332, 39.301788, 23.888414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314957, 39.190800, 23.568136>,  <39.187531, 39.124207, 23.375969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.314957, 39.190800, 23.568136>,  <39.527332, 39.301788, 23.888414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314957, 39.190800, 23.568136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543715, -0.613193, 0.573034,
		-0.649984, 0.739595, 0.174699,
		-0.530937, -0.277476, -0.800695,
		39.155674, 39.107555, 23.327929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865700, 39.377728, 24.118464>,  <39.527332, 39.301788, 23.888414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865700, 39.377728, 24.118464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882740, 39.092438, 23.838608>,  <38.892963, 38.921265, 23.670694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.882740, 39.092438, 23.838608>,  <38.865700, 39.377728, 24.118464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882740, 39.092438, 23.838608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751716, -0.484160, 0.447786,
		-0.658110, 0.506852, -0.556770,
		0.042605, -0.713225, -0.699639,
		38.895523, 38.878471, 23.628716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318054, 39.924206, 24.079058>,  <38.865700, 39.377728, 24.118464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318054, 39.924206, 24.079058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.124390, 40.172924, 24.325294>,  <38.008190, 40.322155, 24.473036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.124390, 40.172924, 24.325294>,  <38.318054, 39.924206, 24.079058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124390, 40.172924, 24.325294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605436, 0.746006, -0.277350,
		-0.631689, 0.238417, -0.737649,
		-0.484165, 0.621798, 0.615590,
		37.979141, 40.359463, 24.509972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024494, 40.618176, 23.655844>,  <38.318054, 39.924206, 24.079058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024494, 40.618176, 23.655844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016544, 40.724655, 24.041328>,  <38.011776, 40.788544, 24.272619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016544, 40.724655, 24.041328>,  <38.024494, 40.618176, 23.655844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016544, 40.724655, 24.041328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491812, 0.841822, -0.222389,
		-0.870475, 0.469546, -0.147649,
		-0.019872, 0.266200, 0.963713,
		38.010582, 40.804516, 24.330442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683578, 41.273930, 23.679783>,  <38.024494, 40.618176, 23.655844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683578, 41.273930, 23.679783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921902, 41.240883, 23.999329>,  <38.064896, 41.221054, 24.191055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921902, 41.240883, 23.999329>,  <37.683578, 41.273930, 23.679783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921902, 41.240883, 23.999329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487025, 0.828099, -0.277595,
		-0.638604, 0.554461, 0.533627,
		0.595812, -0.082617, 0.798864,
		38.100647, 41.216099, 24.238987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476284, 41.807014, 24.080942>,  <37.683578, 41.273930, 23.679783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476284, 41.807014, 24.080942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850903, 41.716347, 24.187899>,  <38.075672, 41.661945, 24.252073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850903, 41.716347, 24.187899>,  <37.476284, 41.807014, 24.080942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850903, 41.716347, 24.187899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292461, 0.925787, -0.239551,
		-0.193250, 0.302553, 0.933336,
		0.936547, -0.226671, 0.267394,
		38.131866, 41.648346, 24.268116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623852, 42.389015, 24.515318>,  <37.476284, 41.807014, 24.080942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623852, 42.389015, 24.515318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986828, 42.242023, 24.433821>,  <38.204613, 42.153828, 24.384922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.986828, 42.242023, 24.433821>,  <37.623852, 42.389015, 24.515318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986828, 42.242023, 24.433821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313118, 0.914757, -0.255297,
		0.280190, 0.167872, 0.945152,
		0.907442, -0.367475, -0.203742,
		38.259060, 42.131783, 24.372698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058575, 42.864285, 24.731428>,  <37.623852, 42.389015, 24.515318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058575, 42.864285, 24.731428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.294754, 42.676136, 24.469093>,  <38.436462, 42.563248, 24.311693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.294754, 42.676136, 24.469093>,  <38.058575, 42.864285, 24.731428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294754, 42.676136, 24.469093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333951, 0.882170, -0.332043,
		0.734743, -0.022963, 0.677957,
		0.590448, -0.470371, -0.655837,
		38.471889, 42.535027, 24.272343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578800, 43.330853, 24.651857>,  <38.058575, 42.864285, 24.731428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578800, 43.330853, 24.651857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632095, 43.083061, 24.342409>,  <38.664074, 42.934387, 24.156740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632095, 43.083061, 24.342409>,  <38.578800, 43.330853, 24.651857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632095, 43.083061, 24.342409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292412, 0.770404, -0.566545,
		0.946965, -0.150729, 0.283792,
		0.133240, -0.619482, -0.773621,
		38.672066, 42.897217, 24.110323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076660, 43.214722, 25.200697>,  <38.578800, 43.330853, 24.651857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076660, 43.214722, 25.200697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058750, 43.460358, 25.515884>,  <39.048004, 43.607738, 25.704996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058750, 43.460358, 25.515884>,  <39.076660, 43.214722, 25.200697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058750, 43.460358, 25.515884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541528, -0.677739, 0.497411,
		0.839490, -0.404436, 0.362890,
		-0.044774, 0.614086, 0.787968,
		39.045319, 43.644585, 25.752275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282288, 42.868584, 25.880247>,  <39.076660, 43.214722, 25.200697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282288, 42.868584, 25.880247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053547, 43.177902, 25.989794>,  <38.916302, 43.363495, 26.055521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.053547, 43.177902, 25.989794>,  <39.282288, 42.868584, 25.880247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053547, 43.177902, 25.989794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594014, -0.620565, 0.511906,
		0.565807, 0.130052, 0.814217,
		-0.571848, 0.773296, 0.273867,
		38.881992, 43.409889, 26.071955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191727, 42.775787, 26.623402>,  <39.282288, 42.868584, 25.880247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191727, 42.775787, 26.623402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901981, 43.026081, 26.507643>,  <38.728134, 43.176258, 26.438189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901981, 43.026081, 26.507643>,  <39.191727, 42.775787, 26.623402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901981, 43.026081, 26.507643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671444, -0.545083, 0.502043,
		0.156403, 0.557975, 0.814986,
		-0.724362, 0.625739, -0.289396,
		38.684673, 43.213802, 26.420824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792122, 42.925533, 27.231676>,  <39.191727, 42.775787, 26.623402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792122, 42.925533, 27.231676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.569824, 42.992626, 26.905973>,  <38.436447, 43.032883, 26.710552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.569824, 42.992626, 26.905973>,  <38.792122, 42.925533, 27.231676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569824, 42.992626, 26.905973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765992, -0.483981, 0.423105,
		-0.323114, 0.858852, 0.397455,
		-0.555746, 0.167736, -0.814255,
		38.403099, 43.042946, 26.661697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129528, 42.931190, 27.607450>,  <38.792122, 42.925533, 27.231676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129528, 42.931190, 27.607450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037853, 42.956932, 27.218950>,  <37.982849, 42.972378, 26.985849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037853, 42.956932, 27.218950>,  <38.129528, 42.931190, 27.607450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037853, 42.956932, 27.218950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910736, -0.366359, 0.190634,
		-0.343560, 0.928246, 0.142572,
		-0.229188, 0.064351, -0.971253,
		37.969097, 42.976238, 26.927574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556515, 43.265453, 27.538507>,  <38.129528, 42.931190, 27.607450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556515, 43.265453, 27.538507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587212, 43.011944, 27.230627>,  <37.605629, 42.859837, 27.045898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587212, 43.011944, 27.230627>,  <37.556515, 43.265453, 27.538507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587212, 43.011944, 27.230627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761655, -0.535443, 0.364942,
		-0.643422, 0.558241, -0.523808,
		0.076744, -0.633773, -0.769703,
		37.610233, 42.821812, 26.999716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905262, 43.074814, 27.481050>,  <37.556515, 43.265453, 27.538507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905262, 43.074814, 27.481050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118221, 42.786282, 27.303862>,  <37.245998, 42.613163, 27.197548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.118221, 42.786282, 27.303862>,  <36.905262, 43.074814, 27.481050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118221, 42.786282, 27.303862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723076, -0.659626, 0.205076,
		-0.440125, 0.211121, -0.872765,
		0.532402, -0.721334, -0.442974,
		37.277943, 42.569881, 27.170969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.437405, 42.818127, 25.668283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.446594, 42.500992, 25.424683>,  <42.452110, 42.310711, 25.278522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.446594, 42.500992, 25.424683>,  <42.437405, 42.818127, 25.668283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446594, 42.500992, 25.424683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445830, -0.553362, 0.703581,
		-0.894823, 0.255345, -0.366184,
		0.022976, -0.792836, -0.609001,
		42.453487, 42.263142, 25.241982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782047, 42.451263, 25.756929>,  <42.437405, 42.818127, 25.668283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782047, 42.451263, 25.756929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.053616, 42.194401, 25.614544>,  <42.216557, 42.040283, 25.529112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.053616, 42.194401, 25.614544>,  <41.782047, 42.451263, 25.756929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053616, 42.194401, 25.614544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234631, -0.649156, 0.723564,
		-0.695718, -0.407717, -0.591391,
		0.678915, -0.642155, -0.355967,
		42.257290, 42.001755, 25.507755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430893, 41.840904, 25.675985>,  <41.782047, 42.451263, 25.756929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430893, 41.840904, 25.675985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.810677, 41.719116, 25.706537>,  <42.038548, 41.646042, 25.724869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.810677, 41.719116, 25.706537>,  <41.430893, 41.840904, 25.675985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810677, 41.719116, 25.706537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272778, -0.679857, 0.680725,
		-0.155331, -0.667153, -0.728546,
		0.949455, -0.304469, 0.076382,
		42.095512, 41.627777, 25.729452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342678, 41.255550, 25.878471>,  <41.430893, 41.840904, 25.675985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342678, 41.255550, 25.878471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.730652, 41.300808, 25.964651>,  <41.963436, 41.327965, 26.016359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.730652, 41.300808, 25.964651>,  <41.342678, 41.255550, 25.878471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730652, 41.300808, 25.964651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119455, -0.549971, 0.826597,
		0.212020, -0.827484, -0.519921,
		0.969937, 0.113148, 0.215452,
		42.021633, 41.334751, 26.029287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562920, 40.605358, 26.073530>,  <41.342678, 41.255550, 25.878471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562920, 40.605358, 26.073530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.812950, 40.864304, 26.247976>,  <41.962967, 41.019672, 26.352644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.812950, 40.864304, 26.247976>,  <41.562920, 40.605358, 26.073530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812950, 40.864304, 26.247976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137526, -0.458641, 0.877915,
		0.768355, -0.608739, -0.197655,
		0.625074, 0.647368, 0.436117,
		42.000473, 41.058514, 26.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937138, 40.256123, 26.468475>,  <41.562920, 40.605358, 26.073530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937138, 40.256123, 26.468475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.973125, 40.618675, 26.633587>,  <41.994717, 40.836205, 26.732655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.973125, 40.618675, 26.633587>,  <41.937138, 40.256123, 26.468475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973125, 40.618675, 26.633587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236011, -0.383251, 0.892982,
		0.967577, -0.177759, 0.179435,
		0.089967, 0.906377, 0.412778,
		42.000114, 40.890587, 26.757420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225716, 40.078224, 27.048368>,  <41.937138, 40.256123, 26.468475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225716, 40.078224, 27.048368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.095760, 40.449791, 27.119427>,  <42.017788, 40.672729, 27.162062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.095760, 40.449791, 27.119427>,  <42.225716, 40.078224, 27.048368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095760, 40.449791, 27.119427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199454, -0.250909, 0.947239,
		0.924481, 0.272316, 0.266794,
		-0.324889, 0.928918, 0.177646,
		41.998295, 40.728466, 27.172720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428581, 40.109238, 27.789577>,  <42.225716, 40.078224, 27.048368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428581, 40.109238, 27.789577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.203136, 40.436134, 27.741463>,  <42.067871, 40.632271, 27.712595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.203136, 40.436134, 27.741463>,  <42.428581, 40.109238, 27.789577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203136, 40.436134, 27.741463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203816, 0.003533, 0.979003,
		0.800503, 0.576290, 0.164575,
		-0.563608, 0.817238, -0.120285,
		42.034054, 40.681305, 27.705378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637997, 40.583015, 28.350012>,  <42.428581, 40.109238, 27.789577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637997, 40.583015, 28.350012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.276901, 40.719475, 28.245188>,  <42.060242, 40.801350, 28.182293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.276901, 40.719475, 28.245188>,  <42.637997, 40.583015, 28.350012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276901, 40.719475, 28.245188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256431, 0.062375, 0.964548,
		0.345402, 0.937937, 0.031173,
		-0.902741, 0.341150, -0.262061,
		42.006081, 40.821819, 28.166569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551460, 41.123104, 28.862570>,  <42.637997, 40.583015, 28.350012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551460, 41.123104, 28.862570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.198692, 40.985573, 28.733574>,  <41.987030, 40.903053, 28.656178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.198692, 40.985573, 28.733574>,  <42.551460, 41.123104, 28.862570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198692, 40.985573, 28.733574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293131, -0.135763, 0.946384,
		-0.369173, 0.929168, 0.018946,
		-0.881922, -0.343825, -0.322488,
		41.934116, 40.882423, 28.636827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119869, 41.444714, 29.262552>,  <42.551460, 41.123104, 28.862570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119869, 41.444714, 29.262552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.909615, 41.136379, 29.118595>,  <41.783463, 40.951378, 29.032221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.909615, 41.136379, 29.118595>,  <42.119869, 41.444714, 29.262552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909615, 41.136379, 29.118595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281002, -0.241981, 0.928700,
		-0.802958, 0.589291, -0.089410,
		-0.525639, -0.770831, -0.359892,
		41.751923, 40.905128, 29.010628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463890, 41.532013, 29.572512>,  <42.119869, 41.444714, 29.262552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463890, 41.532013, 29.572512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.459293, 41.146847, 29.464691>,  <41.456535, 40.915745, 29.400000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.459293, 41.146847, 29.464691>,  <41.463890, 41.532013, 29.572512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459293, 41.146847, 29.464691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335174, -0.250262, 0.908310,
		-0.942086, 0.100788, -0.319868,
		-0.011496, -0.962918, -0.269550,
		41.455845, 40.857971, 29.383825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779209, 41.694443, 29.356323>,  <41.463890, 41.532013, 29.572512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779209, 41.694443, 29.356323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.665760, 41.980659, 29.611683>,  <40.597691, 42.152390, 29.764898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.665760, 41.980659, 29.611683>,  <40.779209, 41.694443, 29.356323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665760, 41.980659, 29.611683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567182, 0.661978, -0.489990,
		-0.773216, 0.223116, -0.593596,
		-0.283623, 0.715545, 0.638399,
		40.580673, 42.195324, 29.803204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496941, 42.170757, 28.885195>,  <40.779209, 41.694443, 29.356323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496941, 42.170757, 28.885195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.606121, 42.360016, 29.220249>,  <40.671631, 42.473572, 29.421282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.606121, 42.360016, 29.220249>,  <40.496941, 42.170757, 28.885195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606121, 42.360016, 29.220249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563777, 0.626846, -0.537792,
		-0.779521, 0.619030, -0.095650,
		0.272952, 0.473145, 0.837634,
		40.688007, 42.501961, 29.471539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356770, 42.926590, 28.894882>,  <40.496941, 42.170757, 28.885195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356770, 42.926590, 28.894882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.665504, 42.892387, 29.146900>,  <40.850746, 42.871864, 29.298111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.665504, 42.892387, 29.146900>,  <40.356770, 42.926590, 28.894882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665504, 42.892387, 29.146900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520160, 0.654777, -0.548362,
		-0.365650, 0.750970, 0.549858,
		0.771838, -0.085505, 0.630044,
		40.897057, 42.866737, 29.335913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428486, 43.620674, 29.048296>,  <40.356770, 42.926590, 28.894882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428486, 43.620674, 29.048296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784676, 43.457382, 29.128708>,  <40.998390, 43.359409, 29.176956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784676, 43.457382, 29.128708>,  <40.428486, 43.620674, 29.048296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784676, 43.457382, 29.128708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451736, 0.739913, -0.498461,
		0.054739, 0.534678, 0.843282,
		0.890471, -0.408226, 0.201031,
		41.051815, 43.334915, 29.189016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810005, 44.182354, 29.203995>,  <40.428486, 43.620674, 29.048296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810005, 44.182354, 29.203995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.098019, 43.908752, 29.157206>,  <41.270828, 43.744591, 29.129133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.098019, 43.908752, 29.157206>,  <40.810005, 44.182354, 29.203995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098019, 43.908752, 29.157206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573841, 0.681688, -0.453881,
		0.390195, 0.259687, 0.883352,
		0.720037, -0.684006, -0.116972,
		41.314030, 43.703552, 29.122114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409615, 44.576920, 29.487305>,  <40.810005, 44.182354, 29.203995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409615, 44.576920, 29.487305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.518608, 44.277878, 29.245035>,  <41.584003, 44.098454, 29.099672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.518608, 44.277878, 29.245035>,  <41.409615, 44.576920, 29.487305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518608, 44.277878, 29.245035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539895, 0.639855, -0.546900,
		0.796408, -0.177979, 0.577978,
		0.272485, -0.747603, -0.605675,
		41.600353, 44.053596, 29.063334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187847, 44.595482, 29.457771>,  <41.409615, 44.576920, 29.487305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187847, 44.595482, 29.457771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.043217, 44.404812, 29.137259>,  <41.956440, 44.290409, 28.944952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.043217, 44.404812, 29.137259>,  <42.187847, 44.595482, 29.457771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043217, 44.404812, 29.137259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528928, 0.602869, -0.597314,
		0.767789, -0.639792, 0.034143,
		-0.361573, -0.476671, -0.801280,
		41.934746, 44.261810, 28.896875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694790, 44.381050, 29.097601>,  <42.187847, 44.595482, 29.457771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694790, 44.381050, 29.097601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.392033, 44.399590, 28.836842>,  <42.210381, 44.410713, 28.680386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.392033, 44.399590, 28.836842>,  <42.694790, 44.381050, 29.097601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392033, 44.399590, 28.836842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564814, 0.548211, -0.616807,
		0.328790, -0.835055, -0.441112,
		-0.756890, 0.046346, -0.651897,
		42.164967, 44.413494, 28.641272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972881, 44.239777, 28.459745>,  <42.694790, 44.381050, 29.097601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972881, 44.239777, 28.459745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.635132, 44.440117, 28.383667>,  <42.432480, 44.560322, 28.338020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.635132, 44.440117, 28.383667>,  <42.972881, 44.239777, 28.459745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635132, 44.440117, 28.383667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487814, 0.571973, -0.659458,
		-0.221502, -0.649612, -0.727283,
		-0.844378, 0.500850, -0.190197,
		42.381817, 44.590370, 28.326609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020233, 44.306927, 27.685476>,  <42.972881, 44.239777, 28.459745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020233, 44.306927, 27.685476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.730270, 44.558418, 27.798052>,  <42.556293, 44.709312, 27.865597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.730270, 44.558418, 27.798052>,  <43.020233, 44.306927, 27.685476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730270, 44.558418, 27.798052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350484, 0.688373, -0.635061,
		-0.593015, -0.361723, -0.719368,
		-0.724910, 0.628728, 0.281437,
		42.512798, 44.747036, 27.882483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816223, 44.647873, 27.028999>,  <43.020233, 44.306927, 27.685476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816223, 44.647873, 27.028999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.705040, 44.872837, 27.340496>,  <42.638332, 45.007816, 27.527393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.705040, 44.872837, 27.340496>,  <42.816223, 44.647873, 27.028999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705040, 44.872837, 27.340496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345093, 0.815029, -0.465445,
		-0.896466, 0.139365, -0.420625,
		-0.277955, 0.562410, 0.778740,
		42.621655, 45.041561, 27.574118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525173, 45.204170, 26.574999>,  <42.816223, 44.647873, 27.028999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525173, 45.204170, 26.574999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.580334, 45.344452, 26.945509>,  <42.613430, 45.428623, 27.167814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.580334, 45.344452, 26.945509>,  <42.525173, 45.204170, 26.574999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580334, 45.344452, 26.945509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140227, 0.918877, -0.368783,
		-0.980469, 0.180745, 0.077536,
		0.137902, 0.350708, 0.926276,
		42.621704, 45.449665, 27.223392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058609, 45.767467, 26.664566>,  <42.525173, 45.204170, 26.574999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058609, 45.767467, 26.664566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.353420, 45.812706, 26.931099>,  <42.530308, 45.839851, 27.091019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.353420, 45.812706, 26.931099>,  <42.058609, 45.767467, 26.664566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353420, 45.812706, 26.931099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093025, 0.959539, -0.265765,
		-0.669428, 0.257862, 0.696687,
		0.737029, 0.113101, 0.666331,
		42.574528, 45.846638, 27.130999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962833, 45.396988, 26.122860>,  <42.058609, 45.767467, 26.664566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962833, 45.396988, 26.122860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.721146, 45.615162, 25.890511>,  <41.576134, 45.746067, 25.751101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.721146, 45.615162, 25.890511>,  <41.962833, 45.396988, 26.122860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721146, 45.615162, 25.890511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699773, -0.711888, 0.059437,
		-0.381098, 0.442393, 0.811821,
		-0.604219, 0.545440, -0.580874,
		41.539879, 45.778793, 25.716248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328564, 45.512428, 26.460800>,  <41.962833, 45.396988, 26.122860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328564, 45.512428, 26.460800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.227409, 45.589523, 26.081558>,  <41.166718, 45.635780, 25.854013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.227409, 45.589523, 26.081558>,  <41.328564, 45.512428, 26.460800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227409, 45.589523, 26.081558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865635, -0.482758, 0.132747,
		-0.432118, 0.854281, 0.288925,
		-0.252884, 0.192741, -0.948104,
		41.151543, 45.647346, 25.797127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746761, 45.506714, 26.526501>,  <41.328564, 45.512428, 26.460800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746761, 45.506714, 26.526501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.761677, 45.489449, 26.127151>,  <40.770626, 45.479088, 25.887543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.761677, 45.489449, 26.127151>,  <40.746761, 45.506714, 26.526501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761677, 45.489449, 26.127151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888240, -0.459186, -0.013319,
		-0.457863, 0.887291, -0.055463,
		0.037285, -0.043167, -0.998372,
		40.772861, 45.476498, 25.827641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075893, 45.742889, 26.225916>,  <40.746761, 45.506714, 26.526501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075893, 45.742889, 26.225916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.268906, 45.504593, 25.969088>,  <40.384712, 45.361614, 25.814991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.268906, 45.504593, 25.969088>,  <40.075893, 45.742889, 26.225916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268906, 45.504593, 25.969088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854630, -0.480732, -0.196227,
		-0.191763, 0.643418, -0.741107,
		0.482529, -0.595743, -0.642071,
		40.413666, 45.325871, 25.776466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551395, 45.575642, 25.842300>,  <40.075893, 45.742889, 26.225916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551395, 45.575642, 25.842300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.823738, 45.303612, 25.733540>,  <39.987144, 45.140396, 25.668283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.823738, 45.303612, 25.733540>,  <39.551395, 45.575642, 25.842300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823738, 45.303612, 25.733540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720526, -0.688557, -0.082048,
		-0.131423, 0.251777, -0.958820,
		0.680860, -0.680072, -0.271904,
		40.027996, 45.099590, 25.651968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275688, 45.341084, 25.171026>,  <39.551395, 45.575642, 25.842300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275688, 45.341084, 25.171026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.510666, 45.085785, 25.370041>,  <39.651653, 44.932606, 25.489450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.510666, 45.085785, 25.370041>,  <39.275688, 45.341084, 25.171026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510666, 45.085785, 25.370041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611279, -0.752854, -0.244025,
		0.530323, -0.160782, -0.832410,
		0.587449, -0.638247, 0.497538,
		39.686901, 44.894310, 25.519302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962578, 44.654610, 24.981434>,  <39.275688, 45.341084, 25.171026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962578, 44.654610, 24.981434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.205559, 44.535316, 25.275930>,  <39.351349, 44.463741, 25.452629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.205559, 44.535316, 25.275930>,  <38.962578, 44.654610, 24.981434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205559, 44.535316, 25.275930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667828, -0.693599, 0.270048,
		0.430120, -0.655726, -0.620500,
		0.607455, -0.298235, 0.736243,
		39.387794, 44.445847, 25.496803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004311, 43.913303, 24.897326>,  <38.962578, 44.654610, 24.981434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004311, 43.913303, 24.897326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120049, 43.993675, 25.271685>,  <39.189491, 44.041897, 25.496300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120049, 43.993675, 25.271685>,  <39.004311, 43.913303, 24.897326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120049, 43.993675, 25.271685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710589, -0.610005, 0.350654,
		0.641359, -0.766500, -0.033726,
		0.289349, 0.200929, 0.935898,
		39.206852, 44.053955, 25.552454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170124, 43.600121, 24.328167>,  <39.004311, 43.913303, 24.897326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170124, 43.600121, 24.328167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.002190, 43.386795, 24.034414>,  <38.901428, 43.258801, 23.858162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.002190, 43.386795, 24.034414>,  <39.170124, 43.600121, 24.328167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002190, 43.386795, 24.034414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320186, 0.670092, -0.669669,
		0.849245, -0.516291, -0.110571,
		-0.419837, -0.533310, -0.734382,
		38.876240, 43.226803, 23.814100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617722, 43.621563, 23.781256>,  <39.170124, 43.600121, 24.328167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617722, 43.621563, 23.781256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281464, 43.507862, 23.596859>,  <39.079708, 43.439640, 23.486221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281464, 43.507862, 23.596859>,  <39.617722, 43.621563, 23.781256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281464, 43.507862, 23.596859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267464, 0.522254, -0.809761,
		0.470932, -0.804022, -0.363004,
		-0.840646, -0.284252, -0.460993,
		39.029270, 43.422588, 23.458561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773155, 43.381554, 23.168163>,  <39.617722, 43.621563, 23.781256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773155, 43.381554, 23.168163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389973, 43.492451, 23.138605>,  <39.160065, 43.558990, 23.120871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389973, 43.492451, 23.138605>,  <39.773155, 43.381554, 23.168163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389973, 43.492451, 23.138605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210989, 0.506139, -0.836246,
		-0.194443, -0.816676, -0.543353,
		-0.957954, 0.277244, -0.073895,
		39.102585, 43.575623, 23.116436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659363, 43.416332, 22.504456>,  <39.773155, 43.381554, 23.168163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659363, 43.416332, 22.504456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.359074, 43.649231, 22.629297>,  <39.178902, 43.788971, 22.704203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.359074, 43.649231, 22.629297>,  <39.659363, 43.416332, 22.504456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359074, 43.649231, 22.629297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169861, 0.626685, -0.760535,
		-0.638408, -0.517936, -0.569367,
		-0.750722, 0.582245, 0.312103,
		39.133858, 43.823906, 22.722929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426170, 43.567207, 21.924511>,  <39.659363, 43.416332, 22.504456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426170, 43.567207, 21.924511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263992, 43.837914, 22.170311>,  <39.166687, 44.000336, 22.317791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263992, 43.837914, 22.170311>,  <39.426170, 43.567207, 21.924511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263992, 43.837914, 22.170311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237981, 0.727195, -0.643857,
		-0.882600, -0.114807, -0.455892,
		-0.405442, 0.676761, 0.614500,
		39.142361, 44.040943, 22.354662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063896, 44.045166, 21.499842>,  <39.426170, 43.567207, 21.924511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063896, 44.045166, 21.499842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096893, 44.249088, 21.842373>,  <39.116692, 44.371441, 22.047892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096893, 44.249088, 21.842373>,  <39.063896, 44.045166, 21.499842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096893, 44.249088, 21.842373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263171, 0.817610, -0.512108,
		-0.961216, 0.267606, -0.066716,
		0.082495, 0.509804, 0.856326,
		39.121643, 44.402031, 22.099270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702984, 44.681355, 21.433659>,  <39.063896, 44.045166, 21.499842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702984, 44.681355, 21.433659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.980213, 44.718884, 21.719551>,  <39.146553, 44.741402, 21.891087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.980213, 44.718884, 21.719551>,  <38.702984, 44.681355, 21.433659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980213, 44.718884, 21.719551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357609, 0.816139, -0.453909,
		-0.625907, 0.570189, 0.532095,
		0.693077, 0.093823, 0.714731,
		39.188137, 44.747032, 21.933971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733761, 45.414410, 21.558210>,  <38.702984, 44.681355, 21.433659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733761, 45.414410, 21.558210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096893, 45.306362, 21.686512>,  <39.314774, 45.241531, 21.763493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096893, 45.306362, 21.686512>,  <38.733761, 45.414410, 21.558210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096893, 45.306362, 21.686512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393332, 0.813706, -0.427985,
		-0.145390, 0.514700, 0.844953,
		0.907828, -0.270123, 0.320753,
		39.369240, 45.225327, 21.782738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082085, 46.023460, 21.856009>,  <38.733761, 45.414410, 21.558210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082085, 46.023460, 21.856009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.364395, 45.760300, 21.750902>,  <39.533783, 45.602402, 21.687838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.364395, 45.760300, 21.750902>,  <39.082085, 46.023460, 21.856009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364395, 45.760300, 21.750902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428701, 0.691918, -0.580918,
		0.564000, 0.297349, 0.770382,
		0.705776, -0.657901, -0.262767,
		39.576126, 45.562931, 21.672071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.558292, 33.439842, 31.225321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932911, 33.299637, 31.227333>,  <35.157681, 33.215511, 31.228540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932911, 33.299637, 31.227333>,  <34.558292, 33.439842, 31.225321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932911, 33.299637, 31.227333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174209, 0.452921, -0.874365,
		0.304202, 0.819756, 0.485243,
		0.936543, -0.350517, 0.005029,
		35.213875, 33.194481, 31.228842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820473, 33.992123, 31.111366>,  <34.558292, 33.439842, 31.225321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820473, 33.992123, 31.111366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074352, 33.695385, 31.024803>,  <35.226681, 33.517342, 30.972866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.074352, 33.695385, 31.024803>,  <34.820473, 33.992123, 31.111366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074352, 33.695385, 31.024803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233135, 0.450813, -0.861635,
		0.736757, 0.496424, 0.459078,
		0.634695, -0.741843, -0.216406,
		35.264759, 33.472832, 30.959881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550770, 34.228443, 30.902590>,  <34.820473, 33.992123, 31.111366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550770, 34.228443, 30.902590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430843, 33.896538, 30.714289>,  <35.358887, 33.697395, 30.601309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430843, 33.896538, 30.714289>,  <35.550770, 34.228443, 30.902590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430843, 33.896538, 30.714289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261882, 0.402912, -0.876972,
		0.917349, -0.386210, 0.096501,
		-0.299814, -0.829761, -0.470753,
		35.340900, 33.647610, 30.573063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082458, 34.070110, 30.491255>,  <35.550770, 34.228443, 30.902590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082458, 34.070110, 30.491255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755302, 33.911434, 30.324547>,  <35.559010, 33.816231, 30.224522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755302, 33.911434, 30.324547>,  <36.082458, 34.070110, 30.491255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755302, 33.911434, 30.324547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099294, 0.616162, -0.781335,
		0.566745, -0.680428, -0.464563,
		-0.817888, -0.396689, -0.416769,
		35.509937, 33.792427, 30.199516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232872, 33.909832, 29.790255>,  <36.082458, 34.070110, 30.491255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232872, 33.909832, 29.790255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833557, 33.930614, 29.779514>,  <35.593967, 33.943085, 29.773071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833557, 33.930614, 29.779514>,  <36.232872, 33.909832, 29.790255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833557, 33.930614, 29.779514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052352, 0.589208, -0.806284,
		-0.026073, -0.806309, -0.590919,
		-0.998288, 0.051958, -0.026849,
		35.534069, 33.946201, 29.771460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058365, 33.872116, 29.090494>,  <36.232872, 33.909832, 29.790255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058365, 33.872116, 29.090494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735283, 34.039207, 29.256922>,  <35.541435, 34.139462, 29.356779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735283, 34.039207, 29.256922>,  <36.058365, 33.872116, 29.090494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735283, 34.039207, 29.256922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098786, 0.599836, -0.794001,
		-0.581253, -0.682420, -0.443224,
		-0.807704, 0.417731, 0.416070,
		35.492973, 34.164528, 29.381742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659863, 34.059185, 28.554857>,  <36.058365, 33.872116, 29.090494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659863, 34.059185, 28.554857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520527, 34.284218, 28.854767>,  <35.436928, 34.419239, 29.034714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520527, 34.284218, 28.854767>,  <35.659863, 34.059185, 28.554857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520527, 34.284218, 28.854767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174458, 0.746987, -0.641540,
		-0.920992, -0.354276, -0.162055,
		-0.348335, 0.562582, 0.749776,
		35.416027, 34.452991, 29.079700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125664, 34.342342, 28.237648>,  <35.659863, 34.059185, 28.554857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125664, 34.342342, 28.237648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194958, 34.564346, 28.563091>,  <35.236534, 34.697548, 28.758356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194958, 34.564346, 28.563091>,  <35.125664, 34.342342, 28.237648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194958, 34.564346, 28.563091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024625, 0.823398, -0.566930,
		-0.984573, 0.118247, 0.128974,
		0.173234, 0.555008, 0.813607,
		35.246929, 34.730850, 28.807173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599052, 34.902462, 28.183165>,  <35.125664, 34.342342, 28.237648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599052, 34.902462, 28.183165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917549, 34.997967, 28.405510>,  <35.108646, 35.055271, 28.538918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917549, 34.997967, 28.405510>,  <34.599052, 34.902462, 28.183165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917549, 34.997967, 28.405510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076181, 0.871939, -0.483651,
		-0.600159, 0.427451, 0.676088,
		0.796245, 0.238762, 0.555866,
		35.156422, 35.069595, 28.572269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421196, 35.569939, 28.451670>,  <34.599052, 34.902462, 28.183165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421196, 35.569939, 28.451670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819775, 35.559158, 28.483612>,  <35.058922, 35.552689, 28.502777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.819775, 35.559158, 28.483612>,  <34.421196, 35.569939, 28.451670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819775, 35.559158, 28.483612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046990, 0.964217, -0.260918,
		-0.069964, 0.263742, 0.962052,
		0.996442, -0.026952, 0.079854,
		35.118706, 35.551071, 28.507568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626068, 36.237637, 28.760517>,  <34.421196, 35.569939, 28.451670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626068, 36.237637, 28.760517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951920, 36.085709, 28.585196>,  <35.147430, 35.994553, 28.480001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951920, 36.085709, 28.585196>,  <34.626068, 36.237637, 28.760517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951920, 36.085709, 28.585196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223130, 0.902807, -0.367631,
		0.535339, 0.201685, 0.820205,
		0.814632, -0.379819, -0.438305,
		35.196308, 35.971764, 28.453703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221764, 36.774567, 28.762148>,  <34.626068, 36.237637, 28.760517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221764, 36.774567, 28.762148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364250, 36.506836, 28.501345>,  <35.449741, 36.346199, 28.344864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364250, 36.506836, 28.501345>,  <35.221764, 36.774567, 28.762148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364250, 36.506836, 28.501345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481972, 0.729406, -0.485459,
		0.800507, -0.141320, 0.582423,
		0.356218, -0.669325, -0.652007,
		35.471115, 36.306038, 28.305742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877766, 37.045609, 29.479488>,  <35.221764, 36.774567, 28.762148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877766, 37.045609, 29.479488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044464, 37.312611, 29.726313>,  <35.144482, 37.472813, 29.874407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.044464, 37.312611, 29.726313>,  <34.877766, 37.045609, 29.479488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044464, 37.312611, 29.726313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126744, -0.629519, 0.766578,
		0.900146, -0.397674, -0.177745,
		0.416742, 0.667503, 0.617061,
		35.169487, 37.512863, 29.911430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404182, 36.751373, 29.894142>,  <34.877766, 37.045609, 29.479488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404182, 36.751373, 29.894142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236683, 37.040455, 30.114086>,  <35.136181, 37.213902, 30.246054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.236683, 37.040455, 30.114086>,  <35.404182, 36.751373, 29.894142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236683, 37.040455, 30.114086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241831, -0.672391, 0.699578,
		0.875308, 0.159977, 0.456337,
		-0.418753, 0.722702, 0.549861,
		35.111057, 37.257267, 30.279045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583790, 36.733238, 30.541180>,  <35.404182, 36.751373, 29.894142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583790, 36.733238, 30.541180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235680, 36.926510, 30.579445>,  <35.026814, 37.042473, 30.602404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.235680, 36.926510, 30.579445>,  <35.583790, 36.733238, 30.541180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235680, 36.926510, 30.579445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274029, -0.636333, 0.721102,
		0.409298, 0.601344, 0.686193,
		-0.870278, 0.483183, 0.095664,
		34.974598, 37.071465, 30.608145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426033, 36.321018, 31.128387>,  <35.583790, 36.733238, 30.541180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426033, 36.321018, 31.128387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.106441, 36.545879, 31.042963>,  <34.914684, 36.680798, 30.991709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.106441, 36.545879, 31.042963>,  <35.426033, 36.321018, 31.128387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106441, 36.545879, 31.042963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555496, -0.553920, 0.620159,
		0.230329, 0.614129, 0.754847,
		-0.798982, 0.562155, -0.213563,
		34.866745, 36.714527, 30.978893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133514, 36.608845, 31.740582>,  <35.426033, 36.321018, 31.128387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133514, 36.608845, 31.740582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831329, 36.609333, 31.478504>,  <34.650021, 36.609627, 31.321257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831329, 36.609333, 31.478504>,  <35.133514, 36.608845, 31.740582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831329, 36.609333, 31.478504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626367, -0.294707, 0.721673,
		-0.192211, 0.955587, 0.223402,
		-0.755459, 0.001218, -0.655194,
		34.604691, 36.609699, 31.281946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622383, 37.009617, 32.147839>,  <35.133514, 36.608845, 31.740582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622383, 37.009617, 32.147839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463894, 36.777378, 31.863329>,  <34.368801, 36.638035, 31.692623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.463894, 36.777378, 31.863329>,  <34.622383, 37.009617, 32.147839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463894, 36.777378, 31.863329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655257, -0.363835, 0.662014,
		-0.643151, 0.728373, -0.236282,
		-0.396225, -0.580601, -0.711272,
		34.345028, 36.603199, 31.649948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886177, 37.153481, 32.114964>,  <34.622383, 37.009617, 32.147839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886177, 37.153481, 32.114964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925583, 36.793663, 31.944736>,  <33.949226, 36.577770, 31.842600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925583, 36.793663, 31.944736>,  <33.886177, 37.153481, 32.114964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925583, 36.793663, 31.944736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551583, -0.405309, 0.729028,
		-0.828282, 0.162914, -0.536105,
		0.098519, -0.899546, -0.425570,
		33.955139, 36.523800, 31.817066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213127, 36.914211, 32.065369>,  <33.886177, 37.153481, 32.114964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213127, 36.914211, 32.065369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425301, 36.575329, 32.053452>,  <33.552605, 36.372002, 32.046299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425301, 36.575329, 32.053452>,  <33.213127, 36.914211, 32.065369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425301, 36.575329, 32.053452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658712, -0.434036, 0.614582,
		-0.533609, -0.306367, -0.788290,
		0.530434, -0.847203, -0.029798,
		33.584431, 36.321167, 32.044514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725643, 36.345081, 32.024181>,  <33.213127, 36.914211, 32.065369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725643, 36.345081, 32.024181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044662, 36.166710, 32.186695>,  <33.236073, 36.059689, 32.284203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.044662, 36.166710, 32.186695>,  <32.725643, 36.345081, 32.024181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044662, 36.166710, 32.186695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582715, -0.395197, 0.710115,
		-0.156095, -0.803100, -0.575035,
		0.797545, -0.445927, 0.406290,
		33.283924, 36.032932, 32.308582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576050, 35.543255, 32.083553>,  <32.725643, 36.345081, 32.024181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576050, 35.543255, 32.083553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.856262, 35.656921, 32.345398>,  <33.024387, 35.725121, 32.502502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.856262, 35.656921, 32.345398>,  <32.576050, 35.543255, 32.083553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856262, 35.656921, 32.345398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351767, -0.660612, 0.663213,
		0.620904, -0.694868, -0.362817,
		0.700527, 0.284165, 0.654608,
		33.066422, 35.742172, 32.541779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780766, 34.910427, 32.156216>,  <32.576050, 35.543255, 32.083553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780766, 34.910427, 32.156216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902660, 35.141380, 32.459206>,  <32.975796, 35.279953, 32.640999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.902660, 35.141380, 32.459206>,  <32.780766, 34.910427, 32.156216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902660, 35.141380, 32.459206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326976, -0.683545, 0.652574,
		0.894551, -0.446540, -0.019513,
		0.304738, 0.577380, 0.757474,
		32.994083, 35.314594, 32.686447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022766, 34.480618, 32.705990>,  <32.780766, 34.910427, 32.156216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022766, 34.480618, 32.705990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994358, 34.820137, 32.915562>,  <32.977314, 35.023849, 33.041306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994358, 34.820137, 32.915562>,  <33.022766, 34.480618, 32.705990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994358, 34.820137, 32.915562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219909, -0.525652, 0.821785,
		0.972932, -0.056851, 0.223992,
		-0.071022, 0.848798, 0.523926,
		32.973053, 35.074776, 33.072739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410954, 34.415085, 33.278954>,  <33.022766, 34.480618, 32.705990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410954, 34.415085, 33.278954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202171, 34.737492, 33.390602>,  <33.076904, 34.930935, 33.457592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202171, 34.737492, 33.390602>,  <33.410954, 34.415085, 33.278954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202171, 34.737492, 33.390602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238589, -0.452130, 0.859450,
		0.818926, 0.381998, 0.428296,
		-0.521953, 0.806013, 0.279120,
		33.045586, 34.979294, 33.474339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710690, 34.634834, 33.965504>,  <33.410954, 34.415085, 33.278954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710690, 34.634834, 33.965504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.343781, 34.792660, 33.943848>,  <33.123634, 34.887356, 33.930855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.343781, 34.792660, 33.943848>,  <33.710690, 34.634834, 33.965504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343781, 34.792660, 33.943848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250772, -0.466592, 0.848178,
		0.309399, 0.791587, 0.526937,
		-0.917271, 0.394566, -0.054145,
		33.068600, 34.911030, 33.927605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470463, 34.902084, 34.566719>,  <33.710690, 34.634834, 33.965504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470463, 34.902084, 34.566719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201000, 34.744507, 34.316601>,  <33.039322, 34.649960, 34.166531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.201000, 34.744507, 34.316601>,  <33.470463, 34.902084, 34.566719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201000, 34.744507, 34.316601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269328, -0.657043, 0.704100,
		-0.688224, 0.642730, 0.336520,
		-0.673655, -0.393944, -0.625298,
		32.998905, 34.626324, 34.129013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214733, 35.146229, 34.478390>,  <33.470463, 34.902084, 34.566719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214733, 35.146229, 34.478390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495079, 34.955032, 34.690166>,  <34.663288, 34.840317, 34.817234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.495079, 34.955032, 34.690166>,  <34.214733, 35.146229, 34.478390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495079, 34.955032, 34.690166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563010, 0.826450, 0.000828,
		-0.437954, 0.297502, 0.848345,
		0.700868, -0.477989, 0.529443,
		34.705341, 34.811634, 34.848999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337475, 35.558533, 35.132896>,  <34.214733, 35.146229, 34.478390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337475, 35.558533, 35.132896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637665, 35.333786, 34.993706>,  <34.817780, 35.198936, 34.910191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637665, 35.333786, 34.993706>,  <34.337475, 35.558533, 35.132896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637665, 35.333786, 34.993706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601634, 0.798734, 0.007848,
		0.273530, -0.215243, 0.937471,
		0.750479, -0.561868, -0.347975,
		34.862808, 35.165226, 34.889313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966621, 35.717670, 35.474586>,  <34.337475, 35.558533, 35.132896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966621, 35.717670, 35.474586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.082981, 35.573460, 35.120094>,  <35.152798, 35.486931, 34.907398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.082981, 35.573460, 35.120094>,  <34.966621, 35.717670, 35.474586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082981, 35.573460, 35.120094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523783, 0.835156, -0.167826,
		0.800644, -0.415371, 0.431782,
		0.290896, -0.360529, -0.886227,
		35.170250, 35.465302, 34.854225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603954, 35.961319, 35.432713>,  <34.966621, 35.717670, 35.474586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603954, 35.961319, 35.432713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524918, 35.853355, 35.055756>,  <35.477497, 35.788578, 34.829582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.524918, 35.853355, 35.055756>,  <35.603954, 35.961319, 35.432713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524918, 35.853355, 35.055756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471624, 0.816601, -0.332766,
		0.859377, -0.510207, -0.034056,
		-0.197590, -0.269909, -0.942394,
		35.465641, 35.772381, 34.773037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264500, 35.999805, 35.003395>,  <35.603954, 35.961319, 35.432713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264500, 35.999805, 35.003395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982330, 35.985363, 34.720249>,  <35.813026, 35.976700, 34.550362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982330, 35.985363, 34.720249>,  <36.264500, 35.999805, 35.003395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982330, 35.985363, 34.720249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432376, 0.769433, -0.470132,
		0.561626, -0.637707, -0.527169,
		-0.705427, -0.036103, -0.707863,
		35.770702, 35.974533, 34.507889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515984, 35.849724, 34.283924>,  <36.264500, 35.999805, 35.003395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515984, 35.849724, 34.283924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182865, 36.054821, 34.200455>,  <35.982994, 36.177879, 34.150375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.182865, 36.054821, 34.200455>,  <36.515984, 35.849724, 34.283924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182865, 36.054821, 34.200455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530866, 0.632863, -0.563618,
		-0.156929, -0.580157, -0.799244,
		-0.832799, 0.512739, -0.208671,
		35.933025, 36.208641, 34.137852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444138, 35.906658, 33.510685>,  <36.515984, 35.849724, 34.283924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444138, 35.906658, 33.510685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.227196, 36.199810, 33.674995>,  <36.097031, 36.375702, 33.773582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.227196, 36.199810, 33.674995>,  <36.444138, 35.906658, 33.510685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227196, 36.199810, 33.674995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388726, 0.652349, -0.650641,
		-0.744812, -0.193198, -0.638693,
		-0.542353, 0.732882, 0.410776,
		36.064491, 36.419674, 33.798229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251926, 36.266350, 32.938496>,  <36.444138, 35.906658, 33.510685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251926, 36.266350, 32.938496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.213467, 36.509842, 33.253506>,  <36.190392, 36.655937, 33.442513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.213467, 36.509842, 33.253506>,  <36.251926, 36.266350, 32.938496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213467, 36.509842, 33.253506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247301, 0.780993, -0.573491,
		-0.964156, 0.139613, -0.225636,
		-0.096153, 0.608735, 0.787526,
		36.184620, 36.692463, 33.489765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914501, 36.788059, 32.586784>,  <36.251926, 36.266350, 32.938496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914501, 36.788059, 32.586784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060757, 36.938480, 32.927345>,  <36.148510, 37.028732, 33.131683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060757, 36.938480, 32.927345>,  <35.914501, 36.788059, 32.586784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060757, 36.938480, 32.927345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423358, 0.747447, -0.511948,
		-0.828900, 0.547638, 0.114091,
		0.365639, 0.376053, 0.851406,
		36.170448, 37.051296, 33.182766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736301, 37.546890, 32.629677>,  <35.914501, 36.788059, 32.586784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736301, 37.546890, 32.629677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.070210, 37.466759, 32.834824>,  <36.270554, 37.418678, 32.957912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.070210, 37.466759, 32.834824>,  <35.736301, 37.546890, 32.629677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070210, 37.466759, 32.834824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481149, 0.718267, -0.502581,
		-0.267696, 0.666305, 0.695972,
		0.834766, -0.200328, 0.512869,
		36.320641, 37.406662, 32.988686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953453, 38.123096, 32.760887>,  <35.736301, 37.546890, 32.629677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953453, 38.123096, 32.760887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.271523, 37.903896, 32.864727>,  <36.462364, 37.772377, 32.927029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.271523, 37.903896, 32.864727>,  <35.953453, 38.123096, 32.760887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271523, 37.903896, 32.864727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606116, 0.705741, -0.366815,
		0.017808, 0.449028, 0.893340,
		0.795177, -0.548000, 0.259595,
		36.510075, 37.739498, 32.942604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357090, 38.593792, 33.086140>,  <35.953453, 38.123096, 32.760887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357090, 38.593792, 33.086140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.591133, 38.292816, 32.965160>,  <36.731560, 38.112228, 32.892570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.591133, 38.292816, 32.965160>,  <36.357090, 38.593792, 33.086140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591133, 38.292816, 32.965160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666472, 0.658653, -0.349273,
		0.462018, 0.002788, 0.886866,
		0.585111, -0.752441, -0.302451,
		36.766666, 38.067085, 32.874424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003433, 38.840168, 33.261311>,  <36.357090, 38.593792, 33.086140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003433, 38.840168, 33.261311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067432, 38.555290, 32.987911>,  <37.105831, 38.384361, 32.823872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.067432, 38.555290, 32.987911>,  <37.003433, 38.840168, 33.261311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067432, 38.555290, 32.987911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740585, 0.544406, -0.393899,
		0.652636, -0.443165, 0.614549,
		0.160002, -0.712199, -0.683500,
		37.115433, 38.341629, 32.782860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695293, 38.795952, 33.201584>,  <37.003433, 38.840168, 33.261311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695293, 38.795952, 33.201584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570240, 38.638508, 32.855789>,  <37.495209, 38.544041, 32.648312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.570240, 38.638508, 32.855789>,  <37.695293, 38.795952, 33.201584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570240, 38.638508, 32.855789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684112, 0.538085, -0.492396,
		0.658978, -0.745344, 0.101049,
		-0.312632, -0.393607, -0.864485,
		37.476452, 38.520424, 32.596443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261230, 38.641788, 32.832039>,  <37.695293, 38.795952, 33.201584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261230, 38.641788, 32.832039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965343, 38.704304, 32.570232>,  <37.787811, 38.741814, 32.413147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965343, 38.704304, 32.570232>,  <38.261230, 38.641788, 32.832039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965343, 38.704304, 32.570232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541143, 0.716298, -0.440547,
		0.399977, -0.680067, -0.614432,
		-0.739718, 0.156287, -0.654517,
		37.743427, 38.751190, 32.373878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637505, 38.768379, 32.206890>,  <38.261230, 38.641788, 32.832039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637505, 38.768379, 32.206890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270256, 38.915009, 32.146648>,  <38.049908, 39.002987, 32.110504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270256, 38.915009, 32.146648>,  <38.637505, 38.768379, 32.206890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270256, 38.915009, 32.146648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388963, 0.760693, -0.519667,
		-0.075930, -0.535697, -0.840990,
		-0.918119, 0.366573, -0.150607,
		37.994820, 39.024979, 32.101467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677116, 38.802250, 31.521336>,  <38.637505, 38.768379, 32.206890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677116, 38.802250, 31.521336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.367279, 39.023235, 31.644487>,  <38.181377, 39.155827, 31.718378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.367279, 39.023235, 31.644487>,  <38.677116, 38.802250, 31.521336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367279, 39.023235, 31.644487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224112, 0.694967, -0.683224,
		-0.591426, -0.460219, -0.662129,
		-0.774590, 0.552467, 0.307880,
		38.134903, 39.188976, 31.736851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312206, 39.022507, 30.938408>,  <38.677116, 38.802250, 31.521336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312206, 39.022507, 30.938408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217224, 39.278656, 31.230581>,  <38.160236, 39.432346, 31.405886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.217224, 39.278656, 31.230581>,  <38.312206, 39.022507, 30.938408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217224, 39.278656, 31.230581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230664, 0.767605, -0.597976,
		-0.943615, 0.026492, -0.329983,
		-0.237455, 0.640375, 0.730435,
		38.145988, 39.470768, 31.449711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143147, 39.611362, 30.563332>,  <38.312206, 39.022507, 30.938408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143147, 39.611362, 30.563332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222878, 39.752556, 30.928993>,  <38.270714, 39.837273, 31.148390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222878, 39.752556, 30.928993>,  <38.143147, 39.611362, 30.563332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222878, 39.752556, 30.928993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140825, 0.912870, -0.383192,
		-0.969762, 0.205115, 0.132247,
		0.199323, 0.352981, 0.914153,
		38.282673, 39.858452, 31.203239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863735, 40.344540, 30.598709>,  <38.143147, 39.611362, 30.563332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863735, 40.344540, 30.598709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112251, 40.311852, 30.910433>,  <38.261360, 40.292240, 31.097467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.112251, 40.311852, 30.910433>,  <37.863735, 40.344540, 30.598709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112251, 40.311852, 30.910433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448505, 0.852605, -0.268156,
		-0.642531, 0.516127, 0.566363,
		0.621286, -0.081718, 0.779311,
		38.298637, 40.287334, 31.144226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792362, 41.037819, 30.954151>,  <37.863735, 40.344540, 30.598709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792362, 41.037819, 30.954151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137775, 40.880177, 31.080002>,  <38.345024, 40.785591, 31.155512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.137775, 40.880177, 31.080002>,  <37.792362, 41.037819, 30.954151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137775, 40.880177, 31.080002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491556, 0.797144, -0.350619,
		-0.112619, 0.457427, 0.882087,
		0.863533, -0.394109, 0.314624,
		38.396835, 40.761944, 31.174389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159966, 41.583385, 31.206312>,  <37.792362, 41.037819, 30.954151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159966, 41.583385, 31.206312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446095, 41.309090, 31.152531>,  <38.617771, 41.144512, 31.120262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446095, 41.309090, 31.152531>,  <38.159966, 41.583385, 31.206312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446095, 41.309090, 31.152531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595463, 0.698854, -0.396266,
		0.365697, 0.203397, 0.908238,
		0.715325, -0.685735, -0.134454,
		38.660690, 41.103371, 31.112194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780369, 41.850544, 31.544279>,  <38.159966, 41.583385, 31.206312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780369, 41.850544, 31.544279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.878365, 41.592262, 31.254992>,  <38.937160, 41.437294, 31.081419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.878365, 41.592262, 31.254992>,  <38.780369, 41.850544, 31.544279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878365, 41.592262, 31.254992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622918, 0.676446, -0.392930,
		0.742936, -0.354243, 0.567942,
		0.244989, -0.645703, -0.723220,
		38.951862, 41.398552, 31.038025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518524, 41.886189, 31.593330>,  <38.780369, 41.850544, 31.544279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518524, 41.886189, 31.593330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.413464, 41.749050, 31.232561>,  <39.350426, 41.666767, 31.016100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.413464, 41.749050, 31.232561>,  <39.518524, 41.886189, 31.593330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413464, 41.749050, 31.232561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508641, 0.745122, -0.431367,
		0.819937, -0.572056, -0.021324,
		-0.262655, -0.342848, -0.901925,
		39.334667, 41.646194, 30.961985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096828, 41.714352, 31.385399>,  <39.518524, 41.886189, 31.593330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096828, 41.714352, 31.385399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.890678, 41.694672, 31.043179>,  <39.766987, 41.682865, 30.837847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.890678, 41.694672, 31.043179>,  <40.096828, 41.714352, 31.385399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890678, 41.694672, 31.043179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753006, 0.450606, -0.479516,
		0.409106, -0.891366, -0.195189,
		-0.515377, -0.049194, -0.855550,
		39.736065, 41.679913, 30.786514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545662, 41.438484, 30.811790>,  <40.096828, 41.714352, 31.385399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545662, 41.438484, 30.811790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.269775, 41.634941, 30.598974>,  <40.104244, 41.752815, 30.471285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.269775, 41.634941, 30.598974>,  <40.545662, 41.438484, 30.811790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269775, 41.634941, 30.598974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722163, 0.519974, -0.456188,
		0.052593, -0.698860, -0.713322,
		-0.689720, 0.491143, -0.532038,
		40.062859, 41.782284, 30.439363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754379, 41.408016, 30.147974>,  <40.545662, 41.438484, 30.811790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754379, 41.408016, 30.147974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.511517, 41.725780, 30.141415>,  <40.365799, 41.916439, 30.137478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.511517, 41.725780, 30.141415>,  <40.754379, 41.408016, 30.147974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511517, 41.725780, 30.141415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663747, 0.495733, -0.560080,
		-0.436803, -0.350944, -0.828276,
		-0.607161, 0.794410, -0.016400,
		40.329369, 41.964104, 30.136494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442879, 40.915001, 29.608240>,  <40.754379, 41.408016, 30.147974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442879, 40.915001, 29.608240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.734646, 40.641521, 29.599258>,  <40.909706, 40.477432, 29.593870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.734646, 40.641521, 29.599258>,  <40.442879, 40.915001, 29.608240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734646, 40.641521, 29.599258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548680, -0.604338, 0.577690,
		-0.408537, -0.409058, -0.815947,
		0.729416, -0.683702, -0.022453,
		40.953472, 40.436413, 29.592524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189262, 40.205719, 29.436605>,  <40.442879, 40.915001, 29.608240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189262, 40.205719, 29.436605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542080, 40.127647, 29.608139>,  <40.753773, 40.080803, 29.711060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.542080, 40.127647, 29.608139>,  <40.189262, 40.205719, 29.436605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542080, 40.127647, 29.608139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428145, -0.711976, 0.556580,
		0.196688, -0.674533, -0.711561,
		0.882046, -0.195179, 0.428835,
		40.806694, 40.069096, 29.736790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350773, 39.452202, 29.313650>,  <40.189262, 40.205719, 29.436605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350773, 39.452202, 29.313650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.571354, 39.588371, 29.618284>,  <40.703701, 39.670074, 29.801065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.571354, 39.588371, 29.618284>,  <40.350773, 39.452202, 29.313650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571354, 39.588371, 29.618284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405764, -0.688211, 0.601433,
		0.728873, -0.640686, -0.241384,
		0.551453, 0.340423, 0.761585,
		40.736790, 39.690498, 29.846760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886799, 38.978165, 29.428555>,  <40.350773, 39.452202, 29.313650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886799, 38.978165, 29.428555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.828312, 39.193031, 29.760838>,  <40.793221, 39.321949, 29.960207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.828312, 39.193031, 29.760838>,  <40.886799, 38.978165, 29.428555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828312, 39.193031, 29.760838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380759, -0.805599, 0.453908,
		0.913041, -0.249931, 0.322321,
		-0.146216, 0.537163, 0.830708,
		40.784447, 39.354179, 30.010050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245541, 38.506889, 29.950302>,  <40.886799, 38.978165, 29.428555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245541, 38.506889, 29.950302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.010197, 38.776367, 30.129177>,  <40.868992, 38.938053, 30.236502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.010197, 38.776367, 30.129177>,  <41.245541, 38.506889, 29.950302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010197, 38.776367, 30.129177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200047, -0.657119, 0.726757,
		0.783464, 0.338136, 0.521391,
		-0.588359, 0.673690, 0.447186,
		40.833691, 38.978474, 30.263332>
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
