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
	<24.238354, 35.066662, 34.599514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372311, 35.046070, 34.975853>,  <24.452684, 35.033714, 35.201656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372311, 35.046070, 34.975853>,  <24.238354, 35.066662, 34.599514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.372311, 35.046070, 34.975853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660461, -0.724983, 0.195423,
		0.672041, -0.686840, -0.276788,
		0.334891, -0.051476, 0.940850,
		24.472778, 35.030628, 35.258106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436970, 34.331047, 34.745731>,  <24.238354, 35.066662, 34.599514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436970, 34.331047, 34.745731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334135, 34.488232, 35.098888>,  <24.272434, 34.582542, 35.310783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334135, 34.488232, 35.098888>,  <24.436970, 34.331047, 34.745731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334135, 34.488232, 35.098888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732183, -0.675472, 0.087439,
		0.630726, -0.623957, 0.461370,
		-0.257085, 0.392957, 0.882888,
		24.257010, 34.606117, 35.363754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.648340, 34.086632, 35.503304>,  <24.436970, 34.331047, 34.745731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.648340, 34.086632, 35.503304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302883, 34.247200, 35.625275>,  <24.095610, 34.343540, 35.698460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302883, 34.247200, 35.625275>,  <24.648340, 34.086632, 35.503304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302883, 34.247200, 35.625275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259702, -0.872743, 0.413370,
		0.432062, 0.277812, 0.857988,
		-0.863642, 0.401422, 0.304930,
		24.043791, 34.367626, 35.716755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309490, 34.200993, 35.044193>,  <24.648340, 34.086632, 35.503304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309490, 34.200993, 35.044193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438761, 34.552856, 34.904617>,  <25.516323, 34.763973, 34.820873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438761, 34.552856, 34.904617>,  <25.309490, 34.200993, 35.044193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438761, 34.552856, 34.904617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511343, 0.147943, 0.846546,
		0.796295, -0.452012, -0.401996,
		0.323177, 0.879658, -0.348939,
		25.535713, 34.816753, 34.799934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022434, 34.235615, 35.226685>,  <25.309490, 34.200993, 35.044193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022434, 34.235615, 35.226685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894922, 34.611721, 35.178890>,  <25.818415, 34.837387, 35.150215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894922, 34.611721, 35.178890>,  <26.022434, 34.235615, 35.226685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894922, 34.611721, 35.178890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495583, 0.272805, 0.824606,
		0.807946, 0.203653, -0.552945,
		-0.318780, 0.940267, -0.119485,
		25.799288, 34.893803, 35.143044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585651, 34.799595, 35.001266>,  <26.022434, 34.235615, 35.226685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585651, 34.799595, 35.001266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283665, 34.896591, 35.244980>,  <26.102472, 34.954788, 35.391209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283665, 34.896591, 35.244980>,  <26.585651, 34.799595, 35.001266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283665, 34.896591, 35.244980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655652, 0.262007, 0.708148,
		0.012083, 0.934104, -0.356796,
		-0.754967, 0.242490, 0.609281,
		26.057175, 34.969337, 35.427765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757618, 35.445652, 35.408432>,  <26.585651, 34.799595, 35.001266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757618, 35.445652, 35.408432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483879, 35.205910, 35.574539>,  <26.319635, 35.062065, 35.674202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483879, 35.205910, 35.574539>,  <26.757618, 35.445652, 35.408432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483879, 35.205910, 35.574539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527874, -0.014358, 0.849201,
		-0.503012, 0.800354, 0.326210,
		-0.684345, -0.599356, 0.415264,
		26.278576, 35.026104, 35.699120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905941, 35.584805, 36.076611>,  <26.757618, 35.445652, 35.408432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905941, 35.584805, 36.076611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286615, 35.473606, 36.128780>,  <27.515020, 35.406887, 36.160084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286615, 35.473606, 36.128780>,  <26.905941, 35.584805, 36.076611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286615, 35.473606, 36.128780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168595, 0.118047, -0.978591,
		0.256645, 0.953302, 0.159212,
		0.951688, -0.277992, 0.130426,
		27.572123, 35.390209, 36.167908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332050, 35.991692, 35.713310>,  <26.905941, 35.584805, 36.076611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332050, 35.991692, 35.713310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580002, 35.682682, 35.768383>,  <27.728773, 35.497276, 35.801426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580002, 35.682682, 35.768383>,  <27.332050, 35.991692, 35.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580002, 35.682682, 35.768383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183336, -0.028024, -0.982651,
		0.762981, 0.634365, 0.124260,
		0.619877, -0.772525, 0.137683,
		27.765965, 35.450924, 35.809689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754232, 36.074284, 35.140594>,  <27.332050, 35.991692, 35.713310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754232, 36.074284, 35.140594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896091, 35.715820, 35.247272>,  <27.981207, 35.500744, 35.311279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896091, 35.715820, 35.247272>,  <27.754232, 36.074284, 35.140594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896091, 35.715820, 35.247272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436763, -0.093419, -0.894713,
		0.826719, 0.433790, 0.358278,
		0.354647, -0.896158, 0.266695,
		28.002485, 35.446972, 35.327282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444891, 36.190205, 35.150570>,  <27.754232, 36.074284, 35.140594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444891, 36.190205, 35.150570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349670, 35.805321, 35.097683>,  <28.292538, 35.574390, 35.065948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349670, 35.805321, 35.097683>,  <28.444891, 36.190205, 35.150570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349670, 35.805321, 35.097683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453843, 0.010158, -0.891024,
		0.858696, -0.272116, 0.434275,
		-0.238051, -0.962211, -0.132220,
		28.278255, 35.516659, 35.058018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993004, 35.835781, 35.147930>,  <28.444891, 36.190205, 35.150570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993004, 35.835781, 35.147930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755577, 35.577839, 34.955330>,  <28.613121, 35.423073, 34.839767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755577, 35.577839, 34.955330>,  <28.993004, 35.835781, 35.147930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755577, 35.577839, 34.955330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619616, 0.015628, -0.784750,
		0.513573, -0.764147, 0.390285,
		-0.593565, -0.644853, -0.481503,
		28.577507, 35.384384, 34.810879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361271, 35.345913, 34.818886>,  <28.993004, 35.835781, 35.147930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361271, 35.345913, 34.818886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020802, 35.289265, 34.616718>,  <28.816521, 35.255276, 34.495419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.020802, 35.289265, 34.616718>,  <29.361271, 35.345913, 34.818886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020802, 35.289265, 34.616718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519850, -0.094380, -0.849028,
		0.072540, -0.985411, 0.153956,
		-0.851172, -0.141623, -0.505419,
		28.765450, 35.246777, 34.465092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553022, 35.024445, 34.328339>,  <29.361271, 35.345913, 34.818886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553022, 35.024445, 34.328339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189583, 35.123550, 34.193840>,  <28.971519, 35.183014, 34.113140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189583, 35.123550, 34.193840>,  <29.553022, 35.024445, 34.328339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189583, 35.123550, 34.193840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350805, 0.015773, -0.936316,
		-0.226687, -0.968691, -0.101250,
		-0.908597, 0.247769, -0.336246,
		28.917004, 35.197880, 34.092968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522573, 34.720535, 33.765717>,  <29.553022, 35.024445, 34.328339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522573, 34.720535, 33.765717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247240, 35.006096, 33.714275>,  <29.082039, 35.177433, 33.683411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247240, 35.006096, 33.714275>,  <29.522573, 34.720535, 33.765717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247240, 35.006096, 33.714275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208823, 0.025232, -0.977628,
		-0.694686, -0.699790, -0.166447,
		-0.688334, 0.713903, -0.128604,
		29.040739, 35.220268, 33.675694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153996, 34.529198, 33.180103>,  <29.522573, 34.720535, 33.765717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153996, 34.529198, 33.180103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121729, 34.926586, 33.212357>,  <29.102369, 35.165020, 33.231709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121729, 34.926586, 33.212357>,  <29.153996, 34.529198, 33.180103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121729, 34.926586, 33.212357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004845, 0.081287, -0.996679,
		-0.996729, -0.080007, -0.011370,
		-0.080665, 0.993474, 0.080634,
		29.097528, 35.224628, 33.236546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584080, 34.847862, 32.643307>,  <29.153996, 34.529198, 33.180103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584080, 34.847862, 32.643307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828991, 35.152359, 32.728748>,  <28.975939, 35.335056, 32.780014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828991, 35.152359, 32.728748>,  <28.584080, 34.847862, 32.643307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828991, 35.152359, 32.728748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011824, 0.261316, -0.965181,
		-0.790553, 0.593486, 0.150998,
		0.612279, 0.761241, 0.213601,
		29.012674, 35.380730, 32.792828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455091, 35.487221, 32.079281>,  <28.584080, 34.847862, 32.643307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455091, 35.487221, 32.079281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788280, 35.599411, 32.270065>,  <28.988194, 35.666725, 32.384537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788280, 35.599411, 32.270065>,  <28.455091, 35.487221, 32.079281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788280, 35.599411, 32.270065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279524, 0.530625, -0.800190,
		-0.477518, 0.799858, 0.363597,
		0.832972, 0.280471, 0.476963,
		29.038172, 35.683552, 32.413155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455992, 36.138931, 31.962921>,  <28.455091, 35.487221, 32.079281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455992, 36.138931, 31.962921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836966, 36.074211, 32.066219>,  <29.065550, 36.035378, 32.128197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836966, 36.074211, 32.066219>,  <28.455992, 36.138931, 31.962921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836966, 36.074211, 32.066219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303777, 0.571680, -0.762169,
		-0.024312, 0.804364, 0.593639,
		0.952433, -0.161804, 0.258246,
		29.122696, 36.025669, 32.143692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829460, 36.815212, 31.959641>,  <28.455992, 36.138931, 31.962921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829460, 36.815212, 31.959641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123148, 36.545624, 31.926949>,  <29.299360, 36.383869, 31.907333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123148, 36.545624, 31.926949>,  <28.829460, 36.815212, 31.959641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123148, 36.545624, 31.926949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380336, 0.508050, -0.772806,
		0.562373, 0.536326, 0.629358,
		0.734222, -0.673972, -0.081729,
		29.343414, 36.343433, 31.902430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388933, 37.179028, 31.838379>,  <28.829460, 36.815212, 31.959641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388933, 37.179028, 31.838379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484978, 36.826050, 31.676569>,  <29.542604, 36.614262, 31.579483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484978, 36.826050, 31.676569>,  <29.388933, 37.179028, 31.838379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484978, 36.826050, 31.676569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233363, 0.456965, -0.858327,
		0.942279, 0.111691, 0.315651,
		0.240109, -0.882444, -0.404524,
		29.557011, 36.561317, 31.555212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079130, 37.246120, 31.497126>,  <29.388933, 37.179028, 31.838379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079130, 37.246120, 31.497126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918438, 36.919685, 31.330938>,  <29.822023, 36.723824, 31.231226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918438, 36.919685, 31.330938>,  <30.079130, 37.246120, 31.497126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918438, 36.919685, 31.330938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279684, 0.322669, -0.904246,
		0.872004, -0.479461, 0.098622,
		-0.401729, -0.816089, -0.415467,
		29.797918, 36.674858, 31.206299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590580, 37.016739, 31.028015>,  <30.079130, 37.246120, 31.497126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590580, 37.016739, 31.028015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255857, 36.842709, 30.895073>,  <30.055023, 36.738289, 30.815308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255857, 36.842709, 30.895073>,  <30.590580, 37.016739, 31.028015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255857, 36.842709, 30.895073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296821, 0.149576, -0.943146,
		0.460056, -0.887881, 0.003975,
		-0.836807, -0.435079, -0.332355,
		30.004816, 36.712185, 30.795366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826828, 36.640022, 30.485220>,  <30.590580, 37.016739, 31.028015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826828, 36.640022, 30.485220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429857, 36.664314, 30.442514>,  <30.191675, 36.678890, 30.416891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429857, 36.664314, 30.442514>,  <30.826828, 36.640022, 30.485220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429857, 36.664314, 30.442514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113238, 0.115702, -0.986808,
		-0.047578, -0.991426, -0.121703,
		-0.992428, 0.060732, -0.106762,
		30.132130, 36.682533, 30.410486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700394, 36.234638, 29.855860>,  <30.826828, 36.640022, 30.485220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700394, 36.234638, 29.855860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412676, 36.497780, 29.945162>,  <30.240046, 36.655666, 29.998743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412676, 36.497780, 29.945162>,  <30.700394, 36.234638, 29.855860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412676, 36.497780, 29.945162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007762, 0.313735, -0.949479,
		-0.694661, -0.684689, -0.220562,
		-0.719295, 0.657854, 0.223254,
		30.196888, 36.695137, 30.012138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975464, 36.072964, 29.692110>,  <30.700394, 36.234638, 29.855860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975464, 36.072964, 29.692110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115370, 36.447441, 29.678219>,  <30.199312, 36.672127, 29.669884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115370, 36.447441, 29.678219>,  <29.975464, 36.072964, 29.692110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115370, 36.447441, 29.678219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085232, -0.005119, -0.996348,
		-0.932953, 0.351446, 0.078003,
		0.349763, 0.936194, -0.034730,
		30.220299, 36.728298, 29.667799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520510, 36.643776, 29.218901>,  <29.975464, 36.072964, 29.692110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520510, 36.643776, 29.218901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902946, 36.759514, 29.237526>,  <30.132408, 36.828957, 29.248701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902946, 36.759514, 29.237526>,  <29.520510, 36.643776, 29.218901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902946, 36.759514, 29.237526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057252, -0.028584, -0.997950,
		-0.287424, 0.956797, -0.043894,
		0.956091, 0.289348, 0.046563,
		30.189774, 36.846317, 29.251495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759781, 37.356567, 28.901545>,  <29.520510, 36.643776, 29.218901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759781, 37.356567, 28.901545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007051, 37.044636, 28.862085>,  <30.155415, 36.857479, 28.838409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007051, 37.044636, 28.862085>,  <29.759781, 37.356567, 28.901545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007051, 37.044636, 28.862085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197870, -0.032924, -0.979675,
		0.760727, 0.625131, -0.174657,
		0.618176, -0.779825, -0.098649,
		30.192505, 36.810688, 28.832491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351007, 37.697586, 28.621960>,  <29.759781, 37.356567, 28.901545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351007, 37.697586, 28.621960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740202, 37.655506, 28.539759>,  <30.973719, 37.630257, 28.490438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740202, 37.655506, 28.539759>,  <30.351007, 37.697586, 28.621960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740202, 37.655506, 28.539759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062296, 0.976759, -0.205087,
		0.222304, 0.186745, 0.956926,
		0.972985, -0.105204, -0.205504,
		31.032097, 37.623943, 28.478107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866896, 38.006939, 29.147543>,  <30.351007, 37.697586, 28.621960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866896, 38.006939, 29.147543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985571, 38.018784, 28.765738>,  <31.056776, 38.025890, 28.536654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985571, 38.018784, 28.765738>,  <30.866896, 38.006939, 29.147543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985571, 38.018784, 28.765738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147772, 0.988904, -0.015256,
		0.943472, 0.145577, 0.297772,
		0.296688, 0.029609, -0.954515,
		31.074577, 38.027668, 28.479383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379673, 38.449230, 29.188635>,  <30.866896, 38.006939, 29.147543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379673, 38.449230, 29.188635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206198, 38.423664, 28.829117>,  <31.102114, 38.408325, 28.613407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206198, 38.423664, 28.829117>,  <31.379673, 38.449230, 29.188635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206198, 38.423664, 28.829117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083547, 0.996036, -0.030520,
		0.897182, 0.061856, -0.437308,
		-0.433686, -0.063917, -0.898794,
		31.076092, 38.404488, 28.559479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753717, 38.860901, 28.795334>,  <31.379673, 38.449230, 29.188635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753717, 38.860901, 28.795334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369570, 38.885666, 28.686626>,  <31.139082, 38.900524, 28.621403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369570, 38.885666, 28.686626>,  <31.753717, 38.860901, 28.795334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369570, 38.885666, 28.686626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019300, 0.957912, 0.286411,
		0.278062, 0.280306, -0.918754,
		-0.960369, 0.061908, -0.271769,
		31.081459, 38.904240, 28.605095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664934, 39.558762, 28.441059>,  <31.753717, 38.860901, 28.795334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664934, 39.558762, 28.441059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305662, 39.434116, 28.565105>,  <31.090099, 39.359329, 28.639534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305662, 39.434116, 28.565105>,  <31.664934, 39.558762, 28.441059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305662, 39.434116, 28.565105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177786, 0.902604, 0.392043,
		-0.402078, 0.296991, -0.866100,
		-0.898179, -0.311612, 0.310117,
		31.036209, 39.340633, 28.658140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146406, 40.042038, 28.116123>,  <31.664934, 39.558762, 28.441059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146406, 40.042038, 28.116123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977064, 39.865875, 28.432808>,  <30.875460, 39.760178, 28.622820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977064, 39.865875, 28.432808>,  <31.146406, 40.042038, 28.116123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977064, 39.865875, 28.432808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309319, 0.891644, 0.330596,
		-0.851523, -0.104932, -0.513709,
		-0.423356, -0.440410, 0.791713,
		30.850058, 39.733753, 28.670322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840330, 40.283340, 28.160990>,  <31.146406, 40.042038, 28.116123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840330, 40.283340, 28.160990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066360, 40.610905, 28.201136>,  <32.201981, 40.807442, 28.225224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066360, 40.610905, 28.201136>,  <31.840330, 40.283340, 28.160990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066360, 40.610905, 28.201136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070846, -0.169363, 0.983004,
		0.821990, -0.548363, -0.153720,
		0.565078, 0.818910, 0.100365,
		32.235886, 40.856579, 28.231245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351620, 40.040333, 28.652029>,  <31.840330, 40.283340, 28.160990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351620, 40.040333, 28.652029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323605, 40.439156, 28.664532>,  <32.306797, 40.678448, 28.672033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323605, 40.439156, 28.664532>,  <32.351620, 40.040333, 28.652029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323605, 40.439156, 28.664532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027524, -0.033254, 0.999068,
		0.997165, 0.069109, 0.029772,
		-0.070035, 0.997055, 0.031258,
		32.302593, 40.738274, 28.673908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810696, 40.239929, 29.098639>,  <32.351620, 40.040333, 28.652029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810696, 40.239929, 29.098639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526474, 40.519829, 29.069061>,  <32.355942, 40.687771, 29.051315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526474, 40.519829, 29.069061>,  <32.810696, 40.239929, 29.098639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526474, 40.519829, 29.069061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178621, -0.077733, 0.980843,
		0.680598, 0.710145, 0.180224,
		-0.710550, 0.699751, -0.073942,
		32.313309, 40.729755, 29.046879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880562, 40.625202, 29.713367>,  <32.810696, 40.239929, 29.098639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880562, 40.625202, 29.713367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515617, 40.723011, 29.582037>,  <32.296650, 40.781696, 29.503239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515617, 40.723011, 29.582037>,  <32.880562, 40.625202, 29.713367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515617, 40.723011, 29.582037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364692, -0.121111, 0.923218,
		0.185980, 0.962051, 0.199672,
		-0.912366, 0.244519, -0.328328,
		32.241909, 40.796368, 29.483538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713844, 41.140724, 30.166641>,  <32.880562, 40.625202, 29.713367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713844, 41.140724, 30.166641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387142, 40.969639, 30.011732>,  <32.191120, 40.866989, 29.918787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387142, 40.969639, 30.011732>,  <32.713844, 41.140724, 30.166641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387142, 40.969639, 30.011732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334914, -0.195125, 0.921824,
		-0.469839, 0.882605, 0.016123,
		-0.816752, -0.427709, -0.387274,
		32.142117, 40.841328, 29.895550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354874, 41.193783, 30.710791>,  <32.713844, 41.140724, 30.166641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354874, 41.193783, 30.710791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143154, 40.945282, 30.479656>,  <32.016121, 40.796181, 30.340975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143154, 40.945282, 30.479656>,  <32.354874, 41.193783, 30.710791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143154, 40.945282, 30.479656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411406, -0.407704, 0.815183,
		-0.742017, 0.669199, -0.039789,
		-0.529298, -0.621249, -0.577836,
		31.984365, 40.758907, 30.306305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716721, 41.208675, 31.027903>,  <32.354874, 41.193783, 30.710791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716721, 41.208675, 31.027903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727074, 40.875145, 30.807337>,  <31.733286, 40.675026, 30.674997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727074, 40.875145, 30.807337>,  <31.716721, 41.208675, 31.027903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727074, 40.875145, 30.807337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457711, -0.500268, 0.735005,
		-0.888724, 0.233365, -0.394601,
		0.025882, -0.833830, -0.551414,
		31.734838, 40.624996, 30.641912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011745, 40.841160, 31.091862>,  <31.716721, 41.208675, 31.027903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011745, 40.841160, 31.091862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283394, 40.558823, 31.011284>,  <31.446383, 40.389420, 30.962936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283394, 40.558823, 31.011284>,  <31.011745, 40.841160, 31.091862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283394, 40.558823, 31.011284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427458, -0.603395, 0.673197,
		-0.596720, -0.371075, -0.711497,
		0.679121, -0.705845, -0.201439,
		31.487129, 40.347069, 30.950850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654247, 40.126923, 31.001919>,  <31.011745, 40.841160, 31.091862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654247, 40.126923, 31.001919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039917, 40.066448, 31.089111>,  <31.271318, 40.030163, 31.141426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039917, 40.066448, 31.089111>,  <30.654247, 40.126923, 31.001919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039917, 40.066448, 31.089111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248481, -0.802446, 0.542529,
		0.092897, -0.577256, -0.811262,
		0.964172, -0.151183, 0.217982,
		31.329168, 40.021091, 31.154507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741989, 39.434109, 30.934956>,  <30.654247, 40.126923, 31.001919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741989, 39.434109, 30.934956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050613, 39.513973, 31.176559>,  <31.235788, 39.561890, 31.321522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050613, 39.513973, 31.176559>,  <30.741989, 39.434109, 30.934956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050613, 39.513973, 31.176559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107730, -0.894751, 0.433375,
		0.626967, -0.399446, -0.668846,
		0.771561, 0.199657, 0.604012,
		31.282082, 39.573872, 31.357763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140324, 38.774734, 31.073910>,  <30.741989, 39.434109, 30.934956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140324, 38.774734, 31.073910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257465, 39.015228, 31.371300>,  <31.327751, 39.159523, 31.549734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257465, 39.015228, 31.371300>,  <31.140324, 38.774734, 31.073910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257465, 39.015228, 31.371300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071526, -0.761610, 0.644077,
		0.953478, -0.241798, -0.180037,
		0.292854, 0.601236, 0.743473,
		31.345322, 39.195599, 31.594341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503889, 38.301277, 31.532364>,  <31.140324, 38.774734, 31.073910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503889, 38.301277, 31.532364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462543, 38.640862, 31.739662>,  <31.437737, 38.844612, 31.864040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462543, 38.640862, 31.739662>,  <31.503889, 38.301277, 31.532364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462543, 38.640862, 31.739662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044961, -0.524493, 0.850227,
		0.993627, 0.064581, 0.092384,
		-0.103363, 0.848962, 0.518246,
		31.431534, 38.895550, 31.895136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987494, 38.123821, 32.152538>,  <31.503889, 38.301277, 31.532364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987494, 38.123821, 32.152538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692387, 38.385315, 32.219868>,  <31.515324, 38.542210, 32.260265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692387, 38.385315, 32.219868>,  <31.987494, 38.123821, 32.152538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692387, 38.385315, 32.219868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230445, -0.478263, 0.847443,
		0.634505, 0.586426, 0.503496,
		-0.737766, 0.653735, 0.168321,
		31.471056, 38.581436, 32.270363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110569, 38.338242, 32.777664>,  <31.987494, 38.123821, 32.152538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110569, 38.338242, 32.777664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724634, 38.434189, 32.734684>,  <31.493073, 38.491756, 32.708897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724634, 38.434189, 32.734684>,  <32.110569, 38.338242, 32.777664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724634, 38.434189, 32.734684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229013, -0.566623, 0.791512,
		0.128978, 0.788290, 0.601634,
		-0.964841, 0.239869, -0.107447,
		31.435183, 38.506149, 32.702450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920578, 38.443993, 33.472755>,  <32.110569, 38.338242, 32.777664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920578, 38.443993, 33.472755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582371, 38.386433, 33.267078>,  <31.379446, 38.351894, 33.143673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582371, 38.386433, 33.267078>,  <31.920578, 38.443993, 33.472755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582371, 38.386433, 33.267078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383787, -0.505732, 0.772621,
		-0.371224, 0.850604, 0.372378,
		-0.845518, -0.143902, -0.514190,
		31.328716, 38.343262, 33.112820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397469, 38.651653, 33.891693>,  <31.920578, 38.443993, 33.472755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397469, 38.651653, 33.891693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239096, 38.401600, 33.622635>,  <31.144072, 38.251568, 33.461201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239096, 38.401600, 33.622635>,  <31.397469, 38.651653, 33.891693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239096, 38.401600, 33.622635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376036, -0.557898, 0.739829,
		-0.837757, 0.545860, -0.014182,
		-0.395931, -0.625130, -0.672646,
		31.120317, 38.214062, 33.420841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683081, 38.567074, 34.174675>,  <31.397469, 38.651653, 33.891693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683081, 38.567074, 34.174675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724476, 38.260929, 33.920586>,  <30.749313, 38.077240, 33.768131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724476, 38.260929, 33.920586>,  <30.683081, 38.567074, 34.174675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724476, 38.260929, 33.920586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497254, -0.592924, 0.633388,
		-0.861411, 0.250317, -0.441942,
		0.103490, -0.765365, -0.635222,
		30.755524, 38.031319, 33.730019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932617, 38.253036, 34.159966>,  <30.683081, 38.567074, 34.174675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932617, 38.253036, 34.159966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179396, 37.969746, 34.022686>,  <30.327463, 37.799770, 33.940319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179396, 37.969746, 34.022686>,  <29.932617, 38.253036, 34.159966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179396, 37.969746, 34.022686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468656, -0.680947, 0.562737,
		-0.632249, -0.186336, -0.752024,
		0.616947, -0.708230, -0.343200,
		30.364479, 37.757278, 33.919727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548384, 37.647915, 34.181965>,  <29.932617, 38.253036, 34.159966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548384, 37.647915, 34.181965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936491, 37.551224, 34.177132>,  <30.169355, 37.493210, 34.174232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936491, 37.551224, 34.177132>,  <29.548384, 37.647915, 34.181965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936491, 37.551224, 34.177132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144849, -0.619939, 0.771164,
		-0.193901, -0.746487, -0.636522,
		0.970268, -0.241729, -0.012079,
		30.227571, 37.478706, 34.173508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549416, 36.805225, 34.219196>,  <29.548384, 37.647915, 34.181965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549416, 36.805225, 34.219196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913294, 36.935921, 34.321724>,  <30.131620, 37.014336, 34.383240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913294, 36.935921, 34.321724>,  <29.549416, 36.805225, 34.219196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913294, 36.935921, 34.321724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025011, -0.659206, 0.751546,
		0.414524, -0.677267, -0.607848,
		0.909695, 0.326737, 0.256318,
		30.186203, 37.033943, 34.398621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992226, 36.214134, 34.192356>,  <29.549416, 36.805225, 34.219196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992226, 36.214134, 34.192356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157398, 36.473824, 34.447853>,  <30.256502, 36.629639, 34.601151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157398, 36.473824, 34.447853>,  <29.992226, 36.214134, 34.192356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157398, 36.473824, 34.447853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058282, -0.718725, 0.692847,
		0.908895, -0.248872, -0.334624,
		0.412933, 0.649228, 0.638740,
		30.281279, 36.668591, 34.639477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502823, 35.857330, 34.453316>,  <29.992226, 36.214134, 34.192356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502823, 35.857330, 34.453316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483538, 36.158932, 34.715355>,  <30.471968, 36.339893, 34.872578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483538, 36.158932, 34.715355>,  <30.502823, 35.857330, 34.453316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483538, 36.158932, 34.715355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119482, -0.646795, 0.753246,
		0.991665, 0.114587, -0.058908,
		-0.048211, 0.754007, 0.655095,
		30.469074, 36.385132, 34.911884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011065, 35.799114, 34.883865>,  <30.502823, 35.857330, 34.453316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011065, 35.799114, 34.883865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773922, 36.035683, 35.102497>,  <30.631638, 36.177624, 35.233673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773922, 36.035683, 35.102497>,  <31.011065, 35.799114, 34.883865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773922, 36.035683, 35.102497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218912, -0.534800, 0.816129,
		0.774984, 0.603498, 0.187590,
		-0.592855, 0.591421, 0.546575,
		30.596066, 36.213108, 35.266468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314091, 35.953979, 35.456257>,  <31.011065, 35.799114, 34.883865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314091, 35.953979, 35.456257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936474, 36.041553, 35.554928>,  <30.709904, 36.094097, 35.614132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936474, 36.041553, 35.554928>,  <31.314091, 35.953979, 35.456257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936474, 36.041553, 35.554928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082283, -0.567927, 0.818956,
		0.319396, 0.793426, 0.518132,
		-0.944042, 0.218938, 0.246679,
		30.653261, 36.107235, 35.628933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894981, 35.710220, 35.039730>,  <31.314091, 35.953979, 35.456257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894981, 35.710220, 35.039730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098217, 35.977215, 34.821995>,  <32.220158, 36.137413, 34.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098217, 35.977215, 34.821995>,  <31.894981, 35.710220, 35.039730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098217, 35.977215, 34.821995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559827, 0.224354, 0.797658,
		0.654554, -0.710015, -0.259688,
		0.508088, 0.667490, -0.544338,
		32.250645, 36.177464, 34.658695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603901, 35.862869, 35.272472>,  <31.894981, 35.710220, 35.039730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603901, 35.862869, 35.272472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565025, 36.214455, 35.085716>,  <32.541698, 36.425404, 34.973663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565025, 36.214455, 35.085716>,  <32.603901, 35.862869, 35.272472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565025, 36.214455, 35.085716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593240, 0.427828, 0.681931,
		0.799137, -0.210701, -0.563014,
		-0.097189, 0.878959, -0.466889,
		32.535870, 36.478142, 34.945648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259892, 36.181900, 35.011623>,  <32.603901, 35.862869, 35.272472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259892, 36.181900, 35.011623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007446, 36.464127, 35.140545>,  <32.855980, 36.633461, 35.217899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007446, 36.464127, 35.140545>,  <33.259892, 36.181900, 35.011623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007446, 36.464127, 35.140545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695681, 0.331051, 0.637521,
		0.343112, 0.626567, -0.699777,
		-0.631111, 0.705563, 0.322304,
		32.818111, 36.675797, 35.237236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609970, 36.900761, 35.064865>,  <33.259892, 36.181900, 35.011623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609970, 36.900761, 35.064865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309742, 36.875748, 35.327991>,  <33.129604, 36.860741, 35.485867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309742, 36.875748, 35.327991>,  <33.609970, 36.900761, 35.064865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309742, 36.875748, 35.327991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625141, 0.255342, 0.737563,
		-0.214094, 0.964826, -0.152559,
		-0.750575, -0.062537, 0.657820,
		33.084568, 36.856987, 35.525337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569275, 37.520393, 35.526199>,  <33.609970, 36.900761, 35.064865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569275, 37.520393, 35.526199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423626, 37.192562, 35.703156>,  <33.336239, 36.995865, 35.809330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423626, 37.192562, 35.703156>,  <33.569275, 37.520393, 35.526199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423626, 37.192562, 35.703156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591244, 0.163603, 0.789724,
		-0.719616, 0.549117, 0.424999,
		-0.364120, -0.819576, 0.442393,
		33.314388, 36.946690, 35.835873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290554, 37.645920, 36.215015>,  <33.569275, 37.520393, 35.526199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290554, 37.645920, 36.215015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431503, 37.273487, 36.177235>,  <33.516071, 37.050026, 36.154568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431503, 37.273487, 36.177235>,  <33.290554, 37.645920, 36.215015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431503, 37.273487, 36.177235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589306, 0.142353, 0.795269,
		-0.727015, -0.335893, 0.598853,
		0.352374, -0.931081, -0.094451,
		33.537216, 36.994164, 36.148899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143063, 37.266685, 36.825951>,  <33.290554, 37.645920, 36.215015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143063, 37.266685, 36.825951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449661, 37.063641, 36.668564>,  <33.633621, 36.941814, 36.574131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449661, 37.063641, 36.668564>,  <33.143063, 37.266685, 36.825951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449661, 37.063641, 36.668564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437908, -0.035093, 0.898335,
		-0.469814, -0.860870, 0.195388,
		0.766493, -0.507612, -0.393469,
		33.679607, 36.911358, 36.550522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152184, 36.588520, 37.194572>,  <33.143063, 37.266685, 36.825951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152184, 36.588520, 37.194572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497044, 36.724346, 37.044159>,  <33.703960, 36.805840, 36.953911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497044, 36.724346, 37.044159>,  <33.152184, 36.588520, 37.194572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497044, 36.724346, 37.044159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437413, -0.124301, 0.890628,
		0.255681, -0.932334, -0.255694,
		0.862146, 0.339561, -0.376034,
		33.755688, 36.826214, 36.931347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589455, 36.093498, 37.256989>,  <33.152184, 36.588520, 37.194572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589455, 36.093498, 37.256989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781986, 36.443722, 37.273598>,  <33.897507, 36.653854, 37.283566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781986, 36.443722, 37.273598>,  <33.589455, 36.093498, 37.256989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781986, 36.443722, 37.273598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406971, -0.265188, 0.874100,
		0.776334, -0.403832, -0.483968,
		0.481332, 0.875554, 0.041527,
		33.926384, 36.706387, 37.286057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180210, 35.851994, 37.538586>,  <33.589455, 36.093498, 37.256989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180210, 35.851994, 37.538586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120785, 36.244633, 37.586582>,  <34.085129, 36.480217, 37.615379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120785, 36.244633, 37.586582>,  <34.180210, 35.851994, 37.538586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120785, 36.244633, 37.586582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294168, -0.071979, 0.953039,
		0.944137, 0.176884, -0.278061,
		-0.148563, 0.981596, 0.119991,
		34.076218, 36.539112, 37.622578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753315, 36.066624, 37.953472>,  <34.180210, 35.851994, 37.538586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753315, 36.066624, 37.953472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503204, 36.373909, 38.008446>,  <34.353138, 36.558281, 38.041428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503204, 36.373909, 38.008446>,  <34.753315, 36.066624, 37.953472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503204, 36.373909, 38.008446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352588, 0.120982, 0.927925,
		0.696213, 0.628664, -0.346508,
		-0.625275, 0.768209, 0.137430,
		34.315620, 36.604370, 38.049675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111420, 36.479599, 38.502422>,  <34.753315, 36.066624, 37.953472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111420, 36.479599, 38.502422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745758, 36.641674, 38.497730>,  <34.526360, 36.738918, 38.494915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745758, 36.641674, 38.497730>,  <35.111420, 36.479599, 38.502422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745758, 36.641674, 38.497730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058271, 0.159988, 0.985398,
		0.401147, 0.900126, -0.169865,
		-0.914158, 0.405188, -0.011728,
		34.471512, 36.763229, 38.494213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163383, 37.030563, 38.906994>,  <35.111420, 36.479599, 38.502422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163383, 37.030563, 38.906994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778782, 36.921120, 38.896896>,  <34.548019, 36.855453, 38.890839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778782, 36.921120, 38.896896>,  <35.163383, 37.030563, 38.906994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778782, 36.921120, 38.896896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049902, 0.083533, 0.995255,
		-0.270206, 0.958205, -0.093971,
		-0.961508, -0.273614, -0.025245,
		34.490330, 36.839035, 38.889324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739784, 37.605488, 39.249496>,  <35.163383, 37.030563, 38.906994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739784, 37.605488, 39.249496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564522, 37.247074, 39.278152>,  <34.459362, 37.032024, 39.295345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564522, 37.247074, 39.278152>,  <34.739784, 37.605488, 39.249496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564522, 37.247074, 39.278152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030933, 0.064626, 0.997430,
		-0.898364, 0.439251, -0.000599,
		-0.438161, -0.896037, 0.071645,
		34.433075, 36.978264, 39.299644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631504, 37.669476, 39.907043>,  <34.739784, 37.605488, 39.249496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631504, 37.669476, 39.907043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497578, 37.299839, 39.833336>,  <34.417221, 37.078056, 39.789112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497578, 37.299839, 39.833336>,  <34.631504, 37.669476, 39.907043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497578, 37.299839, 39.833336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043339, -0.180243, 0.982667,
		-0.941287, 0.336997, 0.020299,
		-0.334814, -0.924092, -0.184266,
		34.397133, 37.022610, 39.778057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028145, 37.503147, 40.353302>,  <34.631504, 37.669476, 39.907043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028145, 37.503147, 40.353302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186424, 37.154049, 40.238949>,  <34.281391, 36.944588, 40.170338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186424, 37.154049, 40.238949>,  <34.028145, 37.503147, 40.353302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186424, 37.154049, 40.238949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093248, -0.271502, 0.957910,
		-0.913634, -0.405703, -0.026051,
		0.395700, -0.872750, -0.285884,
		34.305134, 36.892223, 40.153183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690926, 36.906639, 40.691704>,  <34.028145, 37.503147, 40.353302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690926, 36.906639, 40.691704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052124, 36.779877, 40.575653>,  <34.268845, 36.703819, 40.506023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052124, 36.779877, 40.575653>,  <33.690926, 36.906639, 40.691704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052124, 36.779877, 40.575653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183150, -0.326915, 0.927137,
		-0.388660, -0.890336, -0.237162,
		0.902995, -0.316905, -0.290124,
		34.323021, 36.684807, 40.488617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817741, 36.230499, 40.984333>,  <33.690926, 36.906639, 40.691704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817741, 36.230499, 40.984333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193825, 36.347191, 40.914009>,  <34.419476, 36.417206, 40.871815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193825, 36.347191, 40.914009>,  <33.817741, 36.230499, 40.984333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193825, 36.347191, 40.914009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282662, -0.380271, 0.880623,
		0.190045, -0.877661, -0.439993,
		0.940205, 0.291727, -0.175812,
		34.475887, 36.434708, 40.861267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205070, 35.816711, 41.260529>,  <33.817741, 36.230499, 40.984333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205070, 35.816711, 41.260529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511715, 36.069740, 41.216423>,  <34.695702, 36.221558, 41.189960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511715, 36.069740, 41.216423>,  <34.205070, 35.816711, 41.260529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511715, 36.069740, 41.216423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445612, -0.400484, 0.800652,
		0.462311, -0.662924, -0.588897,
		0.766615, 0.632570, -0.110259,
		34.741699, 36.259510, 41.183346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804558, 35.435818, 41.229336>,  <34.205070, 35.816711, 41.260529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804558, 35.435818, 41.229336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943554, 35.794361, 41.339462>,  <35.026951, 36.009487, 41.405540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943554, 35.794361, 41.339462>,  <34.804558, 35.435818, 41.229336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943554, 35.794361, 41.339462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344065, -0.395020, 0.851809,
		0.872280, -0.201265, -0.445669,
		0.347488, 0.896354, 0.275320,
		35.047802, 36.063267, 41.422058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492176, 35.221218, 41.471294>,  <34.804558, 35.435818, 41.229336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492176, 35.221218, 41.471294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363262, 35.569344, 41.620258>,  <35.285915, 35.778217, 41.709637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363262, 35.569344, 41.620258>,  <35.492176, 35.221218, 41.471294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363262, 35.569344, 41.620258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339271, -0.261073, 0.903735,
		0.883759, 0.417604, -0.211133,
		-0.322282, 0.870315, 0.372406,
		35.266579, 35.830437, 41.731979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988083, 35.386631, 41.926979>,  <35.492176, 35.221218, 41.471294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988083, 35.386631, 41.926979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707199, 35.647163, 42.041988>,  <35.538670, 35.803482, 42.110996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707199, 35.647163, 42.041988>,  <35.988083, 35.386631, 41.926979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707199, 35.647163, 42.041988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321261, -0.070530, 0.944361,
		0.635372, 0.755507, -0.159721,
		-0.702206, 0.651333, 0.287527,
		35.496536, 35.842564, 42.128246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350578, 35.693027, 42.491184>,  <35.988083, 35.386631, 41.926979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350578, 35.693027, 42.491184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960415, 35.763222, 42.544537>,  <35.726318, 35.805336, 42.576550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960415, 35.763222, 42.544537>,  <36.350578, 35.693027, 42.491184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960415, 35.763222, 42.544537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110079, -0.136453, 0.984512,
		0.190965, 0.974980, 0.113780,
		-0.975405, 0.175482, 0.133383,
		35.667793, 35.815865, 42.584553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294807, 36.061676, 43.115032>,  <36.350578, 35.693027, 42.491184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294807, 36.061676, 43.115032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934639, 35.903023, 43.043568>,  <35.718536, 35.807831, 43.000687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.934639, 35.903023, 43.043568>,  <36.294807, 36.061676, 43.115032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934639, 35.903023, 43.043568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038551, -0.336339, 0.940952,
		-0.433301, 0.854144, 0.287557,
		-0.900425, -0.396629, -0.178665,
		35.664513, 35.784035, 42.989967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785675, 36.261051, 43.655956>,  <36.294807, 36.061676, 43.115032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785675, 36.261051, 43.655956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646446, 35.922173, 43.495403>,  <35.562908, 35.718845, 43.399071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646446, 35.922173, 43.495403>,  <35.785675, 36.261051, 43.655956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646446, 35.922173, 43.495403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124810, -0.382467, 0.915501,
		-0.929123, 0.368756, 0.027387,
		-0.348071, -0.847194, -0.401383,
		35.542027, 35.668015, 43.374989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406002, 36.009991, 44.220360>,  <35.785675, 36.261051, 43.655956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406002, 36.009991, 44.220360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402607, 35.678249, 43.996895>,  <35.400570, 35.479206, 43.862816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402607, 35.678249, 43.996895>,  <35.406002, 36.009991, 44.220360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402607, 35.678249, 43.996895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117700, -0.553972, 0.824173,
		-0.993013, 0.072751, -0.092912,
		-0.008488, -0.829350, -0.558665,
		35.400059, 35.429443, 43.829296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757374, 35.618248, 44.325512>,  <35.406002, 36.009991, 44.220360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757374, 35.618248, 44.325512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032364, 35.352776, 44.207592>,  <35.197357, 35.193493, 44.136841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032364, 35.352776, 44.207592>,  <34.757374, 35.618248, 44.325512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032364, 35.352776, 44.207592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088812, -0.479738, 0.872906,
		-0.720758, -0.573917, -0.388750,
		0.687473, -0.663680, -0.294804,
		35.238605, 35.153671, 44.119152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452278, 35.018982, 44.645123>,  <34.757374, 35.618248, 44.325512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452278, 35.018982, 44.645123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830757, 34.943707, 44.539818>,  <35.057842, 34.898540, 44.476635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830757, 34.943707, 44.539818>,  <34.452278, 35.018982, 44.645123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830757, 34.943707, 44.539818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120367, -0.550484, 0.826123,
		-0.300384, -0.813359, -0.498213,
		0.946193, -0.188186, -0.263258,
		35.114616, 34.887249, 44.460842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586742, 34.313663, 44.655602>,  <34.452278, 35.018982, 44.645123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586742, 34.313663, 44.655602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921326, 34.522514, 44.722195>,  <35.122074, 34.647823, 44.762150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921326, 34.522514, 44.722195>,  <34.586742, 34.313663, 44.655602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921326, 34.522514, 44.722195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120652, -0.471788, 0.873418,
		0.534583, -0.710491, -0.457627,
		0.836459, 0.522128, 0.166487,
		35.172264, 34.679153, 44.772141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023911, 33.844090, 45.022511>,  <34.586742, 34.313663, 44.655602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023911, 33.844090, 45.022511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162498, 34.211319, 45.099548>,  <35.245651, 34.431656, 45.145771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162498, 34.211319, 45.099548>,  <35.023911, 33.844090, 45.022511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162498, 34.211319, 45.099548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222999, -0.280035, 0.933730,
		0.911170, -0.280561, -0.301754,
		0.346470, 0.918077, 0.192595,
		35.266441, 34.486744, 45.157326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698875, 33.776680, 45.342834>,  <35.023911, 33.844090, 45.022511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698875, 33.776680, 45.342834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540840, 34.131824, 45.437157>,  <35.446018, 34.344910, 45.493752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540840, 34.131824, 45.437157>,  <35.698875, 33.776680, 45.342834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540840, 34.131824, 45.437157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151329, -0.190283, 0.969996,
		0.906092, 0.418921, -0.059181,
		-0.395090, 0.887861, 0.235809,
		35.422314, 34.398182, 45.507900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928207, 33.852646, 46.004398>,  <35.698875, 33.776680, 45.342834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928207, 33.852646, 46.004398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704094, 34.182926, 45.978165>,  <35.569626, 34.381096, 45.962425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704094, 34.182926, 45.978165>,  <35.928207, 33.852646, 46.004398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704094, 34.182926, 45.978165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038987, 0.052806, 0.997844,
		0.827383, 0.561633, 0.002605,
		-0.560284, 0.825700, -0.065587,
		35.536007, 34.430637, 45.958488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270649, 34.343609, 46.447861>,  <35.928207, 33.852646, 46.004398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270649, 34.343609, 46.447861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893471, 34.468655, 46.402042>,  <35.667164, 34.543682, 46.374554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893471, 34.468655, 46.402042>,  <36.270649, 34.343609, 46.447861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893471, 34.468655, 46.402042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035549, 0.247537, 0.968226,
		0.331032, 0.917060, -0.222302,
		-0.942950, 0.312611, -0.114543,
		35.610584, 34.562439, 46.367680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334427, 35.010639, 46.615929>,  <36.270649, 34.343609, 46.447861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334427, 35.010639, 46.615929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959988, 34.888901, 46.686474>,  <35.735325, 34.815857, 46.728802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959988, 34.888901, 46.686474>,  <36.334427, 35.010639, 46.615929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959988, 34.888901, 46.686474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100341, 0.249510, 0.963160,
		-0.337136, 0.919304, -0.203026,
		-0.936093, -0.304344, 0.176363,
		35.679161, 34.797596, 46.739384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000877, 35.563145, 46.908348>,  <36.334427, 35.010639, 46.615929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000877, 35.563145, 46.908348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821194, 35.224220, 47.021683>,  <35.713383, 35.020866, 47.089684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821194, 35.224220, 47.021683>,  <36.000877, 35.563145, 46.908348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821194, 35.224220, 47.021683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128002, 0.252823, 0.959008,
		-0.884210, 0.467062, -0.005113,
		-0.449209, -0.847310, 0.283334,
		35.686432, 34.970028, 47.106682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014645, 35.713409, 47.553963>,  <36.000877, 35.563145, 46.908348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014645, 35.713409, 47.553963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867092, 35.341682, 47.547050>,  <35.778561, 35.118645, 47.542904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867092, 35.341682, 47.547050>,  <36.014645, 35.713409, 47.553963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867092, 35.341682, 47.547050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212460, -0.102403, 0.971789,
		-0.904871, 0.354799, 0.235217,
		-0.368877, -0.929318, -0.017281,
		35.756428, 35.062885, 47.541866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535484, 35.797157, 48.055111>,  <36.014645, 35.713409, 47.553963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535484, 35.797157, 48.055111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595757, 35.405350, 48.001682>,  <35.631920, 35.170265, 47.969627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595757, 35.405350, 48.001682>,  <35.535484, 35.797157, 48.055111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595757, 35.405350, 48.001682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070533, -0.124114, 0.989758,
		-0.986063, -0.158559, 0.050387,
		0.150682, -0.979518, -0.133568,
		35.640961, 35.111496, 47.961613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187737, 35.494881, 48.555210>,  <35.535484, 35.797157, 48.055111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187737, 35.494881, 48.555210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444782, 35.209976, 48.442268>,  <35.599010, 35.039032, 48.374504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444782, 35.209976, 48.442268>,  <35.187737, 35.494881, 48.555210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444782, 35.209976, 48.442268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023828, -0.386920, 0.921806,
		-0.765817, -0.585640, -0.265613,
		0.642617, -0.712263, -0.282355,
		35.637566, 34.996296, 48.357563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869675, 34.735188, 48.710217>,  <35.187737, 35.494881, 48.555210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869675, 34.735188, 48.710217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267311, 34.732342, 48.666878>,  <35.505894, 34.730633, 48.640873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267311, 34.732342, 48.666878>,  <34.869675, 34.735188, 48.710217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267311, 34.732342, 48.666878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086870, -0.546564, 0.832900,
		-0.065144, -0.837387, -0.542714,
		0.994088, -0.007113, -0.108349,
		35.565536, 34.730209, 48.634373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077206, 34.162579, 48.962818>,  <34.869675, 34.735188, 48.710217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077206, 34.162579, 48.962818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440613, 34.329716, 48.963169>,  <35.658657, 34.429996, 48.963379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440613, 34.329716, 48.963169>,  <35.077206, 34.162579, 48.962818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440613, 34.329716, 48.963169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268764, -0.585979, 0.764457,
		0.319936, -0.694288, -0.644675,
		0.908519, 0.417843, 0.000876,
		35.713169, 34.455070, 48.963432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497414, 33.596909, 48.959038>,  <35.077206, 34.162579, 48.962818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497414, 33.596909, 48.959038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714554, 33.905388, 49.092045>,  <35.844837, 34.090477, 49.171848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714554, 33.905388, 49.092045>,  <35.497414, 33.596909, 48.959038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714554, 33.905388, 49.092045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332782, -0.561043, 0.757949,
		0.771086, -0.300796, -0.561202,
		0.542847, 0.771202, 0.332513,
		35.877407, 34.136749, 49.191799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210213, 33.364666, 49.055782>,  <35.497414, 33.596909, 48.959038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210213, 33.364666, 49.055782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146214, 33.672886, 49.302570>,  <36.107815, 33.857819, 49.450642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146214, 33.672886, 49.302570>,  <36.210213, 33.364666, 49.055782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146214, 33.672886, 49.302570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550787, -0.448991, 0.703592,
		0.819166, 0.452395, -0.352570,
		-0.160001, 0.770550, 0.616971,
		36.098213, 33.904049, 49.487663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780403, 33.349979, 49.445923>,  <36.210213, 33.364666, 49.055782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780403, 33.349979, 49.445923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489548, 33.545795, 49.638432>,  <36.315037, 33.663284, 49.753937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489548, 33.545795, 49.638432>,  <36.780403, 33.349979, 49.445923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489548, 33.545795, 49.638432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184235, -0.536187, 0.823748,
		0.661310, 0.687644, 0.299691,
		-0.727136, 0.489539, 0.481274,
		36.271408, 33.692657, 49.782814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068951, 33.504940, 50.096233>,  <36.780403, 33.349979, 49.445923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068951, 33.504940, 50.096233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671398, 33.509747, 50.140156>,  <36.432865, 33.512630, 50.166508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671398, 33.509747, 50.140156>,  <37.068951, 33.504940, 50.096233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671398, 33.509747, 50.140156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096051, -0.396891, 0.912826,
		0.054551, 0.917787, 0.393308,
		-0.993880, 0.012018, 0.109806,
		36.373234, 33.513351, 50.173096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097157, 33.570408, 50.790386>,  <37.068951, 33.504940, 50.096233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097157, 33.570408, 50.790386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713009, 33.492428, 50.710701>,  <36.482521, 33.445641, 50.662891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713009, 33.492428, 50.710701>,  <37.097157, 33.570408, 50.790386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713009, 33.492428, 50.710701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098005, -0.432892, 0.896102,
		-0.260934, 0.880112, 0.396630,
		-0.960369, -0.194951, -0.199212,
		36.424900, 33.433941, 50.650936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773212, 33.835083, 51.279037>,  <37.097157, 33.570408, 50.790386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773212, 33.835083, 51.279037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517277, 33.561703, 51.138466>,  <36.363716, 33.397675, 51.054123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517277, 33.561703, 51.138466>,  <36.773212, 33.835083, 51.279037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517277, 33.561703, 51.138466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197085, -0.296062, 0.934615,
		-0.742804, 0.667268, 0.054736,
		-0.639844, -0.683448, -0.351424,
		36.325325, 33.356667, 51.033039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143032, 33.907284, 51.743282>,  <36.773212, 33.835083, 51.279037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143032, 33.907284, 51.743282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157509, 33.551723, 51.560612>,  <36.166195, 33.338387, 51.451012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157509, 33.551723, 51.560612>,  <36.143032, 33.907284, 51.743282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157509, 33.551723, 51.560612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102440, -0.457865, 0.883100,
		-0.994080, 0.014822, -0.107629,
		0.036190, -0.888898, -0.456673,
		36.168365, 33.285053, 51.423611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825649, 34.403805, 52.286972>,  <36.143032, 33.907284, 51.743282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825649, 34.403805, 52.286972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118515, 34.457642, 52.554050>,  <36.294235, 34.489944, 52.714298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118515, 34.457642, 52.554050>,  <35.825649, 34.403805, 52.286972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118515, 34.457642, 52.554050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312907, -0.937183, -0.154198,
		0.604999, 0.321825, -0.728289,
		0.732165, 0.134597, 0.667696,
		36.338165, 34.498020, 52.754360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572342, 34.449741, 52.219318>,  <35.825649, 34.403805, 52.286972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572342, 34.449741, 52.219318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444977, 34.219532, 52.520618>,  <36.368557, 34.081406, 52.701397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444977, 34.219532, 52.520618>,  <36.572342, 34.449741, 52.219318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444977, 34.219532, 52.520618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257798, -0.817231, -0.515436,
		0.912225, 0.030066, 0.408585,
		-0.318411, -0.575526, 0.753249,
		36.349453, 34.046875, 52.746593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001492, 33.836525, 52.276718>,  <36.572342, 34.449741, 52.219318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001492, 33.836525, 52.276718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646767, 33.726646, 52.425365>,  <36.433929, 33.660721, 52.514553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646767, 33.726646, 52.425365>,  <37.001492, 33.836525, 52.276718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646767, 33.726646, 52.425365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072604, -0.876988, -0.474996,
		0.456383, -0.394253, 0.797671,
		-0.886816, -0.274695, 0.371618,
		36.380722, 33.644238, 52.536850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072227, 33.322220, 52.849396>,  <37.001492, 33.836525, 52.276718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072227, 33.322220, 52.849396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751408, 33.330914, 52.610649>,  <36.558914, 33.336128, 52.467403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751408, 33.330914, 52.610649>,  <37.072227, 33.322220, 52.849396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751408, 33.330914, 52.610649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156983, -0.956530, -0.245777,
		-0.576259, -0.290822, 0.763772,
		-0.802049, 0.021732, -0.596863,
		36.510792, 33.337433, 52.431591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669678, 32.713749, 52.894230>,  <37.072227, 33.322220, 52.849396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669678, 32.713749, 52.894230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648018, 32.864174, 52.524227>,  <36.635021, 32.954430, 52.302223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648018, 32.864174, 52.524227>,  <36.669678, 32.713749, 52.894230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648018, 32.864174, 52.524227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308899, -0.874620, -0.373658,
		-0.949552, -0.305970, -0.068802,
		-0.054152, 0.376060, -0.925011,
		36.631771, 32.976994, 52.246723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200775, 32.321487, 52.384438>,  <36.669678, 32.713749, 52.894230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200775, 32.321487, 52.384438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539455, 32.499893, 52.268394>,  <36.742664, 32.606937, 52.198769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539455, 32.499893, 52.268394>,  <36.200775, 32.321487, 52.384438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539455, 32.499893, 52.268394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266361, -0.827332, -0.494545,
		-0.460593, 0.341458, -0.819305,
		0.846703, 0.446014, -0.290112,
		36.793465, 32.633698, 52.181362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321396, 31.936283, 51.794113>,  <36.200775, 32.321487, 52.384438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321396, 31.936283, 51.794113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676941, 32.082077, 51.905155>,  <36.890270, 32.169552, 51.971783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676941, 32.082077, 51.905155>,  <36.321396, 31.936283, 51.794113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676941, 32.082077, 51.905155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458163, -0.708898, -0.536237,
		0.001348, 0.603834, -0.797109,
		0.888867, 0.364483, 0.277610,
		36.943600, 32.191422, 51.988438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788170, 32.375294, 51.246548>,  <36.321396, 31.936283, 51.794113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788170, 32.375294, 51.246548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013851, 32.139778, 51.478065>,  <37.149261, 31.998470, 51.616978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013851, 32.139778, 51.478065>,  <36.788170, 32.375294, 51.246548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013851, 32.139778, 51.478065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214273, -0.572591, -0.791345,
		0.797345, 0.570501, -0.196898,
		0.564206, -0.588785, 0.578795,
		37.183113, 31.963142, 51.651703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551609, 32.343216, 51.102345>,  <36.788170, 32.375294, 51.246548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551609, 32.343216, 51.102345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379196, 32.006042, 51.231140>,  <37.275749, 31.803740, 51.308418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379196, 32.006042, 51.231140>,  <37.551609, 32.343216, 51.102345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379196, 32.006042, 51.231140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210871, -0.441059, -0.872353,
		0.877350, -0.308115, 0.367861,
		-0.431034, -0.842931, 0.321991,
		37.249886, 31.753162, 51.327736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019478, 31.735065, 51.033318>,  <37.551609, 32.343216, 51.102345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019478, 31.735065, 51.033318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631271, 31.643103, 51.004364>,  <37.398346, 31.587925, 50.986992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631271, 31.643103, 51.004364>,  <38.019478, 31.735065, 51.033318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631271, 31.643103, 51.004364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163283, -0.406228, -0.899065,
		0.177299, -0.884376, 0.431791,
		-0.970517, -0.229908, -0.072380,
		37.340115, 31.574131, 50.982651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948349, 31.111210, 50.557377>,  <38.019478, 31.735065, 51.033318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948349, 31.111210, 50.557377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586346, 31.280987, 50.568787>,  <37.369144, 31.382853, 50.575630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586346, 31.280987, 50.568787>,  <37.948349, 31.111210, 50.557377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586346, 31.280987, 50.568787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186038, -0.334599, -0.923815,
		-0.382561, -0.841364, 0.381776,
		-0.905007, 0.424441, 0.028521,
		37.314842, 31.408319, 50.577343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433346, 30.473530, 50.409477>,  <37.948349, 31.111210, 50.557377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433346, 30.473530, 50.409477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319725, 30.850021, 50.336372>,  <37.251553, 31.075916, 50.292511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319725, 30.850021, 50.336372>,  <37.433346, 30.473530, 50.409477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319725, 30.850021, 50.336372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309558, -0.270431, -0.911614,
		-0.907461, -0.202374, 0.368183,
		-0.284055, 0.941229, -0.182759,
		37.234509, 31.132391, 50.281544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811607, 30.376408, 50.057613>,  <37.433346, 30.473530, 50.409477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811607, 30.376408, 50.057613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968468, 30.732635, 49.965439>,  <37.062584, 30.946373, 49.910133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968468, 30.732635, 49.965439>,  <36.811607, 30.376408, 50.057613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968468, 30.732635, 49.965439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381373, -0.070562, -0.921724,
		-0.837122, 0.449336, 0.311969,
		0.392150, 0.890572, -0.230434,
		37.086113, 30.999807, 49.896309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292957, 30.764549, 49.713787>,  <36.811607, 30.376408, 50.057613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292957, 30.764549, 49.713787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636578, 30.934063, 49.598938>,  <36.842751, 31.035772, 49.530029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636578, 30.934063, 49.598938>,  <36.292957, 30.764549, 49.713787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636578, 30.934063, 49.598938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310641, -0.014236, -0.950421,
		-0.406862, 0.905651, 0.119416,
		0.859049, 0.423785, -0.287124,
		36.894291, 31.061199, 49.512802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177456, 31.312416, 49.233391>,  <36.292957, 30.764549, 49.713787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177456, 31.312416, 49.233391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564198, 31.232315, 49.170029>,  <36.796242, 31.184254, 49.132011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564198, 31.232315, 49.170029>,  <36.177456, 31.312416, 49.233391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564198, 31.232315, 49.170029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116284, 0.206979, -0.971410,
		0.227316, 0.957631, 0.176832,
		0.966853, -0.200254, -0.158407,
		36.854252, 31.172239, 49.122505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492470, 31.915127, 48.830002>,  <36.177456, 31.312416, 49.233391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492470, 31.915127, 48.830002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717083, 31.587288, 48.784492>,  <36.851852, 31.390585, 48.757187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717083, 31.587288, 48.784492>,  <36.492470, 31.915127, 48.830002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717083, 31.587288, 48.784492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002340, 0.135920, -0.990717,
		0.827452, 0.556585, 0.074406,
		0.561532, -0.819596, -0.113770,
		36.885544, 31.341410, 48.750362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918221, 32.131981, 48.284893>,  <36.492470, 31.915127, 48.830002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918221, 32.131981, 48.284893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945774, 31.734234, 48.317131>,  <36.962307, 31.495586, 48.336475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945774, 31.734234, 48.317131>,  <36.918221, 32.131981, 48.284893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945774, 31.734234, 48.317131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167234, -0.068134, -0.983560,
		0.983508, 0.081229, 0.161598,
		0.068883, -0.994364, 0.080594,
		36.966438, 31.435925, 48.341309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470844, 31.945007, 47.797054>,  <36.918221, 32.131981, 48.284893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470844, 31.945007, 47.797054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279594, 31.600313, 47.864941>,  <37.164845, 31.393496, 47.905670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279594, 31.600313, 47.864941>,  <37.470844, 31.945007, 47.797054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279594, 31.600313, 47.864941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103758, -0.136456, -0.985197,
		0.872140, -0.488660, -0.024168,
		-0.478129, -0.861737, 0.169711,
		37.136154, 31.341791, 47.915855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841518, 31.457699, 47.341034>,  <37.470844, 31.945007, 47.797054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841518, 31.457699, 47.341034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494621, 31.290701, 47.449543>,  <37.286484, 31.190502, 47.514648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494621, 31.290701, 47.449543>,  <37.841518, 31.457699, 47.341034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494621, 31.290701, 47.449543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222441, -0.162554, -0.961299,
		0.445434, -0.894021, 0.048105,
		-0.867242, -0.417495, 0.271274,
		37.234447, 31.165453, 47.530926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772285, 30.879255, 46.880219>,  <37.841518, 31.457699, 47.341034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772285, 30.879255, 46.880219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402897, 30.932941, 47.023991>,  <37.181263, 30.965153, 47.110252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402897, 30.932941, 47.023991>,  <37.772285, 30.879255, 46.880219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402897, 30.932941, 47.023991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382324, -0.243600, -0.891340,
		-0.032073, -0.960545, 0.276270,
		-0.923472, 0.134213, 0.359427,
		37.125854, 30.973206, 47.131817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450871, 30.238497, 46.790005>,  <37.772285, 30.879255, 46.880219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450871, 30.238497, 46.790005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183121, 30.535662, 46.788559>,  <37.022469, 30.713961, 46.787689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183121, 30.535662, 46.788559>,  <37.450871, 30.238497, 46.790005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183121, 30.535662, 46.788559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275708, -0.252933, -0.927367,
		-0.689869, -0.619761, 0.374135,
		-0.669377, 0.742914, -0.003618,
		36.982307, 30.758535, 46.787472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858673, 30.015446, 46.441669>,  <37.450871, 30.238497, 46.790005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858673, 30.015446, 46.441669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818348, 30.413395, 46.438358>,  <36.794155, 30.652164, 46.436371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818348, 30.413395, 46.438358>,  <36.858673, 30.015446, 46.441669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818348, 30.413395, 46.438358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267348, -0.035106, -0.962960,
		-0.958312, -0.094860, 0.269516,
		-0.100808, 0.994871, -0.008282,
		36.788105, 30.711857, 46.435875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175602, 30.131918, 46.059460>,  <36.858673, 30.015446, 46.441669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175602, 30.131918, 46.059460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399025, 30.463631, 46.066418>,  <36.533077, 30.662659, 46.070591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399025, 30.463631, 46.066418>,  <36.175602, 30.131918, 46.059460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399025, 30.463631, 46.066418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303336, 0.223737, -0.926244,
		-0.772012, 0.512084, 0.376522,
		0.558557, 0.829284, 0.017394,
		36.566593, 30.712416, 46.071636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719486, 30.561144, 45.806801>,  <36.175602, 30.131918, 46.059460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719486, 30.561144, 45.806801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085537, 30.717299, 45.766525>,  <36.305168, 30.810991, 45.742359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085537, 30.717299, 45.766525>,  <35.719486, 30.561144, 45.806801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085537, 30.717299, 45.766525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293407, 0.473599, -0.830431,
		-0.276502, 0.789495, 0.547946,
		0.915128, 0.390387, -0.100692,
		36.360077, 30.834415, 45.736317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600609, 31.195492, 45.688316>,  <35.719486, 30.561144, 45.806801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600609, 31.195492, 45.688316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974831, 31.147160, 45.555569>,  <36.199364, 31.118160, 45.475918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974831, 31.147160, 45.555569>,  <35.600609, 31.195492, 45.688316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974831, 31.147160, 45.555569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165435, 0.680278, -0.714040,
		0.312044, 0.722926, 0.616447,
		0.935553, -0.120830, -0.331874,
		36.255497, 31.110910, 45.456005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789726, 31.852371, 45.414532>,  <35.600609, 31.195492, 45.688316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789726, 31.852371, 45.414532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044876, 31.597841, 45.241001>,  <36.197968, 31.445124, 45.136883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044876, 31.597841, 45.241001>,  <35.789726, 31.852371, 45.414532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044876, 31.597841, 45.241001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020316, 0.549210, -0.835438,
		0.769870, 0.541720, 0.337401,
		0.637877, -0.636324, -0.433826,
		36.236240, 31.406944, 45.110855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216534, 32.232311, 45.059570>,  <35.789726, 31.852371, 45.414532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216534, 32.232311, 45.059570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281567, 31.876993, 44.887756>,  <36.320587, 31.663801, 44.784668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281567, 31.876993, 44.887756>,  <36.216534, 32.232311, 45.059570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281567, 31.876993, 44.887756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064263, 0.424866, -0.902972,
		0.984601, 0.174408, 0.011990,
		0.162580, -0.888297, -0.429531,
		36.330341, 31.610504, 44.758896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709278, 32.373413, 44.577946>,  <36.216534, 32.232311, 45.059570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709278, 32.373413, 44.577946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503567, 32.040768, 44.494106>,  <36.380138, 31.841181, 44.443802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503567, 32.040768, 44.494106>,  <36.709278, 32.373413, 44.577946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503567, 32.040768, 44.494106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149452, 0.327561, -0.932935,
		0.844501, -0.448463, -0.292744,
		-0.514279, -0.831616, -0.209602,
		36.349281, 31.791283, 44.431225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995701, 32.222034, 43.991371>,  <36.709278, 32.373413, 44.577946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995701, 32.222034, 43.991371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667953, 31.992729, 43.992058>,  <36.471306, 31.855145, 43.992470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667953, 31.992729, 43.992058>,  <36.995701, 32.222034, 43.991371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667953, 31.992729, 43.992058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112071, 0.157243, -0.981180,
		0.562207, -0.804140, -0.193086,
		-0.819368, -0.573266, 0.001718,
		36.422142, 31.820749, 43.992573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123158, 31.720545, 43.377281>,  <36.995701, 32.222034, 43.991371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123158, 31.720545, 43.377281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729534, 31.740467, 43.445568>,  <36.493359, 31.752420, 43.486538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729534, 31.740467, 43.445568>,  <37.123158, 31.720545, 43.377281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729534, 31.740467, 43.445568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152583, 0.256588, -0.954401,
		-0.091337, -0.965237, -0.244899,
		-0.984061, 0.049805, 0.170714,
		36.434315, 31.755409, 43.496784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797272, 31.414452, 42.742168>,  <37.123158, 31.720545, 43.377281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797272, 31.414452, 42.742168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502911, 31.621193, 42.917126>,  <36.326294, 31.745237, 43.022099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502911, 31.621193, 42.917126>,  <36.797272, 31.414452, 42.742168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502911, 31.621193, 42.917126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357922, 0.251401, -0.899271,
		-0.574750, -0.818329, -0.000014,
		-0.735904, 0.516851, 0.437391,
		36.282139, 31.776249, 43.048344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191570, 31.138231, 42.388466>,  <36.797272, 31.414452, 42.742168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191570, 31.138231, 42.388466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100334, 31.483431, 42.568783>,  <36.045593, 31.690550, 42.676971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100334, 31.483431, 42.568783>,  <36.191570, 31.138231, 42.388466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100334, 31.483431, 42.568783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331732, 0.366408, -0.869309,
		-0.915383, -0.347825, 0.202709,
		-0.228093, 0.862996, 0.450788,
		36.031906, 31.742331, 42.704018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431072, 31.348005, 42.394489>,  <36.191570, 31.138231, 42.388466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431072, 31.348005, 42.394489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635292, 31.689802, 42.432808>,  <35.757824, 31.894880, 42.455799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635292, 31.689802, 42.432808>,  <35.431072, 31.348005, 42.394489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635292, 31.689802, 42.432808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436771, 0.353696, -0.827121,
		-0.740653, 0.380448, 0.553799,
		0.510553, 0.854493, 0.095797,
		35.788460, 31.946150, 42.461548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866459, 31.964508, 42.224400>,  <35.431072, 31.348005, 42.394489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866459, 31.964508, 42.224400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234192, 32.120258, 42.201744>,  <35.454834, 32.213707, 42.188152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234192, 32.120258, 42.201744>,  <34.866459, 31.964508, 42.224400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234192, 32.120258, 42.201744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312661, 0.635527, -0.705938,
		-0.238881, 0.666703, 0.706005,
		0.919336, 0.389376, -0.056637,
		35.509995, 32.237072, 42.184753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758770, 32.609745, 42.106407>,  <34.866459, 31.964508, 42.224400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758770, 32.609745, 42.106407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145885, 32.593544, 42.007019>,  <35.378155, 32.583824, 41.947388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145885, 32.593544, 42.007019>,  <34.758770, 32.609745, 42.106407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145885, 32.593544, 42.007019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200055, 0.475412, -0.856715,
		0.152821, 0.878830, 0.451998,
		0.967793, -0.040500, -0.248468,
		35.436222, 32.581394, 41.932480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904228, 33.219578, 41.838371>,  <34.758770, 32.609745, 42.106407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904228, 33.219578, 41.838371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185577, 32.985947, 41.676319>,  <35.354385, 32.845768, 41.579090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185577, 32.985947, 41.676319>,  <34.904228, 33.219578, 41.838371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185577, 32.985947, 41.676319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173764, 0.411367, -0.894753,
		0.689257, 0.699740, 0.187853,
		0.703371, -0.584073, -0.405127,
		35.396587, 32.810726, 41.554783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057804, 33.631016, 41.277794>,  <34.904228, 33.219578, 41.838371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057804, 33.631016, 41.277794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254555, 33.294975, 41.186325>,  <35.372604, 33.093353, 41.131443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254555, 33.294975, 41.186325>,  <35.057804, 33.631016, 41.277794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254555, 33.294975, 41.186325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093313, 0.311993, -0.945491,
		0.865648, 0.443731, 0.231856,
		0.491881, -0.840097, -0.228670,
		35.402119, 33.042946, 41.117725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707569, 33.770065, 41.025482>,  <35.057804, 33.631016, 41.277794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707569, 33.770065, 41.025482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598866, 33.417831, 40.870190>,  <35.533646, 33.206493, 40.777012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598866, 33.417831, 40.870190>,  <35.707569, 33.770065, 41.025482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598866, 33.417831, 40.870190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049936, 0.389969, -0.919473,
		0.961070, -0.269259, -0.062003,
		-0.271755, -0.880582, -0.388233,
		35.517338, 33.153656, 40.753719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172379, 33.673840, 40.479553>,  <35.707569, 33.770065, 41.025482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172379, 33.673840, 40.479553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859112, 33.436855, 40.404049>,  <35.671150, 33.294666, 40.358746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859112, 33.436855, 40.404049>,  <36.172379, 33.673840, 40.479553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859112, 33.436855, 40.404049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043525, 0.250598, -0.967112,
		0.620280, -0.765631, -0.170475,
		-0.783172, -0.592461, -0.188765,
		35.624161, 33.259117, 40.347420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351719, 33.426510, 39.826435>,  <36.172379, 33.673840, 40.479553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351719, 33.426510, 39.826435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961269, 33.348652, 39.865013>,  <35.727001, 33.301937, 39.888161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961269, 33.348652, 39.865013>,  <36.351719, 33.426510, 39.826435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961269, 33.348652, 39.865013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111889, 0.069961, -0.991255,
		0.186193, -0.978376, -0.090069,
		-0.976121, -0.194643, 0.096443,
		35.668434, 33.290260, 39.893948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140907, 33.186234, 39.124462>,  <36.351719, 33.426510, 39.826435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140907, 33.186234, 39.124462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780735, 33.259590, 39.282242>,  <35.564632, 33.303604, 39.376911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780735, 33.259590, 39.282242>,  <36.140907, 33.186234, 39.124462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780735, 33.259590, 39.282242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383464, 0.093475, -0.918813,
		-0.205371, -0.978586, -0.013845,
		-0.900432, 0.183388, 0.394450,
		35.510605, 33.314606, 39.400578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617733, 32.782978, 38.787483>,  <36.140907, 33.186234, 39.124462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617733, 32.782978, 38.787483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437801, 33.107170, 38.937561>,  <35.329842, 33.301685, 39.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437801, 33.107170, 38.937561>,  <35.617733, 32.782978, 38.787483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437801, 33.107170, 38.937561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325423, 0.242480, -0.913949,
		-0.831715, -0.533222, 0.154673,
		-0.449833, 0.810480, 0.375197,
		35.302853, 33.350315, 39.050121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929123, 32.797626, 38.489063>,  <35.617733, 32.782978, 38.787483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929123, 32.797626, 38.489063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992508, 33.164604, 38.635044>,  <35.030540, 33.384789, 38.722633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992508, 33.164604, 38.635044>,  <34.929123, 32.797626, 38.489063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992508, 33.164604, 38.635044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350422, 0.397816, -0.847907,
		-0.923090, 0.006474, 0.384531,
		0.158462, 0.917442, 0.364952,
		35.040047, 33.439838, 38.744530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412273, 33.177010, 38.243122>,  <34.929123, 32.797626, 38.489063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412273, 33.177010, 38.243122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694073, 33.439354, 38.351585>,  <34.863152, 33.596760, 38.416664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694073, 33.439354, 38.351585>,  <34.412273, 33.177010, 38.243122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694073, 33.439354, 38.351585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163182, 0.521528, -0.837484,
		-0.690689, 0.545759, 0.474442,
		0.704500, 0.655862, 0.271156,
		34.905422, 33.636112, 38.432934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134151, 33.720203, 38.044762>,  <34.412273, 33.177010, 38.243122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134151, 33.720203, 38.044762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510971, 33.843250, 38.098297>,  <34.737064, 33.917080, 38.130421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510971, 33.843250, 38.098297>,  <34.134151, 33.720203, 38.044762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510971, 33.843250, 38.098297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092066, 0.620713, -0.778614,
		-0.322593, 0.721171, 0.613064,
		0.942050, 0.307618, 0.133842,
		34.793587, 33.935535, 38.138451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204853, 34.528156, 38.112053>,  <34.134151, 33.720203, 38.044762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204853, 34.528156, 38.112053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548893, 34.381927, 37.969738>,  <34.755318, 34.294189, 37.884350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548893, 34.381927, 37.969738>,  <34.204853, 34.528156, 38.112053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548893, 34.381927, 37.969738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142123, 0.498110, -0.855388,
		0.489925, 0.786285, 0.376469,
		0.860101, -0.365571, -0.355785,
		34.806923, 34.272255, 37.863003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582405, 35.187672, 37.829147>,  <34.204853, 34.528156, 38.112053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582405, 35.187672, 37.829147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737110, 34.855621, 37.668499>,  <34.829933, 34.656391, 37.572109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737110, 34.855621, 37.668499>,  <34.582405, 35.187672, 37.829147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737110, 34.855621, 37.668499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164540, 0.490648, -0.855681,
		0.907383, 0.264859, 0.326352,
		0.386759, -0.830129, -0.401626,
		34.853138, 34.606583, 37.548012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315945, 35.357956, 37.624969>,  <34.582405, 35.187672, 37.829147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315945, 35.357956, 37.624969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206455, 35.042973, 37.404068>,  <35.140762, 34.853981, 37.271526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206455, 35.042973, 37.404068>,  <35.315945, 35.357956, 37.624969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206455, 35.042973, 37.404068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288703, 0.480436, -0.828150,
		0.917458, -0.386118, 0.095838,
		-0.273719, -0.787461, -0.552253,
		35.124340, 34.806736, 37.238392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914917, 35.195652, 37.303619>,  <35.315945, 35.357956, 37.624969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914917, 35.195652, 37.303619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635662, 35.009594, 37.085907>,  <35.468109, 34.897957, 36.955280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635662, 35.009594, 37.085907>,  <35.914917, 35.195652, 37.303619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635662, 35.009594, 37.085907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313477, 0.484875, -0.816473,
		0.643689, -0.740630, -0.192696,
		-0.698137, -0.465149, -0.544279,
		35.426220, 34.870049, 36.922623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290943, 34.913860, 36.670567>,  <35.914917, 35.195652, 37.303619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290943, 34.913860, 36.670567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904373, 34.941769, 36.571644>,  <35.672432, 34.958515, 36.512291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904373, 34.941769, 36.571644>,  <36.290943, 34.913860, 36.670567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904373, 34.941769, 36.571644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245663, 0.533177, -0.809550,
		0.075374, -0.843121, -0.532414,
		-0.966420, 0.069775, -0.247311,
		35.614449, 34.962700, 36.497452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726643, 34.839363, 36.076797>,  <36.290943, 34.913860, 36.670567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726643, 34.839363, 36.076797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950581, 34.518116, 35.995235>,  <37.084942, 34.325367, 35.946297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950581, 34.518116, 35.995235>,  <36.726643, 34.839363, 36.076797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950581, 34.518116, 35.995235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009914, -0.252560, 0.967531,
		-0.828539, -0.539645, -0.149356,
		0.559844, -0.803117, -0.203905,
		37.118534, 34.277180, 35.934063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444115, 34.170742, 36.510445>,  <36.726643, 34.839363, 36.076797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444115, 34.170742, 36.510445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826168, 34.128708, 36.399681>,  <37.055401, 34.103489, 36.333225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826168, 34.128708, 36.399681>,  <36.444115, 34.170742, 36.510445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826168, 34.128708, 36.399681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239401, -0.276532, 0.930708,
		-0.174374, -0.955242, -0.238969,
		0.955134, -0.105082, -0.276906,
		37.112709, 34.097183, 36.316608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602158, 33.471169, 36.628094>,  <36.444115, 34.170742, 36.510445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602158, 33.471169, 36.628094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969685, 33.629017, 36.630917>,  <37.190201, 33.723724, 36.632610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969685, 33.629017, 36.630917>,  <36.602158, 33.471169, 36.628094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969685, 33.629017, 36.630917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206939, -0.496900, 0.842773,
		0.336082, -0.772894, -0.538222,
		0.918817, 0.394620, 0.007057,
		37.245331, 33.747402, 36.633034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011593, 32.943916, 37.035828>,  <36.602158, 33.471169, 36.628094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011593, 32.943916, 37.035828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257656, 33.259193, 37.028580>,  <37.405293, 33.448360, 37.024231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257656, 33.259193, 37.028580>,  <37.011593, 32.943916, 37.035828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257656, 33.259193, 37.028580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489577, -0.363881, 0.792404,
		0.617977, -0.496324, -0.609727,
		0.615158, 0.788196, -0.018119,
		37.442204, 33.495651, 37.023144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645195, 32.654308, 36.998043>,  <37.011593, 32.943916, 37.035828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645195, 32.654308, 36.998043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692490, 33.028740, 37.130569>,  <37.720867, 33.253399, 37.210087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692490, 33.028740, 37.130569>,  <37.645195, 32.654308, 36.998043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692490, 33.028740, 37.130569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501630, -0.344260, 0.793632,
		0.856965, 0.072368, -0.510269,
		0.118232, 0.936081, 0.331321,
		37.727959, 33.309563, 37.229965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335453, 32.683094, 37.115345>,  <37.645195, 32.654308, 36.998043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335453, 32.683094, 37.115345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124546, 32.956116, 37.317772>,  <37.998001, 33.119930, 37.439228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124546, 32.956116, 37.317772>,  <38.335453, 32.683094, 37.115345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124546, 32.956116, 37.317772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445306, -0.285274, 0.848718,
		0.723665, 0.672858, -0.153530,
		-0.527268, 0.682555, 0.506070,
		37.966366, 33.160881, 37.469593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771259, 33.095692, 37.509033>,  <38.335453, 32.683094, 37.115345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771259, 33.095692, 37.509033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431553, 33.190056, 37.697968>,  <38.227730, 33.246674, 37.811329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431553, 33.190056, 37.697968>,  <38.771259, 33.095692, 37.509033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431553, 33.190056, 37.697968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443638, -0.166174, 0.880665,
		0.286244, 0.957462, 0.036468,
		-0.849264, 0.235907, 0.472334,
		38.176773, 33.260826, 37.839668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893578, 33.537979, 38.087322>,  <38.771259, 33.095692, 37.509033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893578, 33.537979, 38.087322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559139, 33.336594, 38.174465>,  <38.358475, 33.215763, 38.226749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559139, 33.336594, 38.174465>,  <38.893578, 33.537979, 38.087322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559139, 33.336594, 38.174465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454887, -0.414320, 0.788300,
		-0.306623, 0.758195, 0.575433,
		-0.836098, -0.503467, 0.217853,
		38.308311, 33.185555, 38.239822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787346, 33.578106, 38.728752>,  <38.893578, 33.537979, 38.087322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787346, 33.578106, 38.728752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547546, 33.262760, 38.673489>,  <38.403667, 33.073555, 38.640331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547546, 33.262760, 38.673489>,  <38.787346, 33.578106, 38.728752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547546, 33.262760, 38.673489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367460, -0.424451, 0.827535,
		-0.711036, 0.445341, 0.544150,
		-0.599501, -0.788360, -0.138155,
		38.367695, 33.026253, 38.632042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587254, 33.392422, 39.440914>,  <38.787346, 33.578106, 38.728752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587254, 33.392422, 39.440914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492622, 33.074348, 39.217590>,  <38.435844, 32.883503, 39.083595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492622, 33.074348, 39.217590>,  <38.587254, 33.392422, 39.440914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492622, 33.074348, 39.217590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237467, -0.604520, 0.760372,
		-0.942148, 0.047303, 0.331844,
		-0.236574, -0.795184, -0.558314,
		38.421650, 32.835793, 39.050095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312450, 32.953854, 39.924850>,  <38.587254, 33.392422, 39.440914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312450, 32.953854, 39.924850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382656, 32.698730, 39.624878>,  <38.424782, 32.545654, 39.444897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382656, 32.698730, 39.624878>,  <38.312450, 32.953854, 39.924850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382656, 32.698730, 39.624878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402082, -0.648879, 0.645977,
		-0.898623, -0.414913, 0.142562,
		0.175518, -0.637811, -0.749927,
		38.435310, 32.507385, 39.399899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988369, 32.425030, 40.204052>,  <38.312450, 32.953854, 39.924850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988369, 32.425030, 40.204052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235786, 32.276237, 39.927204>,  <38.384235, 32.186962, 39.761093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235786, 32.276237, 39.927204>,  <37.988369, 32.425030, 40.204052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235786, 32.276237, 39.927204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194331, -0.781056, 0.593454,
		-0.761340, -0.501578, -0.410830,
		0.618544, -0.371983, -0.692121,
		38.421349, 32.164642, 39.719566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776318, 31.752068, 39.912857>,  <37.988369, 32.425030, 40.204052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776318, 31.752068, 39.912857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174618, 31.788286, 39.906075>,  <38.413597, 31.810017, 39.902004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174618, 31.788286, 39.906075>,  <37.776318, 31.752068, 39.912857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174618, 31.788286, 39.906075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081449, -0.779338, 0.621288,
		0.043039, -0.620027, -0.783399,
		0.995748, 0.090546, -0.016959,
		38.473343, 31.815451, 39.900986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014214, 31.113003, 39.858185>,  <37.776318, 31.752068, 39.912857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014214, 31.113003, 39.858185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293442, 31.343727, 40.027885>,  <38.460979, 31.482162, 40.129707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293442, 31.343727, 40.027885>,  <38.014214, 31.113003, 39.858185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293442, 31.343727, 40.027885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094014, -0.661208, 0.744289,
		0.709834, -0.479678, -0.515796,
		0.698067, 0.576813, 0.424251,
		38.502861, 31.516771, 40.155159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446743, 30.691744, 40.126965>,  <38.014214, 31.113003, 39.858185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446743, 30.691744, 40.126965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509872, 31.037569, 40.317806>,  <38.547749, 31.245064, 40.432312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509872, 31.037569, 40.317806>,  <38.446743, 30.691744, 40.126965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509872, 31.037569, 40.317806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165214, -0.499464, 0.850435,
		0.973548, -0.055394, -0.221664,
		0.157822, 0.864562, 0.477101,
		38.557220, 31.296938, 40.460938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076160, 30.589640, 40.578667>,  <38.446743, 30.691744, 40.126965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076160, 30.589640, 40.578667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861671, 30.887514, 40.737617>,  <38.732979, 31.066238, 40.832989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861671, 30.887514, 40.737617>,  <39.076160, 30.589640, 40.578667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861671, 30.887514, 40.737617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071544, -0.428986, 0.900474,
		0.841038, 0.511285, 0.176755,
		-0.536224, 0.744687, 0.397372,
		38.700806, 31.110920, 40.856831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427197, 30.711325, 41.110371>,  <39.076160, 30.589640, 40.578667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427197, 30.711325, 41.110371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081329, 30.892509, 41.197250>,  <38.873810, 31.001221, 41.249378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081329, 30.892509, 41.197250>,  <39.427197, 30.711325, 41.110371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081329, 30.892509, 41.197250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122264, -0.229612, 0.965572,
		0.487238, 0.861455, 0.143157,
		-0.864668, 0.452961, 0.217200,
		38.821930, 31.028399, 41.262409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576271, 31.134150, 41.740936>,  <39.427197, 30.711325, 41.110371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576271, 31.134150, 41.740936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178867, 31.092712, 41.722168>,  <38.940426, 31.067850, 41.710907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178867, 31.092712, 41.722168>,  <39.576271, 31.134150, 41.740936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178867, 31.092712, 41.722168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021862, -0.230921, 0.972727,
		-0.111603, 0.967442, 0.227158,
		-0.993512, -0.103593, -0.046922,
		38.880814, 31.061634, 41.708092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286560, 31.566439, 42.212933>,  <39.576271, 31.134150, 41.740936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286560, 31.566439, 42.212933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001572, 31.293526, 42.147354>,  <38.830578, 31.129778, 42.108006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001572, 31.293526, 42.147354>,  <39.286560, 31.566439, 42.212933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001572, 31.293526, 42.147354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162290, -0.067088, 0.984460,
		-0.682680, 0.728002, -0.062930,
		-0.712467, -0.682284, -0.163947,
		38.787830, 31.088840, 42.098171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827641, 31.756428, 42.774342>,  <39.286560, 31.566439, 42.212933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827641, 31.756428, 42.774342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666996, 31.401638, 42.683140>,  <38.570610, 31.188765, 42.628418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666996, 31.401638, 42.683140>,  <38.827641, 31.756428, 42.774342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666996, 31.401638, 42.683140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168873, -0.172972, 0.970341,
		-0.900106, 0.428203, -0.080319,
		-0.401610, -0.886974, -0.228005,
		38.546513, 31.135546, 42.614738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103016, 31.719767, 43.056194>,  <38.827641, 31.756428, 42.774342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103016, 31.719767, 43.056194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247898, 31.347891, 43.029404>,  <38.334827, 31.124765, 43.013329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247898, 31.347891, 43.029404>,  <38.103016, 31.719767, 43.056194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247898, 31.347891, 43.029404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323161, -0.192654, 0.926526,
		-0.874283, -0.313951, -0.370220,
		0.362209, -0.929688, -0.066978,
		38.356560, 31.068985, 43.009312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728519, 31.341362, 43.463207>,  <38.103016, 31.719767, 43.056194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728519, 31.341362, 43.463207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034721, 31.092613, 43.397152>,  <38.218445, 30.943363, 43.357517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034721, 31.092613, 43.397152>,  <37.728519, 31.341362, 43.463207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034721, 31.092613, 43.397152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088217, -0.355672, 0.930438,
		-0.637351, -0.697689, -0.327130,
		0.765507, -0.621874, -0.165140,
		38.264374, 30.906052, 43.347610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465580, 30.688984, 43.722176>,  <37.728519, 31.341362, 43.463207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465580, 30.688984, 43.722176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864075, 30.723278, 43.717129>,  <38.103172, 30.743855, 43.714100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864075, 30.723278, 43.717129>,  <37.465580, 30.688984, 43.722176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864075, 30.723278, 43.717129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031152, -0.218420, 0.975358,
		0.080865, -0.972081, -0.220269,
		0.996238, 0.085735, -0.012620,
		38.162945, 30.748999, 43.713345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648090, 30.174026, 44.138046>,  <37.465580, 30.688984, 43.722176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648090, 30.174026, 44.138046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965931, 30.416847, 44.142029>,  <38.156635, 30.562540, 44.144417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965931, 30.416847, 44.142029>,  <37.648090, 30.174026, 44.138046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965931, 30.416847, 44.142029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177552, -0.248025, 0.952344,
		0.580591, -0.754965, -0.304864,
		0.794601, 0.607051, 0.009956,
		38.204311, 30.598963, 44.145016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219265, 29.746775, 44.250618>,  <37.648090, 30.174026, 44.138046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219265, 29.746775, 44.250618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345016, 30.117657, 44.332066>,  <38.420467, 30.340185, 44.380936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345016, 30.117657, 44.332066>,  <38.219265, 29.746775, 44.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345016, 30.117657, 44.332066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314827, -0.304190, 0.899084,
		0.895574, -0.218544, -0.387538,
		0.314375, 0.927204, 0.203621,
		38.439327, 30.395819, 44.393150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866058, 29.572298, 44.516949>,  <38.219265, 29.746775, 44.250618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866058, 29.572298, 44.516949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766174, 29.934509, 44.654160>,  <38.706245, 30.151836, 44.736485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766174, 29.934509, 44.654160>,  <38.866058, 29.572298, 44.516949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766174, 29.934509, 44.654160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459849, -0.200859, 0.864982,
		0.852165, 0.373733, -0.366250,
		-0.249708, 0.905527, 0.343026,
		38.691261, 30.206167, 44.757069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490688, 29.963049, 44.819637>,  <38.866058, 29.572298, 44.516949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490688, 29.963049, 44.819637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178387, 30.157480, 44.976688>,  <38.991005, 30.274139, 45.070919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178387, 30.157480, 44.976688>,  <39.490688, 29.963049, 44.819637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178387, 30.157480, 44.976688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454699, 0.010981, 0.890577,
		0.428577, 0.873848, -0.229591,
		-0.780750, 0.486076, 0.392631,
		38.944160, 30.303303, 45.094479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733158, 30.499935, 45.174946>,  <39.490688, 29.963049, 44.819637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733158, 30.499935, 45.174946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375439, 30.452452, 45.347519>,  <39.160805, 30.423962, 45.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375439, 30.452452, 45.347519>,  <39.733158, 30.499935, 45.174946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375439, 30.452452, 45.347519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437162, -0.026097, 0.899004,
		-0.095462, 0.992586, 0.075234,
		-0.894302, -0.118710, 0.431430,
		39.107147, 30.416840, 45.476948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583233, 31.186399, 45.607574>,  <39.733158, 30.499935, 45.174946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583233, 31.186399, 45.607574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336678, 30.902861, 45.744747>,  <39.188744, 30.732738, 45.827053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336678, 30.902861, 45.744747>,  <39.583233, 31.186399, 45.607574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336678, 30.902861, 45.744747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270760, 0.218162, 0.937600,
		-0.739429, 0.670779, 0.057454,
		-0.616388, -0.708845, 0.342935,
		39.151760, 30.690207, 45.847630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148033, 31.483303, 46.144672>,  <39.583233, 31.186399, 45.607574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148033, 31.483303, 46.144672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127842, 31.088684, 46.206867>,  <39.115726, 30.851913, 46.244186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127842, 31.088684, 46.206867>,  <39.148033, 31.483303, 46.144672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127842, 31.088684, 46.206867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440589, 0.117722, 0.889956,
		-0.896288, 0.113431, 0.428720,
		-0.050479, -0.986547, 0.155489,
		39.112698, 30.792721, 46.253513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946064, 31.393366, 46.781666>,  <39.148033, 31.483303, 46.144672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946064, 31.393366, 46.781666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078049, 31.018045, 46.740246>,  <39.157238, 30.792854, 46.715393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078049, 31.018045, 46.740246>,  <38.946064, 31.393366, 46.781666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078049, 31.018045, 46.740246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264298, -0.013480, 0.964347,
		-0.906242, -0.345561, 0.243543,
		0.329957, -0.938300, -0.103547,
		39.177036, 30.736555, 46.709183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586250, 30.992239, 47.327850>,  <38.946064, 31.393366, 46.781666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586250, 30.992239, 47.327850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911167, 30.791634, 47.208744>,  <39.106117, 30.671270, 47.137280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911167, 30.791634, 47.208744>,  <38.586250, 30.992239, 47.327850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911167, 30.791634, 47.208744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249991, -0.161875, 0.954621,
		-0.526956, -0.849871, -0.006116,
		0.812294, -0.501514, -0.297761,
		39.154854, 30.641180, 47.119415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599606, 30.341406, 47.777744>,  <38.586250, 30.992239, 47.327850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599606, 30.341406, 47.777744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970287, 30.329634, 47.627884>,  <39.192696, 30.322571, 47.537968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970287, 30.329634, 47.627884>,  <38.599606, 30.341406, 47.777744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970287, 30.329634, 47.627884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355398, -0.255401, 0.899145,
		-0.122147, -0.966387, -0.226221,
		0.926700, -0.029429, -0.374648,
		39.248299, 30.320805, 47.515488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912899, 29.681681, 48.102856>,  <38.599606, 30.341406, 47.777744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912899, 29.681681, 48.102856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196564, 29.941767, 47.993820>,  <39.366764, 30.097818, 47.928398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196564, 29.941767, 47.993820>,  <38.912899, 29.681681, 48.102856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196564, 29.941767, 47.993820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490386, -0.177102, 0.853321,
		0.506567, -0.738819, -0.444452,
		0.709162, 0.650217, -0.272592,
		39.409313, 30.136831, 47.912041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580204, 29.310423, 48.246082>,  <38.912899, 29.681681, 48.102856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580204, 29.310423, 48.246082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620655, 29.708370, 48.247086>,  <39.644924, 29.947140, 48.247688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620655, 29.708370, 48.247086>,  <39.580204, 29.310423, 48.246082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620655, 29.708370, 48.247086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438057, -0.046789, 0.897729,
		0.893241, -0.089686, -0.440542,
		0.101126, 0.994870, 0.002506,
		39.650993, 30.006832, 48.247837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315018, 29.405329, 48.416046>,  <39.580204, 29.310423, 48.246082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315018, 29.405329, 48.416046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119499, 29.742229, 48.506985>,  <40.002186, 29.944370, 48.561546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119499, 29.742229, 48.506985>,  <40.315018, 29.405329, 48.416046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119499, 29.742229, 48.506985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402270, -0.013641, 0.915419,
		0.774114, 0.538912, -0.332145,
		-0.488800, 0.842251, 0.227348,
		39.972858, 29.994905, 48.575188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792294, 29.826651, 48.801022>,  <40.315018, 29.405329, 48.416046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792294, 29.826651, 48.801022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450020, 30.009073, 48.898857>,  <40.244656, 30.118526, 48.957558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.450020, 30.009073, 48.898857>,  <40.792294, 29.826651, 48.801022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450020, 30.009073, 48.898857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354707, 0.172702, 0.918889,
		0.376823, 0.873033, -0.309543,
		-0.855680, 0.456056, 0.244593,
		40.193317, 30.145889, 48.972237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025524, 30.401121, 49.244831>,  <40.792294, 29.826651, 48.801022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025524, 30.401121, 49.244831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647629, 30.278976, 49.292538>,  <40.420891, 30.205688, 49.321159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647629, 30.278976, 49.292538>,  <41.025524, 30.401121, 49.244831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647629, 30.278976, 49.292538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071322, 0.163637, 0.983939,
		-0.319975, 0.938070, -0.132815,
		-0.944737, -0.305364, 0.119265,
		40.364208, 30.187366, 49.328316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426296, 31.001240, 49.468384>,  <41.025524, 30.401121, 49.244831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426296, 31.001240, 49.468384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413040, 31.373756, 49.613491>,  <41.405087, 31.597265, 49.700554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413040, 31.373756, 49.613491>,  <41.426296, 31.001240, 49.468384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413040, 31.373756, 49.613491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039338, 0.363900, -0.930607,
		-0.998676, -0.016569, -0.048695,
		-0.033139, 0.931291, 0.362766,
		41.403099, 31.653143, 49.722321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743965, 31.298473, 49.210247>,  <41.426296, 31.001240, 49.468384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743965, 31.298473, 49.210247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984909, 31.605644, 49.297382>,  <41.129475, 31.789948, 49.349663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984909, 31.605644, 49.297382>,  <40.743965, 31.298473, 49.210247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984909, 31.605644, 49.297382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219604, 0.421795, -0.879695,
		-0.767425, 0.482052, 0.422711,
		0.602356, 0.767929, 0.217835,
		41.165615, 31.836023, 49.362732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378407, 31.957392, 49.034435>,  <40.743965, 31.298473, 49.210247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378407, 31.957392, 49.034435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768719, 32.042248, 49.013065>,  <41.002907, 32.093163, 49.000244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768719, 32.042248, 49.013065>,  <40.378407, 31.957392, 49.034435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768719, 32.042248, 49.013065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129871, 0.365196, -0.921827,
		-0.176044, 0.906437, 0.383901,
		0.975778, 0.212140, -0.053429,
		41.061451, 32.105888, 48.997036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354168, 32.445030, 48.632034>,  <40.378407, 31.957392, 49.034435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354168, 32.445030, 48.632034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748600, 32.378597, 48.628941>,  <40.985260, 32.338737, 48.627083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748600, 32.378597, 48.628941>,  <40.354168, 32.445030, 48.632034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748600, 32.378597, 48.628941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034020, 0.247090, -0.968395,
		0.162745, 0.954654, 0.249301,
		0.986082, -0.166083, -0.007736,
		41.044426, 32.328773, 48.626621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749096, 33.030647, 48.292492>,  <40.354168, 32.445030, 48.632034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749096, 33.030647, 48.292492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021820, 32.739075, 48.267849>,  <41.185455, 32.564129, 48.253063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.021820, 32.739075, 48.267849>,  <40.749096, 33.030647, 48.292492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021820, 32.739075, 48.267849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144320, 0.216599, -0.965534,
		0.717155, 0.649416, 0.252878,
		0.681807, -0.728933, -0.061612,
		41.226360, 32.520393, 48.249367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485001, 33.263153, 48.025730>,  <40.749096, 33.030647, 48.292492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485001, 33.263153, 48.025730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424179, 32.872299, 47.966282>,  <41.387688, 32.637787, 47.930611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424179, 32.872299, 47.966282>,  <41.485001, 33.263153, 48.025730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424179, 32.872299, 47.966282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238995, 0.109562, -0.964820,
		0.959042, -0.182226, 0.216870,
		-0.152055, -0.977133, -0.148625,
		41.378563, 32.579159, 47.921696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004593, 33.190063, 47.642555>,  <41.485001, 33.263153, 48.025730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004593, 33.190063, 47.642555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782803, 32.858585, 47.612049>,  <41.649727, 32.659698, 47.593746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782803, 32.858585, 47.612049>,  <42.004593, 33.190063, 47.642555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782803, 32.858585, 47.612049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255064, -0.081996, -0.963441,
		0.792148, -0.553658, 0.256835,
		-0.554476, -0.828698, -0.076265,
		41.616459, 32.609978, 47.589169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416374, 32.752743, 47.085510>,  <42.004593, 33.190063, 47.642555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416374, 32.752743, 47.085510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039356, 32.619312, 47.092941>,  <41.813145, 32.539253, 47.097401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039356, 32.619312, 47.092941>,  <42.416374, 32.752743, 47.085510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039356, 32.619312, 47.092941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014856, -0.013694, -0.999796,
		0.333762, -0.942624, 0.007952,
		-0.942540, -0.333576, 0.018574,
		41.756596, 32.519241, 47.098515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347012, 32.418434, 46.395794>,  <42.416374, 32.752743, 47.085510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347012, 32.418434, 46.395794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972492, 32.458286, 46.530502>,  <41.747780, 32.482197, 46.611328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972492, 32.458286, 46.530502>,  <42.347012, 32.418434, 46.395794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972492, 32.458286, 46.530502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340020, -0.017192, -0.940261,
		-0.087890, -0.994876, 0.049973,
		-0.936302, 0.099631, 0.336767,
		41.691601, 32.488174, 46.631531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845680, 31.936659, 45.935413>,  <42.347012, 32.418434, 46.395794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845680, 31.936659, 45.935413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629120, 32.234581, 46.091438>,  <41.499184, 32.413334, 46.185055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629120, 32.234581, 46.091438>,  <41.845680, 31.936659, 45.935413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629120, 32.234581, 46.091438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283112, 0.275344, -0.918713,
		-0.791665, -0.607822, 0.061793,
		-0.541400, 0.744807, 0.390062,
		41.466702, 32.458023, 46.208458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096386, 31.837227, 45.745663>,  <41.845680, 31.936659, 45.935413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096386, 31.837227, 45.745663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175568, 32.219654, 45.832146>,  <41.223076, 32.449112, 45.884037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175568, 32.219654, 45.832146>,  <41.096386, 31.837227, 45.745663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175568, 32.219654, 45.832146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414064, 0.281485, -0.865631,
		-0.888463, 0.081828, 0.451594,
		0.197949, 0.956070, 0.216207,
		41.234951, 32.506474, 45.897007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538807, 32.179165, 45.383350>,  <41.096386, 31.837227, 45.745663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538807, 32.179165, 45.383350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805870, 32.462860, 45.473877>,  <40.966106, 32.633076, 45.528191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805870, 32.462860, 45.473877>,  <40.538807, 32.179165, 45.383350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805870, 32.462860, 45.473877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169686, 0.440968, -0.881337,
		-0.724874, 0.550027, 0.414762,
		0.667656, 0.709238, 0.226314,
		41.006168, 32.675632, 45.541771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107925, 32.740734, 45.149956>,  <40.538807, 32.179165, 45.383350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107925, 32.740734, 45.149956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500343, 32.816586, 45.165924>,  <40.735794, 32.862095, 45.175507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500343, 32.816586, 45.165924>,  <40.107925, 32.740734, 45.149956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500343, 32.816586, 45.165924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049787, 0.445743, -0.893776,
		-0.187280, 0.874845, 0.446734,
		0.981044, 0.189628, 0.039923,
		40.794655, 32.873474, 45.177902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156425, 33.426945, 44.832470>,  <40.107925, 32.740734, 45.149956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156425, 33.426945, 44.832470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528076, 33.281025, 44.808331>,  <40.751068, 33.193474, 44.793846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528076, 33.281025, 44.808331>,  <40.156425, 33.426945, 44.832470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528076, 33.281025, 44.808331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040278, 0.262093, -0.964202,
		0.367559, 0.893436, 0.258211,
		0.929127, -0.364802, -0.060349,
		40.806816, 33.171585, 44.790226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527157, 33.956573, 44.640339>,  <40.156425, 33.426945, 44.832470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527157, 33.956573, 44.640339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718330, 33.629177, 44.512806>,  <40.833035, 33.432739, 44.436287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718330, 33.629177, 44.512806>,  <40.527157, 33.956573, 44.640339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718330, 33.629177, 44.512806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013308, 0.369681, -0.929063,
		0.878296, 0.439785, 0.187574,
		0.477931, -0.818489, -0.318837,
		40.861710, 33.383629, 44.417156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901566, 34.171719, 44.089214>,  <40.527157, 33.956573, 44.640339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901566, 34.171719, 44.089214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959309, 33.779301, 44.037491>,  <40.993954, 33.543850, 44.006458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959309, 33.779301, 44.037491>,  <40.901566, 34.171719, 44.089214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959309, 33.779301, 44.037491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022468, 0.133892, -0.990741,
		0.989270, 0.140117, 0.041371,
		0.144359, -0.981040, -0.129307,
		41.002617, 33.484989, 43.998699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408821, 34.068123, 43.522232>,  <40.901566, 34.171719, 44.089214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408821, 34.068123, 43.522232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210854, 33.721569, 43.548843>,  <41.092072, 33.513638, 43.564812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210854, 33.721569, 43.548843>,  <41.408821, 34.068123, 43.522232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210854, 33.721569, 43.548843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149131, 0.009259, -0.988774,
		0.856046, -0.499285, -0.133788,
		-0.494918, -0.866389, 0.066533,
		41.062378, 33.461651, 43.568802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682129, 33.638611, 43.040253>,  <41.408821, 34.068123, 43.522232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682129, 33.638611, 43.040253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308842, 33.509190, 43.102760>,  <41.084869, 33.431538, 43.140266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308842, 33.509190, 43.102760>,  <41.682129, 33.638611, 43.040253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308842, 33.509190, 43.102760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166549, 0.004134, -0.986024,
		0.318386, -0.946201, -0.057746,
		-0.933216, -0.323554, 0.156273,
		41.028877, 33.412125, 43.149643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560036, 33.218472, 42.372585>,  <41.682129, 33.638611, 43.040253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560036, 33.218472, 42.372585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202850, 33.292282, 42.536816>,  <40.988541, 33.336567, 42.635353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202850, 33.292282, 42.536816>,  <41.560036, 33.218472, 42.372585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202850, 33.292282, 42.536816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413239, 0.025630, -0.910262,
		-0.178488, -0.982494, 0.053365,
		-0.892959, 0.184523, 0.410580,
		40.934963, 33.347637, 42.659988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030506, 32.627758, 42.231438>,  <41.560036, 33.218472, 42.372585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030506, 32.627758, 42.231438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842422, 32.977459, 42.279732>,  <40.729572, 33.187279, 42.308708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842422, 32.977459, 42.279732>,  <41.030506, 32.627758, 42.231438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842422, 32.977459, 42.279732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496228, -0.148765, -0.855352,
		-0.729835, -0.462110, 0.503781,
		-0.470212, 0.874255, 0.120738,
		40.701359, 33.239735, 42.315952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427715, 32.174870, 42.086246>,  <41.030506, 32.627758, 42.231438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427715, 32.174870, 42.086246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410236, 32.572643, 42.047916>,  <40.399750, 32.811310, 42.024918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410236, 32.572643, 42.047916>,  <40.427715, 32.174870, 42.086246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410236, 32.572643, 42.047916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321352, -0.104812, -0.941142,
		-0.945951, -0.010329, 0.324144,
		-0.043695, 0.994438, -0.095828,
		40.397129, 32.870975, 42.019169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861389, 32.271194, 41.678791>,  <40.427715, 32.174870, 42.086246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861389, 32.271194, 41.678791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049511, 32.622189, 41.641205>,  <40.162384, 32.832787, 41.618652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049511, 32.622189, 41.641205>,  <39.861389, 32.271194, 41.678791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049511, 32.622189, 41.641205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257502, 0.034605, -0.965658,
		-0.844100, 0.478352, 0.242229,
		0.470306, 0.877486, -0.093967,
		40.190601, 32.885433, 41.613014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429901, 32.678894, 41.299080>,  <39.861389, 32.271194, 41.678791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429901, 32.678894, 41.299080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776684, 32.873528, 41.255970>,  <39.984753, 32.990307, 41.230103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776684, 32.873528, 41.255970>,  <39.429901, 32.678894, 41.299080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776684, 32.873528, 41.255970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209328, 0.159269, -0.964788,
		-0.452283, 0.858994, 0.239935,
		0.866961, 0.486582, -0.107777,
		40.036774, 33.019501, 41.223637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306366, 33.350880, 40.937626>,  <39.429901, 32.678894, 41.299080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306366, 33.350880, 40.937626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696911, 33.287773, 40.878521>,  <39.931236, 33.249908, 40.843056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696911, 33.287773, 40.878521>,  <39.306366, 33.350880, 40.937626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696911, 33.287773, 40.878521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128465, 0.126263, -0.983643,
		0.173846, 0.979370, 0.103010,
		0.976358, -0.157769, -0.147765,
		39.989819, 33.240444, 40.834190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582222, 33.841145, 40.554237>,  <39.306366, 33.350880, 40.937626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582222, 33.841145, 40.554237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845139, 33.544338, 40.501499>,  <40.002888, 33.366253, 40.469856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845139, 33.544338, 40.501499>,  <39.582222, 33.841145, 40.554237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845139, 33.544338, 40.501499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007598, 0.181462, -0.983368,
		0.753601, 0.645355, 0.124911,
		0.657288, -0.742017, -0.131847,
		40.042324, 33.321732, 40.461945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106586, 34.162140, 40.206257>,  <39.582222, 33.841145, 40.554237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106586, 34.162140, 40.206257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170055, 33.775887, 40.123920>,  <40.208138, 33.544132, 40.074520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170055, 33.775887, 40.123920>,  <40.106586, 34.162140, 40.206257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170055, 33.775887, 40.123920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151116, 0.229776, -0.961440,
		0.975698, 0.121448, 0.182382,
		0.158673, -0.965636, -0.205839,
		40.217659, 33.486195, 40.062168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804527, 33.975655, 40.016697>,  <40.106586, 34.162140, 40.206257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804527, 33.975655, 40.016697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575977, 33.685925, 39.862354>,  <40.438847, 33.512085, 39.769749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575977, 33.685925, 39.862354>,  <40.804527, 33.975655, 40.016697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575977, 33.685925, 39.862354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225601, 0.313425, -0.922426,
		0.789074, -0.614098, -0.015673,
		-0.571372, -0.724326, -0.385857,
		40.404564, 33.468628, 39.746597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245556, 33.672970, 39.469421>,  <40.804527, 33.975655, 40.016697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245556, 33.672970, 39.469421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872299, 33.559513, 39.381062>,  <40.648346, 33.491440, 39.328045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872299, 33.559513, 39.381062>,  <41.245556, 33.672970, 39.469421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872299, 33.559513, 39.381062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189741, 0.133338, -0.972738,
		0.305360, -0.949616, -0.070606,
		-0.933142, -0.283638, -0.220897,
		40.592358, 33.474422, 39.314793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385056, 33.297943, 38.889175>,  <41.245556, 33.672970, 39.469421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385056, 33.297943, 38.889175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993145, 33.377869, 38.893528>,  <40.757999, 33.425823, 38.896141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993145, 33.377869, 38.893528>,  <41.385056, 33.297943, 38.889175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993145, 33.377869, 38.893528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048930, 0.291941, -0.955184,
		-0.194038, -0.935331, -0.295813,
		-0.979773, 0.199817, 0.010882,
		40.699215, 33.437813, 38.896793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105301, 32.942802, 38.296055>,  <41.385056, 33.297943, 38.889175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105301, 32.942802, 38.296055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850487, 33.228687, 38.411549>,  <40.697598, 33.400219, 38.480843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850487, 33.228687, 38.411549>,  <41.105301, 32.942802, 38.296055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850487, 33.228687, 38.411549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007912, 0.380613, -0.924701,
		-0.770793, -0.586783, -0.248120,
		-0.637036, 0.714716, 0.288731,
		40.659374, 33.443104, 38.498169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582603, 33.053146, 37.716881>,  <41.105301, 32.942802, 38.296055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582603, 33.053146, 37.716881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537823, 33.402405, 37.906651>,  <40.510952, 33.611961, 38.020512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537823, 33.402405, 37.906651>,  <40.582603, 33.053146, 37.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537823, 33.402405, 37.906651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118817, 0.462235, -0.878761,
		-0.986584, -0.154751, 0.051996,
		-0.111955, 0.873150, 0.474421,
		40.504234, 33.664349, 38.048977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086983, 33.363049, 37.322086>,  <40.582603, 33.053146, 37.716881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086983, 33.363049, 37.322086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217304, 33.674080, 37.537205>,  <40.295498, 33.860699, 37.666275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217304, 33.674080, 37.537205>,  <40.086983, 33.363049, 37.322086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217304, 33.674080, 37.537205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201015, 0.612796, -0.764247,
		-0.923820, 0.140893, 0.355959,
		0.325807, 0.777580, 0.537791,
		40.315044, 33.907352, 37.698544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561310, 33.910587, 37.291412>,  <40.086983, 33.363049, 37.322086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561310, 33.910587, 37.291412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889858, 34.111370, 37.399773>,  <40.086987, 34.231838, 37.464787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889858, 34.111370, 37.399773>,  <39.561310, 33.910587, 37.291412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889858, 34.111370, 37.399773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246194, 0.740404, -0.625452,
		-0.514525, 0.447035, 0.731726,
		0.821372, 0.501958, 0.270899,
		40.136269, 34.261959, 37.481041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314823, 34.562843, 37.459675>,  <39.561310, 33.910587, 37.291412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314823, 34.562843, 37.459675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703201, 34.577831, 37.365143>,  <39.936230, 34.586823, 37.308422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703201, 34.577831, 37.365143>,  <39.314823, 34.562843, 37.459675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703201, 34.577831, 37.365143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168073, 0.809782, -0.562142,
		0.170316, 0.585533, 0.792555,
		0.970950, 0.037465, -0.236331,
		39.994488, 34.589069, 37.294243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505486, 35.215946, 37.519821>,  <39.314823, 34.562843, 37.459675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505486, 35.215946, 37.519821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766758, 35.052914, 37.264561>,  <39.923519, 34.955093, 37.111404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766758, 35.052914, 37.264561>,  <39.505486, 35.215946, 37.519821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766758, 35.052914, 37.264561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160835, 0.748859, -0.642917,
		0.739926, 0.522575, 0.423585,
		0.653178, -0.407584, -0.638149,
		39.962711, 34.930637, 37.073116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852352, 35.794506, 37.135597>,  <39.505486, 35.215946, 37.519821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852352, 35.794506, 37.135597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910545, 35.469772, 36.909405>,  <39.945461, 35.274933, 36.773689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910545, 35.469772, 36.909405>,  <39.852352, 35.794506, 37.135597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910545, 35.469772, 36.909405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120211, 0.552819, -0.824585,
		0.982030, 0.187941, -0.017164,
		0.145485, -0.811831, -0.565478,
		39.954189, 35.226223, 36.739761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233833, 36.072453, 36.673908>,  <39.852352, 35.794506, 37.135597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233833, 36.072453, 36.673908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101475, 35.734936, 36.504898>,  <40.022060, 35.532425, 36.403492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101475, 35.734936, 36.504898>,  <40.233833, 36.072453, 36.673908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101475, 35.734936, 36.504898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162782, 0.492077, -0.855197,
		0.929521, -0.214204, -0.300181,
		-0.330898, -0.843788, -0.422527,
		40.002205, 35.481800, 36.378139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282837, 36.213257, 36.062752>,  <40.233833, 36.072453, 36.673908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282837, 36.213257, 36.062752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083366, 35.868931, 36.022121>,  <39.963684, 35.662334, 35.997746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083366, 35.868931, 36.022121>,  <40.282837, 36.213257, 36.062752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083366, 35.868931, 36.022121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271234, 0.266264, -0.924951,
		0.823261, -0.433697, -0.366262,
		-0.498672, -0.860819, -0.101571,
		39.933765, 35.610683, 35.991650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483562, 36.014816, 35.436237>,  <40.282837, 36.213257, 36.062752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483562, 36.014816, 35.436237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134563, 35.847996, 35.538071>,  <39.925163, 35.747906, 35.599171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134563, 35.847996, 35.538071>,  <40.483562, 36.014816, 35.436237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134563, 35.847996, 35.538071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430380, 0.409270, -0.804531,
		0.231334, -0.811523, -0.536578,
		-0.872501, -0.417048, 0.254585,
		39.872814, 35.722881, 35.614445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303322, 35.489349, 35.015312>,  <40.483562, 36.014816, 35.436237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303322, 35.489349, 35.015312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978584, 35.662586, 35.171944>,  <39.783741, 35.766529, 35.265923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978584, 35.662586, 35.171944>,  <40.303322, 35.489349, 35.015312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978584, 35.662586, 35.171944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222445, 0.390661, -0.893254,
		-0.539836, -0.812291, -0.220817,
		-0.811846, 0.433091, 0.391583,
		39.735031, 35.792515, 35.289417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905735, 35.167580, 34.922596>,  <40.303322, 35.489349, 35.015312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905735, 35.167580, 34.922596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059734, 35.232033, 35.286095>,  <41.152134, 35.270702, 35.504192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059734, 35.232033, 35.286095>,  <40.905735, 35.167580, 34.922596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059734, 35.232033, 35.286095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766249, 0.493030, -0.412049,
		-0.514431, 0.854961, 0.066350,
		0.384998, 0.161130, 0.908743,
		41.175232, 35.280373, 35.558716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126167, 35.891453, 34.900791>,  <40.905735, 35.167580, 34.922596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126167, 35.891453, 34.900791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369740, 35.668369, 35.126415>,  <41.515884, 35.534519, 35.261791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369740, 35.668369, 35.126415>,  <41.126167, 35.891453, 34.900791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369740, 35.668369, 35.126415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793189, 0.434668, -0.426515,
		-0.007309, 0.707126, 0.707049,
		0.608932, -0.557706, 0.564062,
		41.552418, 35.501057, 35.295635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676212, 36.311565, 35.110233>,  <41.126167, 35.891453, 34.900791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676212, 36.311565, 35.110233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832710, 35.948177, 35.169041>,  <41.926609, 35.730145, 35.204323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832710, 35.948177, 35.169041>,  <41.676212, 36.311565, 35.110233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832710, 35.948177, 35.169041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890037, 0.332898, -0.311470,
		0.234020, 0.252709, 0.938815,
		0.391240, -0.908470, 0.147015,
		41.950081, 35.675636, 35.213146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294693, 36.476944, 35.419815>,  <41.676212, 36.311565, 35.110233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294693, 36.476944, 35.419815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314575, 36.110508, 35.260666>,  <42.326504, 35.890644, 35.165176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.314575, 36.110508, 35.260666>,  <42.294693, 36.476944, 35.419815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.314575, 36.110508, 35.260666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917483, 0.199292, -0.344248,
		0.394656, -0.347928, 0.850407,
		0.049706, -0.916094, -0.397870,
		42.329487, 35.835678, 35.141304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034283, 36.202560, 35.608154>,  <42.294693, 36.476944, 35.419815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034283, 36.202560, 35.608154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880959, 36.060135, 35.267265>,  <42.788963, 35.974678, 35.062733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880959, 36.060135, 35.267265>,  <43.034283, 36.202560, 35.608154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880959, 36.060135, 35.267265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812709, 0.308369, -0.494381,
		0.438832, -0.882114, 0.171176,
		-0.383315, -0.356066, -0.852225,
		42.765965, 35.953316, 35.011597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291321, 35.587219, 35.923050>,  <43.034283, 36.202560, 35.608154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291321, 35.587219, 35.923050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132839, 35.267845, 35.741714>,  <43.037750, 35.076221, 35.632912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132839, 35.267845, 35.741714>,  <43.291321, 35.587219, 35.923050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132839, 35.267845, 35.741714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672709, 0.083600, -0.735169,
		0.624887, -0.596243, 0.503995,
		-0.396205, -0.798439, -0.453339,
		43.013977, 35.028313, 35.605713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857765, 35.164131, 35.573303>,  <43.291321, 35.587219, 35.923050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857765, 35.164131, 35.573303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223091, 35.002308, 35.592045>,  <44.442287, 34.905212, 35.603291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223091, 35.002308, 35.592045>,  <43.857765, 35.164131, 35.573303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223091, 35.002308, 35.592045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005435, 0.102930, 0.994674,
		-0.407226, -0.908701, 0.091809,
		0.913311, -0.404558, 0.046854,
		44.497086, 34.880939, 35.606102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817436, 34.669418, 36.061783>,  <43.857765, 35.164131, 35.573303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817436, 34.669418, 36.061783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212860, 34.724545, 36.037258>,  <44.450115, 34.757618, 36.022541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212860, 34.724545, 36.037258>,  <43.817436, 34.669418, 36.061783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212860, 34.724545, 36.037258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039194, 0.157838, 0.986687,
		0.145632, -0.977804, 0.150632,
		0.988562, 0.137789, -0.061310,
		44.509426, 34.765888, 36.018864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895817, 34.527729, 36.687481>,  <43.817436, 34.669418, 36.061783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895817, 34.527729, 36.687481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251633, 34.674126, 36.578102>,  <44.465122, 34.761963, 36.512474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251633, 34.674126, 36.578102>,  <43.895817, 34.527729, 36.687481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251633, 34.674126, 36.578102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219162, 0.183327, 0.958310,
		0.400862, -0.912383, 0.082865,
		0.889538, 0.365990, -0.273449,
		44.518494, 34.783924, 36.496067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412651, 34.179249, 37.084820>,  <43.895817, 34.527729, 36.687481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412651, 34.179249, 37.084820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544113, 34.539509, 36.971104>,  <44.622990, 34.755665, 36.902874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544113, 34.539509, 36.971104>,  <44.412651, 34.179249, 37.084820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544113, 34.539509, 36.971104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093036, 0.268677, 0.958727,
		0.939858, -0.341537, 0.004509,
		0.328652, 0.900647, -0.284293,
		44.642708, 34.809704, 36.885815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004642, 34.242153, 37.505524>,  <44.412651, 34.179249, 37.084820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004642, 34.242153, 37.505524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923878, 34.612080, 37.376556>,  <44.875420, 34.834034, 37.299175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923878, 34.612080, 37.376556>,  <45.004642, 34.242153, 37.505524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923878, 34.612080, 37.376556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078863, 0.312775, 0.946547,
		0.976223, 0.216549, 0.009780,
		-0.201915, 0.924813, -0.322416,
		44.863304, 34.889523, 37.279831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444489, 34.615215, 37.875671>,  <45.004642, 34.242153, 37.505524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444489, 34.615215, 37.875671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184067, 34.887150, 37.740643>,  <45.027813, 35.050312, 37.659626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.184067, 34.887150, 37.740643>,  <45.444489, 34.615215, 37.875671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184067, 34.887150, 37.740643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063656, 0.492071, 0.868225,
		0.756360, 0.543770, -0.363639,
		-0.651051, 0.679838, -0.337569,
		44.988750, 35.091103, 37.639370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689541, 35.336479, 38.132740>,  <45.444489, 34.615215, 37.875671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689541, 35.336479, 38.132740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295025, 35.363373, 38.072460>,  <45.058315, 35.379509, 38.036293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295025, 35.363373, 38.072460>,  <45.689541, 35.336479, 38.132740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295025, 35.363373, 38.072460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112768, 0.392115, 0.912978,
		0.120473, 0.917456, -0.379158,
		-0.986291, 0.067232, -0.150699,
		44.999138, 35.383541, 38.027252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537384, 35.930950, 38.460846>,  <45.689541, 35.336479, 38.132740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537384, 35.930950, 38.460846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172630, 35.773476, 38.414398>,  <44.953777, 35.678993, 38.386528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172630, 35.773476, 38.414398>,  <45.537384, 35.930950, 38.460846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172630, 35.773476, 38.414398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303225, 0.455469, 0.837020,
		-0.276631, 0.798474, -0.534709,
		-0.911882, -0.393683, -0.116121,
		44.899067, 35.655369, 38.379562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097923, 36.518528, 38.569004>,  <45.537384, 35.930950, 38.460846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097923, 36.518528, 38.569004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885303, 36.185783, 38.632816>,  <44.757732, 35.986137, 38.671104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885303, 36.185783, 38.632816>,  <45.097923, 36.518528, 38.569004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885303, 36.185783, 38.632816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220195, 0.317583, 0.922310,
		-0.817903, 0.455129, -0.351985,
		-0.531554, -0.831865, 0.159535,
		44.725838, 35.936222, 38.680676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467018, 36.775455, 38.948814>,  <45.097923, 36.518528, 38.569004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467018, 36.775455, 38.948814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462879, 36.377914, 38.992912>,  <44.460396, 36.139389, 39.019371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.462879, 36.377914, 38.992912>,  <44.467018, 36.775455, 38.948814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462879, 36.377914, 38.992912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294053, 0.108405, 0.949622,
		-0.955733, -0.022589, -0.293366,
		-0.010351, -0.993850, 0.110249,
		44.459774, 36.079758, 39.025986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854660, 36.597717, 39.252705>,  <44.467018, 36.775455, 38.948814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854660, 36.597717, 39.252705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087799, 36.289642, 39.356319>,  <44.227680, 36.104797, 39.418488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087799, 36.289642, 39.356319>,  <43.854660, 36.597717, 39.252705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087799, 36.289642, 39.356319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427602, -0.019634, 0.903754,
		-0.690977, -0.637511, -0.340779,
		0.582844, -0.770191, 0.259034,
		44.262653, 36.058586, 39.434029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463951, 36.208527, 39.665619>,  <43.854660, 36.597717, 39.252705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463951, 36.208527, 39.665619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816044, 36.042149, 39.756989>,  <44.027302, 35.942322, 39.811810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816044, 36.042149, 39.756989>,  <43.463951, 36.208527, 39.665619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816044, 36.042149, 39.756989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287495, -0.084460, 0.954051,
		-0.377538, -0.905460, -0.193926,
		0.880234, -0.415943, 0.228429,
		44.080112, 35.917366, 39.825516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331142, 35.604931, 39.967865>,  <43.463951, 36.208527, 39.665619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331142, 35.604931, 39.967865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685638, 35.740620, 40.094048>,  <43.898335, 35.822033, 40.169758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685638, 35.740620, 40.094048>,  <43.331142, 35.604931, 39.967865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685638, 35.740620, 40.094048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347033, 0.035102, 0.937196,
		0.306841, -0.940052, 0.148829,
		0.886237, 0.339219, 0.315459,
		43.951511, 35.842384, 40.188686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479176, 35.178581, 40.488480>,  <43.331142, 35.604931, 39.967865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479176, 35.178581, 40.488480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731197, 35.483166, 40.549416>,  <43.882408, 35.665916, 40.585976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731197, 35.483166, 40.549416>,  <43.479176, 35.178581, 40.488480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731197, 35.483166, 40.549416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290806, 0.049464, 0.955502,
		0.720047, -0.646316, 0.252604,
		0.630051, 0.761465, 0.152336,
		43.920212, 35.711605, 40.595116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742279, 34.941185, 41.059662>,  <43.479176, 35.178581, 40.488480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742279, 34.941185, 41.059662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868698, 35.320683, 41.059074>,  <43.944550, 35.548382, 41.058720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.868698, 35.320683, 41.059074>,  <43.742279, 34.941185, 41.059662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868698, 35.320683, 41.059074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053954, 0.019524, 0.998352,
		0.947207, -0.315449, 0.057359,
		0.316050, 0.948742, -0.001473,
		43.963512, 35.605305, 41.058632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398884, 35.019012, 41.352776>,  <43.742279, 34.941185, 41.059662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398884, 35.019012, 41.352776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168308, 35.342014, 41.402832>,  <44.029964, 35.535816, 41.432865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168308, 35.342014, 41.402832>,  <44.398884, 35.019012, 41.352776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168308, 35.342014, 41.402832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165769, -0.034402, 0.985564,
		0.800149, 0.588862, -0.114028,
		-0.576439, 0.807501, 0.125142,
		43.995377, 35.584263, 41.440376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751839, 35.435047, 41.854305>,  <44.398884, 35.019012, 41.352776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751839, 35.435047, 41.854305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387554, 35.599640, 41.839973>,  <44.168983, 35.698395, 41.831375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.387554, 35.599640, 41.839973>,  <44.751839, 35.435047, 41.854305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387554, 35.599640, 41.839973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044129, -0.010695, 0.998969,
		0.410677, 0.911354, 0.027898,
		-0.910712, 0.411484, -0.035825,
		44.114342, 35.723083, 41.829227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827286, 35.639462, 42.516384>,  <44.751839, 35.435047, 41.854305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827286, 35.639462, 42.516384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445599, 35.703556, 42.415356>,  <44.216587, 35.742012, 42.354740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445599, 35.703556, 42.415356>,  <44.827286, 35.639462, 42.516384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445599, 35.703556, 42.415356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226571, 0.164072, 0.960076,
		0.195275, 0.973348, -0.120257,
		-0.954219, 0.160232, -0.252572,
		44.159332, 35.751625, 42.339584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640850, 36.226227, 42.835468>,  <44.827286, 35.639462, 42.516384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640850, 36.226227, 42.835468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295296, 36.032284, 42.780910>,  <44.087963, 35.915916, 42.748177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295296, 36.032284, 42.780910>,  <44.640850, 36.226227, 42.835468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295296, 36.032284, 42.780910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171729, 0.028963, 0.984718,
		-0.473501, 0.874112, -0.108286,
		-0.863890, -0.484861, -0.136397,
		44.036129, 35.886826, 42.739990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.179688, 36.628574, 43.202740>,  <44.640850, 36.226227, 42.835468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.179688, 36.628574, 43.202740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016266, 36.267204, 43.150734>,  <43.918213, 36.050381, 43.119530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016266, 36.267204, 43.150734>,  <44.179688, 36.628574, 43.202740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016266, 36.267204, 43.150734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109716, -0.092807, 0.989621,
		-0.906117, 0.418577, -0.061204,
		-0.408552, -0.903427, -0.130018,
		43.893700, 35.996178, 43.111729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557011, 36.688442, 43.561325>,  <44.179688, 36.628574, 43.202740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557011, 36.688442, 43.561325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666973, 36.304321, 43.542377>,  <43.732952, 36.073849, 43.531010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666973, 36.304321, 43.542377>,  <43.557011, 36.688442, 43.561325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666973, 36.304321, 43.542377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269419, -0.124236, 0.954976,
		-0.922952, -0.249766, -0.292877,
		0.274906, -0.960303, -0.047372,
		43.749443, 36.016232, 43.528168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036953, 36.322693, 43.740635>,  <43.557011, 36.688442, 43.561325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036953, 36.322693, 43.740635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360893, 36.106560, 43.832008>,  <43.555260, 35.976879, 43.886833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360893, 36.106560, 43.832008>,  <43.036953, 36.322693, 43.740635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360893, 36.106560, 43.832008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291218, -0.032266, 0.956113,
		-0.509246, -0.840834, -0.183485,
		0.809852, -0.540331, 0.228434,
		43.603848, 35.944462, 43.900539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860611, 35.820625, 44.208828>,  <43.036953, 36.322693, 43.740635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860611, 35.820625, 44.208828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251141, 35.879452, 44.272285>,  <43.485458, 35.914749, 44.310360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251141, 35.879452, 44.272285>,  <42.860611, 35.820625, 44.208828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251141, 35.879452, 44.272285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125279, -0.213466, 0.968885,
		0.176356, -0.965818, -0.189987,
		0.976322, 0.147067, 0.158643,
		43.544037, 35.923573, 44.319878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195141, 35.242249, 44.469582>,  <42.860611, 35.820625, 44.208828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195141, 35.242249, 44.469582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412445, 35.555519, 44.590588>,  <43.542828, 35.743481, 44.663193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.412445, 35.555519, 44.590588>,  <43.195141, 35.242249, 44.469582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412445, 35.555519, 44.590588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097050, -0.299326, 0.949203,
		0.833939, -0.545019, -0.086604,
		0.543256, 0.783172, 0.302513,
		43.575420, 35.790470, 44.681343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797413, 34.852100, 44.711861>,  <43.195141, 35.242249, 44.469582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797413, 34.852100, 44.711861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986282, 34.583584, 44.940395>,  <44.099602, 34.422474, 45.077515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.986282, 34.583584, 44.940395>,  <43.797413, 34.852100, 44.711861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986282, 34.583584, 44.940395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871960, -0.450804, 0.190947,
		0.129379, -0.588341, -0.798195,
		0.472172, -0.671290, 0.571335,
		44.127934, 34.382198, 45.111797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539658, 34.157093, 44.521542>,  <43.797413, 34.852100, 44.711861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539658, 34.157093, 44.521542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682014, 34.177296, 44.894806>,  <43.767429, 34.189415, 45.118767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682014, 34.177296, 44.894806>,  <43.539658, 34.157093, 44.521542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682014, 34.177296, 44.894806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845218, -0.408600, 0.344461,
		0.398687, -0.911315, -0.102730,
		0.355888, 0.050503, 0.933163,
		43.788780, 34.192448, 45.174755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492596, 33.430763, 44.909451>,  <43.539658, 34.157093, 44.521542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492596, 33.430763, 44.909451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462082, 33.766090, 45.125374>,  <43.443775, 33.967289, 45.254929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462082, 33.766090, 45.125374>,  <43.492596, 33.430763, 44.909451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462082, 33.766090, 45.125374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810270, -0.367626, 0.456414,
		0.581070, -0.402576, 0.707312,
		-0.076284, 0.838322, 0.539812,
		43.439198, 34.017586, 45.287319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934521, 32.915245, 44.706688>,  <43.492596, 33.430763, 44.909451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934521, 32.915245, 44.706688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990520, 32.519791, 44.728596>,  <44.024120, 32.282516, 44.741741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990520, 32.519791, 44.728596>,  <43.934521, 32.915245, 44.706688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990520, 32.519791, 44.728596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911422, 0.107059, -0.397302,
		0.386924, 0.105537, 0.916052,
		0.140002, -0.988636, 0.054765,
		44.032520, 32.223202, 44.745026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577061, 32.833008, 45.035954>,  <43.934521, 32.915245, 44.706688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577061, 32.833008, 45.035954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485519, 32.509621, 44.819065>,  <44.430595, 32.315590, 44.688934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485519, 32.509621, 44.819065>,  <44.577061, 32.833008, 45.035954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485519, 32.509621, 44.819065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916692, 0.008445, -0.399505,
		0.327567, -0.588477, 0.739185,
		-0.228857, -0.808470, -0.542219,
		44.416862, 32.267078, 44.656399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220417, 32.445255, 45.025955>,  <44.577061, 32.833008, 45.035954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220417, 32.445255, 45.025955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971962, 32.332607, 44.733414>,  <44.822891, 32.265018, 44.557888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971962, 32.332607, 44.733414>,  <45.220417, 32.445255, 45.025955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971962, 32.332607, 44.733414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781740, -0.156600, -0.603622,
		0.055462, -0.946660, 0.317424,
		-0.621133, -0.281621, -0.731357,
		44.785622, 32.248119, 44.514008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694920, 32.026398, 44.591785>,  <45.220417, 32.445255, 45.025955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694920, 32.026398, 44.591785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337395, 32.071606, 44.418201>,  <45.122879, 32.098732, 44.314053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337395, 32.071606, 44.418201>,  <45.694920, 32.026398, 44.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337395, 32.071606, 44.418201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436549, -0.002015, -0.899678,
		-0.102556, -0.993591, -0.047538,
		-0.893816, 0.113020, -0.433958,
		45.069248, 32.105511, 44.288013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780933, 31.551449, 44.117104>,  <45.694920, 32.026398, 44.591785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780933, 31.551449, 44.117104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483742, 31.790676, 43.996906>,  <45.305428, 31.934214, 43.924786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483742, 31.790676, 43.996906>,  <45.780933, 31.551449, 44.117104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483742, 31.790676, 43.996906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364109, -0.015561, -0.931226,
		-0.561614, -0.801293, -0.206201,
		-0.742976, 0.598070, -0.300498,
		45.260849, 31.970097, 43.906757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423313, 31.278677, 43.472729>,  <45.780933, 31.551449, 44.117104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423313, 31.278677, 43.472729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337326, 31.668858, 43.491833>,  <45.285736, 31.902966, 43.503296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337326, 31.668858, 43.491833>,  <45.423313, 31.278677, 43.472729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337326, 31.668858, 43.491833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254985, 0.103265, -0.961415,
		-0.942748, -0.194490, -0.270925,
		-0.214963, 0.975454, 0.047761,
		45.272839, 31.961494, 43.506161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104500, 31.393532, 42.869953>,  <45.423313, 31.278677, 43.472729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104500, 31.393532, 42.869953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204865, 31.764463, 42.981018>,  <45.265083, 31.987022, 43.047657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204865, 31.764463, 42.981018>,  <45.104500, 31.393532, 42.869953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204865, 31.764463, 42.981018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232416, 0.220740, -0.947236,
		-0.939694, 0.302209, -0.160140,
		0.250914, 0.927331, 0.277667,
		45.280140, 32.042664, 43.064320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742573, 31.806694, 42.440670>,  <45.104500, 31.393532, 42.869953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742573, 31.806694, 42.440670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036594, 32.042351, 42.574898>,  <45.213005, 32.183746, 42.655434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036594, 32.042351, 42.574898>,  <44.742573, 31.806694, 42.440670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036594, 32.042351, 42.574898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071426, 0.424896, -0.902420,
		-0.674238, 0.687294, 0.270240,
		0.735052, 0.589144, 0.335572,
		45.257111, 32.219093, 42.675568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568611, 32.445557, 42.187851>,  <44.742573, 31.806694, 42.440670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568611, 32.445557, 42.187851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962708, 32.457497, 42.255264>,  <45.199165, 32.464661, 42.295712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962708, 32.457497, 42.255264>,  <44.568611, 32.445557, 42.187851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962708, 32.457497, 42.255264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129925, 0.510573, -0.849961,
		-0.111425, 0.859316, 0.499160,
		0.985243, 0.029854, 0.168537,
		45.258282, 32.466454, 42.305824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747364, 33.058094, 41.997181>,  <44.568611, 32.445557, 42.187851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747364, 33.058094, 41.997181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098309, 32.866421, 41.987225>,  <45.308876, 32.751415, 41.981251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098309, 32.866421, 41.987225>,  <44.747364, 33.058094, 41.997181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098309, 32.866421, 41.987225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267029, 0.530704, -0.804394,
		0.398667, 0.699095, 0.593575,
		0.877360, -0.479187, -0.024896,
		45.361515, 32.722664, 41.979755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184498, 33.640240, 41.862892>,  <44.747364, 33.058094, 41.997181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184498, 33.640240, 41.862892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373379, 33.300022, 41.770290>,  <45.486710, 33.095890, 41.714729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373379, 33.300022, 41.770290>,  <45.184498, 33.640240, 41.862892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373379, 33.300022, 41.770290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325233, 0.412204, -0.851065,
		0.819296, 0.326586, 0.471271,
		0.472205, -0.850547, -0.231501,
		45.515041, 33.044857, 41.700840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747517, 33.802330, 41.415497>,  <45.184498, 33.640240, 41.862892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747517, 33.802330, 41.415497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790813, 33.414349, 41.328346>,  <45.816792, 33.181561, 41.276054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790813, 33.414349, 41.328346>,  <45.747517, 33.802330, 41.415497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790813, 33.414349, 41.328346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331964, 0.241854, -0.911760,
		0.937061, 0.026364, 0.348169,
		0.108243, -0.969954, -0.217880,
		45.823288, 33.123363, 41.262981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498722, 33.737789, 41.211182>,  <45.747517, 33.802330, 41.415497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498722, 33.737789, 41.211182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281502, 33.431198, 41.074009>,  <46.151169, 33.247242, 40.991703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281502, 33.431198, 41.074009>,  <46.498722, 33.737789, 41.211182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281502, 33.431198, 41.074009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378228, 0.141344, -0.914858,
		0.749690, -0.626525, 0.213146,
		-0.543054, -0.766478, -0.342934,
		46.118584, 33.201256, 40.971130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.014606, 33.351734, 40.770069>,  <46.498722, 33.737789, 41.211182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.014606, 33.351734, 40.770069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649632, 33.236744, 40.653576>,  <46.430645, 33.167751, 40.583679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.649632, 33.236744, 40.653576>,  <47.014606, 33.351734, 40.770069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.649632, 33.236744, 40.653576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315200, -0.039867, -0.948188,
		0.260971, -0.956958, 0.126989,
		-0.912438, -0.287477, -0.291229,
		46.375900, 33.150501, 40.566208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096157, 32.808994, 40.389423>,  <47.014606, 33.351734, 40.770069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096157, 32.808994, 40.389423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742550, 32.956718, 40.274799>,  <46.530384, 33.045353, 40.206024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742550, 32.956718, 40.274799>,  <47.096157, 32.808994, 40.389423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742550, 32.956718, 40.274799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295378, -0.033793, -0.954783,
		-0.362298, -0.928690, -0.079214,
		-0.884020, 0.369314, -0.286558,
		46.477345, 33.067513, 40.188831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.102085, 32.633293, 39.741367>,  <47.096157, 32.808994, 40.389423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.102085, 32.633293, 39.741367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785320, 32.877548, 39.742455>,  <46.595261, 33.024101, 39.743107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785320, 32.877548, 39.742455>,  <47.102085, 32.633293, 39.741367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785320, 32.877548, 39.742455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014759, -0.014692, -0.999783,
		-0.610461, -0.791777, 0.020647,
		-0.791909, 0.610634, 0.002717,
		46.547749, 33.060738, 39.743271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.512264, 32.306438, 39.438370>,  <47.102085, 32.633293, 39.741367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.512264, 32.306438, 39.438370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448895, 32.698811, 39.393333>,  <46.410873, 32.934235, 39.366310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448895, 32.698811, 39.393333>,  <46.512264, 32.306438, 39.438370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448895, 32.698811, 39.393333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116100, -0.131746, -0.984461,
		-0.980522, -0.142892, 0.134758,
		-0.158425, 0.980931, -0.112591,
		46.401367, 32.993092, 39.359558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100124, 32.286446, 38.921455>,  <46.512264, 32.306438, 39.438370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100124, 32.286446, 38.921455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217636, 32.668777, 38.924881>,  <46.288143, 32.898178, 38.926937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217636, 32.668777, 38.924881>,  <46.100124, 32.286446, 38.921455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217636, 32.668777, 38.924881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019857, 0.002851, -0.999799,
		-0.955666, 0.293895, -0.018143,
		0.293784, 0.955834, 0.008560,
		46.305771, 32.955528, 38.927448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736572, 32.724468, 38.313618>,  <46.100124, 32.286446, 38.921455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736572, 32.724468, 38.313618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065670, 32.927353, 38.416245>,  <46.263130, 33.049084, 38.477821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.065670, 32.927353, 38.416245>,  <45.736572, 32.724468, 38.313618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065670, 32.927353, 38.416245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207000, 0.153012, -0.966301,
		-0.529381, 0.848127, 0.020896,
		0.822744, 0.507216, 0.256564,
		46.312492, 33.079517, 38.493214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625416, 33.248924, 37.937565>,  <45.736572, 32.724468, 38.313618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625416, 33.248924, 37.937565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013248, 33.250931, 38.035450>,  <46.245949, 33.252136, 38.094181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013248, 33.250931, 38.035450>,  <45.625416, 33.248924, 37.937565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013248, 33.250931, 38.035450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228400, 0.340915, -0.911927,
		-0.088004, 0.940081, 0.329399,
		0.969582, 0.005018, 0.244716,
		46.304123, 33.252438, 38.108864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960941, 33.921417, 37.642876>,  <45.625416, 33.248924, 37.937565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960941, 33.921417, 37.642876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260239, 33.662380, 37.700504>,  <46.439816, 33.506958, 37.735081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260239, 33.662380, 37.700504>,  <45.960941, 33.921417, 37.642876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260239, 33.662380, 37.700504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304682, 0.142524, -0.941730,
		0.589326, 0.748537, 0.303953,
		0.748240, -0.647595, 0.144073,
		46.484711, 33.468102, 37.743725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575649, 34.261265, 37.455887>,  <45.960941, 33.921417, 37.642876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575649, 34.261265, 37.455887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670628, 33.872795, 37.447433>,  <46.727615, 33.639713, 37.442360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670628, 33.872795, 37.447433>,  <46.575649, 34.261265, 37.455887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670628, 33.872795, 37.447433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411690, 0.120316, -0.903347,
		0.879847, 0.205795, 0.428390,
		0.237446, -0.971171, -0.021136,
		46.741863, 33.581444, 37.441093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221024, 34.229912, 37.274170>,  <46.575649, 34.261265, 37.455887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221024, 34.229912, 37.274170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089996, 33.860493, 37.194408>,  <47.011379, 33.638844, 37.146553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089996, 33.860493, 37.194408>,  <47.221024, 34.229912, 37.274170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089996, 33.860493, 37.194408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360366, 0.072967, -0.929953,
		0.873404, -0.376482, 0.308912,
		-0.327570, -0.923546, -0.199401,
		46.991726, 33.583427, 37.134586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.762581, 33.917191, 37.027618>,  <47.221024, 34.229912, 37.274170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.762581, 33.917191, 37.027618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429970, 33.742100, 36.890823>,  <47.230404, 33.637047, 36.808746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.429970, 33.742100, 36.890823>,  <47.762581, 33.917191, 37.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.429970, 33.742100, 36.890823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302435, 0.159650, -0.939705,
		0.465934, -0.884819, -0.000369,
		-0.831528, -0.437729, -0.341987,
		47.180511, 33.610783, 36.788227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.075241, 33.497147, 36.560753>,  <47.762581, 33.917191, 37.027618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.075241, 33.497147, 36.560753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684917, 33.501087, 36.473389>,  <47.450722, 33.503452, 36.420971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684917, 33.501087, 36.473389>,  <48.075241, 33.497147, 36.560753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684917, 33.501087, 36.473389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218198, 0.106644, -0.970060,
		0.013729, -0.994249, -0.106215,
		-0.975808, 0.009858, -0.218407,
		47.392174, 33.504044, 36.407867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.946701, 33.122879, 35.880852>,  <48.075241, 33.497147, 36.560753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.946701, 33.122879, 35.880852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633793, 33.367439, 35.928589>,  <47.446049, 33.514175, 35.957230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.633793, 33.367439, 35.928589>,  <47.946701, 33.122879, 35.880852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.633793, 33.367439, 35.928589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146039, 0.366229, -0.918993,
		-0.605581, -0.701471, -0.375778,
		-0.782268, 0.611404, 0.119339,
		47.399113, 33.550861, 35.964390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456650, 33.098507, 35.221920>,  <47.946701, 33.122879, 35.880852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456650, 33.098507, 35.221920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489265, 33.444439, 35.420082>,  <47.508835, 33.651997, 35.538979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489265, 33.444439, 35.420082>,  <47.456650, 33.098507, 35.221920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.489265, 33.444439, 35.420082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331344, 0.445262, -0.831837,
		-0.939980, 0.231978, -0.250248,
		0.081542, 0.864828, 0.495402,
		47.513729, 33.703888, 35.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092255, 33.694126, 34.925308>,  <47.456650, 33.098507, 35.221920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092255, 33.694126, 34.925308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424328, 33.835777, 35.097530>,  <47.623573, 33.920769, 35.200863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.424328, 33.835777, 35.097530>,  <47.092255, 33.694126, 34.925308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.424328, 33.835777, 35.097530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319904, 0.329890, -0.888163,
		-0.456564, 0.875079, 0.160582,
		0.830187, 0.354132, 0.430557,
		47.673386, 33.942017, 35.226696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119564, 34.402687, 34.802940>,  <47.092255, 33.694126, 34.925308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119564, 34.402687, 34.802940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.468006, 34.207417, 34.824368>,  <47.677071, 34.090256, 34.837223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.468006, 34.207417, 34.824368>,  <47.119564, 34.402687, 34.802940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.468006, 34.207417, 34.824368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224787, 0.299353, -0.927286,
		0.436640, 0.819801, 0.370502,
		0.871101, -0.488174, 0.053571,
		47.729336, 34.060963, 34.840439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.567039, 34.692974, 35.268093>,  <47.119564, 34.402687, 34.802940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.567039, 34.692974, 35.268093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720310, 34.983643, 35.040016>,  <47.812275, 35.158043, 34.903168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.720310, 34.983643, 35.040016>,  <47.567039, 34.692974, 35.268093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.720310, 34.983643, 35.040016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450382, 0.685945, 0.571520,
		0.806429, 0.037810, 0.590120,
		0.383181, 0.726670, -0.570195,
		47.835266, 35.201645, 34.868958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.770599, 37.483669, 45.118607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371452, 37.490753, 45.143726>,  <37.131962, 37.495003, 45.158798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371452, 37.490753, 45.143726>,  <37.770599, 37.483669, 45.118607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371452, 37.490753, 45.143726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061364, 0.072349, -0.995490,
		-0.022169, -0.997222, -0.071108,
		-0.997869, 0.017706, 0.062798,
		37.072090, 37.496063, 45.162567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535976, 36.955097, 44.656075>,  <37.770599, 37.483669, 45.118607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535976, 36.955097, 44.656075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230469, 37.205681, 44.718296>,  <37.047165, 37.356033, 44.755630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230469, 37.205681, 44.718296>,  <37.535976, 36.955097, 44.656075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230469, 37.205681, 44.718296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098184, 0.125432, -0.987232,
		-0.637975, -0.769293, -0.034293,
		-0.763773, 0.626462, 0.155555,
		37.001335, 37.393620, 44.764961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882019, 36.684708, 44.309406>,  <37.535976, 36.955097, 44.656075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882019, 36.684708, 44.309406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811543, 37.077602, 44.335228>,  <36.769257, 37.313339, 44.350719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811543, 37.077602, 44.335228>,  <36.882019, 36.684708, 44.309406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811543, 37.077602, 44.335228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279614, 0.012934, -0.960025,
		-0.943807, -0.187198, 0.272368,
		-0.176192, 0.982237, 0.064551,
		36.758686, 37.372272, 44.354591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384983, 36.665218, 43.908604>,  <36.882019, 36.684708, 44.309406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384983, 36.665218, 43.908604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.488976, 37.050697, 43.932926>,  <36.551373, 37.281986, 43.947521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.488976, 37.050697, 43.932926>,  <36.384983, 36.665218, 43.908604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488976, 37.050697, 43.932926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046807, 0.050324, -0.997636,
		-0.964479, 0.262211, -0.032025,
		0.259980, 0.963697, 0.060810,
		36.566971, 37.339806, 43.951168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888954, 36.984985, 43.553230>,  <36.384983, 36.665218, 43.908604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888954, 36.984985, 43.553230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195995, 37.241154, 43.543045>,  <36.380222, 37.394855, 43.536934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195995, 37.241154, 43.543045>,  <35.888954, 36.984985, 43.553230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195995, 37.241154, 43.543045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001311, -0.038161, -0.999271,
		-0.640922, 0.767078, -0.028453,
		0.767605, 0.640417, -0.025464,
		36.426277, 37.433277, 43.535404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773319, 37.685745, 43.168575>,  <35.888954, 36.984985, 43.553230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773319, 37.685745, 43.168575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155384, 37.570396, 43.141750>,  <36.384624, 37.501186, 43.125656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155384, 37.570396, 43.141750>,  <35.773319, 37.685745, 43.168575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155384, 37.570396, 43.141750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018592, 0.167633, -0.985674,
		0.295487, 0.942729, 0.154756,
		0.955166, -0.288377, -0.067061,
		36.441933, 37.483883, 43.121632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989853, 38.224213, 42.678745>,  <35.773319, 37.685745, 43.168575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989853, 38.224213, 42.678745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275436, 37.944141, 42.678432>,  <36.446789, 37.776096, 42.678246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275436, 37.944141, 42.678432>,  <35.989853, 38.224213, 42.678745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275436, 37.944141, 42.678432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184624, 0.189338, -0.964399,
		0.675404, 0.688401, 0.264451,
		0.713963, -0.700182, -0.000784,
		36.489624, 37.734085, 42.678196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592400, 38.518204, 42.393608>,  <35.989853, 38.224213, 42.678745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592400, 38.518204, 42.393608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656326, 38.124233, 42.367138>,  <36.694683, 37.887852, 42.351257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656326, 38.124233, 42.367138>,  <36.592400, 38.518204, 42.393608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656326, 38.124233, 42.367138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328899, 0.116336, -0.937172,
		0.930744, 0.128011, 0.342534,
		0.159818, -0.984926, -0.066176,
		36.704273, 37.828754, 42.347286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228436, 38.485439, 42.018345>,  <36.592400, 38.518204, 42.393608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228436, 38.485439, 42.018345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105034, 38.106865, 41.980209>,  <37.030991, 37.879723, 41.957329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.105034, 38.106865, 41.980209>,  <37.228436, 38.485439, 42.018345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105034, 38.106865, 41.980209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313720, -0.006618, -0.949492,
		0.898000, -0.322834, 0.298957,
		-0.308507, -0.946432, -0.095336,
		37.012482, 37.822937, 41.951607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834946, 38.027824, 41.775753>,  <37.228436, 38.485439, 42.018345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834946, 38.027824, 41.775753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.473057, 37.884060, 41.684273>,  <37.255924, 37.797802, 41.629387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.473057, 37.884060, 41.684273>,  <37.834946, 38.027824, 41.775753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473057, 37.884060, 41.684273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260967, -0.043272, -0.964377,
		0.336716, -0.932174, 0.132944,
		-0.904720, -0.359415, -0.228696,
		37.201641, 37.776234, 41.615665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992390, 37.748436, 41.180115>,  <37.834946, 38.027824, 41.775753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992390, 37.748436, 41.180115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594284, 37.725838, 41.148449>,  <37.355423, 37.712280, 41.129452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594284, 37.725838, 41.148449>,  <37.992390, 37.748436, 41.180115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594284, 37.725838, 41.148449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078066, 0.021359, -0.996719,
		0.058009, -0.998174, -0.016847,
		-0.995259, -0.056504, -0.079162,
		37.295708, 37.708889, 41.124699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838661, 37.123592, 40.705978>,  <37.992390, 37.748436, 41.180115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838661, 37.123592, 40.705978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513386, 37.356388, 40.704746>,  <37.318218, 37.496063, 40.704006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513386, 37.356388, 40.704746>,  <37.838661, 37.123592, 40.705978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513386, 37.356388, 40.704746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007544, -0.015836, -0.999846,
		-0.581946, -0.813044, 0.017268,
		-0.813193, 0.581987, -0.003081,
		37.269428, 37.530983, 40.703823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319130, 36.805706, 40.301590>,  <37.838661, 37.123592, 40.705978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319130, 36.805706, 40.301590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216602, 37.192345, 40.301952>,  <37.155087, 37.424328, 40.302170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216602, 37.192345, 40.301952>,  <37.319130, 36.805706, 40.301590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216602, 37.192345, 40.301952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202666, -0.052828, -0.977822,
		-0.945107, -0.250817, 0.209436,
		-0.256318, 0.966592, 0.000904,
		37.139706, 37.482323, 40.302223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770912, 36.781715, 39.885017>,  <37.319130, 36.805706, 40.301590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770912, 36.781715, 39.885017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849091, 37.173954, 39.891136>,  <36.895996, 37.409298, 39.894806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.849091, 37.173954, 39.891136>,  <36.770912, 36.781715, 39.885017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849091, 37.173954, 39.891136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333285, 0.081078, -0.939334,
		-0.922347, 0.178487, 0.342664,
		0.195442, 0.980596, 0.015294,
		36.907722, 37.468132, 39.895725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212666, 37.124855, 39.634460>,  <36.770912, 36.781715, 39.885017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212666, 37.124855, 39.634460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.513233, 37.382614, 39.577721>,  <36.693573, 37.537270, 39.543678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.513233, 37.382614, 39.577721>,  <36.212666, 37.124855, 39.634460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513233, 37.382614, 39.577721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350733, 0.207988, -0.913087,
		-0.558887, 0.735863, 0.382297,
		0.751420, 0.644397, -0.141850,
		36.738659, 37.575932, 39.535164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963470, 37.705196, 39.409729>,  <36.212666, 37.124855, 39.634460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963470, 37.705196, 39.409729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340462, 37.775345, 39.295906>,  <36.566658, 37.817436, 39.227612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340462, 37.775345, 39.295906>,  <35.963470, 37.705196, 39.409729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340462, 37.775345, 39.295906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324508, 0.275965, -0.904731,
		-0.080140, 0.945033, 0.317002,
		0.942482, 0.175375, -0.284555,
		36.623207, 37.827957, 39.210541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909843, 38.292461, 38.800690>,  <35.963470, 37.705196, 39.409729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909843, 38.292461, 38.800690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276131, 38.132977, 38.780704>,  <36.495903, 38.037285, 38.768715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276131, 38.132977, 38.780704>,  <35.909843, 38.292461, 38.800690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276131, 38.132977, 38.780704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030394, 0.055255, -0.998010,
		0.400676, 0.915412, 0.038480,
		0.915716, -0.398709, -0.049962,
		36.550846, 38.013363, 38.765717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241810, 38.687611, 38.271309>,  <35.909843, 38.292461, 38.800690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241810, 38.687611, 38.271309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411972, 38.327370, 38.306946>,  <36.514069, 38.111225, 38.328327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.411972, 38.327370, 38.306946>,  <36.241810, 38.687611, 38.271309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411972, 38.327370, 38.306946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024465, -0.086965, -0.995911,
		0.904671, 0.425847, -0.014962,
		0.425407, -0.900606, 0.089093,
		36.539593, 38.057186, 38.333675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708904, 38.715363, 37.780396>,  <36.241810, 38.687611, 38.271309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708904, 38.715363, 37.780396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684494, 38.320454, 37.839134>,  <36.669849, 38.083508, 37.874378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684494, 38.320454, 37.839134>,  <36.708904, 38.715363, 37.780396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684494, 38.320454, 37.839134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238533, -0.157280, -0.958314,
		0.969215, -0.023451, 0.245095,
		-0.061022, -0.987275, 0.146844,
		36.666187, 38.024269, 37.883186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293671, 38.413990, 37.353336>,  <36.708904, 38.715363, 37.780396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293671, 38.413990, 37.353336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030903, 38.116901, 37.405212>,  <36.873241, 37.938648, 37.436337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030903, 38.116901, 37.405212>,  <37.293671, 38.413990, 37.353336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030903, 38.116901, 37.405212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009314, -0.163999, -0.986416,
		0.753906, -0.649201, 0.100816,
		-0.656917, -0.742726, 0.129687,
		36.833828, 37.894085, 37.444118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559536, 37.756935, 37.134811>,  <37.293671, 38.413990, 37.353336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559536, 37.756935, 37.134811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161232, 37.725552, 37.115593>,  <36.922249, 37.706722, 37.104061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161232, 37.725552, 37.115593>,  <37.559536, 37.756935, 37.134811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161232, 37.725552, 37.115593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057225, -0.119225, -0.991217,
		0.072039, -0.989763, 0.123209,
		-0.995759, -0.078457, -0.048050,
		36.862503, 37.702015, 37.101177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488888, 37.209427, 36.630062>,  <37.559536, 37.756935, 37.134811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488888, 37.209427, 36.630062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150433, 37.420982, 36.656380>,  <36.947361, 37.547916, 36.672173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.150433, 37.420982, 36.656380>,  <37.488888, 37.209427, 36.630062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150433, 37.420982, 36.656380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042977, 0.055342, -0.997542,
		-0.531228, -0.846886, -0.024097,
		-0.846138, 0.528887, 0.065796,
		36.896591, 37.579647, 36.676117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062138, 36.896317, 36.252789>,  <37.488888, 37.209427, 36.630062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062138, 36.896317, 36.252789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427284, 37.050148, 36.197987>,  <38.646374, 37.142445, 36.165108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427284, 37.050148, 36.197987>,  <38.062138, 36.896317, 36.252789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427284, 37.050148, 36.197987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131002, 0.041894, 0.990497,
		0.386662, -0.922142, -0.012136,
		0.912870, 0.384578, -0.137001,
		38.701145, 37.165520, 36.156887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571281, 36.444878, 36.762222>,  <38.062138, 36.896317, 36.252789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571281, 36.444878, 36.762222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787861, 36.769749, 36.675327>,  <38.917809, 36.964672, 36.623188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787861, 36.769749, 36.675327>,  <38.571281, 36.444878, 36.762222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787861, 36.769749, 36.675327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350171, 0.017055, 0.936530,
		0.764336, -0.583158, -0.275167,
		0.541452, 0.812180, -0.217240,
		38.950298, 37.013401, 36.610157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302303, 36.373634, 37.008911>,  <38.571281, 36.444878, 36.762222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302303, 36.373634, 37.008911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249367, 36.769234, 36.982452>,  <39.217606, 37.006592, 36.966579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249367, 36.769234, 36.982452>,  <39.302303, 36.373634, 37.008911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249367, 36.769234, 36.982452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251794, 0.098084, 0.962798,
		0.958690, 0.110761, -0.262003,
		-0.132338, 0.988995, -0.066143,
		39.209667, 37.065933, 36.962608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839256, 36.602402, 37.227562>,  <39.302303, 36.373634, 37.008911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839256, 36.602402, 37.227562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609150, 36.926807, 37.270138>,  <39.471085, 37.121449, 37.295685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.609150, 36.926807, 37.270138>,  <39.839256, 36.602402, 37.227562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609150, 36.926807, 37.270138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260497, 0.058296, 0.963713,
		0.775378, 0.582118, -0.244802,
		-0.575266, 0.811012, 0.106438,
		39.436569, 37.170113, 37.302071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262760, 37.069244, 37.660362>,  <39.839256, 36.602402, 37.227562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262760, 37.069244, 37.660362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892357, 37.213577, 37.704742>,  <39.670116, 37.300175, 37.731373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892357, 37.213577, 37.704742>,  <40.262760, 37.069244, 37.660362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892357, 37.213577, 37.704742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165727, 0.124492, 0.978282,
		0.339181, 0.924285, -0.175080,
		-0.926008, 0.360830, 0.110954,
		39.614555, 37.321827, 37.738029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341305, 37.481300, 38.147747>,  <40.262760, 37.069244, 37.660362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341305, 37.481300, 38.147747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.942432, 37.452045, 38.140999>,  <39.703110, 37.434490, 38.136951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.942432, 37.452045, 38.140999>,  <40.341305, 37.481300, 38.147747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942432, 37.452045, 38.140999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013304, -0.048934, 0.998713,
		-0.073873, 0.996120, 0.047823,
		-0.997179, -0.073142, -0.016867,
		39.643280, 37.430103, 38.135937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128284, 37.898876, 38.610641>,  <40.341305, 37.481300, 38.147747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128284, 37.898876, 38.610641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813984, 37.656487, 38.561008>,  <39.625404, 37.511055, 38.531231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813984, 37.656487, 38.561008>,  <40.128284, 37.898876, 38.610641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813984, 37.656487, 38.561008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127705, -0.037350, 0.991109,
		-0.605216, 0.794611, -0.048037,
		-0.785751, -0.605970, -0.124080,
		39.578259, 37.474697, 38.523785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706482, 38.130970, 39.073143>,  <40.128284, 37.898876, 38.610641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706482, 38.130970, 39.073143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567028, 37.764446, 38.994316>,  <39.483356, 37.544533, 38.947018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.567028, 37.764446, 38.994316>,  <39.706482, 38.130970, 39.073143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567028, 37.764446, 38.994316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288990, -0.094923, 0.952615,
		-0.891593, 0.389067, -0.231710,
		-0.348636, -0.916306, -0.197070,
		39.462437, 37.489555, 38.935196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277905, 38.073112, 39.558735>,  <39.706482, 38.130970, 39.073143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277905, 38.073112, 39.558735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.308331, 37.690998, 39.444443>,  <39.326584, 37.461731, 39.375866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.308331, 37.690998, 39.444443>,  <39.277905, 38.073112, 39.558735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308331, 37.690998, 39.444443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203089, -0.295396, 0.933540,
		-0.976201, -0.012979, -0.216477,
		0.076063, -0.955287, -0.285730,
		39.331150, 37.404411, 39.358723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641499, 37.675800, 39.734821>,  <39.277905, 38.073112, 39.558735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641499, 37.675800, 39.734821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956429, 37.429325, 39.726482>,  <39.145386, 37.281441, 39.721478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956429, 37.429325, 39.726482>,  <38.641499, 37.675800, 39.734821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956429, 37.429325, 39.726482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174577, -0.255237, 0.950987,
		-0.591308, -0.745095, -0.308526,
		0.787323, -0.616188, -0.020848,
		39.192627, 37.244469, 39.720226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345070, 37.051605, 39.841099>,  <38.641499, 37.675800, 39.734821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345070, 37.051605, 39.841099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734192, 37.069027, 39.932098>,  <38.967667, 37.079479, 39.986698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.734192, 37.069027, 39.932098>,  <38.345070, 37.051605, 39.841099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734192, 37.069027, 39.932098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219001, -0.146880, 0.964606,
		0.075431, -0.988195, -0.133346,
		0.972804, 0.043558, 0.227495,
		39.026031, 37.082096, 40.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466171, 36.546951, 40.329288>,  <38.345070, 37.051605, 39.841099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466171, 36.546951, 40.329288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814095, 36.741459, 40.362705>,  <39.022846, 36.858166, 40.382755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.814095, 36.741459, 40.362705>,  <38.466171, 36.546951, 40.329288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814095, 36.741459, 40.362705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042099, -0.095552, 0.994534,
		0.491598, -0.868566, -0.062640,
		0.869804, 0.486274, 0.083539,
		39.075035, 36.887341, 40.387768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791790, 36.135639, 40.837585>,  <38.466171, 36.546951, 40.329288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791790, 36.135639, 40.837585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971027, 36.493225, 40.839943>,  <39.078571, 36.707775, 40.841358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971027, 36.493225, 40.839943>,  <38.791790, 36.135639, 40.837585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971027, 36.493225, 40.839943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008960, -0.011085, 0.999899,
		0.893940, -0.447999, -0.012977,
		0.448097, 0.893966, 0.005895,
		39.105457, 36.761414, 40.841713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232601, 36.070763, 41.311932>,  <38.791790, 36.135639, 40.837585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232601, 36.070763, 41.311932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225307, 36.468670, 41.271706>,  <39.220932, 36.707413, 41.247570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225307, 36.468670, 41.271706>,  <39.232601, 36.070763, 41.311932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225307, 36.468670, 41.271706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090524, 0.101807, 0.990677,
		0.995727, 0.008959, -0.091906,
		-0.018232, 0.994764, -0.100560,
		39.219837, 36.767097, 41.241539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932323, 36.304817, 41.586792>,  <39.232601, 36.070763, 41.311932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932323, 36.304817, 41.586792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.655323, 36.592548, 41.608742>,  <39.489124, 36.765186, 41.621914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.655323, 36.592548, 41.608742>,  <39.932323, 36.304817, 41.586792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655323, 36.592548, 41.608742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101237, 0.021579, 0.994628,
		0.714283, 0.694332, -0.087766,
		-0.692496, 0.719331, 0.054879,
		39.447575, 36.808346, 41.625206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206516, 36.761456, 42.037540>,  <39.932323, 36.304817, 41.586792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206516, 36.761456, 42.037540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.816135, 36.846603, 42.018784>,  <39.581905, 36.897694, 42.007530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.816135, 36.846603, 42.018784>,  <40.206516, 36.761456, 42.037540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816135, 36.846603, 42.018784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015586, 0.146446, 0.989096,
		0.217415, 0.966044, -0.139607,
		-0.975955, 0.212868, -0.046896,
		39.523350, 36.910465, 42.004715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147915, 37.134274, 42.620220>,  <40.206516, 36.761456, 42.037540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147915, 37.134274, 42.620220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.761810, 37.101139, 42.521095>,  <39.530148, 37.081257, 42.461620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.761810, 37.101139, 42.521095>,  <40.147915, 37.134274, 42.620220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761810, 37.101139, 42.521095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260765, 0.245359, 0.933703,
		-0.016541, 0.965887, -0.258436,
		-0.965261, -0.082835, -0.247811,
		39.472233, 37.076290, 42.446751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739811, 37.678246, 42.878853>,  <40.147915, 37.134274, 42.620220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739811, 37.678246, 42.878853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.505146, 37.357544, 42.833210>,  <39.364349, 37.165123, 42.805824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.505146, 37.357544, 42.833210>,  <39.739811, 37.678246, 42.878853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505146, 37.357544, 42.833210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184718, -0.004708, 0.982780,
		-0.788486, 0.597635, -0.145336,
		-0.586660, -0.801754, -0.114106,
		39.329147, 37.117016, 42.798977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.072891, 37.791340, 43.403362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066769, 37.398518, 43.328182>,  <39.063095, 37.162823, 43.283073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066769, 37.398518, 43.328182>,  <39.072891, 37.791340, 43.403362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066769, 37.398518, 43.328182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294686, -0.175188, 0.939398,
		-0.955471, 0.069763, -0.286718,
		-0.015306, -0.982060, -0.187945,
		39.062176, 37.103901, 43.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525055, 37.472725, 43.727764>,  <39.072891, 37.791340, 43.403362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525055, 37.472725, 43.727764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.786629, 37.173683, 43.681362>,  <38.943573, 36.994259, 43.653522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.786629, 37.173683, 43.681362>,  <38.525055, 37.472725, 43.727764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786629, 37.173683, 43.681362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263928, -0.369132, 0.891114,
		-0.709022, -0.552112, -0.438702,
		0.653934, -0.747605, -0.116004,
		38.982807, 36.949402, 43.646561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263157, 36.984928, 44.080582>,  <38.525055, 37.472725, 43.727764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263157, 36.984928, 44.080582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636475, 36.850891, 44.028923>,  <38.860466, 36.770470, 43.997929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636475, 36.850891, 44.028923>,  <38.263157, 36.984928, 44.080582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636475, 36.850891, 44.028923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050126, -0.477644, 0.877122,
		-0.355602, -0.812138, -0.462579,
		0.933292, -0.335094, -0.129142,
		38.916462, 36.750362, 43.990181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327766, 36.287006, 44.273663>,  <38.263157, 36.984928, 44.080582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327766, 36.287006, 44.273663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706905, 36.413696, 44.287907>,  <38.934387, 36.489712, 44.296452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706905, 36.413696, 44.287907>,  <38.327766, 36.287006, 44.273663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706905, 36.413696, 44.287907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107146, -0.421858, 0.900309,
		0.300173, -0.849541, -0.433793,
		0.947848, 0.316728, 0.035606,
		38.991261, 36.508713, 44.298588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709988, 35.762188, 44.644680>,  <38.327766, 36.287006, 44.273663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709988, 35.762188, 44.644680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931786, 36.093605, 44.675793>,  <39.064865, 36.292458, 44.694458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931786, 36.093605, 44.675793>,  <38.709988, 35.762188, 44.644680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931786, 36.093605, 44.675793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215838, -0.233447, 0.948112,
		0.803712, -0.508934, -0.308276,
		0.554492, 0.828547, 0.077777,
		39.098133, 36.342171, 44.699127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485760, 35.532406, 44.776550>,  <38.709988, 35.762188, 44.644680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485760, 35.532406, 44.776550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377953, 35.892082, 44.914433>,  <39.313271, 36.107887, 44.997162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.377953, 35.892082, 44.914433>,  <39.485760, 35.532406, 44.776550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377953, 35.892082, 44.914433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209471, -0.294636, 0.932369,
		0.939938, 0.323494, -0.108945,
		-0.269516, 0.899189, 0.344702,
		39.297096, 36.161839, 45.017841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985344, 35.666428, 45.268410>,  <39.485760, 35.532406, 44.776550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985344, 35.666428, 45.268410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.748032, 35.977295, 45.352333>,  <39.605644, 36.163815, 45.402687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.748032, 35.977295, 45.352333>,  <39.985344, 35.666428, 45.268410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748032, 35.977295, 45.352333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243777, -0.074936, 0.966932,
		0.767193, 0.624812, -0.144998,
		-0.593285, 0.777171, 0.209805,
		39.570045, 36.210445, 45.415276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377468, 36.086494, 45.781021>,  <39.985344, 35.666428, 45.268410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377468, 36.086494, 45.781021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.994976, 36.201523, 45.802639>,  <39.765480, 36.270538, 45.815609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.994976, 36.201523, 45.802639>,  <40.377468, 36.086494, 45.781021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994976, 36.201523, 45.802639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085922, 0.099413, 0.991330,
		0.279705, 0.952586, -0.119771,
		-0.956233, 0.287571, 0.054042,
		39.708107, 36.287796, 45.818851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448708, 36.646790, 46.162621>,  <40.377468, 36.086494, 45.781021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448708, 36.646790, 46.162621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069595, 36.520649, 46.181679>,  <39.842129, 36.444965, 46.193115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069595, 36.520649, 46.181679>,  <40.448708, 36.646790, 46.162621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069595, 36.520649, 46.181679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060100, -0.029882, 0.997745,
		-0.313221, 0.948503, 0.047274,
		-0.947777, -0.315356, 0.047645,
		39.785263, 36.426041, 46.195972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179989, 36.998753, 46.715057>,  <40.448708, 36.646790, 46.162621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179989, 36.998753, 46.715057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931915, 36.689526, 46.661785>,  <39.783070, 36.503990, 46.629822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.931915, 36.689526, 46.661785>,  <40.179989, 36.998753, 46.715057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931915, 36.689526, 46.661785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009600, -0.162280, 0.986698,
		-0.784398, 0.613212, 0.093222,
		-0.620184, -0.773069, -0.133179,
		39.745861, 36.457603, 46.621830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788033, 37.046322, 47.208206>,  <40.179989, 36.998753, 46.715057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788033, 37.046322, 47.208206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699387, 36.661659, 47.143574>,  <39.646198, 36.430862, 47.104794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.699387, 36.661659, 47.143574>,  <39.788033, 37.046322, 47.208206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699387, 36.661659, 47.143574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191498, -0.205394, 0.959761,
		-0.956147, 0.181752, 0.229673,
		-0.221612, -0.961655, -0.161582,
		39.632904, 36.373161, 47.095100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430550, 36.880589, 47.806309>,  <39.788033, 37.046322, 47.208206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430550, 36.880589, 47.806309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553600, 36.530071, 47.658001>,  <39.627430, 36.319759, 47.569016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553600, 36.530071, 47.658001>,  <39.430550, 36.880589, 47.806309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553600, 36.530071, 47.658001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219225, -0.313910, 0.923797,
		-0.925909, -0.365465, 0.095540,
		0.307624, -0.876297, -0.370772,
		39.645889, 36.267181, 47.546768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165150, 36.377674, 48.250523>,  <39.430550, 36.880589, 47.806309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165150, 36.377674, 48.250523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482792, 36.206898, 48.077496>,  <39.673378, 36.104431, 47.973679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.482792, 36.206898, 48.077496>,  <39.165150, 36.377674, 48.250523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482792, 36.206898, 48.077496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213176, -0.470842, 0.856075,
		-0.569168, -0.772026, -0.282884,
		0.794106, -0.426946, -0.432566,
		39.721024, 36.078815, 47.947727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045776, 35.597908, 48.308163>,  <39.165150, 36.377674, 48.250523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045776, 35.597908, 48.308163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.435238, 35.676559, 48.261959>,  <39.668915, 35.723751, 48.234238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.435238, 35.676559, 48.261959>,  <39.045776, 35.597908, 48.308163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435238, 35.676559, 48.261959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204701, -0.530294, 0.822731,
		0.100521, -0.824696, -0.556571,
		0.973649, 0.196632, -0.115511,
		39.727333, 35.735550, 48.227306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311054, 34.958920, 48.442471>,  <39.045776, 35.597908, 48.308163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311054, 34.958920, 48.442471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595688, 35.236576, 48.485943>,  <39.766468, 35.403172, 48.512028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595688, 35.236576, 48.485943>,  <39.311054, 34.958920, 48.442471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595688, 35.236576, 48.485943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290540, -0.431554, 0.854019,
		0.639712, -0.576132, -0.508764,
		0.711586, 0.694142, 0.108681,
		39.809162, 35.444820, 48.518547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855217, 34.549927, 48.518955>,  <39.311054, 34.958920, 48.442471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855217, 34.549927, 48.518955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.018909, 34.899361, 48.624313>,  <40.117126, 35.109020, 48.687527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.018909, 34.899361, 48.624313>,  <39.855217, 34.549927, 48.518955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018909, 34.899361, 48.624313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422307, -0.437237, 0.794028,
		0.808817, -0.213709, -0.547853,
		0.409233, 0.873586, 0.263394,
		40.141678, 35.161438, 48.703331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576595, 34.328609, 48.631611>,  <39.855217, 34.549927, 48.518955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576595, 34.328609, 48.631611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.467846, 34.644558, 48.851498>,  <40.402596, 34.834126, 48.983429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.467846, 34.644558, 48.851498>,  <40.576595, 34.328609, 48.631611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467846, 34.644558, 48.851498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370479, -0.441302, 0.817312,
		0.888162, 0.425864, -0.172653,
		-0.271871, 0.789869, 0.549721,
		40.386284, 34.881519, 49.016415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161324, 34.390762, 49.177132>,  <40.576595, 34.328609, 48.631611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161324, 34.390762, 49.177132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844975, 34.594112, 49.313408>,  <40.655163, 34.716122, 49.395172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.844975, 34.594112, 49.313408>,  <41.161324, 34.390762, 49.177132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844975, 34.594112, 49.313408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139705, -0.392017, 0.909288,
		0.595819, 0.766729, 0.239013,
		-0.790875, 0.508379, 0.340687,
		40.607712, 34.746628, 49.415615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431957, 34.709797, 49.857330>,  <41.161324, 34.390762, 49.177132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431957, 34.709797, 49.857330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031998, 34.715183, 49.855968>,  <40.792023, 34.718414, 49.855152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.031998, 34.715183, 49.855968>,  <41.431957, 34.709797, 49.857330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031998, 34.715183, 49.855968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007659, -0.329817, 0.944014,
		0.011592, 0.943949, 0.329889,
		-0.999904, 0.013469, -0.003407,
		40.732025, 34.719223, 49.854946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196686, 35.126865, 50.443218>,  <41.431957, 34.709797, 49.857330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196686, 35.126865, 50.443218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.876793, 34.904110, 50.353508>,  <40.684856, 34.770458, 50.299683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.876793, 34.904110, 50.353508>,  <41.196686, 35.126865, 50.443218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876793, 34.904110, 50.353508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103791, -0.239699, 0.965283,
		-0.591315, 0.795248, 0.133896,
		-0.799734, -0.556889, -0.224277,
		40.636871, 34.737041, 50.286224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699768, 35.261124, 50.950947>,  <41.196686, 35.126865, 50.443218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699768, 35.261124, 50.950947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.601543, 34.899982, 50.809780>,  <40.542610, 34.683296, 50.725079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.601543, 34.899982, 50.809780>,  <40.699768, 35.261124, 50.950947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601543, 34.899982, 50.809780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176024, -0.316485, 0.932123,
		-0.953265, 0.291017, -0.081207,
		-0.245563, -0.902854, -0.352920,
		40.527874, 34.629128, 50.703903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995876, 35.054527, 51.079006>,  <40.699768, 35.261124, 50.950947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995876, 35.054527, 51.079006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.221714, 34.724392, 51.076088>,  <40.357216, 34.526310, 51.074337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.221714, 34.724392, 51.076088>,  <39.995876, 35.054527, 51.079006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221714, 34.724392, 51.076088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287223, -0.204759, 0.935723,
		-0.773779, -0.526209, -0.352661,
		0.564596, -0.825335, -0.007299,
		40.391094, 34.476791, 51.073898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649189, 34.525379, 51.570152>,  <39.995876, 35.054527, 51.079006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649189, 34.525379, 51.570152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.028225, 34.405605, 51.525585>,  <40.255646, 34.333740, 51.498844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.028225, 34.405605, 51.525585>,  <39.649189, 34.525379, 51.570152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028225, 34.405605, 51.525585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011211, -0.379681, 0.925050,
		-0.319294, -0.875318, -0.363138,
		0.947589, -0.299434, -0.111417,
		40.312500, 34.315773, 51.492161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082275, 34.684723, 52.105350>,  <39.649189, 34.525379, 51.570152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082275, 34.684723, 52.105350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.420292, 34.783932, 51.915874>,  <40.623104, 34.843456, 51.802189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.420292, 34.783932, 51.915874>,  <40.082275, 34.684723, 52.105350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420292, 34.783932, 51.915874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175491, -0.708178, -0.683877,
		-0.505074, 0.661035, -0.554916,
		0.845046, 0.248025, -0.473688,
		40.673805, 34.858341, 51.773769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607235, 35.125221, 52.520054>,  <40.082275, 34.684723, 52.105350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607235, 35.125221, 52.520054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334183, 35.404163, 52.607422>,  <39.170353, 35.571529, 52.659843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334183, 35.404163, 52.607422>,  <39.607235, 35.125221, 52.520054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334183, 35.404163, 52.607422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409883, -0.117937, -0.904482,
		-0.604988, -0.706953, 0.366342,
		-0.682631, 0.697358, 0.218418,
		39.129395, 35.613369, 52.672947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957680, 34.797573, 52.566349>,  <39.607235, 35.125221, 52.520054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957680, 34.797573, 52.566349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864101, 35.175819, 52.475941>,  <38.807953, 35.402767, 52.421696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864101, 35.175819, 52.475941>,  <38.957680, 34.797573, 52.566349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864101, 35.175819, 52.475941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260964, -0.285010, -0.922316,
		-0.936572, -0.156789, 0.313448,
		-0.233945, 0.945614, -0.226017,
		38.793919, 35.459503, 52.408134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153229, 34.925846, 52.259533>,  <38.957680, 34.797573, 52.566349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153229, 34.925846, 52.259533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355427, 35.251316, 52.144711>,  <38.476746, 35.446598, 52.075817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355427, 35.251316, 52.144711>,  <38.153229, 34.925846, 52.259533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355427, 35.251316, 52.144711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358669, -0.104420, -0.927606,
		-0.784748, 0.571859, 0.239057,
		0.505498, 0.813679, -0.287051,
		38.507076, 35.495419, 52.058594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686680, 35.142635, 51.768005>,  <38.153229, 34.925846, 52.259533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686680, 35.142635, 51.768005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019222, 35.357651, 51.711575>,  <38.218746, 35.486660, 51.677715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019222, 35.357651, 51.711575>,  <37.686680, 35.142635, 51.768005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019222, 35.357651, 51.711575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286614, 0.197211, -0.937529,
		-0.476138, 0.819852, 0.318019,
		0.831352, 0.537541, -0.141081,
		38.268627, 35.518913, 51.669250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434280, 35.715229, 51.565449>,  <37.686680, 35.142635, 51.768005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434280, 35.715229, 51.565449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808857, 35.686546, 51.428082>,  <38.033604, 35.669338, 51.345661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808857, 35.686546, 51.428082>,  <37.434280, 35.715229, 51.565449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808857, 35.686546, 51.428082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282903, 0.424538, -0.860078,
		0.207464, 0.902567, 0.377270,
		0.936443, -0.071704, -0.343415,
		38.089790, 35.665035, 51.325058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500298, 36.238621, 51.226891>,  <37.434280, 35.715229, 51.565449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500298, 36.238621, 51.226891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815365, 36.047176, 51.071705>,  <38.004406, 35.932308, 50.978592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.815365, 36.047176, 51.071705>,  <37.500298, 36.238621, 51.226891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815365, 36.047176, 51.071705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206226, 0.388566, -0.898047,
		0.580564, 0.787368, 0.207358,
		0.787665, -0.478611, -0.387963,
		38.051666, 35.903595, 50.955315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938576, 36.721889, 50.769394>,  <37.500298, 36.238621, 51.226891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938576, 36.721889, 50.769394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012470, 36.355164, 50.627789>,  <38.056805, 36.135128, 50.542824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012470, 36.355164, 50.627789>,  <37.938576, 36.721889, 50.769394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012470, 36.355164, 50.627789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067453, 0.347535, -0.935238,
		0.980471, 0.196648, 0.002359,
		0.184732, -0.916815, -0.354012,
		38.067890, 36.080120, 50.521584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172119, 36.963306, 50.196239>,  <37.938576, 36.721889, 50.769394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172119, 36.963306, 50.196239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138958, 36.570763, 50.126881>,  <38.119061, 36.335236, 50.085266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138958, 36.570763, 50.126881>,  <38.172119, 36.963306, 50.196239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138958, 36.570763, 50.126881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082532, 0.180164, -0.980168,
		0.993135, -0.066943, -0.095929,
		-0.082899, -0.981356, -0.173402,
		38.114090, 36.276356, 50.074860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566624, 36.773941, 49.608219>,  <38.172119, 36.963306, 50.196239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566624, 36.773941, 49.608219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322060, 36.457417, 49.608292>,  <38.175320, 36.267502, 49.608334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322060, 36.457417, 49.608292>,  <38.566624, 36.773941, 49.608219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322060, 36.457417, 49.608292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184492, 0.142327, -0.972474,
		0.769504, -0.594617, -0.233011,
		-0.611414, -0.791311, 0.000180,
		38.138634, 36.220024, 49.608345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692539, 36.297890, 49.005371>,  <38.566624, 36.773941, 49.608219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692539, 36.297890, 49.005371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.315754, 36.256115, 49.132992>,  <38.089684, 36.231049, 49.209564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.315754, 36.256115, 49.132992>,  <38.692539, 36.297890, 49.005371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315754, 36.256115, 49.132992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329954, 0.112719, -0.937243,
		0.061916, -0.988123, -0.140635,
		-0.941964, -0.104433, 0.319056,
		38.033165, 36.224781, 49.228706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474163, 35.753723, 48.691849>,  <38.692539, 36.297890, 49.005371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474163, 35.753723, 48.691849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140083, 35.949913, 48.791355>,  <37.939636, 36.067627, 48.851059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.140083, 35.949913, 48.791355>,  <38.474163, 35.753723, 48.691849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140083, 35.949913, 48.791355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210050, 0.133551, -0.968526,
		-0.508258, -0.861163, -0.008517,
		-0.835196, 0.490472, 0.248766,
		37.889523, 36.097054, 48.865986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101212, 35.527660, 48.172470>,  <38.474163, 35.753723, 48.691849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101212, 35.527660, 48.172470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880924, 35.825893, 48.322571>,  <37.748753, 36.004833, 48.412632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880924, 35.825893, 48.322571>,  <38.101212, 35.527660, 48.172470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880924, 35.825893, 48.322571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377533, 0.178455, -0.908638,
		-0.744433, -0.642071, 0.183205,
		-0.550717, 0.745586, 0.375251,
		37.715710, 36.049568, 48.435146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559032, 35.542568, 47.753986>,  <38.101212, 35.527660, 48.172470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559032, 35.542568, 47.753986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529816, 35.910637, 47.907845>,  <37.512287, 36.131477, 48.000160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529816, 35.910637, 47.907845>,  <37.559032, 35.542568, 47.753986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529816, 35.910637, 47.907845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348056, 0.337905, -0.874458,
		-0.934624, -0.197744, 0.295592,
		-0.073037, 0.920173, 0.384641,
		37.507904, 36.186687, 48.023235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807739, 35.849411, 47.561756>,  <37.559032, 35.542568, 47.753986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807739, 35.849411, 47.561756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.081947, 36.132687, 47.629330>,  <37.246471, 36.302650, 47.669872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.081947, 36.132687, 47.629330>,  <36.807739, 35.849411, 47.561756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081947, 36.132687, 47.629330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303116, 0.488583, -0.818173,
		-0.661956, 0.509666, 0.549595,
		0.685518, 0.708186, 0.168932,
		37.287601, 36.345142, 47.680008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435345, 36.400291, 47.283829>,  <36.807739, 35.849411, 47.561756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435345, 36.400291, 47.283829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818283, 36.506363, 47.329735>,  <37.048046, 36.570004, 47.357277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818283, 36.506363, 47.329735>,  <36.435345, 36.400291, 47.283829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818283, 36.506363, 47.329735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082040, 0.630295, -0.772009,
		-0.277052, 0.729665, 0.625165,
		0.957346, 0.265175, 0.114763,
		37.105488, 36.585915, 47.364162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453678, 37.108696, 47.560081>,  <36.435345, 36.400291, 47.283829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453678, 37.108696, 47.560081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784283, 37.024250, 47.351349>,  <36.982647, 36.973583, 47.226109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784283, 37.024250, 47.351349>,  <36.453678, 37.108696, 47.560081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784283, 37.024250, 47.351349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203769, 0.751943, -0.626945,
		0.524745, 0.624511, 0.578471,
		0.826511, -0.211112, -0.521835,
		37.032234, 36.960915, 47.194798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523663, 37.731815, 47.247475>,  <36.453678, 37.108696, 47.560081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523663, 37.731815, 47.247475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773384, 37.511246, 47.026142>,  <36.923218, 37.378902, 46.893341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.773384, 37.511246, 47.026142>,  <36.523663, 37.731815, 47.247475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773384, 37.511246, 47.026142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211833, 0.562285, -0.799351,
		0.751914, 0.616250, 0.234224,
		0.624301, -0.551427, -0.553333,
		36.960674, 37.345818, 46.860142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796890, 38.167248, 46.855202>,  <36.523663, 37.731815, 47.247475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796890, 38.167248, 46.855202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.848404, 37.814766, 46.673260>,  <36.879311, 37.603275, 46.564095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.848404, 37.814766, 46.673260>,  <36.796890, 38.167248, 46.855202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848404, 37.814766, 46.673260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080258, 0.466433, -0.880908,
		0.988420, 0.076938, 0.130791,
		0.128780, -0.881204, -0.454857,
		36.887039, 37.550404, 46.536804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281239, 38.220387, 46.239616>,  <36.796890, 38.167248, 46.855202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281239, 38.220387, 46.239616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143200, 37.862587, 46.125931>,  <37.060375, 37.647907, 46.057720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143200, 37.862587, 46.125931>,  <37.281239, 38.220387, 46.239616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143200, 37.862587, 46.125931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038115, 0.289207, -0.956508,
		0.937792, -0.340923, -0.065711,
		-0.345099, -0.894500, -0.284210,
		37.039669, 37.594238, 46.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651138, 38.070797, 45.591835>,  <37.281239, 38.220387, 46.239616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651138, 38.070797, 45.591835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329792, 37.832626, 45.588303>,  <37.136986, 37.689724, 45.586185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329792, 37.832626, 45.588303>,  <37.651138, 38.070797, 45.591835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329792, 37.832626, 45.588303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077447, 0.119172, -0.989848,
		0.590430, -0.794525, -0.141852,
		-0.803364, -0.595422, -0.008829,
		37.088783, 37.653999, 45.585655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.334961, 34.995518, 44.073627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.047550, 35.264084, 44.001049>,  <43.875103, 35.425224, 43.957500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.047550, 35.264084, 44.001049>,  <44.334961, 34.995518, 44.073627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047550, 35.264084, 44.001049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091132, -0.167753, -0.981608,
		-0.689504, -0.721847, 0.059347,
		-0.718526, 0.671414, -0.181450,
		43.831993, 35.465508, 43.946613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984791, 34.699608, 43.485561>,  <44.334961, 34.995518, 44.073627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984791, 34.699608, 43.485561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.900627, 35.090061, 43.507072>,  <43.850128, 35.324333, 43.519981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.900627, 35.090061, 43.507072>,  <43.984791, 34.699608, 43.485561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900627, 35.090061, 43.507072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014771, 0.051833, -0.998547,
		-0.977502, -0.210899, 0.003512,
		-0.210410, 0.976133, 0.053782,
		43.837505, 35.382900, 43.523209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421509, 34.787601, 43.038975>,  <43.984791, 34.699608, 43.485561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421509, 34.787601, 43.038975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583595, 35.152889, 43.056076>,  <43.680847, 35.372063, 43.066338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.583595, 35.152889, 43.056076>,  <43.421509, 34.787601, 43.038975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583595, 35.152889, 43.056076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029996, 0.060016, -0.997747,
		-0.913727, 0.403025, 0.051713,
		0.405221, 0.913219, 0.042749,
		43.705162, 35.426853, 43.068901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940792, 35.204632, 42.614761>,  <43.421509, 34.787601, 43.038975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940792, 35.204632, 42.614761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286861, 35.402290, 42.648952>,  <43.494503, 35.520885, 42.669468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286861, 35.402290, 42.648952>,  <42.940792, 35.204632, 42.614761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286861, 35.402290, 42.648952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017301, 0.140932, -0.989868,
		-0.501182, 0.857882, 0.113381,
		0.865169, 0.494143, 0.085475,
		43.546413, 35.550533, 42.674595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898418, 35.697308, 42.112484>,  <42.940792, 35.204632, 42.614761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898418, 35.697308, 42.112484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.290710, 35.708656, 42.189808>,  <43.526085, 35.715466, 42.236202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.290710, 35.708656, 42.189808>,  <42.898418, 35.697308, 42.112484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290710, 35.708656, 42.189808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171767, 0.346344, -0.922248,
		-0.093120, 0.937679, 0.334795,
		0.980727, 0.028374, 0.193314,
		43.584927, 35.717167, 42.247803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981945, 36.352859, 41.882351>,  <42.898418, 35.697308, 42.112484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981945, 36.352859, 41.882351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309868, 36.125870, 41.851665>,  <43.506622, 35.989677, 41.833252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309868, 36.125870, 41.851665>,  <42.981945, 36.352859, 41.882351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309868, 36.125870, 41.851665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041442, 0.192416, -0.980438,
		0.571137, 0.800592, 0.181262,
		0.819808, -0.567476, -0.076718,
		43.555809, 35.955627, 41.828651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591484, 36.773956, 41.568188>,  <42.981945, 36.352859, 41.882351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591484, 36.773956, 41.568188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685009, 36.387829, 41.521717>,  <43.741123, 36.156155, 41.493835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685009, 36.387829, 41.521717>,  <43.591484, 36.773956, 41.568188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685009, 36.387829, 41.521717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263575, 0.177948, -0.948084,
		0.935874, 0.191051, 0.296039,
		0.233812, -0.965316, -0.116181,
		43.755154, 36.098232, 41.486862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132980, 36.815605, 41.122173>,  <43.591484, 36.773956, 41.568188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132980, 36.815605, 41.122173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108727, 36.416340, 41.122314>,  <44.094173, 36.176781, 41.122398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108727, 36.416340, 41.122314>,  <44.132980, 36.815605, 41.122173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108727, 36.416340, 41.122314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457075, -0.028079, -0.888985,
		0.887359, -0.053743, 0.457936,
		-0.060635, -0.998160, 0.000352,
		44.090534, 36.116894, 41.122421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.802292, 36.619267, 40.971664>,  <44.132980, 36.815605, 41.122173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.802292, 36.619267, 40.971664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.533966, 36.347172, 40.853489>,  <44.372971, 36.183914, 40.782581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.533966, 36.347172, 40.853489>,  <44.802292, 36.619267, 40.971664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533966, 36.347172, 40.853489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535523, -0.168705, -0.827499,
		0.513050, -0.713317, 0.477451,
		-0.670817, -0.680234, -0.295443,
		44.332722, 36.143101, 40.764854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223892, 36.065220, 40.588127>,  <44.802292, 36.619267, 40.971664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223892, 36.065220, 40.588127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.847294, 35.997795, 40.471386>,  <44.621334, 35.957340, 40.401340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.847294, 35.997795, 40.471386>,  <45.223892, 36.065220, 40.588127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847294, 35.997795, 40.471386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325378, -0.228834, -0.917477,
		0.087869, -0.958760, 0.270293,
		-0.941492, -0.168565, -0.291852,
		44.564846, 35.947227, 40.383831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163960, 35.430378, 40.309921>,  <45.223892, 36.065220, 40.588127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163960, 35.430378, 40.309921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.833225, 35.581966, 40.143681>,  <44.634785, 35.672920, 40.043934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.833225, 35.581966, 40.143681>,  <45.163960, 35.430378, 40.309921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833225, 35.581966, 40.143681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301052, -0.325968, -0.896165,
		-0.475092, -0.866100, 0.155432,
		-0.826834, 0.378968, -0.415606,
		44.585175, 35.695656, 40.018997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952682, 34.978573, 39.763714>,  <45.163960, 35.430378, 40.309921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952682, 34.978573, 39.763714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.771919, 35.315968, 39.647568>,  <44.663460, 35.518406, 39.577881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.771919, 35.315968, 39.647568>,  <44.952682, 34.978573, 39.763714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771919, 35.315968, 39.647568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027018, -0.312403, -0.949565,
		-0.891655, -0.436961, 0.118388,
		-0.451908, 0.843486, -0.290362,
		44.636345, 35.569012, 39.560459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487877, 34.754181, 39.221695>,  <44.952682, 34.978573, 39.763714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487877, 34.754181, 39.221695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493565, 35.151299, 39.174114>,  <44.496979, 35.389568, 39.145565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.493565, 35.151299, 39.174114>,  <44.487877, 34.754181, 39.221695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493565, 35.151299, 39.174114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137784, -0.119778, -0.983193,
		-0.990360, -0.002406, -0.138495,
		0.014223, 0.992798, -0.118955,
		44.497833, 35.449139, 39.138428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006554, 34.863831, 38.729279>,  <44.487877, 34.754181, 39.221695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006554, 34.863831, 38.729279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205223, 35.211002, 38.728443>,  <44.324425, 35.419308, 38.727940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205223, 35.211002, 38.728443>,  <44.006554, 34.863831, 38.729279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205223, 35.211002, 38.728443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021879, -0.014930, -0.999649,
		-0.867660, 0.496455, -0.026405,
		0.496675, 0.867934, -0.002092,
		44.354225, 35.471382, 38.727814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709118, 35.252724, 38.157688>,  <44.006554, 34.863831, 38.729279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709118, 35.252724, 38.157688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.086906, 35.360889, 38.232372>,  <44.313580, 35.425789, 38.277184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.086906, 35.360889, 38.232372>,  <43.709118, 35.252724, 38.157688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086906, 35.360889, 38.232372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201042, -0.026054, -0.979236,
		-0.259931, 0.962392, -0.078971,
		0.944467, 0.270410, 0.186709,
		44.370247, 35.442013, 38.288383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816185, 35.808002, 37.766029>,  <43.709118, 35.252724, 38.157688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816185, 35.808002, 37.766029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.172329, 35.637711, 37.830536>,  <44.386017, 35.535534, 37.869240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.172329, 35.637711, 37.830536>,  <43.816185, 35.808002, 37.766029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172329, 35.637711, 37.830536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177637, -0.001280, -0.984095,
		0.419168, 0.904848, 0.074487,
		0.890361, -0.425733, 0.161271,
		44.439438, 35.509991, 37.878918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154392, 36.093639, 37.327099>,  <43.816185, 35.808002, 37.766029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154392, 36.093639, 37.327099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404053, 35.795635, 37.421238>,  <44.553848, 35.616833, 37.477722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404053, 35.795635, 37.421238>,  <44.154392, 36.093639, 37.327099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404053, 35.795635, 37.421238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256768, -0.088896, -0.962376,
		0.737906, 0.661098, 0.135811,
		0.624152, -0.745015, 0.235345,
		44.591297, 35.572132, 37.491840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597000, 36.115997, 36.823273>,  <44.154392, 36.093639, 37.327099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597000, 36.115997, 36.823273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728203, 35.764011, 36.960720>,  <44.806923, 35.552818, 37.043186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.728203, 35.764011, 36.960720>,  <44.597000, 36.115997, 36.823273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.728203, 35.764011, 36.960720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260870, -0.265222, -0.928226,
		0.907943, 0.394102, 0.142563,
		0.328005, -0.879967, 0.343615,
		44.826603, 35.500023, 37.063805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229744, 35.914406, 36.557846>,  <44.597000, 36.115997, 36.823273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229744, 35.914406, 36.557846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.050129, 35.571529, 36.658707>,  <44.942360, 35.365803, 36.719223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.050129, 35.571529, 36.658707>,  <45.229744, 35.914406, 36.557846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050129, 35.571529, 36.658707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297939, -0.409696, -0.862196,
		0.842374, -0.312036, 0.439363,
		-0.449042, -0.857194, 0.252149,
		44.915417, 35.314369, 36.734352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720821, 35.259495, 36.388233>,  <45.229744, 35.914406, 36.557846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720821, 35.259495, 36.388233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347191, 35.116798, 36.394390>,  <45.123013, 35.031181, 36.398083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347191, 35.116798, 36.394390>,  <45.720821, 35.259495, 36.388233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347191, 35.116798, 36.394390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155748, -0.445834, -0.881462,
		0.321314, -0.820956, 0.472005,
		-0.934077, -0.356740, 0.015390,
		45.066967, 35.009777, 36.399006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819149, 34.743855, 35.980747>,  <45.720821, 35.259495, 36.388233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819149, 34.743855, 35.980747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419781, 34.764515, 35.989502>,  <45.180161, 34.776913, 35.994755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419781, 34.764515, 35.989502>,  <45.819149, 34.743855, 35.980747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419781, 34.764515, 35.989502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035057, -0.269941, -0.962239,
		-0.043797, -0.961490, 0.271326,
		-0.998426, 0.051655, 0.021884,
		45.120255, 34.780010, 35.996067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421120, 34.276249, 36.132164>,  <45.819149, 34.743855, 35.980747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421120, 34.276249, 36.132164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679127, 33.978817, 36.061687>,  <46.833931, 33.800358, 36.019402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.679127, 33.978817, 36.061687>,  <46.421120, 34.276249, 36.132164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679127, 33.978817, 36.061687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144290, -0.344928, 0.927473,
		-0.750421, -0.572815, -0.329776,
		0.645019, -0.743578, -0.176189,
		46.872631, 33.755745, 36.008831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098438, 33.621094, 36.159859>,  <46.421120, 34.276249, 36.132164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098438, 33.621094, 36.159859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.486889, 33.564735, 36.236870>,  <46.719959, 33.530922, 36.283077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.486889, 33.564735, 36.236870>,  <46.098438, 33.621094, 36.159859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486889, 33.564735, 36.236870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232966, -0.386049, 0.892577,
		-0.051431, -0.911655, -0.407725,
		0.971124, -0.140892, 0.192530,
		46.778225, 33.522469, 36.294628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168011, 32.888622, 36.511578>,  <46.098438, 33.621094, 36.159859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168011, 32.888622, 36.511578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.489758, 33.113716, 36.587811>,  <46.682804, 33.248772, 36.633549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.489758, 33.113716, 36.587811>,  <46.168011, 32.888622, 36.511578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489758, 33.113716, 36.587811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000951, -0.319549, 0.947569,
		0.594134, -0.762373, -0.256499,
		0.804365, 0.562740, 0.190580,
		46.731068, 33.282539, 36.644985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446167, 32.445324, 36.926575>,  <46.168011, 32.888622, 36.511578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446167, 32.445324, 36.926575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.626572, 32.798740, 36.977081>,  <46.734814, 33.010792, 37.007385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.626572, 32.798740, 36.977081>,  <46.446167, 32.445324, 36.926575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.626572, 32.798740, 36.977081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017085, -0.149996, 0.988539,
		0.892354, -0.443686, -0.082745,
		0.451013, 0.883540, 0.126269,
		46.761875, 33.063801, 37.014961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995300, 32.353386, 37.549397>,  <46.446167, 32.445324, 36.926575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995300, 32.353386, 37.549397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.925491, 32.743389, 37.494415>,  <46.883606, 32.977390, 37.461426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.925491, 32.743389, 37.494415>,  <46.995300, 32.353386, 37.549397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.925491, 32.743389, 37.494415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037759, 0.146121, 0.988546,
		0.983928, 0.167337, -0.062318,
		-0.174526, 0.975011, -0.137454,
		46.873135, 33.035892, 37.453178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505695, 32.702374, 38.036423>,  <46.995300, 32.353386, 37.549397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505695, 32.702374, 38.036423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.219677, 32.962055, 37.932693>,  <47.048065, 33.117863, 37.870457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.219677, 32.962055, 37.932693>,  <47.505695, 32.702374, 38.036423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.219677, 32.962055, 37.932693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142690, 0.227598, 0.963244,
		0.684363, 0.725763, -0.070107,
		-0.715043, 0.649205, -0.259318,
		47.005165, 33.156818, 37.854897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.560997, 33.370640, 38.431797>,  <47.505695, 32.702374, 38.036423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.560997, 33.370640, 38.431797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.175621, 33.320564, 38.337040>,  <46.944397, 33.290520, 38.280186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.175621, 33.320564, 38.337040>,  <47.560997, 33.370640, 38.431797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.175621, 33.320564, 38.337040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255567, 0.163861, 0.952804,
		-0.080467, 0.978507, -0.189865,
		-0.963437, -0.125192, -0.236889,
		46.886589, 33.283005, 38.265972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.204044, 33.999470, 38.618221>,  <47.560997, 33.370640, 38.431797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.204044, 33.999470, 38.618221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.950233, 33.690884, 38.599422>,  <46.797947, 33.505730, 38.588142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.950233, 33.690884, 38.599422>,  <47.204044, 33.999470, 38.618221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950233, 33.690884, 38.599422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381379, 0.259640, 0.887207,
		-0.672250, 0.580883, -0.458971,
		-0.634531, -0.771467, -0.046993,
		46.759872, 33.459442, 38.585323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640827, 34.244095, 38.944241>,  <47.204044, 33.999470, 38.618221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640827, 34.244095, 38.944241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553112, 33.853844, 38.941280>,  <46.500481, 33.619694, 38.939507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.553112, 33.853844, 38.941280>,  <46.640827, 34.244095, 38.944241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553112, 33.853844, 38.941280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297985, 0.059753, 0.952698,
		-0.929041, 0.211122, -0.303827,
		-0.219290, -0.975632, -0.007398,
		46.487324, 33.561153, 38.939060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100510, 34.268394, 39.323147>,  <46.640827, 34.244095, 38.944241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100510, 34.268394, 39.323147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.191635, 33.879013, 39.314335>,  <46.246311, 33.645386, 39.309048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.191635, 33.879013, 39.314335>,  <46.100510, 34.268394, 39.323147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191635, 33.879013, 39.314335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268906, -0.084647, 0.959439,
		-0.935836, -0.212651, -0.281052,
		0.227816, -0.973455, -0.022033,
		46.259979, 33.586975, 39.307724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589764, 33.874790, 39.481773>,  <46.100510, 34.268394, 39.323147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589764, 33.874790, 39.481773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.885479, 33.626453, 39.586082>,  <46.062908, 33.477451, 39.648670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.885479, 33.626453, 39.586082>,  <45.589764, 33.874790, 39.481773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885479, 33.626453, 39.586082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504467, -0.254096, 0.825196,
		-0.446056, -0.741611, -0.501046,
		0.739288, -0.620845, 0.260777,
		46.107265, 33.440201, 39.664314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282928, 33.278927, 39.666294>,  <45.589764, 33.874790, 39.481773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282928, 33.278927, 39.666294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.638466, 33.242805, 39.845982>,  <45.851788, 33.221134, 39.953793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.638466, 33.242805, 39.845982>,  <45.282928, 33.278927, 39.666294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638466, 33.242805, 39.845982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439414, -0.445854, 0.779826,
		0.129865, -0.890539, -0.435977,
		0.888848, -0.090302, 0.449216,
		45.905121, 33.215714, 39.980747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203979, 32.703552, 40.140152>,  <45.282928, 33.278927, 39.666294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203979, 32.703552, 40.140152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559059, 32.846188, 40.256653>,  <45.772106, 32.931767, 40.326553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559059, 32.846188, 40.256653>,  <45.203979, 32.703552, 40.140152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559059, 32.846188, 40.256653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135643, -0.401968, 0.905551,
		0.439983, -0.843367, -0.308460,
		0.887703, 0.356586, 0.291256,
		45.825371, 32.953163, 40.344028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556404, 32.165310, 40.341400>,  <45.203979, 32.703552, 40.140152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556404, 32.165310, 40.341400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.676331, 32.490929, 40.540371>,  <45.748287, 32.686302, 40.659752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.676331, 32.490929, 40.540371>,  <45.556404, 32.165310, 40.341400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676331, 32.490929, 40.540371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138031, -0.478908, 0.866945,
		0.943958, -0.328585, -0.031220,
		0.299816, 0.814051, 0.497425,
		45.766277, 32.735146, 40.689598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806831, 31.783083, 40.962925>,  <45.556404, 32.165310, 40.341400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806831, 31.783083, 40.962925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.803909, 32.168056, 41.071491>,  <45.802155, 32.399040, 41.136631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.803909, 32.168056, 41.071491>,  <45.806831, 31.783083, 40.962925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803909, 32.168056, 41.071491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058058, -0.271370, 0.960723,
		0.998286, -0.008737, 0.057860,
		-0.007308, 0.962436, 0.271412,
		45.801716, 32.456787, 41.152916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.325825, 31.997198, 41.420986>,  <45.806831, 31.783083, 40.962925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.325825, 31.997198, 41.420986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.041630, 32.269127, 41.493698>,  <45.871113, 32.432285, 41.537327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.041630, 32.269127, 41.493698>,  <46.325825, 31.997198, 41.420986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041630, 32.269127, 41.493698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001170, -0.257182, 0.966362,
		0.703705, 0.686805, 0.181931,
		-0.710492, 0.679821, 0.181784,
		45.828484, 32.473072, 41.548233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.528591, 32.148335, 42.030628>,  <46.325825, 31.997198, 41.420986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.528591, 32.148335, 42.030628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.182888, 32.348938, 42.014896>,  <45.975468, 32.469299, 42.005459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.182888, 32.348938, 42.014896>,  <46.528591, 32.148335, 42.030628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182888, 32.348938, 42.014896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054472, -0.015574, 0.998394,
		0.500093, 0.865011, 0.040779,
		-0.864257, 0.501512, -0.039330,
		45.923611, 32.499390, 42.003098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.529343, 32.476059, 42.648785>,  <46.528591, 32.148335, 42.030628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.529343, 32.476059, 42.648785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144157, 32.495556, 42.542713>,  <45.913044, 32.507256, 42.479069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144157, 32.495556, 42.542713>,  <46.529343, 32.476059, 42.648785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144157, 32.495556, 42.542713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265346, 0.003200, 0.964148,
		0.047844, 0.998806, 0.009852,
		-0.962965, 0.048743, -0.265182,
		45.855267, 32.510178, 42.463158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214890, 32.894020, 43.235714>,  <46.529343, 32.476059, 42.648785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214890, 32.894020, 43.235714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906231, 32.714649, 43.055283>,  <45.721035, 32.607025, 42.947021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906231, 32.714649, 43.055283>,  <46.214890, 32.894020, 43.235714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906231, 32.714649, 43.055283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491704, -0.029309, 0.870269,
		-0.403474, 0.893338, -0.197878,
		-0.771645, -0.448429, -0.451083,
		45.674736, 32.580120, 42.919956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627655, 33.282215, 43.368584>,  <46.214890, 32.894020, 43.235714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627655, 33.282215, 43.368584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.529461, 32.901257, 43.296272>,  <45.470543, 32.672680, 43.252888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.529461, 32.901257, 43.296272>,  <45.627655, 33.282215, 43.368584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529461, 32.901257, 43.296272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469172, -0.046457, 0.881884,
		-0.848300, 0.301306, -0.435432,
		-0.245488, -0.952395, -0.180774,
		45.455814, 32.615540, 43.242039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849373, 33.210915, 43.508900>,  <45.627655, 33.282215, 43.368584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849373, 33.210915, 43.508900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.992031, 32.837593, 43.525646>,  <45.077625, 32.613602, 43.535694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.992031, 32.837593, 43.525646>,  <44.849373, 33.210915, 43.508900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992031, 32.837593, 43.525646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377255, -0.102873, 0.920378,
		-0.854685, -0.344039, -0.388782,
		0.356641, -0.933303, 0.041867,
		45.099022, 32.557602, 43.538208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.207966, 37.521687, 40.488407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854332, 37.335114, 40.476807>,  <39.642151, 37.223171, 40.469845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854332, 37.335114, 40.476807>,  <40.207966, 37.521687, 40.488407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854332, 37.335114, 40.476807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134735, -0.194971, -0.971510,
		0.447490, -0.862802, 0.235215,
		-0.884081, -0.466433, -0.029002,
		39.589108, 37.195183, 40.468105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374668, 36.942886, 40.080933>,  <40.207966, 37.521687, 40.488407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374668, 36.942886, 40.080933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975792, 36.971630, 40.072468>,  <39.736465, 36.988876, 40.067390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975792, 36.971630, 40.072468>,  <40.374668, 36.942886, 40.080933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975792, 36.971630, 40.072468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014930, -0.086157, -0.996170,
		-0.073380, -0.993688, 0.084843,
		-0.997192, 0.071832, -0.021158,
		39.676636, 36.993187, 40.066120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097240, 36.345554, 39.696751>,  <40.374668, 36.942886, 40.080933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097240, 36.345554, 39.696751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837749, 36.649918, 39.701946>,  <39.682053, 36.832535, 39.705063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837749, 36.649918, 39.701946>,  <40.097240, 36.345554, 39.696751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837749, 36.649918, 39.701946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123032, -0.088016, -0.988492,
		-0.751007, -0.642864, 0.150715,
		-0.648731, 0.760907, 0.012992,
		39.643131, 36.878189, 39.705845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755604, 36.264759, 39.018600>,  <40.097240, 36.345554, 39.696751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755604, 36.264759, 39.018600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588474, 36.604572, 39.147419>,  <39.488197, 36.808460, 39.224709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588474, 36.604572, 39.147419>,  <39.755604, 36.264759, 39.018600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588474, 36.604572, 39.147419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271561, 0.221486, -0.936589,
		-0.866994, -0.478783, 0.138159,
		-0.417822, 0.849535, 0.322046,
		39.463127, 36.859432, 39.244034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032864, 36.298420, 38.790977>,  <39.755604, 36.264759, 39.018600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032864, 36.298420, 38.790977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174213, 36.669151, 38.841770>,  <39.259022, 36.891590, 38.872246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174213, 36.669151, 38.841770>,  <39.032864, 36.298420, 38.790977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174213, 36.669151, 38.841770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293999, 0.238889, -0.925471,
		-0.888084, 0.289704, 0.356902,
		0.353372, 0.926825, 0.126981,
		39.280224, 36.947197, 38.879864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532215, 36.724117, 38.506287>,  <39.032864, 36.298420, 38.790977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532215, 36.724117, 38.506287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872635, 36.933556, 38.490494>,  <39.076889, 37.059219, 38.481018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872635, 36.933556, 38.490494>,  <38.532215, 36.724117, 38.506287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872635, 36.933556, 38.490494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205351, 0.262686, -0.942776,
		-0.483263, 0.810458, 0.331080,
		0.851051, 0.523596, -0.039482,
		39.127949, 37.090633, 38.478649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310173, 37.341515, 38.246147>,  <38.532215, 36.724117, 38.506287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310173, 37.341515, 38.246147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705120, 37.355167, 38.184246>,  <38.942089, 37.363358, 38.147106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705120, 37.355167, 38.184246>,  <38.310173, 37.341515, 38.246147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705120, 37.355167, 38.184246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156968, 0.344946, -0.925404,
		0.021798, 0.938002, 0.345945,
		0.987363, 0.034130, -0.154755,
		39.001328, 37.365406, 38.137821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417938, 37.794792, 37.690895>,  <38.310173, 37.341515, 38.246147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417938, 37.794792, 37.690895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790985, 37.651695, 37.709873>,  <39.014812, 37.565838, 37.721260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790985, 37.651695, 37.709873>,  <38.417938, 37.794792, 37.690895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790985, 37.651695, 37.709873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179510, 0.345826, -0.920967,
		0.313057, 0.867426, 0.386740,
		0.932615, -0.357739, 0.047448,
		39.070770, 37.544373, 37.724106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794613, 38.263405, 37.373280>,  <38.417938, 37.794792, 37.690895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794613, 38.263405, 37.373280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990288, 37.915966, 37.341705>,  <39.107693, 37.707500, 37.322762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990288, 37.915966, 37.341705>,  <38.794613, 38.263405, 37.373280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990288, 37.915966, 37.341705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184292, 0.191405, -0.964054,
		0.852486, 0.457056, 0.253709,
		0.489187, -0.868599, -0.078939,
		39.137043, 37.655388, 37.318024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216473, 38.313763, 36.880493>,  <38.794613, 38.263405, 37.373280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216473, 38.313763, 36.880493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222736, 37.914040, 36.894009>,  <39.226494, 37.674206, 36.902119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222736, 37.914040, 36.894009>,  <39.216473, 38.313763, 36.880493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222736, 37.914040, 36.894009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029541, -0.034245, -0.998977,
		0.999441, 0.014644, -0.030056,
		0.015658, -0.999306, 0.033793,
		39.227432, 37.614246, 36.904148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606991, 38.110016, 36.349602>,  <39.216473, 38.313763, 36.880493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606991, 38.110016, 36.349602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408459, 37.770264, 36.421394>,  <39.289341, 37.566414, 36.464470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408459, 37.770264, 36.421394>,  <39.606991, 38.110016, 36.349602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408459, 37.770264, 36.421394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103733, -0.147243, -0.983646,
		0.861916, -0.506828, -0.015028,
		-0.496327, -0.849379, 0.179486,
		39.259560, 37.515450, 36.475239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919895, 37.544209, 36.044964>,  <39.606991, 38.110016, 36.349602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919895, 37.544209, 36.044964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528278, 37.462921, 36.050400>,  <39.293308, 37.414150, 36.053661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528278, 37.462921, 36.050400>,  <39.919895, 37.544209, 36.044964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528278, 37.462921, 36.050400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024234, -0.182475, -0.982912,
		0.202226, -0.961980, 0.183575,
		-0.979039, -0.203220, 0.013588,
		39.234566, 37.401955, 36.054478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688927, 36.989063, 35.595600>,  <39.919895, 37.544209, 36.044964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688927, 36.989063, 35.595600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328548, 37.157871, 35.635983>,  <39.112320, 37.259155, 35.660210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328548, 37.157871, 35.635983>,  <39.688927, 36.989063, 35.595600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328548, 37.157871, 35.635983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212912, -0.227206, -0.950287,
		-0.378108, -0.877651, 0.294554,
		-0.900945, 0.422025, 0.100954,
		39.058266, 37.284477, 35.666267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189270, 36.452377, 35.470020>,  <39.688927, 36.989063, 35.595600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189270, 36.452377, 35.470020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144299, 36.095612, 35.294819>,  <39.117313, 35.881554, 35.189697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144299, 36.095612, 35.294819>,  <39.189270, 36.452377, 35.470020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144299, 36.095612, 35.294819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400296, -0.444107, 0.801581,
		-0.909463, -0.085208, 0.406961,
		-0.112433, -0.891913, -0.438007,
		39.110569, 35.828037, 35.163418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670765, 35.974213, 35.753048>,  <39.189270, 36.452377, 35.470020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670765, 35.974213, 35.753048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959099, 35.758114, 35.579372>,  <39.132099, 35.628452, 35.475166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959099, 35.758114, 35.579372>,  <38.670765, 35.974213, 35.753048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959099, 35.758114, 35.579372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264943, -0.364093, 0.892884,
		-0.640466, -0.758661, -0.119316,
		0.720838, -0.540250, -0.434191,
		39.175350, 35.596039, 35.449116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744255, 35.280640, 35.909187>,  <38.670765, 35.974213, 35.753048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744255, 35.280640, 35.909187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109856, 35.378407, 35.779663>,  <39.329216, 35.437069, 35.701946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109856, 35.378407, 35.779663>,  <38.744255, 35.280640, 35.909187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109856, 35.378407, 35.779663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405698, -0.555445, 0.725872,
		-0.002444, -0.794821, -0.606839,
		0.914004, 0.244419, -0.323815,
		39.384056, 35.451733, 35.682518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126785, 34.609959, 35.704884>,  <38.744255, 35.280640, 35.909187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126785, 34.609959, 35.704884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377716, 34.903301, 35.809689>,  <39.528275, 35.079308, 35.872570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377716, 34.903301, 35.809689>,  <39.126785, 34.609959, 35.704884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377716, 34.903301, 35.809689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369442, -0.576433, 0.728861,
		0.685547, -0.360435, -0.632544,
		0.627326, 0.733357, 0.262012,
		39.565914, 35.123310, 35.888290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615246, 34.294880, 35.931339>,  <39.126785, 34.609959, 35.704884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615246, 34.294880, 35.931339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745144, 34.647449, 36.068527>,  <39.823082, 34.858990, 36.150841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745144, 34.647449, 36.068527>,  <39.615246, 34.294880, 35.931339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745144, 34.647449, 36.068527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489423, -0.466909, 0.736519,
		0.809322, -0.071326, -0.583018,
		0.324750, 0.881424, 0.342972,
		39.842567, 34.911877, 36.171417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339443, 34.210728, 36.040035>,  <39.615246, 34.294880, 35.931339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339443, 34.210728, 36.040035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217125, 34.527874, 36.250881>,  <40.143734, 34.718163, 36.377388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217125, 34.527874, 36.250881>,  <40.339443, 34.210728, 36.040035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217125, 34.527874, 36.250881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547888, -0.306240, 0.778483,
		0.778656, 0.526861, -0.340753,
		-0.305800, 0.792865, 0.527117,
		40.125385, 34.765732, 36.409016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956749, 34.482697, 36.316395>,  <40.339443, 34.210728, 36.040035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956749, 34.482697, 36.316395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668743, 34.617935, 36.558804>,  <40.495937, 34.699078, 36.704250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668743, 34.617935, 36.558804>,  <40.956749, 34.482697, 36.316395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668743, 34.617935, 36.558804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489511, -0.371550, 0.788878,
		0.491888, 0.864661, 0.102019,
		-0.720017, 0.338100, 0.606022,
		40.452740, 34.719364, 36.740612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261742, 34.651718, 36.951523>,  <40.956749, 34.482697, 36.316395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261742, 34.651718, 36.951523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877911, 34.601833, 37.052441>,  <40.647610, 34.571903, 37.112991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877911, 34.601833, 37.052441>,  <41.261742, 34.651718, 36.951523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877911, 34.601833, 37.052441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281258, -0.456975, 0.843841,
		0.010055, 0.880693, 0.473581,
		-0.959580, -0.124713, 0.252297,
		40.590038, 34.564419, 37.128128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169315, 34.914001, 37.621803>,  <41.261742, 34.651718, 36.951523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169315, 34.914001, 37.621803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851688, 34.675304, 37.575569>,  <40.661114, 34.532085, 37.547829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851688, 34.675304, 37.575569>,  <41.169315, 34.914001, 37.621803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851688, 34.675304, 37.575569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133831, -0.357135, 0.924415,
		-0.592917, 0.718577, 0.363451,
		-0.794064, -0.596743, -0.115584,
		40.613468, 34.496281, 37.540894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888046, 34.920036, 38.284889>,  <41.169315, 34.914001, 37.621803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888046, 34.920036, 38.284889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677692, 34.623932, 38.117340>,  <40.551479, 34.446270, 38.016811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677692, 34.623932, 38.117340>,  <40.888046, 34.920036, 38.284889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677692, 34.623932, 38.117340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032507, -0.474617, 0.879592,
		-0.849932, 0.476184, 0.225532,
		-0.525889, -0.740262, -0.418871,
		40.519924, 34.401852, 37.991680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375919, 34.765789, 38.674732>,  <40.888046, 34.920036, 38.284889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375919, 34.765789, 38.674732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421089, 34.423790, 38.472256>,  <40.448193, 34.218590, 38.350769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421089, 34.423790, 38.472256>,  <40.375919, 34.765789, 38.674732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421089, 34.423790, 38.472256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097412, -0.497465, 0.861998,
		-0.988817, -0.146650, 0.027111,
		0.112925, -0.854999, -0.506187,
		40.454967, 34.167290, 38.320400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855942, 34.370457, 38.931404>,  <40.375919, 34.765789, 38.674732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855942, 34.370457, 38.931404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104267, 34.086315, 38.798744>,  <40.253262, 33.915833, 38.719147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104267, 34.086315, 38.798744>,  <39.855942, 34.370457, 38.931404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104267, 34.086315, 38.798744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173171, -0.536853, 0.825712,
		-0.764592, -0.455183, -0.456299,
		0.620815, -0.710350, -0.331649,
		40.290512, 33.873211, 38.699249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445580, 33.793468, 39.068645>,  <39.855942, 34.370457, 38.931404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445580, 33.793468, 39.068645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829266, 33.697411, 39.009007>,  <40.059479, 33.639774, 38.973225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829266, 33.697411, 39.009007>,  <39.445580, 33.793468, 39.068645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829266, 33.697411, 39.009007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061366, -0.691807, 0.719470,
		-0.275923, -0.680979, -0.678331,
		0.959218, -0.240145, -0.149097,
		40.117031, 33.625366, 38.964279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445507, 33.093742, 38.992599>,  <39.445580, 33.793468, 39.068645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445507, 33.093742, 38.992599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816990, 33.189617, 39.105782>,  <40.039879, 33.247143, 39.173691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816990, 33.189617, 39.105782>,  <39.445507, 33.093742, 38.992599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816990, 33.189617, 39.105782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020149, -0.729289, 0.683909,
		0.370278, -0.640849, -0.672463,
		0.928702, 0.239687, 0.282952,
		40.095600, 33.261524, 39.190666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680984, 32.454559, 39.265804>,  <39.445507, 33.093742, 38.992599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680984, 32.454559, 39.265804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916000, 32.749489, 39.399158>,  <40.057011, 32.926445, 39.479172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916000, 32.749489, 39.399158>,  <39.680984, 32.454559, 39.265804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916000, 32.749489, 39.399158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165240, -0.512638, 0.842554,
		0.792142, -0.439948, -0.423033,
		0.587542, 0.737325, 0.333385,
		40.092262, 32.970688, 39.499172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428215, 31.926832, 38.877678>,  <39.680984, 32.454559, 39.265804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428215, 31.926832, 38.877678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099987, 31.949472, 39.105171>,  <38.903049, 31.963057, 39.241665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099987, 31.949472, 39.105171>,  <39.428215, 31.926832, 38.877678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099987, 31.949472, 39.105171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414105, 0.626964, -0.659874,
		-0.393922, -0.776989, -0.491032,
		-0.820575, 0.056600, 0.568730,
		38.853813, 31.966452, 39.275791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843750, 31.671986, 38.489891>,  <39.428215, 31.926832, 38.877678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843750, 31.671986, 38.489891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705158, 31.932079, 38.760342>,  <38.622002, 32.088135, 38.922611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705158, 31.932079, 38.760342>,  <38.843750, 31.671986, 38.489891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705158, 31.932079, 38.760342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419393, 0.537348, -0.731688,
		-0.839083, -0.537080, 0.086522,
		-0.346482, 0.650233, 0.676126,
		38.601215, 32.127148, 38.963181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135857, 31.809416, 38.342247>,  <38.843750, 31.671986, 38.489891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135857, 31.809416, 38.342247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225784, 32.112881, 38.586834>,  <38.279739, 32.294960, 38.733585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225784, 32.112881, 38.586834>,  <38.135857, 31.809416, 38.342247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225784, 32.112881, 38.586834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531275, 0.621484, -0.575764,
		-0.816826, -0.195415, 0.542778,
		0.224815, 0.758664, 0.611463,
		38.293228, 32.340481, 38.770271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533028, 32.120827, 38.408592>,  <38.135857, 31.809416, 38.342247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533028, 32.120827, 38.408592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823563, 32.389511, 38.466885>,  <37.997883, 32.550720, 38.501862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823563, 32.389511, 38.466885>,  <37.533028, 32.120827, 38.408592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823563, 32.389511, 38.466885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412102, 0.595278, -0.689794,
		-0.550091, 0.440968, 0.709187,
		0.726341, 0.671707, 0.145734,
		38.041466, 32.591022, 38.510605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133869, 32.747375, 38.550663>,  <37.533028, 32.120827, 38.408592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133869, 32.747375, 38.550663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496849, 32.865837, 38.431442>,  <37.714638, 32.936913, 38.359909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496849, 32.865837, 38.431442>,  <37.133869, 32.747375, 38.550663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496849, 32.865837, 38.431442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420160, 0.634683, -0.648570,
		-0.002908, 0.713772, 0.700372,
		0.907445, 0.296154, -0.298053,
		37.769081, 32.954685, 38.342026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983608, 33.427567, 38.396275>,  <37.133869, 32.747375, 38.550663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983608, 33.427567, 38.396275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336647, 33.357185, 38.221886>,  <37.548470, 33.314957, 38.117252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336647, 33.357185, 38.221886>,  <36.983608, 33.427567, 38.396275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336647, 33.357185, 38.221886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255187, 0.599535, -0.758576,
		0.394850, 0.780768, 0.484246,
		0.882595, -0.175951, -0.435968,
		37.601425, 33.304401, 38.091095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298557, 34.069180, 38.134834>,  <36.983608, 33.427567, 38.396275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298557, 34.069180, 38.134834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474300, 33.776463, 37.926434>,  <37.579746, 33.600834, 37.801395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474300, 33.776463, 37.926434>,  <37.298557, 34.069180, 38.134834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474300, 33.776463, 37.926434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174259, 0.499528, -0.848590,
		0.881246, 0.463627, 0.091952,
		0.439362, -0.731793, -0.520999,
		37.606110, 33.556923, 37.770134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905594, 34.489273, 37.755474>,  <37.298557, 34.069180, 38.134834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905594, 34.489273, 37.755474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814178, 34.136574, 37.590408>,  <37.759331, 33.924953, 37.491371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814178, 34.136574, 37.590408>,  <37.905594, 34.489273, 37.755474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814178, 34.136574, 37.590408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172493, 0.453849, -0.874224,
		0.958132, -0.128613, -0.255818,
		-0.228539, -0.881748, -0.412663,
		37.745617, 33.872051, 37.466610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071674, 34.651524, 37.138584>,  <37.905594, 34.489273, 37.755474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071674, 34.651524, 37.138584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884045, 34.299694, 37.106785>,  <37.771469, 34.088596, 37.087704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884045, 34.299694, 37.106785>,  <38.071674, 34.651524, 37.138584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884045, 34.299694, 37.106785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126074, 0.155782, -0.979713,
		0.874116, -0.449532, -0.183964,
		-0.469070, -0.879575, -0.079497,
		37.743324, 34.035820, 37.082935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436264, 34.281708, 36.582947>,  <38.071674, 34.651524, 37.138584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436264, 34.281708, 36.582947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065926, 34.131142, 36.596394>,  <37.843723, 34.040802, 36.604462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065926, 34.131142, 36.596394>,  <38.436264, 34.281708, 36.582947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065926, 34.131142, 36.596394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016518, -0.129179, -0.991484,
		0.377551, -0.917401, 0.125817,
		-0.925841, -0.376414, 0.033618,
		37.788174, 34.018219, 36.606480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344101, 33.703575, 36.183456>,  <38.436264, 34.281708, 36.582947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344101, 33.703575, 36.183456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969185, 33.840710, 36.208599>,  <37.744236, 33.922993, 36.223686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969185, 33.840710, 36.208599>,  <38.344101, 33.703575, 36.183456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969185, 33.840710, 36.208599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055360, 0.031624, -0.997965,
		-0.344130, -0.938861, -0.010661,
		-0.937289, 0.342840, 0.062858,
		37.688000, 33.943562, 36.227455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951897, 33.349648, 35.661491>,  <38.344101, 33.703575, 36.183456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951897, 33.349648, 35.661491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743340, 33.681137, 35.742847>,  <37.618206, 33.880032, 35.791660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743340, 33.681137, 35.742847>,  <37.951897, 33.349648, 35.661491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743340, 33.681137, 35.742847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290153, 0.051975, -0.955568,
		-0.802471, -0.557243, 0.213357,
		-0.521394, 0.828722, 0.203394,
		37.586922, 33.929752, 35.803867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.639717, 29.842705, 42.797600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.523617, 30.221811, 42.850506>,  <38.453957, 30.449274, 42.882248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.523617, 30.221811, 42.850506>,  <38.639717, 29.842705, 42.797600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523617, 30.221811, 42.850506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014807, 0.133751, -0.990904,
		-0.956835, -0.289572, -0.024788,
		-0.290253, 0.947765, 0.132265,
		38.436543, 30.506142, 42.890186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131218, 29.948486, 42.335804>,  <38.639717, 29.842705, 42.797600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131218, 29.948486, 42.335804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252533, 30.319534, 42.423012>,  <38.325321, 30.542164, 42.475338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252533, 30.319534, 42.423012>,  <38.131218, 29.948486, 42.335804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252533, 30.319534, 42.423012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128597, 0.186859, -0.973933,
		-0.944181, 0.323422, -0.062617,
		0.303291, 0.927622, 0.218020,
		38.343521, 30.597820, 42.488419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756447, 30.292643, 41.987804>,  <38.131218, 29.948486, 42.335804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756447, 30.292643, 41.987804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.076672, 30.530254, 42.019360>,  <38.268806, 30.672821, 42.038292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.076672, 30.530254, 42.019360>,  <37.756447, 30.292643, 41.987804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076672, 30.530254, 42.019360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108600, 0.273291, -0.955781,
		-0.589321, 0.756599, 0.283299,
		0.800566, 0.594029, 0.078890,
		38.316841, 30.708464, 42.043026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612938, 30.773027, 41.585457>,  <37.756447, 30.292643, 41.987804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612938, 30.773027, 41.585457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986679, 30.901648, 41.646900>,  <38.210922, 30.978819, 41.683765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986679, 30.901648, 41.646900>,  <37.612938, 30.773027, 41.585457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986679, 30.901648, 41.646900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001263, 0.428052, -0.903753,
		-0.356351, 0.844617, 0.399545,
		0.934351, 0.321549, 0.153604,
		38.266983, 30.998112, 41.692982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636440, 31.522760, 41.418964>,  <37.612938, 30.773027, 41.585457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636440, 31.522760, 41.418964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013531, 31.391209, 41.396698>,  <38.239784, 31.312277, 41.383339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.013531, 31.391209, 41.396698>,  <37.636440, 31.522760, 41.418964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013531, 31.391209, 41.396698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122747, 0.497221, -0.858897,
		0.310153, 0.802875, 0.509114,
		0.942729, -0.328882, -0.055664,
		38.296349, 31.292543, 41.379997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114109, 32.152287, 41.324783>,  <37.636440, 31.522760, 41.418964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114109, 32.152287, 41.324783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304718, 31.828411, 41.187767>,  <38.419083, 31.634087, 41.105556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.304718, 31.828411, 41.187767>,  <38.114109, 32.152287, 41.324783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304718, 31.828411, 41.187767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071384, 0.423970, -0.902858,
		0.876259, 0.405782, 0.259831,
		0.476524, -0.809685, -0.342541,
		38.447674, 31.585506, 41.085003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787601, 32.414707, 41.072277>,  <38.114109, 32.152287, 41.324783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787601, 32.414707, 41.072277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.712448, 32.075684, 40.873745>,  <38.667358, 31.872269, 40.754627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.712448, 32.075684, 40.873745>,  <38.787601, 32.414707, 41.072277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712448, 32.075684, 40.873745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366906, 0.408179, -0.835925,
		0.911088, -0.339158, 0.234287,
		-0.187880, -0.847562, -0.496326,
		38.656086, 31.821415, 40.724846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415482, 32.220387, 40.713104>,  <38.787601, 32.414707, 41.072277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415482, 32.220387, 40.713104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112629, 32.020184, 40.545181>,  <38.930916, 31.900061, 40.444427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.112629, 32.020184, 40.545181>,  <39.415482, 32.220387, 40.713104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112629, 32.020184, 40.545181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062050, 0.584627, -0.808926,
		0.650305, -0.638515, -0.411585,
		-0.757135, -0.500509, -0.419805,
		38.885487, 31.870031, 40.419239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545078, 31.999334, 39.927544>,  <39.415482, 32.220387, 40.713104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545078, 31.999334, 39.927544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159054, 32.038025, 40.024948>,  <38.927437, 32.061241, 40.083389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159054, 32.038025, 40.024948>,  <39.545078, 31.999334, 39.927544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159054, 32.038025, 40.024948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167818, 0.485544, -0.857953,
		-0.201223, -0.868844, -0.452348,
		-0.965063, 0.096728, 0.243510,
		38.869534, 32.067043, 40.098000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267300, 32.176620, 39.728577>,  <39.545078, 31.999334, 39.927544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267300, 32.176620, 39.728577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.270023, 32.565987, 39.820156>,  <40.271656, 32.799606, 39.875103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.270023, 32.565987, 39.820156>,  <40.267300, 32.176620, 39.728577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270023, 32.565987, 39.820156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261342, -0.222731, 0.939197,
		0.965223, 0.053442, -0.255910,
		0.006807, 0.973414, 0.228951,
		40.272064, 32.858009, 39.888840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893379, 32.308136, 40.289394>,  <40.267300, 32.176620, 39.728577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893379, 32.308136, 40.289394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647896, 32.621174, 40.331161>,  <40.500607, 32.808998, 40.356220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647896, 32.621174, 40.331161>,  <40.893379, 32.308136, 40.289394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647896, 32.621174, 40.331161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081421, -0.068816, 0.994301,
		0.785323, 0.618714, -0.021486,
		-0.613710, 0.782597, 0.104419,
		40.463783, 32.855953, 40.362488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223759, 32.886417, 40.816536>,  <40.893379, 32.308136, 40.289394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223759, 32.886417, 40.816536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.837589, 32.990582, 40.811577>,  <40.605888, 33.053078, 40.808601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.837589, 32.990582, 40.811577>,  <41.223759, 32.886417, 40.816536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837589, 32.990582, 40.811577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014134, 0.099757, 0.994911,
		0.260318, 0.960332, -0.099988,
		-0.965420, 0.260407, -0.012396,
		40.547962, 33.068703, 40.807858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236271, 33.528038, 41.196453>,  <41.223759, 32.886417, 40.816536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236271, 33.528038, 41.196453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.869442, 33.368893, 41.186020>,  <40.649345, 33.273403, 41.179760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.869442, 33.368893, 41.186020>,  <41.236271, 33.528038, 41.196453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869442, 33.368893, 41.186020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057462, 0.067143, 0.996087,
		-0.394558, 0.914983, -0.084437,
		-0.917073, -0.397866, -0.026085,
		40.594318, 33.249535, 41.178196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798260, 34.015114, 41.515606>,  <41.236271, 33.528038, 41.196453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798260, 34.015114, 41.515606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617016, 33.659592, 41.543068>,  <40.508270, 33.446278, 41.559544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617016, 33.659592, 41.543068>,  <40.798260, 34.015114, 41.515606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617016, 33.659592, 41.543068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314798, 0.231584, 0.920474,
		-0.834022, 0.395466, -0.384727,
		-0.453112, -0.888806, 0.068654,
		40.481083, 33.392948, 41.563663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403915, 34.106670, 42.192749>,  <40.798260, 34.015114, 41.515606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403915, 34.106670, 42.192749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.373211, 33.714787, 42.118698>,  <40.354786, 33.479656, 42.074268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.373211, 33.714787, 42.118698>,  <40.403915, 34.106670, 42.192749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373211, 33.714787, 42.118698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300480, -0.154307, 0.941223,
		-0.950694, 0.127880, -0.282538,
		-0.076766, -0.979712, -0.185124,
		40.350182, 33.420872, 42.063160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760597, 33.868641, 42.421402>,  <40.403915, 34.106670, 42.192749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760597, 33.868641, 42.421402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.042336, 33.586456, 42.452938>,  <40.211380, 33.417145, 42.471859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.042336, 33.586456, 42.452938>,  <39.760597, 33.868641, 42.421402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042336, 33.586456, 42.452938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058248, 0.053249, 0.996881,
		-0.707461, -0.706744, -0.003586,
		0.704348, -0.705463, 0.078838,
		40.253639, 33.374817, 42.476589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693481, 33.458008, 42.960140>,  <39.760597, 33.868641, 42.421402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693481, 33.458008, 42.960140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077862, 33.387348, 42.874935>,  <40.308491, 33.344952, 42.823811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.077862, 33.387348, 42.874935>,  <39.693481, 33.458008, 42.960140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077862, 33.387348, 42.874935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162356, -0.263464, 0.950909,
		-0.224093, -0.948358, -0.224496,
		0.960949, -0.176644, -0.213012,
		40.366146, 33.334354, 42.811031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885292, 32.854221, 43.246201>,  <39.693481, 33.458008, 42.960140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885292, 32.854221, 43.246201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245399, 33.023483, 43.205311>,  <40.461464, 33.125042, 43.180779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245399, 33.023483, 43.205311>,  <39.885292, 32.854221, 43.246201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245399, 33.023483, 43.205311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214685, -0.227293, 0.949867,
		0.378706, -0.877085, -0.295471,
		0.900273, 0.423154, -0.102220,
		40.515480, 33.150429, 43.174644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294956, 32.399677, 43.531281>,  <39.885292, 32.854221, 43.246201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294956, 32.399677, 43.531281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525330, 32.724770, 43.566544>,  <40.663555, 32.919823, 43.587700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.525330, 32.724770, 43.566544>,  <40.294956, 32.399677, 43.531281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525330, 32.724770, 43.566544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366091, -0.352831, 0.861097,
		0.730942, -0.463662, -0.500740,
		0.575934, 0.812729, 0.088157,
		40.698109, 32.968590, 43.592991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024246, 32.213577, 43.693306>,  <40.294956, 32.399677, 43.531281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024246, 32.213577, 43.693306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.974152, 32.589375, 43.820850>,  <40.944096, 32.814854, 43.897377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.974152, 32.589375, 43.820850>,  <41.024246, 32.213577, 43.693306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974152, 32.589375, 43.820850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413769, -0.242647, 0.877450,
		0.901726, 0.241828, -0.358343,
		-0.125241, 0.939490, 0.318862,
		40.936581, 32.871223, 43.916508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610992, 32.365574, 44.064732>,  <41.024246, 32.213577, 43.693306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610992, 32.365574, 44.064732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.365005, 32.664600, 44.165108>,  <41.217415, 32.844017, 44.225334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.365005, 32.664600, 44.165108>,  <41.610992, 32.365574, 44.064732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365005, 32.664600, 44.165108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156422, -0.196256, 0.967996,
		0.772886, 0.634534, 0.003755,
		-0.614963, 0.747563, 0.250939,
		41.180515, 32.888870, 44.240391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982716, 32.750710, 44.597225>,  <41.610992, 32.365574, 44.064732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982716, 32.750710, 44.597225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596905, 32.839417, 44.654518>,  <41.365417, 32.892639, 44.688892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.596905, 32.839417, 44.654518>,  <41.982716, 32.750710, 44.597225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596905, 32.839417, 44.654518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136382, -0.045966, 0.989589,
		0.226044, 0.974015, 0.014090,
		-0.964523, 0.221769, 0.143228,
		41.307549, 32.905949, 44.697487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081757, 33.163788, 45.136337>,  <41.982716, 32.750710, 44.597225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081757, 33.163788, 45.136337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.691738, 33.077118, 45.155697>,  <41.457729, 33.025116, 45.167313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.691738, 33.077118, 45.155697>,  <42.081757, 33.163788, 45.136337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691738, 33.077118, 45.155697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057484, -0.035823, 0.997703,
		-0.214444, 0.975586, 0.047385,
		-0.975043, -0.216675, 0.048398,
		41.399223, 33.012115, 45.170216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.375851, 34.970478, 46.209557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758568, 34.871132, 46.270046>,  <34.988197, 34.811523, 46.306339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758568, 34.871132, 46.270046>,  <34.375851, 34.970478, 46.209557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758568, 34.871132, 46.270046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176395, 0.082313, -0.980872,
		0.231169, 0.965162, 0.122567,
		0.956789, -0.248368, 0.151222,
		35.045605, 34.796623, 46.315414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767986, 35.512604, 46.050293>,  <34.375851, 34.970478, 46.209557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767986, 35.512604, 46.050293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001743, 35.189632, 46.017906>,  <35.141998, 34.995850, 45.998474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001743, 35.189632, 46.017906>,  <34.767986, 35.512604, 46.050293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001743, 35.189632, 46.017906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159314, 0.211993, -0.964198,
		0.795681, 0.550568, 0.252520,
		0.584389, -0.807424, -0.080966,
		35.177059, 34.947407, 45.993618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347954, 35.711723, 45.729511>,  <34.767986, 35.512604, 46.050293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347954, 35.711723, 45.729511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.375977, 35.316441, 45.675041>,  <35.392788, 35.079273, 45.642357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.375977, 35.316441, 45.675041>,  <35.347954, 35.711723, 45.729511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375977, 35.316441, 45.675041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386711, 0.152741, -0.909464,
		0.919536, 0.011051, 0.392850,
		0.070055, -0.988204, -0.136178,
		35.396992, 35.019978, 45.634190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059963, 35.513172, 45.503330>,  <35.347954, 35.711723, 45.729511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059963, 35.513172, 45.503330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829029, 35.211506, 45.378166>,  <35.690468, 35.030506, 45.303066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829029, 35.211506, 45.378166>,  <36.059963, 35.513172, 45.503330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829029, 35.211506, 45.378166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306048, 0.155415, -0.939245,
		0.756976, -0.638030, 0.141083,
		-0.577340, -0.754164, -0.312913,
		35.655827, 34.985256, 45.284294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374672, 35.229668, 44.929527>,  <36.059963, 35.513172, 45.503330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374672, 35.229668, 44.929527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011074, 35.068356, 44.887383>,  <35.792915, 34.971569, 44.862095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011074, 35.068356, 44.887383>,  <36.374672, 35.229668, 44.929527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011074, 35.068356, 44.887383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050580, 0.144192, -0.988256,
		0.413734, -0.903646, -0.110672,
		-0.908992, -0.403277, -0.105364,
		35.738377, 34.947372, 44.855774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407719, 34.701805, 44.328808>,  <36.374672, 35.229668, 44.929527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407719, 34.701805, 44.328808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019241, 34.793407, 44.355129>,  <35.786156, 34.848370, 44.370922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019241, 34.793407, 44.355129>,  <36.407719, 34.701805, 44.328808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019241, 34.793407, 44.355129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011415, 0.231128, -0.972856,
		-0.238003, -0.945587, -0.221856,
		-0.971197, 0.229011, 0.065803,
		35.727882, 34.862110, 44.374870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181843, 34.444057, 43.687035>,  <36.407719, 34.701805, 44.328808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181843, 34.444057, 43.687035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890999, 34.680840, 43.826118>,  <35.716492, 34.822910, 43.909569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890999, 34.680840, 43.826118>,  <36.181843, 34.444057, 43.687035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890999, 34.680840, 43.826118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198347, 0.303747, -0.931878,
		-0.657247, -0.746543, -0.103444,
		-0.727107, 0.591956, 0.347712,
		35.672867, 34.858425, 43.930431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684071, 34.409615, 43.090076>,  <36.181843, 34.444057, 43.687035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684071, 34.409615, 43.090076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.592800, 34.721642, 43.323120>,  <35.538036, 34.908855, 43.462948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.592800, 34.721642, 43.323120>,  <35.684071, 34.409615, 43.090076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592800, 34.721642, 43.323120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325664, 0.502782, -0.800720,
		-0.917539, -0.372441, 0.139316,
		-0.228176, 0.780063, 0.582613,
		35.524349, 34.955662, 43.497906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959404, 34.585655, 42.829243>,  <35.684071, 34.409615, 43.090076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959404, 34.585655, 42.829243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.111225, 34.909782, 43.007824>,  <35.202316, 35.104259, 43.114975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.111225, 34.909782, 43.007824>,  <34.959404, 34.585655, 42.829243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111225, 34.909782, 43.007824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231047, 0.550297, -0.802365,
		-0.895855, 0.201389, 0.396090,
		0.379554, 0.810318, 0.446456,
		35.225090, 35.152878, 43.141762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494667, 35.196941, 42.745502>,  <34.959404, 34.585655, 42.829243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494667, 35.196941, 42.745502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833317, 35.391293, 42.832359>,  <35.036507, 35.507904, 42.884472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.833317, 35.391293, 42.832359>,  <34.494667, 35.196941, 42.745502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833317, 35.391293, 42.832359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105170, 0.552709, -0.826712,
		-0.521699, 0.677076, 0.519036,
		0.846623, 0.485881, 0.217140,
		35.087303, 35.537056, 42.897503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334160, 35.892952, 42.688740>,  <34.494667, 35.196941, 42.745502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334160, 35.892952, 42.688740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733631, 35.885849, 42.669460>,  <34.973316, 35.881588, 42.657894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733631, 35.885849, 42.669460>,  <34.334160, 35.892952, 42.688740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733631, 35.885849, 42.669460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031539, 0.528562, -0.848309,
		0.040541, 0.848709, 0.527304,
		0.998680, -0.017761, -0.048196,
		35.033234, 35.880520, 42.655003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586262, 36.645275, 42.625137>,  <34.334160, 35.892952, 42.688740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586262, 36.645275, 42.625137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858692, 36.393288, 42.475857>,  <35.022152, 36.242096, 42.386288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858692, 36.393288, 42.475857>,  <34.586262, 36.645275, 42.625137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858692, 36.393288, 42.475857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046168, 0.471731, -0.880533,
		0.730756, 0.616940, 0.292200,
		0.681076, -0.629964, -0.373203,
		35.063015, 36.204300, 42.363895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003464, 37.053699, 42.245922>,  <34.586262, 36.645275, 42.625137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003464, 37.053699, 42.245922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.092621, 36.691814, 42.100700>,  <35.146114, 36.474682, 42.013565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.092621, 36.691814, 42.100700>,  <35.003464, 37.053699, 42.245922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092621, 36.691814, 42.100700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125502, 0.395957, -0.909652,
		0.966731, 0.157190, 0.201799,
		0.222892, -0.904715, -0.363056,
		35.159489, 36.420399, 41.991783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506107, 37.183491, 41.886711>,  <35.003464, 37.053699, 42.245922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506107, 37.183491, 41.886711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336784, 36.854828, 41.734035>,  <35.235191, 36.657631, 41.642429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336784, 36.854828, 41.734035>,  <35.506107, 37.183491, 41.886711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336784, 36.854828, 41.734035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160455, 0.346644, -0.924171,
		0.891663, -0.452454, -0.014899,
		-0.423309, -0.821659, -0.381688,
		35.209793, 36.608330, 41.619530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085526, 37.068829, 41.440655>,  <35.506107, 37.183491, 41.886711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085526, 37.068829, 41.440655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.418827, 37.288528, 41.466022>,  <36.618809, 37.420349, 41.481243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.418827, 37.288528, 41.466022>,  <36.085526, 37.068829, 41.440655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418827, 37.288528, 41.466022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101669, -0.264960, 0.958885,
		0.543467, -0.792544, -0.276619,
		0.833251, 0.549245, 0.063419,
		36.668804, 37.453300, 41.485046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440063, 36.661289, 41.905525>,  <36.085526, 37.068829, 41.440655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440063, 36.661289, 41.905525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.600620, 37.027225, 41.923225>,  <36.696953, 37.246788, 41.933846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.600620, 37.027225, 41.923225>,  <36.440063, 36.661289, 41.905525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600620, 37.027225, 41.923225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039994, -0.065777, 0.997033,
		0.915034, -0.398428, -0.062990,
		0.401389, 0.914838, 0.044253,
		36.721039, 37.301678, 41.936501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016140, 36.567226, 42.249283>,  <36.440063, 36.661289, 41.905525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016140, 36.567226, 42.249283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.919800, 36.953842, 42.284576>,  <36.861996, 37.185814, 42.305752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.919800, 36.953842, 42.284576>,  <37.016140, 36.567226, 42.249283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919800, 36.953842, 42.284576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097382, -0.066385, 0.993030,
		0.965665, 0.247761, -0.078136,
		-0.240847, 0.966544, 0.088233,
		36.847546, 37.243805, 42.311047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467915, 36.843624, 42.785229>,  <37.016140, 36.567226, 42.249283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467915, 36.843624, 42.785229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184860, 37.124813, 42.756699>,  <37.015030, 37.293526, 42.739582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184860, 37.124813, 42.756699>,  <37.467915, 36.843624, 42.785229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184860, 37.124813, 42.756699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037109, 0.137780, 0.989768,
		0.705605, 0.697745, -0.123584,
		-0.707633, 0.702971, -0.071325,
		36.972569, 37.335705, 42.735302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702053, 37.408714, 43.088509>,  <37.467915, 36.843624, 42.785229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702053, 37.408714, 43.088509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.305870, 37.461235, 43.105293>,  <37.068161, 37.492748, 43.115364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.305870, 37.461235, 43.105293>,  <37.702053, 37.408714, 43.088509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305870, 37.461235, 43.105293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070188, 0.218417, 0.973328,
		0.118632, 0.966983, -0.225547,
		-0.990455, 0.131298, 0.041960,
		37.008732, 37.500626, 43.117882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479542, 38.141960, 43.527225>,  <37.702053, 37.408714, 43.088509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479542, 38.141960, 43.527225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145077, 37.922661, 43.520790>,  <36.944397, 37.791080, 43.516930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.145077, 37.922661, 43.520790>,  <37.479542, 38.141960, 43.527225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145077, 37.922661, 43.520790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113121, 0.143684, 0.983137,
		-0.536695, 0.823879, -0.182162,
		-0.836159, -0.548251, -0.016084,
		36.894230, 37.758186, 43.515965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006611, 38.550774, 43.956161>,  <37.479542, 38.141960, 43.527225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006611, 38.550774, 43.956161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.841236, 38.186607, 43.962055>,  <36.742012, 37.968109, 43.965591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.841236, 38.186607, 43.962055>,  <37.006611, 38.550774, 43.956161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841236, 38.186607, 43.962055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012742, 0.010400, 0.999865,
		-0.910445, 0.413565, 0.007301,
		-0.413433, -0.910415, 0.014738,
		36.717205, 37.913483, 43.966476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326988, 38.592537, 44.375107>,  <37.006611, 38.550774, 43.956161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326988, 38.592537, 44.375107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.471817, 38.219925, 44.361557>,  <36.558716, 37.996357, 44.353428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.471817, 38.219925, 44.361557>,  <36.326988, 38.592537, 44.375107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471817, 38.219925, 44.361557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142916, 0.019566, 0.989542,
		-0.921129, -0.363128, 0.140215,
		0.362074, -0.931534, -0.033874,
		36.580441, 37.940464, 44.351395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082596, 38.271862, 44.976727>,  <36.326988, 38.592537, 44.375107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082596, 38.271862, 44.976727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356716, 37.988659, 44.908501>,  <36.521187, 37.818737, 44.867565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.356716, 37.988659, 44.908501>,  <36.082596, 38.271862, 44.976727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356716, 37.988659, 44.908501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018780, -0.216954, 0.976001,
		-0.728017, -0.672058, -0.135383,
		0.685301, -0.708003, -0.170567,
		36.562305, 37.776257, 44.857330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832775, 37.638664, 45.317402>,  <36.082596, 38.271862, 44.976727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832775, 37.638664, 45.317402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228416, 37.613228, 45.264286>,  <36.465801, 37.597965, 45.232418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228416, 37.613228, 45.264286>,  <35.832775, 37.638664, 45.317402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228416, 37.613228, 45.264286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100996, -0.363195, 0.926223,
		-0.107124, -0.929541, -0.352815,
		0.989103, -0.063587, -0.132787,
		36.525146, 37.594151, 45.224449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068069, 36.952503, 45.302700>,  <35.832775, 37.638664, 45.317402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068069, 36.952503, 45.302700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371964, 37.182583, 45.423996>,  <36.554298, 37.320629, 45.496773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371964, 37.182583, 45.423996>,  <36.068069, 36.952503, 45.302700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371964, 37.182583, 45.423996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051291, -0.517913, 0.853894,
		0.648210, -0.633177, -0.422978,
		0.759732, 0.575198, 0.303240,
		36.599884, 37.355141, 45.514969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439980, 36.498730, 45.667221>,  <36.068069, 36.952503, 45.302700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439980, 36.498730, 45.667221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618813, 36.838127, 45.780487>,  <36.726112, 37.041763, 45.848446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618813, 36.838127, 45.780487>,  <36.439980, 36.498730, 45.667221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618813, 36.838127, 45.780487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226820, -0.413751, 0.881682,
		0.865258, -0.329957, -0.377435,
		0.447082, 0.848492, 0.283161,
		36.752937, 37.092674, 45.865437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990986, 36.372803, 45.958027>,  <36.439980, 36.498730, 45.667221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990986, 36.372803, 45.958027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.980099, 36.731621, 46.134468>,  <36.973564, 36.946911, 46.240334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.980099, 36.731621, 46.134468>,  <36.990986, 36.372803, 45.958027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980099, 36.731621, 46.134468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411171, -0.392164, 0.822889,
		0.911152, 0.203770, -0.358162,
		-0.027222, 0.897043, 0.441105,
		36.971931, 37.000732, 46.266800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698467, 36.594257, 46.047188>,  <36.990986, 36.372803, 45.958027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698467, 36.594257, 46.047188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474163, 36.796345, 46.309578>,  <37.339581, 36.917599, 46.467010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.474163, 36.796345, 46.309578>,  <37.698467, 36.594257, 46.047188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474163, 36.796345, 46.309578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384488, -0.542768, 0.746708,
		0.733293, 0.670937, 0.110111,
		-0.560758, 0.505219, 0.655975,
		37.305935, 36.947910, 46.506371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467365, 36.679943, 46.030983>,  <37.698467, 36.594257, 46.047188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467365, 36.679943, 46.030983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833431, 36.534927, 45.960514>,  <39.053070, 36.447918, 45.918232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.833431, 36.534927, 45.960514>,  <38.467365, 36.679943, 46.030983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833431, 36.534927, 45.960514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040566, 0.352006, -0.935118,
		0.401032, 0.862934, 0.307437,
		0.915165, -0.362541, -0.176172,
		39.107983, 36.426167, 45.907661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718933, 37.136509, 45.626335>,  <38.467365, 36.679943, 46.030983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718933, 37.136509, 45.626335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979813, 36.839600, 45.564793>,  <39.136341, 36.661453, 45.527866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979813, 36.839600, 45.564793>,  <38.718933, 37.136509, 45.626335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979813, 36.839600, 45.564793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097034, 0.283042, -0.954186,
		0.751813, 0.607388, 0.256625,
		0.652197, -0.742271, -0.153858,
		39.175472, 36.616917, 45.518635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106117, 37.423458, 45.154224>,  <38.718933, 37.136509, 45.626335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106117, 37.423458, 45.154224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.213776, 37.039528, 45.122498>,  <39.278370, 36.809170, 45.103462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.213776, 37.039528, 45.122498>,  <39.106117, 37.423458, 45.154224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213776, 37.039528, 45.122498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050949, 0.096431, -0.994035,
		0.961752, 0.263497, 0.074856,
		0.269144, -0.959828, -0.079318,
		39.294518, 36.751579, 45.098701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793701, 37.435219, 44.696453>,  <39.106117, 37.423458, 45.154224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793701, 37.435219, 44.696453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.574532, 37.100742, 44.705921>,  <39.443031, 36.900055, 44.711601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.574532, 37.100742, 44.705921>,  <39.793701, 37.435219, 44.696453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574532, 37.100742, 44.705921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072816, 0.019492, -0.997155,
		0.833353, -0.548088, -0.071568,
		-0.547924, -0.836194, 0.023666,
		39.410156, 36.849884, 44.713020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148071, 37.066811, 44.159119>,  <39.793701, 37.435219, 44.696453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148071, 37.066811, 44.159119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.794861, 36.891560, 44.226410>,  <39.582935, 36.786407, 44.266785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.794861, 36.891560, 44.226410>,  <40.148071, 37.066811, 44.159119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794861, 36.891560, 44.226410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168205, -0.039179, -0.984973,
		0.438137, -0.898057, -0.039099,
		-0.883031, -0.438130, 0.168224,
		39.529953, 36.760120, 44.276878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176800, 36.446152, 43.778385>,  <40.148071, 37.066811, 44.159119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176800, 36.446152, 43.778385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.794708, 36.548435, 43.837910>,  <39.565453, 36.609806, 43.873623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.794708, 36.548435, 43.837910>,  <40.176800, 36.446152, 43.778385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794708, 36.548435, 43.837910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171516, -0.068779, -0.982778,
		-0.241072, -0.964304, 0.109558,
		-0.955231, 0.255711, 0.148813,
		39.508141, 36.625149, 43.882553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801075, 35.967144, 43.349686>,  <40.176800, 36.446152, 43.778385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801075, 35.967144, 43.349686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.536980, 36.249794, 43.451485>,  <39.378525, 36.419384, 43.512566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.536980, 36.249794, 43.451485>,  <39.801075, 35.967144, 43.349686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536980, 36.249794, 43.451485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311636, 0.050562, -0.948855,
		-0.683353, -0.705780, 0.186827,
		-0.660236, 0.706625, 0.254498,
		39.338909, 36.461781, 43.527836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252693, 35.894238, 42.944431>,  <39.801075, 35.967144, 43.349686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252693, 35.894238, 42.944431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160324, 36.269203, 43.048687>,  <39.104904, 36.494183, 43.111240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.160324, 36.269203, 43.048687>,  <39.252693, 35.894238, 42.944431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160324, 36.269203, 43.048687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222844, 0.209802, -0.952010,
		-0.947109, -0.277923, 0.160448,
		-0.230924, 0.937412, 0.260639,
		39.091045, 36.550426, 43.126877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501404, 36.161720, 42.722328>,  <39.252693, 35.894238, 42.944431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501404, 36.161720, 42.722328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.773247, 36.454456, 42.742512>,  <38.936352, 36.630096, 42.754623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.773247, 36.454456, 42.742512>,  <38.501404, 36.161720, 42.722328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773247, 36.454456, 42.742512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111428, 0.170971, -0.978955,
		-0.725066, 0.659680, 0.197740,
		0.679605, 0.731841, 0.050459,
		38.977127, 36.674007, 42.757648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253265, 36.726280, 42.326614>,  <38.501404, 36.161720, 42.722328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253265, 36.726280, 42.326614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.638741, 36.830513, 42.349968>,  <38.870026, 36.893055, 42.363979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.638741, 36.830513, 42.349968>,  <38.253265, 36.726280, 42.326614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638741, 36.830513, 42.349968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047596, 0.047509, -0.997736,
		-0.262767, 0.964281, 0.033381,
		0.963685, 0.260584, 0.058379,
		38.927845, 36.908688, 42.367481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341015, 37.473080, 42.204948>,  <38.253265, 36.726280, 42.326614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341015, 37.473080, 42.204948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682926, 37.289852, 42.107349>,  <38.888073, 37.179916, 42.048790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.682926, 37.289852, 42.107349>,  <38.341015, 37.473080, 42.204948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682926, 37.289852, 42.107349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162039, 0.211087, -0.963943,
		0.493053, 0.863492, 0.106208,
		0.854776, -0.458065, -0.243997,
		38.939358, 37.152431, 42.034149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581177, 37.828148, 41.614601>,  <38.341015, 37.473080, 42.204948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581177, 37.828148, 41.614601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.839218, 37.522789, 41.627670>,  <38.994045, 37.339573, 41.635513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.839218, 37.522789, 41.627670>,  <38.581177, 37.828148, 41.614601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839218, 37.522789, 41.627670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249101, 0.169695, -0.953495,
		0.722349, 0.623243, 0.299634,
		0.645105, -0.763395, 0.032671,
		39.032749, 37.293770, 41.637470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095600, 38.036797, 41.156136>,  <38.581177, 37.828148, 41.614601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095600, 38.036797, 41.156136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177505, 37.647411, 41.197018>,  <39.226650, 37.413780, 41.221546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.177505, 37.647411, 41.197018>,  <39.095600, 38.036797, 41.156136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177505, 37.647411, 41.197018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246932, -0.049666, -0.967759,
		0.947152, 0.223400, 0.230209,
		0.204763, -0.973461, 0.102206,
		39.238934, 37.355373, 41.227680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685287, 37.978912, 40.738384>,  <39.095600, 38.036797, 41.156136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685287, 37.978912, 40.738384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.529217, 37.614437, 40.791302>,  <39.435574, 37.395752, 40.823051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.529217, 37.614437, 40.791302>,  <39.685287, 37.978912, 40.738384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529217, 37.614437, 40.791302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323051, -0.270027, -0.907041,
		0.862207, -0.311167, 0.399718,
		-0.390175, -0.911187, 0.132296,
		39.412163, 37.341080, 40.830990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.164412, 37.530399, 30.179766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.433117, 37.241901, 30.112198>,  <29.594339, 37.068802, 30.071657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.433117, 37.241901, 30.112198>,  <29.164412, 37.530399, 30.179766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433117, 37.241901, 30.112198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180948, -0.380898, 0.906738,
		-0.718326, -0.578547, -0.386381,
		0.671763, -0.721249, -0.168922,
		29.634645, 37.025528, 30.061522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859625, 36.868530, 30.289444>,  <29.164412, 37.530399, 30.179766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859625, 36.868530, 30.289444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.255476, 36.817482, 30.315815>,  <29.492987, 36.786854, 30.331638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.255476, 36.817482, 30.315815>,  <28.859625, 36.868530, 30.289444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255476, 36.817482, 30.315815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116461, -0.444161, 0.888346,
		-0.084088, -0.886811, -0.454418,
		0.989629, -0.127621, 0.065930,
		29.552364, 36.779194, 30.335594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896000, 36.136829, 30.398954>,  <28.859625, 36.868530, 30.289444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896000, 36.136829, 30.398954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218945, 36.338787, 30.521103>,  <29.412712, 36.459961, 30.594391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218945, 36.338787, 30.521103>,  <28.896000, 36.136829, 30.398954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218945, 36.338787, 30.521103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095524, -0.398862, 0.912022,
		0.582273, -0.765502, -0.273797,
		0.807361, 0.504892, 0.305370,
		29.461153, 36.490253, 30.612715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099190, 35.671944, 30.810297>,  <28.896000, 36.136829, 30.398954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099190, 35.671944, 30.810297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334372, 35.976688, 30.919020>,  <29.475481, 36.159534, 30.984253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.334372, 35.976688, 30.919020>,  <29.099190, 35.671944, 30.810297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334372, 35.976688, 30.919020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104298, -0.404622, 0.908517,
		0.802141, -0.505818, -0.317360,
		0.587955, 0.761859, 0.271808,
		29.510757, 36.205246, 31.000563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761316, 35.420517, 31.105976>,  <29.099190, 35.671944, 30.810297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761316, 35.420517, 31.105976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708128, 35.790154, 31.249289>,  <29.676214, 36.011936, 31.335276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.708128, 35.790154, 31.249289>,  <29.761316, 35.420517, 31.105976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708128, 35.790154, 31.249289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025339, -0.358203, 0.933300,
		0.990796, 0.133180, 0.024215,
		-0.132971, 0.924096, 0.358281,
		29.668236, 36.067383, 31.356773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234993, 35.385113, 31.787596>,  <29.761316, 35.420517, 31.105976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234993, 35.385113, 31.787596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.963600, 35.677795, 31.813740>,  <29.800764, 35.853405, 31.829426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.963600, 35.677795, 31.813740>,  <30.234993, 35.385113, 31.787596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963600, 35.677795, 31.813740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215769, -0.283541, 0.934371,
		0.702215, 0.619851, 0.350256,
		-0.678482, 0.731704, 0.065362,
		29.760056, 35.897308, 31.833349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375952, 35.779770, 32.423824>,  <30.234993, 35.385113, 31.787596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375952, 35.779770, 32.423824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988176, 35.843895, 32.349545>,  <29.755510, 35.882370, 32.304977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.988176, 35.843895, 32.349545>,  <30.375952, 35.779770, 32.423824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988176, 35.843895, 32.349545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228144, -0.310823, 0.922681,
		0.090202, 0.936850, 0.337899,
		-0.969440, 0.160317, -0.185700,
		29.697344, 35.891991, 32.293835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110172, 36.173233, 33.003819>,  <30.375952, 35.779770, 32.423824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110172, 36.173233, 33.003819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798773, 35.994316, 32.827694>,  <29.611933, 35.886967, 32.722019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.798773, 35.994316, 32.827694>,  <30.110172, 36.173233, 33.003819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798773, 35.994316, 32.827694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376259, -0.228909, 0.897792,
		-0.502365, 0.864599, 0.009907,
		-0.778498, -0.447291, -0.440309,
		29.565224, 35.860130, 32.695602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551329, 36.467869, 33.325459>,  <30.110172, 36.173233, 33.003819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551329, 36.467869, 33.325459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404160, 36.137653, 33.154289>,  <29.315859, 35.939526, 33.051586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.404160, 36.137653, 33.154289>,  <29.551329, 36.467869, 33.325459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404160, 36.137653, 33.154289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408210, -0.270087, 0.872020,
		-0.835463, 0.495518, -0.237622,
		-0.367923, -0.825539, -0.427923,
		29.293783, 35.889992, 33.025913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770155, 36.459961, 33.352119>,  <29.551329, 36.467869, 33.325459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770155, 36.459961, 33.352119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870579, 36.074265, 33.318153>,  <28.930834, 35.842846, 33.297775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870579, 36.074265, 33.318153>,  <28.770155, 36.459961, 33.352119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870579, 36.074265, 33.318153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412670, -0.185972, 0.891694,
		-0.875598, -0.188826, -0.444603,
		0.251059, -0.964240, -0.084914,
		28.945896, 35.784992, 33.292679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223053, 36.195442, 33.497673>,  <28.770155, 36.459961, 33.352119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223053, 36.195442, 33.497673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473635, 35.888180, 33.550579>,  <28.623983, 35.703823, 33.582321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473635, 35.888180, 33.550579>,  <28.223053, 36.195442, 33.497673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473635, 35.888180, 33.550579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500004, -0.265852, 0.824208,
		-0.597958, -0.582459, -0.550624,
		0.626452, -0.768157, 0.132264,
		28.661570, 35.657734, 33.590260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731712, 35.740349, 33.790955>,  <28.223053, 36.195442, 33.497673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731712, 35.740349, 33.790955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093637, 35.576870, 33.838757>,  <28.310793, 35.478783, 33.867439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.093637, 35.576870, 33.838757>,  <27.731712, 35.740349, 33.790955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093637, 35.576870, 33.838757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367524, -0.607841, 0.703886,
		-0.215036, -0.680806, -0.700188,
		0.904813, -0.408696, 0.119505,
		28.365082, 35.454262, 33.874607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596838, 35.041496, 33.918259>,  <27.731712, 35.740349, 33.790955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596838, 35.041496, 33.918259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955215, 35.132637, 34.070770>,  <28.170242, 35.187321, 34.162277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955215, 35.132637, 34.070770>,  <27.596838, 35.041496, 33.918259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955215, 35.132637, 34.070770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272694, -0.395414, 0.877089,
		0.350605, -0.889794, -0.292136,
		0.895943, 0.227849, 0.381276,
		28.223999, 35.200993, 34.185154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869440, 34.475277, 34.237625>,  <27.596838, 35.041496, 33.918259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869440, 34.475277, 34.237625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063858, 34.772858, 34.421055>,  <28.180510, 34.951408, 34.531113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063858, 34.772858, 34.421055>,  <27.869440, 34.475277, 34.237625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063858, 34.772858, 34.421055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469475, -0.220315, 0.855017,
		0.737125, -0.630867, 0.242185,
		0.486045, 0.743954, 0.458576,
		28.209671, 34.996044, 34.558628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837063, 34.310566, 34.966320>,  <27.869440, 34.475277, 34.237625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837063, 34.310566, 34.966320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994278, 34.678173, 34.978523>,  <28.088606, 34.898739, 34.985847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.994278, 34.678173, 34.978523>,  <27.837063, 34.310566, 34.966320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994278, 34.678173, 34.978523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200073, 0.053084, 0.978342,
		0.897493, -0.390628, 0.204734,
		0.393036, 0.919017, 0.030512,
		28.112188, 34.953876, 34.987679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079426, 34.233608, 35.604004>,  <27.837063, 34.310566, 34.966320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079426, 34.233608, 35.604004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.104296, 34.624668, 35.523659>,  <28.119217, 34.859303, 35.475452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.104296, 34.624668, 35.523659>,  <28.079426, 34.233608, 35.604004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104296, 34.624668, 35.523659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221196, 0.209741, 0.952408,
		0.973246, -0.014785, 0.229292,
		0.062174, 0.977645, -0.200859,
		28.122948, 34.917961, 35.463402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638182, 34.522610, 35.976852>,  <28.079426, 34.233608, 35.604004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638182, 34.522610, 35.976852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.358734, 34.802128, 35.915379>,  <28.191065, 34.969837, 35.878494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.358734, 34.802128, 35.915379>,  <28.638182, 34.522610, 35.976852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358734, 34.802128, 35.915379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016567, 0.230532, 0.972924,
		0.715301, 0.677158, -0.172632,
		-0.698620, 0.698793, -0.153681,
		28.149149, 35.011765, 35.869274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833725, 35.133671, 36.179890>,  <28.638182, 34.522610, 35.976852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833725, 35.133671, 36.179890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435574, 35.115742, 36.213856>,  <28.196682, 35.104984, 36.234234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435574, 35.115742, 36.213856>,  <28.833725, 35.133671, 36.179890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435574, 35.115742, 36.213856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062513, 0.368751, 0.927424,
		-0.072884, 0.928447, -0.364245,
		-0.995379, -0.044824, 0.084916,
		28.136959, 35.102295, 36.239330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387579, 35.564709, 35.922646>,  <28.833725, 35.133671, 36.179890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387579, 35.564709, 35.922646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749086, 35.728230, 35.973373>,  <29.965990, 35.826344, 36.003811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.749086, 35.728230, 35.973373>,  <29.387579, 35.564709, 35.922646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749086, 35.728230, 35.973373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218256, 0.695029, -0.685054,
		-0.368194, 0.591451, 0.717369,
		0.903768, 0.408803, 0.126818,
		30.020216, 35.850872, 36.011417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389961, 36.232365, 35.717590>,  <29.387579, 35.564709, 35.922646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389961, 36.232365, 35.717590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789520, 36.230629, 35.736290>,  <30.029255, 36.229588, 35.747509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789520, 36.230629, 35.736290>,  <29.389961, 36.232365, 35.717590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789520, 36.230629, 35.736290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036841, 0.689657, -0.723198,
		-0.029107, 0.724123, 0.689056,
		0.998897, -0.004335, 0.046751,
		30.089190, 36.229328, 35.750317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663990, 36.967129, 35.757931>,  <29.389961, 36.232365, 35.717590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663990, 36.967129, 35.757931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.979992, 36.751099, 35.641853>,  <30.169594, 36.621483, 35.572208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.979992, 36.751099, 35.641853>,  <29.663990, 36.967129, 35.757931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979992, 36.751099, 35.641853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128450, 0.608615, -0.782999,
		0.599491, 0.581300, 0.550182,
		0.790007, -0.540073, -0.290192,
		30.216993, 36.589077, 35.554794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204271, 37.417728, 35.702484>,  <29.663990, 36.967129, 35.757931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204271, 37.417728, 35.702484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296652, 37.109085, 35.465408>,  <30.352081, 36.923901, 35.323162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.296652, 37.109085, 35.465408>,  <30.204271, 37.417728, 35.702484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296652, 37.109085, 35.465408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253113, 0.635832, -0.729144,
		0.939465, 0.018380, 0.342152,
		0.230953, -0.771608, -0.592690,
		30.365938, 36.877602, 35.287601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860046, 37.550598, 35.391598>,  <30.204271, 37.417728, 35.702484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860046, 37.550598, 35.391598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.692694, 37.275108, 35.154747>,  <30.592281, 37.109814, 35.012638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.692694, 37.275108, 35.154747>,  <30.860046, 37.550598, 35.391598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692694, 37.275108, 35.154747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146828, 0.592062, -0.792404,
		0.896325, -0.418467, -0.146583,
		-0.418381, -0.688729, -0.592123,
		30.567179, 37.068489, 34.977112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319386, 37.391983, 34.827602>,  <30.860046, 37.550598, 35.391598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319386, 37.391983, 34.827602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950247, 37.305115, 34.700359>,  <30.728764, 37.252995, 34.624016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950247, 37.305115, 34.700359>,  <31.319386, 37.391983, 34.827602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950247, 37.305115, 34.700359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167871, 0.516536, -0.839649,
		0.346658, -0.828268, -0.440227,
		-0.922847, -0.217169, -0.318104,
		30.673393, 37.239964, 34.604927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462906, 37.155472, 34.177387>,  <31.319386, 37.391983, 34.827602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462906, 37.155472, 34.177387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.073685, 37.247681, 34.179527>,  <30.840153, 37.303005, 34.180813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.073685, 37.247681, 34.179527>,  <31.462906, 37.155472, 34.177387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073685, 37.247681, 34.179527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060049, 0.275739, -0.959355,
		-0.222628, -0.933182, -0.282152,
		-0.973052, 0.230522, 0.005350,
		30.781769, 37.316837, 34.181133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234976, 36.821552, 33.515690>,  <31.462906, 37.155472, 34.177387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234976, 36.821552, 33.515690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.989952, 37.116524, 33.629505>,  <30.842937, 37.293507, 33.697796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.989952, 37.116524, 33.629505>,  <31.234976, 36.821552, 33.515690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989952, 37.116524, 33.629505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155513, 0.465387, -0.871338,
		-0.774975, -0.489498, -0.399758,
		-0.612560, 0.737433, 0.284540,
		30.806185, 37.337753, 33.714867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964731, 37.076523, 32.913029>,  <31.234976, 36.821552, 33.515690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964731, 37.076523, 32.913029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893541, 37.374939, 33.169697>,  <30.850828, 37.553989, 33.323696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893541, 37.374939, 33.169697>,  <30.964731, 37.076523, 32.913029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893541, 37.374939, 33.169697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043223, 0.657379, -0.752319,
		-0.983086, -0.106159, -0.149243,
		-0.177974, 0.746045, 0.641672,
		30.840149, 37.598751, 33.362198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530474, 37.472725, 32.540375>,  <30.964731, 37.076523, 32.913029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530474, 37.472725, 32.540375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.690359, 37.717209, 32.813622>,  <30.786291, 37.863899, 32.977570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.690359, 37.717209, 32.813622>,  <30.530474, 37.472725, 32.540375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690359, 37.717209, 32.813622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212660, 0.663072, -0.717713,
		-0.891630, 0.432152, 0.135059,
		0.399715, 0.611212, 0.683116,
		30.810274, 37.900574, 33.018555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208395, 38.088181, 32.428455>,  <30.530474, 37.472725, 32.540375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208395, 38.088181, 32.428455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537447, 38.178787, 32.637058>,  <30.734879, 38.233150, 32.762218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.537447, 38.178787, 32.637058>,  <30.208395, 38.088181, 32.428455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537447, 38.178787, 32.637058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272301, 0.648225, -0.711096,
		-0.499130, 0.726975, 0.471568,
		0.822631, 0.226521, 0.521504,
		30.784237, 38.246742, 32.793510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228062, 38.892509, 32.534798>,  <30.208395, 38.088181, 32.428455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228062, 38.892509, 32.534798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.605913, 38.777821, 32.598629>,  <30.832624, 38.709007, 32.636929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.605913, 38.777821, 32.598629>,  <30.228062, 38.892509, 32.534798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605913, 38.777821, 32.598629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321173, 0.708202, -0.628727,
		0.067258, 0.645166, 0.761076,
		0.944629, -0.286724, 0.159578,
		30.889301, 38.691803, 32.646503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605944, 39.454765, 32.652622>,  <30.228062, 38.892509, 32.534798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605944, 39.454765, 32.652622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891249, 39.201794, 32.531761>,  <31.062431, 39.050011, 32.459244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891249, 39.201794, 32.531761>,  <30.605944, 39.454765, 32.652622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891249, 39.201794, 32.531761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221444, 0.612347, -0.758942,
		0.664996, 0.474415, 0.576811,
		0.713262, -0.632425, -0.302152,
		31.105227, 39.012066, 32.441116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241920, 39.867180, 32.686317>,  <30.605944, 39.454765, 32.652622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241920, 39.867180, 32.686317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.301855, 39.567390, 32.428375>,  <31.337816, 39.387516, 32.273609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.301855, 39.567390, 32.428375>,  <31.241920, 39.867180, 32.686317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301855, 39.567390, 32.428375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411913, 0.640243, -0.648395,
		0.898820, -0.168474, 0.404647,
		0.149835, -0.749470, -0.644860,
		31.346806, 39.342548, 32.234917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811956, 40.055916, 32.396400>,  <31.241920, 39.867180, 32.686317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811956, 40.055916, 32.396400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.641312, 39.784580, 32.157116>,  <31.538925, 39.621780, 32.013546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.641312, 39.784580, 32.157116>,  <31.811956, 40.055916, 32.396400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641312, 39.784580, 32.157116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437424, 0.424172, -0.792930,
		0.791621, -0.599946, 0.115765,
		-0.426611, -0.678338, -0.598215,
		31.513329, 39.581078, 31.977652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352539, 39.921932, 31.992207>,  <31.811956, 40.055916, 32.396400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352539, 39.921932, 31.992207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.022396, 39.801697, 31.801029>,  <31.824310, 39.729557, 31.686323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.022396, 39.801697, 31.801029>,  <32.352539, 39.921932, 31.992207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022396, 39.801697, 31.801029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316554, 0.454586, -0.832553,
		0.467532, -0.838446, -0.280039,
		-0.825353, -0.300598, -0.477947,
		31.774788, 39.711521, 31.657646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545902, 39.628078, 31.348114>,  <32.352539, 39.921932, 31.992207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545902, 39.628078, 31.348114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.164932, 39.727837, 31.278036>,  <31.936352, 39.787693, 31.235989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.164932, 39.727837, 31.278036>,  <32.545902, 39.628078, 31.348114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164932, 39.727837, 31.278036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275223, 0.456803, -0.845922,
		-0.130943, -0.853891, -0.503710,
		-0.952421, 0.249400, -0.175195,
		31.879206, 39.802658, 31.225477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351082, 39.430740, 30.656578>,  <32.545902, 39.628078, 31.348114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351082, 39.430740, 30.656578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106712, 39.731392, 30.756035>,  <31.960091, 39.911781, 30.815710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106712, 39.731392, 30.756035>,  <32.351082, 39.430740, 30.656578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106712, 39.731392, 30.756035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162420, 0.426381, -0.889842,
		-0.774848, -0.503242, -0.382567,
		-0.610925, 0.751629, 0.248644,
		31.923435, 39.956882, 30.830627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926315, 39.499985, 30.039114>,  <32.351082, 39.430740, 30.656578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926315, 39.499985, 30.039114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.869951, 39.849995, 30.224361>,  <31.836134, 40.060001, 30.335510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.869951, 39.849995, 30.224361>,  <31.926315, 39.499985, 30.039114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869951, 39.849995, 30.224361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018440, 0.470026, -0.882460,
		-0.989851, -0.115806, -0.082366,
		-0.140908, 0.875022, 0.463121,
		31.827679, 40.112503, 30.363298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405706, 39.782131, 29.668367>,  <31.926315, 39.499985, 30.039114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405706, 39.782131, 29.668367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579939, 40.084461, 29.863918>,  <31.684479, 40.265858, 29.981249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579939, 40.084461, 29.863918>,  <31.405706, 39.782131, 29.668367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579939, 40.084461, 29.863918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108180, 0.495215, -0.862009,
		-0.893626, 0.428359, 0.133940,
		0.435579, 0.755824, 0.488877,
		31.710613, 40.311207, 30.010582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081326, 40.366013, 29.342857>,  <31.405706, 39.782131, 29.668367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081326, 40.366013, 29.342857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.418343, 40.501759, 29.510168>,  <31.620552, 40.583206, 29.610556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.418343, 40.501759, 29.510168>,  <31.081326, 40.366013, 29.342857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418343, 40.501759, 29.510168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132564, 0.622022, -0.771696,
		-0.522065, 0.705634, 0.479091,
		0.842541, 0.339365, 0.418278,
		31.671104, 40.603569, 29.635651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046108, 41.046974, 29.038811>,  <31.081326, 40.366013, 29.342857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046108, 41.046974, 29.038811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.413345, 40.987621, 29.185825>,  <31.633688, 40.952007, 29.274035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.413345, 40.987621, 29.185825>,  <31.046108, 41.046974, 29.038811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413345, 40.987621, 29.185825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393101, 0.459560, -0.796415,
		-0.050730, 0.875664, 0.480249,
		0.918095, -0.148384, 0.367537,
		31.688774, 40.943108, 29.296087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396805, 41.626034, 28.985409>,  <31.046108, 41.046974, 29.038811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396805, 41.626034, 28.985409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.699726, 41.368534, 29.029364>,  <31.881479, 41.214035, 29.055737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.699726, 41.368534, 29.029364>,  <31.396805, 41.626034, 28.985409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699726, 41.368534, 29.029364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427194, 0.361048, -0.828945,
		0.493961, 0.674706, 0.548429,
		0.757303, -0.643752, 0.109887,
		31.926918, 41.175407, 29.062330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113518, 41.976997, 28.922583>,  <31.396805, 41.626034, 28.985409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113518, 41.976997, 28.922583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153854, 41.589863, 28.830381>,  <32.178055, 41.357582, 28.775061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.153854, 41.589863, 28.830381>,  <32.113518, 41.976997, 28.922583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153854, 41.589863, 28.830381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515923, 0.248968, -0.819657,
		0.850679, -0.036265, 0.524434,
		0.100843, -0.967833, -0.230502,
		32.184109, 41.299515, 28.761230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.702778, 33.723083, 45.716911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.467976, 33.404266, 45.660133>,  <41.327095, 33.212975, 45.626068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.467976, 33.404266, 45.660133>,  <41.702778, 33.723083, 45.716911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467976, 33.404266, 45.660133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071041, -0.123941, 0.989743,
		-0.806459, 0.591070, 0.016131,
		-0.587006, -0.797042, -0.141944,
		41.291874, 33.165154, 45.617550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385075, 33.555092, 46.330410>,  <41.702778, 33.723083, 45.716911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385075, 33.555092, 46.330410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.229588, 33.210983, 46.198456>,  <41.136295, 33.004517, 46.119282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.229588, 33.210983, 46.198456>,  <41.385075, 33.555092, 46.330410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229588, 33.210983, 46.198456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014432, -0.352316, 0.935770,
		-0.921243, 0.368514, 0.124537,
		-0.388721, -0.860274, -0.329887,
		41.112972, 32.952900, 46.099491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761490, 33.377926, 46.709988>,  <41.385075, 33.555092, 46.330410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761490, 33.377926, 46.709988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944641, 33.054066, 46.563118>,  <41.054531, 32.859749, 46.474998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944641, 33.054066, 46.563118>,  <40.761490, 33.377926, 46.709988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944641, 33.054066, 46.563118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213301, -0.300895, 0.929497,
		-0.863048, -0.503913, 0.034926,
		0.457877, -0.809650, -0.367172,
		41.082005, 32.811172, 46.452965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472160, 32.763744, 47.010509>,  <40.761490, 33.377926, 46.709988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472160, 32.763744, 47.010509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.850571, 32.684902, 46.907604>,  <41.077618, 32.637596, 46.845863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.850571, 32.684902, 46.907604>,  <40.472160, 32.763744, 47.010509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850571, 32.684902, 46.907604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168501, -0.378929, 0.909956,
		-0.276842, -0.904192, -0.325264,
		0.946027, -0.197107, -0.257260,
		41.134377, 32.625771, 46.830425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538139, 32.052509, 47.124252>,  <40.472160, 32.763744, 47.010509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538139, 32.052509, 47.124252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.904320, 32.213337, 47.117413>,  <41.124027, 32.309834, 47.113308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.904320, 32.213337, 47.117413>,  <40.538139, 32.052509, 47.124252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904320, 32.213337, 47.117413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120023, -0.232213, 0.965231,
		0.384120, -0.885673, -0.260837,
		0.915449, 0.402071, -0.017104,
		41.178955, 32.333958, 47.112282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977352, 31.505096, 47.277634>,  <40.538139, 32.052509, 47.124252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977352, 31.505096, 47.277634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.176228, 31.834694, 47.386326>,  <41.295551, 32.032452, 47.451542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.176228, 31.834694, 47.386326>,  <40.977352, 31.505096, 47.277634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176228, 31.834694, 47.386326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127201, -0.379022, 0.916603,
		0.858269, -0.421159, -0.293258,
		0.497187, 0.823995, 0.271731,
		41.325382, 32.081894, 47.467846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555073, 31.331120, 47.622612>,  <40.977352, 31.505096, 47.277634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555073, 31.331120, 47.622612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.515419, 31.715462, 47.726097>,  <41.491627, 31.946068, 47.788189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.515419, 31.715462, 47.726097>,  <41.555073, 31.331120, 47.622612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515419, 31.715462, 47.726097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179837, -0.238410, 0.954369,
		0.978689, 0.141135, -0.149163,
		-0.099133, 0.960855, 0.258710,
		41.485680, 32.003719, 47.803711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982441, 31.453569, 48.210419>,  <41.555073, 31.331120, 47.622612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982441, 31.453569, 48.210419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.785515, 31.801094, 48.231564>,  <41.667358, 32.009609, 48.244251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.785515, 31.801094, 48.231564>,  <41.982441, 31.453569, 48.210419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785515, 31.801094, 48.231564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080603, -0.105975, 0.991096,
		0.866677, 0.483671, 0.122202,
		-0.492315, 0.868810, 0.052861,
		41.637821, 32.061737, 48.247421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298988, 31.856222, 48.644123>,  <41.982441, 31.453569, 48.210419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298988, 31.856222, 48.644123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.939384, 32.031208, 48.652126>,  <41.723621, 32.136200, 48.656929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.939384, 32.031208, 48.652126>,  <42.298988, 31.856222, 48.644123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939384, 32.031208, 48.652126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027571, -0.102143, 0.994387,
		0.437052, 0.893416, 0.103889,
		-0.899013, 0.437464, 0.020010,
		41.669682, 32.162449, 48.658131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272354, 32.506256, 48.967590>,  <42.298988, 31.856222, 48.644123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272354, 32.506256, 48.967590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.896950, 32.370785, 48.994389>,  <41.671707, 32.289501, 49.010468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.896950, 32.370785, 48.994389>,  <42.272354, 32.506256, 48.967590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896950, 32.370785, 48.994389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131357, -0.170839, 0.976504,
		-0.319277, 0.925262, 0.204823,
		-0.938513, -0.338680, 0.066995,
		41.615395, 32.269180, 49.014488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978531, 32.802395, 49.591789>,  <42.272354, 32.506256, 48.967590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978531, 32.802395, 49.591789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.725178, 32.499428, 49.528370>,  <41.573166, 32.317646, 49.490318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.725178, 32.499428, 49.528370>,  <41.978531, 32.802395, 49.591789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725178, 32.499428, 49.528370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079636, -0.267602, 0.960233,
		-0.769727, 0.595572, 0.229813,
		-0.633386, -0.757419, -0.158552,
		41.535160, 32.272202, 49.480804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383194, 32.911018, 50.038437>,  <41.978531, 32.802395, 49.591789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383194, 32.911018, 50.038437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.429565, 32.523876, 49.949165>,  <41.457390, 32.291592, 49.895603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.429565, 32.523876, 49.949165>,  <41.383194, 32.911018, 50.038437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429565, 32.523876, 49.949165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226976, -0.192933, 0.954599,
		-0.966976, -0.161323, 0.197314,
		0.115931, -0.967859, -0.223178,
		41.464344, 32.233517, 49.882214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809010, 33.129257, 49.445126>,  <41.383194, 32.911018, 50.038437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809010, 33.129257, 49.445126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.910046, 33.455509, 49.653336>,  <40.970669, 33.651260, 49.778259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.910046, 33.455509, 49.653336>,  <40.809010, 33.129257, 49.445126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910046, 33.455509, 49.653336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961888, 0.153437, 0.226338,
		0.104741, -0.557853, 0.823304,
		0.252589, 0.815633, 0.520520,
		40.985821, 33.700199, 49.809490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457668, 33.063610, 50.033215>,  <40.809010, 33.129257, 49.445126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457668, 33.063610, 50.033215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.547024, 33.447971, 49.967785>,  <40.600636, 33.678589, 49.928528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.547024, 33.447971, 49.967785>,  <40.457668, 33.063610, 50.033215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547024, 33.447971, 49.967785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973498, 0.228374, 0.012109,
		0.048992, 0.156538, 0.986456,
		0.223385, 0.960906, -0.163578,
		40.614040, 33.736244, 49.918713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555664, 33.582935, 50.435852>,  <40.457668, 33.063610, 50.033215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555664, 33.582935, 50.435852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.356758, 33.851372, 50.655804>,  <40.237415, 34.012436, 50.787773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.356758, 33.851372, 50.655804>,  <40.555664, 33.582935, 50.435852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356758, 33.851372, 50.655804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155450, 0.554617, -0.817457,
		-0.853561, -0.491968, -0.171467,
		-0.497261, 0.671095, 0.549876,
		40.207581, 34.052700, 50.820766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908211, 33.635910, 50.191479>,  <40.555664, 33.582935, 50.435852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908211, 33.635910, 50.191479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057983, 33.964108, 50.364265>,  <40.147846, 34.161026, 50.467937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.057983, 33.964108, 50.364265>,  <39.908211, 33.635910, 50.191479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057983, 33.964108, 50.364265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032773, 0.477279, -0.878141,
		-0.926676, 0.314645, 0.205597,
		0.374429, 0.820490, 0.431971,
		40.170311, 34.210255, 50.493858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472290, 34.143841, 50.078270>,  <39.908211, 33.635910, 50.191479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472290, 34.143841, 50.078270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.827690, 34.320946, 50.126492>,  <40.040932, 34.427208, 50.155426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.827690, 34.320946, 50.126492>,  <39.472290, 34.143841, 50.078270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827690, 34.320946, 50.126492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061495, 0.375239, -0.924886,
		-0.454738, 0.814347, 0.360627,
		0.888499, 0.442758, 0.120557,
		40.094238, 34.453773, 50.162659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382133, 34.787136, 49.803642>,  <39.472290, 34.143841, 50.078270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382133, 34.787136, 49.803642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.780140, 34.759022, 49.831936>,  <40.018944, 34.742153, 49.848911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.780140, 34.759022, 49.831936>,  <39.382133, 34.787136, 49.803642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780140, 34.759022, 49.831936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099400, 0.642732, -0.759615,
		0.007931, 0.762860, 0.646515,
		0.995016, -0.070288, 0.070730,
		40.078644, 34.737934, 49.853153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532425, 35.440811, 49.814896>,  <39.382133, 34.787136, 49.803642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532425, 35.440811, 49.814896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.862408, 35.235397, 49.720470>,  <40.060398, 35.112148, 49.663815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.862408, 35.235397, 49.720470>,  <39.532425, 35.440811, 49.814896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862408, 35.235397, 49.720470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171472, 0.625381, -0.761246,
		0.538555, 0.587518, 0.603971,
		0.824958, -0.513537, -0.236059,
		40.109894, 35.081337, 49.649654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033875, 35.919312, 49.705982>,  <39.532425, 35.440811, 49.814896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033875, 35.919312, 49.705982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.142071, 35.595810, 49.497082>,  <40.206989, 35.401707, 49.371742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.142071, 35.595810, 49.497082>,  <40.033875, 35.919312, 49.705982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142071, 35.595810, 49.497082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027541, 0.548751, -0.835532,
		0.962328, 0.211623, 0.170707,
		0.270493, -0.808757, -0.522250,
		40.223217, 35.353184, 49.340408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562527, 36.224442, 49.293797>,  <40.033875, 35.919312, 49.705982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562527, 36.224442, 49.293797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.415993, 35.883072, 49.145493>,  <40.328072, 35.678249, 49.056511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.415993, 35.883072, 49.145493>,  <40.562527, 36.224442, 49.293797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415993, 35.883072, 49.145493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032315, 0.409886, -0.911564,
		0.929921, -0.321959, -0.177735,
		-0.366337, -0.853426, -0.370758,
		40.306091, 35.627045, 49.034264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906898, 36.161556, 48.688953>,  <40.562527, 36.224442, 49.293797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906898, 36.161556, 48.688953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569862, 35.954895, 48.628136>,  <40.367641, 35.830898, 48.591644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569862, 35.954895, 48.628136>,  <40.906898, 36.161556, 48.688953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569862, 35.954895, 48.628136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038395, 0.339221, -0.939923,
		0.537186, -0.786132, -0.305661,
		-0.842590, -0.516649, -0.152041,
		40.317085, 35.799900, 48.582523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004467, 35.783989, 48.066269>,  <40.906898, 36.161556, 48.688953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004467, 35.783989, 48.066269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.606415, 35.800350, 48.102139>,  <40.367584, 35.810169, 48.123661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.606415, 35.800350, 48.102139>,  <41.004467, 35.783989, 48.066269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606415, 35.800350, 48.102139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073724, 0.294975, -0.952657,
		-0.065424, -0.954629, -0.290523,
		-0.995130, 0.040908, 0.089677,
		40.307877, 35.812622, 48.129040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776596, 35.622471, 47.444592>,  <41.004467, 35.783989, 48.066269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776596, 35.622471, 47.444592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.420609, 35.737755, 47.585957>,  <40.207016, 35.806923, 47.670776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.420609, 35.737755, 47.585957>,  <40.776596, 35.622471, 47.444592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420609, 35.737755, 47.585957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322947, 0.148846, -0.934639,
		-0.321973, -0.945929, -0.039392,
		-0.889966, 0.288207, 0.353410,
		40.153618, 35.824219, 47.691978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286270, 35.281204, 47.091003>,  <40.776596, 35.622471, 47.444592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286270, 35.281204, 47.091003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072186, 35.595692, 47.214554>,  <39.943733, 35.784386, 47.288685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.072186, 35.595692, 47.214554>,  <40.286270, 35.281204, 47.091003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072186, 35.595692, 47.214554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315495, 0.153134, -0.936490,
		-0.783586, -0.598671, 0.166089,
		-0.535215, 0.786220, 0.308872,
		39.911621, 35.831558, 47.307217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642376, 35.144951, 46.698704>,  <40.286270, 35.281204, 47.091003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642376, 35.144951, 46.698704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626484, 35.524261, 46.824684>,  <39.616947, 35.751846, 46.900272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.626484, 35.524261, 46.824684>,  <39.642376, 35.144951, 46.698704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626484, 35.524261, 46.824684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391969, 0.275144, -0.877870,
		-0.919120, -0.158329, 0.360764,
		-0.039730, 0.948276, 0.314950,
		39.614563, 35.808743, 46.919170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001858, 35.439850, 46.391239>,  <39.642376, 35.144951, 46.698704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001858, 35.439850, 46.391239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.239582, 35.751389, 46.471424>,  <39.382217, 35.938313, 46.519535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.239582, 35.751389, 46.471424>,  <39.001858, 35.439850, 46.391239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239582, 35.751389, 46.471424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272776, 0.429698, -0.860786,
		-0.756560, 0.456897, 0.467827,
		0.594315, 0.778849, 0.200462,
		39.417877, 35.985043, 46.531563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583492, 36.054935, 46.371647>,  <39.001858, 35.439850, 46.391239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583492, 36.054935, 46.371647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.965664, 36.157829, 46.313698>,  <39.194965, 36.219566, 46.278931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.965664, 36.157829, 46.313698>,  <38.583492, 36.054935, 46.371647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965664, 36.157829, 46.313698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227639, 0.329450, -0.916321,
		-0.187978, 0.908458, 0.373321,
		0.955429, 0.257230, -0.144871,
		39.252293, 36.234997, 46.270237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143009, 36.644093, 46.659256>,  <38.583492, 36.054935, 46.371647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143009, 36.644093, 46.659256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796078, 36.765369, 46.817154>,  <37.587921, 36.838135, 46.911892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.796078, 36.765369, 46.817154>,  <38.143009, 36.644093, 46.659256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796078, 36.765369, 46.817154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325521, -0.254437, 0.910658,
		0.376542, 0.918333, 0.121984,
		-0.867325, 0.303192, 0.394743,
		37.535881, 36.856327, 46.935577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381119, 37.015945, 47.298630>,  <38.143009, 36.644093, 46.659256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381119, 37.015945, 47.298630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000912, 36.894882, 47.326668>,  <37.772785, 36.822247, 47.343491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000912, 36.894882, 47.326668>,  <38.381119, 37.015945, 47.298630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000912, 36.894882, 47.326668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132289, -0.190164, 0.972799,
		-0.281092, 0.933937, 0.220792,
		-0.950519, -0.302654, 0.070096,
		37.715755, 36.804085, 47.347698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164528, 37.241459, 47.925266>,  <38.381119, 37.015945, 47.298630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164528, 37.241459, 47.925266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.873619, 36.977306, 47.850468>,  <37.699074, 36.818813, 47.805588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.873619, 36.977306, 47.850468>,  <38.164528, 37.241459, 47.925266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873619, 36.977306, 47.850468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024188, -0.247619, 0.968555,
		-0.685919, 0.708930, 0.164114,
		-0.727276, -0.660381, -0.186994,
		37.655437, 36.779194, 47.794369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538044, 37.423874, 48.367847>,  <38.164528, 37.241459, 47.925266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538044, 37.423874, 48.367847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545506, 37.034916, 48.274818>,  <37.549984, 36.801540, 48.219002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.545506, 37.034916, 48.274818>,  <37.538044, 37.423874, 48.367847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545506, 37.034916, 48.274818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103449, -0.233246, 0.966900,
		-0.994460, 0.006020, -0.104946,
		0.018657, -0.972399, -0.232577,
		37.551102, 36.743195, 48.205044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093552, 37.131077, 48.875774>,  <37.538044, 37.423874, 48.367847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093552, 37.131077, 48.875774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276024, 36.801842, 48.740467>,  <37.385506, 36.604301, 48.659283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276024, 36.801842, 48.740467>,  <37.093552, 37.131077, 48.875774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276024, 36.801842, 48.740467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069250, -0.346135, 0.935626,
		-0.887191, -0.450235, -0.100899,
		0.456176, -0.823091, -0.338266,
		37.412876, 36.554913, 48.638988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810257, 36.702179, 49.203083>,  <37.093552, 37.131077, 48.875774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810257, 36.702179, 49.203083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146198, 36.513630, 49.095417>,  <37.347763, 36.400501, 49.030819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146198, 36.513630, 49.095417>,  <36.810257, 36.702179, 49.203083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146198, 36.513630, 49.095417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056130, -0.417799, 0.906804,
		-0.539904, -0.776690, -0.324431,
		0.839853, -0.471377, -0.269167,
		37.398155, 36.372215, 49.014668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771126, 35.956688, 49.416225>,  <36.810257, 36.702179, 49.203083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771126, 35.956688, 49.416225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.154739, 36.068520, 49.397953>,  <37.384907, 36.135616, 49.386990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.154739, 36.068520, 49.397953>,  <36.771126, 35.956688, 49.416225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154739, 36.068520, 49.397953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135881, -0.312505, 0.940147,
		0.248566, -0.907843, -0.337692,
		0.959036, 0.279575, -0.045681,
		37.442451, 36.152393, 49.384251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856827, 35.127098, 49.113411>,  <36.771126, 35.956688, 49.416225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856827, 35.127098, 49.113411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508991, 34.933426, 49.074661>,  <36.300289, 34.817223, 49.051411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508991, 34.933426, 49.074661>,  <36.856827, 35.127098, 49.113411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508991, 34.933426, 49.074661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109406, 0.380237, -0.918395,
		0.481510, -0.788025, -0.383621,
		-0.869586, -0.484187, -0.096874,
		36.248116, 34.788170, 49.045601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877792, 34.721668, 48.411808>,  <36.856827, 35.127098, 49.113411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877792, 34.721668, 48.411808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489330, 34.717266, 48.507084>,  <36.256252, 34.714622, 48.564251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489330, 34.717266, 48.507084>,  <36.877792, 34.721668, 48.411808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489330, 34.717266, 48.507084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231112, 0.289251, -0.928936,
		-0.058669, -0.957190, -0.283452,
		-0.971157, -0.011009, 0.238188,
		36.197983, 34.713963, 48.578541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596428, 34.191036, 48.021347>,  <36.877792, 34.721668, 48.411808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596428, 34.191036, 48.021347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284695, 34.421055, 48.120911>,  <36.097652, 34.559067, 48.180649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284695, 34.421055, 48.120911>,  <36.596428, 34.191036, 48.021347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284695, 34.421055, 48.120911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314113, -0.014817, -0.949270,
		-0.542187, -0.817986, 0.192177,
		-0.779337, 0.575047, 0.248906,
		36.050892, 34.593571, 48.195583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973267, 33.852058, 47.815720>,  <36.596428, 34.191036, 48.021347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973267, 33.852058, 47.815720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860439, 34.233391, 47.858795>,  <35.792744, 34.462189, 47.884640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860439, 34.233391, 47.858795>,  <35.973267, 33.852058, 47.815720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860439, 34.233391, 47.858795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482712, -0.044022, -0.874672,
		-0.829111, -0.298701, 0.472601,
		-0.282070, 0.953331, 0.107687,
		35.775818, 34.519390, 47.891102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379559, 33.849823, 47.645771>,  <35.973267, 33.852058, 47.815720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379559, 33.849823, 47.645771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455662, 34.241776, 47.621670>,  <35.501324, 34.476948, 47.607208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.455662, 34.241776, 47.621670>,  <35.379559, 33.849823, 47.645771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455662, 34.241776, 47.621670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433644, 0.028817, -0.900623,
		-0.880769, 0.197479, 0.430404,
		0.190257, 0.979883, -0.060254,
		35.512737, 34.535740, 47.603592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759045, 34.069374, 47.382851>,  <35.379559, 33.849823, 47.645771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759045, 34.069374, 47.382851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.026958, 34.360371, 47.323322>,  <35.187706, 34.534969, 47.287605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.026958, 34.360371, 47.323322>,  <34.759045, 34.069374, 47.382851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026958, 34.360371, 47.323322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265342, 0.047301, -0.962993,
		-0.693530, 0.684485, 0.224715,
		0.669783, 0.727491, -0.148818,
		35.227894, 34.578617, 47.278675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438046, 34.514671, 46.981239>,  <34.759045, 34.069374, 47.382851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438046, 34.514671, 46.981239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823204, 34.591721, 46.905636>,  <35.054298, 34.637951, 46.860271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823204, 34.591721, 46.905636>,  <34.438046, 34.514671, 46.981239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823204, 34.591721, 46.905636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202901, 0.054949, -0.977656,
		-0.177937, 0.979732, 0.091995,
		0.962896, 0.192627, -0.189012,
		35.112072, 34.649509, 46.848934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.319160, 30.219625, 49.790268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.661934, 30.359850, 49.639126>,  <39.867599, 30.443985, 49.548443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.661934, 30.359850, 49.639126>,  <39.319160, 30.219625, 49.790268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661934, 30.359850, 49.639126> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363731, -0.108110, -0.925209,
		-0.365193, 0.930279, 0.034867,
		0.856933, 0.350562, -0.377852,
		39.919014, 30.465019, 49.525768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156181, 30.849072, 49.339592>,  <39.319160, 30.219625, 49.790268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156181, 30.849072, 49.339592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.489235, 30.658739, 49.226242>,  <39.689068, 30.544538, 49.158234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.489235, 30.658739, 49.226242>,  <39.156181, 30.849072, 49.339592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489235, 30.658739, 49.226242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263516, 0.109642, -0.958404,
		0.487109, 0.872675, -0.034098,
		0.832637, -0.475832, -0.283371,
		39.739025, 30.515989, 49.141232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533169, 31.242140, 48.831120>,  <39.156181, 30.849072, 49.339592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533169, 31.242140, 48.831120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.650284, 30.867016, 48.756512>,  <39.720551, 30.641941, 48.711746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.650284, 30.867016, 48.756512>,  <39.533169, 31.242140, 48.831120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650284, 30.867016, 48.756512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186835, 0.135197, -0.973044,
		0.937747, 0.319741, -0.135632,
		0.292785, -0.937810, -0.186520,
		39.738121, 30.585672, 48.700558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984394, 31.297905, 48.290306>,  <39.533169, 31.242140, 48.831120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984394, 31.297905, 48.290306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.895184, 30.908428, 48.271603>,  <39.841656, 30.674742, 48.260380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.895184, 30.908428, 48.271603>,  <39.984394, 31.297905, 48.290306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895184, 30.908428, 48.271603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273637, 0.108567, -0.955686,
		0.935619, -0.200349, -0.290651,
		-0.223026, -0.973691, -0.046755,
		39.828278, 30.616322, 48.257576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207706, 31.079868, 47.573589>,  <39.984394, 31.297905, 48.290306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207706, 31.079868, 47.573589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.977818, 30.763777, 47.658661>,  <39.839886, 30.574121, 47.709705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.977818, 30.763777, 47.658661>,  <40.207706, 31.079868, 47.573589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977818, 30.763777, 47.658661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249644, -0.078203, -0.965174,
		0.779341, -0.607802, -0.152331,
		-0.574722, -0.790229, 0.212681,
		39.805401, 30.526709, 47.722466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444065, 30.576021, 47.132969>,  <40.207706, 31.079868, 47.573589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444065, 30.576021, 47.132969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.074509, 30.477367, 47.249996>,  <39.852776, 30.418175, 47.320213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.074509, 30.477367, 47.249996>,  <40.444065, 30.576021, 47.132969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074509, 30.477367, 47.249996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276837, -0.097033, -0.956005,
		0.264174, -0.964238, 0.021370,
		-0.923890, -0.246635, 0.292571,
		39.797340, 30.403378, 47.337769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252281, 29.971304, 46.782543>,  <40.444065, 30.576021, 47.132969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252281, 29.971304, 46.782543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.926758, 30.182032, 46.880672>,  <39.731445, 30.308468, 46.939548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.926758, 30.182032, 46.880672>,  <40.252281, 29.971304, 46.782543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926758, 30.182032, 46.880672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337298, -0.084427, -0.937604,
		-0.473237, -0.845774, 0.246403,
		-0.813804, 0.526820, 0.245324,
		39.682617, 30.340078, 46.954269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696297, 29.575562, 46.585499>,  <40.252281, 29.971304, 46.782543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696297, 29.575562, 46.585499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.519344, 29.932089, 46.625202>,  <39.413174, 30.146006, 46.649025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.519344, 29.932089, 46.625202>,  <39.696297, 29.575562, 46.585499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519344, 29.932089, 46.625202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362597, -0.076530, -0.928799,
		-0.820259, -0.446871, 0.357044,
		-0.442378, 0.891319, 0.099260,
		39.386631, 30.199484, 46.654980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038605, 29.501451, 46.474331>,  <39.696297, 29.575562, 46.585499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038605, 29.501451, 46.474331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.095097, 29.891380, 46.405308>,  <39.128990, 30.125338, 46.363895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.095097, 29.891380, 46.405308>,  <39.038605, 29.501451, 46.474331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095097, 29.891380, 46.405308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484360, -0.083975, -0.870829,
		-0.863395, 0.206563, 0.460306,
		0.141227, 0.974823, -0.172555,
		39.137466, 30.183826, 46.353542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477406, 29.635391, 46.156464>,  <39.038605, 29.501451, 46.474331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477406, 29.635391, 46.156464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.690926, 29.965912, 46.084595>,  <38.819038, 30.164225, 46.041473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.690926, 29.965912, 46.084595>,  <38.477406, 29.635391, 46.156464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690926, 29.965912, 46.084595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463298, 0.108037, -0.879592,
		-0.707395, 0.552772, 0.440494,
		0.533804, 0.826299, -0.179673,
		38.851067, 30.213802, 46.030693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037182, 30.223930, 46.103024>,  <38.477406, 29.635391, 46.156464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037182, 30.223930, 46.103024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.372662, 30.269901, 45.890091>,  <38.573948, 30.297483, 45.762329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.372662, 30.269901, 45.890091>,  <38.037182, 30.223930, 46.103024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372662, 30.269901, 45.890091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544200, 0.139431, -0.827288,
		-0.020854, 0.983540, 0.179483,
		0.838696, 0.114927, -0.532335,
		38.624271, 30.304379, 45.730389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899395, 30.794640, 45.653526>,  <38.037182, 30.223930, 46.103024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899395, 30.794640, 45.653526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.211922, 30.617525, 45.477581>,  <38.399437, 30.511255, 45.372013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.211922, 30.617525, 45.477581>,  <37.899395, 30.794640, 45.653526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211922, 30.617525, 45.477581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344058, 0.282444, -0.895460,
		0.520736, 0.850979, 0.068334,
		0.781318, -0.442787, -0.439865,
		38.446316, 30.484690, 45.345623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469177, 31.476976, 45.616177>,  <37.899395, 30.794640, 45.653526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469177, 31.476976, 45.616177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.120884, 31.280287, 45.618595>,  <36.911907, 31.162273, 45.620045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.120884, 31.280287, 45.618595>,  <37.469177, 31.476976, 45.616177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120884, 31.280287, 45.618595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027800, -0.036942, 0.998931,
		-0.490975, 0.869967, 0.045836,
		-0.870730, -0.491724, 0.006047,
		36.859665, 31.132771, 45.620411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084686, 31.913576, 45.994999>,  <37.469177, 31.476976, 45.616177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084686, 31.913576, 45.994999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.944622, 31.539963, 46.023186>,  <36.860584, 31.315794, 46.040096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.944622, 31.539963, 46.023186>,  <37.084686, 31.913576, 45.994999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944622, 31.539963, 46.023186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171443, 0.137865, 0.975500,
		-0.920865, 0.329505, -0.208409,
		-0.350164, -0.934034, 0.070464,
		36.839573, 31.259752, 46.044327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396297, 31.955246, 46.297173>,  <37.084686, 31.913576, 45.994999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396297, 31.955246, 46.297173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.558327, 31.596317, 46.367283>,  <36.655544, 31.380960, 46.409351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.558327, 31.596317, 46.367283>,  <36.396297, 31.955246, 46.297173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558327, 31.596317, 46.367283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117330, 0.139106, 0.983302,
		-0.906723, -0.418878, -0.048935,
		0.405077, -0.897324, 0.175277,
		36.679852, 31.327120, 46.419865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097591, 31.760227, 46.922226>,  <36.396297, 31.955246, 46.297173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097591, 31.760227, 46.922226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.351048, 31.453190, 46.883640>,  <36.503120, 31.268969, 46.860489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.351048, 31.453190, 46.883640>,  <36.097591, 31.760227, 46.922226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351048, 31.453190, 46.883640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117744, -0.027548, 0.992662,
		-0.764617, -0.640346, 0.072924,
		0.633638, -0.767592, -0.096460,
		36.541138, 31.222912, 46.854702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878937, 31.213158, 47.386547>,  <36.097591, 31.760227, 46.922226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878937, 31.213158, 47.386547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.262115, 31.142347, 47.296215>,  <36.492023, 31.099861, 47.242016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.262115, 31.142347, 47.296215>,  <35.878937, 31.213158, 47.386547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262115, 31.142347, 47.296215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175799, -0.259948, 0.949485,
		-0.226783, -0.949258, -0.217897,
		0.957948, -0.177021, -0.225830,
		36.549500, 31.089239, 47.228466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038551, 30.599123, 47.723927>,  <35.878937, 31.213158, 47.386547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038551, 30.599123, 47.723927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.399689, 30.761908, 47.668423>,  <36.616371, 30.859577, 47.635120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.399689, 30.761908, 47.668423>,  <36.038551, 30.599123, 47.723927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399689, 30.761908, 47.668423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220805, -0.161920, 0.961783,
		0.368940, -0.898980, -0.236048,
		0.902845, 0.406961, -0.138761,
		36.670544, 30.883995, 47.626793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507450, 30.180265, 48.006588>,  <36.038551, 30.599123, 47.723927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507450, 30.180265, 48.006588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.700176, 30.530680, 47.998478>,  <36.815811, 30.740929, 47.993614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.700176, 30.530680, 47.998478>,  <36.507450, 30.180265, 48.006588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700176, 30.530680, 47.998478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306371, -0.146737, 0.940534,
		0.820968, -0.459377, -0.339093,
		0.481817, 0.876037, -0.020273,
		36.844723, 30.793491, 47.992397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128963, 30.115473, 48.302181>,  <36.507450, 30.180265, 48.006588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128963, 30.115473, 48.302181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.100231, 30.514238, 48.314877>,  <37.082993, 30.753498, 48.322495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.100231, 30.514238, 48.314877>,  <37.128963, 30.115473, 48.302181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100231, 30.514238, 48.314877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271952, -0.011042, 0.962248,
		0.959626, 0.077751, -0.270319,
		-0.071831, 0.996912, 0.031740,
		37.078682, 30.813313, 48.324398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770241, 30.369442, 48.641510>,  <37.128963, 30.115473, 48.302181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770241, 30.369442, 48.641510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.503067, 30.665535, 48.672287>,  <37.342762, 30.843191, 48.690754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.503067, 30.665535, 48.672287>,  <37.770241, 30.369442, 48.641510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503067, 30.665535, 48.672287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278050, 0.152309, 0.948415,
		0.690328, 0.654872, -0.307553,
		-0.667934, 0.740233, 0.076944,
		37.302689, 30.887606, 48.695370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105556, 31.034235, 48.948956>,  <37.770241, 30.369442, 48.641510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105556, 31.034235, 48.948956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.711033, 31.072538, 49.002670>,  <37.474319, 31.095520, 49.034901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.711033, 31.072538, 49.002670>,  <38.105556, 31.034235, 48.948956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711033, 31.072538, 49.002670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154603, 0.253192, 0.954983,
		0.057447, 0.962665, -0.264529,
		-0.986305, 0.095758, 0.134286,
		37.415142, 31.101265, 49.042957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948360, 31.763968, 49.177235>,  <38.105556, 31.034235, 48.948956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948360, 31.763968, 49.177235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.654575, 31.510279, 49.273834>,  <37.478302, 31.358067, 49.331795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.654575, 31.510279, 49.273834>,  <37.948360, 31.763968, 49.177235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654575, 31.510279, 49.273834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020252, 0.335215, 0.941924,
		-0.678342, 0.696703, -0.233360,
		-0.734467, -0.634221, 0.241500,
		37.434235, 31.320013, 49.346283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608097, 32.180561, 49.575489>,  <37.948360, 31.763968, 49.177235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608097, 32.180561, 49.575489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.437172, 31.833935, 49.678619>,  <37.334618, 31.625959, 49.740498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.437172, 31.833935, 49.678619>,  <37.608097, 32.180561, 49.575489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437172, 31.833935, 49.678619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113071, 0.334158, 0.935710,
		-0.897007, 0.370685, -0.240772,
		-0.427310, -0.866563, 0.257828,
		37.308979, 31.573965, 49.755966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030674, 32.377254, 49.978012>,  <37.608097, 32.180561, 49.575489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030674, 32.377254, 49.978012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.093750, 31.992922, 50.069176>,  <37.131596, 31.762323, 50.123875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.093750, 31.992922, 50.069176>,  <37.030674, 32.377254, 49.978012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093750, 31.992922, 50.069176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310310, 0.170890, 0.935149,
		-0.937466, -0.218182, -0.271208,
		0.157686, -0.960829, 0.227908,
		37.141056, 31.704674, 50.137547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413437, 32.168003, 50.346996>,  <37.030674, 32.377254, 49.978012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413437, 32.168003, 50.346996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.742012, 31.960558, 50.441895>,  <36.939156, 31.836090, 50.498833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.742012, 31.960558, 50.441895>,  <36.413437, 32.168003, 50.346996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742012, 31.960558, 50.441895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320487, -0.075670, 0.944226,
		-0.471736, -0.851654, -0.228367,
		0.821434, -0.518613, 0.237248,
		36.988441, 31.804974, 50.513069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959396, 32.070957, 50.990593>,  <36.413437, 32.168003, 50.346996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959396, 32.070957, 50.990593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.993401, 32.448059, 51.119583>,  <36.013805, 32.674320, 51.196980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.993401, 32.448059, 51.119583>,  <35.959396, 32.070957, 50.990593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993401, 32.448059, 51.119583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089397, 0.329562, -0.939892,
		-0.992361, 0.051074, 0.112296,
		0.085012, 0.942752, 0.322478,
		36.018906, 32.730885, 51.216328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430611, 32.471703, 50.685219>,  <35.959396, 32.070957, 50.990593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430611, 32.471703, 50.685219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.697128, 32.746788, 50.800529>,  <35.857037, 32.911839, 50.869717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.697128, 32.746788, 50.800529>,  <35.430611, 32.471703, 50.685219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697128, 32.746788, 50.800529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194995, 0.533828, -0.822803,
		-0.719744, 0.492014, 0.489786,
		0.666292, 0.687714, 0.288279,
		35.897015, 32.953102, 50.887012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191303, 33.179798, 50.437645>,  <35.430611, 32.471703, 50.685219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191303, 33.179798, 50.437645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577103, 33.252354, 50.514416>,  <35.808582, 33.295887, 50.560478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577103, 33.252354, 50.514416>,  <35.191303, 33.179798, 50.437645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577103, 33.252354, 50.514416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014597, 0.762294, -0.647066,
		-0.263676, 0.621294, 0.737881,
		0.964501, 0.181387, 0.191930,
		35.866451, 33.306770, 50.571995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213676, 33.853851, 50.555725>,  <35.191303, 33.179798, 50.437645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213676, 33.853851, 50.555725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.560253, 33.725010, 50.403133>,  <35.768200, 33.647705, 50.311581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.560253, 33.725010, 50.403133>,  <35.213676, 33.853851, 50.555725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560253, 33.725010, 50.403133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010299, 0.752371, -0.658659,
		0.499166, 0.574621, 0.648571,
		0.866445, -0.322100, -0.381476,
		35.820187, 33.628380, 50.288692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459244, 34.446293, 50.488300>,  <35.213676, 33.853851, 50.555725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459244, 34.446293, 50.488300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.720139, 34.226429, 50.279510>,  <35.876675, 34.094509, 50.154236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.720139, 34.226429, 50.279510>,  <35.459244, 34.446293, 50.488300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720139, 34.226429, 50.279510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170028, 0.564973, -0.807401,
		0.738698, 0.615368, 0.275039,
		0.652239, -0.549661, -0.521974,
		35.915810, 34.061531, 50.122917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865925, 34.962807, 50.159992>,  <35.459244, 34.446293, 50.488300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865925, 34.962807, 50.159992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.953297, 34.629051, 49.957577>,  <36.005718, 34.428795, 49.836128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.953297, 34.629051, 49.957577>,  <35.865925, 34.962807, 50.159992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953297, 34.629051, 49.957577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052147, 0.527802, -0.847765,
		0.974459, 0.158786, 0.158796,
		0.218426, -0.834393, -0.506041,
		36.018826, 34.378735, 49.805763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473263, 35.163136, 49.820286>,  <35.865925, 34.962807, 50.159992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473263, 35.163136, 49.820286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.302135, 34.863121, 49.618526>,  <36.199459, 34.683113, 49.497471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.302135, 34.863121, 49.618526>,  <36.473263, 35.163136, 49.820286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302135, 34.863121, 49.618526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032724, 0.544824, -0.837912,
		0.903271, -0.374981, -0.208542,
		-0.427820, -0.750037, -0.504395,
		36.173790, 34.638111, 49.467209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254627, 35.278202, 49.729996>,  <36.473263, 35.163136, 49.820286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254627, 35.278202, 49.729996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.528263, 35.566242, 49.683567>,  <37.692444, 35.739067, 49.655708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.528263, 35.566242, 49.683567>,  <37.254627, 35.278202, 49.729996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528263, 35.566242, 49.683567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386397, -0.222807, 0.895016,
		0.618645, -0.657119, -0.430666,
		0.684088, 0.720105, -0.116070,
		37.733490, 35.782272, 49.648746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839218, 34.986286, 49.956615>,  <37.254627, 35.278202, 49.729996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839218, 34.986286, 49.956615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910133, 35.378899, 49.985382>,  <37.952682, 35.614464, 50.002640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910133, 35.378899, 49.985382>,  <37.839218, 34.986286, 49.956615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910133, 35.378899, 49.985382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505150, -0.153464, 0.849277,
		0.844627, -0.114236, -0.523026,
		0.177283, 0.981529, 0.071914,
		37.963318, 35.673359, 50.006958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469498, 34.922665, 50.066093>,  <37.839218, 34.986286, 49.956615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469498, 34.922665, 50.066093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.330296, 35.267918, 50.212460>,  <38.246773, 35.475071, 50.300278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.330296, 35.267918, 50.212460>,  <38.469498, 34.922665, 50.066093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330296, 35.267918, 50.212460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492252, -0.163942, 0.854875,
		0.797859, 0.477625, -0.367826,
		-0.348007, 0.863133, 0.365914,
		38.225895, 35.526859, 50.322235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860466, 34.963154, 50.644436>,  <38.469498, 34.922665, 50.066093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860466, 34.963154, 50.644436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.630684, 35.279572, 50.728580>,  <38.492813, 35.469421, 50.779068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.630684, 35.279572, 50.728580>,  <38.860466, 34.963154, 50.644436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630684, 35.279572, 50.728580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434278, 0.076703, 0.897507,
		0.693833, 0.606931, -0.387596,
		-0.574455, 0.791044, 0.210358,
		38.458347, 35.516884, 50.791687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297634, 35.429943, 51.076283>,  <38.860466, 34.963154, 50.644436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297634, 35.429943, 51.076283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.919712, 35.547020, 51.135159>,  <38.692959, 35.617268, 51.170483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.919712, 35.547020, 51.135159>,  <39.297634, 35.429943, 51.076283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919712, 35.547020, 51.135159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223689, 0.248074, 0.942562,
		0.239369, 0.923466, -0.299855,
		-0.944810, 0.292695, 0.147188,
		38.636269, 35.634827, 51.179314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313843, 36.169250, 51.280571>,  <39.297634, 35.429943, 51.076283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313843, 36.169250, 51.280571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.986469, 35.984512, 51.417313>,  <38.790047, 35.873669, 51.499355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.986469, 35.984512, 51.417313>,  <39.313843, 36.169250, 51.280571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986469, 35.984512, 51.417313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229197, 0.283163, 0.931283,
		-0.526911, 0.840544, -0.125896,
		-0.818434, -0.461848, 0.341852,
		38.740940, 35.845959, 51.519867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053169, 36.560135, 51.696270>,  <39.313843, 36.169250, 51.280571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053169, 36.560135, 51.696270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.884815, 36.218456, 51.818394>,  <38.783802, 36.013451, 51.891666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.884815, 36.218456, 51.818394>,  <39.053169, 36.560135, 51.696270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884815, 36.218456, 51.818394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099612, 0.291011, 0.951520,
		-0.901629, 0.430891, -0.037393,
		-0.420884, -0.854193, 0.305306,
		38.758549, 35.962200, 51.909985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674412, 36.758190, 52.241856>,  <39.053169, 36.560135, 51.696270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674412, 36.758190, 52.241856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.696075, 36.361332, 52.286953>,  <38.709072, 36.123215, 52.314011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.696075, 36.361332, 52.286953>,  <38.674412, 36.758190, 52.241856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696075, 36.361332, 52.286953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070184, 0.116408, 0.990719,
		-0.996063, -0.045744, 0.075937,
		0.054159, -0.992148, 0.112739,
		38.712322, 36.063686, 52.320774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190849, 36.483925, 52.728519>,  <38.674412, 36.758190, 52.241856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190849, 36.483925, 52.728519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.501499, 36.232086, 52.719948>,  <38.687889, 36.080982, 52.714806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.501499, 36.232086, 52.719948>,  <38.190849, 36.483925, 52.728519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501499, 36.232086, 52.719948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076041, 0.059920, 0.995303,
		-0.625352, -0.774611, 0.094411,
		0.776629, -0.629594, -0.021431,
		38.734489, 36.043209, 52.713520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.674809, 38.128426, 36.712181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044720, 37.977348, 36.693699>,  <36.266666, 37.886703, 36.682610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044720, 37.977348, 36.693699>,  <35.674809, 38.128426, 36.712181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044720, 37.977348, 36.693699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001099, -0.118772, 0.992921,
		-0.380508, -0.918281, -0.109423,
		0.924777, -0.377694, -0.046203,
		36.322151, 37.864040, 36.679836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590706, 37.540947, 37.204716>,  <35.674809, 38.128426, 36.712181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590706, 37.540947, 37.204716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982273, 37.608601, 37.158905>,  <36.217213, 37.649193, 37.131420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982273, 37.608601, 37.158905>,  <35.590706, 37.540947, 37.204716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982273, 37.608601, 37.158905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152594, -0.232811, 0.960476,
		0.135788, -0.957701, -0.253712,
		0.978916, 0.169136, -0.114526,
		36.275948, 37.659340, 37.124546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909298, 36.998119, 37.607998>,  <35.590706, 37.540947, 37.204716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909298, 36.998119, 37.607998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199024, 37.270897, 37.567356>,  <36.372860, 37.434563, 37.542969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199024, 37.270897, 37.567356>,  <35.909298, 36.998119, 37.607998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199024, 37.270897, 37.567356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251705, -0.124339, 0.959784,
		0.641881, -0.720761, -0.261709,
		0.724316, 0.681941, -0.101608,
		36.416317, 37.475479, 37.536873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432774, 36.785709, 38.045376>,  <35.909298, 36.998119, 37.607998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432774, 36.785709, 38.045376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534405, 37.169022, 37.993019>,  <36.595383, 37.399010, 37.961605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534405, 37.169022, 37.993019>,  <36.432774, 36.785709, 38.045376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534405, 37.169022, 37.993019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411959, 0.015217, 0.911075,
		0.875061, -0.285409, -0.390908,
		0.254081, 0.958285, -0.130893,
		36.610630, 37.456509, 37.953751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086128, 36.874584, 38.428223>,  <36.432774, 36.785709, 38.045376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086128, 36.874584, 38.428223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913723, 37.233486, 38.389938>,  <36.810280, 37.448826, 38.366966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913723, 37.233486, 38.389938>,  <37.086128, 36.874584, 38.428223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913723, 37.233486, 38.389938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341469, 0.260371, 0.903109,
		0.835240, 0.356569, -0.418608,
		-0.431014, 0.897255, -0.095715,
		36.784420, 37.502663, 38.361225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645302, 37.307270, 38.723724>,  <37.086128, 36.874584, 38.428223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645302, 37.307270, 38.723724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311314, 37.527107, 38.734818>,  <37.110920, 37.659012, 38.741474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311314, 37.527107, 38.734818>,  <37.645302, 37.307270, 38.723724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311314, 37.527107, 38.734818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262307, 0.353186, 0.898028,
		0.483755, 0.757103, -0.439063,
		-0.834971, 0.549595, 0.027738,
		37.060822, 37.691986, 38.743137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875042, 38.040016, 38.860359>,  <37.645302, 37.307270, 38.723724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875042, 38.040016, 38.860359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492554, 37.995678, 38.968697>,  <37.263062, 37.969074, 39.033699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492554, 37.995678, 38.968697>,  <37.875042, 38.040016, 38.860359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492554, 37.995678, 38.968697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236126, 0.254497, 0.937804,
		-0.172884, 0.960700, -0.217180,
		-0.956220, -0.110849, 0.270844,
		37.205688, 37.962421, 39.049950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607651, 38.524506, 39.340481>,  <37.875042, 38.040016, 38.860359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607651, 38.524506, 39.340481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359886, 38.223602, 39.430317>,  <37.211227, 38.043060, 39.484219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359886, 38.223602, 39.430317>,  <37.607651, 38.524506, 39.340481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359886, 38.223602, 39.430317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013216, 0.276050, 0.961053,
		-0.784955, 0.598255, -0.161046,
		-0.619411, -0.752255, 0.224593,
		37.174065, 37.997925, 39.497696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249435, 38.710365, 39.835453>,  <37.607651, 38.524506, 39.340481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249435, 38.710365, 39.835453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143005, 38.325562, 39.859943>,  <37.079147, 38.094681, 39.874638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143005, 38.325562, 39.859943>,  <37.249435, 38.710365, 39.835453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143005, 38.325562, 39.859943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059005, 0.079649, 0.995075,
		-0.962144, 0.261153, -0.077956,
		-0.266076, -0.962006, 0.061224,
		37.063183, 38.036961, 39.878311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863392, 38.737358, 40.377518>,  <37.249435, 38.710365, 39.835453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863392, 38.737358, 40.377518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957027, 38.351269, 40.330956>,  <37.013206, 38.119617, 40.303017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957027, 38.351269, 40.330956>,  <36.863392, 38.737358, 40.377518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957027, 38.351269, 40.330956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208283, -0.166743, 0.963750,
		-0.949643, -0.201356, -0.240072,
		0.234087, -0.965221, -0.116408,
		37.027252, 38.061703, 40.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223808, 38.360058, 40.622459>,  <36.863392, 38.737358, 40.377518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223808, 38.360058, 40.622459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535652, 38.111618, 40.654587>,  <36.722759, 37.962555, 40.673862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535652, 38.111618, 40.654587>,  <36.223808, 38.360058, 40.622459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535652, 38.111618, 40.654587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214532, -0.144358, 0.965990,
		-0.588379, -0.770323, -0.245787,
		0.779606, -0.621098, 0.080322,
		36.769535, 37.925289, 40.678684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003582, 37.759350, 41.016956>,  <36.223808, 38.360058, 40.622459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003582, 37.759350, 41.016956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401154, 37.725594, 41.045177>,  <36.639698, 37.705338, 41.062111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401154, 37.725594, 41.045177>,  <36.003582, 37.759350, 41.016956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401154, 37.725594, 41.045177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087017, -0.210896, 0.973628,
		-0.067288, -0.973859, -0.216960,
		0.993932, -0.084393, 0.070552,
		36.699333, 37.700275, 41.066341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428600, 37.282742, 41.074833>,  <36.003582, 37.759350, 41.016956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428600, 37.282742, 41.074833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230988, 36.935318, 41.090557>,  <35.112419, 36.726864, 41.099991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230988, 36.935318, 41.090557>,  <35.428600, 37.282742, 41.074833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230988, 36.935318, 41.090557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437315, 0.209154, -0.874649,
		0.751458, -0.449295, -0.483161,
		-0.494031, -0.868555, 0.039313,
		35.082779, 36.674751, 41.102352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623058, 36.874237, 40.493999>,  <35.428600, 37.282742, 41.074833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623058, 36.874237, 40.493999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265472, 36.754009, 40.626953>,  <35.050919, 36.681873, 40.706726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265472, 36.754009, 40.626953>,  <35.623058, 36.874237, 40.493999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265472, 36.754009, 40.626953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350661, 0.007352, -0.936474,
		0.279031, -0.953732, -0.111971,
		-0.893968, -0.300569, 0.332385,
		34.997284, 36.663837, 40.726669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525887, 36.255718, 40.182529>,  <35.623058, 36.874237, 40.493999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525887, 36.255718, 40.182529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155117, 36.379700, 40.267147>,  <34.932655, 36.454086, 40.317917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155117, 36.379700, 40.267147>,  <35.525887, 36.255718, 40.182529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155117, 36.379700, 40.267147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279448, -0.193880, -0.940383,
		-0.250464, -0.930772, 0.266327,
		-0.926917, 0.309957, 0.211543,
		34.877041, 36.472687, 40.330612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987637, 35.829899, 39.733891>,  <35.525887, 36.255718, 40.182529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987637, 35.829899, 39.733891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773403, 36.145973, 39.853058>,  <34.644863, 36.335617, 39.924557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773403, 36.145973, 39.853058>,  <34.987637, 35.829899, 39.733891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773403, 36.145973, 39.853058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313578, 0.141467, -0.938965,
		-0.784106, -0.596311, 0.172019,
		-0.535581, 0.790190, 0.297916,
		34.612728, 36.383030, 39.942432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275608, 35.654354, 39.491600>,  <34.987637, 35.829899, 39.733891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275608, 35.654354, 39.491600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297882, 36.044067, 39.578938>,  <34.311249, 36.277893, 39.631340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297882, 36.044067, 39.578938>,  <34.275608, 35.654354, 39.491600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297882, 36.044067, 39.578938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316412, 0.224635, -0.921641,
		-0.946986, -0.017762, 0.320784,
		0.055689, 0.974281, 0.218346,
		34.314590, 36.336353, 39.644440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670258, 35.935322, 39.362175>,  <34.275608, 35.654354, 39.491600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670258, 35.935322, 39.362175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912571, 36.252666, 39.338154>,  <34.057961, 36.443073, 39.323742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912571, 36.252666, 39.338154>,  <33.670258, 35.935322, 39.362175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912571, 36.252666, 39.338154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312924, 0.168185, -0.934769,
		-0.731508, 0.585060, 0.350145,
		0.605785, 0.793359, -0.060050,
		34.094307, 36.490673, 39.320137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255047, 36.484905, 39.015873>,  <33.670258, 35.935322, 39.362175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255047, 36.484905, 39.015873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639427, 36.583981, 38.966507>,  <33.870056, 36.643425, 38.936886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639427, 36.583981, 38.966507>,  <33.255047, 36.484905, 39.015873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639427, 36.583981, 38.966507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177295, 0.208609, -0.961795,
		-0.212482, 0.946114, 0.244376,
		0.960947, 0.247690, -0.123416,
		33.927711, 36.658287, 38.929482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217186, 37.060318, 38.605396>,  <33.255047, 36.484905, 39.015873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217186, 37.060318, 38.605396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600456, 36.954193, 38.562492>,  <33.830418, 36.890518, 38.536751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600456, 36.954193, 38.562492>,  <33.217186, 37.060318, 38.605396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600456, 36.954193, 38.562492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031269, 0.275495, -0.960794,
		0.284455, 0.923966, 0.255678,
		0.958179, -0.265308, -0.107258,
		33.887909, 36.874599, 38.530315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504303, 37.596050, 38.202393>,  <33.217186, 37.060318, 38.605396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504303, 37.596050, 38.202393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743389, 37.280071, 38.147663>,  <33.886841, 37.090485, 38.114826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743389, 37.280071, 38.147663>,  <33.504303, 37.596050, 38.202393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743389, 37.280071, 38.147663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067635, 0.219739, -0.973211,
		0.798850, 0.572450, 0.184770,
		0.597715, -0.789947, -0.136820,
		33.922703, 37.043087, 38.106617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147518, 37.791828, 37.939270>,  <33.504303, 37.596050, 38.202393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147518, 37.791828, 37.939270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079185, 37.416401, 37.819332>,  <34.038185, 37.191143, 37.747372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079185, 37.416401, 37.819332>,  <34.147518, 37.791828, 37.939270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079185, 37.416401, 37.819332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139499, 0.278211, -0.950336,
		0.975375, -0.204174, 0.083402,
		-0.170830, -0.938569, -0.299842,
		34.027935, 37.134830, 37.729378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533436, 37.846958, 37.274254>,  <34.147518, 37.791828, 37.939270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533436, 37.846958, 37.274254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333000, 37.500893, 37.282337>,  <34.212738, 37.293255, 37.287186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333000, 37.500893, 37.282337>,  <34.533436, 37.846958, 37.274254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333000, 37.500893, 37.282337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072699, 0.018813, -0.997176,
		0.862337, -0.501142, -0.072323,
		-0.501088, -0.865161, 0.020210,
		34.182674, 37.241344, 37.288399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876671, 37.384804, 36.906567>,  <34.533436, 37.846958, 37.274254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876671, 37.384804, 36.906567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492401, 37.277405, 36.878262>,  <34.261837, 37.212963, 36.861279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492401, 37.277405, 36.878262>,  <34.876671, 37.384804, 36.906567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492401, 37.277405, 36.878262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036483, 0.130571, -0.990767,
		0.275263, -0.954389, -0.115640,
		-0.960676, -0.268502, -0.070761,
		34.204197, 37.196854, 36.857033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450314, 36.953835, 36.691223>,  <34.876671, 37.384804, 36.906567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450314, 36.953835, 36.691223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720409, 36.721558, 36.873146>,  <35.882465, 36.582191, 36.982300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720409, 36.721558, 36.873146>,  <35.450314, 36.953835, 36.691223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720409, 36.721558, 36.873146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484001, -0.116469, -0.867282,
		0.556591, 0.805752, 0.202409,
		0.675240, -0.580688, 0.454811,
		35.922981, 36.547352, 37.009590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079231, 36.328350, 36.345501>,  <35.450314, 36.953835, 36.691223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079231, 36.328350, 36.345501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931412, 36.567711, 36.629852>,  <34.842720, 36.711327, 36.800465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931412, 36.567711, 36.629852>,  <35.079231, 36.328350, 36.345501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931412, 36.567711, 36.629852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642880, 0.387731, -0.660584,
		-0.670923, -0.701130, 0.241412,
		-0.369552, 0.598399, 0.710880,
		34.820545, 36.747231, 36.843117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426640, 36.295624, 36.321178>,  <35.079231, 36.328350, 36.345501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426640, 36.295624, 36.321178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482456, 36.669033, 36.453278>,  <34.515945, 36.893078, 36.532539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482456, 36.669033, 36.453278>,  <34.426640, 36.295624, 36.321178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482456, 36.669033, 36.453278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723309, 0.323869, -0.609863,
		-0.676278, -0.153772, 0.720418,
		0.139541, 0.933522, 0.330250,
		34.524319, 36.949089, 36.552353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510750, 35.620701, 36.478481>,  <34.426640, 36.295624, 36.321178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510750, 35.620701, 36.478481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810226, 35.416397, 36.309448>,  <34.989914, 35.293816, 36.208027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810226, 35.416397, 36.309448>,  <34.510750, 35.620701, 36.478481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810226, 35.416397, 36.309448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078572, -0.701345, 0.708478,
		-0.658243, -0.497230, -0.565225,
		0.748694, -0.510762, -0.422587,
		35.034836, 35.263168, 36.182674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254715, 34.965977, 36.386917>,  <34.510750, 35.620701, 36.478481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254715, 34.965977, 36.386917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654030, 34.948631, 36.371239>,  <34.893620, 34.938225, 36.361832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654030, 34.948631, 36.371239>,  <34.254715, 34.965977, 36.386917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654030, 34.948631, 36.371239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002778, -0.704965, 0.709237,
		-0.058383, -0.707915, -0.703880,
		0.998290, -0.043363, -0.039191,
		34.953518, 34.935623, 36.359482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429039, 34.273575, 36.369328>,  <34.254715, 34.965977, 36.386917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429039, 34.273575, 36.369328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741642, 34.473885, 36.518173>,  <34.929203, 34.594070, 36.607479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741642, 34.473885, 36.518173>,  <34.429039, 34.273575, 36.369328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741642, 34.473885, 36.518173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013136, -0.609507, 0.792672,
		0.623757, -0.614591, -0.482913,
		0.781508, 0.500778, 0.372111,
		34.976093, 34.624119, 36.629807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822571, 33.744442, 36.544617>,  <34.429039, 34.273575, 36.369328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822571, 33.744442, 36.544617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907074, 34.076077, 36.751686>,  <34.957775, 34.275059, 36.875927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907074, 34.076077, 36.751686>,  <34.822571, 33.744442, 36.544617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907074, 34.076077, 36.751686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020404, -0.525767, 0.850384,
		0.977217, -0.190213, -0.094156,
		0.211258, 0.829089, 0.517669,
		34.970451, 34.324802, 36.906986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439518, 33.601269, 36.972088>,  <34.822571, 33.744442, 36.544617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439518, 33.601269, 36.972088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290081, 33.923191, 37.156574>,  <35.200417, 34.116344, 37.267265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290081, 33.923191, 37.156574>,  <35.439518, 33.601269, 36.972088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290081, 33.923191, 37.156574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155367, -0.435900, 0.886483,
		0.914487, 0.402844, 0.037811,
		-0.373596, 0.804803, 0.461214,
		35.178001, 34.164631, 37.294937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929390, 33.934814, 37.471680>,  <35.439518, 33.601269, 36.972088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929390, 33.934814, 37.471680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581108, 34.063641, 37.620354>,  <35.372139, 34.140938, 37.709557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581108, 34.063641, 37.620354>,  <35.929390, 33.934814, 37.471680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581108, 34.063641, 37.620354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242280, -0.376787, 0.894054,
		0.427992, 0.868507, 0.250039,
		-0.870703, 0.322068, 0.371683,
		35.319897, 34.160259, 37.731857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080868, 34.189476, 38.108715>,  <35.929390, 33.934814, 37.471680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080868, 34.189476, 38.108715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689617, 34.109272, 38.130875>,  <35.454868, 34.061150, 38.144169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689617, 34.109272, 38.130875>,  <36.080868, 34.189476, 38.108715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689617, 34.109272, 38.130875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120956, -0.331544, 0.935654,
		-0.169245, 0.921886, 0.348544,
		-0.978124, -0.200513, 0.055396,
		35.396179, 34.049118, 38.147495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820148, 34.558960, 38.752869>,  <36.080868, 34.189476, 38.108715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820148, 34.558960, 38.752869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559025, 34.269463, 38.663391>,  <35.402351, 34.095764, 38.609703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559025, 34.269463, 38.663391>,  <35.820148, 34.558960, 38.752869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559025, 34.269463, 38.663391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006128, -0.300334, 0.953814,
		-0.757500, 0.621285, 0.200495,
		-0.652806, -0.723743, -0.223696,
		35.363182, 34.052341, 38.596283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355541, 34.557842, 39.301353>,  <35.820148, 34.558960, 38.752869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355541, 34.557842, 39.301353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280685, 34.209431, 39.119675>,  <35.235771, 34.000385, 39.010670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280685, 34.209431, 39.119675>,  <35.355541, 34.557842, 39.301353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280685, 34.209431, 39.119675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062872, -0.472035, 0.879335,
		-0.980319, 0.136001, 0.143099,
		-0.187139, -0.871026, -0.454194,
		35.224545, 33.948124, 38.983418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797188, 34.374214, 39.682911>,  <35.355541, 34.557842, 39.301353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797188, 34.374214, 39.682911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943695, 34.052746, 39.495316>,  <35.031601, 33.859863, 39.382759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943695, 34.052746, 39.495316>,  <34.797188, 34.374214, 39.682911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943695, 34.052746, 39.495316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128604, -0.542902, 0.829890,
		-0.921578, -0.243651, -0.302205,
		0.366271, -0.803674, -0.468993,
		35.053577, 33.811646, 39.354618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521408, 33.858490, 40.009689>,  <34.797188, 34.374214, 39.682911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521408, 33.858490, 40.009689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828892, 33.684544, 39.822086>,  <35.013382, 33.580177, 39.709522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828892, 33.684544, 39.822086>,  <34.521408, 33.858490, 40.009689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828892, 33.684544, 39.822086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190585, -0.544244, 0.816992,
		-0.610541, -0.717418, -0.335487,
		0.768711, -0.434869, -0.469012,
		35.059505, 33.554085, 39.681381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411758, 33.120022, 40.138271>,  <34.521408, 33.858490, 40.009689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411758, 33.120022, 40.138271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796387, 33.186359, 40.050747>,  <35.027164, 33.226162, 39.998234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796387, 33.186359, 40.050747>,  <34.411758, 33.120022, 40.138271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796387, 33.186359, 40.050747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274303, -0.614499, 0.739695,
		-0.011785, -0.771289, -0.636376,
		0.961571, 0.165842, -0.218809,
		35.084858, 33.236111, 39.985104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642838, 32.457577, 40.102554>,  <34.411758, 33.120022, 40.138271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642838, 32.457577, 40.102554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947624, 32.711540, 40.153629>,  <35.130497, 32.863918, 40.184273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947624, 32.711540, 40.153629>,  <34.642838, 32.457577, 40.102554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947624, 32.711540, 40.153629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388401, -0.605772, 0.694395,
		0.518226, -0.479510, -0.708175,
		0.761963, 0.634910, 0.127684,
		35.176212, 32.902012, 40.191933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174850, 32.023769, 40.304321>,  <34.642838, 32.457577, 40.102554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174850, 32.023769, 40.304321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295509, 32.376705, 40.448814>,  <35.367905, 32.588467, 40.535511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295509, 32.376705, 40.448814>,  <35.174850, 32.023769, 40.304321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295509, 32.376705, 40.448814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198015, -0.428602, 0.881527,
		0.932629, -0.194384, -0.304004,
		0.301652, 0.882335, 0.361236,
		35.386005, 32.641407, 40.557186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724312, 31.800390, 40.766953>,  <35.174850, 32.023769, 40.304321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724312, 31.800390, 40.766953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654072, 32.179092, 40.874893>,  <35.611927, 32.406315, 40.939659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654072, 32.179092, 40.874893>,  <35.724312, 31.800390, 40.766953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654072, 32.179092, 40.874893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150102, -0.245162, 0.957792,
		0.972951, 0.208695, -0.099059,
		-0.175601, 0.946754, 0.269856,
		35.601391, 32.463120, 40.955849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299225, 31.938114, 41.113667>,  <35.724312, 31.800390, 40.766953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299225, 31.938114, 41.113667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006939, 32.174389, 41.250568>,  <35.831566, 32.316154, 41.332710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006939, 32.174389, 41.250568>,  <36.299225, 31.938114, 41.113667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006939, 32.174389, 41.250568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199568, -0.294620, 0.934543,
		0.652857, 0.751192, 0.097402,
		-0.730718, 0.590685, 0.342259,
		35.787724, 32.351593, 41.353245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672279, 32.446815, 41.500271>,  <36.299225, 31.938114, 41.113667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672279, 32.446815, 41.500271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290947, 32.440670, 41.620884>,  <36.062145, 32.436981, 41.693253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290947, 32.440670, 41.620884>,  <36.672279, 32.446815, 41.500271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290947, 32.440670, 41.620884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297370, -0.220532, 0.928944,
		0.052223, 0.975259, 0.214810,
		-0.953333, -0.015366, 0.301530,
		36.004948, 32.436062, 41.711342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697628, 32.849834, 42.031544>,  <36.672279, 32.446815, 41.500271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697628, 32.849834, 42.031544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367447, 32.630775, 42.086254>,  <36.169338, 32.499340, 42.119080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367447, 32.630775, 42.086254>,  <36.697628, 32.849834, 42.031544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367447, 32.630775, 42.086254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275772, -0.179840, 0.944249,
		-0.492520, 0.817152, 0.299476,
		-0.825453, -0.547649, 0.136773,
		36.119812, 32.466480, 42.127285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391857, 33.026096, 42.703957>,  <36.697628, 32.849834, 42.031544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391857, 33.026096, 42.703957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199005, 32.686287, 42.618294>,  <36.083294, 32.482403, 42.566898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199005, 32.686287, 42.618294>,  <36.391857, 33.026096, 42.703957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199005, 32.686287, 42.618294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006142, -0.247711, 0.968814,
		-0.876080, 0.465776, 0.124646,
		-0.482126, -0.849525, -0.214155,
		36.054367, 32.431431, 42.554047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809109, 32.920757, 43.247372>,  <36.391857, 33.026096, 42.703957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809109, 32.920757, 43.247372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865101, 32.568092, 43.067116>,  <35.898697, 32.356495, 42.958961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865101, 32.568092, 43.067116>,  <35.809109, 32.920757, 43.247372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865101, 32.568092, 43.067116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088109, -0.464411, 0.881226,
		-0.986226, -0.083651, -0.142693,
		0.139984, -0.881660, -0.450644,
		35.907097, 32.303593, 42.931923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301682, 32.492531, 43.512562>,  <35.809109, 32.920757, 43.247372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301682, 32.492531, 43.512562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594059, 32.255978, 43.376335>,  <35.769485, 32.114044, 43.294598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594059, 32.255978, 43.376335>,  <35.301682, 32.492531, 43.512562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594059, 32.255978, 43.376335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047318, -0.453927, 0.889781,
		-0.680797, -0.666494, -0.303811,
		0.730942, -0.591385, -0.340570,
		35.813343, 32.078564, 43.274166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177616, 31.904047, 43.815601>,  <35.301682, 32.492531, 43.512562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177616, 31.904047, 43.815601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564201, 31.862167, 43.721809>,  <35.796154, 31.837040, 43.665535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564201, 31.862167, 43.721809>,  <35.177616, 31.904047, 43.815601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564201, 31.862167, 43.721809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120132, -0.622682, 0.773198,
		-0.226959, -0.775438, -0.589224,
		0.966466, -0.104700, -0.234478,
		35.854141, 31.830757, 43.651466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283886, 31.206390, 43.839336>,  <35.177616, 31.904047, 43.815601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283886, 31.206390, 43.839336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631405, 31.397635, 43.890881>,  <35.839916, 31.512381, 43.921806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631405, 31.397635, 43.890881>,  <35.283886, 31.206390, 43.839336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631405, 31.397635, 43.890881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227785, -0.616954, 0.753314,
		0.439668, -0.625123, -0.644913,
		0.868796, 0.478110, 0.128862,
		35.892044, 31.541067, 43.929539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817669, 30.679552, 43.989391>,  <35.283886, 31.206390, 43.839336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817669, 30.679552, 43.989391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974136, 31.023863, 44.119652>,  <36.068016, 31.230450, 44.197807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974136, 31.023863, 44.119652>,  <35.817669, 30.679552, 43.989391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974136, 31.023863, 44.119652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534397, -0.500525, 0.681098,
		0.749268, -0.092401, -0.655789,
		0.391173, 0.860777, 0.325648,
		36.091488, 31.282097, 44.217346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580025, 30.492813, 44.186512>,  <35.817669, 30.679552, 43.989391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580025, 30.492813, 44.186512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502235, 30.836525, 44.375748>,  <36.455563, 31.042753, 44.489288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502235, 30.836525, 44.375748>,  <36.580025, 30.492813, 44.186512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502235, 30.836525, 44.375748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425125, -0.360813, 0.830110,
		0.883995, 0.362561, -0.295132,
		-0.194478, 0.859281, 0.473091,
		36.443893, 31.094309, 44.517673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069862, 30.500580, 44.626137>,  <36.580025, 30.492813, 44.186512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069862, 30.500580, 44.626137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831844, 30.785198, 44.775600>,  <36.689034, 30.955969, 44.865280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831844, 30.785198, 44.775600>,  <37.069862, 30.500580, 44.626137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831844, 30.785198, 44.775600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341493, -0.197025, 0.919001,
		0.727531, 0.674452, -0.125749,
		-0.595047, 0.711544, 0.373663,
		36.653332, 30.998661, 44.887699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498737, 31.037708, 45.035954>,  <37.069862, 30.500580, 44.626137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498737, 31.037708, 45.035954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116020, 31.050434, 45.151558>,  <36.886391, 31.058069, 45.220921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116020, 31.050434, 45.151558>,  <37.498737, 31.037708, 45.035954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116020, 31.050434, 45.151558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258534, -0.361750, 0.895710,
		0.133049, 0.931732, 0.337896,
		-0.956796, 0.031815, 0.289015,
		36.828983, 31.059978, 45.238262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172558, 31.351284, 45.088902>,  <37.498737, 31.037708, 45.035954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172558, 31.351284, 45.088902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353237, 31.010199, 44.983948>,  <38.461647, 30.805548, 44.920975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353237, 31.010199, 44.983948>,  <38.172558, 31.351284, 45.088902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353237, 31.010199, 44.983948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083883, 0.333388, -0.939050,
		0.888217, 0.402161, 0.222120,
		0.451701, -0.852713, -0.262386,
		38.488747, 30.754385, 44.905231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815987, 31.565065, 44.618557>,  <38.172558, 31.351284, 45.088902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815987, 31.565065, 44.618557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654182, 31.202246, 44.571850>,  <38.557102, 30.984554, 44.543823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654182, 31.202246, 44.571850>,  <38.815987, 31.565065, 44.618557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654182, 31.202246, 44.571850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042558, 0.146216, -0.988337,
		0.913544, -0.394821, -0.097747,
		-0.404508, -0.907049, -0.116772,
		38.532829, 30.930132, 44.536819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213837, 31.391169, 43.998600>,  <38.815987, 31.565065, 44.618557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213837, 31.391169, 43.998600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917267, 31.123985, 44.024281>,  <38.739326, 30.963675, 44.039688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917267, 31.123985, 44.024281>,  <39.213837, 31.391169, 43.998600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917267, 31.123985, 44.024281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027867, -0.064937, -0.997500,
		0.670458, -0.741359, 0.029532,
		-0.741424, -0.667960, 0.064197,
		38.694839, 30.923597, 44.043541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464108, 30.732601, 43.862083>,  <39.213837, 31.391169, 43.998600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464108, 30.732601, 43.862083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072609, 30.743561, 43.780792>,  <38.837711, 30.750137, 43.732018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072609, 30.743561, 43.780792>,  <39.464108, 30.732601, 43.862083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072609, 30.743561, 43.780792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205059, 0.141504, -0.968467,
		0.002221, -0.989558, -0.144115,
		-0.978747, 0.027401, -0.203232,
		38.778984, 30.751781, 43.719822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382900, 30.233885, 43.187408>,  <39.464108, 30.732601, 43.862083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382900, 30.233885, 43.187408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057407, 30.461344, 43.235550>,  <38.862114, 30.597818, 43.264435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057407, 30.461344, 43.235550>,  <39.382900, 30.233885, 43.187408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057407, 30.461344, 43.235550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090628, 0.080401, -0.992634,
		-0.574135, -0.818643, -0.013890,
		-0.813729, 0.568647, 0.120353,
		38.813290, 30.631937, 43.271656>
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
