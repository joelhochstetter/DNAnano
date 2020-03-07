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
	<3.950897, 3.493641, 0.626435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.237568, 3.566328, 0.357109>,  <4.409570, 3.609940, 0.195513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.237568, 3.566328, 0.357109>,  <3.950897, 3.493641, 0.626435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.237568, 3.566328, 0.357109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270489, 0.817457, 0.508527,
		0.642814, -0.546574, 0.536700,
		0.716677, 0.181717, -0.673315,
		4.452571, 3.620843, 0.155114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.567669, 3.536300, 1.018884>,  <3.950897, 3.493641, 0.626435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.567669, 3.536300, 1.018884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.601524, 3.718361, 0.664331>,  <4.621837, 3.827597, 0.451600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.601524, 3.718361, 0.664331>,  <4.567669, 3.536300, 1.018884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.601524, 3.718361, 0.664331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370437, 0.811440, 0.452042,
		0.924994, -0.366608, -0.099927,
		0.084637, 0.455152, -0.886382,
		4.626915, 3.854907, 0.398417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.197051, 4.030096, 1.124951>,  <4.567669, 3.536300, 1.018884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.197051, 4.030096, 1.124951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.915096, 4.164406, 0.875027>,  <4.745924, 4.244992, 0.725072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.915096, 4.164406, 0.875027>,  <5.197051, 4.030096, 1.124951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.915096, 4.164406, 0.875027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106634, 0.921013, 0.374652,
		0.701258, 0.197461, -0.685015,
		-0.704887, 0.335774, -0.624812,
		4.703630, 4.265138, 0.687583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.488867, 4.570354, 0.663030>,  <5.197051, 4.030096, 1.124951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.488867, 4.570354, 0.663030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.091812, 4.604851, 0.629007>,  <4.853580, 4.625549, 0.608594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.091812, 4.604851, 0.629007>,  <5.488867, 4.570354, 0.663030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.091812, 4.604851, 0.629007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071648, 0.984219, 0.161801,
		0.097669, 0.154515, -0.983151,
		-0.992637, 0.086244, -0.085057,
		4.794021, 4.630724, 0.603490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.481479, 5.002546, 0.146298>,  <5.488867, 4.570354, 0.663030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.481479, 5.002546, 0.146298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.122242, 5.044132, 0.317236>,  <4.906700, 5.069084, 0.419798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.122242, 5.044132, 0.317236>,  <5.481479, 5.002546, 0.146298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.122242, 5.044132, 0.317236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123136, 0.992238, 0.017386,
		-0.422219, 0.068235, -0.903922,
		-0.898092, 0.103965, 0.427344,
		4.852815, 5.075322, 0.445439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.221741, 5.585991, -0.273283>,  <5.481479, 5.002546, 0.146298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.221741, 5.585991, -0.273283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.998234, 5.559118, 0.057356>,  <4.864130, 5.542994, 0.255739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.998234, 5.559118, 0.057356>,  <5.221741, 5.585991, -0.273283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.998234, 5.559118, 0.057356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160236, 0.986678, -0.028124,
		-0.813697, -0.148166, -0.562090,
		-0.558768, -0.067183, 0.826598,
		4.830603, 5.538963, 0.305335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.613743, 5.956721, -0.387568>,  <5.221741, 5.585991, -0.273283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.613743, 5.956721, -0.387568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.619282, 5.923862, 0.011042>,  <4.622605, 5.904147, 0.250207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.619282, 5.923862, 0.011042>,  <4.613743, 5.956721, -0.387568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.619282, 5.923862, 0.011042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274540, 0.958005, 0.082787,
		-0.961476, -0.274732, -0.009288,
		0.013846, -0.082147, 0.996524,
		4.623436, 5.899218, 0.309999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.952081, 6.259672, -0.009145>,  <4.613743, 5.956721, -0.387568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.952081, 6.259672, -0.009145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.263351, 6.281151, 0.241154>,  <4.450114, 6.294038, 0.391333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.263351, 6.281151, 0.241154>,  <3.952081, 6.259672, -0.009145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.263351, 6.281151, 0.241154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071134, 0.997463, 0.002865,
		-0.624004, -0.046742, 0.780021,
		0.778176, 0.053698, 0.625746,
		4.496804, 6.297260, 0.428878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.403877, 2.203696, -0.463847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.415543, 2.353527, -0.834541>,  <5.422542, 2.443426, -1.056958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.415543, 2.353527, -0.834541>,  <5.403877, 2.203696, -0.463847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.415543, 2.353527, -0.834541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331724, -0.878215, -0.344527,
		-0.942926, -0.297373, -0.149869,
		0.029164, 0.374578, -0.926736,
		5.424292, 2.465901, -1.112562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.051751, 2.050929, 0.270012>,  <5.403877, 2.203696, -0.463847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.051751, 2.050929, 0.270012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.059082, 1.992031, 0.665585>,  <5.063481, 1.956692, 0.902928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.059082, 1.992031, 0.665585>,  <5.051751, 2.050929, 0.270012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.059082, 1.992031, 0.665585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100124, -0.984395, -0.144714,
		0.994806, -0.096363, -0.032786,
		0.018329, -0.147245, 0.988930,
		5.064581, 1.947858, 0.962264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.586819, 1.504795, 0.565914>,  <5.051751, 2.050929, 0.270012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.586819, 1.504795, 0.565914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.231453, 1.561592, 0.740524>,  <5.018233, 1.595670, 0.845291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.231453, 1.561592, 0.740524>,  <5.586819, 1.504795, 0.565914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.231453, 1.561592, 0.740524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182301, -0.981886, -0.051633,
		0.421288, -0.125450, 0.898209,
		-0.888416, 0.141992, 0.436527,
		4.964928, 1.604190, 0.871482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.495058, 1.095097, 1.188769>,  <5.586819, 1.504795, 0.565914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.495058, 1.095097, 1.188769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.149384, 1.165936, 1.000378>,  <4.941979, 1.208439, 0.887343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.149384, 1.165936, 1.000378>,  <5.495058, 1.095097, 1.188769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.149384, 1.165936, 1.000378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147199, -0.984046, -0.099927,
		-0.481162, -0.017028, 0.876466,
		-0.864185, 0.177097, -0.470979,
		4.890128, 1.219064, 0.859084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.884130, 0.784261, 1.593252>,  <5.495058, 1.095097, 1.188769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.884130, 0.784261, 1.593252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.814323, 0.822510, 1.201252>,  <4.772439, 0.845459, 0.966052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.814323, 0.822510, 1.201252>,  <4.884130, 0.784261, 1.593252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.814323, 0.822510, 1.201252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040740, -0.995122, -0.089843,
		-0.983811, 0.024246, 0.177561,
		-0.174517, 0.095622, -0.980000,
		4.761969, 0.851196, 0.907252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.187996, 0.462695, 1.482229>,  <4.884130, 0.784261, 1.593252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.187996, 0.462695, 1.482229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.379974, 0.487873, 1.132214>,  <4.495161, 0.502980, 0.922205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.379974, 0.487873, 1.132214>,  <4.187996, 0.462695, 1.482229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.379974, 0.487873, 1.132214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153676, -0.975969, -0.154494,
		-0.863734, 0.208621, -0.458738,
		0.479945, 0.062944, -0.875038,
		4.523958, 0.506756, 0.869702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.685419, 0.253264, 1.005179>,  <4.187996, 0.462695, 1.482229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.685419, 0.253264, 1.005179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037064, 0.208736, 0.819805>,  <4.248050, 0.182020, 0.708581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.037064, 0.208736, 0.819805>,  <3.685419, 0.253264, 1.005179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.037064, 0.208736, 0.819805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239099, -0.944143, -0.226772,
		-0.412306, 0.310165, -0.856622,
		0.879111, -0.111318, -0.463436,
		4.300797, 0.175341, 0.680774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.526634, -0.162988, 0.430008>,  <3.685419, 0.253264, 1.005179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.526634, -0.162988, 0.430008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.911880, -0.237194, 0.507973>,  <4.143028, -0.281718, 0.554752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.911880, -0.237194, 0.507973>,  <3.526634, -0.162988, 0.430008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.911880, -0.237194, 0.507973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149494, -0.971176, -0.185659,
		0.223737, 0.149673, -0.963089,
		0.963116, -0.185515, 0.194913,
		4.200815, -0.292848, 0.566446>
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
