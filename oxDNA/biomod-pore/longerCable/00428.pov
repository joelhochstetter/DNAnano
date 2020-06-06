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
	<24.049212, 34.671341, 35.112125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413977, 34.834675, 35.128521>,  <24.632835, 34.932674, 35.138359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413977, 34.834675, 35.128521>,  <24.049212, 34.671341, 35.112125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413977, 34.834675, 35.128521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030163, 0.166291, -0.985615,
		-0.409273, 0.897560, 0.163959,
		0.911913, 0.408331, 0.040985,
		24.687551, 34.957172, 35.140816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.047287, 35.338795, 34.808975>,  <24.049212, 34.671341, 35.112125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.047287, 35.338795, 34.808975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423544, 35.208672, 34.770260>,  <24.649298, 35.130596, 34.747028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423544, 35.208672, 34.770260>,  <24.047287, 35.338795, 34.808975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.423544, 35.208672, 34.770260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040201, 0.176388, -0.983499,
		0.337013, 0.929011, 0.152840,
		0.940641, -0.325308, -0.096792,
		24.705736, 35.111080, 34.741222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.323324, 35.853195, 34.409607>,  <24.047287, 35.338795, 34.808975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.323324, 35.853195, 34.409607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544317, 35.525177, 34.349895>,  <24.676912, 35.328365, 34.314068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544317, 35.525177, 34.349895>,  <24.323324, 35.853195, 34.409607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544317, 35.525177, 34.349895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022252, 0.193538, -0.980840,
		0.833227, 0.538575, 0.125174,
		0.552482, -0.820048, -0.149277,
		24.710062, 35.279163, 34.305111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.931717, 36.104408, 33.978741>,  <24.323324, 35.853195, 34.409607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.931717, 36.104408, 33.978741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909134, 35.708000, 33.930271>,  <24.895584, 35.470154, 33.901188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909134, 35.708000, 33.930271>,  <24.931717, 36.104408, 33.978741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909134, 35.708000, 33.930271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262147, 0.102399, -0.959580,
		0.963375, -0.085942, 0.254013,
		-0.056458, -0.991024, -0.121178,
		24.892197, 35.410694, 33.893917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558401, 35.909744, 33.592018>,  <24.931717, 36.104408, 33.978741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558401, 35.909744, 33.592018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276876, 35.627781, 33.556801>,  <25.107962, 35.458603, 33.535671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276876, 35.627781, 33.556801>,  <25.558401, 35.909744, 33.592018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276876, 35.627781, 33.556801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068632, 0.055881, -0.996076,
		0.707062, -0.707094, 0.009050,
		-0.703813, -0.704908, -0.088041,
		25.065733, 35.416309, 33.530388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880676, 35.412308, 33.271214>,  <25.558401, 35.909744, 33.592018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880676, 35.412308, 33.271214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500126, 35.436726, 33.150444>,  <25.271795, 35.451378, 33.077984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.500126, 35.436726, 33.150444>,  <25.880676, 35.412308, 33.271214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500126, 35.436726, 33.150444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307053, 0.266143, -0.913721,
		0.024574, -0.961999, -0.271947,
		-0.951375, 0.061048, -0.301925,
		25.214714, 35.455040, 33.059868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908623, 35.039597, 32.622013>,  <25.880676, 35.412308, 33.271214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908623, 35.039597, 32.622013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585424, 35.273731, 32.648918>,  <25.391506, 35.414211, 32.665062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585424, 35.273731, 32.648918>,  <25.908623, 35.039597, 32.622013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585424, 35.273731, 32.648918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116971, 0.271245, -0.955377,
		-0.577462, -0.764072, -0.287632,
		-0.807995, 0.585338, 0.067260,
		25.343025, 35.449333, 32.669098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311413, 34.936153, 32.128654>,  <25.908623, 35.039597, 32.622013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311413, 34.936153, 32.128654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274773, 35.333572, 32.155422>,  <25.252789, 35.572021, 32.171482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274773, 35.333572, 32.155422>,  <25.311413, 34.936153, 32.128654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274773, 35.333572, 32.155422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137586, 0.079184, -0.987320,
		-0.986245, -0.081233, -0.143951,
		-0.091602, 0.993545, 0.066918,
		25.247292, 35.631638, 32.175499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862230, 35.182503, 31.555485>,  <25.311413, 34.936153, 32.128654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862230, 35.182503, 31.555485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079361, 35.499039, 31.668001>,  <25.209641, 35.688961, 31.735510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.079361, 35.499039, 31.668001>,  <24.862230, 35.182503, 31.555485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.079361, 35.499039, 31.668001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246450, 0.170094, -0.954112,
		-0.802870, 0.587242, -0.102694,
		0.542828, 0.791337, 0.281289,
		25.242208, 35.736439, 31.752388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649946, 35.707935, 31.116222>,  <24.862230, 35.182503, 31.555485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649946, 35.707935, 31.116222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007048, 35.809147, 31.265339>,  <25.221308, 35.869873, 31.354809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007048, 35.809147, 31.265339>,  <24.649946, 35.707935, 31.116222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007048, 35.809147, 31.265339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323708, 0.215289, -0.921338,
		-0.313380, 0.943201, 0.110293,
		0.892752, 0.253026, 0.372789,
		25.274874, 35.885056, 31.377176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738642, 36.314514, 30.745712>,  <24.649946, 35.707935, 31.116222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738642, 36.314514, 30.745712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100971, 36.209053, 30.878359>,  <25.318369, 36.145775, 30.957947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100971, 36.209053, 30.878359>,  <24.738642, 36.314514, 30.745712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100971, 36.209053, 30.878359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354393, 0.042663, -0.934123,
		0.232136, 0.963674, 0.132082,
		0.905825, -0.263652, 0.331615,
		25.372719, 36.129959, 30.977844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263271, 36.794899, 30.420208>,  <24.738642, 36.314514, 30.745712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263271, 36.794899, 30.420208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410017, 36.425694, 30.466610>,  <25.498064, 36.204170, 30.494452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410017, 36.425694, 30.466610>,  <25.263271, 36.794899, 30.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410017, 36.425694, 30.466610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390901, 0.039797, -0.919572,
		0.844160, 0.382705, 0.375407,
		0.366865, -0.923013, 0.116004,
		25.520077, 36.148788, 30.501411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059303, 36.687523, 30.136997>,  <25.263271, 36.794899, 30.420208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059303, 36.687523, 30.136997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877712, 36.331455, 30.121477>,  <25.768757, 36.117817, 30.112165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877712, 36.331455, 30.121477>,  <26.059303, 36.687523, 30.136997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877712, 36.331455, 30.121477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416605, -0.173568, -0.892365,
		0.787619, -0.421279, 0.449644,
		-0.453978, -0.890167, -0.038801,
		25.741518, 36.064404, 30.109837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484808, 36.175869, 30.001825>,  <26.059303, 36.687523, 30.136997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484808, 36.175869, 30.001825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117699, 36.086945, 29.870209>,  <25.897432, 36.033592, 29.791239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117699, 36.086945, 29.870209>,  <26.484808, 36.175869, 30.001825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117699, 36.086945, 29.870209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365164, -0.146890, -0.919281,
		0.156032, -0.963847, 0.215991,
		-0.917774, -0.222310, -0.329043,
		25.842367, 36.020252, 29.771496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722933, 35.898571, 30.741697>,  <26.484808, 36.175869, 30.001825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722933, 35.898571, 30.741697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111229, 35.876842, 30.648132>,  <27.344206, 35.863804, 30.591993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111229, 35.876842, 30.648132>,  <26.722933, 35.898571, 30.741697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111229, 35.876842, 30.648132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058925, -0.998181, -0.012728,
		-0.232796, 0.026139, -0.972174,
		0.970739, -0.054323, -0.233913,
		27.402451, 35.860546, 30.577959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376806, 35.315292, 30.915140>,  <26.722933, 35.898571, 30.741697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376806, 35.315292, 30.915140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171114, 35.654888, 30.866501>,  <26.047699, 35.858646, 30.837317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171114, 35.654888, 30.866501>,  <26.376806, 35.315292, 30.915140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171114, 35.654888, 30.866501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360528, -0.085336, 0.928836,
		0.778194, 0.521475, 0.349967,
		-0.514230, 0.848988, -0.121598,
		26.016846, 35.909584, 30.830021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525986, 35.729279, 31.477732>,  <26.376806, 35.315292, 30.915140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525986, 35.729279, 31.477732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181892, 35.872307, 31.332325>,  <25.975437, 35.958122, 31.245081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181892, 35.872307, 31.332325>,  <26.525986, 35.729279, 31.477732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181892, 35.872307, 31.332325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350588, 0.102906, 0.930859,
		0.370255, 0.928199, 0.036837,
		-0.860232, 0.357570, -0.363517,
		25.923822, 35.979576, 31.223270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451281, 36.360359, 31.796484>,  <26.525986, 35.729279, 31.477732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451281, 36.360359, 31.796484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093943, 36.226345, 31.676689>,  <25.879539, 36.145939, 31.604813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093943, 36.226345, 31.676689>,  <26.451281, 36.360359, 31.796484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093943, 36.226345, 31.676689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349136, 0.097876, 0.931947,
		-0.282918, 0.937110, -0.204408,
		-0.893343, -0.335031, -0.299488,
		25.825939, 36.125835, 31.586843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927645, 36.777554, 32.122574>,  <26.451281, 36.360359, 31.796484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927645, 36.777554, 32.122574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718552, 36.458702, 32.001682>,  <25.593096, 36.267391, 31.929148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718552, 36.458702, 32.001682>,  <25.927645, 36.777554, 32.122574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718552, 36.458702, 32.001682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432395, -0.057623, 0.899841,
		-0.734702, 0.601057, -0.314552,
		-0.522730, -0.797126, -0.302230,
		25.561733, 36.219563, 31.911013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351421, 36.913986, 32.354263>,  <25.927645, 36.777554, 32.122574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351421, 36.913986, 32.354263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350649, 36.519306, 32.289257>,  <25.350185, 36.282497, 32.250256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350649, 36.519306, 32.289257>,  <25.351421, 36.913986, 32.354263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350649, 36.519306, 32.289257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553239, -0.134323, 0.822122,
		-0.833021, 0.091497, -0.545623,
		-0.001932, -0.986705, -0.162513,
		25.350069, 36.223293, 32.240501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864899, 36.728012, 32.787617>,  <25.351421, 36.913986, 32.354263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864899, 36.728012, 32.787617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982615, 36.383553, 32.621815>,  <25.053244, 36.176876, 32.522335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.982615, 36.383553, 32.621815>,  <24.864899, 36.728012, 32.787617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982615, 36.383553, 32.621815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521408, -0.508148, 0.685507,
		-0.800954, 0.014389, -0.598553,
		0.294289, -0.861150, -0.414506,
		25.070902, 36.125206, 32.497463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312824, 36.283775, 32.756203>,  <24.864899, 36.728012, 32.787617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312824, 36.283775, 32.756203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622919, 36.032307, 32.731628>,  <24.808975, 35.881424, 32.716885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622919, 36.032307, 32.731628>,  <24.312824, 36.283775, 32.756203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622919, 36.032307, 32.731628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417133, -0.582553, 0.697590,
		-0.474350, -0.515169, -0.713858,
		0.775237, -0.628675, -0.061440,
		24.855490, 35.843704, 32.713196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984655, 35.670147, 32.638359>,  <24.312824, 36.283775, 32.756203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984655, 35.670147, 32.638359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.349882, 35.578327, 32.773186>,  <24.569019, 35.523235, 32.854080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.349882, 35.578327, 32.773186>,  <23.984655, 35.670147, 32.638359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.349882, 35.578327, 32.773186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391933, -0.722299, 0.569800,
		0.112669, -0.652375, -0.749475,
		0.913069, -0.229545, 0.337068,
		24.623802, 35.509464, 32.874306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.072834, 34.929939, 33.034512>,  <23.984655, 35.670147, 32.638359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.072834, 34.929939, 33.034512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457069, 35.037651, 33.062096>,  <24.687611, 35.102280, 33.078648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457069, 35.037651, 33.062096>,  <24.072834, 34.929939, 33.034512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457069, 35.037651, 33.062096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011091, -0.285027, 0.958455,
		0.277749, -0.919917, -0.276780,
		0.960590, 0.269280, 0.068963,
		24.745247, 35.118435, 33.082783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.371864, 34.378834, 33.304527>,  <24.072834, 34.929939, 33.034512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.371864, 34.378834, 33.304527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617807, 34.684734, 33.381573>,  <24.765373, 34.868275, 33.427799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617807, 34.684734, 33.381573>,  <24.371864, 34.378834, 33.304527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617807, 34.684734, 33.381573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096692, -0.315493, 0.943989,
		0.782689, -0.561794, -0.267929,
		0.614857, 0.764756, 0.192612,
		24.802265, 34.914162, 33.439358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963224, 34.072132, 33.670540>,  <24.371864, 34.378834, 33.304527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963224, 34.072132, 33.670540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938139, 34.464680, 33.743179>,  <24.923088, 34.700211, 33.786762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938139, 34.464680, 33.743179>,  <24.963224, 34.072132, 33.670540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938139, 34.464680, 33.743179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076870, -0.176662, 0.981265,
		0.995067, 0.075497, -0.064359,
		-0.062713, 0.981372, 0.181594,
		24.919325, 34.759090, 33.797657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578413, 34.251141, 34.182110>,  <24.963224, 34.072132, 33.670540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578413, 34.251141, 34.182110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291777, 34.529716, 34.197430>,  <25.119795, 34.696861, 34.206623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291777, 34.529716, 34.197430>,  <25.578413, 34.251141, 34.182110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291777, 34.529716, 34.197430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025111, -0.080639, 0.996427,
		0.697043, 0.713068, 0.075273,
		-0.716590, 0.696442, 0.038303,
		25.076799, 34.738647, 34.208920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923315, 34.832466, 34.480515>,  <25.578413, 34.251141, 34.182110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923315, 34.832466, 34.480515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527206, 34.843658, 34.535042>,  <25.289541, 34.850372, 34.567760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.527206, 34.843658, 34.535042>,  <25.923315, 34.832466, 34.480515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.527206, 34.843658, 34.535042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139154, 0.188088, 0.972245,
		0.001560, 0.981754, -0.190151,
		-0.990270, 0.027977, 0.136321,
		25.230125, 34.852051, 34.575939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756119, 35.408913, 34.912041>,  <25.923315, 34.832466, 34.480515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756119, 35.408913, 34.912041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471172, 35.136978, 34.981735>,  <25.300203, 34.973820, 35.023552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471172, 35.136978, 34.981735>,  <25.756119, 35.408913, 34.912041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471172, 35.136978, 34.981735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173082, 0.070417, 0.982387,
		-0.680129, 0.729978, 0.067504,
		-0.712368, -0.679833, 0.174238,
		25.257462, 34.933029, 35.034008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.098724, 35.638691, 35.205292>,  <25.756119, 35.408913, 34.912041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.098724, 35.638691, 35.205292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242695, 35.288315, 35.333778>,  <25.329077, 35.078091, 35.410870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242695, 35.288315, 35.333778>,  <25.098724, 35.638691, 35.205292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242695, 35.288315, 35.333778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059868, 0.321900, 0.944879,
		-0.931059, -0.359315, 0.063418,
		0.359924, -0.875941, 0.321219,
		25.350672, 35.025532, 35.430145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692667, 35.286438, 35.675629>,  <25.098724, 35.638691, 35.205292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692667, 35.286438, 35.675629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021215, 35.095337, 35.800274>,  <25.218344, 34.980675, 35.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.021215, 35.095337, 35.800274>,  <24.692667, 35.286438, 35.675629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021215, 35.095337, 35.800274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242687, 0.201692, 0.948906,
		-0.516193, -0.855028, 0.049720,
		0.821370, -0.477752, 0.311616,
		25.267626, 34.952011, 35.893757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.493839, 34.795467, 36.229122>,  <24.692667, 35.286438, 35.675629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.493839, 34.795467, 36.229122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861416, 34.949280, 36.264191>,  <25.081961, 35.041569, 36.285233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.861416, 34.949280, 36.264191>,  <24.493839, 34.795467, 36.229122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.861416, 34.949280, 36.264191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236922, 0.360491, 0.902172,
		0.315301, -0.849816, 0.422372,
		0.918941, 0.384525, 0.087677,
		25.137098, 35.064640, 36.290493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793848, 34.552345, 36.880600>,  <24.493839, 34.795467, 36.229122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793848, 34.552345, 36.880600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993109, 34.883846, 36.778603>,  <25.112665, 35.082745, 36.717403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993109, 34.883846, 36.778603>,  <24.793848, 34.552345, 36.880600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993109, 34.883846, 36.778603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121549, 0.357920, 0.925807,
		0.858528, -0.430198, 0.279031,
		0.498151, 0.828748, -0.254994,
		25.142555, 35.132469, 36.702103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397678, 34.700027, 37.427853>,  <24.793848, 34.552345, 36.880600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397678, 34.700027, 37.427853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313026, 35.041363, 37.237267>,  <25.262236, 35.246166, 37.122913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313026, 35.041363, 37.237267>,  <25.397678, 34.700027, 37.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313026, 35.041363, 37.237267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104053, 0.465064, 0.879141,
		0.971795, 0.235632, -0.009629,
		-0.211632, 0.853342, -0.476464,
		25.249537, 35.297367, 37.094326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817350, 35.164696, 37.762024>,  <25.397678, 34.700027, 37.427853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817350, 35.164696, 37.762024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546192, 35.387672, 37.570309>,  <25.383497, 35.521458, 37.455280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546192, 35.387672, 37.570309>,  <25.817350, 35.164696, 37.762024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546192, 35.387672, 37.570309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064709, 0.604175, 0.794220,
		0.732307, 0.569411, -0.373495,
		-0.677894, 0.557444, -0.479287,
		25.342825, 35.554905, 37.426521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162165, 35.742657, 37.876808>,  <25.817350, 35.164696, 37.762024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162165, 35.742657, 37.876808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997360, 35.786865, 37.515026>,  <25.898478, 35.813393, 37.297958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997360, 35.786865, 37.515026>,  <26.162165, 35.742657, 37.876808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997360, 35.786865, 37.515026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338241, 0.903140, 0.264444,
		0.846074, 0.414876, -0.334719,
		-0.412010, 0.110523, -0.904451,
		25.873756, 35.820023, 37.243690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374086, 36.399853, 37.635674>,  <26.162165, 35.742657, 37.876808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374086, 36.399853, 37.635674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031610, 36.321430, 37.444466>,  <25.826124, 36.274376, 37.329742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031610, 36.321430, 37.444466>,  <26.374086, 36.399853, 37.635674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031610, 36.321430, 37.444466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254678, 0.965143, 0.060323,
		0.449527, 0.173388, -0.876278,
		-0.856192, -0.196052, -0.478016,
		25.774754, 36.262615, 37.301060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238743, 36.908218, 37.116970>,  <26.374086, 36.399853, 37.635674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238743, 36.908218, 37.116970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884817, 36.760258, 37.230301>,  <25.672462, 36.671482, 37.298302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884817, 36.760258, 37.230301>,  <26.238743, 36.908218, 37.116970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884817, 36.760258, 37.230301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302628, 0.918588, 0.254189,
		-0.354289, 0.139167, -0.924723,
		-0.884814, -0.369903, 0.283330,
		25.619373, 36.649288, 37.315300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835894, 37.418453, 36.841267>,  <26.238743, 36.908218, 37.116970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835894, 37.418453, 36.841267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634663, 37.209774, 37.116875>,  <25.513924, 37.084568, 37.282238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.634663, 37.209774, 37.116875>,  <25.835894, 37.418453, 36.841267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634663, 37.209774, 37.116875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134995, 0.834903, 0.533586,
		-0.853633, 0.175421, -0.490448,
		-0.503078, -0.521694, 0.689020,
		25.483740, 37.053265, 37.323582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235672, 37.838772, 37.113609>,  <25.835894, 37.418453, 36.841267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235672, 37.838772, 37.113609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334824, 37.550785, 37.372902>,  <25.394314, 37.377995, 37.528477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334824, 37.550785, 37.372902>,  <25.235672, 37.838772, 37.113609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334824, 37.550785, 37.372902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015641, 0.672002, 0.740385,
		-0.968665, -0.173387, 0.177836,
		0.247879, -0.719966, 0.648232,
		25.409187, 37.334797, 37.567371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800150, 37.877312, 37.683632>,  <25.235672, 37.838772, 37.113609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800150, 37.877312, 37.683632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152504, 37.712711, 37.777191>,  <25.363916, 37.613953, 37.833328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152504, 37.712711, 37.777191>,  <24.800150, 37.877312, 37.683632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152504, 37.712711, 37.777191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032647, 0.440166, 0.897323,
		-0.472205, -0.798073, 0.374301,
		0.880884, -0.411501, 0.233903,
		25.416769, 37.589260, 37.847363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816498, 37.464127, 38.442719>,  <24.800150, 37.877312, 37.683632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816498, 37.464127, 38.442719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143927, 37.651787, 38.310150>,  <25.340384, 37.764381, 38.230610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143927, 37.651787, 38.310150>,  <24.816498, 37.464127, 38.442719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143927, 37.651787, 38.310150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028130, 0.543552, 0.838904,
		0.573718, -0.696024, 0.431738,
		0.818570, 0.469150, -0.331425,
		25.389498, 37.792530, 38.210724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234222, 36.866287, 38.517982>,  <24.816498, 37.464127, 38.442719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234222, 36.866287, 38.517982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144066, 37.022507, 38.160957>,  <25.089972, 37.116238, 37.946743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144066, 37.022507, 38.160957>,  <25.234222, 36.866287, 38.517982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144066, 37.022507, 38.160957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278728, -0.851998, -0.443182,
		-0.933547, -0.348672, 0.083177,
		-0.225392, 0.390548, -0.892564,
		25.076448, 37.139671, 37.893188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.706429, 36.465202, 38.124973>,  <25.234222, 36.866287, 38.517982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.706429, 36.465202, 38.124973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927193, 36.669750, 37.861492>,  <25.059650, 36.792480, 37.703403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927193, 36.669750, 37.861492>,  <24.706429, 36.465202, 38.124973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927193, 36.669750, 37.861492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097026, -0.823922, -0.558335,
		-0.828239, 0.244239, -0.504348,
		0.551911, 0.511370, -0.658707,
		25.092766, 36.823162, 37.663879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.490606, 36.173092, 37.615837>,  <24.706429, 36.465202, 38.124973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.490606, 36.173092, 37.615837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834154, 36.342800, 37.501057>,  <25.040283, 36.444626, 37.432190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834154, 36.342800, 37.501057>,  <24.490606, 36.173092, 37.615837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834154, 36.342800, 37.501057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155510, -0.749794, -0.643138,
		-0.488016, 0.507747, -0.709953,
		0.858870, 0.424266, -0.286952,
		25.091816, 36.470081, 37.414970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499388, 36.136284, 36.841980>,  <24.490606, 36.173092, 37.615837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499388, 36.136284, 36.841980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.868818, 36.132404, 36.995296>,  <25.090477, 36.130077, 37.087288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.868818, 36.132404, 36.995296>,  <24.499388, 36.136284, 36.841980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.868818, 36.132404, 36.995296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293779, -0.624477, -0.723686,
		0.246379, 0.780983, -0.573902,
		0.923576, -0.009701, 0.383294,
		25.145891, 36.129494, 37.110283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.116039, 36.316143, 36.241413>,  <24.499388, 36.136284, 36.841980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.116039, 36.316143, 36.241413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200001, 36.051807, 36.529644>,  <25.250378, 35.893204, 36.702583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200001, 36.051807, 36.529644>,  <25.116039, 36.316143, 36.241413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200001, 36.051807, 36.529644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471051, -0.577469, -0.666813,
		0.856768, 0.479394, 0.190078,
		0.209902, -0.660841, 0.720576,
		25.262972, 35.853554, 36.745815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818989, 36.155865, 36.294960>,  <25.116039, 36.316143, 36.241413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818989, 36.155865, 36.294960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628756, 35.834648, 36.438591>,  <25.514616, 35.641918, 36.524769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628756, 35.834648, 36.438591>,  <25.818989, 36.155865, 36.294960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628756, 35.834648, 36.438591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483714, -0.579681, -0.655736,
		0.734738, -0.138166, 0.664132,
		-0.475585, -0.803044, 0.359081,
		25.486080, 35.593735, 36.546314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336706, 35.585690, 36.337616>,  <25.818989, 36.155865, 36.294960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336706, 35.585690, 36.337616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974375, 35.417526, 36.316681>,  <25.756977, 35.316628, 36.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974375, 35.417526, 36.316681>,  <26.336706, 35.585690, 36.337616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974375, 35.417526, 36.316681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277031, -0.494336, -0.823945,
		0.320520, -0.760849, 0.564248,
		-0.905826, -0.420405, -0.052334,
		25.702627, 35.291405, 36.300980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491444, 36.228516, 36.059277>,  <26.336706, 35.585690, 36.337616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491444, 36.228516, 36.059277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450237, 36.574490, 35.862801>,  <26.425514, 36.782074, 35.744915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450237, 36.574490, 35.862801>,  <26.491444, 36.228516, 36.059277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450237, 36.574490, 35.862801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912161, -0.114787, -0.393430,
		-0.396675, -0.488576, -0.777138,
		-0.103015, 0.864938, -0.491193,
		26.419333, 36.833969, 35.715443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333408, 36.246193, 35.246231>,  <26.491444, 36.228516, 36.059277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333408, 36.246193, 35.246231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573704, 36.551224, 35.342228>,  <26.717880, 36.734241, 35.399826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573704, 36.551224, 35.342228>,  <26.333408, 36.246193, 35.246231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573704, 36.551224, 35.342228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652854, -0.294693, -0.697809,
		-0.461407, 0.575880, -0.674882,
		0.600738, 0.762573, 0.239992,
		26.753925, 36.779995, 35.414227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473526, 36.656193, 34.682304>,  <26.333408, 36.246193, 35.246231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473526, 36.656193, 34.682304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775608, 36.649811, 34.944424>,  <26.956858, 36.645981, 35.101696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775608, 36.649811, 34.944424>,  <26.473526, 36.656193, 34.682304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775608, 36.649811, 34.944424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599308, -0.388132, -0.700131,
		0.265508, 0.921466, -0.283561,
		0.755206, -0.015950, 0.655294,
		27.002171, 36.645027, 35.141010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174530, 36.618504, 34.342243>,  <26.473526, 36.656193, 34.682304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174530, 36.618504, 34.342243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291275, 36.534554, 34.715504>,  <27.361322, 36.484184, 34.939461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291275, 36.534554, 34.715504>,  <27.174530, 36.618504, 34.342243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291275, 36.534554, 34.715504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633093, -0.688922, -0.352958,
		0.716944, 0.693787, -0.068204,
		0.291865, -0.209872, 0.933150,
		27.378834, 36.471592, 34.995449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929697, 36.708549, 34.498585>,  <27.174530, 36.618504, 34.342243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929697, 36.708549, 34.498585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773918, 36.419426, 34.726929>,  <27.680450, 36.245953, 34.863934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773918, 36.419426, 34.726929>,  <27.929697, 36.708549, 34.498585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773918, 36.419426, 34.726929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674934, -0.645700, -0.357121,
		0.626732, 0.246211, 0.739315,
		-0.389448, -0.722809, 0.570857,
		27.657084, 36.202583, 34.898186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142822, 36.485897, 33.885109>,  <27.929697, 36.708549, 34.498585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142822, 36.485897, 33.885109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541250, 36.450951, 33.879318>,  <28.780308, 36.429981, 33.875843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541250, 36.450951, 33.879318>,  <28.142822, 36.485897, 33.885109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541250, 36.450951, 33.879318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078341, -0.793003, -0.604159,
		0.041302, 0.602920, -0.796732,
		0.996071, -0.087370, -0.014481,
		28.840071, 36.424740, 33.874973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324139, 36.437637, 33.262756>,  <28.142822, 36.485897, 33.885109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324139, 36.437637, 33.262756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527271, 36.168236, 33.477604>,  <28.649151, 36.006596, 33.606514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527271, 36.168236, 33.477604>,  <28.324139, 36.437637, 33.262756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527271, 36.168236, 33.477604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044033, -0.642983, -0.764614,
		0.860331, 0.364643, -0.356183,
		0.507830, -0.673505, 0.537122,
		28.679621, 35.966183, 33.638741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924995, 36.157032, 32.979931>,  <28.324139, 36.437637, 33.262756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924995, 36.157032, 32.979931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915056, 35.865932, 33.254086>,  <28.909092, 35.691273, 33.418579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915056, 35.865932, 33.254086>,  <28.924995, 36.157032, 32.979931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915056, 35.865932, 33.254086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319786, -0.643792, -0.695176,
		0.947164, -0.236453, -0.216726,
		-0.024850, -0.727751, 0.685391,
		28.907600, 35.647606, 33.459702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384306, 35.643875, 32.814827>,  <28.924995, 36.157032, 32.979931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384306, 35.643875, 32.814827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052889, 35.529148, 33.007183>,  <28.854038, 35.460312, 33.122597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052889, 35.529148, 33.007183>,  <29.384306, 35.643875, 32.814827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052889, 35.529148, 33.007183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290259, -0.514431, -0.806914,
		0.478821, -0.808145, 0.342976,
		-0.828541, -0.286816, 0.480891,
		28.804327, 35.443104, 33.151451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788963, 35.248550, 33.335644>,  <29.384306, 35.643875, 32.814827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788963, 35.248550, 33.335644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678917, 35.470840, 33.649456>,  <29.612890, 35.604214, 33.837742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678917, 35.470840, 33.649456>,  <29.788963, 35.248550, 33.335644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678917, 35.470840, 33.649456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958770, 0.098136, 0.266702,
		0.071223, 0.825553, -0.559811,
		-0.275114, 0.555725, 0.784526,
		29.596382, 35.637558, 33.884815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007170, 35.832935, 33.505970>,  <29.788963, 35.248550, 33.335644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007170, 35.832935, 33.505970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237913, 35.798382, 33.181065>,  <30.376360, 35.777649, 32.986122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237913, 35.798382, 33.181065>,  <30.007170, 35.832935, 33.505970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237913, 35.798382, 33.181065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138700, 0.990311, -0.006810,
		0.804981, -0.108733, 0.583252,
		0.576861, -0.086380, -0.812262,
		30.410971, 35.772469, 32.937386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766729, 36.058723, 33.543404>,  <30.007170, 35.832935, 33.505970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766729, 36.058723, 33.543404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616371, 36.089104, 33.173985>,  <30.526155, 36.107330, 32.952335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616371, 36.089104, 33.173985>,  <30.766729, 36.058723, 33.543404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616371, 36.089104, 33.173985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197913, 0.980220, 0.000055,
		0.905280, -0.182760, -0.383492,
		-0.375897, 0.075948, -0.923544,
		30.503603, 36.111889, 32.896923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729622, 35.243893, 33.551414>,  <30.766729, 36.058723, 33.543404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729622, 35.243893, 33.551414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933903, 35.118176, 33.871517>,  <31.056471, 35.042744, 34.063580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933903, 35.118176, 33.871517>,  <30.729622, 35.243893, 33.551414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933903, 35.118176, 33.871517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758162, -0.274297, -0.591567,
		0.405432, 0.908835, 0.098201,
		0.510700, -0.314293, 0.800253,
		31.087112, 35.023888, 34.111591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379955, 35.668804, 33.630867>,  <30.729622, 35.243893, 33.551414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379955, 35.668804, 33.630867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414124, 35.298492, 33.778179>,  <31.434624, 35.076305, 33.866566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414124, 35.298492, 33.778179>,  <31.379955, 35.668804, 33.630867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414124, 35.298492, 33.778179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847025, -0.127158, -0.516119,
		0.524644, 0.356026, 0.773301,
		0.085421, -0.925784, 0.368276,
		31.439751, 35.020756, 33.888660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975586, 35.688549, 33.940464>,  <31.379955, 35.668804, 33.630867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975586, 35.688549, 33.940464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839888, 35.335243, 33.810997>,  <31.758469, 35.123260, 33.733318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839888, 35.335243, 33.810997>,  <31.975586, 35.688549, 33.940464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839888, 35.335243, 33.810997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780238, -0.071992, -0.621326,
		0.525493, -0.463319, 0.713577,
		-0.339244, -0.883262, -0.323668,
		31.738115, 35.070263, 33.713898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625492, 35.440880, 33.664085>,  <31.975586, 35.688549, 33.940464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625492, 35.440880, 33.664085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332577, 35.216553, 33.509560>,  <32.156830, 35.081955, 33.416843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332577, 35.216553, 33.509560>,  <32.625492, 35.440880, 33.664085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332577, 35.216553, 33.509560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606890, -0.280080, -0.743801,
		0.308936, -0.779127, 0.545453,
		-0.732286, -0.560817, -0.386318,
		32.112892, 35.048309, 33.393665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895592, 34.699001, 33.387917>,  <32.625492, 35.440880, 33.664085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895592, 34.699001, 33.387917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549057, 34.786388, 33.208256>,  <32.341137, 34.838821, 33.100460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549057, 34.786388, 33.208256>,  <32.895592, 34.699001, 33.387917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549057, 34.786388, 33.208256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389215, -0.268270, -0.881217,
		-0.313013, -0.938244, 0.147380,
		-0.866334, 0.218470, -0.449151,
		32.289158, 34.851929, 33.073509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569187, 34.181908, 33.005058>,  <32.895592, 34.699001, 33.387917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569187, 34.181908, 33.005058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472137, 34.530846, 32.835278>,  <32.413910, 34.740208, 32.733410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472137, 34.530846, 32.835278>,  <32.569187, 34.181908, 33.005058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472137, 34.530846, 32.835278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446273, -0.288121, -0.847247,
		-0.861380, -0.394980, -0.319398,
		-0.242620, 0.872341, -0.424450,
		32.399353, 34.792549, 32.707943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136799, 34.070137, 32.432240>,  <32.569187, 34.181908, 33.005058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136799, 34.070137, 32.432240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322933, 34.415855, 32.355858>,  <32.434612, 34.623287, 32.310028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322933, 34.415855, 32.355858>,  <32.136799, 34.070137, 32.432240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322933, 34.415855, 32.355858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367717, -0.384997, -0.846499,
		-0.805139, 0.323689, -0.496968,
		0.465333, 0.864293, -0.190950,
		32.462532, 34.675144, 32.298573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991682, 34.160645, 31.824936>,  <32.136799, 34.070137, 32.432240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991682, 34.160645, 31.824936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308266, 34.401844, 31.864906>,  <32.498215, 34.546562, 31.888889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308266, 34.401844, 31.864906>,  <31.991682, 34.160645, 31.824936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308266, 34.401844, 31.864906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388121, -0.369511, -0.844289,
		-0.472180, 0.707005, -0.526489,
		0.791460, 0.602998, 0.099928,
		32.545704, 34.582745, 31.894884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074703, 34.597778, 31.225325>,  <31.991682, 34.160645, 31.824936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074703, 34.597778, 31.225325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434418, 34.579212, 31.399282>,  <32.650246, 34.568073, 31.503656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434418, 34.579212, 31.399282>,  <32.074703, 34.597778, 31.225325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434418, 34.579212, 31.399282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347082, -0.529298, -0.774195,
		0.266122, 0.847165, -0.459881,
		0.899285, -0.046413, 0.434894,
		32.704205, 34.565289, 31.529751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568169, 34.778191, 30.658796>,  <32.074703, 34.597778, 31.225325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568169, 34.778191, 30.658796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772007, 34.580456, 30.940491>,  <32.894310, 34.461815, 31.109507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772007, 34.580456, 30.940491>,  <32.568169, 34.778191, 30.658796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772007, 34.580456, 30.940491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384097, -0.601706, -0.700300,
		0.769926, 0.627362, -0.116752,
		0.509592, -0.494335, 0.704237,
		32.924885, 34.432156, 31.151762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267170, 34.756954, 30.352047>,  <32.568169, 34.778191, 30.658796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267170, 34.756954, 30.352047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297413, 34.466515, 30.625416>,  <33.315559, 34.292252, 30.789438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297413, 34.466515, 30.625416>,  <33.267170, 34.756954, 30.352047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297413, 34.466515, 30.625416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494719, -0.567765, -0.657949,
		0.865758, 0.387850, 0.316284,
		0.075611, -0.726096, 0.683424,
		33.320095, 34.248688, 30.830442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008003, 34.599716, 30.384317>,  <33.267170, 34.756954, 30.352047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008003, 34.599716, 30.384317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795872, 34.292004, 30.526838>,  <33.668591, 34.107376, 30.612350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795872, 34.292004, 30.526838>,  <34.008003, 34.599716, 30.384317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795872, 34.292004, 30.526838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541961, -0.630814, -0.555295,
		0.651939, -0.101388, 0.751462,
		-0.530333, -0.769282, 0.356304,
		33.636772, 34.061218, 30.633730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519184, 33.994339, 30.616472>,  <34.008003, 34.599716, 30.384317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519184, 33.994339, 30.616472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149998, 33.856026, 30.548855>,  <33.928486, 33.773037, 30.508284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149998, 33.856026, 30.548855>,  <34.519184, 33.994339, 30.616472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149998, 33.856026, 30.548855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371141, -0.683222, -0.628859,
		0.101952, -0.643152, 0.758921,
		-0.922963, -0.345780, -0.169044,
		33.873108, 33.752293, 30.498142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673477, 33.336452, 30.536102>,  <34.519184, 33.994339, 30.616472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673477, 33.336452, 30.536102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316643, 33.368870, 30.358288>,  <34.102543, 33.388321, 30.251598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316643, 33.368870, 30.358288>,  <34.673477, 33.336452, 30.536102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316643, 33.368870, 30.358288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249187, -0.732434, -0.633598,
		-0.376945, -0.675997, 0.633199,
		-0.892086, 0.081047, -0.444537,
		34.049015, 33.393185, 30.224926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468624, 32.693348, 30.441534>,  <34.673477, 33.336452, 30.536102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468624, 32.693348, 30.441534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238865, 32.881737, 30.173729>,  <34.101009, 32.994770, 30.013046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238865, 32.881737, 30.173729>,  <34.468624, 32.693348, 30.441534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238865, 32.881737, 30.173729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209826, -0.705861, -0.676560,
		-0.791227, -0.529096, 0.306623,
		-0.574399, 0.470975, -0.669515,
		34.066544, 33.023029, 29.972874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094967, 32.151623, 30.091555>,  <34.468624, 32.693348, 30.441534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094967, 32.151623, 30.091555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096867, 32.473156, 29.853621>,  <34.098007, 32.666077, 29.710859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096867, 32.473156, 29.853621>,  <34.094967, 32.151623, 30.091555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096867, 32.473156, 29.853621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180258, -0.585786, -0.790166,
		-0.983608, -0.103470, -0.147680,
		0.004751, 0.803834, -0.594835,
		34.098293, 32.714306, 29.675171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184498, 31.865391, 29.481375>,  <34.094967, 32.151623, 30.091555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184498, 31.865391, 29.481375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243813, 32.241207, 29.357910>,  <34.279400, 32.466698, 29.283831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243813, 32.241207, 29.357910>,  <34.184498, 31.865391, 29.481375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243813, 32.241207, 29.357910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486888, -0.341024, -0.804141,
		-0.860785, -0.031038, -0.508021,
		0.148288, 0.939542, -0.308661,
		34.288300, 32.523071, 29.265312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979630, 31.918243, 28.795021>,  <34.184498, 31.865391, 29.481375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979630, 31.918243, 28.795021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245487, 32.214287, 28.835979>,  <34.405003, 32.391914, 28.860554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245487, 32.214287, 28.835979>,  <33.979630, 31.918243, 28.795021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245487, 32.214287, 28.835979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458264, -0.295566, -0.838233,
		-0.590119, 0.604053, -0.535612,
		0.664646, 0.740109, 0.102396,
		34.444881, 32.436321, 28.866699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191570, 32.072292, 28.042841>,  <33.979630, 31.918243, 28.795021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191570, 32.072292, 28.042841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461811, 32.265583, 28.265574>,  <34.623955, 32.381557, 28.399212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461811, 32.265583, 28.265574>,  <34.191570, 32.072292, 28.042841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461811, 32.265583, 28.265574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604027, 0.070285, -0.793858,
		-0.422750, 0.872670, -0.244397,
		0.675599, 0.483226, 0.556829,
		34.664490, 32.410549, 28.432623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331627, 32.817318, 27.780462>,  <34.191570, 32.072292, 28.042841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331627, 32.817318, 27.780462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656200, 32.670021, 27.962004>,  <34.850945, 32.581642, 28.070929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656200, 32.670021, 27.962004>,  <34.331627, 32.817318, 27.780462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656200, 32.670021, 27.962004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567313, 0.309591, -0.763092,
		0.140492, 0.876672, 0.460118,
		0.811429, -0.368240, 0.453852,
		34.899628, 32.559547, 28.098160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962730, 33.296173, 27.641590>,  <34.331627, 32.817318, 27.780462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962730, 33.296173, 27.641590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107338, 32.933640, 27.729105>,  <35.194103, 32.716122, 27.781614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107338, 32.933640, 27.729105>,  <34.962730, 33.296173, 27.641590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107338, 32.933640, 27.729105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677808, 0.094348, -0.729160,
		0.640218, 0.411903, 0.648427,
		0.361521, -0.906330, 0.218788,
		35.215794, 32.661739, 27.794741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582584, 33.433617, 27.311951>,  <34.962730, 33.296173, 27.641590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582584, 33.433617, 27.311951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610874, 33.046291, 27.407751>,  <35.627850, 32.813896, 27.465231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610874, 33.046291, 27.407751>,  <35.582584, 33.433617, 27.311951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610874, 33.046291, 27.407751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599497, -0.150636, -0.786074,
		0.797246, 0.199178, 0.569848,
		0.070729, -0.968317, 0.239500,
		35.632092, 32.755795, 27.479601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341724, 33.264408, 27.492807>,  <35.582584, 33.433617, 27.311951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341724, 33.264408, 27.492807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097210, 32.982819, 27.348171>,  <35.950500, 32.813866, 27.261389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097210, 32.982819, 27.348171>,  <36.341724, 33.264408, 27.492807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097210, 32.982819, 27.348171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590176, -0.101080, -0.800921,
		0.527282, -0.702992, 0.477259,
		-0.611283, -0.703978, -0.361591,
		35.913826, 32.771626, 27.239695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676804, 33.214458, 26.981228>,  <36.341724, 33.264408, 27.492807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676804, 33.214458, 26.981228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416916, 32.919182, 26.908625>,  <36.260983, 32.742016, 26.865063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416916, 32.919182, 26.908625>,  <36.676804, 33.214458, 26.981228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416916, 32.919182, 26.908625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500820, -0.236035, -0.832747,
		0.571883, -0.631951, 0.523056,
		-0.649715, -0.738191, -0.181509,
		36.222000, 32.697723, 26.854172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034985, 32.643646, 26.904623>,  <36.676804, 33.214458, 26.981228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034985, 32.643646, 26.904623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689941, 32.591496, 26.709112>,  <36.482914, 32.560207, 26.591805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689941, 32.591496, 26.709112>,  <37.034985, 32.643646, 26.904623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689941, 32.591496, 26.709112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505598, -0.190649, -0.841442,
		0.016519, -0.972962, 0.230373,
		-0.862612, -0.130376, -0.488778,
		36.431156, 32.552383, 26.562479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190208, 32.145164, 26.440527>,  <37.034985, 32.643646, 26.904623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190208, 32.145164, 26.440527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852257, 32.310040, 26.304131>,  <36.649487, 32.408962, 26.222292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852257, 32.310040, 26.304131>,  <37.190208, 32.145164, 26.440527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852257, 32.310040, 26.304131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348501, -0.059508, -0.935418,
		-0.405858, -0.909155, -0.093370,
		-0.844883, 0.412186, -0.340993,
		36.598793, 32.433697, 26.201834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055767, 31.754557, 25.806803>,  <37.190208, 32.145164, 26.440527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055767, 31.754557, 25.806803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813114, 32.066769, 25.746445>,  <36.667522, 32.254097, 25.710230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813114, 32.066769, 25.746445>,  <37.055767, 31.754557, 25.806803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813114, 32.066769, 25.746445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171097, -0.057178, -0.983594,
		-0.776351, -0.622499, -0.098860,
		-0.606634, 0.780529, -0.150897,
		36.631123, 32.300926, 25.701176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646431, 31.549259, 25.329506>,  <37.055767, 31.754557, 25.806803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646431, 31.549259, 25.329506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642136, 31.949173, 25.322443>,  <36.639557, 32.189121, 25.318205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642136, 31.949173, 25.322443>,  <36.646431, 31.549259, 25.329506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642136, 31.949173, 25.322443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139577, -0.015985, -0.990082,
		-0.990153, -0.013101, -0.139375,
		-0.010743, 0.999786, -0.017657,
		36.638912, 32.249107, 25.317146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145229, 31.795458, 24.861837>,  <36.646431, 31.549259, 25.329506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145229, 31.795458, 24.861837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399029, 32.102837, 24.895067>,  <36.551308, 32.287266, 24.915005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399029, 32.102837, 24.895067>,  <36.145229, 31.795458, 24.861837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399029, 32.102837, 24.895067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239999, -0.093705, -0.966240,
		-0.734720, 0.633014, -0.243882,
		0.634497, 0.768448, 0.083076,
		36.589378, 32.333370, 24.919991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180153, 32.147339, 24.227005>,  <36.145229, 31.795458, 24.861837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180153, 32.147339, 24.227005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501209, 32.307159, 24.404150>,  <36.693844, 32.403053, 24.510437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501209, 32.307159, 24.404150>,  <36.180153, 32.147339, 24.227005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501209, 32.307159, 24.404150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517336, -0.096786, -0.850292,
		-0.296875, 0.911586, -0.284388,
		0.802639, 0.399554, 0.442863,
		36.742001, 32.427025, 24.537008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386959, 32.651955, 23.792507>,  <36.180153, 32.147339, 24.227005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386959, 32.651955, 23.792507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721157, 32.587631, 24.002687>,  <36.921677, 32.549038, 24.128796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721157, 32.587631, 24.002687>,  <36.386959, 32.651955, 23.792507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721157, 32.587631, 24.002687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525765, -0.044089, -0.849486,
		0.159771, 0.986000, 0.047712,
		0.835490, -0.160809, 0.525449,
		36.971806, 32.539387, 24.160322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828957, 33.099903, 23.536070>,  <36.386959, 32.651955, 23.792507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828957, 33.099903, 23.536070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041523, 32.821548, 23.729292>,  <37.169064, 32.654537, 23.845224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041523, 32.821548, 23.729292>,  <36.828957, 33.099903, 23.536070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041523, 32.821548, 23.729292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566533, -0.131995, -0.813399,
		0.629793, 0.705919, 0.324098,
		0.531414, -0.695885, 0.483056,
		37.200947, 32.612782, 23.874208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595562, 33.352535, 23.366301>,  <36.828957, 33.099903, 23.536070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595562, 33.352535, 23.366301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603634, 32.970230, 23.483681>,  <37.608479, 32.740849, 23.554110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603634, 32.970230, 23.483681>,  <37.595562, 33.352535, 23.366301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603634, 32.970230, 23.483681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791468, -0.164061, -0.588781,
		0.610878, 0.244141, 0.753142,
		0.020184, -0.955761, 0.293451,
		37.609688, 32.683502, 23.571716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296417, 33.232262, 23.493261>,  <37.595562, 33.352535, 23.366301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296417, 33.232262, 23.493261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136391, 32.867874, 23.453112>,  <38.040375, 32.649242, 23.429022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136391, 32.867874, 23.453112>,  <38.296417, 33.232262, 23.493261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136391, 32.867874, 23.453112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797959, -0.292364, -0.527053,
		0.450784, -0.290954, 0.843884,
		-0.400069, -0.910971, -0.100376,
		38.016369, 32.594582, 23.422998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871445, 32.731506, 23.629671>,  <38.296417, 33.232262, 23.493261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871445, 32.731506, 23.629671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585396, 32.554600, 23.413153>,  <38.413765, 32.448456, 23.283241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585396, 32.554600, 23.413153>,  <38.871445, 32.731506, 23.629671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585396, 32.554600, 23.413153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694637, -0.536022, -0.479750,
		-0.077968, -0.719084, 0.690536,
		-0.715123, -0.442266, -0.541295,
		38.370857, 32.421921, 23.250765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097992, 32.094536, 23.583115>,  <38.871445, 32.731506, 23.629671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097992, 32.094536, 23.583115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834305, 32.144848, 23.286572>,  <38.676094, 32.175034, 23.108644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834305, 32.144848, 23.286572>,  <39.097992, 32.094536, 23.583115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834305, 32.144848, 23.286572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590510, -0.523799, -0.613949,
		-0.465544, -0.842505, 0.271024,
		-0.659217, 0.125778, -0.741359,
		38.636539, 32.182583, 23.064163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214745, 31.543764, 23.256041>,  <39.097992, 32.094536, 23.583115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214745, 31.543764, 23.256041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016323, 31.767876, 22.990704>,  <38.897270, 31.902342, 22.831501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016323, 31.767876, 22.990704>,  <39.214745, 31.543764, 23.256041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016323, 31.767876, 22.990704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561370, -0.375880, -0.737277,
		-0.662417, -0.738107, -0.128067,
		-0.496052, 0.560279, -0.663341,
		38.867508, 31.935959, 22.791702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363338, 31.205082, 22.688263>,  <39.214745, 31.543764, 23.256041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363338, 31.205082, 22.688263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224209, 31.552505, 22.547056>,  <39.140732, 31.760960, 22.462332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224209, 31.552505, 22.547056>,  <39.363338, 31.205082, 22.688263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224209, 31.552505, 22.547056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520053, -0.134556, -0.843469,
		-0.780103, -0.476968, -0.404895,
		-0.347827, 0.868560, -0.353016,
		39.119862, 31.813074, 22.441151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057407, 31.117325, 21.932180>,  <39.363338, 31.205082, 22.688263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057407, 31.117325, 21.932180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161629, 31.498919, 21.991541>,  <39.224163, 31.727875, 22.027157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161629, 31.498919, 21.991541>,  <39.057407, 31.117325, 21.932180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161629, 31.498919, 21.991541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453605, 0.014726, -0.891081,
		-0.852265, 0.299488, -0.428896,
		0.260553, 0.953986, 0.148400,
		39.239796, 31.785114, 22.036060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056362, 31.397512, 21.254261>,  <39.057407, 31.117325, 21.932180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056362, 31.397512, 21.254261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285378, 31.651484, 21.461744>,  <39.422787, 31.803867, 21.586235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285378, 31.651484, 21.461744>,  <39.056362, 31.397512, 21.254261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285378, 31.651484, 21.461744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594302, 0.114437, -0.796058,
		-0.564800, 0.764048, -0.311820,
		0.572543, 0.634929, 0.518710,
		39.457142, 31.841963, 21.617357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276051, 32.031094, 20.804522>,  <39.056362, 31.397512, 21.254261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276051, 32.031094, 20.804522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558136, 32.046078, 21.087723>,  <39.727386, 32.055069, 21.257643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558136, 32.046078, 21.087723>,  <39.276051, 32.031094, 20.804522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558136, 32.046078, 21.087723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701328, 0.109596, -0.704364,
		-0.103981, 0.993270, 0.051015,
		0.705215, 0.037462, 0.708004,
		39.769699, 32.057316, 21.300123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642689, 32.713707, 20.726059>,  <39.276051, 32.031094, 20.804522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642689, 32.713707, 20.726059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860050, 32.436291, 20.915255>,  <39.990467, 32.269840, 21.028772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.860050, 32.436291, 20.915255>,  <39.642689, 32.713707, 20.726059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860050, 32.436291, 20.915255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760023, 0.167193, -0.628022,
		0.356476, 0.700752, 0.617958,
		0.543405, -0.693537, 0.472987,
		40.023071, 32.228230, 21.057150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221832, 33.085251, 20.923496>,  <39.642689, 32.713707, 20.726059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221832, 33.085251, 20.923496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322392, 32.698788, 20.946629>,  <40.382729, 32.466911, 20.960508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322392, 32.698788, 20.946629>,  <40.221832, 33.085251, 20.923496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322392, 32.698788, 20.946629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875265, 0.201433, -0.439700,
		0.413169, 0.161158, 0.896281,
		0.251402, -0.966154, 0.057830,
		40.397812, 32.408943, 20.963978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916515, 33.086006, 21.303724>,  <40.221832, 33.085251, 20.923496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916515, 33.086006, 21.303724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871407, 32.737770, 21.112162>,  <40.844341, 32.528828, 20.997225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871407, 32.737770, 21.112162>,  <40.916515, 33.086006, 21.303724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871407, 32.737770, 21.112162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871870, 0.144472, -0.467943,
		0.476576, -0.470316, 0.742750,
		-0.112775, -0.870592, -0.478906,
		40.837574, 32.476593, 20.968491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475163, 32.722080, 21.411779>,  <40.916515, 33.086006, 21.303724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475163, 32.722080, 21.411779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338509, 32.549896, 21.077597>,  <41.256516, 32.446587, 20.877087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338509, 32.549896, 21.077597>,  <41.475163, 32.722080, 21.411779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338509, 32.549896, 21.077597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861443, 0.211998, -0.461490,
		0.375767, -0.877362, 0.298388,
		-0.341636, -0.430457, -0.835459,
		41.236019, 32.420757, 20.826960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956604, 32.286701, 21.259962>,  <41.475163, 32.722080, 21.411779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956604, 32.286701, 21.259962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745800, 32.339203, 20.924097>,  <41.619316, 32.370705, 20.722578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745800, 32.339203, 20.924097>,  <41.956604, 32.286701, 21.259962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745800, 32.339203, 20.924097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849441, 0.050321, -0.525279,
		-0.026693, -0.990070, -0.138013,
		-0.527009, 0.131256, -0.839663,
		41.587696, 32.378578, 20.672197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256588, 31.904699, 20.725668>,  <41.956604, 32.286701, 21.259962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256588, 31.904699, 20.725668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035938, 32.170425, 20.523914>,  <41.903549, 32.329861, 20.402863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035938, 32.170425, 20.523914>,  <42.256588, 31.904699, 20.725668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035938, 32.170425, 20.523914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795602, 0.237480, -0.557333,
		-0.250463, -0.708725, -0.659528,
		-0.551620, 0.664314, -0.504383,
		41.870453, 32.369720, 20.372599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450775, 31.778847, 19.968481>,  <42.256588, 31.904699, 20.725668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450775, 31.778847, 19.968481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295780, 32.143295, 20.024641>,  <42.202782, 32.361965, 20.058336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295780, 32.143295, 20.024641>,  <42.450775, 31.778847, 19.968481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295780, 32.143295, 20.024641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834729, 0.411403, -0.366027,
		-0.391255, -0.024636, -0.919952,
		-0.387489, 0.911120, 0.140399,
		42.179535, 32.416630, 20.066761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340912, 31.963652, 19.302065>,  <42.450775, 31.778847, 19.968481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340912, 31.963652, 19.302065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439121, 32.241268, 19.572775>,  <42.498047, 32.407837, 19.735201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439121, 32.241268, 19.572775>,  <42.340912, 31.963652, 19.302065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439121, 32.241268, 19.572775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814182, 0.231282, -0.532556,
		-0.526143, 0.681771, -0.508293,
		0.245523, 0.694044, 0.676773,
		42.512779, 32.449482, 19.775806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409061, 32.592934, 18.914751>,  <42.340912, 31.963652, 19.302065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409061, 32.592934, 18.914751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639618, 32.600811, 19.241528>,  <42.777950, 32.605537, 19.437593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639618, 32.600811, 19.241528>,  <42.409061, 32.592934, 18.914751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639618, 32.600811, 19.241528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789319, 0.245388, -0.562814,
		-0.211551, 0.969225, 0.125894,
		0.576387, 0.019694, 0.816940,
		42.812534, 32.606720, 19.486610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859264, 33.067257, 18.783638>,  <42.409061, 32.592934, 18.914751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859264, 33.067257, 18.783638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047558, 32.839031, 19.052822>,  <43.160534, 32.702095, 19.214333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047558, 32.839031, 19.052822>,  <42.859264, 33.067257, 18.783638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047558, 32.839031, 19.052822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862808, 0.138354, -0.486230,
		0.184317, 0.809518, 0.557412,
		0.470733, -0.570560, 0.672958,
		43.188778, 32.667862, 19.254709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109722, 33.640038, 18.399036>,  <42.859264, 33.067257, 18.783638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109722, 33.640038, 18.399036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436268, 33.849640, 18.496168>,  <43.632195, 33.975403, 18.554447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436268, 33.849640, 18.496168>,  <43.109722, 33.640038, 18.399036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436268, 33.849640, 18.496168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577314, 0.728631, 0.368517,
		0.016172, -0.441033, 0.897345,
		0.816362, 0.524010, 0.242831,
		43.681175, 34.006844, 18.569017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.148170, 33.851803, 19.096573>,  <43.109722, 33.640038, 18.399036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.148170, 33.851803, 19.096573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333076, 34.157814, 18.917217>,  <43.444019, 34.341419, 18.809603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333076, 34.157814, 18.917217>,  <43.148170, 33.851803, 19.096573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333076, 34.157814, 18.917217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631685, 0.638973, 0.438962,
		0.622323, 0.080323, 0.778628,
		0.462264, 0.765024, -0.448386,
		43.471756, 34.387321, 18.782700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272163, 34.418987, 19.594168>,  <43.148170, 33.851803, 19.096573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272163, 34.418987, 19.594168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261322, 34.613739, 19.244949>,  <43.254818, 34.730591, 19.035418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261322, 34.613739, 19.244949>,  <43.272163, 34.418987, 19.594168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261322, 34.613739, 19.244949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568997, 0.710565, 0.413932,
		0.821893, 0.507980, 0.257776,
		-0.027103, 0.486882, -0.873048,
		43.253193, 34.759804, 18.983036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595211, 35.098530, 19.696365>,  <43.272163, 34.418987, 19.594168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595211, 35.098530, 19.696365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315453, 35.104561, 19.410536>,  <43.147598, 35.108181, 19.239038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315453, 35.104561, 19.410536>,  <43.595211, 35.098530, 19.696365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315453, 35.104561, 19.410536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476341, 0.735542, 0.481744,
		0.532864, 0.677312, -0.507252,
		-0.699396, 0.015079, -0.714575,
		43.105633, 35.109085, 19.196163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404755, 35.794888, 19.674582>,  <43.595211, 35.098530, 19.696365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404755, 35.794888, 19.674582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106377, 35.571285, 19.529760>,  <42.927349, 35.437126, 19.442867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106377, 35.571285, 19.529760>,  <43.404755, 35.794888, 19.674582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106377, 35.571285, 19.529760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665776, 0.640167, 0.383311,
		0.017502, 0.526975, -0.849700,
		-0.745946, -0.559002, -0.362052,
		42.882591, 35.403584, 19.421144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969906, 36.202824, 19.261866>,  <43.404755, 35.794888, 19.674582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969906, 36.202824, 19.261866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750328, 35.921890, 19.443142>,  <42.618580, 35.753330, 19.551908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750328, 35.921890, 19.443142>,  <42.969906, 36.202824, 19.261866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750328, 35.921890, 19.443142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661496, 0.696476, 0.278107,
		-0.510962, -0.147119, -0.846920,
		-0.548944, -0.702337, 0.453191,
		42.585644, 35.711189, 19.579100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265110, 36.287125, 19.114069>,  <42.969906, 36.202824, 19.261866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265110, 36.287125, 19.114069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256317, 36.068420, 19.448870>,  <42.251041, 35.937199, 19.649750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256317, 36.068420, 19.448870>,  <42.265110, 36.287125, 19.114069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256317, 36.068420, 19.448870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675952, 0.624974, 0.390507,
		-0.736618, -0.557188, -0.383322,
		-0.021981, -0.546762, 0.837000,
		42.249722, 35.904392, 19.699970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147762, 35.534985, 19.253117>,  <42.265110, 36.287125, 19.114069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147762, 35.534985, 19.253117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090919, 35.192699, 19.452141>,  <42.056812, 34.987328, 19.571556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090919, 35.192699, 19.452141>,  <42.147762, 35.534985, 19.253117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090919, 35.192699, 19.452141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318280, 0.515471, 0.795605,
		-0.937285, -0.045301, -0.345609,
		-0.142109, -0.855709, 0.497561,
		42.048286, 34.935986, 19.601410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419296, 35.530811, 19.575901>,  <42.147762, 35.534985, 19.253117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419296, 35.530811, 19.575901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669090, 35.284405, 19.767960>,  <41.818970, 35.136562, 19.883196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669090, 35.284405, 19.767960>,  <41.419296, 35.530811, 19.575901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669090, 35.284405, 19.767960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293527, 0.384587, 0.875177,
		-0.723778, -0.687475, 0.059355,
		0.624490, -0.616012, 0.480148,
		41.856438, 35.099602, 19.912004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928146, 35.206223, 20.120855>,  <41.419296, 35.530811, 19.575901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928146, 35.206223, 20.120855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302208, 35.138702, 20.245434>,  <41.526646, 35.098190, 20.320181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302208, 35.138702, 20.245434>,  <40.928146, 35.206223, 20.120855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302208, 35.138702, 20.245434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256163, 0.285049, 0.923649,
		-0.244691, -0.943532, 0.223323,
		0.935151, -0.168801, 0.311447,
		41.582752, 35.088062, 20.338867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843288, 34.884048, 20.862770>,  <40.928146, 35.206223, 20.120855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843288, 34.884048, 20.862770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218399, 35.018173, 20.826660>,  <41.443466, 35.098648, 20.804995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218399, 35.018173, 20.826660>,  <40.843288, 34.884048, 20.862770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218399, 35.018173, 20.826660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023078, 0.319581, 0.947278,
		0.346491, -0.886244, 0.307432,
		0.937769, 0.335318, -0.090280,
		41.499729, 35.118767, 20.799578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292297, 34.550915, 21.391220>,  <40.843288, 34.884048, 20.862770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292297, 34.550915, 21.391220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462040, 34.889229, 21.261877>,  <41.563885, 35.092216, 21.184271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462040, 34.889229, 21.261877>,  <41.292297, 34.550915, 21.391220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462040, 34.889229, 21.261877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021955, 0.366612, 0.930115,
		0.905227, -0.387605, 0.174146,
		0.424361, 0.845788, -0.323357,
		41.589348, 35.142967, 21.164869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587959, 34.729252, 22.020227>,  <41.292297, 34.550915, 21.391220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587959, 34.729252, 22.020227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585495, 35.057636, 21.791845>,  <41.584015, 35.254665, 21.654816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585495, 35.057636, 21.791845>,  <41.587959, 34.729252, 22.020227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585495, 35.057636, 21.791845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042385, 0.570239, 0.820385,
		0.999082, 0.029254, 0.031283,
		-0.006160, 0.820958, -0.570956,
		41.583649, 35.303925, 21.620558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040314, 35.205437, 22.330286>,  <41.587959, 34.729252, 22.020227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040314, 35.205437, 22.330286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824356, 35.465137, 22.116001>,  <41.694782, 35.620960, 21.987431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824356, 35.465137, 22.116001>,  <42.040314, 35.205437, 22.330286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824356, 35.465137, 22.116001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080037, 0.593957, 0.800506,
		0.837921, 0.475063, -0.268708,
		-0.539891, 0.649254, -0.535712,
		41.662388, 35.659912, 21.955288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251190, 35.873421, 22.633522>,  <42.040314, 35.205437, 22.330286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251190, 35.873421, 22.633522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912476, 35.939110, 22.431145>,  <41.709248, 35.978523, 22.309719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912476, 35.939110, 22.431145>,  <42.251190, 35.873421, 22.633522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912476, 35.939110, 22.431145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322751, 0.597430, 0.734104,
		0.422824, 0.784925, -0.452894,
		-0.846789, 0.164225, -0.505943,
		41.658440, 35.988377, 22.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139805, 36.559231, 22.716169>,  <42.251190, 35.873421, 22.633522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139805, 36.559231, 22.716169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788246, 36.382896, 22.643274>,  <41.577312, 36.277096, 22.599537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788246, 36.382896, 22.643274>,  <42.139805, 36.559231, 22.716169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788246, 36.382896, 22.643274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389226, 0.441886, 0.808232,
		-0.275771, 0.781281, -0.559956,
		-0.878893, -0.440836, -0.182235,
		41.524578, 36.250645, 22.588604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590385, 37.139500, 22.654339>,  <42.139805, 36.559231, 22.716169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590385, 37.139500, 22.654339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445198, 36.784706, 22.768536>,  <41.358086, 36.571831, 22.837053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445198, 36.784706, 22.768536>,  <41.590385, 37.139500, 22.654339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445198, 36.784706, 22.768536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485867, 0.441600, 0.754270,
		-0.795102, 0.135064, -0.591245,
		-0.362968, -0.886988, 0.285493,
		41.336308, 36.518608, 22.854183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049252, 37.369743, 23.113308>,  <41.590385, 37.139500, 22.654339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049252, 37.369743, 23.113308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068569, 36.971848, 23.149454>,  <41.080162, 36.733112, 23.171143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068569, 36.971848, 23.149454>,  <41.049252, 37.369743, 23.113308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068569, 36.971848, 23.149454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475441, 0.056669, 0.877920,
		-0.878421, -0.085366, -0.470201,
		0.048298, -0.994737, 0.090366,
		41.083057, 36.673428, 23.176563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439789, 37.162300, 23.380333>,  <41.049252, 37.369743, 23.113308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439789, 37.162300, 23.380333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669117, 36.846840, 23.469179>,  <40.806713, 36.657562, 23.522488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669117, 36.846840, 23.469179>,  <40.439789, 37.162300, 23.380333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669117, 36.846840, 23.469179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501283, -0.123196, 0.856468,
		-0.648093, -0.602369, -0.465969,
		0.573316, -0.788653, 0.222115,
		40.841110, 36.610245, 23.535814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008530, 36.661995, 23.503202>,  <40.439789, 37.162300, 23.380333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008530, 36.661995, 23.503202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347675, 36.561710, 23.690084>,  <40.551163, 36.501541, 23.802214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347675, 36.561710, 23.690084>,  <40.008530, 36.661995, 23.503202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347675, 36.561710, 23.690084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529921, -0.371096, 0.762542,
		-0.017797, -0.894110, -0.447493,
		0.847860, -0.250707, 0.467204,
		40.602032, 36.486500, 23.830246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843498, 36.024029, 23.790852>,  <40.008530, 36.661995, 23.503202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843498, 36.024029, 23.790852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161034, 36.166256, 23.988190>,  <40.351555, 36.251595, 24.106592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161034, 36.166256, 23.988190>,  <39.843498, 36.024029, 23.790852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161034, 36.166256, 23.988190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378754, -0.345608, 0.858546,
		0.475777, -0.868404, -0.139684,
		0.793840, 0.355570, 0.493344,
		40.399185, 36.272926, 24.136192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901245, 35.592915, 24.398693>,  <39.843498, 36.024029, 23.790852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901245, 35.592915, 24.398693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115677, 35.914967, 24.500189>,  <40.244335, 36.108200, 24.561087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115677, 35.914967, 24.500189>,  <39.901245, 35.592915, 24.398693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115677, 35.914967, 24.500189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353012, -0.059230, 0.933742,
		0.766815, -0.590130, 0.252469,
		0.536075, 0.805132, 0.253742,
		40.276501, 36.156506, 24.576311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155533, 35.380241, 25.030067>,  <39.901245, 35.592915, 24.398693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155533, 35.380241, 25.030067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210606, 35.776379, 25.036484>,  <40.243649, 36.014061, 25.040335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210606, 35.776379, 25.036484>,  <40.155533, 35.380241, 25.030067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210606, 35.776379, 25.036484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440796, 0.046762, 0.896388,
		0.886984, -0.130491, 0.442979,
		0.137686, 0.990346, 0.016043,
		40.251911, 36.073483, 25.041296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256783, 35.596691, 25.743931>,  <40.155533, 35.380241, 25.030067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256783, 35.596691, 25.743931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139248, 35.923103, 25.544830>,  <40.068726, 36.118950, 25.425369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139248, 35.923103, 25.544830>,  <40.256783, 35.596691, 25.743931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139248, 35.923103, 25.544830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818179, 0.054519, 0.572373,
		0.494210, 0.575433, 0.651638,
		-0.293836, 0.816029, -0.497751,
		40.051098, 36.167912, 25.395504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225197, 36.106998, 26.248407>,  <40.256783, 35.596691, 25.743931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225197, 36.106998, 26.248407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987934, 36.230537, 25.951012>,  <39.845577, 36.304661, 25.772573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987934, 36.230537, 25.951012>,  <40.225197, 36.106998, 26.248407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987934, 36.230537, 25.951012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733984, 0.172007, 0.657024,
		0.330808, 0.935428, 0.124664,
		-0.593156, 0.308850, -0.743490,
		39.809986, 36.323193, 25.727964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969440, 36.664677, 26.504251>,  <40.225197, 36.106998, 26.248407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969440, 36.664677, 26.504251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711689, 36.578888, 26.210648>,  <39.557037, 36.527416, 26.034485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711689, 36.578888, 26.210648>,  <39.969440, 36.664677, 26.504251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711689, 36.578888, 26.210648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762684, 0.110542, 0.637254,
		-0.055533, 0.970455, -0.234805,
		-0.644382, -0.214471, -0.734012,
		39.518375, 36.514545, 25.990444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550800, 37.090054, 26.395538>,  <39.969440, 36.664677, 26.504251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550800, 37.090054, 26.395538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311165, 36.821709, 26.220709>,  <39.167381, 36.660702, 26.115812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311165, 36.821709, 26.220709>,  <39.550800, 37.090054, 26.395538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311165, 36.821709, 26.220709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720741, 0.214085, 0.659318,
		-0.348741, 0.710008, -0.611774,
		-0.599093, -0.670862, -0.437072,
		39.131435, 36.620449, 26.089588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898731, 37.430473, 26.327898>,  <39.550800, 37.090054, 26.395538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898731, 37.430473, 26.327898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819630, 37.042141, 26.273659>,  <38.772171, 36.809143, 26.241116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819630, 37.042141, 26.273659>,  <38.898731, 37.430473, 26.327898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819630, 37.042141, 26.273659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810780, 0.084244, 0.579257,
		-0.550936, 0.224488, -0.803788,
		-0.197750, -0.970829, -0.135597,
		38.760303, 36.750893, 26.232979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246754, 37.447186, 26.381798>,  <38.898731, 37.430473, 26.327898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246754, 37.447186, 26.381798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335152, 37.059521, 26.425417>,  <38.388191, 36.826923, 26.451590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335152, 37.059521, 26.425417>,  <38.246754, 37.447186, 26.381798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335152, 37.059521, 26.425417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894440, -0.156838, 0.418783,
		-0.388764, -0.190088, -0.901515,
		0.220997, -0.969159, 0.109049,
		38.401451, 36.768772, 26.458132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695526, 36.987122, 26.056665>,  <38.246754, 37.447186, 26.381798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695526, 36.987122, 26.056665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896996, 36.782635, 26.335226>,  <38.017876, 36.659943, 26.502363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896996, 36.782635, 26.335226>,  <37.695526, 36.987122, 26.056665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896996, 36.782635, 26.335226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861004, -0.231147, 0.453038,
		-0.070629, -0.827786, -0.556581,
		0.503670, -0.511216, 0.696401,
		38.048096, 36.629269, 26.544146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273270, 36.448895, 26.201979>,  <37.695526, 36.987122, 26.056665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273270, 36.448895, 26.201979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522980, 36.458069, 26.514324>,  <37.672806, 36.463573, 26.701733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522980, 36.458069, 26.514324>,  <37.273270, 36.448895, 26.201979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522980, 36.458069, 26.514324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734421, -0.323472, 0.596650,
		0.266275, -0.945960, -0.185090,
		0.624278, 0.022939, 0.780865,
		37.710262, 36.464951, 26.748583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200188, 35.807259, 26.584255>,  <37.273270, 36.448895, 26.201979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200188, 35.807259, 26.584255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381008, 36.048824, 26.846840>,  <37.489502, 36.193764, 27.004391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381008, 36.048824, 26.846840>,  <37.200188, 35.807259, 26.584255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381008, 36.048824, 26.846840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741439, -0.154747, 0.652933,
		0.495897, -0.781887, 0.377808,
		0.452055, 0.603909, 0.656460,
		37.516624, 36.229996, 27.043777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095406, 35.438477, 27.190495>,  <37.200188, 35.807259, 26.584255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095406, 35.438477, 27.190495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161804, 35.821697, 27.283947>,  <37.201641, 36.051628, 27.340019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161804, 35.821697, 27.283947>,  <37.095406, 35.438477, 27.190495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161804, 35.821697, 27.283947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754133, -0.029327, 0.656067,
		0.635398, -0.285093, 0.717629,
		0.165994, 0.958052, 0.233632,
		37.211601, 36.109112, 27.354036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108814, 35.455334, 27.855053>,  <37.095406, 35.438477, 27.190495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108814, 35.455334, 27.855053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043919, 35.839645, 27.765099>,  <37.004982, 36.070232, 27.711126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043919, 35.839645, 27.765099>,  <37.108814, 35.455334, 27.855053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043919, 35.839645, 27.765099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624783, 0.076379, 0.777054,
		0.763757, 0.266572, 0.587890,
		-0.162238, 0.960784, -0.224885,
		36.995247, 36.127880, 27.697634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245770, 35.876984, 28.452967>,  <37.108814, 35.455334, 27.855053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245770, 35.876984, 28.452967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999557, 36.089611, 28.220222>,  <36.851830, 36.217186, 28.080576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999557, 36.089611, 28.220222>,  <37.245770, 35.876984, 28.452967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999557, 36.089611, 28.220222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667138, 0.041628, 0.743770,
		0.419585, 0.845993, 0.329005,
		-0.615529, 0.531566, -0.581861,
		36.814899, 36.249081, 28.045664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062614, 36.349289, 28.873716>,  <37.245770, 35.876984, 28.452967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062614, 36.349289, 28.873716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793571, 36.388737, 28.580359>,  <36.632145, 36.412407, 28.404345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793571, 36.388737, 28.580359>,  <37.062614, 36.349289, 28.873716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793571, 36.388737, 28.580359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714074, 0.173517, 0.678226,
		0.194144, 0.979880, -0.046286,
		-0.672612, 0.098622, -0.733394,
		36.591789, 36.418324, 28.360340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704708, 36.926109, 29.019310>,  <37.062614, 36.349289, 28.873716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704708, 36.926109, 29.019310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472534, 36.701874, 28.783062>,  <36.333229, 36.567333, 28.641314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472534, 36.701874, 28.783062>,  <36.704708, 36.926109, 29.019310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472534, 36.701874, 28.783062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759766, 0.111856, 0.640503,
		-0.292995, 0.820505, -0.490842,
		-0.580439, -0.560589, -0.590619,
		36.298401, 36.533695, 28.605877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069851, 37.376015, 28.913410>,  <36.704708, 36.926109, 29.019310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069851, 37.376015, 28.913410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999374, 36.994537, 28.815908>,  <35.957088, 36.765652, 28.757408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999374, 36.994537, 28.815908>,  <36.069851, 37.376015, 28.913410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999374, 36.994537, 28.815908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814457, 0.002170, 0.580221,
		-0.552826, 0.300758, -0.777128,
		-0.176193, -0.953698, -0.243755,
		35.946518, 36.708427, 28.742783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310455, 37.355846, 28.671022>,  <36.069851, 37.376015, 28.913410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310455, 37.355846, 28.671022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427963, 36.990486, 28.783730>,  <35.498470, 36.771271, 28.851355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427963, 36.990486, 28.783730>,  <35.310455, 37.355846, 28.671022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427963, 36.990486, 28.783730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755212, -0.041087, 0.654192,
		-0.585963, -0.404979, -0.701882,
		0.293772, -0.913402, 0.281770,
		35.516094, 36.716465, 28.868261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775513, 36.896935, 28.490093>,  <35.310455, 37.355846, 28.671022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775513, 36.896935, 28.490093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989101, 36.703804, 28.767727>,  <35.117256, 36.587925, 28.934307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989101, 36.703804, 28.767727>,  <34.775513, 36.896935, 28.490093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989101, 36.703804, 28.767727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804489, -0.037573, 0.592777,
		-0.260128, -0.874911, -0.408489,
		0.533976, -0.482823, 0.694083,
		35.149296, 36.558956, 28.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322144, 36.405270, 28.740269>,  <34.775513, 36.896935, 28.490093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322144, 36.405270, 28.740269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614502, 36.418819, 29.012926>,  <34.789917, 36.426949, 29.176521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614502, 36.418819, 29.012926>,  <34.322144, 36.405270, 28.740269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614502, 36.418819, 29.012926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682393, 0.019887, 0.730715,
		0.011156, -0.999230, 0.037614,
		0.730901, 0.033819, 0.681645,
		34.833771, 36.428982, 29.217419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966835, 36.008751, 29.318811>,  <34.322144, 36.405270, 28.740269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966835, 36.008751, 29.318811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278282, 36.197609, 29.484142>,  <34.465149, 36.310925, 29.583340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278282, 36.197609, 29.484142>,  <33.966835, 36.008751, 29.318811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278282, 36.197609, 29.484142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498125, 0.064477, 0.864705,
		0.381616, -0.879159, 0.285390,
		0.778615, 0.472145, 0.413325,
		34.511868, 36.339252, 29.608141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062286, 35.625175, 29.873243>,  <33.966835, 36.008751, 29.318811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062286, 35.625175, 29.873243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230492, 35.982914, 29.934313>,  <34.331413, 36.197559, 29.970955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230492, 35.982914, 29.934313>,  <34.062286, 35.625175, 29.873243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230492, 35.982914, 29.934313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454299, 0.061898, 0.888697,
		0.785354, -0.443069, 0.432330,
		0.420514, 0.894348, 0.152674,
		34.356647, 36.251217, 29.980116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321571, 35.678333, 30.522142>,  <34.062286, 35.625175, 29.873243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321571, 35.678333, 30.522142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284122, 36.062069, 30.415632>,  <34.261654, 36.292309, 30.351727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284122, 36.062069, 30.415632>,  <34.321571, 35.678333, 30.522142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284122, 36.062069, 30.415632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545410, 0.174329, 0.819840,
		0.832925, 0.221981, 0.506913,
		-0.093619, 0.959340, -0.266274,
		34.256035, 36.349873, 30.335751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464123, 36.067661, 31.142584>,  <34.321571, 35.678333, 30.522142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464123, 36.067661, 31.142584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285683, 36.354351, 30.928183>,  <34.178619, 36.526363, 30.799541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285683, 36.354351, 30.928183>,  <34.464123, 36.067661, 31.142584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285683, 36.354351, 30.928183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485808, 0.309068, 0.817599,
		0.751655, 0.625126, 0.210315,
		-0.446100, 0.716725, -0.536003,
		34.151852, 36.569370, 30.767382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524113, 36.723274, 31.507664>,  <34.464123, 36.067661, 31.142584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524113, 36.723274, 31.507664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206367, 36.733532, 31.264900>,  <34.015720, 36.739685, 31.119242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206367, 36.733532, 31.264900>,  <34.524113, 36.723274, 31.507664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206367, 36.733532, 31.264900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560859, 0.352772, 0.748992,
		0.233305, 0.935358, -0.265846,
		-0.794359, 0.025642, -0.606907,
		33.968060, 36.741226, 31.082829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235794, 37.218487, 31.745678>,  <34.524113, 36.723274, 31.507664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235794, 37.218487, 31.745678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961273, 37.047909, 31.510008>,  <33.796558, 36.945564, 31.368605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961273, 37.047909, 31.510008>,  <34.235794, 37.218487, 31.745678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961273, 37.047909, 31.510008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710752, 0.221360, 0.667706,
		-0.154318, 0.877010, -0.455016,
		-0.686307, -0.426443, -0.589177,
		33.755383, 36.919975, 31.333256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217762, 37.341091, 32.449802>,  <34.235794, 37.218487, 31.745678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217762, 37.341091, 32.449802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529953, 37.422138, 32.686375>,  <34.717270, 37.470768, 32.828320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529953, 37.422138, 32.686375>,  <34.217762, 37.341091, 32.449802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529953, 37.422138, 32.686375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613262, -0.431965, -0.661299,
		0.121486, 0.878835, -0.461400,
		0.780481, 0.202621, 0.591434,
		34.764099, 37.482925, 32.863804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759876, 37.716026, 32.129517>,  <34.217762, 37.341091, 32.449802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759876, 37.716026, 32.129517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950268, 37.494511, 32.402798>,  <35.064503, 37.361603, 32.566765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950268, 37.494511, 32.402798>,  <34.759876, 37.716026, 32.129517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950268, 37.494511, 32.402798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653673, -0.296934, -0.696090,
		0.588353, 0.777912, 0.220664,
		0.475975, -0.553789, 0.683203,
		35.093060, 37.328373, 32.607758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401623, 37.865288, 32.137341>,  <34.759876, 37.716026, 32.129517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401623, 37.865288, 32.137341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456425, 37.530640, 32.349491>,  <35.489307, 37.329853, 32.476784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456425, 37.530640, 32.349491>,  <35.401623, 37.865288, 32.137341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456425, 37.530640, 32.349491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890709, -0.130235, -0.435520,
		0.433437, 0.532082, 0.727339,
		0.137007, -0.836617, 0.530378,
		35.497528, 37.279655, 32.508606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956944, 37.964836, 32.578720>,  <35.401623, 37.865288, 32.137341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956944, 37.964836, 32.578720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921322, 37.571030, 32.518318>,  <35.899948, 37.334747, 32.482079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921322, 37.571030, 32.518318>,  <35.956944, 37.964836, 32.578720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921322, 37.571030, 32.518318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949571, -0.038159, -0.311221,
		0.300639, -0.171102, 0.938264,
		-0.089053, -0.984514, -0.151001,
		35.894608, 37.275677, 32.473019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551037, 37.721149, 32.876099>,  <35.956944, 37.964836, 32.578720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551037, 37.721149, 32.876099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412319, 37.445408, 32.621689>,  <36.329090, 37.279964, 32.469044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412319, 37.445408, 32.621689>,  <36.551037, 37.721149, 32.876099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412319, 37.445408, 32.621689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904587, -0.066594, -0.421055,
		0.247901, -0.721357, 0.646675,
		-0.346795, -0.689354, -0.636022,
		36.308281, 37.238602, 32.430882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129360, 37.224094, 32.732868>,  <36.551037, 37.721149, 32.876099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129360, 37.224094, 32.732868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864506, 37.149319, 32.442589>,  <36.705593, 37.104454, 32.268421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864506, 37.149319, 32.442589>,  <37.129360, 37.224094, 32.732868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864506, 37.149319, 32.442589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726416, 0.077818, -0.682836,
		0.184118, -0.979285, 0.084266,
		-0.662134, -0.186934, -0.725696,
		36.665867, 37.093239, 32.224880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445705, 36.692291, 32.377335>,  <37.129360, 37.224094, 32.732868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445705, 36.692291, 32.377335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200008, 36.859848, 32.109833>,  <37.052589, 36.960381, 31.949331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200008, 36.859848, 32.109833>,  <37.445705, 36.692291, 32.377335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200008, 36.859848, 32.109833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772250, 0.144816, -0.618594,
		-0.162277, -0.896414, -0.412441,
		-0.614245, 0.418891, -0.668755,
		37.015736, 36.985516, 31.909206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590508, 36.376240, 31.763088>,  <37.445705, 36.692291, 32.377335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590508, 36.376240, 31.763088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392353, 36.701420, 31.640646>,  <37.273460, 36.896530, 31.567181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392353, 36.701420, 31.640646>,  <37.590508, 36.376240, 31.763088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392353, 36.701420, 31.640646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695151, 0.159685, -0.700903,
		-0.520921, -0.560007, -0.644231,
		-0.495385, 0.812953, -0.306107,
		37.243736, 36.945305, 31.548815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287689, 36.335281, 31.015089>,  <37.590508, 36.376240, 31.763088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287689, 36.335281, 31.015089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359261, 36.715336, 31.117254>,  <37.402203, 36.943367, 31.178553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359261, 36.715336, 31.117254>,  <37.287689, 36.335281, 31.015089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359261, 36.715336, 31.117254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491232, 0.138657, -0.859922,
		-0.852454, 0.279329, -0.441926,
		0.178925, 0.950132, 0.255414,
		37.412937, 37.000374, 31.193878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079769, 36.649094, 30.367189>,  <37.287689, 36.335281, 31.015089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079769, 36.649094, 30.367189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284607, 36.921478, 30.576588>,  <37.407509, 37.084911, 30.702227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284607, 36.921478, 30.576588>,  <37.079769, 36.649094, 30.367189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284607, 36.921478, 30.576588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326516, 0.409387, -0.851933,
		-0.794449, 0.607199, -0.012701,
		0.512093, 0.680964, 0.523497,
		37.438236, 37.125767, 30.733637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084873, 37.246605, 29.973331>,  <37.079769, 36.649094, 30.367189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084873, 37.246605, 29.973331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374371, 37.326313, 30.237600>,  <37.548069, 37.374138, 30.396162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374371, 37.326313, 30.237600>,  <37.084873, 37.246605, 29.973331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374371, 37.326313, 30.237600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569637, 0.367866, -0.734975,
		-0.389500, 0.908275, 0.152727,
		0.723743, 0.199274, 0.660671,
		37.591492, 37.386097, 30.435802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305485, 37.908173, 29.761557>,  <37.084873, 37.246605, 29.973331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305485, 37.908173, 29.761557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613697, 37.769085, 29.975239>,  <37.798626, 37.685635, 30.103449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613697, 37.769085, 29.975239>,  <37.305485, 37.908173, 29.761557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613697, 37.769085, 29.975239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635028, 0.346487, -0.690424,
		0.054975, 0.871229, 0.487788,
		0.770530, -0.347715, 0.534207,
		37.844856, 37.664772, 30.135500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780388, 38.529865, 29.967985>,  <37.305485, 37.908173, 29.761557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780388, 38.529865, 29.967985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974098, 38.179970, 29.960989>,  <38.090324, 37.970032, 29.956791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974098, 38.179970, 29.960989>,  <37.780388, 38.529865, 29.967985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974098, 38.179970, 29.960989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620200, 0.357321, -0.698336,
		0.617111, 0.327342, 0.715556,
		0.484278, -0.874739, -0.017489,
		38.119381, 37.917549, 29.955742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527157, 38.634819, 30.117609>,  <37.780388, 38.529865, 29.967985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527157, 38.634819, 30.117609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507282, 38.273697, 29.946739>,  <38.495358, 38.057026, 29.844217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507282, 38.273697, 29.946739>,  <38.527157, 38.634819, 30.117609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507282, 38.273697, 29.946739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718933, 0.264564, -0.642761,
		0.693301, -0.339049, 0.635908,
		-0.049689, -0.902802, -0.427176,
		38.492374, 38.002857, 29.818586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265247, 38.514698, 29.848269>,  <38.527157, 38.634819, 30.117609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265247, 38.514698, 29.848269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068947, 38.209797, 29.679445>,  <38.951168, 38.026855, 29.578152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068947, 38.209797, 29.679445>,  <39.265247, 38.514698, 29.848269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068947, 38.209797, 29.679445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684311, -0.037349, -0.728233,
		0.539336, -0.646197, 0.539949,
		-0.490749, -0.762256, -0.422056,
		38.921722, 37.981121, 29.552828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759060, 37.964355, 29.762598>,  <39.265247, 38.514698, 29.848269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759060, 37.964355, 29.762598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466312, 37.954636, 29.490192>,  <39.290665, 37.948803, 29.326750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466312, 37.954636, 29.490192>,  <39.759060, 37.964355, 29.762598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466312, 37.954636, 29.490192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680798, 0.017564, -0.732261,
		0.029766, -0.999550, 0.003698,
		-0.731866, -0.024314, -0.681014,
		39.246754, 37.947346, 29.285889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970150, 37.428955, 29.261471>,  <39.759060, 37.964355, 29.762598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970150, 37.428955, 29.261471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688534, 37.649319, 29.082214>,  <39.519566, 37.781536, 28.974661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688534, 37.649319, 29.082214>,  <39.970150, 37.428955, 29.261471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688534, 37.649319, 29.082214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579229, 0.080366, -0.811193,
		-0.410875, -0.830689, -0.375682,
		-0.704042, 0.550905, -0.448139,
		39.477322, 37.814590, 28.947773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748104, 36.985844, 28.832224>,  <39.970150, 37.428955, 29.261471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748104, 36.985844, 28.832224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670189, 37.351559, 28.690157>,  <39.623440, 37.570988, 28.604918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670189, 37.351559, 28.690157>,  <39.748104, 36.985844, 28.832224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670189, 37.351559, 28.690157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567812, -0.190144, -0.800896,
		-0.799778, -0.357675, -0.482103,
		-0.194792, 0.914283, -0.355166,
		39.611752, 37.625843, 28.583607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629082, 36.897243, 28.153795>,  <39.748104, 36.985844, 28.832224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629082, 36.897243, 28.153795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697403, 37.291283, 28.161871>,  <39.738396, 37.527706, 28.166718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697403, 37.291283, 28.161871>,  <39.629082, 36.897243, 28.153795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697403, 37.291283, 28.161871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552324, -0.078755, -0.829901,
		-0.815944, 0.152901, -0.557545,
		0.170802, 0.985098, 0.020191,
		39.748642, 37.586811, 28.167929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605167, 37.151577, 27.420294>,  <39.629082, 36.897243, 28.153795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605167, 37.151577, 27.420294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819706, 37.416759, 27.629227>,  <39.948429, 37.575867, 27.754585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819706, 37.416759, 27.629227>,  <39.605167, 37.151577, 27.420294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819706, 37.416759, 27.629227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684155, 0.020902, -0.729037,
		-0.494235, 0.748370, -0.442351,
		0.536343, 0.662952, 0.522331,
		39.980610, 37.615646, 27.785927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838078, 37.629688, 26.909735>,  <39.605167, 37.151577, 27.420294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838078, 37.629688, 26.909735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075005, 37.680603, 27.227968>,  <40.217163, 37.711151, 27.418909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075005, 37.680603, 27.227968>,  <39.838078, 37.629688, 26.909735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075005, 37.680603, 27.227968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801005, 0.013429, -0.598507,
		-0.086867, 0.991775, -0.094006,
		0.592322, 0.127290, 0.795583,
		40.252701, 37.718788, 27.466642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297489, 38.084801, 26.654654>,  <39.838078, 37.629688, 26.909735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297489, 38.084801, 26.654654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453773, 37.893589, 26.969316>,  <40.547546, 37.778862, 27.158115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453773, 37.893589, 26.969316>,  <40.297489, 38.084801, 26.654654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453773, 37.893589, 26.969316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849618, -0.141607, -0.508033,
		0.354249, 0.866855, 0.350812,
		0.390714, -0.478027, 0.786660,
		40.570988, 37.750179, 27.205315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993553, 38.367569, 26.744263>,  <40.297489, 38.084801, 26.654654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993553, 38.367569, 26.744263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983799, 38.000668, 26.903286>,  <40.977947, 37.780525, 26.998699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983799, 38.000668, 26.903286>,  <40.993553, 38.367569, 26.744263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983799, 38.000668, 26.903286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932196, -0.164522, -0.322402,
		0.361131, 0.362740, 0.859072,
		-0.024388, -0.917253, 0.397558,
		40.976482, 37.725491, 27.022554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732666, 38.242550, 26.822563>,  <40.993553, 38.367569, 26.744263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732666, 38.242550, 26.822563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569160, 37.879158, 26.857382>,  <41.471058, 37.661121, 26.878273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569160, 37.879158, 26.857382>,  <41.732666, 38.242550, 26.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569160, 37.879158, 26.857382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858998, -0.415204, -0.299547,
		0.308275, -0.047672, 0.950102,
		-0.408766, -0.908478, 0.087047,
		41.446529, 37.606613, 26.883495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284256, 37.865227, 27.123034>,  <41.732666, 38.242550, 26.822563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284256, 37.865227, 27.123034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026791, 37.613876, 26.948290>,  <41.872311, 37.463066, 26.843443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026791, 37.613876, 26.948290>,  <42.284256, 37.865227, 27.123034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026791, 37.613876, 26.948290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760959, -0.464689, -0.452775,
		0.081509, -0.623865, 0.777270,
		-0.643660, -0.628376, -0.436859,
		41.833694, 37.425365, 26.817232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596039, 37.248260, 27.261894>,  <42.284256, 37.865227, 27.123034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596039, 37.248260, 27.261894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343586, 37.198132, 26.955702>,  <42.192112, 37.168056, 26.771986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343586, 37.198132, 26.955702>,  <42.596039, 37.248260, 27.261894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343586, 37.198132, 26.955702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629339, -0.659617, -0.410899,
		-0.453432, -0.741080, 0.495176,
		-0.631136, -0.125318, -0.765482,
		42.154243, 37.160538, 26.726057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607616, 36.516850, 27.126770>,  <42.596039, 37.248260, 27.261894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607616, 36.516850, 27.126770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475544, 36.669125, 26.781273>,  <42.396301, 36.760490, 26.573975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475544, 36.669125, 26.781273>,  <42.607616, 36.516850, 27.126770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475544, 36.669125, 26.781273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634059, -0.588422, -0.501726,
		-0.699247, -0.713327, -0.047092,
		-0.330185, 0.380689, -0.863744,
		42.376488, 36.783333, 26.522150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448349, 35.960892, 26.680712>,  <42.607616, 36.516850, 27.126770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448349, 35.960892, 26.680712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479706, 36.254486, 26.410864>,  <42.498520, 36.430645, 26.248955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479706, 36.254486, 26.410864>,  <42.448349, 35.960892, 26.680712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479706, 36.254486, 26.410864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610185, -0.570468, -0.549765,
		-0.788371, -0.368545, -0.492591,
		0.078394, 0.733990, -0.674621,
		42.503223, 36.474682, 26.208477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485847, 35.690697, 25.942270>,  <42.448349, 35.960892, 26.680712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485847, 35.690697, 25.942270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631138, 36.061863, 25.908722>,  <42.718311, 36.284565, 25.888594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631138, 36.061863, 25.908722>,  <42.485847, 35.690697, 25.942270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631138, 36.061863, 25.908722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783002, -0.352803, -0.512287,
		-0.504950, 0.120406, -0.854709,
		0.363227, 0.927918, -0.083870,
		42.740105, 36.340237, 25.883560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550636, 35.713169, 25.266342>,  <42.485847, 35.690697, 25.942270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550636, 35.713169, 25.266342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786026, 36.007534, 25.400290>,  <42.927258, 36.184155, 25.480658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786026, 36.007534, 25.400290>,  <42.550636, 35.713169, 25.266342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786026, 36.007534, 25.400290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648100, -0.181728, -0.739555,
		-0.483392, 0.652234, -0.583886,
		0.588471, 0.735911, 0.334867,
		42.962566, 36.228306, 25.500750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759972, 36.164066, 24.653557>,  <42.550636, 35.713169, 25.266342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759972, 36.164066, 24.653557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018402, 36.224976, 24.952728>,  <43.173462, 36.261520, 25.132231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018402, 36.224976, 24.952728>,  <42.759972, 36.164066, 24.653557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018402, 36.224976, 24.952728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762415, -0.082270, -0.641838,
		-0.036202, 0.984909, -0.169246,
		0.646076, 0.152271, 0.747930,
		43.212223, 36.270657, 25.177107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117905, 36.652790, 24.407427>,  <42.759972, 36.164066, 24.653557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117905, 36.652790, 24.407427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314053, 36.444675, 24.687094>,  <43.431744, 36.319805, 24.854895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314053, 36.444675, 24.687094>,  <43.117905, 36.652790, 24.407427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314053, 36.444675, 24.687094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676675, -0.278269, -0.681672,
		0.549222, 0.807383, 0.215610,
		0.490373, -0.520287, 0.699167,
		43.461166, 36.288589, 24.896845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.886486, 36.651482, 24.185173>,  <43.117905, 36.652790, 24.407427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.886486, 36.651482, 24.185173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867310, 36.365417, 24.464098>,  <43.855804, 36.193779, 24.631453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.867310, 36.365417, 24.464098>,  <43.886486, 36.651482, 24.185173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867310, 36.365417, 24.464098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785238, -0.458448, -0.416205,
		0.617336, 0.527603, 0.583551,
		-0.047937, -0.715165, 0.697310,
		43.852928, 36.150867, 24.673290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596241, 36.496052, 24.332708>,  <43.886486, 36.651482, 24.185173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596241, 36.496052, 24.332708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399578, 36.182606, 24.484613>,  <44.281578, 35.994537, 24.575756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399578, 36.182606, 24.484613>,  <44.596241, 36.496052, 24.332708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399578, 36.182606, 24.484613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732260, -0.608064, -0.306679,
		0.471239, 0.127304, 0.872770,
		-0.491659, -0.783614, 0.379763,
		44.252079, 35.947521, 24.598543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118725, 35.969749, 24.476505>,  <44.596241, 36.496052, 24.332708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118725, 35.969749, 24.476505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772743, 35.769402, 24.463913>,  <44.565155, 35.649193, 24.456358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772743, 35.769402, 24.463913>,  <45.118725, 35.969749, 24.476505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772743, 35.769402, 24.463913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471729, -0.790018, -0.391590,
		0.171265, -0.353556, 0.919601,
		-0.864951, -0.500868, -0.031481,
		44.513256, 35.619141, 24.454468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064644, 35.405521, 24.879810>,  <45.118725, 35.969749, 24.476505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064644, 35.405521, 24.879810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801723, 35.331604, 24.587561>,  <44.643970, 35.287254, 24.412210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801723, 35.331604, 24.587561>,  <45.064644, 35.405521, 24.879810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801723, 35.331604, 24.587561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589647, -0.729855, -0.345873,
		-0.469333, -0.658152, 0.588695,
		-0.657299, -0.184793, -0.730623,
		44.604534, 35.276165, 24.368374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957245, 34.728382, 24.869991>,  <45.064644, 35.405521, 24.879810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957245, 34.728382, 24.869991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821888, 34.786457, 24.498096>,  <44.740673, 34.821301, 24.274960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821888, 34.786457, 24.498096>,  <44.957245, 34.728382, 24.869991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821888, 34.786457, 24.498096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403907, -0.869971, -0.282860,
		-0.849912, -0.471245, 0.235749,
		-0.338391, 0.145185, -0.929738,
		44.720371, 34.830013, 24.219175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890022, 34.083691, 24.632067>,  <44.957245, 34.728382, 24.869991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890022, 34.083691, 24.632067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822544, 34.276138, 24.287960>,  <44.782055, 34.391609, 24.081495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822544, 34.276138, 24.287960>,  <44.890022, 34.083691, 24.632067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822544, 34.276138, 24.287960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311105, -0.802173, -0.509640,
		-0.935283, -0.353609, -0.014355,
		-0.168698, 0.481124, -0.860268,
		44.771935, 34.420475, 24.029881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403683, 33.635345, 24.158274>,  <44.890022, 34.083691, 24.632067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403683, 33.635345, 24.158274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649628, 33.882755, 23.962568>,  <44.797195, 34.031200, 23.845144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649628, 33.882755, 23.962568>,  <44.403683, 33.635345, 24.158274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649628, 33.882755, 23.962568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288568, -0.753817, -0.590329,
		-0.733947, 0.221783, -0.641977,
		0.614858, 0.618524, -0.489263,
		44.834084, 34.068314, 23.815790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598686, 33.892532, 23.408270>,  <44.403683, 33.635345, 24.158274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598686, 33.892532, 23.408270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644363, 33.530510, 23.572144>,  <44.671772, 33.313297, 23.670467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644363, 33.530510, 23.572144>,  <44.598686, 33.892532, 23.408270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644363, 33.530510, 23.572144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960996, 0.003923, 0.276534,
		-0.251885, -0.425283, -0.869304,
		0.114195, -0.905052, 0.409683,
		44.678623, 33.258995, 23.695049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966034, 33.502773, 23.202545>,  <44.598686, 33.892532, 23.408270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966034, 33.502773, 23.202545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127724, 33.306541, 23.511332>,  <44.224739, 33.188801, 23.696604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127724, 33.306541, 23.511332>,  <43.966034, 33.502773, 23.202545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127724, 33.306541, 23.511332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910672, -0.137139, 0.389704,
		-0.085313, -0.860538, -0.502191,
		0.404225, -0.490579, 0.771968,
		44.248993, 33.159367, 23.742922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423191, 33.043430, 23.384922>,  <43.966034, 33.502773, 23.202545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423191, 33.043430, 23.384922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647888, 33.067852, 23.714945>,  <43.782707, 33.082504, 23.912958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647888, 33.067852, 23.714945>,  <43.423191, 33.043430, 23.384922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647888, 33.067852, 23.714945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814449, -0.134360, 0.564464,
		0.145318, -0.989050, -0.025750,
		0.561743, 0.061055, 0.825056,
		43.816410, 33.086166, 23.962461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263123, 32.452541, 23.890081>,  <43.423191, 33.043430, 23.384922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263123, 32.452541, 23.890081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428635, 32.757633, 24.088886>,  <43.527943, 32.940689, 24.208170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428635, 32.757633, 24.088886>,  <43.263123, 32.452541, 23.890081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428635, 32.757633, 24.088886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681493, -0.102464, 0.724616,
		0.603613, -0.638547, 0.477398,
		0.413785, 0.762732, 0.497014,
		43.552769, 32.986454, 24.237991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316425, 32.202698, 24.569925>,  <43.263123, 32.452541, 23.890081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316425, 32.202698, 24.569925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339767, 32.601898, 24.579582>,  <43.353771, 32.841419, 24.585377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339767, 32.601898, 24.579582>,  <43.316425, 32.202698, 24.569925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339767, 32.601898, 24.579582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719052, 0.025243, 0.694497,
		0.692502, -0.057884, 0.719090,
		0.058352, 0.998004, 0.024141,
		43.357273, 32.901299, 24.586824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284966, 32.286446, 25.205635>,  <43.316425, 32.202698, 24.569925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284966, 32.286446, 25.205635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191071, 32.646889, 25.059813>,  <43.134735, 32.863155, 24.972319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191071, 32.646889, 25.059813>,  <43.284966, 32.286446, 25.205635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191071, 32.646889, 25.059813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797396, 0.035980, 0.602383,
		0.555929, 0.432097, 0.710095,
		-0.234738, 0.901109, -0.364555,
		43.120647, 32.917221, 24.950447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943363, 32.639511, 25.711933>,  <43.284966, 32.286446, 25.205635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943363, 32.639511, 25.711933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835144, 32.850685, 25.389917>,  <42.770214, 32.977390, 25.196707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835144, 32.850685, 25.389917>,  <42.943363, 32.639511, 25.711933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835144, 32.850685, 25.389917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722654, 0.441129, 0.532143,
		0.636063, 0.725734, 0.262170,
		-0.270544, 0.527935, -0.805041,
		42.753983, 33.009064, 25.148405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014751, 33.419479, 25.860151>,  <42.943363, 32.639511, 25.711933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014751, 33.419479, 25.860151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732384, 33.352375, 25.584896>,  <42.562962, 33.312111, 25.419743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732384, 33.352375, 25.584896>,  <43.014751, 33.419479, 25.860151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732384, 33.352375, 25.584896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693360, 0.362100, 0.623005,
		0.144659, 0.916919, -0.371933,
		-0.705922, -0.167761, -0.688136,
		42.520607, 33.302048, 25.378456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571381, 33.929199, 26.022358>,  <43.014751, 33.419479, 25.860151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571381, 33.929199, 26.022358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366909, 33.714809, 25.753605>,  <42.244225, 33.586174, 25.592354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366909, 33.714809, 25.753605>,  <42.571381, 33.929199, 26.022358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366909, 33.714809, 25.753605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858671, 0.284683, 0.426191,
		-0.037156, 0.794784, -0.605754,
		-0.511178, -0.535979, -0.671881,
		42.213554, 33.554016, 25.552040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097584, 34.399364, 25.831865>,  <42.571381, 33.929199, 26.022358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097584, 34.399364, 25.831865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968391, 34.027027, 25.763498>,  <41.890877, 33.803623, 25.722479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968391, 34.027027, 25.763498>,  <42.097584, 34.399364, 25.831865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968391, 34.027027, 25.763498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928990, 0.277339, 0.245071,
		-0.180721, 0.237932, -0.954321,
		-0.322981, -0.930844, -0.170915,
		41.871498, 33.747772, 25.712223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446770, 34.475079, 25.518950>,  <42.097584, 34.399364, 25.831865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446770, 34.475079, 25.518950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457981, 34.102825, 25.664904>,  <41.464706, 33.879475, 25.752476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457981, 34.102825, 25.664904>,  <41.446770, 34.475079, 25.518950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457981, 34.102825, 25.664904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824875, 0.184649, 0.534309,
		-0.564620, -0.315960, -0.762479,
		0.028030, -0.930631, 0.364884,
		41.466389, 33.823635, 25.774368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782883, 34.258583, 25.576683>,  <41.446770, 34.475079, 25.518950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782883, 34.258583, 25.576683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963017, 34.002930, 25.826069>,  <41.071095, 33.849537, 25.975700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963017, 34.002930, 25.826069>,  <40.782883, 34.258583, 25.576683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963017, 34.002930, 25.826069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638032, 0.258119, 0.725459,
		-0.624594, -0.724487, -0.291550,
		0.450331, -0.639135, 0.623465,
		41.098114, 33.811188, 26.013109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140640, 33.893429, 25.939785>,  <40.782883, 34.258583, 25.576683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140640, 33.893429, 25.939785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465569, 33.851536, 26.169277>,  <40.660526, 33.826401, 26.306973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465569, 33.851536, 26.169277>,  <40.140640, 33.893429, 25.939785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465569, 33.851536, 26.169277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491448, 0.406776, 0.770073,
		-0.314030, -0.907505, 0.278962,
		0.812320, -0.104731, 0.573731,
		40.709263, 33.820118, 26.341396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910782, 33.574959, 26.569683>,  <40.140640, 33.893429, 25.939785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910782, 33.574959, 26.569683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246300, 33.785038, 26.627079>,  <40.447609, 33.911087, 26.661516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246300, 33.785038, 26.627079>,  <39.910782, 33.574959, 26.569683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246300, 33.785038, 26.627079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416674, 0.449610, 0.790085,
		0.350437, -0.722507, 0.595967,
		0.838795, 0.525199, 0.143490,
		40.497936, 33.942596, 26.670126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106438, 33.609779, 27.324915>,  <39.910782, 33.574959, 26.569683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106438, 33.609779, 27.324915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277729, 33.928112, 27.153671>,  <40.380505, 34.119110, 27.050924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277729, 33.928112, 27.153671>,  <40.106438, 33.609779, 27.324915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277729, 33.928112, 27.153671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213577, 0.549453, 0.807766,
		0.878071, -0.254471, 0.405260,
		0.428224, 0.795831, -0.428110,
		40.406197, 34.166862, 27.025238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469429, 33.856140, 27.884922>,  <40.106438, 33.609779, 27.324915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469429, 33.856140, 27.884922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470886, 34.159176, 27.623835>,  <40.471760, 34.341000, 27.467182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470886, 34.159176, 27.623835>,  <40.469429, 33.856140, 27.884922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470886, 34.159176, 27.623835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256829, 0.631537, 0.731574,
		0.966450, 0.164968, 0.196875,
		0.003647, 0.757593, -0.652717,
		40.471981, 34.386456, 27.428019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848587, 34.345928, 28.138382>,  <40.469429, 33.856140, 27.884922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848587, 34.345928, 28.138382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614391, 34.548649, 27.885288>,  <40.473873, 34.670280, 27.733433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614391, 34.548649, 27.885288>,  <40.848587, 34.345928, 28.138382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614391, 34.548649, 27.885288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312167, 0.579368, 0.752917,
		0.748169, 0.638342, -0.181004,
		-0.585487, 0.506806, -0.632734,
		40.438744, 34.700691, 27.695467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929245, 34.983356, 28.258017>,  <40.848587, 34.345928, 28.138382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929245, 34.983356, 28.258017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584221, 35.015320, 28.058174>,  <40.377205, 35.034496, 27.938269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584221, 35.015320, 28.058174>,  <40.929245, 34.983356, 28.258017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584221, 35.015320, 28.058174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382607, 0.543102, 0.747430,
		0.331063, 0.835856, -0.437884,
		-0.862559, 0.079909, -0.499606,
		40.325455, 35.039291, 27.908293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707958, 35.667908, 28.311182>,  <40.929245, 34.983356, 28.258017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707958, 35.667908, 28.311182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387993, 35.445461, 28.220970>,  <40.196014, 35.311993, 28.166843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387993, 35.445461, 28.220970>,  <40.707958, 35.667908, 28.311182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387993, 35.445461, 28.220970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511311, 0.434856, 0.741257,
		-0.314155, 0.708259, -0.632199,
		-0.799917, -0.556120, -0.225528,
		40.148018, 35.278625, 28.153311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071434, 36.170250, 28.402191>,  <40.707958, 35.667908, 28.311182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071434, 36.170250, 28.402191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949486, 35.789585, 28.417147>,  <39.876316, 35.561188, 28.426119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949486, 35.789585, 28.417147>,  <40.071434, 36.170250, 28.402191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949486, 35.789585, 28.417147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467209, 0.183651, 0.864863,
		-0.829921, 0.246206, -0.500614,
		-0.304873, -0.951659, 0.037386,
		39.858025, 35.504086, 28.428362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396217, 36.237160, 28.655558>,  <40.071434, 36.170250, 28.402191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396217, 36.237160, 28.655558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487747, 35.850136, 28.698400>,  <39.542664, 35.617924, 28.724106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487747, 35.850136, 28.698400>,  <39.396217, 36.237160, 28.655558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487747, 35.850136, 28.698400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542463, -0.035376, 0.839334,
		-0.808315, -0.250162, -0.532959,
		0.228823, -0.967558, 0.107109,
		39.556393, 35.559868, 28.730534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769661, 35.828060, 28.787239>,  <39.396217, 36.237160, 28.655558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769661, 35.828060, 28.787239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085922, 35.627964, 28.928450>,  <39.275677, 35.507904, 29.013176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085922, 35.627964, 28.928450>,  <38.769661, 35.828060, 28.787239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085922, 35.627964, 28.928450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393901, 0.025829, 0.918790,
		-0.468737, -0.865500, -0.176624,
		0.790650, -0.500243, 0.353029,
		39.323116, 35.477890, 29.034359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443756, 35.293098, 29.205635>,  <38.769661, 35.828060, 28.787239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443756, 35.293098, 29.205635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819992, 35.303207, 29.341074>,  <39.045734, 35.309273, 29.422337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819992, 35.303207, 29.341074>,  <38.443756, 35.293098, 29.205635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819992, 35.303207, 29.341074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337489, -0.039766, 0.940489,
		0.037234, -0.998889, -0.028874,
		0.940593, 0.025274, 0.338595,
		39.102169, 35.310791, 29.442652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492043, 34.838402, 29.758089>,  <38.443756, 35.293098, 29.205635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492043, 34.838402, 29.758089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767403, 35.123169, 29.813618>,  <38.932617, 35.294029, 29.846935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767403, 35.123169, 29.813618>,  <38.492043, 34.838402, 29.758089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767403, 35.123169, 29.813618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185692, -0.012035, 0.982534,
		0.701158, -0.702156, 0.123914,
		0.688401, 0.711922, 0.138823,
		38.973923, 35.336746, 29.855265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792549, 34.590790, 30.378059>,  <38.492043, 34.838402, 29.758089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792549, 34.590790, 30.378059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940563, 34.961693, 30.355188>,  <39.029373, 35.184235, 30.341465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940563, 34.961693, 30.355188>,  <38.792549, 34.590790, 30.378059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940563, 34.961693, 30.355188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273091, -0.049740, 0.960702,
		0.887971, -0.371111, -0.271630,
		0.370038, 0.927255, -0.057179,
		39.051575, 35.239868, 30.338034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421638, 34.575748, 30.678734>,  <38.792549, 34.590790, 30.378059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421638, 34.575748, 30.678734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323231, 34.963432, 30.682880>,  <39.264187, 35.196041, 30.685368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323231, 34.963432, 30.682880>,  <39.421638, 34.575748, 30.678734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323231, 34.963432, 30.682880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237111, 0.049811, 0.970205,
		0.939814, 0.241152, -0.242065,
		-0.246024, 0.969208, 0.010366,
		39.249424, 35.254196, 30.685989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869976, 34.986473, 31.031546>,  <39.421638, 34.575748, 30.678734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869976, 34.986473, 31.031546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557030, 35.235550, 31.036512>,  <39.369263, 35.384995, 31.039492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557030, 35.235550, 31.036512>,  <39.869976, 34.986473, 31.031546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557030, 35.235550, 31.036512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098115, 0.103542, 0.989774,
		0.615037, 0.775588, -0.142103,
		-0.782370, 0.622690, 0.012415,
		39.322319, 35.422356, 31.040237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033970, 35.566532, 31.551956>,  <39.869976, 34.986473, 31.031546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033970, 35.566532, 31.551956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637566, 35.529400, 31.513426>,  <39.399723, 35.507118, 31.490307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637566, 35.529400, 31.513426>,  <40.033970, 35.566532, 31.551956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637566, 35.529400, 31.513426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088702, -0.083044, 0.992590,
		-0.100147, 0.992212, 0.074063,
		-0.991011, -0.092835, -0.096328,
		39.340263, 35.501549, 31.484528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691509, 36.035381, 32.131512>,  <40.033970, 35.566532, 31.551956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691509, 36.035381, 32.131512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412582, 35.774788, 32.011967>,  <39.245228, 35.618431, 31.940241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412582, 35.774788, 32.011967>,  <39.691509, 36.035381, 32.131512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412582, 35.774788, 32.011967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198762, -0.224845, 0.953907,
		-0.688655, 0.724575, 0.027297,
		-0.697315, -0.651487, -0.298859,
		39.203388, 35.579342, 31.922310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120579, 36.158253, 32.498646>,  <39.691509, 36.035381, 32.131512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120579, 36.158253, 32.498646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079071, 35.778847, 32.378944>,  <39.054165, 35.551205, 32.307125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079071, 35.778847, 32.378944>,  <39.120579, 36.158253, 32.498646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079071, 35.778847, 32.378944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282628, -0.260353, 0.923221,
		-0.953600, 0.180379, -0.241061,
		-0.103769, -0.948514, -0.299252,
		39.047939, 35.494293, 32.289169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514423, 35.974140, 32.830032>,  <39.120579, 36.158253, 32.498646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514423, 35.974140, 32.830032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639095, 35.619656, 32.692924>,  <38.713898, 35.406967, 32.610661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639095, 35.619656, 32.692924>,  <38.514423, 35.974140, 32.830032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639095, 35.619656, 32.692924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391558, -0.448474, 0.803463,
		-0.865759, -0.116208, -0.486782,
		0.311678, -0.886209, -0.342768,
		38.732597, 35.353794, 32.590096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001987, 35.562756, 33.130886>,  <38.514423, 35.974140, 32.830032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001987, 35.562756, 33.130886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295334, 35.321472, 33.005463>,  <38.471340, 35.176701, 32.930210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295334, 35.321472, 33.005463>,  <38.001987, 35.562756, 33.130886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295334, 35.321472, 33.005463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210637, -0.640137, 0.738821,
		-0.646403, -0.475761, -0.596502,
		0.733345, -0.603222, -0.313573,
		38.515343, 35.140511, 32.911396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762798, 34.880592, 33.156845>,  <38.001987, 35.562756, 33.130886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762798, 34.880592, 33.156845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157043, 34.823624, 33.193241>,  <38.393593, 34.789444, 33.215080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157043, 34.823624, 33.193241>,  <37.762798, 34.880592, 33.156845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157043, 34.823624, 33.193241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154630, -0.542595, 0.825640,
		-0.068217, -0.827833, -0.556812,
		0.985615, -0.142422, 0.090993,
		38.452728, 34.780895, 33.220539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873093, 34.095436, 33.285297>,  <37.762798, 34.880592, 33.156845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873093, 34.095436, 33.285297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197796, 34.286472, 33.419735>,  <38.392616, 34.401093, 33.500397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197796, 34.286472, 33.419735>,  <37.873093, 34.095436, 33.285297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197796, 34.286472, 33.419735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065684, -0.497192, 0.865151,
		0.580288, -0.724370, -0.372230,
		0.811759, 0.477587, 0.336094,
		38.441322, 34.429749, 33.520561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256969, 33.580444, 33.517406>,  <37.873093, 34.095436, 33.285297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256969, 33.580444, 33.517406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406570, 33.903259, 33.700191>,  <38.496330, 34.096947, 33.809864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406570, 33.903259, 33.700191>,  <38.256969, 33.580444, 33.517406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406570, 33.903259, 33.700191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160892, -0.541712, 0.825023,
		0.913364, -0.235041, -0.332449,
		0.374006, 0.807034, 0.456964,
		38.518772, 34.145370, 33.837280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887920, 33.393154, 33.827251>,  <38.256969, 33.580444, 33.517406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887920, 33.393154, 33.827251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794895, 33.732277, 34.017887>,  <38.739079, 33.935749, 34.132271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794895, 33.732277, 34.017887>,  <38.887920, 33.393154, 33.827251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794895, 33.732277, 34.017887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131877, -0.458014, 0.879108,
		0.963598, 0.267302, -0.005288,
		-0.232565, 0.847805, 0.476593,
		38.725124, 33.986618, 34.160866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382740, 33.493164, 34.423084>,  <38.887920, 33.393154, 33.827251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382740, 33.493164, 34.423084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090317, 33.744942, 34.528419>,  <38.914864, 33.896008, 34.591621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090317, 33.744942, 34.528419>,  <39.382740, 33.493164, 34.423084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090317, 33.744942, 34.528419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242534, -0.121022, 0.962565,
		0.637753, 0.767561, -0.064188,
		-0.731060, 0.629447, 0.263342,
		38.870998, 33.933777, 34.607422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662960, 33.918827, 34.870495>,  <39.382740, 33.493164, 34.423084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662960, 33.918827, 34.870495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269493, 33.914062, 34.942326>,  <39.033413, 33.911201, 34.985424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269493, 33.914062, 34.942326>,  <39.662960, 33.918827, 34.870495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269493, 33.914062, 34.942326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179631, -0.126589, 0.975555,
		0.011108, 0.991884, 0.126662,
		-0.983671, -0.011916, 0.179579,
		38.974392, 33.910488, 34.996201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465248, 34.368675, 35.527317>,  <39.662960, 33.918827, 34.870495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465248, 34.368675, 35.527317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203136, 34.071758, 35.471294>,  <39.045868, 33.893608, 35.437679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203136, 34.071758, 35.471294>,  <39.465248, 34.368675, 35.527317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203136, 34.071758, 35.471294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043622, -0.222287, 0.974005,
		-0.754126, 0.632136, 0.178040,
		-0.655279, -0.742289, -0.140058,
		39.006554, 33.849072, 35.429276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132362, 34.363560, 35.215374>,  <39.465248, 34.368675, 35.527317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132362, 34.363560, 35.215374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391102, 34.410633, 34.913982>,  <40.546345, 34.438877, 34.733147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391102, 34.410633, 34.913982>,  <40.132362, 34.363560, 35.215374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391102, 34.410633, 34.913982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759239, -0.006496, 0.650779,
		0.071690, -0.993030, -0.093550,
		0.646851, 0.117682, -0.753482,
		40.585155, 34.445938, 34.687939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567051, 33.724148, 35.185196>,  <40.132362, 34.363560, 35.215374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567051, 33.724148, 35.185196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746544, 34.046829, 35.031384>,  <40.854240, 34.240437, 34.939095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746544, 34.046829, 35.031384>,  <40.567051, 33.724148, 35.185196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746544, 34.046829, 35.031384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807493, -0.181663, 0.561207,
		0.382872, -0.562343, -0.732925,
		0.448736, 0.806703, -0.384534,
		40.881165, 34.288841, 34.916023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086529, 33.466019, 34.902267>,  <40.567051, 33.724148, 35.185196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086529, 33.466019, 34.902267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189259, 33.846695, 34.969582>,  <41.250896, 34.075100, 35.009972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189259, 33.846695, 34.969582>,  <41.086529, 33.466019, 34.902267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189259, 33.846695, 34.969582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912815, -0.296071, 0.281267,
		0.317505, 0.081377, -0.944758,
		0.256826, 0.951693, 0.168286,
		41.266308, 34.132202, 35.020069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728497, 33.601669, 34.454800>,  <41.086529, 33.466019, 34.902267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728497, 33.601669, 34.454800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696274, 33.849766, 34.766903>,  <41.676941, 33.998623, 34.954166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696274, 33.849766, 34.766903>,  <41.728497, 33.601669, 34.454800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696274, 33.849766, 34.766903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910328, -0.273049, 0.311042,
		0.405971, 0.735351, -0.542629,
		-0.080561, 0.620245, 0.780261,
		41.672104, 34.035839, 35.000980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379124, 33.782021, 34.615074>,  <41.728497, 33.601669, 34.454800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379124, 33.782021, 34.615074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217289, 33.918896, 34.954300>,  <42.120190, 34.001022, 35.157837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.217289, 33.918896, 34.954300>,  <42.379124, 33.782021, 34.615074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217289, 33.918896, 34.954300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886406, -0.081349, 0.455704,
		0.224927, 0.936103, -0.270406,
		-0.404588, 0.342190, 0.848065,
		42.095913, 34.021553, 35.208721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895977, 34.205364, 34.781750>,  <42.379124, 33.782021, 34.615074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895977, 34.205364, 34.781750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682537, 34.130177, 35.111584>,  <42.554474, 34.085064, 35.309483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682537, 34.130177, 35.111584>,  <42.895977, 34.205364, 34.781750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682537, 34.130177, 35.111584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845725, -0.113901, 0.521322,
		-0.004072, 0.975548, 0.219749,
		-0.533604, -0.187970, 0.824581,
		42.522457, 34.073784, 35.358959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172897, 34.706146, 35.237278>,  <42.895977, 34.205364, 34.781750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172897, 34.706146, 35.237278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997765, 34.437298, 35.476128>,  <42.892685, 34.275990, 35.619438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997765, 34.437298, 35.476128>,  <43.172897, 34.706146, 35.237278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997765, 34.437298, 35.476128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769350, 0.063561, 0.635658,
		-0.465195, 0.737705, 0.489270,
		-0.437830, -0.672125, 0.597121,
		42.866417, 34.235661, 35.655266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279770, 34.931625, 35.876915>,  <43.172897, 34.706146, 35.237278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279770, 34.931625, 35.876915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198189, 34.542381, 35.919724>,  <43.149239, 34.308834, 35.945408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198189, 34.542381, 35.919724>,  <43.279770, 34.931625, 35.876915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198189, 34.542381, 35.919724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683833, -0.063380, 0.726880,
		-0.700553, 0.221437, 0.678374,
		-0.203953, -0.973113, 0.107025,
		43.137001, 34.250446, 35.951832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132423, 34.772083, 36.589222>,  <43.279770, 34.931625, 35.876915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132423, 34.772083, 36.589222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245167, 34.417637, 36.442059>,  <43.312813, 34.204967, 36.353760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245167, 34.417637, 36.442059>,  <43.132423, 34.772083, 36.589222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245167, 34.417637, 36.442059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661897, -0.098010, 0.743159,
		-0.694583, -0.452983, 0.558892,
		0.281862, -0.886115, -0.367904,
		43.329727, 34.151802, 36.331688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164532, 34.289886, 37.063210>,  <43.132423, 34.772083, 36.589222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164532, 34.289886, 37.063210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373928, 34.067028, 36.805355>,  <43.499565, 33.933315, 36.650642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373928, 34.067028, 36.805355>,  <43.164532, 34.289886, 37.063210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373928, 34.067028, 36.805355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522392, -0.387822, 0.759408,
		-0.673101, -0.734293, 0.088025,
		0.523490, -0.557142, -0.644632,
		43.530975, 33.899887, 36.611965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146568, 33.672092, 37.329540>,  <43.164532, 34.289886, 37.063210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146568, 33.672092, 37.329540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445229, 33.620728, 37.068459>,  <43.624424, 33.589909, 36.911808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445229, 33.620728, 37.068459>,  <43.146568, 33.672092, 37.329540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445229, 33.620728, 37.068459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510953, -0.517578, 0.686324,
		-0.425961, -0.845945, -0.320835,
		0.746649, -0.128415, -0.652706,
		43.669224, 33.582203, 36.872646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272980, 32.972588, 37.344662>,  <43.146568, 33.672092, 37.329540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272980, 32.972588, 37.344662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601837, 33.151367, 37.203625>,  <43.799152, 33.258636, 37.119003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601837, 33.151367, 37.203625>,  <43.272980, 32.972588, 37.344662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601837, 33.151367, 37.203625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560115, -0.524372, 0.641331,
		0.101755, -0.724755, -0.681451,
		0.822142, 0.446950, -0.352589,
		43.848480, 33.285454, 37.097847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702831, 32.456627, 37.272186>,  <43.272980, 32.972588, 37.344662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702831, 32.456627, 37.272186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939182, 32.775101, 37.324257>,  <44.080994, 32.966187, 37.355499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939182, 32.775101, 37.324257>,  <43.702831, 32.456627, 37.272186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939182, 32.775101, 37.324257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568314, -0.525311, 0.633299,
		0.572609, -0.300221, -0.762881,
		0.590879, 0.796188, 0.130178,
		44.116447, 33.013958, 37.363312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424740, 32.215881, 37.159225>,  <43.702831, 32.456627, 37.272186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424740, 32.215881, 37.159225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473686, 32.553646, 37.367836>,  <44.503056, 32.756306, 37.493004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473686, 32.553646, 37.367836>,  <44.424740, 32.215881, 37.159225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473686, 32.553646, 37.367836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645444, -0.466885, 0.604500,
		0.753942, 0.262645, -0.602154,
		0.122368, 0.844415, 0.521527,
		44.510395, 32.806969, 37.524296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046982, 32.197426, 37.445564>,  <44.424740, 32.215881, 37.159225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046982, 32.197426, 37.445564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900379, 32.487648, 37.678543>,  <44.812416, 32.661781, 37.818329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900379, 32.487648, 37.678543>,  <45.046982, 32.197426, 37.445564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900379, 32.487648, 37.678543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642478, -0.255437, 0.722478,
		0.672975, 0.639003, -0.372532,
		-0.366507, 0.725553, 0.582448,
		44.790428, 32.705315, 37.853279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582634, 32.596313, 37.675533>,  <45.046982, 32.197426, 37.445564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582634, 32.596313, 37.675533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278904, 32.571327, 37.934616>,  <45.096664, 32.556335, 38.090065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.278904, 32.571327, 37.934616>,  <45.582634, 32.596313, 37.675533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.278904, 32.571327, 37.934616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643576, -0.219092, 0.733355,
		0.096095, 0.973702, 0.206566,
		-0.759326, -0.062469, 0.647705,
		45.051105, 32.552586, 38.128929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794735, 32.950710, 38.357182>,  <45.582634, 32.596313, 37.675533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794735, 32.950710, 38.357182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517681, 32.666687, 38.407894>,  <45.351448, 32.496273, 38.438324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517681, 32.666687, 38.407894>,  <45.794735, 32.950710, 38.357182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517681, 32.666687, 38.407894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437329, -0.273631, 0.856662,
		-0.573591, 0.648797, 0.500056,
		-0.692630, -0.710062, 0.126786,
		45.309891, 32.453667, 38.445930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.636795, 33.065613, 39.119274>,  <45.794735, 32.950710, 38.357182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.636795, 33.065613, 39.119274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470116, 32.710957, 39.039040>,  <45.370106, 32.498165, 38.990898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470116, 32.710957, 39.039040>,  <45.636795, 33.065613, 39.119274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470116, 32.710957, 39.039040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507371, -0.409932, 0.757978,
		-0.754278, 0.214079, 0.620673,
		-0.416701, -0.886638, -0.200585,
		45.345104, 32.444965, 38.978863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252575, 32.820103, 39.707283>,  <45.636795, 33.065613, 39.119274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252575, 32.820103, 39.707283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364765, 32.497276, 39.499443>,  <45.432079, 32.303581, 39.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364765, 32.497276, 39.499443>,  <45.252575, 32.820103, 39.707283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364765, 32.497276, 39.499443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519979, -0.327262, 0.789000,
		-0.806818, -0.491477, 0.327866,
		0.280477, -0.807063, -0.519598,
		45.448910, 32.255157, 39.343563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157265, 32.234779, 40.082932>,  <45.252575, 32.820103, 39.707283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157265, 32.234779, 40.082932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450726, 32.163891, 39.820530>,  <45.626804, 32.121357, 39.663090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450726, 32.163891, 39.820530>,  <45.157265, 32.234779, 40.082932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450726, 32.163891, 39.820530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627291, -0.194540, 0.754096,
		-0.261262, -0.964752, -0.031555,
		0.733654, -0.177222, -0.656006,
		45.670822, 32.110725, 39.623730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339603, 31.486725, 40.019184>,  <45.157265, 32.234779, 40.082932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339603, 31.486725, 40.019184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631992, 31.759615, 40.025433>,  <45.807426, 31.923349, 40.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631992, 31.759615, 40.025433>,  <45.339603, 31.486725, 40.019184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631992, 31.759615, 40.025433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400187, -0.447094, 0.799974,
		0.552746, -0.578510, -0.599832,
		0.730974, 0.682227, 0.015618,
		45.851284, 31.964283, 40.030117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917553, 31.199747, 40.090973>,  <45.339603, 31.486725, 40.019184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917553, 31.199747, 40.090973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995167, 31.563021, 40.239326>,  <46.041733, 31.780985, 40.328339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.995167, 31.563021, 40.239326>,  <45.917553, 31.199747, 40.090973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.995167, 31.563021, 40.239326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464991, -0.418047, 0.780398,
		0.863791, 0.021038, -0.503410,
		0.194031, 0.908182, 0.370887,
		46.053375, 31.835476, 40.350594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.544655, 31.499989, 40.389095>,  <45.917553, 31.199747, 40.090973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.544655, 31.499989, 40.389095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569614, 31.220451, 40.104076>,  <46.584591, 31.052729, 39.933064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569614, 31.220451, 40.104076>,  <46.544655, 31.499989, 40.389095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569614, 31.220451, 40.104076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545842, 0.573812, -0.610571,
		0.835562, 0.427037, -0.345652,
		0.062397, -0.698841, -0.712550,
		46.588333, 31.010799, 39.890312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735546, 31.839470, 39.908226>,  <46.544655, 31.499989, 40.389095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735546, 31.839470, 39.908226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520679, 31.522701, 39.792080>,  <46.391758, 31.332640, 39.722393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520679, 31.522701, 39.792080>,  <46.735546, 31.839470, 39.908226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520679, 31.522701, 39.792080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612508, 0.602911, -0.511206,
		0.579896, -0.096757, -0.808924,
		-0.537172, -0.791919, -0.290361,
		46.359528, 31.285126, 39.704971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.684872, 31.865204, 39.119881>,  <46.735546, 31.839470, 39.908226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.684872, 31.865204, 39.119881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391644, 31.666471, 39.305683>,  <46.215706, 31.547232, 39.417164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391644, 31.666471, 39.305683>,  <46.684872, 31.865204, 39.119881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391644, 31.666471, 39.305683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661213, 0.360552, -0.657876,
		0.159376, -0.789406, -0.592822,
		-0.733074, -0.496831, 0.464502,
		46.171722, 31.517422, 39.445034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337654, 31.513596, 38.607224>,  <46.684872, 31.865204, 39.119881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337654, 31.513596, 38.607224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099979, 31.610836, 38.913910>,  <45.957375, 31.669180, 39.097919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099979, 31.610836, 38.913910>,  <46.337654, 31.513596, 38.607224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099979, 31.610836, 38.913910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681466, 0.354204, -0.640425,
		-0.427260, -0.903018, -0.044798,
		-0.594183, 0.243100, 0.766713,
		45.921726, 31.683765, 39.143925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593132, 31.290495, 38.521938>,  <46.337654, 31.513596, 38.607224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593132, 31.290495, 38.521938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578579, 31.579243, 38.798367>,  <45.569847, 31.752491, 38.964222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578579, 31.579243, 38.798367>,  <45.593132, 31.290495, 38.521938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578579, 31.579243, 38.798367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775963, 0.415358, -0.474720,
		-0.629728, -0.553517, 0.545033,
		-0.036382, 0.721870, 0.691071,
		45.567665, 31.795803, 39.005688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892200, 31.226461, 38.832241>,  <45.593132, 31.290495, 38.521938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892200, 31.226461, 38.832241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053654, 31.592098, 38.847839>,  <45.150524, 31.811480, 38.857197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.053654, 31.592098, 38.847839>,  <44.892200, 31.226461, 38.832241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053654, 31.592098, 38.847839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747257, 0.353955, -0.562426,
		-0.527911, 0.197872, 0.825928,
		0.403629, 0.914091, 0.038996,
		45.174744, 31.866325, 38.859539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370686, 31.640781, 38.816376>,  <44.892200, 31.226461, 38.832241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370686, 31.640781, 38.816376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669167, 31.880140, 38.699684>,  <44.848255, 32.023754, 38.629669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669167, 31.880140, 38.699684>,  <44.370686, 31.640781, 38.816376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669167, 31.880140, 38.699684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491067, 0.198893, -0.848112,
		-0.449484, 0.776121, 0.442267,
		0.746202, 0.598396, -0.291728,
		44.893028, 32.059658, 38.612167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992962, 32.189774, 38.622021>,  <44.370686, 31.640781, 38.816376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992962, 32.189774, 38.622021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342037, 32.206211, 38.427402>,  <44.551483, 32.216072, 38.310631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342037, 32.206211, 38.427402>,  <43.992962, 32.189774, 38.622021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342037, 32.206211, 38.427402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461556, 0.394548, -0.794543,
		0.159318, 0.917956, 0.363282,
		0.872687, 0.041090, -0.486547,
		44.603844, 32.218536, 38.281437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187645, 32.847969, 38.459457>,  <43.992962, 32.189774, 38.622021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187645, 32.847969, 38.459457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575996, 32.937595, 38.425545>,  <44.809006, 32.991371, 38.405197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.575996, 32.937595, 38.425545>,  <44.187645, 32.847969, 38.459457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575996, 32.937595, 38.425545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142118, 0.253768, -0.956768,
		-0.192863, 0.940955, 0.278222,
		0.970879, 0.224065, -0.084784,
		44.867260, 33.004814, 38.400108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494766, 33.546822, 38.572342>,  <44.187645, 32.847969, 38.459457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494766, 33.546822, 38.572342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670372, 33.334030, 38.282719>,  <44.775734, 33.206356, 38.108944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670372, 33.334030, 38.282719>,  <44.494766, 33.546822, 38.572342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670372, 33.334030, 38.282719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467257, 0.553145, -0.689711,
		0.767424, 0.641114, -0.005734,
		0.439012, -0.531981, -0.724062,
		44.802074, 33.174435, 38.065498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730877, 33.999763, 38.001301>,  <44.494766, 33.546822, 38.572342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730877, 33.999763, 38.001301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654427, 33.627724, 37.875832>,  <44.608559, 33.404499, 37.800549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654427, 33.627724, 37.875832>,  <44.730877, 33.999763, 38.001301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654427, 33.627724, 37.875832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524323, 0.366891, -0.768425,
		0.829794, 0.017603, -0.557792,
		-0.191122, -0.930097, -0.313674,
		44.597092, 33.348694, 37.781731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976105, 34.032703, 37.379337>,  <44.730877, 33.999763, 38.001301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976105, 34.032703, 37.379337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721210, 33.724487, 37.384857>,  <44.568272, 33.539558, 37.388168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721210, 33.724487, 37.384857>,  <44.976105, 34.032703, 37.379337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721210, 33.724487, 37.384857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427346, 0.338401, -0.838368,
		0.641330, -0.540136, -0.544931,
		-0.637237, -0.770544, 0.013798,
		44.530041, 33.493324, 37.388996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054039, 33.621532, 36.674236>,  <44.976105, 34.032703, 37.379337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054039, 33.621532, 36.674236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690838, 33.516472, 36.804806>,  <44.472919, 33.453434, 36.883148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690838, 33.516472, 36.804806>,  <45.054039, 33.621532, 36.674236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690838, 33.516472, 36.804806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408987, 0.386572, -0.826615,
		0.090930, -0.884067, -0.458429,
		-0.907999, -0.262656, 0.326420,
		44.418438, 33.437675, 36.902733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616978, 33.524807, 35.992336>,  <45.054039, 33.621532, 36.674236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616978, 33.524807, 35.992336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327576, 33.544426, 36.267765>,  <44.153934, 33.556198, 36.433022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327576, 33.544426, 36.267765>,  <44.616978, 33.524807, 35.992336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327576, 33.544426, 36.267765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654840, 0.266893, -0.707073,
		-0.218458, -0.962477, -0.160978,
		-0.723506, 0.049051, 0.688574,
		44.110523, 33.559143, 36.474339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043903, 33.434135, 35.599586>,  <44.616978, 33.524807, 35.992336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043903, 33.434135, 35.599586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913445, 33.523651, 35.966965>,  <43.835167, 33.577362, 36.187393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.913445, 33.523651, 35.966965>,  <44.043903, 33.434135, 35.599586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.913445, 33.523651, 35.966965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883542, 0.273295, -0.380347,
		-0.336126, -0.935535, 0.108597,
		-0.326149, 0.223794, 0.918446,
		43.815601, 33.590790, 36.242500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454708, 32.993584, 35.814327>,  <44.043903, 33.434135, 35.599586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454708, 32.993584, 35.814327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406902, 33.346111, 35.997189>,  <43.378220, 33.557629, 36.106903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406902, 33.346111, 35.997189>,  <43.454708, 32.993584, 35.814327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406902, 33.346111, 35.997189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920924, 0.073639, -0.382723,
		-0.370967, -0.466740, 0.802831,
		-0.119512, 0.881323, 0.457149,
		43.371048, 33.610508, 36.134335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857471, 32.995785, 36.132408>,  <43.454708, 32.993584, 35.814327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857471, 32.995785, 36.132408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925697, 33.388100, 36.094528>,  <42.966633, 33.623489, 36.071800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925697, 33.388100, 36.094528>,  <42.857471, 32.995785, 36.132408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925697, 33.388100, 36.094528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961050, 0.144374, -0.235666,
		-0.217466, 0.131205, 0.967209,
		0.170560, 0.980786, -0.094698,
		42.976864, 33.682335, 36.066120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274406, 33.366852, 36.390316>,  <42.857471, 32.995785, 36.132408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274406, 33.366852, 36.390316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454659, 33.645660, 36.167213>,  <42.562809, 33.812946, 36.033352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454659, 33.645660, 36.167213>,  <42.274406, 33.366852, 36.390316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454659, 33.645660, 36.167213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871877, 0.209434, -0.442683,
		-0.191745, 0.685784, 0.702093,
		0.450627, 0.697021, -0.557761,
		42.589848, 33.854767, 35.999886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988747, 33.994682, 36.542839>,  <42.274406, 33.366852, 36.390316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988747, 33.994682, 36.542839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104515, 34.051331, 36.164173>,  <42.173977, 34.085320, 35.936974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104515, 34.051331, 36.164173>,  <41.988747, 33.994682, 36.542839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104515, 34.051331, 36.164173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920021, 0.314122, -0.234283,
		0.264188, 0.938760, 0.221211,
		0.289423, 0.141624, -0.946667,
		42.191341, 34.093819, 35.880173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609314, 34.652462, 36.268333>,  <41.988747, 33.994682, 36.542839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609314, 34.652462, 36.268333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760399, 34.457615, 35.953362>,  <41.851048, 34.340706, 35.764378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760399, 34.457615, 35.953362>,  <41.609314, 34.652462, 36.268333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760399, 34.457615, 35.953362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713087, 0.389439, -0.582961,
		0.590628, 0.781699, -0.200263,
		0.377710, -0.487118, -0.787433,
		41.873711, 34.311478, 35.717133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614292, 35.081757, 35.735508>,  <41.609314, 34.652462, 36.268333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614292, 35.081757, 35.735508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710968, 34.804115, 35.464272>,  <41.768974, 34.637531, 35.301529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710968, 34.804115, 35.464272>,  <41.614292, 35.081757, 35.735508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710968, 34.804115, 35.464272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769840, 0.288239, -0.569443,
		0.590705, 0.659647, -0.464686,
		0.241690, -0.694106, -0.678087,
		41.783474, 34.595882, 35.260845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509697, 35.370964, 35.147106>,  <41.614292, 35.081757, 35.735508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509697, 35.370964, 35.147106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452141, 34.980175, 35.084084>,  <41.417606, 34.745701, 35.046268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452141, 34.980175, 35.084084>,  <41.509697, 35.370964, 35.147106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452141, 34.980175, 35.084084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859089, 0.202351, -0.470128,
		0.491184, 0.067710, -0.868421,
		-0.143893, -0.976970, -0.157560,
		41.408974, 34.687084, 35.036816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491634, 35.350132, 34.463387>,  <41.509697, 35.370964, 35.147106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491634, 35.350132, 34.463387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306671, 35.032833, 34.621845>,  <41.195694, 34.842453, 34.716923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306671, 35.032833, 34.621845>,  <41.491634, 35.350132, 34.463387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306671, 35.032833, 34.621845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786084, 0.160077, -0.597032,
		0.410181, -0.587479, -0.697582,
		-0.462410, -0.793249, 0.396148,
		41.167950, 34.794857, 34.740688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634472, 34.779808, 34.058163>,  <41.491634, 35.350132, 34.463387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634472, 34.779808, 34.058163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028996, 34.741299, 34.111713>,  <42.265709, 34.718193, 34.143845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028996, 34.741299, 34.111713>,  <41.634472, 34.779808, 34.058163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028996, 34.741299, 34.111713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078651, -0.438883, -0.895095,
		0.144931, 0.893371, -0.425303,
		0.986311, -0.096276, 0.133872,
		42.324890, 34.712418, 34.151875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147533, 34.966919, 33.402264>,  <41.634472, 34.779808, 34.058163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147533, 34.966919, 33.402264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298019, 34.693668, 33.652637>,  <42.388313, 34.529716, 33.802864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298019, 34.693668, 33.652637>,  <42.147533, 34.966919, 33.402264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298019, 34.693668, 33.652637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095578, -0.700580, -0.707144,
		0.921588, 0.206215, -0.328863,
		0.376219, -0.683127, 0.625937,
		42.410885, 34.488731, 33.840420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355942, 34.413658, 33.074295>,  <42.147533, 34.966919, 33.402264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355942, 34.413658, 33.074295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305145, 34.206848, 33.412895>,  <42.274666, 34.082764, 33.616055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305145, 34.206848, 33.412895>,  <42.355942, 34.413658, 33.074295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305145, 34.206848, 33.412895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395142, -0.756396, -0.521275,
		0.909799, -0.400686, -0.108240,
		-0.126995, -0.517025, 0.846497,
		42.267048, 34.051739, 33.666843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793327, 34.365326, 32.607414>,  <42.355942, 34.413658, 33.074295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793327, 34.365326, 32.607414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415585, 34.461899, 32.696758>,  <41.188938, 34.519844, 32.750366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415585, 34.461899, 32.696758>,  <41.793327, 34.365326, 32.607414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415585, 34.461899, 32.696758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160116, -0.930660, 0.328991,
		0.287304, 0.274923, 0.917537,
		-0.944362, 0.241433, 0.223363,
		41.132275, 34.534328, 32.763767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652836, 35.046295, 32.577614>,  <41.793327, 34.365326, 32.607414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652836, 35.046295, 32.577614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434944, 35.050983, 32.242203>,  <41.304211, 35.053795, 32.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434944, 35.050983, 32.242203>,  <41.652836, 35.046295, 32.577614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434944, 35.050983, 32.242203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819992, 0.216980, -0.529653,
		0.175737, -0.976106, -0.127806,
		-0.544729, 0.011720, -0.838530,
		41.271526, 35.054501, 31.990644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066689, 35.039726, 32.080620>,  <41.652836, 35.046295, 32.577614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066689, 35.039726, 32.080620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779694, 35.116192, 31.812687>,  <41.607498, 35.162071, 31.651928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779694, 35.116192, 31.812687>,  <42.066689, 35.039726, 32.080620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779694, 35.116192, 31.812687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685661, 0.363367, -0.630740,
		0.122823, -0.911823, -0.391781,
		-0.717484, 0.191160, -0.669832,
		41.564449, 35.173538, 31.611738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162487, 35.741005, 32.349693>,  <42.066689, 35.039726, 32.080620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162487, 35.741005, 32.349693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250435, 35.540051, 32.684181>,  <42.303204, 35.419476, 32.884872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250435, 35.540051, 32.684181>,  <42.162487, 35.741005, 32.349693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250435, 35.540051, 32.684181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875624, -0.276244, -0.396197,
		0.430046, 0.819325, 0.379166,
		0.219872, -0.502389, 0.836218,
		42.316395, 35.389332, 32.935047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707676, 35.988541, 32.786777>,  <42.162487, 35.741005, 32.349693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707676, 35.988541, 32.786777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687912, 35.589916, 32.760162>,  <42.676052, 35.350742, 32.744194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687912, 35.589916, 32.760162>,  <42.707676, 35.988541, 32.786777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687912, 35.589916, 32.760162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815336, -0.001766, -0.578985,
		0.576876, -0.082858, 0.812619,
		-0.049408, -0.996560, -0.066538,
		42.673088, 35.290947, 32.740200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301327, 35.574051, 33.178150>,  <42.707676, 35.988541, 32.786777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301327, 35.574051, 33.178150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163857, 35.377022, 32.858337>,  <43.081375, 35.258804, 32.666451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163857, 35.377022, 32.858337>,  <43.301327, 35.574051, 33.178150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163857, 35.377022, 32.858337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807841, 0.279048, -0.519158,
		0.478833, -0.824320, 0.302020,
		-0.343674, -0.492574, -0.799536,
		43.060753, 35.229248, 32.618477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729832, 35.158092, 32.905457>,  <43.301327, 35.574051, 33.178150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729832, 35.158092, 32.905457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544106, 35.241432, 32.561131>,  <43.432671, 35.291435, 32.354534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544106, 35.241432, 32.561131>,  <43.729832, 35.158092, 32.905457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544106, 35.241432, 32.561131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883658, 0.174441, -0.434417,
		0.059651, -0.962373, -0.265105,
		-0.464316, 0.208348, -0.860814,
		43.404812, 35.303936, 32.302887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824646, 34.689610, 32.416328>,  <43.729832, 35.158092, 32.905457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824646, 34.689610, 32.416328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760750, 35.043270, 32.240711>,  <43.722412, 35.255466, 32.135342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760750, 35.043270, 32.240711>,  <43.824646, 34.689610, 32.416328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760750, 35.043270, 32.240711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923145, -0.023754, -0.383718,
		-0.349694, -0.466597, -0.812405,
		-0.159744, 0.884151, -0.439043,
		43.712826, 35.308514, 32.108997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010021, 34.768745, 31.659622>,  <43.824646, 34.689610, 32.416328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010021, 34.768745, 31.659622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046646, 35.135418, 31.815214>,  <44.068623, 35.355423, 31.908569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046646, 35.135418, 31.815214>,  <44.010021, 34.768745, 31.659622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046646, 35.135418, 31.815214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829483, 0.145919, -0.539134,
		-0.550975, 0.372018, -0.747013,
		0.091565, 0.916684, 0.388981,
		44.074116, 35.410423, 31.931908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678444, 34.803356, 31.660452>,  <44.010021, 34.768745, 31.659622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678444, 34.803356, 31.660452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704197, 35.159042, 31.479279>,  <44.719650, 35.372456, 31.370575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704197, 35.159042, 31.479279>,  <44.678444, 34.803356, 31.660452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704197, 35.159042, 31.479279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516072, 0.418141, 0.747548,
		0.854122, 0.185618, 0.485821,
		0.064383, 0.889216, -0.452936,
		44.723511, 35.425808, 31.343397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915287, 35.313538, 32.186222>,  <44.678444, 34.803356, 31.660452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915287, 35.313538, 32.186222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702690, 35.469997, 31.885685>,  <44.575130, 35.563873, 31.705362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.702690, 35.469997, 31.885685>,  <44.915287, 35.313538, 32.186222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702690, 35.469997, 31.885685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558905, 0.504582, 0.658045,
		0.636507, 0.769676, -0.049568,
		-0.531493, 0.391146, -0.751346,
		44.543243, 35.587341, 31.660282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299232, 35.357895, 32.768547>,  <44.915287, 35.313538, 32.186222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299232, 35.357895, 32.768547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977627, 35.556030, 32.636967>,  <44.784664, 35.674911, 32.558018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977627, 35.556030, 32.636967>,  <45.299232, 35.357895, 32.768547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977627, 35.556030, 32.636967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383626, -0.009440, 0.923440,
		0.454306, 0.868651, 0.197613,
		-0.804013, 0.495334, -0.328949,
		44.736423, 35.704632, 32.538280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986164, 34.928864, 32.822708>,  <45.299232, 35.357895, 32.768547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986164, 34.928864, 32.822708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212315, 34.632095, 32.678535>,  <46.348003, 34.454037, 32.592030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.212315, 34.632095, 32.678535>,  <45.986164, 34.928864, 32.822708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212315, 34.632095, 32.678535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665264, 0.668487, -0.332490,
		0.487626, -0.051804, 0.871514,
		0.565372, -0.741918, -0.360435,
		46.381927, 34.409519, 32.570404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.746353, 35.107204, 32.841812>,  <45.986164, 34.928864, 32.822708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.746353, 35.107204, 32.841812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655422, 34.842525, 32.556023>,  <46.600864, 34.683720, 32.384548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655422, 34.842525, 32.556023>,  <46.746353, 35.107204, 32.841812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655422, 34.842525, 32.556023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679359, 0.417899, -0.603185,
		0.697705, -0.622510, 0.354528,
		-0.227332, -0.661697, -0.714477,
		46.587223, 34.644016, 32.341679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774502, 34.480743, 33.330215>,  <46.746353, 35.107204, 32.841812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774502, 34.480743, 33.330215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.611076, 34.479389, 33.695305>,  <46.513020, 34.478577, 33.914360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.611076, 34.479389, 33.695305>,  <46.774502, 34.480743, 33.330215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.611076, 34.479389, 33.695305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899748, -0.169547, 0.402129,
		0.153388, 0.985516, 0.072316,
		-0.408565, -0.003385, 0.912723,
		46.488506, 34.478374, 33.969120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920815, 35.008224, 33.674423>,  <46.774502, 34.480743, 33.330215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920815, 35.008224, 33.674423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887199, 34.648312, 33.845688>,  <46.867031, 34.432362, 33.948448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887199, 34.648312, 33.845688>,  <46.920815, 35.008224, 33.674423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887199, 34.648312, 33.845688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989520, -0.024727, 0.142266,
		-0.117422, 0.435630, 0.892434,
		-0.084042, -0.899786, 0.428161,
		46.861988, 34.378376, 33.974136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.312031, 34.990551, 34.283817>,  <46.920815, 35.008224, 33.674423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.312031, 34.990551, 34.283817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266041, 34.623127, 34.132538>,  <47.238445, 34.402672, 34.041771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266041, 34.623127, 34.132538>,  <47.312031, 34.990551, 34.283817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.266041, 34.623127, 34.132538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974572, -0.178020, 0.136084,
		-0.192328, -0.352932, 0.915668,
		-0.114979, -0.918557, -0.378196,
		47.231548, 34.347561, 34.019077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.772770, 34.434822, 34.719307>,  <47.312031, 34.990551, 34.283817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.772770, 34.434822, 34.719307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742367, 34.334652, 34.333248>,  <47.724125, 34.274551, 34.101612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742367, 34.334652, 34.333248>,  <47.772770, 34.434822, 34.719307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742367, 34.334652, 34.333248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946751, -0.321841, 0.008949,
		-0.312865, -0.913075, 0.261551,
		-0.076007, -0.250423, -0.965148,
		47.719566, 34.259525, 34.043705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.372490, 34.733376, 35.098465>,  <47.772770, 34.434822, 34.719307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.372490, 34.733376, 35.098465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697392, 34.931782, 34.975693>,  <47.892334, 35.050827, 34.902031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697392, 34.931782, 34.975693>,  <47.372490, 34.733376, 35.098465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.697392, 34.931782, 34.975693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542429, 0.448810, -0.710169,
		-0.214502, 0.743328, 0.633602,
		0.812256, 0.496017, -0.306932,
		47.941067, 35.080585, 34.883614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.913906, 29.484941, 26.848246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728230, 29.719456, 26.582676>,  <38.616825, 29.860165, 26.423334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728230, 29.719456, 26.582676>,  <38.913906, 29.484941, 26.848246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728230, 29.719456, 26.582676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614234, 0.326982, 0.718192,
		0.638158, 0.741182, 0.208336,
		-0.464188, 0.586287, -0.663925,
		38.588974, 29.895342, 26.383499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949680, 30.134018, 27.113188>,  <38.913906, 29.484941, 26.848246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949680, 30.134018, 27.113188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636978, 30.155653, 26.864693>,  <38.449356, 30.168634, 26.715595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.636978, 30.155653, 26.864693>,  <38.949680, 30.134018, 27.113188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636978, 30.155653, 26.864693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577179, 0.314368, 0.753683,
		0.236060, 0.947759, -0.214542,
		-0.781755, 0.054085, -0.621236,
		38.402451, 30.171879, 26.678322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734886, 30.763203, 27.218376>,  <38.949680, 30.134018, 27.113188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734886, 30.763203, 27.218376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435280, 30.531368, 27.089968>,  <38.255516, 30.392267, 27.012922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435280, 30.531368, 27.089968>,  <38.734886, 30.763203, 27.218376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435280, 30.531368, 27.089968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551181, 0.276212, 0.787342,
		-0.367664, 0.766671, -0.526345,
		-0.749015, -0.579588, -0.321021,
		38.210575, 30.357492, 26.993662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087227, 31.129389, 27.272106>,  <38.734886, 30.763203, 27.218376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087227, 31.129389, 27.272106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946434, 30.755562, 27.251347>,  <37.861958, 30.531265, 27.238892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946434, 30.755562, 27.251347>,  <38.087227, 31.129389, 27.272106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946434, 30.755562, 27.251347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566055, 0.168374, 0.806989,
		-0.745448, 0.313421, -0.588281,
		-0.351979, -0.934568, -0.051899,
		37.840839, 30.475191, 27.235777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317097, 31.159111, 27.360752>,  <38.087227, 31.129389, 27.272106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317097, 31.159111, 27.360752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428127, 30.787941, 27.460272>,  <37.494747, 30.565239, 27.519983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428127, 30.787941, 27.460272>,  <37.317097, 31.159111, 27.360752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428127, 30.787941, 27.460272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687220, -0.010816, 0.726368,
		-0.671326, -0.372604, -0.640693,
		0.277577, -0.927927, 0.248800,
		37.511402, 30.509563, 27.534912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616619, 31.127371, 27.684427>,  <37.317097, 31.159111, 27.360752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616619, 31.127371, 27.684427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830189, 30.801899, 27.776379>,  <36.958332, 30.606615, 27.831549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830189, 30.801899, 27.776379>,  <36.616619, 31.127371, 27.684427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830189, 30.801899, 27.776379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357124, 0.029413, 0.933594,
		-0.766410, -0.580566, -0.274881,
		0.533927, -0.813682, 0.229876,
		36.990368, 30.557795, 27.845341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154655, 30.419081, 27.788771>,  <36.616619, 31.127371, 27.684427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154655, 30.419081, 27.788771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505661, 30.417124, 27.980577>,  <36.716267, 30.415951, 28.095661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505661, 30.417124, 27.980577>,  <36.154655, 30.419081, 27.788771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505661, 30.417124, 27.980577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479502, 0.004234, 0.877531,
		-0.006375, -0.999979, 0.001341,
		0.877518, -0.004951, 0.479519,
		36.768917, 30.415657, 28.124434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029640, 29.990065, 28.387108>,  <36.154655, 30.419081, 27.788771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029640, 29.990065, 28.387108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346462, 30.206646, 28.499872>,  <36.536556, 30.336596, 28.567532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346462, 30.206646, 28.499872>,  <36.029640, 29.990065, 28.387108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346462, 30.206646, 28.499872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445147, 0.196287, 0.873679,
		0.417724, -0.817494, 0.396498,
		0.792055, 0.541457, 0.281911,
		36.584080, 30.369083, 28.584446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165298, 29.847313, 29.139128>,  <36.029640, 29.990065, 28.387108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165298, 29.847313, 29.139128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341305, 30.197493, 29.059153>,  <36.446911, 30.407600, 29.011168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.341305, 30.197493, 29.059153>,  <36.165298, 29.847313, 29.139128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341305, 30.197493, 29.059153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295081, 0.351248, 0.888568,
		0.848122, -0.331988, 0.412883,
		0.440018, 0.875448, -0.199938,
		36.473309, 30.460127, 28.999172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451149, 30.002699, 29.844566>,  <36.165298, 29.847313, 29.139128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451149, 30.002699, 29.844566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469082, 30.337769, 29.626835>,  <36.479839, 30.538811, 29.496197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469082, 30.337769, 29.626835>,  <36.451149, 30.002699, 29.844566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469082, 30.337769, 29.626835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223605, 0.539465, 0.811775,
		0.973648, 0.085323, 0.211492,
		0.044830, 0.837674, -0.544327,
		36.482533, 30.589071, 29.463537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823612, 30.491457, 30.168009>,  <36.451149, 30.002699, 29.844566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823612, 30.491457, 30.168009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.634285, 30.760387, 29.940344>,  <36.520687, 30.921745, 29.803745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.634285, 30.760387, 29.940344>,  <36.823612, 30.491457, 30.168009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634285, 30.760387, 29.940344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094344, 0.603714, 0.791598,
		0.875822, 0.428378, -0.222322,
		-0.473322, 0.672325, -0.569161,
		36.492287, 30.962086, 29.769596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132648, 31.152405, 30.441900>,  <36.823612, 30.491457, 30.168009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132648, 31.152405, 30.441900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780544, 31.189192, 30.255701>,  <36.569283, 31.211264, 30.143982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780544, 31.189192, 30.255701>,  <37.132648, 31.152405, 30.441900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780544, 31.189192, 30.255701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369533, 0.482521, 0.794116,
		0.297644, 0.871043, -0.390758,
		-0.880258, 0.091966, -0.465498,
		36.516468, 31.216782, 30.116051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927143, 31.771875, 30.452393>,  <37.132648, 31.152405, 30.441900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927143, 31.771875, 30.452393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593231, 31.552446, 30.433552>,  <36.392883, 31.420790, 30.422247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.593231, 31.552446, 30.433552>,  <36.927143, 31.771875, 30.452393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593231, 31.552446, 30.433552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316925, 0.408790, 0.855832,
		-0.450232, 0.729355, -0.515104,
		-0.834775, -0.548572, -0.047101,
		36.342800, 31.387875, 30.419422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444973, 32.253311, 30.718725>,  <36.927143, 31.771875, 30.452393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444973, 32.253311, 30.718725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221027, 31.922148, 30.732094>,  <36.086662, 31.723450, 30.740114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221027, 31.922148, 30.732094>,  <36.444973, 32.253311, 30.718725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221027, 31.922148, 30.732094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431228, 0.325576, 0.841453,
		-0.707529, 0.456686, -0.539296,
		-0.559861, -0.827912, 0.033419,
		36.053070, 31.673775, 30.742119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646820, 32.357632, 30.816870>,  <36.444973, 32.253311, 30.718725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646820, 32.357632, 30.816870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698059, 31.984535, 30.951683>,  <35.728802, 31.760677, 31.032572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698059, 31.984535, 30.951683>,  <35.646820, 32.357632, 30.816870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698059, 31.984535, 30.951683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445093, 0.249621, 0.859989,
		-0.886276, -0.260169, -0.383181,
		0.128093, -0.932739, 0.337033,
		35.736488, 31.704714, 31.052794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930641, 32.133308, 31.047054>,  <35.646820, 32.357632, 30.816870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930641, 32.133308, 31.047054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226936, 31.925819, 31.217808>,  <35.404713, 31.801327, 31.320261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.226936, 31.925819, 31.217808>,  <34.930641, 32.133308, 31.047054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226936, 31.925819, 31.217808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406903, 0.159182, 0.899495,
		-0.534540, -0.839993, -0.093157,
		0.740741, -0.518723, 0.426885,
		35.449158, 31.770203, 31.345873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546452, 31.646721, 31.524223>,  <34.930641, 32.133308, 31.047054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546452, 31.646721, 31.524223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.923866, 31.670759, 31.654535>,  <35.150314, 31.685183, 31.732721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.923866, 31.670759, 31.654535>,  <34.546452, 31.646721, 31.524223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923866, 31.670759, 31.654535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327681, 0.024837, 0.944462,
		0.048655, -0.997884, 0.043123,
		0.943535, 0.060083, 0.325780,
		35.206928, 31.688787, 31.752270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583572, 31.175955, 32.066868>,  <34.546452, 31.646721, 31.524223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583572, 31.175955, 32.066868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872387, 31.449223, 32.110580>,  <35.045677, 31.613184, 32.136806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.872387, 31.449223, 32.110580>,  <34.583572, 31.175955, 32.066868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872387, 31.449223, 32.110580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328845, 0.199915, 0.922981,
		0.608707, -0.702362, 0.369003,
		0.722037, 0.683170, 0.109279,
		35.088997, 31.654173, 32.143364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498295, 31.197145, 32.840603>,  <34.583572, 31.175955, 32.066868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498295, 31.197145, 32.840603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739571, 31.503033, 32.749943>,  <34.884335, 31.686565, 32.695549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739571, 31.503033, 32.749943>,  <34.498295, 31.197145, 32.840603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739571, 31.503033, 32.749943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031405, 0.306712, 0.951284,
		0.796981, -0.566684, 0.209021,
		0.603187, 0.764720, -0.226647,
		34.920528, 31.732449, 32.681950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092545, 31.095346, 33.225422>,  <34.498295, 31.197145, 32.840603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092545, 31.095346, 33.225422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074409, 31.488245, 33.152611>,  <35.063530, 31.723984, 33.108925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.074409, 31.488245, 33.152611>,  <35.092545, 31.095346, 33.225422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074409, 31.488245, 33.152611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103049, 0.185837, 0.977162,
		0.993643, 0.025540, -0.109644,
		-0.045333, 0.982249, -0.182023,
		35.060810, 31.782919, 33.098003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602367, 31.400648, 33.700104>,  <35.092545, 31.095346, 33.225422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602367, 31.400648, 33.700104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.357048, 31.689480, 33.572063>,  <35.209858, 31.862780, 33.495239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.357048, 31.689480, 33.572063>,  <35.602367, 31.400648, 33.700104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357048, 31.689480, 33.572063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074088, 0.350893, 0.933480,
		0.786369, 0.596218, -0.161705,
		-0.613299, 0.722079, -0.320104,
		35.173058, 31.906103, 33.476032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919136, 32.048302, 33.971043>,  <35.602367, 31.400648, 33.700104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919136, 32.048302, 33.971043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528965, 32.097282, 33.897785>,  <35.294861, 32.126671, 33.853828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528965, 32.097282, 33.897785>,  <35.919136, 32.048302, 33.971043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528965, 32.097282, 33.897785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109250, 0.453042, 0.884770,
		0.191317, 0.883039, -0.428532,
		-0.975429, 0.122454, -0.183146,
		35.236336, 32.134018, 33.842842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186951, 32.224415, 34.635414>,  <35.919136, 32.048302, 33.971043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186951, 32.224415, 34.635414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.547604, 32.068840, 34.711090>,  <36.763996, 31.975494, 34.756496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.547604, 32.068840, 34.711090>,  <36.186951, 32.224415, 34.635414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547604, 32.068840, 34.711090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384985, 0.522374, -0.760862,
		0.197102, 0.758850, 0.620723,
		0.901630, -0.388936, 0.189185,
		36.818092, 31.952160, 34.767845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562817, 32.743752, 34.337109>,  <36.186951, 32.224415, 34.635414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562817, 32.743752, 34.337109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845139, 32.475231, 34.427616>,  <37.014530, 32.314121, 34.481922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845139, 32.475231, 34.427616>,  <36.562817, 32.743752, 34.337109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845139, 32.475231, 34.427616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518901, 0.272466, -0.810250,
		0.482268, 0.689289, 0.540645,
		0.705804, -0.671299, 0.226271,
		37.056881, 32.273842, 34.495499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266239, 33.091831, 34.441242>,  <36.562817, 32.743752, 34.337109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266239, 33.091831, 34.441242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309174, 32.710098, 34.329723>,  <37.334934, 32.481056, 34.262814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309174, 32.710098, 34.329723>,  <37.266239, 33.091831, 34.441242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309174, 32.710098, 34.329723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322827, 0.298672, -0.898097,
		0.940352, 0.006396, 0.340143,
		0.107335, -0.954334, -0.278793,
		37.341373, 32.423798, 34.246086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937870, 33.079353, 34.221531>,  <37.266239, 33.091831, 34.441242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937870, 33.079353, 34.221531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.764610, 32.765865, 34.043468>,  <37.660652, 32.577774, 33.936630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.764610, 32.765865, 34.043468>,  <37.937870, 33.079353, 34.221531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764610, 32.765865, 34.043468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482706, 0.215385, -0.848884,
		0.761166, -0.582577, 0.285011,
		-0.433153, -0.783718, -0.445157,
		37.634663, 32.530750, 33.909920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512234, 32.795349, 33.718819>,  <37.937870, 33.079353, 34.221531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512234, 32.795349, 33.718819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193012, 32.587524, 33.596725>,  <38.001480, 32.462830, 33.523468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193012, 32.587524, 33.596725>,  <38.512234, 32.795349, 33.718819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193012, 32.587524, 33.596725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494898, -0.276145, -0.823905,
		0.343778, -0.808581, 0.477507,
		-0.798055, -0.519558, -0.305233,
		37.953594, 32.431656, 33.505157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805996, 32.180077, 33.408699>,  <38.512234, 32.795349, 33.718819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805996, 32.180077, 33.408699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440845, 32.238400, 33.256172>,  <38.221756, 32.273392, 33.164658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.440845, 32.238400, 33.256172>,  <38.805996, 32.180077, 33.408699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440845, 32.238400, 33.256172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344869, -0.224415, -0.911429,
		-0.218446, -0.963527, 0.154586,
		-0.912878, 0.145786, -0.381313,
		38.166985, 32.282143, 33.141777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678143, 31.671288, 32.935482>,  <38.805996, 32.180077, 33.408699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678143, 31.671288, 32.935482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424271, 31.964706, 32.838249>,  <38.271946, 32.140759, 32.779907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.424271, 31.964706, 32.838249>,  <38.678143, 31.671288, 32.935482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424271, 31.964706, 32.838249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217492, -0.132285, -0.967056,
		-0.741536, -0.666642, -0.075581,
		-0.634682, 0.733546, -0.243084,
		38.233868, 32.184769, 32.765324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397308, 31.450794, 32.277905>,  <38.678143, 31.671288, 32.935482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397308, 31.450794, 32.277905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303974, 31.839298, 32.296703>,  <38.247974, 32.072399, 32.307983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303974, 31.839298, 32.296703>,  <38.397308, 31.450794, 32.277905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303974, 31.839298, 32.296703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183835, 0.091523, -0.978687,
		-0.954861, -0.219721, -0.199907,
		-0.233334, 0.971260, 0.047000,
		38.233974, 32.130676, 32.310802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852024, 31.577845, 31.913885>,  <38.397308, 31.450794, 32.277905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852024, 31.577845, 31.913885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060604, 31.918692, 31.931707>,  <38.185753, 32.123199, 31.942402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.060604, 31.918692, 31.931707>,  <37.852024, 31.577845, 31.913885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060604, 31.918692, 31.931707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207435, -0.075941, -0.975297,
		-0.827686, 0.517808, -0.216359,
		0.521447, 0.852120, 0.044557,
		38.217037, 32.174328, 31.945074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688404, 31.949562, 31.245081>,  <37.852024, 31.577845, 31.913885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688404, 31.949562, 31.245081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004669, 32.167164, 31.357450>,  <38.194427, 32.297726, 31.424871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004669, 32.167164, 31.357450>,  <37.688404, 31.949562, 31.245081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004669, 32.167164, 31.357450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302924, 0.051157, -0.951641,
		-0.532066, 0.837523, -0.124344,
		0.790660, 0.544002, 0.280925,
		38.241867, 32.330364, 31.441729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749954, 32.475704, 30.741388>,  <37.688404, 31.949562, 31.245081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749954, 32.475704, 30.741388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104321, 32.426819, 30.920372>,  <38.316940, 32.397488, 31.027761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.104321, 32.426819, 30.920372>,  <37.749954, 32.475704, 30.741388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104321, 32.426819, 30.920372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437329, -0.101436, -0.893563,
		0.154590, 0.987307, -0.036418,
		0.885915, -0.122210, 0.447459,
		38.370094, 32.390156, 31.054609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175072, 32.916542, 30.493158>,  <37.749954, 32.475704, 30.741388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175072, 32.916542, 30.493158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405178, 32.621826, 30.635265>,  <38.543240, 32.444996, 30.720530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.405178, 32.621826, 30.635265>,  <38.175072, 32.916542, 30.493158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405178, 32.621826, 30.635265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461593, -0.066152, -0.884622,
		0.675282, 0.672877, 0.302043,
		0.575261, -0.736790, 0.355266,
		38.577755, 32.400787, 30.741846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791466, 32.894058, 30.041447>,  <38.175072, 32.916542, 30.493158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791466, 32.894058, 30.041447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870255, 32.562122, 30.250282>,  <38.917526, 32.362961, 30.375584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870255, 32.562122, 30.250282>,  <38.791466, 32.894058, 30.041447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870255, 32.562122, 30.250282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569060, -0.336867, -0.750127,
		0.798356, 0.444852, 0.405874,
		0.196970, -0.829836, 0.522088,
		38.929344, 32.313171, 30.406908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518673, 32.848675, 30.013622>,  <38.791466, 32.894058, 30.041447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518673, 32.848675, 30.013622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.391708, 32.479721, 30.101673>,  <39.315529, 32.258350, 30.154503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.391708, 32.479721, 30.101673>,  <39.518673, 32.848675, 30.013622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391708, 32.479721, 30.101673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639610, -0.379622, -0.668421,
		0.700106, -0.071371, 0.710463,
		-0.317413, -0.922385, 0.220126,
		39.296486, 32.203007, 30.167711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098705, 32.422604, 30.157276>,  <39.518673, 32.848675, 30.013622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098705, 32.422604, 30.157276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.820385, 32.150852, 30.064066>,  <39.653393, 31.987801, 30.008141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.820385, 32.150852, 30.064066>,  <40.098705, 32.422604, 30.157276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820385, 32.150852, 30.064066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630013, -0.421530, -0.652224,
		0.344883, -0.600626, 0.721321,
		-0.695801, -0.679383, -0.233023,
		39.611645, 31.947037, 29.994160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443260, 31.819164, 30.067337>,  <40.098705, 32.422604, 30.157276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443260, 31.819164, 30.067337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089737, 31.734159, 29.900621>,  <39.877621, 31.683157, 29.800592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089737, 31.734159, 29.900621>,  <40.443260, 31.819164, 30.067337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089737, 31.734159, 29.900621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465092, -0.495555, -0.733563,
		-0.050650, -0.842177, 0.536817,
		-0.883812, -0.212515, -0.416790,
		39.824593, 31.670404, 29.775585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384747, 31.078848, 29.839640>,  <40.443260, 31.819164, 30.067337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384747, 31.078848, 29.839640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.122871, 31.283020, 29.616625>,  <39.965748, 31.405523, 29.482815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.122871, 31.283020, 29.616625>,  <40.384747, 31.078848, 29.839640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122871, 31.283020, 29.616625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293701, -0.507861, -0.809825,
		-0.696512, -0.693929, 0.182574,
		-0.654683, 0.510431, -0.557539,
		39.926468, 31.436150, 29.449364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921486, 30.602196, 29.579695>,  <40.384747, 31.078848, 29.839640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921486, 30.602196, 29.579695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896515, 30.920832, 29.339180>,  <39.881531, 31.112013, 29.194872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896515, 30.920832, 29.339180>,  <39.921486, 30.602196, 29.579695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896515, 30.920832, 29.339180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366071, -0.542196, -0.756317,
		-0.928490, -0.267329, -0.257761,
		-0.062428, 0.796592, -0.601285,
		39.877785, 31.159809, 29.158794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.496483, 30.404219, 28.998545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712051, 30.715094, 28.868597>,  <39.841393, 30.901619, 28.790628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.712051, 30.715094, 28.868597>,  <39.496483, 30.404219, 28.998545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712051, 30.715094, 28.868597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278510, -0.528377, -0.802028,
		-0.794981, 0.341752, -0.501209,
		0.538923, 0.777189, -0.324868,
		39.873730, 30.948250, 28.771137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429619, 30.402985, 28.280127>,  <39.496483, 30.404219, 28.998545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429619, 30.402985, 28.280127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747368, 30.636200, 28.348301>,  <39.938015, 30.776129, 28.389206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.747368, 30.636200, 28.348301>,  <39.429619, 30.402985, 28.280127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747368, 30.636200, 28.348301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496731, -0.462006, -0.734717,
		-0.349625, 0.668296, -0.656615,
		0.794368, 0.583036, 0.170434,
		39.985680, 30.811111, 28.399431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653976, 30.883038, 27.644873>,  <39.429619, 30.402985, 28.280127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653976, 30.883038, 27.644873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959587, 30.779434, 27.881235>,  <40.142956, 30.717272, 28.023052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.959587, 30.779434, 27.881235>,  <39.653976, 30.883038, 27.644873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959587, 30.779434, 27.881235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498032, -0.345470, -0.795371,
		0.410150, 0.901978, -0.134954,
		0.764030, -0.259010, 0.590908,
		40.188797, 30.701731, 28.058508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155483, 30.983078, 27.214716>,  <39.653976, 30.883038, 27.644873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155483, 30.983078, 27.214716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341694, 30.795704, 27.515078>,  <40.453419, 30.683279, 27.695293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.341694, 30.795704, 27.515078>,  <40.155483, 30.983078, 27.214716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341694, 30.795704, 27.515078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652256, -0.391884, -0.648837,
		0.598204, 0.791831, 0.123106,
		0.465527, -0.468433, 0.750903,
		40.481350, 30.655174, 27.740349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894878, 31.260353, 27.080816>,  <40.155483, 30.983078, 27.214716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894878, 31.260353, 27.080816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.898224, 30.926987, 27.301849>,  <40.900230, 30.726967, 27.434469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.898224, 30.926987, 27.301849>,  <40.894878, 31.260353, 27.080816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898224, 30.926987, 27.301849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338655, -0.517586, -0.785760,
		0.940874, 0.193709, 0.277910,
		0.008366, -0.833416, 0.552583,
		40.900734, 30.676962, 27.467625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512417, 31.061831, 27.157249>,  <40.894878, 31.260353, 27.080816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512417, 31.061831, 27.157249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.357227, 30.708393, 27.262121>,  <41.264114, 30.496330, 27.325045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.357227, 30.708393, 27.262121>,  <41.512417, 31.061831, 27.157249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357227, 30.708393, 27.262121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592231, -0.456959, -0.663665,
		0.706216, -0.102213, 0.700580,
		-0.387971, -0.883595, 0.262178,
		41.240837, 30.443314, 27.340775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050682, 30.586586, 27.360174>,  <41.512417, 31.061831, 27.157249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050682, 30.586586, 27.360174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750370, 30.339897, 27.265535>,  <41.570183, 30.191883, 27.208752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750370, 30.339897, 27.265535>,  <42.050682, 30.586586, 27.360174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750370, 30.339897, 27.265535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584832, -0.454104, -0.672132,
		0.307081, -0.642993, 0.701613,
		-0.750782, -0.616724, -0.236597,
		41.525135, 30.154881, 27.194557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350563, 29.914078, 27.444620>,  <42.050682, 30.586586, 27.360174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350563, 29.914078, 27.444620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.034760, 29.926998, 27.199465>,  <41.845276, 29.934752, 27.052372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.034760, 29.926998, 27.199465>,  <42.350563, 29.914078, 27.444620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034760, 29.926998, 27.199465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550274, -0.404993, -0.730192,
		-0.271803, -0.913749, 0.301969,
		-0.789507, 0.032303, -0.612890,
		41.797909, 29.936689, 27.015598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540359, 29.399944, 27.010464>,  <42.350563, 29.914078, 27.444620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540359, 29.399944, 27.010464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229027, 29.520044, 26.789904>,  <42.042225, 29.592104, 26.657568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.229027, 29.520044, 26.789904>,  <42.540359, 29.399944, 27.010464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229027, 29.520044, 26.789904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390997, -0.455348, -0.799862,
		-0.491243, -0.838155, 0.237013,
		-0.778333, 0.300256, -0.551403,
		41.995525, 29.610121, 26.624483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235996, 28.821722, 26.590504>,  <42.540359, 29.399944, 27.010464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235996, 28.821722, 26.590504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.126347, 29.151150, 26.391872>,  <42.060558, 29.348806, 26.272694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.126347, 29.151150, 26.391872>,  <42.235996, 28.821722, 26.590504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126347, 29.151150, 26.391872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393424, -0.375138, -0.839339,
		-0.877540, -0.425445, -0.221179,
		-0.274120, 0.823570, -0.496579,
		42.044109, 29.398220, 26.242899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092209, 28.566738, 25.967834>,  <42.235996, 28.821722, 26.590504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092209, 28.566738, 25.967834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.130985, 28.961216, 25.914143>,  <42.154251, 29.197903, 25.881927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.130985, 28.961216, 25.914143>,  <42.092209, 28.566738, 25.967834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130985, 28.961216, 25.914143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554860, -0.165514, -0.815313,
		-0.826276, 0.004562, -0.563247,
		0.096945, 0.986197, -0.134229,
		42.160069, 29.257074, 25.873875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017986, 28.704788, 25.266167>,  <42.092209, 28.566738, 25.967834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017986, 28.704788, 25.266167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.240780, 29.002203, 25.414177>,  <42.374454, 29.180653, 25.502983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.240780, 29.002203, 25.414177>,  <42.017986, 28.704788, 25.266167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240780, 29.002203, 25.414177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671628, -0.141165, -0.727316,
		-0.488552, 0.653624, -0.578008,
		0.556985, 0.743538, 0.370026,
		42.407875, 29.225264, 25.525185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333260, 28.881697, 24.674923>,  <42.017986, 28.704788, 25.266167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333260, 28.881697, 24.674923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.547035, 29.112331, 24.922121>,  <42.675301, 29.250711, 25.070440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.547035, 29.112331, 24.922121>,  <42.333260, 28.881697, 24.674923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547035, 29.112331, 24.922121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677579, 0.144791, -0.721056,
		-0.505231, 0.804105, -0.313300,
		0.534442, 0.576586, 0.617997,
		42.707367, 29.285307, 25.107521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389400, 29.544298, 24.337313>,  <42.333260, 28.881697, 24.674923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389400, 29.544298, 24.337313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.677689, 29.525900, 24.613993>,  <42.850662, 29.514860, 24.780001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.677689, 29.525900, 24.613993>,  <42.389400, 29.544298, 24.337313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677689, 29.525900, 24.613993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642219, 0.419966, -0.641236,
		-0.260997, 0.906373, 0.332217,
		0.720719, -0.045995, 0.691700,
		42.893906, 29.512102, 24.821503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644501, 30.172850, 24.484522>,  <42.389400, 29.544298, 24.337313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644501, 30.172850, 24.484522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.947197, 29.939859, 24.603228>,  <43.128815, 29.800066, 24.674452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.947197, 29.939859, 24.603228>,  <42.644501, 30.172850, 24.484522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947197, 29.939859, 24.603228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622732, 0.504201, -0.598320,
		0.198877, 0.637577, 0.744274,
		0.756739, -0.582475, 0.296765,
		43.174217, 29.765118, 24.692257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111877, 30.569078, 24.621346>,  <42.644501, 30.172850, 24.484522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111877, 30.569078, 24.621346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.335018, 30.241623, 24.566736>,  <43.468903, 30.045151, 24.533970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.335018, 30.241623, 24.566736>,  <43.111877, 30.569078, 24.621346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335018, 30.241623, 24.566736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517421, 0.471663, -0.714010,
		0.648907, 0.327669, 0.686696,
		0.557848, -0.818637, -0.136523,
		43.502373, 29.996033, 24.525780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.852127, 30.770304, 24.581587>,  <43.111877, 30.569078, 24.621346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.852127, 30.770304, 24.581587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.825329, 30.413778, 24.402222>,  <43.809250, 30.199863, 24.294601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.825329, 30.413778, 24.402222>,  <43.852127, 30.770304, 24.581587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825329, 30.413778, 24.402222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370237, 0.395128, -0.840713,
		0.926518, -0.222345, 0.303524,
		-0.066998, -0.891312, -0.448414,
		43.805229, 30.146385, 24.267698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511826, 30.511211, 24.402029>,  <43.852127, 30.770304, 24.581587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511826, 30.511211, 24.402029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.261139, 30.332083, 24.146942>,  <44.110725, 30.224606, 23.993891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.261139, 30.332083, 24.146942>,  <44.511826, 30.511211, 24.402029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261139, 30.332083, 24.146942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566143, 0.300667, -0.767516,
		0.535451, -0.842054, 0.065099,
		-0.626717, -0.447822, -0.637715,
		44.073124, 30.197737, 23.955627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947865, 30.371532, 23.798000>,  <44.511826, 30.511211, 24.402029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947865, 30.371532, 23.798000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.578285, 30.330408, 23.650621>,  <44.356537, 30.305733, 23.562193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.578285, 30.330408, 23.650621>,  <44.947865, 30.371532, 23.798000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578285, 30.330408, 23.650621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315890, 0.338135, -0.886498,
		0.215726, -0.935465, -0.279942,
		-0.923946, -0.102810, -0.368448,
		44.301102, 30.299564, 23.540087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.038292, 29.998821, 23.175900>,  <44.947865, 30.371532, 23.798000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.038292, 29.998821, 23.175900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.677509, 30.168516, 23.143675>,  <44.461040, 30.270332, 23.124340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.677509, 30.168516, 23.143675>,  <45.038292, 29.998821, 23.175900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677509, 30.168516, 23.143675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260884, 0.386683, -0.884543,
		-0.344104, -0.818840, -0.459450,
		-0.901960, 0.424237, -0.080563,
		44.406921, 30.295788, 23.119507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589642, 29.666246, 22.675709>,  <45.038292, 29.998821, 23.175900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589642, 29.666246, 22.675709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.482052, 30.050421, 22.704596>,  <44.417500, 30.280926, 22.721928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.482052, 30.050421, 22.704596>,  <44.589642, 29.666246, 22.675709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482052, 30.050421, 22.704596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306778, 0.156505, -0.938825,
		-0.912985, -0.230363, -0.336736,
		-0.268972, 0.960437, 0.072217,
		44.401360, 30.338552, 22.726261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.449879, 29.799059, 22.073156>,  <44.589642, 29.666246, 22.675709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.449879, 29.799059, 22.073156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.435383, 30.169220, 22.224056>,  <44.426685, 30.391315, 22.314596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.435383, 30.169220, 22.224056>,  <44.449879, 29.799059, 22.073156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.435383, 30.169220, 22.224056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342354, 0.366153, -0.865289,
		-0.938872, 0.097795, -0.330084,
		-0.036240, 0.925402, 0.377252,
		44.424511, 30.446840, 22.337233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073982, 30.144386, 21.611809>,  <44.449879, 29.799059, 22.073156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073982, 30.144386, 21.611809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.304218, 30.414566, 21.796186>,  <44.442360, 30.576674, 21.906813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.304218, 30.414566, 21.796186>,  <44.073982, 30.144386, 21.611809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304218, 30.414566, 21.796186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304101, 0.346449, -0.887409,
		-0.759094, 0.650954, -0.005994,
		0.575586, 0.675449, 0.460943,
		44.476894, 30.617201, 21.934469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017998, 30.833706, 21.343441>,  <44.073982, 30.144386, 21.611809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017998, 30.833706, 21.343441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.383644, 30.801861, 21.502462>,  <44.603031, 30.782753, 21.597876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.383644, 30.801861, 21.502462>,  <44.017998, 30.833706, 21.343441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383644, 30.801861, 21.502462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405440, 0.184553, -0.895298,
		-0.002092, 0.979593, 0.200981,
		0.914119, -0.079613, 0.397553,
		44.657879, 30.777977, 21.621729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867222, 30.459459, 20.680845>,  <44.017998, 30.833706, 21.343441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867222, 30.459459, 20.680845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.087460, 30.125828, 20.667196>,  <44.219601, 29.925650, 20.659006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.087460, 30.125828, 20.667196>,  <43.867222, 30.459459, 20.680845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087460, 30.125828, 20.667196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396247, 0.297111, -0.868742,
		0.734737, 0.464800, 0.494087,
		0.550590, -0.834078, -0.034123,
		44.252636, 29.875605, 20.656960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178696, 30.618164, 20.596088>,  <43.867222, 30.459459, 20.680845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178696, 30.618164, 20.596088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.934727, 30.450752, 20.326918>,  <42.788345, 30.350306, 20.165415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.934727, 30.450752, 20.326918>,  <43.178696, 30.618164, 20.596088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934727, 30.450752, 20.326918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758055, 0.060628, 0.649366,
		-0.230981, 0.906177, -0.354247,
		-0.609918, -0.418530, -0.672928,
		42.751751, 30.325193, 20.125040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599453, 31.146133, 20.307728>,  <43.178696, 30.618164, 20.596088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599453, 31.146133, 20.307728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.482574, 30.763832, 20.294128>,  <42.412445, 30.534451, 20.285969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.482574, 30.763832, 20.294128>,  <42.599453, 31.146133, 20.307728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482574, 30.763832, 20.294128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728844, 0.199531, 0.654961,
		-0.619198, 0.216158, -0.754897,
		-0.292201, -0.955753, -0.033997,
		42.394913, 30.477106, 20.283930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877106, 31.157038, 20.294020>,  <42.599453, 31.146133, 20.307728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877106, 31.157038, 20.294020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.953106, 30.782984, 20.413631>,  <41.998707, 30.558552, 20.485399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.953106, 30.782984, 20.413631>,  <41.877106, 31.157038, 20.294020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953106, 30.782984, 20.413631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816889, 0.018372, 0.576501,
		-0.544602, -0.353809, -0.760413,
		0.190001, -0.935137, 0.299029,
		42.010105, 30.502443, 20.503340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246227, 30.696835, 20.357952>,  <41.877106, 31.157038, 20.294020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246227, 30.696835, 20.357952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.503742, 30.485273, 20.579147>,  <41.658253, 30.358337, 20.711864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.503742, 30.485273, 20.579147>,  <41.246227, 30.696835, 20.357952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503742, 30.485273, 20.579147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657251, -0.012124, 0.753574,
		-0.391864, -0.848595, -0.355428,
		0.643789, -0.528904, 0.552989,
		41.696880, 30.326603, 20.745045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881432, 30.189409, 20.835665>,  <41.246227, 30.696835, 20.357952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881432, 30.189409, 20.835665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237450, 30.203352, 21.017477>,  <41.451061, 30.211718, 21.126564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237450, 30.203352, 21.017477>,  <40.881432, 30.189409, 20.835665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237450, 30.203352, 21.017477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455366, 0.021330, 0.890049,
		0.021330, -0.999165, 0.034858,
		-0.890049, -0.034858, -0.454531,
		41.504463, 30.213810, 21.153835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917145, 29.712788, 21.294296>,  <40.881432, 30.189409, 20.835665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917145, 29.712788, 21.294296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.173897, 29.988251, 21.429201>,  <41.327946, 30.153528, 21.510143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.173897, 29.988251, 21.429201>,  <40.917145, 29.712788, 21.294296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173897, 29.988251, 21.429201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456574, -0.010127, 0.889628,
		0.616066, -0.725015, 0.307923,
		0.641875, 0.688658, 0.337262,
		41.366459, 30.194849, 21.530380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034607, 29.641409, 21.972797>,  <40.917145, 29.712788, 21.294296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034607, 29.641409, 21.972797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.201263, 30.004496, 21.992653>,  <41.301258, 30.222347, 22.004566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.201263, 30.004496, 21.992653>,  <41.034607, 29.641409, 21.972797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201263, 30.004496, 21.992653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317097, 0.093936, 0.943730,
		0.851976, -0.408934, 0.326972,
		0.416638, 0.907716, 0.049641,
		41.326256, 30.276810, 22.007545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161945, 29.681671, 22.683342>,  <41.034607, 29.641409, 21.972797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161945, 29.681671, 22.683342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.205669, 30.062641, 22.569542>,  <41.231903, 30.291224, 22.501261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.205669, 30.062641, 22.569542>,  <41.161945, 29.681671, 22.683342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205669, 30.062641, 22.569542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200004, 0.301436, 0.932274,
		0.973679, -0.045004, 0.223438,
		0.109308, 0.952424, -0.284501,
		41.238461, 30.348368, 22.484192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544476, 29.929754, 23.215639>,  <41.161945, 29.681671, 22.683342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544476, 29.929754, 23.215639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.336258, 30.222450, 23.039642>,  <41.211327, 30.398067, 22.934044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.336258, 30.222450, 23.039642>,  <41.544476, 29.929754, 23.215639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336258, 30.222450, 23.039642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415246, 0.233309, 0.879282,
		0.746059, 0.640409, 0.182404,
		-0.520544, 0.731740, -0.439990,
		41.180096, 30.441973, 22.907646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714893, 30.537867, 23.642000>,  <41.544476, 29.929754, 23.215639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714893, 30.537867, 23.642000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.376575, 30.583855, 23.433609>,  <41.173584, 30.611446, 23.308575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.376575, 30.583855, 23.433609>,  <41.714893, 30.537867, 23.642000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376575, 30.583855, 23.433609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503654, 0.150041, 0.850776,
		0.175981, 0.981972, -0.068999,
		-0.845791, 0.114968, -0.520979,
		41.122837, 30.618345, 23.277315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439018, 30.966167, 23.991220>,  <41.714893, 30.537867, 23.642000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439018, 30.966167, 23.991220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.124264, 30.834852, 23.782207>,  <40.935410, 30.756063, 23.656799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.124264, 30.834852, 23.782207>,  <41.439018, 30.966167, 23.991220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124264, 30.834852, 23.782207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580548, 0.106725, 0.807201,
		-0.209228, 0.938529, -0.274568,
		-0.786885, -0.328289, -0.522531,
		40.888199, 30.736366, 23.625448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955364, 31.385820, 24.227158>,  <41.439018, 30.966167, 23.991220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955364, 31.385820, 24.227158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.781998, 31.071743, 24.050241>,  <40.677979, 30.883297, 23.944092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.781998, 31.071743, 24.050241>,  <40.955364, 31.385820, 24.227158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781998, 31.071743, 24.050241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765592, 0.061896, 0.640341,
		-0.475416, 0.616149, -0.627965,
		-0.433414, -0.785194, -0.442292,
		40.651974, 30.836185, 23.917553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187374, 31.483753, 24.435547>,  <40.955364, 31.385820, 24.227158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187374, 31.483753, 24.435547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227291, 31.100761, 24.327271>,  <40.251244, 30.870966, 24.262304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227291, 31.100761, 24.327271>,  <40.187374, 31.483753, 24.435547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227291, 31.100761, 24.327271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778012, -0.244682, 0.578643,
		-0.620273, 0.152856, -0.769348,
		0.099796, -0.957479, -0.270693,
		40.257229, 30.813519, 24.246063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527859, 31.250494, 24.349186>,  <40.187374, 31.483753, 24.435547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527859, 31.250494, 24.349186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742321, 30.915918, 24.394619>,  <39.870998, 30.715172, 24.421879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.742321, 30.915918, 24.394619>,  <39.527859, 31.250494, 24.349186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742321, 30.915918, 24.394619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696884, -0.362685, 0.618719,
		-0.476327, -0.410884, -0.777359,
		0.536158, -0.836441, 0.113582,
		39.903168, 30.664986, 24.428694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187050, 30.583160, 24.172596>,  <39.527859, 31.250494, 24.349186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187050, 30.583160, 24.172596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486790, 30.452522, 24.403006>,  <39.666634, 30.374140, 24.541252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486790, 30.452522, 24.403006>,  <39.187050, 30.583160, 24.172596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486790, 30.452522, 24.403006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661675, -0.402990, 0.632286,
		0.025630, -0.854947, -0.518083,
		0.749353, -0.326597, 0.576025,
		39.711594, 30.354544, 24.575813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955212, 29.954823, 24.208908>,  <39.187050, 30.583160, 24.172596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955212, 29.954823, 24.208908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208210, 30.005302, 24.514595>,  <39.360008, 30.035591, 24.698008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.208210, 30.005302, 24.514595>,  <38.955212, 29.954823, 24.208908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208210, 30.005302, 24.514595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677506, -0.388064, 0.624814,
		0.375416, -0.912951, -0.159946,
		0.632493, 0.126201, 0.764215,
		39.397957, 30.043163, 24.743860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922691, 29.364122, 24.600657>,  <38.955212, 29.954823, 24.208908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922691, 29.364122, 24.600657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056473, 29.633694, 24.864161>,  <39.136742, 29.795437, 25.022263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056473, 29.633694, 24.864161>,  <38.922691, 29.364122, 24.600657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056473, 29.633694, 24.864161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746946, -0.236667, 0.621338,
		0.574644, -0.699864, 0.424235,
		0.334449, 0.673929, 0.658760,
		39.156807, 29.835873, 25.061789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645664, 29.126781, 25.236036>,  <38.922691, 29.364122, 24.600657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645664, 29.126781, 25.236036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749603, 29.487680, 25.373693>,  <38.811966, 29.704220, 25.456287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.749603, 29.487680, 25.373693>,  <38.645664, 29.126781, 25.236036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749603, 29.487680, 25.373693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866720, 0.060775, 0.495078,
		0.425767, -0.426918, 0.797787,
		0.259843, 0.902246, 0.344142,
		38.827557, 29.758354, 25.476936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613735, 28.999304, 25.960588>,  <38.645664, 29.126781, 25.236036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613735, 28.999304, 25.960588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647507, 29.394749, 25.910757>,  <38.667770, 29.632015, 25.880859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647507, 29.394749, 25.910757>,  <38.613735, 28.999304, 25.960588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647507, 29.394749, 25.910757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818997, 0.140062, 0.556441,
		0.567553, 0.055048, 0.821495,
		0.084430, 0.988612, -0.124577,
		38.672836, 29.691332, 25.873384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.446587, 31.645348, 31.351961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.180412, 31.867512, 31.152475>,  <39.020706, 32.000809, 31.032784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.180412, 31.867512, 31.152475>,  <39.446587, 31.645348, 31.351961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180412, 31.867512, 31.152475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428070, 0.263392, 0.864512,
		0.611515, 0.788761, 0.062484,
		-0.665436, 0.555410, -0.498713,
		38.980782, 32.034134, 31.002861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527924, 32.318741, 31.590410>,  <39.446587, 31.645348, 31.351961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527924, 32.318741, 31.590410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.162449, 32.334190, 31.428581>,  <38.943165, 32.343460, 31.331484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.162449, 32.334190, 31.428581>,  <39.527924, 32.318741, 31.590410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162449, 32.334190, 31.428581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384264, 0.242049, 0.890928,
		0.132334, 0.969495, -0.206318,
		-0.913690, 0.038620, -0.404573,
		38.888344, 32.345776, 31.307209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276775, 32.888103, 31.932016>,  <39.527924, 32.318741, 31.590410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276775, 32.888103, 31.932016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945591, 32.722359, 31.780872>,  <38.746880, 32.622910, 31.690186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.945591, 32.722359, 31.780872>,  <39.276775, 32.888103, 31.932016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945591, 32.722359, 31.780872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413692, -0.003579, 0.910410,
		-0.378594, 0.910104, -0.168456,
		-0.827965, -0.414364, -0.377858,
		38.697201, 32.598049, 31.667515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788601, 33.321873, 32.230999>,  <39.276775, 32.888103, 31.932016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788601, 33.321873, 32.230999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598412, 32.987167, 32.122368>,  <38.484299, 32.786346, 32.057190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598412, 32.987167, 32.122368>,  <38.788601, 33.321873, 32.230999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598412, 32.987167, 32.122368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481842, -0.010582, 0.876195,
		-0.736039, 0.547467, -0.398154,
		-0.475475, -0.836760, -0.271581,
		38.455769, 32.736137, 32.040894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060963, 33.449608, 32.254292>,  <38.788601, 33.321873, 32.230999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060963, 33.449608, 32.254292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120296, 33.054958, 32.281311>,  <38.155895, 32.818169, 32.297523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120296, 33.054958, 32.281311>,  <38.060963, 33.449608, 32.254292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120296, 33.054958, 32.281311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496137, -0.015156, 0.868112,
		-0.855479, -0.162285, -0.491751,
		0.148334, -0.986628, 0.067550,
		38.164795, 32.758968, 32.301575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471779, 33.208656, 32.449516>,  <38.060963, 33.449608, 32.254292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471779, 33.208656, 32.449516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.696571, 32.889946, 32.538349>,  <37.831448, 32.698719, 32.591648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.696571, 32.889946, 32.538349>,  <37.471779, 33.208656, 32.449516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696571, 32.889946, 32.538349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629327, -0.237649, 0.739912,
		-0.536768, -0.555581, -0.634988,
		0.561986, -0.796776, 0.222080,
		37.865166, 32.650913, 32.604973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061794, 32.600033, 32.612961>,  <37.471779, 33.208656, 32.449516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061794, 32.600033, 32.612961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410805, 32.503216, 32.782722>,  <37.620209, 32.445126, 32.884579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.410805, 32.503216, 32.782722>,  <37.061794, 32.600033, 32.612961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410805, 32.503216, 32.782722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473115, -0.201803, 0.857577,
		-0.121924, -0.949048, -0.290592,
		0.872523, -0.242042, 0.424404,
		37.672562, 32.430603, 32.910042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847916, 32.018867, 33.069778>,  <37.061794, 32.600033, 32.612961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847916, 32.018867, 33.069778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.215523, 32.124187, 33.187134>,  <37.436089, 32.187382, 33.257545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.215523, 32.124187, 33.187134>,  <36.847916, 32.018867, 33.069778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215523, 32.124187, 33.187134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254112, -0.173310, 0.951520,
		0.301385, -0.949018, -0.092366,
		0.919018, 0.263303, 0.293390,
		37.491230, 32.203178, 33.275150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114609, 31.420675, 33.325558>,  <36.847916, 32.018867, 33.069778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114609, 31.420675, 33.325558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.303337, 31.728094, 33.498402>,  <37.416573, 31.912546, 33.602108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.303337, 31.728094, 33.498402>,  <37.114609, 31.420675, 33.325558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303337, 31.728094, 33.498402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249558, -0.353645, 0.901474,
		0.845641, -0.533169, 0.024941,
		0.471818, 0.768548, 0.432113,
		37.444881, 31.958658, 33.628036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347691, 31.199471, 33.899929>,  <37.114609, 31.420675, 33.325558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347691, 31.199471, 33.899929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356339, 31.585373, 34.004833>,  <37.361526, 31.816914, 34.067776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356339, 31.585373, 34.004833>,  <37.347691, 31.199471, 33.899929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356339, 31.585373, 34.004833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298757, -0.244101, 0.922583,
		0.954084, -0.098298, 0.282949,
		0.021620, 0.964755, 0.262261,
		37.362823, 31.874800, 34.083511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882038, 31.273989, 34.486671>,  <37.347691, 31.199471, 33.899929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882038, 31.273989, 34.486671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614868, 31.571672, 34.484451>,  <37.454567, 31.750282, 34.483120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.614868, 31.571672, 34.484451>,  <37.882038, 31.273989, 34.486671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614868, 31.571672, 34.484451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206600, -0.178243, 0.962053,
		0.714980, 0.643724, 0.272806,
		-0.667922, 0.744210, -0.005553,
		37.414490, 31.794935, 34.482784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993977, 31.556625, 35.145576>,  <37.882038, 31.273989, 34.486671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993977, 31.556625, 35.145576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634098, 31.663891, 35.007801>,  <37.418171, 31.728251, 34.925137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634098, 31.663891, 35.007801>,  <37.993977, 31.556625, 35.145576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634098, 31.663891, 35.007801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387318, -0.126480, 0.913229,
		0.201330, 0.955034, 0.217658,
		-0.899695, 0.268164, -0.344438,
		37.364189, 31.744339, 34.904469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789181, 32.136669, 35.496849>,  <37.993977, 31.556625, 35.145576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789181, 32.136669, 35.496849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.468910, 31.943731, 35.354721>,  <37.276749, 31.827969, 35.269444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.468910, 31.943731, 35.354721>,  <37.789181, 32.136669, 35.496849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468910, 31.943731, 35.354721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283960, -0.216693, 0.934029,
		-0.527520, 0.848757, 0.036535,
		-0.800681, -0.482344, -0.355323,
		37.228706, 31.799028, 35.248123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295094, 32.683746, 35.682209>,  <37.789181, 32.136669, 35.496849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295094, 32.683746, 35.682209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428806, 33.058121, 35.726547>,  <38.509033, 33.282745, 35.753151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.428806, 33.058121, 35.726547>,  <38.295094, 32.683746, 35.682209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428806, 33.058121, 35.726547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288776, 0.213670, -0.933249,
		-0.897142, 0.279958, 0.341701,
		0.334282, 0.935932, 0.110847,
		38.529091, 33.338902, 35.759800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820709, 33.262894, 35.332371>,  <38.295094, 32.683746, 35.682209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820709, 33.262894, 35.332371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183670, 33.426907, 35.369236>,  <38.401447, 33.525314, 35.391357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183670, 33.426907, 35.369236>,  <37.820709, 33.262894, 35.332371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183670, 33.426907, 35.369236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154887, 0.530144, -0.833641,
		-0.390682, 0.742172, 0.544562,
		0.907402, 0.410034, 0.092165,
		38.455891, 33.549915, 35.396885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702663, 34.028172, 35.238564>,  <37.820709, 33.262894, 35.332371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702663, 34.028172, 35.238564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094757, 33.995609, 35.166435>,  <38.330013, 33.976070, 35.123158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094757, 33.995609, 35.166435>,  <37.702663, 34.028172, 35.238564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094757, 33.995609, 35.166435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082035, 0.662139, -0.744878,
		0.180034, 0.744947, 0.642372,
		0.980234, -0.081406, -0.180320,
		38.388828, 33.971188, 35.112339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877537, 34.672840, 35.014828>,  <37.702663, 34.028172, 35.238564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877537, 34.672840, 35.014828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185795, 34.451832, 34.887814>,  <38.370750, 34.319225, 34.811607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.185795, 34.451832, 34.887814>,  <37.877537, 34.672840, 35.014828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185795, 34.451832, 34.887814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110840, 0.606895, -0.787015,
		0.627550, 0.571315, 0.528942,
		0.770646, -0.552520, -0.317532,
		38.416988, 34.286076, 34.792553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395092, 35.025738, 34.858234>,  <37.877537, 34.672840, 35.014828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395092, 35.025738, 34.858234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507687, 34.713348, 34.635220>,  <38.575245, 34.525917, 34.501411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507687, 34.713348, 34.635220>,  <38.395092, 35.025738, 34.858234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507687, 34.713348, 34.635220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080474, 0.559773, -0.824729,
		0.956185, 0.277016, 0.094720,
		0.281485, -0.780971, -0.557539,
		38.592133, 34.479057, 34.467957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878277, 35.240067, 34.421413>,  <38.395092, 35.025738, 34.858234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878277, 35.240067, 34.421413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.778145, 34.903553, 34.229759>,  <38.718063, 34.701645, 34.114765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.778145, 34.903553, 34.229759>,  <38.878277, 35.240067, 34.421413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778145, 34.903553, 34.229759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252356, 0.421090, -0.871206,
		0.934692, -0.339006, 0.106890,
		-0.250334, -0.841284, -0.479140,
		38.703045, 34.651169, 34.086018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460770, 34.959412, 34.103947>,  <38.878277, 35.240067, 34.421413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460770, 34.959412, 34.103947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139812, 34.816917, 33.912418>,  <38.947239, 34.731419, 33.797501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139812, 34.816917, 33.912418>,  <39.460770, 34.959412, 34.103947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139812, 34.816917, 33.912418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334907, 0.395297, -0.855323,
		0.493976, -0.846660, -0.197874,
		-0.802387, -0.356240, -0.478819,
		38.899097, 34.710045, 33.768772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712055, 34.711769, 33.443336>,  <39.460770, 34.959412, 34.103947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712055, 34.711769, 33.443336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.319828, 34.725224, 33.366028>,  <39.084492, 34.733295, 33.319641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.319828, 34.725224, 33.366028>,  <39.712055, 34.711769, 33.443336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319828, 34.725224, 33.366028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192693, 0.349942, -0.916739,
		0.036801, -0.936167, -0.349623,
		-0.980569, 0.033634, -0.193271,
		39.025658, 34.735313, 33.308048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531975, 34.369061, 32.785389>,  <39.712055, 34.711769, 33.443336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531975, 34.369061, 32.785389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224316, 34.622574, 32.818180>,  <39.039719, 34.774681, 32.837852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.224316, 34.622574, 32.818180>,  <39.531975, 34.369061, 32.785389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224316, 34.622574, 32.818180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046360, 0.183269, -0.981969,
		-0.637382, -0.751483, -0.170344,
		-0.769152, 0.633787, 0.081974,
		38.993568, 34.812710, 32.842773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136723, 34.247417, 32.221455>,  <39.531975, 34.369061, 32.785389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136723, 34.247417, 32.221455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.015465, 34.612408, 32.331364>,  <38.942711, 34.831402, 32.397308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.015465, 34.612408, 32.331364>,  <39.136723, 34.247417, 32.221455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015465, 34.612408, 32.331364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056159, 0.270736, -0.961014,
		-0.951290, -0.306753, -0.030828,
		-0.303140, 0.912472, 0.274775,
		38.924522, 34.886150, 32.413795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603565, 34.468895, 31.710161>,  <39.136723, 34.247417, 32.221455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603565, 34.468895, 31.710161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782486, 34.775261, 31.894899>,  <38.889839, 34.959080, 32.005741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.782486, 34.775261, 31.894899>,  <38.603565, 34.468895, 31.710161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782486, 34.775261, 31.894899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114850, 0.462921, -0.878928,
		-0.886980, 0.446186, 0.119098,
		0.447298, 0.765913, 0.461846,
		38.916676, 35.005035, 32.033455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242840, 34.843628, 31.292875>,  <38.603565, 34.468895, 31.710161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242840, 34.843628, 31.292875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.513489, 35.057255, 31.495638>,  <38.675877, 35.185432, 31.617296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.513489, 35.057255, 31.495638>,  <38.242840, 34.843628, 31.292875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513489, 35.057255, 31.495638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084688, 0.627410, -0.774070,
		-0.731448, 0.566679, 0.379287,
		0.676618, 0.534071, 0.506909,
		38.716473, 35.217476, 31.647711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051445, 35.559692, 31.308197>,  <38.242840, 34.843628, 31.292875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051445, 35.559692, 31.308197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448524, 35.534115, 31.349112>,  <38.686771, 35.518768, 31.373661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.448524, 35.534115, 31.349112>,  <38.051445, 35.559692, 31.308197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448524, 35.534115, 31.349112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119734, 0.419233, -0.899949,
		0.014661, 0.905625, 0.423827,
		0.992698, -0.063940, 0.102288,
		38.746334, 35.514935, 31.379799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370335, 36.282085, 31.155140>,  <38.051445, 35.559692, 31.308197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370335, 36.282085, 31.155140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.656422, 36.005871, 31.112013>,  <38.828072, 35.840141, 31.086138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.656422, 36.005871, 31.112013>,  <38.370335, 36.282085, 31.155140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656422, 36.005871, 31.112013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192232, 0.342677, -0.919575,
		0.671950, 0.636967, 0.377831,
		0.715213, -0.690540, -0.107816,
		38.870987, 35.798710, 31.079668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939709, 36.483452, 30.837969>,  <38.370335, 36.282085, 31.155140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939709, 36.483452, 30.837969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.998043, 36.094414, 30.765526>,  <39.033043, 35.860992, 30.722059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.998043, 36.094414, 30.765526>,  <38.939709, 36.483452, 30.837969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998043, 36.094414, 30.765526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240466, 0.212422, -0.947129,
		0.959640, 0.094574, 0.264853,
		0.145835, -0.972591, -0.181107,
		39.041794, 35.802635, 30.711193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920982, 37.229687, 30.616100>,  <38.939709, 36.483452, 30.837969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920982, 37.229687, 30.616100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560867, 37.350994, 30.491194>,  <38.344799, 37.423779, 30.416250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560867, 37.350994, 30.491194>,  <38.920982, 37.229687, 30.616100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560867, 37.350994, 30.491194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335596, -0.026695, 0.941628,
		0.277226, 0.952533, 0.125808,
		-0.900290, 0.303264, -0.312265,
		38.290779, 37.441975, 30.397514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592915, 37.683361, 31.211803>,  <38.920982, 37.229687, 30.616100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592915, 37.683361, 31.211803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.280258, 37.601242, 30.976213>,  <38.092667, 37.551971, 30.834860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.280258, 37.601242, 30.976213>,  <38.592915, 37.683361, 31.211803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280258, 37.601242, 30.976213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583581, -0.092605, 0.806758,
		-0.220169, 0.974308, -0.047425,
		-0.781639, -0.205299, -0.588976,
		38.045765, 37.539654, 30.799520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012218, 38.073021, 31.415030>,  <38.592915, 37.683361, 31.211803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012218, 38.073021, 31.415030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.841446, 37.780216, 31.202654>,  <37.738983, 37.604534, 31.075228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.841446, 37.780216, 31.202654>,  <38.012218, 38.073021, 31.415030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841446, 37.780216, 31.202654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603846, -0.206277, 0.769948,
		-0.673128, 0.649319, -0.353954,
		-0.426929, -0.732007, -0.530940,
		37.713367, 37.560616, 31.043371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341625, 38.232334, 31.485756>,  <38.012218, 38.073021, 31.415030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341625, 38.232334, 31.485756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.367355, 37.843433, 31.395796>,  <37.382793, 37.610092, 31.341820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.367355, 37.843433, 31.395796>,  <37.341625, 38.232334, 31.485756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367355, 37.843433, 31.395796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789957, -0.187318, 0.583849,
		-0.609779, 0.140104, -0.780090,
		0.064325, -0.972257, -0.224899,
		37.386654, 37.551758, 31.328327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642986, 38.093666, 31.483936>,  <37.341625, 38.232334, 31.485756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642986, 38.093666, 31.483936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.820278, 37.735111, 31.481325>,  <36.926651, 37.519978, 31.479759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.820278, 37.735111, 31.481325>,  <36.642986, 38.093666, 31.483936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820278, 37.735111, 31.481325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733976, -0.367082, 0.571428,
		-0.514616, -0.248480, -0.820627,
		0.443226, -0.896386, -0.006528,
		36.953247, 37.466194, 31.479366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211327, 37.641205, 31.148478>,  <36.642986, 38.093666, 31.483936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211327, 37.641205, 31.148478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.440205, 37.441460, 31.408701>,  <36.577530, 37.321613, 31.564835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.440205, 37.441460, 31.408701>,  <36.211327, 37.641205, 31.148478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440205, 37.441460, 31.408701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799314, -0.162031, 0.578657,
		-0.183550, -0.851106, -0.491863,
		0.572195, -0.499365, 0.650559,
		36.611862, 37.291649, 31.603868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907074, 37.032780, 31.175034>,  <36.211327, 37.641205, 31.148478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907074, 37.032780, 31.175034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142540, 37.060863, 31.497164>,  <36.283817, 37.077713, 31.690441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.142540, 37.060863, 31.497164>,  <35.907074, 37.032780, 31.175034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142540, 37.060863, 31.497164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785080, -0.187799, 0.590237,
		0.192683, -0.979695, -0.055426,
		0.588661, 0.070215, 0.805325,
		36.319138, 37.081928, 31.738762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734219, 36.454990, 31.536833>,  <35.907074, 37.032780, 31.175034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734219, 36.454990, 31.536833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.903744, 36.681591, 31.819523>,  <36.005459, 36.817551, 31.989138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.903744, 36.681591, 31.819523>,  <35.734219, 36.454990, 31.536833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903744, 36.681591, 31.819523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659665, -0.341623, 0.669429,
		0.620668, -0.749911, 0.228920,
		0.423809, 0.566504, 0.706725,
		36.030888, 36.851543, 32.031540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800354, 36.036266, 32.269424>,  <35.734219, 36.454990, 31.536833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800354, 36.036266, 32.269424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.826370, 36.426823, 32.351826>,  <35.841980, 36.661156, 32.401268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.826370, 36.426823, 32.351826>,  <35.800354, 36.036266, 32.269424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826370, 36.426823, 32.351826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798466, -0.072898, 0.597611,
		0.598517, -0.203354, 0.774871,
		0.065040, 0.976388, 0.206002,
		35.845882, 36.719738, 32.413628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667999, 36.104336, 33.036434>,  <35.800354, 36.036266, 32.269424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667999, 36.104336, 33.036434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.597759, 36.458614, 32.864529>,  <35.555614, 36.671181, 32.761383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.597759, 36.458614, 32.864529>,  <35.667999, 36.104336, 33.036434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597759, 36.458614, 32.864529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710677, 0.188046, 0.677922,
		0.681251, 0.424468, 0.596426,
		-0.175601, 0.885701, -0.429766,
		35.545078, 36.724323, 32.735600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653450, 36.665340, 33.607185>,  <35.667999, 36.104336, 33.036434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653450, 36.665340, 33.607185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.485760, 36.852448, 33.295944>,  <35.385147, 36.964710, 33.109200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.485760, 36.852448, 33.295944>,  <35.653450, 36.665340, 33.607185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485760, 36.852448, 33.295944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645141, 0.449532, 0.617831,
		0.638783, 0.760996, 0.113321,
		-0.419225, 0.467768, -0.778102,
		35.359993, 36.992779, 33.062515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658192, 37.404739, 33.617508>,  <35.653450, 36.665340, 33.607185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658192, 37.404739, 33.617508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.327366, 37.292427, 33.422722>,  <35.128872, 37.225040, 33.305851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.327366, 37.292427, 33.422722>,  <35.658192, 37.404739, 33.617508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327366, 37.292427, 33.422722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550820, 0.577594, 0.602480,
		0.112104, 0.766517, -0.632364,
		-0.827061, -0.280779, -0.486964,
		35.079247, 37.208195, 33.276634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.142212, 38.055908, 28.286671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844925, 37.968784, 28.033628>,  <40.666553, 37.916508, 27.881804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844925, 37.968784, 28.033628>,  <41.142212, 38.055908, 28.286671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844925, 37.968784, 28.033628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668194, 0.193728, 0.718321,
		-0.033907, 0.956570, -0.289524,
		-0.743214, -0.217814, -0.632606,
		40.621960, 37.903439, 27.843847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668819, 38.550777, 28.330940>,  <41.142212, 38.055908, 28.286671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668819, 38.550777, 28.330940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442818, 38.266193, 28.163803>,  <40.307217, 38.095444, 28.063520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442818, 38.266193, 28.163803>,  <40.668819, 38.550777, 28.330940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442818, 38.266193, 28.163803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703723, 0.151155, 0.694209,
		-0.430742, 0.686278, -0.586074,
		-0.565009, -0.711459, -0.417841,
		40.273315, 38.052757, 28.038450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920010, 38.881077, 28.175301>,  <40.668819, 38.550777, 28.330940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920010, 38.881077, 28.175301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881340, 38.483521, 28.196571>,  <39.858139, 38.244987, 28.209333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881340, 38.483521, 28.196571>,  <39.920010, 38.881077, 28.175301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881340, 38.483521, 28.196571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758435, 0.108163, 0.642710,
		-0.644538, 0.021804, -0.764261,
		-0.096678, -0.993894, 0.053178,
		39.852337, 38.185352, 28.212524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284088, 38.823215, 28.146313>,  <39.920010, 38.881077, 28.175301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284088, 38.823215, 28.146313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363430, 38.454533, 28.279642>,  <39.411037, 38.233322, 28.359640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363430, 38.454533, 28.279642>,  <39.284088, 38.823215, 28.146313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363430, 38.454533, 28.279642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755192, 0.073055, 0.651420,
		-0.624771, -0.380938, -0.681577,
		0.198358, -0.921710, 0.333324,
		39.422939, 38.178020, 28.379639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598713, 38.561756, 28.352268>,  <39.284088, 38.823215, 28.146313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598713, 38.561756, 28.352268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860039, 38.316608, 28.530062>,  <39.016834, 38.169518, 28.636738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860039, 38.316608, 28.530062>,  <38.598713, 38.561756, 28.352268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860039, 38.316608, 28.530062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663276, -0.180272, 0.726338,
		-0.365025, -0.769343, -0.524279,
		0.653316, -0.612874, 0.444483,
		39.056034, 38.132748, 28.663406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341103, 37.800224, 28.345037>,  <38.598713, 38.561756, 28.352268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341103, 37.800224, 28.345037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592770, 37.861977, 28.649752>,  <38.743771, 37.899029, 28.832581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592770, 37.861977, 28.649752>,  <38.341103, 37.800224, 28.345037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592770, 37.861977, 28.649752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667799, -0.394151, 0.631418,
		0.397735, -0.905987, -0.144893,
		0.629167, 0.154377, 0.761785,
		38.781521, 37.908291, 28.878286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096165, 37.313198, 28.843349>,  <38.341103, 37.800224, 28.345037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096165, 37.313198, 28.843349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371197, 37.521431, 29.045826>,  <38.536217, 37.646370, 29.167313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371197, 37.521431, 29.045826>,  <38.096165, 37.313198, 28.843349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371197, 37.521431, 29.045826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463398, -0.222099, 0.857866,
		0.559016, -0.824417, 0.088527,
		0.687577, 0.520584, 0.506191,
		38.577469, 37.677605, 29.197683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539986, 36.855659, 29.303791>,  <38.096165, 37.313198, 28.843349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539986, 36.855659, 29.303791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512409, 37.217926, 29.471130>,  <38.495861, 37.435287, 29.571533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512409, 37.217926, 29.471130>,  <38.539986, 36.855659, 29.303791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512409, 37.217926, 29.471130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394131, -0.409958, 0.822554,
		0.916464, -0.108172, 0.385216,
		-0.068945, 0.905667, 0.418346,
		38.491726, 37.489628, 29.596634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754326, 36.793629, 30.017960>,  <38.539986, 36.855659, 29.303791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754326, 36.793629, 30.017960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558018, 37.141483, 29.996519>,  <38.440235, 37.350197, 29.983656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558018, 37.141483, 29.996519>,  <38.754326, 36.793629, 30.017960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558018, 37.141483, 29.996519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292469, -0.106478, 0.950329,
		0.820737, 0.482067, 0.306599,
		-0.490768, 0.869640, -0.053599,
		38.410786, 37.402374, 29.980440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448990, 36.501427, 30.279940>,  <38.754326, 36.793629, 30.017960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448990, 36.501427, 30.279940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338181, 36.117908, 30.305153>,  <39.271694, 35.887798, 30.320280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338181, 36.117908, 30.305153>,  <39.448990, 36.501427, 30.279940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338181, 36.117908, 30.305153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251567, -0.135684, -0.958282,
		0.927348, -0.249606, 0.278789,
		-0.277020, -0.958794, 0.063034,
		39.255074, 35.830269, 30.324062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955109, 36.140373, 29.986250>,  <39.448990, 36.501427, 30.279940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955109, 36.140373, 29.986250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665817, 35.867741, 29.941746>,  <39.492241, 35.704159, 29.915043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665817, 35.867741, 29.941746>,  <39.955109, 36.140373, 29.986250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665817, 35.867741, 29.941746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285528, -0.148419, -0.946808,
		0.628817, -0.716529, 0.301952,
		-0.723231, -0.681585, -0.111261,
		39.448849, 35.663265, 29.908367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348621, 35.440643, 29.802540>,  <39.955109, 36.140373, 29.986250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348621, 35.440643, 29.802540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964169, 35.399342, 29.700115>,  <39.733498, 35.374561, 29.638660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964169, 35.399342, 29.700115>,  <40.348621, 35.440643, 29.802540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964169, 35.399342, 29.700115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275461, -0.295755, -0.914686,
		0.018717, -0.949667, 0.312703,
		-0.961130, -0.103258, -0.256061,
		39.675831, 35.368366, 29.623297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373466, 34.803497, 29.475325>,  <40.348621, 35.440643, 29.802540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373466, 34.803497, 29.475325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059986, 35.015018, 29.344986>,  <39.871899, 35.141933, 29.266783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059986, 35.015018, 29.344986>,  <40.373466, 34.803497, 29.475325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059986, 35.015018, 29.344986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263412, -0.192138, -0.945356,
		-0.562516, -0.826710, 0.011286,
		-0.783703, 0.528805, -0.325846,
		39.824875, 35.173660, 29.247232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013603, 34.344799, 29.003466>,  <40.373466, 34.803497, 29.475325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013603, 34.344799, 29.003466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877331, 34.710938, 28.917593>,  <39.795567, 34.930618, 28.866070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877331, 34.710938, 28.917593>,  <40.013603, 34.344799, 29.003466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877331, 34.710938, 28.917593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321726, -0.101057, -0.941424,
		-0.883420, -0.389791, -0.260062,
		-0.340677, 0.915342, -0.214681,
		39.775127, 34.985538, 28.853189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438396, 34.234528, 28.470049>,  <40.013603, 34.344799, 29.003466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438396, 34.234528, 28.470049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581051, 34.607319, 28.444035>,  <39.666645, 34.830994, 28.428425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581051, 34.607319, 28.444035>,  <39.438396, 34.234528, 28.470049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581051, 34.607319, 28.444035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241293, -0.159140, -0.957315,
		-0.902546, 0.325719, -0.281635,
		0.356635, 0.931977, -0.065037,
		39.688042, 34.886913, 28.424524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176422, 34.474598, 27.822456>,  <39.438396, 34.234528, 28.470049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176422, 34.474598, 27.822456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464478, 34.722996, 27.946239>,  <39.637310, 34.872036, 28.020510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464478, 34.722996, 27.946239>,  <39.176422, 34.474598, 27.822456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464478, 34.722996, 27.946239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422370, -0.038518, -0.905605,
		-0.550459, 0.782865, -0.290030,
		0.720137, 0.620998, 0.309456,
		39.680519, 34.909294, 28.039076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165089, 35.065624, 27.277935>,  <39.176422, 34.474598, 27.822456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165089, 35.065624, 27.277935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517799, 35.030762, 27.463350>,  <39.729427, 35.009842, 27.574600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517799, 35.030762, 27.463350>,  <39.165089, 35.065624, 27.277935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517799, 35.030762, 27.463350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445170, -0.170931, -0.878980,
		0.155844, 0.981420, -0.111923,
		0.881780, -0.087159, 0.463538,
		39.782333, 35.004616, 27.602411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636459, 35.149406, 26.754223>,  <39.165089, 35.065624, 27.277935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636459, 35.149406, 26.754223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862038, 35.017143, 27.056911>,  <39.997387, 34.937786, 27.238525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862038, 35.017143, 27.056911>,  <39.636459, 35.149406, 26.754223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862038, 35.017143, 27.056911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643294, -0.398685, -0.653623,
		0.517819, 0.855404, -0.012129,
		0.563948, -0.330656, 0.756723,
		40.031223, 34.917946, 27.283928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376865, 35.293221, 26.586388>,  <39.636459, 35.149406, 26.754223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376865, 35.293221, 26.586388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429092, 35.012318, 26.866327>,  <40.460430, 34.843777, 27.034292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429092, 35.012318, 26.866327>,  <40.376865, 35.293221, 26.586388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429092, 35.012318, 26.866327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581264, -0.517627, -0.627848,
		0.803171, 0.488774, 0.340611,
		0.130567, -0.702255, 0.699850,
		40.468262, 34.801640, 27.076283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055305, 35.137150, 26.586920>,  <40.376865, 35.293221, 26.586388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055305, 35.137150, 26.586920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838833, 34.829983, 26.723989>,  <40.708950, 34.645683, 26.806231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838833, 34.829983, 26.723989>,  <41.055305, 35.137150, 26.586920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838833, 34.829983, 26.723989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488790, -0.618855, -0.614900,
		0.684259, -0.165274, 0.710263,
		-0.541177, -0.767921, 0.342673,
		40.676479, 34.599606, 26.826792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546181, 34.678646, 26.852587>,  <41.055305, 35.137150, 26.586920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546181, 34.678646, 26.852587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227638, 34.440693, 26.808878>,  <41.036514, 34.297920, 26.782654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227638, 34.440693, 26.808878>,  <41.546181, 34.678646, 26.852587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227638, 34.440693, 26.808878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546750, -0.630784, -0.550615,
		0.258623, -0.498228, 0.827577,
		-0.796354, -0.594879, -0.109271,
		40.988731, 34.262230, 26.776096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756485, 33.916470, 27.052847>,  <41.546181, 34.678646, 26.852587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756485, 33.916470, 27.052847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440289, 33.897919, 26.808561>,  <41.250568, 33.886787, 26.661991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440289, 33.897919, 26.808561>,  <41.756485, 33.916470, 27.052847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440289, 33.897919, 26.808561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481325, -0.663652, -0.572619,
		-0.378743, -0.746603, 0.546935,
		-0.790493, -0.046379, -0.610712,
		41.203140, 33.884007, 26.625347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732128, 33.132175, 26.821901>,  <41.756485, 33.916470, 27.052847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732128, 33.132175, 26.821901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530224, 33.381550, 26.583055>,  <41.409081, 33.531174, 26.439749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530224, 33.381550, 26.583055>,  <41.732128, 33.132175, 26.821901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530224, 33.381550, 26.583055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341817, -0.490821, -0.801408,
		-0.792700, -0.608626, 0.034649,
		-0.504765, 0.623433, -0.597113,
		41.378796, 33.568581, 26.403921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.354584, 31.472321, 23.278502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564072, 31.812904, 23.289358>,  <37.689766, 32.017254, 23.295872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564072, 31.812904, 23.289358>,  <37.354584, 31.472321, 23.278502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564072, 31.812904, 23.289358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508719, 0.287031, 0.811676,
		0.683318, -0.438897, 0.583477,
		0.523718, 0.851459, 0.027142,
		37.721188, 32.068340, 23.297501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663921, 31.387329, 23.940350>,  <37.354584, 31.472321, 23.278502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663921, 31.387329, 23.940350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644508, 31.768803, 23.821602>,  <37.632862, 31.997686, 23.750353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.644508, 31.768803, 23.821602>,  <37.663921, 31.387329, 23.940350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644508, 31.768803, 23.821602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450944, 0.244284, 0.858473,
		0.891232, 0.175535, 0.418202,
		-0.048532, 0.953684, -0.296870,
		37.629948, 32.054909, 23.732540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903305, 31.736813, 24.466990>,  <37.663921, 31.387329, 23.940350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903305, 31.736813, 24.466990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684982, 32.012257, 24.276031>,  <37.553989, 32.177525, 24.161457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684982, 32.012257, 24.276031>,  <37.903305, 31.736813, 24.466990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684982, 32.012257, 24.276031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384226, 0.300628, 0.872922,
		0.744621, 0.659879, 0.100496,
		-0.545811, 0.688609, -0.477397,
		37.521240, 32.218838, 24.132812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940784, 32.308849, 24.986462>,  <37.903305, 31.736813, 24.466990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940784, 32.308849, 24.986462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658436, 32.395687, 24.716763>,  <37.489025, 32.447788, 24.554943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658436, 32.395687, 24.716763>,  <37.940784, 32.308849, 24.986462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658436, 32.395687, 24.716763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545563, 0.440477, 0.712981,
		0.451775, 0.871120, -0.192483,
		-0.705876, 0.217095, -0.674247,
		37.446674, 32.460815, 24.514488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788353, 33.061741, 24.981709>,  <37.940784, 32.308849, 24.986462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788353, 33.061741, 24.981709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.463619, 32.875835, 24.840330>,  <37.268780, 32.764294, 24.755503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.463619, 32.875835, 24.840330>,  <37.788353, 33.061741, 24.981709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463619, 32.875835, 24.840330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572976, 0.517643, 0.635409,
		-0.112355, 0.718362, -0.686537,
		-0.811835, -0.464760, -0.353444,
		37.220070, 32.736408, 24.734297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315098, 33.396877, 25.279091>,  <37.788353, 33.061741, 24.981709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315098, 33.396877, 25.279091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100376, 33.097149, 25.123991>,  <36.971542, 32.917313, 25.030931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100376, 33.097149, 25.123991>,  <37.315098, 33.396877, 25.279091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100376, 33.097149, 25.123991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722218, 0.170521, 0.670316,
		-0.436165, 0.639870, -0.632713,
		-0.536806, -0.749325, -0.387751,
		36.939335, 32.872353, 25.007666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555218, 33.569324, 25.216633>,  <37.315098, 33.396877, 25.279091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555218, 33.569324, 25.216633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.577587, 33.171410, 25.250738>,  <36.591007, 32.932659, 25.271202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.577587, 33.171410, 25.250738>,  <36.555218, 33.569324, 25.216633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577587, 33.171410, 25.250738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555703, 0.039937, 0.830421,
		-0.829498, -0.093819, -0.550574,
		0.055921, -0.994788, 0.085263,
		36.594364, 32.872974, 25.276318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102890, 33.490372, 25.678093>,  <36.555218, 33.569324, 25.216633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102890, 33.490372, 25.678093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254093, 33.120384, 25.662363>,  <36.344814, 32.898392, 25.652925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254093, 33.120384, 25.662363>,  <36.102890, 33.490372, 25.678093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254093, 33.120384, 25.662363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453439, -0.222006, 0.863196,
		-0.807158, -0.308464, -0.503336,
		0.378008, -0.924967, -0.039324,
		36.367496, 32.842896, 25.650566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588966, 33.023949, 25.616627>,  <36.102890, 33.490372, 25.678093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588966, 33.023949, 25.616627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897766, 32.855183, 25.806787>,  <36.083046, 32.753925, 25.920885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.897766, 32.855183, 25.806787>,  <35.588966, 33.023949, 25.616627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897766, 32.855183, 25.806787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601753, -0.244235, 0.760423,
		-0.204714, -0.873125, -0.442431,
		0.772001, -0.421903, 0.475407,
		36.129364, 32.728611, 25.949409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306812, 32.431839, 25.930271>,  <35.588966, 33.023949, 25.616627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306812, 32.431839, 25.930271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.654297, 32.463211, 26.125896>,  <35.862789, 32.482033, 26.243271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.654297, 32.463211, 26.125896>,  <35.306812, 32.431839, 25.930271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654297, 32.463211, 26.125896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435147, -0.350819, 0.829200,
		0.236603, -0.933154, -0.270635,
		0.868715, 0.078426, 0.489064,
		35.914913, 32.486740, 26.272615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332150, 31.878044, 26.453300>,  <35.306812, 32.431839, 25.930271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332150, 31.878044, 26.453300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.611336, 32.131802, 26.586197>,  <35.778847, 32.284058, 26.665936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.611336, 32.131802, 26.586197>,  <35.332150, 31.878044, 26.453300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611336, 32.131802, 26.586197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319984, -0.138777, 0.937204,
		0.640662, -0.760452, 0.106133,
		0.697970, 0.634392, 0.332242,
		35.820728, 32.322121, 26.685869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323933, 31.679232, 27.067661>,  <35.332150, 31.878044, 26.453300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323933, 31.679232, 27.067661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534481, 32.016914, 27.108147>,  <35.660812, 32.219524, 27.132439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534481, 32.016914, 27.108147>,  <35.323933, 31.679232, 27.067661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534481, 32.016914, 27.108147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119888, -0.044159, 0.991805,
		0.841759, -0.534194, 0.077967,
		0.526373, 0.844208, 0.101215,
		35.692394, 32.270176, 27.138512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656139, 31.446196, 27.701130>,  <35.323933, 31.679232, 27.067661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656139, 31.446196, 27.701130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673756, 31.842659, 27.651070>,  <35.684326, 32.080536, 27.621033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673756, 31.842659, 27.651070>,  <35.656139, 31.446196, 27.701130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673756, 31.842659, 27.651070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336083, 0.132669, 0.932441,
		0.940802, 0.000997, 0.338955,
		0.044039, 0.991160, -0.125150,
		35.686966, 32.140007, 27.613525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958836, 31.757517, 28.292618>,  <35.656139, 31.446196, 27.701130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958836, 31.757517, 28.292618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723976, 32.025593, 28.111027>,  <35.583061, 32.186440, 28.002071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.723976, 32.025593, 28.111027>,  <35.958836, 31.757517, 28.292618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723976, 32.025593, 28.111027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463545, 0.181393, 0.867308,
		0.663609, 0.719682, 0.204158,
		-0.587153, 0.670189, -0.453979,
		35.547829, 32.226650, 27.974833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377632, 31.708372, 28.849669>,  <35.958836, 31.757517, 28.292618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377632, 31.708372, 28.849669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.423187, 31.364504, 29.048864>,  <36.450520, 31.158182, 29.168383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.423187, 31.364504, 29.048864>,  <36.377632, 31.708372, 28.849669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423187, 31.364504, 29.048864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388838, -0.422697, -0.818616,
		0.914240, 0.286869, 0.286132,
		0.113889, -0.859670, 0.497992,
		36.457355, 31.106604, 29.198261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039623, 31.532476, 28.691153>,  <36.377632, 31.708372, 28.849669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039623, 31.532476, 28.691153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857742, 31.192575, 28.797863>,  <36.748615, 30.988636, 28.861889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857742, 31.192575, 28.797863>,  <37.039623, 31.532476, 28.691153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857742, 31.192575, 28.797863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527746, -0.498345, -0.687849,
		0.717448, -0.171973, 0.675051,
		-0.454700, -0.849751, 0.266778,
		36.721333, 30.937651, 28.877897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580929, 31.114979, 28.823364>,  <37.039623, 31.532476, 28.691153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580929, 31.114979, 28.823364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.257812, 30.893824, 28.741596>,  <37.063942, 30.761131, 28.692535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.257812, 30.893824, 28.741596>,  <37.580929, 31.114979, 28.823364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257812, 30.893824, 28.741596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555226, -0.597176, -0.578883,
		0.197983, -0.581116, 0.789371,
		-0.807792, -0.552888, -0.204420,
		37.015476, 30.727957, 28.680271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875648, 30.465206, 28.747831>,  <37.580929, 31.114979, 28.823364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875648, 30.465206, 28.747831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.531952, 30.434975, 28.545448>,  <37.325733, 30.416836, 28.424019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.531952, 30.434975, 28.545448>,  <37.875648, 30.465206, 28.747831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531952, 30.434975, 28.545448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487621, -0.420081, -0.765348,
		-0.154700, -0.904334, 0.397804,
		-0.859240, -0.075578, -0.505959,
		37.274181, 30.412302, 28.393661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808216, 29.754553, 28.395943>,  <37.875648, 30.465206, 28.747831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808216, 29.754553, 28.395943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565582, 30.003300, 28.197817>,  <37.420002, 30.152548, 28.078941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565582, 30.003300, 28.197817>,  <37.808216, 29.754553, 28.395943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565582, 30.003300, 28.197817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273478, -0.421789, -0.864467,
		-0.746502, -0.659830, 0.085783,
		-0.606584, 0.621867, -0.495316,
		37.383606, 30.189859, 28.049223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620743, 29.304089, 27.901917>,  <37.808216, 29.754553, 28.395943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620743, 29.304089, 27.901917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589809, 29.679043, 27.766077>,  <37.571251, 29.904015, 27.684572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589809, 29.679043, 27.766077>,  <37.620743, 29.304089, 27.901917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589809, 29.679043, 27.766077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538127, -0.247500, -0.805706,
		-0.839308, -0.245056, -0.485293,
		-0.077333, 0.937385, -0.339600,
		37.566608, 29.960258, 27.664198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446301, 29.274551, 27.135462>,  <37.620743, 29.304089, 27.901917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446301, 29.274551, 27.135462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548862, 29.661152, 27.140047>,  <37.610401, 29.893112, 27.142799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548862, 29.661152, 27.140047>,  <37.446301, 29.274551, 27.135462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548862, 29.661152, 27.140047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376478, -0.088940, -0.922146,
		-0.890235, 0.240763, -0.386671,
		0.256409, 0.966500, 0.011464,
		37.625786, 29.951101, 27.143486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306530, 29.538147, 26.458900>,  <37.446301, 29.274551, 27.135462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306530, 29.538147, 26.458900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573006, 29.803715, 26.594784>,  <37.732891, 29.963057, 26.676313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573006, 29.803715, 26.594784>,  <37.306530, 29.538147, 26.458900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573006, 29.803715, 26.594784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440861, 0.016816, -0.897418,
		-0.601527, 0.747614, -0.281494,
		0.666188, 0.663921, 0.339709,
		37.772861, 30.002892, 26.696697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283417, 30.166044, 25.923721>,  <37.306530, 29.538147, 26.458900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283417, 30.166044, 25.923721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620457, 30.129145, 26.135954>,  <37.822681, 30.107006, 26.263294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620457, 30.129145, 26.135954>,  <37.283417, 30.166044, 25.923721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620457, 30.129145, 26.135954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535799, 0.044267, -0.843184,
		0.054294, 0.994752, 0.086726,
		0.842598, -0.092247, 0.530583,
		37.873238, 30.101471, 26.295130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759975, 30.605381, 25.657570>,  <37.283417, 30.166044, 25.923721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759975, 30.605381, 25.657570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012192, 30.367092, 25.856579>,  <38.163521, 30.224119, 25.975985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012192, 30.367092, 25.856579>,  <37.759975, 30.605381, 25.657570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012192, 30.367092, 25.856579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688566, 0.133538, -0.712773,
		0.358177, 0.792011, 0.494396,
		0.630545, -0.595722, 0.497522,
		38.201355, 30.188375, 26.005835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366524, 30.951345, 25.588211>,  <37.759975, 30.605381, 25.657570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366524, 30.951345, 25.588211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462532, 30.573221, 25.676554>,  <38.520138, 30.346346, 25.729559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462532, 30.573221, 25.676554>,  <38.366524, 30.951345, 25.588211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462532, 30.573221, 25.676554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859844, 0.101416, -0.500382,
		0.450619, 0.310004, 0.837162,
		0.240022, -0.945311, 0.220855,
		38.534538, 30.289627, 25.742809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123703, 30.967133, 25.746309>,  <38.366524, 30.951345, 25.588211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123703, 30.967133, 25.746309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045223, 30.578506, 25.693293>,  <38.998135, 30.345331, 25.661484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045223, 30.578506, 25.693293>,  <39.123703, 30.967133, 25.746309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045223, 30.578506, 25.693293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900997, -0.125288, -0.415339,
		0.386923, -0.200907, 0.899959,
		-0.196199, -0.971565, -0.132540,
		38.986362, 30.287037, 25.653530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633251, 30.588667, 26.109423>,  <39.123703, 30.967133, 25.746309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633251, 30.588667, 26.109423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479900, 30.384602, 25.801460>,  <39.387890, 30.262163, 25.616682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.479900, 30.384602, 25.801460>,  <39.633251, 30.588667, 26.109423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479900, 30.384602, 25.801460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905485, -0.043357, -0.422159,
		0.181988, -0.858984, 0.478567,
		-0.383377, -0.510163, -0.769906,
		39.364887, 30.231552, 25.570488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251644, 30.193970, 25.742691>,  <39.633251, 30.588667, 26.109423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251644, 30.193970, 25.742691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987553, 30.132021, 25.448723>,  <39.829098, 30.094852, 25.272343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987553, 30.132021, 25.448723>,  <40.251644, 30.193970, 25.742691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987553, 30.132021, 25.448723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681286, 0.288380, -0.672820,
		0.316142, -0.944908, -0.084880,
		-0.660230, -0.154879, -0.734921,
		39.789482, 30.085560, 25.228247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731339, 29.713284, 26.267433>,  <40.251644, 30.193970, 25.742691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731339, 29.713284, 26.267433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.068718, 29.774632, 26.473372>,  <41.271145, 29.811440, 26.596935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.068718, 29.774632, 26.473372>,  <40.731339, 29.713284, 26.267433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068718, 29.774632, 26.473372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537163, 0.252619, 0.804760,
		-0.006636, -0.955333, 0.295456,
		0.843452, 0.153368, 0.514847,
		41.321754, 29.820642, 26.627825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581692, 29.381947, 26.858433>,  <40.731339, 29.713284, 26.267433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581692, 29.381947, 26.858433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875858, 29.633125, 26.960295>,  <41.052357, 29.783833, 27.021412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.875858, 29.633125, 26.960295>,  <40.581692, 29.381947, 26.858433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875858, 29.633125, 26.960295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462011, 0.189750, 0.866337,
		0.495695, -0.754768, 0.429664,
		0.735413, 0.627949, 0.254653,
		41.096481, 29.821510, 27.036690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820965, 29.249800, 27.561413>,  <40.581692, 29.381947, 26.858433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820965, 29.249800, 27.561413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922485, 29.629992, 27.489668>,  <40.983398, 29.858107, 27.446621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922485, 29.629992, 27.489668>,  <40.820965, 29.249800, 27.561413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922485, 29.629992, 27.489668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224495, 0.238254, 0.944900,
		0.940844, -0.199551, 0.273847,
		0.253801, 0.950481, -0.179362,
		40.998627, 29.915136, 27.435860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861828, 29.525520, 28.187651>,  <40.820965, 29.249800, 27.561413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861828, 29.525520, 28.187651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.890362, 29.869207, 27.985004>,  <40.907482, 30.075418, 27.863417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.890362, 29.869207, 27.985004>,  <40.861828, 29.525520, 28.187651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890362, 29.869207, 27.985004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228891, 0.508457, 0.830108,
		0.970835, 0.056743, 0.232938,
		0.071336, 0.859215, -0.506616,
		40.911762, 30.126972, 27.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093822, 29.991901, 28.615112>,  <40.861828, 29.525520, 28.187651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093822, 29.991901, 28.615112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.931534, 30.233305, 28.340546>,  <40.834160, 30.378147, 28.175806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.931534, 30.233305, 28.340546>,  <41.093822, 29.991901, 28.615112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931534, 30.233305, 28.340546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456249, 0.517014, 0.724246,
		0.791975, 0.607020, 0.065586,
		-0.405723, 0.603509, -0.686415,
		40.809818, 30.414358, 28.134621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256805, 30.635067, 28.915075>,  <41.093822, 29.991901, 28.615112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.256805, 30.635067, 28.915075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.972435, 30.684399, 28.638128>,  <40.801811, 30.713997, 28.471960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.972435, 30.684399, 28.638128>,  <41.256805, 30.635067, 28.915075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972435, 30.684399, 28.638128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448004, 0.679473, 0.581041,
		0.542104, 0.723261, -0.427804,
		-0.710925, 0.123327, -0.692369,
		40.759159, 30.721397, 28.430418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122704, 31.385204, 28.627899>,  <41.256805, 30.635067, 28.915075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122704, 31.385204, 28.627899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767403, 31.211592, 28.567743>,  <40.554222, 31.107424, 28.531651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767403, 31.211592, 28.567743>,  <41.122704, 31.385204, 28.627899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767403, 31.211592, 28.567743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459346, 0.840557, 0.287169,
		0.001769, 0.324160, -0.946001,
		-0.888256, -0.434033, -0.150389,
		40.500927, 31.081383, 28.522627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623264, 31.931396, 28.525053>,  <41.122704, 31.385204, 28.627899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623264, 31.931396, 28.525053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.376408, 31.622017, 28.582901>,  <40.228294, 31.436390, 28.617611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.376408, 31.622017, 28.582901>,  <40.623264, 31.931396, 28.525053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376408, 31.622017, 28.582901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602527, 0.582727, 0.545334,
		-0.506063, 0.249409, -0.825648,
		-0.617139, -0.773449, 0.144621,
		40.191265, 31.389982, 28.626287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849724, 32.194378, 28.437128>,  <40.623264, 31.931396, 28.525053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849724, 32.194378, 28.437128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862949, 31.863291, 28.661196>,  <39.870884, 31.664639, 28.795637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.862949, 31.863291, 28.661196>,  <39.849724, 32.194378, 28.437128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862949, 31.863291, 28.661196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564408, 0.447091, 0.693940,
		-0.824834, -0.339109, -0.452388,
		0.033063, -0.827717, 0.560172,
		39.872868, 31.614975, 28.829247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149593, 32.153835, 28.757420>,  <39.849724, 32.194378, 28.437128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149593, 32.153835, 28.757420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.391735, 31.920273, 28.973789>,  <39.537022, 31.780136, 29.103611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.391735, 31.920273, 28.973789>,  <39.149593, 32.153835, 28.757420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391735, 31.920273, 28.973789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540233, 0.197678, 0.817968,
		-0.584542, -0.787389, -0.195778,
		0.605358, -0.583903, 0.540925,
		39.573341, 31.745102, 29.136066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697468, 31.602036, 29.113880>,  <39.149593, 32.153835, 28.757420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697468, 31.602036, 29.113880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045288, 31.617439, 29.310818>,  <39.253979, 31.626682, 29.428980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.045288, 31.617439, 29.310818>,  <38.697468, 31.602036, 29.113880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045288, 31.617439, 29.310818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491523, -0.029082, 0.870379,
		0.047838, -0.998835, -0.006359,
		0.869550, 0.038512, 0.492342,
		39.306152, 31.628992, 29.458521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754715, 31.034933, 29.638861>,  <38.697468, 31.602036, 29.113880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754715, 31.034933, 29.638861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.015835, 31.314178, 29.756495>,  <39.172508, 31.481726, 29.827076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.015835, 31.314178, 29.756495>,  <38.754715, 31.034933, 29.638861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015835, 31.314178, 29.756495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427512, 0.019027, 0.903809,
		0.625368, -0.715732, 0.310874,
		0.652800, 0.698115, 0.294085,
		39.211674, 31.523613, 29.844721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702152, 30.991247, 30.433390>,  <38.754715, 31.034933, 29.638861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702152, 30.991247, 30.433390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906548, 31.324955, 30.350555>,  <39.029186, 31.525179, 30.300856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906548, 31.324955, 30.350555>,  <38.702152, 30.991247, 30.433390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906548, 31.324955, 30.350555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408855, 0.447803, 0.795179,
		0.756126, -0.321661, 0.569918,
		0.510989, 0.834270, -0.207084,
		39.059845, 31.575235, 30.288431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936745, 31.222860, 31.039978>,  <38.702152, 30.991247, 30.433390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936745, 31.222860, 31.039978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912083, 31.558352, 30.823559>,  <38.897285, 31.759647, 30.693708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912083, 31.558352, 30.823559>,  <38.936745, 31.222860, 31.039978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912083, 31.558352, 30.823559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206612, 0.519612, 0.829044,
		0.976478, 0.162900, 0.141256,
		-0.061653, 0.838729, -0.541047,
		38.893585, 31.809971, 30.661245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.750107, 32.638176, 26.315729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.667850, 33.000305, 26.167076>,  <41.618496, 33.217583, 26.077885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.667850, 33.000305, 26.167076>,  <41.750107, 32.638176, 26.315729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667850, 33.000305, 26.167076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385392, -0.274146, -0.881088,
		-0.899548, -0.324409, -0.292528,
		-0.205638, 0.905319, -0.371632,
		41.606159, 33.271900, 26.055586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391449, 32.486931, 25.722971>,  <41.750107, 32.638176, 26.315729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391449, 32.486931, 25.722971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.524609, 32.862648, 25.689751>,  <41.604504, 33.088078, 25.669819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.524609, 32.862648, 25.689751>,  <41.391449, 32.486931, 25.722971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524609, 32.862648, 25.689751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582134, -0.274005, -0.765534,
		-0.741820, 0.206502, -0.638013,
		0.332903, 0.939297, -0.083050,
		41.624481, 33.144436, 25.664835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430222, 32.692749, 24.920057>,  <41.391449, 32.486931, 25.722971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430222, 32.692749, 24.920057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.672287, 32.952015, 25.104952>,  <41.817528, 33.107574, 25.215889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.672287, 32.952015, 25.104952>,  <41.430222, 32.692749, 24.920057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672287, 32.952015, 25.104952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749546, -0.268250, -0.605164,
		-0.268250, 0.712690, -0.648162,
		0.605164, 0.648162, 0.462237,
		41.853836, 33.146465, 25.243624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663113, 33.107162, 24.376482>,  <41.430222, 32.692749, 24.920057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663113, 33.107162, 24.376482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.922012, 33.140026, 24.679619>,  <42.077351, 33.159744, 24.861502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.922012, 33.140026, 24.679619>,  <41.663113, 33.107162, 24.376482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922012, 33.140026, 24.679619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756651, 0.051371, -0.651798,
		-0.092481, 0.995295, -0.028914,
		0.647245, 0.082157, 0.757841,
		42.116184, 33.164673, 24.906971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209072, 33.693630, 24.194487>,  <41.663113, 33.107162, 24.376482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209072, 33.693630, 24.194487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.400208, 33.482540, 24.475393>,  <42.514889, 33.355888, 24.643938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.400208, 33.482540, 24.475393>,  <42.209072, 33.693630, 24.194487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400208, 33.482540, 24.475393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856961, 0.104304, -0.504717,
		0.193101, 0.842988, 0.502078,
		0.477839, -0.527723, 0.702267,
		42.543560, 33.324223, 24.686073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813446, 34.009918, 24.298660>,  <42.209072, 33.693630, 24.194487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813446, 34.009918, 24.298660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.912613, 33.686699, 24.512423>,  <42.972115, 33.492767, 24.640680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.912613, 33.686699, 24.512423>,  <42.813446, 34.009918, 24.298660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912613, 33.686699, 24.512423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926037, 0.035614, -0.375749,
		0.284592, 0.588036, 0.757113,
		0.247918, -0.808050, 0.534408,
		42.986988, 33.444283, 24.672745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401497, 34.209126, 24.673388>,  <42.813446, 34.009918, 24.298660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401497, 34.209126, 24.673388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.379082, 33.810898, 24.643166>,  <43.365631, 33.571960, 24.625032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.379082, 33.810898, 24.643166>,  <43.401497, 34.209126, 24.673388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379082, 33.810898, 24.643166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965718, -0.034840, -0.257244,
		0.253471, -0.087381, 0.963388,
		-0.056043, -0.995566, -0.075554,
		43.362270, 33.512230, 24.620499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022263, 33.918098, 24.997433>,  <43.401497, 34.209126, 24.673388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022263, 33.918098, 24.997433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.873901, 33.651440, 24.738815>,  <43.784885, 33.491444, 24.583645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.873901, 33.651440, 24.738815>,  <44.022263, 33.918098, 24.997433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873901, 33.651440, 24.738815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927898, -0.237581, -0.287333,
		0.037942, -0.706499, 0.706697,
		-0.370899, -0.666645, -0.646544,
		43.762630, 33.451447, 24.544851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470264, 33.311775, 25.044127>,  <44.022263, 33.918098, 24.997433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470264, 33.311775, 25.044127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.271687, 33.244183, 24.703541>,  <44.152542, 33.203629, 24.499189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.271687, 33.244183, 24.703541>,  <44.470264, 33.311775, 25.044127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271687, 33.244183, 24.703541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842154, -0.331640, -0.425197,
		-0.210531, -0.928149, 0.306946,
		-0.496441, -0.168979, -0.851465,
		44.122753, 33.193489, 24.448101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655624, 32.635166, 24.824652>,  <44.470264, 33.311775, 25.044127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655624, 32.635166, 24.824652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.533539, 32.825268, 24.494566>,  <44.460285, 32.939327, 24.296515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.533539, 32.825268, 24.494566>,  <44.655624, 32.635166, 24.824652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533539, 32.825268, 24.494566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855126, -0.244545, -0.457118,
		-0.419049, -0.845181, -0.331763,
		-0.305216, 0.475254, -0.825213,
		44.441975, 32.967842, 24.247002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811172, 32.132996, 24.273001>,  <44.655624, 32.635166, 24.824652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811172, 32.132996, 24.273001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.770164, 32.485352, 24.088165>,  <44.745560, 32.696766, 23.977264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.770164, 32.485352, 24.088165>,  <44.811172, 32.132996, 24.273001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770164, 32.485352, 24.088165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780248, -0.216931, -0.586647,
		-0.617012, -0.420686, -0.665072,
		-0.102519, 0.880888, -0.462088,
		44.739410, 32.749619, 23.949539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759235, 32.087948, 23.518963>,  <44.811172, 32.132996, 24.273001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759235, 32.087948, 23.518963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.922146, 32.438442, 23.621988>,  <45.019890, 32.648739, 23.683804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.922146, 32.438442, 23.621988>,  <44.759235, 32.087948, 23.518963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922146, 32.438442, 23.621988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802915, -0.209111, -0.558212,
		-0.435266, 0.434145, -0.788709,
		0.407273, 0.876237, 0.257563,
		45.044327, 32.701313, 23.699257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013748, 32.544884, 22.943884>,  <44.759235, 32.087948, 23.518963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013748, 32.544884, 22.943884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.254623, 32.614536, 23.255535>,  <45.399151, 32.656326, 23.442526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.254623, 32.614536, 23.255535>,  <45.013748, 32.544884, 22.943884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254623, 32.614536, 23.255535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798103, -0.155600, -0.582082,
		0.019877, 0.972352, -0.232673,
		0.602193, 0.174127, 0.779130,
		45.435280, 32.666775, 23.489275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961269, 31.792318, 22.479757>,  <45.013748, 32.544884, 22.943884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961269, 31.792318, 22.479757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.780045, 31.462681, 22.343758>,  <44.671310, 31.264898, 22.262157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.780045, 31.462681, 22.343758>,  <44.961269, 31.792318, 22.479757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780045, 31.462681, 22.343758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496585, -0.083443, 0.863968,
		-0.740362, 0.560272, -0.371428,
		-0.453064, -0.824095, -0.340001,
		44.644127, 31.215452, 22.241756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285564, 31.779091, 22.631552>,  <44.961269, 31.792318, 22.479757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285564, 31.779091, 22.631552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.342022, 31.387882, 22.570166>,  <44.375896, 31.153156, 22.533333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.342022, 31.387882, 22.570166>,  <44.285564, 31.779091, 22.631552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342022, 31.387882, 22.570166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646754, -0.208456, 0.733659,
		-0.749526, -0.004293, -0.661962,
		0.141140, -0.978023, -0.153466,
		44.384365, 31.094475, 22.524126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776310, 31.503071, 22.884974>,  <44.285564, 31.779091, 22.631552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776310, 31.503071, 22.884974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.950897, 31.147861, 22.827139>,  <44.055649, 30.934736, 22.792439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.950897, 31.147861, 22.827139>,  <43.776310, 31.503071, 22.884974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950897, 31.147861, 22.827139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523042, -0.381196, 0.762311,
		-0.732067, -0.257101, -0.630855,
		0.436470, -0.888026, -0.144586,
		44.081837, 30.881454, 22.783764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266144, 30.949194, 23.045998>,  <43.776310, 31.503071, 22.884974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266144, 30.949194, 23.045998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.614452, 30.753254, 23.063005>,  <43.823437, 30.635689, 23.073210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.614452, 30.753254, 23.063005>,  <43.266144, 30.949194, 23.045998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614452, 30.753254, 23.063005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338199, -0.533922, 0.774951,
		-0.356908, -0.689183, -0.630589,
		0.870769, -0.489851, 0.042520,
		43.875683, 30.606298, 23.075762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130764, 30.238188, 22.934063>,  <43.266144, 30.949194, 23.045998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130764, 30.238188, 22.934063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.478954, 30.255760, 23.130159>,  <43.687870, 30.266304, 23.247818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.478954, 30.255760, 23.130159>,  <43.130764, 30.238188, 22.934063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478954, 30.255760, 23.130159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370434, -0.597377, 0.711280,
		0.324108, -0.800757, -0.503729,
		0.870479, 0.043933, 0.490242,
		43.740097, 30.268940, 23.277231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383644, 29.515594, 23.135963>,  <43.130764, 30.238188, 22.934063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383644, 29.515594, 23.135963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.574661, 29.752201, 23.395828>,  <43.689270, 29.894165, 23.551748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.574661, 29.752201, 23.395828>,  <43.383644, 29.515594, 23.135963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574661, 29.752201, 23.395828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434347, -0.483814, 0.759781,
		0.763738, -0.645007, 0.025881,
		0.477542, 0.591515, 0.649664,
		43.717922, 29.929655, 23.590727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745258, 29.002089, 23.660498>,  <43.383644, 29.515594, 23.135963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745258, 29.002089, 23.660498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.762749, 29.356110, 23.845871>,  <43.773243, 29.568521, 23.957094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.762749, 29.356110, 23.845871>,  <43.745258, 29.002089, 23.660498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762749, 29.356110, 23.845871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320918, -0.426850, 0.845465,
		0.946097, -0.185689, 0.265367,
		0.043722, 0.885053, 0.463432,
		43.775864, 29.621626, 23.984901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145752, 28.902630, 24.338531>,  <43.745258, 29.002089, 23.660498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145752, 28.902630, 24.338531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.961483, 29.248381, 24.419165>,  <43.850922, 29.455832, 24.467545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.961483, 29.248381, 24.419165>,  <44.145752, 28.902630, 24.338531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961483, 29.248381, 24.419165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360800, -0.389874, 0.847244,
		0.810929, 0.317570, 0.491471,
		-0.460671, 0.864377, 0.201581,
		43.823280, 29.507694, 24.479639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114655, 28.900648, 25.041895>,  <44.145752, 28.902630, 24.338531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114655, 28.900648, 25.041895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.838142, 29.171957, 24.942238>,  <43.672234, 29.334742, 24.882442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.838142, 29.171957, 24.942238>,  <44.114655, 28.900648, 25.041895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838142, 29.171957, 24.942238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602243, -0.350295, 0.717354,
		0.399287, 0.645941, 0.650638,
		-0.691284, 0.678273, -0.249145,
		43.630756, 29.375439, 24.867495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773346, 29.013372, 25.607565>,  <44.114655, 28.900648, 25.041895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773346, 29.013372, 25.607565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.527966, 29.202070, 25.354223>,  <43.380737, 29.315289, 25.202219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.527966, 29.202070, 25.354223>,  <43.773346, 29.013372, 25.607565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527966, 29.202070, 25.354223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705180, 0.033839, 0.708220,
		0.355532, 0.881085, 0.311906,
		-0.613448, 0.471745, -0.633355,
		43.343929, 29.343594, 25.164217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508514, 29.686625, 26.009710>,  <43.773346, 29.013372, 25.607565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508514, 29.686625, 26.009710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.245136, 29.593977, 25.723270>,  <43.087109, 29.538387, 25.551407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.245136, 29.593977, 25.723270>,  <43.508514, 29.686625, 26.009710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245136, 29.593977, 25.723270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751686, 0.249977, 0.610311,
		0.037649, 0.940140, -0.338702,
		-0.658445, -0.231620, -0.716102,
		43.047604, 29.524490, 25.508440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060364, 30.231073, 25.902193>,  <43.508514, 29.686625, 26.009710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060364, 30.231073, 25.902193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866653, 29.897717, 25.795660>,  <42.750427, 29.697702, 25.731741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866653, 29.897717, 25.795660>,  <43.060364, 30.231073, 25.902193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866653, 29.897717, 25.795660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708268, 0.194718, 0.678558,
		-0.513646, 0.517244, -0.684563,
		-0.484277, -0.833393, -0.266331,
		42.721371, 29.647699, 25.715761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479507, 30.532932, 25.751522>,  <43.060364, 30.231073, 25.902193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479507, 30.532932, 25.751522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.378632, 30.148748, 25.798708>,  <42.318108, 29.918238, 25.827021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.378632, 30.148748, 25.798708>,  <42.479507, 30.532932, 25.751522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378632, 30.148748, 25.798708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726675, 0.268468, 0.632351,
		-0.639019, 0.073746, -0.765648,
		-0.252185, -0.960461, 0.117967,
		42.302975, 29.860609, 25.834099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759792, 30.497286, 25.664497>,  <42.479507, 30.532932, 25.751522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759792, 30.497286, 25.664497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.858788, 30.158571, 25.852839>,  <41.918182, 29.955343, 25.965843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.858788, 30.158571, 25.852839>,  <41.759792, 30.497286, 25.664497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858788, 30.158571, 25.852839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700160, 0.179612, 0.691025,
		-0.669722, -0.500691, -0.548435,
		0.247485, -0.846787, 0.470854,
		41.933033, 29.904535, 25.994095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141903, 30.160170, 25.849134>,  <41.759792, 30.497286, 25.664497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141903, 30.160170, 25.849134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.404800, 30.012560, 26.111998>,  <41.562538, 29.923994, 26.269716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.404800, 30.012560, 26.111998>,  <41.141903, 30.160170, 25.849134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404800, 30.012560, 26.111998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607902, 0.255863, 0.751657,
		-0.445522, -0.893508, -0.056166,
		0.657241, -0.369023, 0.657158,
		41.601974, 29.901854, 26.309145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703781, 29.891336, 25.221857>,  <41.141903, 30.160170, 25.849134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703781, 29.891336, 25.221857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.379951, 30.021999, 25.026760>,  <40.185654, 30.100397, 24.909702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.379951, 30.021999, 25.026760>,  <40.703781, 29.891336, 25.221857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379951, 30.021999, 25.026760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557358, 0.166943, -0.813315,
		-0.184251, -0.930282, -0.317217,
		-0.809570, 0.326658, -0.487741,
		40.137081, 30.119997, 24.880438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675278, 29.584629, 24.547787>,  <40.703781, 29.891336, 25.221857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675278, 29.584629, 24.547787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.436222, 29.903706, 24.515493>,  <40.292789, 30.095152, 24.496117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.436222, 29.903706, 24.515493>,  <40.675278, 29.584629, 24.547787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436222, 29.903706, 24.515493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464127, 0.262093, -0.846104,
		-0.653770, -0.543135, -0.526867,
		-0.597637, 0.797691, -0.080735,
		40.256931, 30.143013, 24.491272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392025, 29.540163, 23.976770>,  <40.675278, 29.584629, 24.547787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392025, 29.540163, 23.976770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.354729, 29.930397, 24.056309>,  <40.332352, 30.164537, 24.104033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.354729, 29.930397, 24.056309>,  <40.392025, 29.540163, 23.976770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354729, 29.930397, 24.056309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542157, 0.217258, -0.811705,
		-0.835088, 0.032123, -0.549177,
		-0.093239, 0.975585, 0.198845,
		40.326756, 30.223072, 24.115963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185852, 29.732576, 23.430859>,  <40.392025, 29.540163, 23.976770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185852, 29.732576, 23.430859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.310135, 30.084446, 23.574875>,  <40.384705, 30.295568, 23.661285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.310135, 30.084446, 23.574875>,  <40.185852, 29.732576, 23.430859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310135, 30.084446, 23.574875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382887, 0.230863, -0.894483,
		-0.869975, 0.415781, -0.265085,
		0.310711, 0.879675, 0.360043,
		40.403347, 30.348349, 23.682888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902870, 30.251553, 22.973461>,  <40.185852, 29.732576, 23.430859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902870, 30.251553, 22.973461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.219879, 30.389080, 23.174936>,  <40.410084, 30.471596, 23.295822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.219879, 30.389080, 23.174936>,  <39.902870, 30.251553, 22.973461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219879, 30.389080, 23.174936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434230, 0.261782, -0.861925,
		-0.428203, 0.901808, 0.058171,
		0.792519, 0.343819, 0.503688,
		40.457634, 30.492226, 23.326042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051044, 30.816307, 22.581377>,  <39.902870, 30.251553, 22.973461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051044, 30.816307, 22.581377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.376736, 30.758959, 22.806402>,  <40.572151, 30.724550, 22.941418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.376736, 30.758959, 22.806402>,  <40.051044, 30.816307, 22.581377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376736, 30.758959, 22.806402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577580, 0.297895, -0.760040,
		-0.058619, 0.943771, 0.325361,
		0.814227, -0.143369, 0.562565,
		40.621002, 30.715948, 22.975172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429054, 31.423248, 22.357582>,  <40.051044, 30.816307, 22.581377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429054, 31.423248, 22.357582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.646103, 31.124321, 22.510984>,  <40.776333, 30.944965, 22.603025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.646103, 31.124321, 22.510984>,  <40.429054, 31.423248, 22.357582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646103, 31.124321, 22.510984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682600, 0.126246, -0.719805,
		0.489508, 0.652362, 0.578624,
		0.542623, -0.747319, 0.383504,
		40.808891, 30.900126, 22.626036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705826, 32.071499, 22.169899>,  <40.429054, 31.423248, 22.357582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705826, 32.071499, 22.169899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404846, 32.056576, 21.906860>,  <40.224258, 32.047623, 21.749037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404846, 32.056576, 21.906860>,  <40.705826, 32.071499, 22.169899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404846, 32.056576, 21.906860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642679, 0.260150, 0.720615,
		0.144187, 0.964847, -0.219727,
		-0.752445, -0.037311, -0.657597,
		40.179111, 32.045383, 21.709581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233894, 32.541004, 22.407887>,  <40.705826, 32.071499, 22.169899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233894, 32.541004, 22.407887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.976887, 32.378040, 22.148289>,  <39.822681, 32.280262, 21.992531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.976887, 32.378040, 22.148289>,  <40.233894, 32.541004, 22.407887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976887, 32.378040, 22.148289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714819, 0.013554, 0.699177,
		-0.276053, 0.913146, -0.299931,
		-0.642516, -0.407407, -0.648993,
		39.784130, 32.255817, 21.953590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552711, 33.007648, 22.421759>,  <40.233894, 32.541004, 22.407887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552711, 33.007648, 22.421759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.454514, 32.652699, 22.265657>,  <39.395596, 32.439728, 22.171997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.454514, 32.652699, 22.265657>,  <39.552711, 33.007648, 22.421759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454514, 32.652699, 22.265657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783602, -0.055345, 0.618793,
		-0.570699, 0.457715, -0.681762,
		-0.245499, -0.887375, -0.390252,
		39.380863, 32.386486, 22.148582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882240, 32.967987, 21.975239>,  <39.552711, 33.007648, 22.421759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882240, 32.967987, 21.975239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958218, 32.613773, 22.144831>,  <39.003803, 32.401245, 22.246586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.958218, 32.613773, 22.144831>,  <38.882240, 32.967987, 21.975239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958218, 32.613773, 22.144831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828236, 0.087369, 0.553527,
		-0.527208, -0.456290, -0.716834,
		0.189940, -0.885532, 0.423977,
		39.015198, 32.348114, 22.272024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250416, 32.682865, 21.938862>,  <38.882240, 32.967987, 21.975239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250416, 32.682865, 21.938862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409203, 32.412964, 22.187738>,  <38.504475, 32.251022, 22.337065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409203, 32.412964, 22.187738>,  <38.250416, 32.682865, 21.938862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409203, 32.412964, 22.187738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838053, 0.009971, 0.545497,
		-0.374282, -0.737972, -0.561525,
		0.396963, -0.674757, 0.622192,
		38.528290, 32.210537, 22.374395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826141, 32.096458, 22.041914>,  <38.250416, 32.682865, 21.938862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826141, 32.096458, 22.041914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054974, 32.130684, 22.368204>,  <38.192272, 32.151218, 22.563978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.054974, 32.130684, 22.368204>,  <37.826141, 32.096458, 22.041914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054974, 32.130684, 22.368204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818346, 0.126380, 0.560659,
		-0.055125, -0.988286, 0.142312,
		0.572076, 0.085554, 0.815726,
		38.226597, 32.156353, 22.612923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458351, 31.761230, 22.582623>,  <37.826141, 32.096458, 22.041914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458351, 31.761230, 22.582623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739559, 31.954298, 22.791540>,  <37.908283, 32.070137, 22.916891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739559, 31.954298, 22.791540>,  <37.458351, 31.761230, 22.582623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739559, 31.954298, 22.791540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679565, 0.239439, 0.693441,
		0.209636, -0.842443, 0.496329,
		0.703025, 0.482658, 0.522299,
		37.950466, 32.099098, 22.948229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.675755, 35.179394, 22.970648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.678478, 34.939194, 23.290487>,  <44.680111, 34.795074, 23.482391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.678478, 34.939194, 23.290487>,  <44.675755, 35.179394, 22.970648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678478, 34.939194, 23.290487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563278, 0.658387, 0.499244,
		-0.826239, -0.453794, -0.333767,
		0.006806, -0.600498, 0.799597,
		44.680519, 34.759045, 23.530367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027378, 35.133999, 23.107838>,  <44.675755, 35.179394, 22.970648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027378, 35.133999, 23.107838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.236511, 35.041889, 23.436134>,  <44.361992, 34.986622, 23.633112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.236511, 35.041889, 23.436134>,  <44.027378, 35.133999, 23.107838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236511, 35.041889, 23.436134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560368, 0.632705, 0.534484,
		-0.642366, -0.739364, 0.201760,
		0.522832, -0.230274, 0.820744,
		44.393360, 34.972809, 23.682358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518692, 35.031761, 23.675783>,  <44.027378, 35.133999, 23.107838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518692, 35.031761, 23.675783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.859631, 35.094303, 23.875410>,  <44.064194, 35.131828, 23.995186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.859631, 35.094303, 23.875410>,  <43.518692, 35.031761, 23.675783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.859631, 35.094303, 23.875410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501881, 0.512888, 0.696464,
		-0.147070, -0.844097, 0.515626,
		0.852342, 0.156354, 0.499066,
		44.115334, 35.141209, 24.025129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292984, 35.088184, 24.400782>,  <43.518692, 35.031761, 23.675783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292984, 35.088184, 24.400782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.673046, 35.198486, 24.458979>,  <43.901081, 35.264668, 24.493896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.673046, 35.198486, 24.458979>,  <43.292984, 35.088184, 24.400782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673046, 35.198486, 24.458979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300889, 0.688709, 0.659656,
		0.081704, -0.670550, 0.737351,
		0.950153, 0.275757, 0.145491,
		43.958092, 35.281212, 24.502626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442524, 34.983494, 24.997547>,  <43.292984, 35.088184, 24.400782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442524, 34.983494, 24.997547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.680222, 35.282516, 24.878864>,  <43.822842, 35.461929, 24.807655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.680222, 35.282516, 24.878864>,  <43.442524, 34.983494, 24.997547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680222, 35.282516, 24.878864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431467, 0.607633, 0.666797,
		0.678756, -0.268222, 0.683628,
		0.594245, 0.747555, -0.296706,
		43.858494, 35.506783, 24.789852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677925, 35.285496, 25.558069>,  <43.442524, 34.983494, 24.997547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677925, 35.285496, 25.558069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.764568, 35.564198, 25.284540>,  <43.816555, 35.731419, 25.120422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.764568, 35.564198, 25.284540>,  <43.677925, 35.285496, 25.558069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764568, 35.564198, 25.284540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435919, 0.695774, 0.570853,
		0.873531, 0.174439, 0.454440,
		0.216608, 0.696756, -0.683821,
		43.829552, 35.773224, 25.079393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058411, 35.739769, 25.931747>,  <43.677925, 35.285496, 25.558069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058411, 35.739769, 25.931747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.893982, 35.914875, 25.611900>,  <43.795326, 36.019939, 25.419992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.893982, 35.914875, 25.611900>,  <44.058411, 35.739769, 25.931747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893982, 35.914875, 25.611900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476392, 0.644692, 0.597849,
		0.777222, 0.626688, -0.056467,
		-0.411069, 0.437761, -0.799617,
		43.770660, 36.046204, 25.372015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133060, 36.401085, 26.080273>,  <44.058411, 35.739769, 25.931747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133060, 36.401085, 26.080273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.840862, 36.378265, 25.808058>,  <43.665543, 36.364574, 25.644730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.840862, 36.378265, 25.808058>,  <44.133060, 36.401085, 26.080273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840862, 36.378265, 25.808058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610677, 0.500643, 0.613539,
		0.305705, 0.863772, -0.400551,
		-0.730491, -0.057045, -0.680535,
		43.621716, 36.361153, 25.603897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812172, 37.061764, 25.987463>,  <44.133060, 36.401085, 26.080273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812172, 37.061764, 25.987463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.547607, 36.779026, 25.887136>,  <43.388870, 36.609383, 25.826941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.547607, 36.779026, 25.887136>,  <43.812172, 37.061764, 25.987463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547607, 36.779026, 25.887136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716220, 0.495967, 0.490963,
		-0.222639, 0.504366, -0.834294,
		-0.661408, -0.706846, -0.250815,
		43.349186, 36.566971, 25.811892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263355, 37.469875, 25.669195>,  <43.812172, 37.061764, 25.987463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263355, 37.469875, 25.669195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.086590, 37.115055, 25.722641>,  <42.980530, 36.902164, 25.754709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.086590, 37.115055, 25.722641>,  <43.263355, 37.469875, 25.669195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086590, 37.115055, 25.722641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808428, 0.458368, 0.369246,
		-0.388785, 0.055157, -0.919676,
		-0.441917, -0.887049, 0.133616,
		42.954014, 36.848942, 25.762726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588535, 37.470871, 25.378117>,  <43.263355, 37.469875, 25.669195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588535, 37.470871, 25.378117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.551910, 37.145115, 25.607338>,  <42.529938, 36.949661, 25.744869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.551910, 37.145115, 25.607338>,  <42.588535, 37.470871, 25.378117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551910, 37.145115, 25.607338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872650, 0.342827, 0.347781,
		-0.479686, -0.468230, -0.742066,
		-0.091559, -0.814389, 0.573051,
		42.524445, 36.900799, 25.779253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971607, 37.119164, 25.343748>,  <42.588535, 37.470871, 25.378117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971607, 37.119164, 25.343748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.094463, 37.042953, 25.716707>,  <42.168175, 36.997227, 25.940483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.094463, 37.042953, 25.716707>,  <41.971607, 37.119164, 25.343748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094463, 37.042953, 25.716707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861130, 0.361439, 0.357516,
		-0.405121, -0.912722, -0.053058,
		0.307136, -0.190527, 0.932398,
		42.186604, 36.985794, 25.996428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453423, 36.642845, 24.880079>,  <41.971607, 37.119164, 25.343748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453423, 36.642845, 24.880079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.154320, 36.512634, 24.648598>,  <40.974857, 36.434509, 24.509708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.154320, 36.512634, 24.648598>,  <41.453423, 36.642845, 24.880079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154320, 36.512634, 24.648598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636616, -0.103877, -0.764153,
		0.188638, -0.939810, 0.284910,
		-0.747753, -0.325526, -0.578703,
		40.929993, 36.414978, 24.474987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696514, 36.091404, 24.393246>,  <41.453423, 36.642845, 24.880079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696514, 36.091404, 24.393246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350597, 36.203918, 24.226864>,  <41.143047, 36.271427, 24.127035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.350597, 36.203918, 24.226864>,  <41.696514, 36.091404, 24.393246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350597, 36.203918, 24.226864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393199, -0.135867, -0.909359,
		-0.312308, -0.949956, 0.006893,
		-0.864788, 0.281290, -0.415954,
		41.091160, 36.288303, 24.102077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545563, 35.572334, 23.825577>,  <41.696514, 36.091404, 24.393246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545563, 35.572334, 23.825577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.334648, 35.900459, 23.736988>,  <41.208099, 36.097336, 23.683834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.334648, 35.900459, 23.736988>,  <41.545563, 35.572334, 23.825577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334648, 35.900459, 23.736988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300148, -0.064027, -0.951741,
		-0.794910, -0.568314, -0.212456,
		-0.527285, 0.820317, -0.221474,
		41.176464, 36.146553, 23.670546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066856, 35.386448, 23.297117>,  <41.545563, 35.572334, 23.825577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066856, 35.386448, 23.297117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.120895, 35.781906, 23.270782>,  <41.153316, 36.019180, 23.254982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.120895, 35.781906, 23.270782>,  <41.066856, 35.386448, 23.297117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120895, 35.781906, 23.270782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124412, -0.082847, -0.988766,
		-0.982991, 0.125386, -0.134191,
		0.135095, 0.988643, -0.065839,
		41.161423, 36.078499, 23.251030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594334, 35.488907, 22.856947>,  <41.066856, 35.386448, 23.297117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594334, 35.488907, 22.856947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.799053, 35.832458, 22.849026>,  <40.921883, 36.038589, 22.844273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.799053, 35.832458, 22.849026>,  <40.594334, 35.488907, 22.856947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799053, 35.832458, 22.849026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264337, -0.179367, -0.947604,
		-0.817429, 0.479746, -0.318833,
		0.511797, 0.858878, -0.019805,
		40.952591, 36.090122, 22.843084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355541, 35.885151, 22.281498>,  <40.594334, 35.488907, 22.856947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355541, 35.885151, 22.281498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.726509, 36.007591, 22.367472>,  <40.949089, 36.081055, 22.419056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.726509, 36.007591, 22.367472>,  <40.355541, 35.885151, 22.281498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726509, 36.007591, 22.367472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322662, -0.364139, -0.873666,
		-0.189165, 0.879605, -0.436477,
		0.927419, 0.306102, 0.214933,
		41.004734, 36.099422, 22.431952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521046, 36.099129, 21.624971>,  <40.355541, 35.885151, 22.281498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521046, 36.099129, 21.624971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.865517, 36.078445, 21.827236>,  <41.072201, 36.066036, 21.948595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.865517, 36.078445, 21.827236>,  <40.521046, 36.099129, 21.624971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865517, 36.078445, 21.827236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454405, -0.367485, -0.811462,
		0.227780, 0.928591, -0.292976,
		0.861180, -0.051705, 0.505663,
		41.123871, 36.062935, 21.978935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999954, 36.531731, 21.354294>,  <40.521046, 36.099129, 21.624971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999954, 36.531731, 21.354294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.202423, 36.233475, 21.527643>,  <41.323906, 36.054523, 21.631653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.202423, 36.233475, 21.527643>,  <40.999954, 36.531731, 21.354294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202423, 36.233475, 21.527643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315701, -0.307428, -0.897675,
		0.802570, 0.591199, 0.079785,
		0.506176, -0.745636, 0.433375,
		41.354275, 36.009785, 21.657656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514614, 36.415733, 20.885515>,  <40.999954, 36.531731, 21.354294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514614, 36.415733, 20.885515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.589260, 36.096554, 21.114758>,  <41.634048, 35.905045, 21.252304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.589260, 36.096554, 21.114758>,  <41.514614, 36.415733, 20.885515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589260, 36.096554, 21.114758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292450, -0.511790, -0.807802,
		0.937895, 0.318353, 0.137853,
		0.186614, -0.797949, 0.573108,
		41.645245, 35.857170, 21.286690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273293, 36.249725, 20.935511>,  <41.514614, 36.415733, 20.885515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273293, 36.249725, 20.935511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.066025, 35.915985, 21.010727>,  <41.941666, 35.715740, 21.055857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.066025, 35.915985, 21.010727>,  <42.273293, 36.249725, 20.935511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066025, 35.915985, 21.010727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420090, -0.439795, -0.793791,
		0.745000, -0.332325, 0.578391,
		-0.518170, -0.834350, 0.188041,
		41.910572, 35.665680, 21.067139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717308, 35.650204, 20.699299>,  <42.273293, 36.249725, 20.935511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717308, 35.650204, 20.699299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.357670, 35.477318, 20.727037>,  <42.141888, 35.373585, 20.743681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.357670, 35.477318, 20.727037>,  <42.717308, 35.650204, 20.699299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357670, 35.477318, 20.727037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243317, -0.625136, -0.741621,
		0.363895, -0.649916, 0.667225,
		-0.899098, -0.432219, 0.069348,
		42.087940, 35.347652, 20.747843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855030, 35.047611, 20.725777>,  <42.717308, 35.650204, 20.699299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855030, 35.047611, 20.725777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.474705, 35.037502, 20.602285>,  <42.246510, 35.031437, 20.528191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.474705, 35.037502, 20.602285>,  <42.855030, 35.047611, 20.725777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474705, 35.037502, 20.602285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277331, -0.513424, -0.812086,
		-0.137983, -0.857763, 0.495181,
		-0.950815, -0.025275, -0.308728,
		42.189461, 35.029919, 20.509666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704784, 34.348034, 20.565056>,  <42.855030, 35.047611, 20.725777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704784, 34.348034, 20.565056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.465736, 34.596210, 20.361917>,  <42.322308, 34.745117, 20.240034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.465736, 34.596210, 20.361917>,  <42.704784, 34.348034, 20.565056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465736, 34.596210, 20.361917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247635, -0.459601, -0.852903,
		-0.762581, -0.635471, 0.121024,
		-0.597618, 0.620438, -0.507847,
		42.286449, 34.782341, 20.209562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392654, 33.628868, 20.436050>,  <42.704784, 34.348034, 20.565056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392654, 33.628868, 20.436050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.350533, 33.332077, 20.171209>,  <42.325260, 33.154003, 20.012304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.350533, 33.332077, 20.171209>,  <42.392654, 33.628868, 20.436050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350533, 33.332077, 20.171209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853263, -0.274536, 0.443365,
		-0.510737, 0.611640, -0.604189,
		-0.105308, -0.741975, -0.662105,
		42.318939, 33.109486, 19.972578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737000, 33.655640, 20.010515>,  <42.392654, 33.628868, 20.436050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737000, 33.655640, 20.010515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.870441, 33.281624, 20.058535>,  <41.950508, 33.057217, 20.087347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.870441, 33.281624, 20.058535>,  <41.737000, 33.655640, 20.010515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870441, 33.281624, 20.058535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911165, -0.287147, 0.295507,
		-0.241837, -0.207971, -0.947767,
		0.333606, -0.935037, 0.120053,
		41.970524, 33.001114, 20.094549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079128, 33.213467, 19.797680>,  <41.737000, 33.655640, 20.010515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079128, 33.213467, 19.797680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.331974, 32.955658, 19.969738>,  <41.483681, 32.800972, 20.072973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.331974, 32.955658, 19.969738>,  <41.079128, 33.213467, 19.797680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331974, 32.955658, 19.969738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767841, -0.595638, 0.235873,
		0.104185, -0.479382, -0.871400,
		0.632113, -0.644522, 0.430146,
		41.521606, 32.762302, 20.098782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889874, 32.525097, 19.568365>,  <41.079128, 33.213467, 19.797680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889874, 32.525097, 19.568365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.102551, 32.471344, 19.902849>,  <41.230156, 32.439091, 20.103540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.102551, 32.471344, 19.902849>,  <40.889874, 32.525097, 19.568365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102551, 32.471344, 19.902849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749124, -0.535236, 0.390302,
		0.395120, -0.833945, -0.385249,
		0.531690, -0.134383, 0.836210,
		41.262058, 32.431030, 20.153711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848778, 31.859024, 19.733395>,  <40.889874, 32.525097, 19.568365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848778, 31.859024, 19.733395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.951553, 32.028664, 20.080755>,  <41.013218, 32.130447, 20.289171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.951553, 32.028664, 20.080755>,  <40.848778, 31.859024, 19.733395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951553, 32.028664, 20.080755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832770, -0.358793, 0.421618,
		0.490385, -0.831508, 0.260992,
		0.256937, 0.424101, 0.868402,
		41.028633, 32.155895, 20.341276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585983, 31.405186, 20.265326>,  <40.848778, 31.859024, 19.733395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585983, 31.405186, 20.265326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.674625, 31.731613, 20.478836>,  <40.727810, 31.927469, 20.606943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.674625, 31.731613, 20.478836>,  <40.585983, 31.405186, 20.265326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674625, 31.731613, 20.478836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615109, -0.307762, 0.725895,
		0.756659, -0.489194, 0.433771,
		0.221605, 0.816071, 0.533778,
		40.741108, 31.976435, 20.638969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754810, 31.120745, 20.977352>,  <40.585983, 31.405186, 20.265326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754810, 31.120745, 20.977352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.628372, 31.500223, 20.980413>,  <40.552509, 31.727909, 20.982250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.628372, 31.500223, 20.980413>,  <40.754810, 31.120745, 20.977352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628372, 31.500223, 20.980413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574199, -0.197728, 0.794480,
		0.755233, 0.246741, 0.607242,
		-0.316099, 0.948695, 0.007652,
		40.533543, 31.784832, 20.982710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733841, 31.381720, 21.723513>,  <40.754810, 31.120745, 20.977352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733841, 31.381720, 21.723513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506943, 31.617666, 21.493631>,  <40.370804, 31.759235, 21.355703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.506943, 31.617666, 21.493631>,  <40.733841, 31.381720, 21.723513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506943, 31.617666, 21.493631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711958, -0.000490, 0.702222,
		0.413937, 0.807500, 0.420239,
		-0.567250, 0.589868, -0.574703,
		40.336769, 31.794626, 21.321220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284393, 31.586224, 22.198120>,  <40.733841, 31.381720, 21.723513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284393, 31.586224, 22.198120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.259602, 31.194412, 22.274731>,  <41.244728, 30.959326, 22.320698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.259602, 31.194412, 22.274731>,  <41.284393, 31.586224, 22.198120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259602, 31.194412, 22.274731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395364, -0.200292, -0.896421,
		0.916431, 0.020167, 0.399684,
		-0.061976, -0.979528, 0.191527,
		41.241009, 30.900553, 22.332190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850548, 31.452209, 21.984388>,  <41.284393, 31.586224, 22.198120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850548, 31.452209, 21.984388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.686146, 31.087650, 21.992622>,  <41.587505, 30.868914, 21.997562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.686146, 31.087650, 21.992622>,  <41.850548, 31.452209, 21.984388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686146, 31.087650, 21.992622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645116, -0.306731, -0.699815,
		0.644125, -0.274350, 0.714027,
		-0.411008, -0.911399, 0.020586,
		41.562843, 30.814230, 21.998798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317207, 30.922771, 21.875372>,  <41.850548, 31.452209, 21.984388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317207, 30.922771, 21.875372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.021076, 30.675644, 21.769384>,  <41.843395, 30.527367, 21.705791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.021076, 30.675644, 21.769384>,  <42.317207, 30.922771, 21.875372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021076, 30.675644, 21.769384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507413, -0.255025, -0.823101,
		0.440955, -0.743815, 0.502293,
		-0.740332, -0.617820, -0.264967,
		41.798977, 30.490297, 21.689894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660019, 30.263897, 21.774965>,  <42.317207, 30.922771, 21.875372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660019, 30.263897, 21.774965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.309135, 30.239412, 21.584486>,  <42.098606, 30.224722, 21.470200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.309135, 30.239412, 21.584486>,  <42.660019, 30.263897, 21.774965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309135, 30.239412, 21.584486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467309, -0.336410, -0.817588,
		-0.110149, -0.939724, 0.323707,
		-0.877206, -0.061214, -0.476197,
		42.045975, 30.221048, 21.441628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553596, 29.603094, 21.377142>,  <42.660019, 30.263897, 21.774965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553596, 29.603094, 21.377142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.312321, 29.855433, 21.181917>,  <42.167557, 30.006836, 21.064783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.312321, 29.855433, 21.181917>,  <42.553596, 29.603094, 21.377142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312321, 29.855433, 21.181917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384867, -0.305756, -0.870856,
		-0.698602, -0.713126, -0.058363,
		-0.603185, 0.630844, -0.488060,
		42.131367, 30.044685, 21.035500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324619, 29.249729, 20.824877>,  <42.553596, 29.603094, 21.377142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324619, 29.249729, 20.824877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259346, 29.629530, 20.717686>,  <42.220181, 29.857410, 20.653370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259346, 29.629530, 20.717686>,  <42.324619, 29.249729, 20.824877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259346, 29.629530, 20.717686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329391, -0.203600, -0.921980,
		-0.929984, -0.238726, -0.279533,
		-0.163188, 0.949503, -0.267979,
		42.210388, 29.914381, 20.637291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930756, 29.240919, 20.164881>,  <42.324619, 29.249729, 20.824877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930756, 29.240919, 20.164881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.081520, 29.608723, 20.209492>,  <42.171978, 29.829405, 20.236259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.081520, 29.608723, 20.209492>,  <41.930756, 29.240919, 20.164881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081520, 29.608723, 20.209492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420216, -0.062448, -0.905273,
		-0.825442, 0.388077, -0.409930,
		0.376915, 0.919509, 0.111529,
		42.194595, 29.884575, 20.242950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854198, 29.620483, 19.528915>,  <41.930756, 29.240919, 20.164881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854198, 29.620483, 19.528915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.165043, 29.774979, 19.727680>,  <42.351547, 29.867676, 19.846939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.165043, 29.774979, 19.727680>,  <41.854198, 29.620483, 19.528915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165043, 29.774979, 19.727680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454016, 0.202752, -0.867618,
		-0.435858, 0.899840, -0.017799,
		0.777108, 0.386239, 0.496912,
		42.398174, 29.890850, 19.876755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128918, 30.255648, 19.241470>,  <41.854198, 29.620483, 19.528915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128918, 30.255648, 19.241470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.432579, 30.058922, 19.412022>,  <42.614777, 29.940886, 19.514353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.432579, 30.058922, 19.412022>,  <42.128918, 30.255648, 19.241470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432579, 30.058922, 19.412022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500899, 0.023100, -0.865198,
		0.415668, 0.870393, 0.263887,
		0.759158, -0.491816, 0.426377,
		42.660328, 29.911377, 19.539934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.972679, 32.317635, 33.548439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366753, 32.299755, 33.614662>,  <34.603199, 32.289028, 33.654396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366753, 32.299755, 33.614662>,  <33.972679, 32.317635, 33.548439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366753, 32.299755, 33.614662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153894, -0.195492, -0.968555,
		0.075663, 0.979686, -0.185717,
		0.985186, -0.044703, 0.165560,
		34.662308, 32.286343, 33.664330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386627, 32.786427, 33.018120>,  <33.972679, 32.317635, 33.548439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386627, 32.786427, 33.018120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620571, 32.505516, 33.180477>,  <34.760937, 32.336971, 33.277893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.620571, 32.505516, 33.180477>,  <34.386627, 32.786427, 33.018120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620571, 32.505516, 33.180477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391568, -0.193788, -0.899511,
		0.710360, 0.685024, 0.161649,
		0.584861, -0.702274, 0.405893,
		34.796028, 32.294834, 33.302246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029018, 32.996410, 32.697372>,  <34.386627, 32.786427, 33.018120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029018, 32.996410, 32.697372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043804, 32.618629, 32.827999>,  <35.052677, 32.391960, 32.906376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.043804, 32.618629, 32.827999>,  <35.029018, 32.996410, 32.697372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043804, 32.618629, 32.827999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337213, -0.295835, -0.893739,
		0.940702, 0.143161, 0.307545,
		0.036967, -0.944450, 0.326568,
		35.054893, 32.335293, 32.925968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663486, 32.786152, 32.378414>,  <35.029018, 32.996410, 32.697372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663486, 32.786152, 32.378414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447971, 32.464817, 32.479893>,  <35.318661, 32.272018, 32.540779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.447971, 32.464817, 32.479893>,  <35.663486, 32.786152, 32.378414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447971, 32.464817, 32.479893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354013, -0.489162, -0.797117,
		0.764448, -0.339668, 0.547946,
		-0.538790, -0.803334, 0.253692,
		35.286335, 32.223816, 32.556000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274220, 32.251659, 32.257248>,  <35.663486, 32.786152, 32.378414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274220, 32.251659, 32.257248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919853, 32.069664, 32.221157>,  <35.707233, 31.960466, 32.199505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919853, 32.069664, 32.221157>,  <36.274220, 32.251659, 32.257248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919853, 32.069664, 32.221157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243925, -0.291536, -0.924936,
		0.394536, -0.841421, 0.369260,
		-0.885913, -0.454992, -0.090223,
		35.654079, 31.933167, 32.194092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529697, 31.710684, 32.050053>,  <36.274220, 32.251659, 32.257248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529697, 31.710684, 32.050053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137226, 31.703436, 31.973145>,  <35.901745, 31.699087, 31.927000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.137226, 31.703436, 31.973145>,  <36.529697, 31.710684, 32.050053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137226, 31.703436, 31.973145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186244, -0.352116, -0.917239,
		-0.051081, -0.935781, 0.348862,
		-0.981175, -0.018119, -0.192270,
		35.842873, 31.698000, 31.915464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316757, 30.919912, 31.917006>,  <36.529697, 31.710684, 32.050053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316757, 30.919912, 31.917006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066662, 31.181906, 31.747265>,  <35.916603, 31.339102, 31.645420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066662, 31.181906, 31.747265>,  <36.316757, 30.919912, 31.917006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066662, 31.181906, 31.747265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176525, -0.410957, -0.894401,
		-0.760207, -0.634123, 0.141326,
		-0.625239, 0.654982, -0.424351,
		35.879089, 31.378401, 31.619959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905071, 30.553223, 31.486185>,  <36.316757, 30.919912, 31.917006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905071, 30.553223, 31.486185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857182, 30.924505, 31.345276>,  <35.828445, 31.147276, 31.260731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857182, 30.924505, 31.345276>,  <35.905071, 30.553223, 31.486185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857182, 30.924505, 31.345276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236409, -0.317962, -0.918156,
		-0.964249, -0.193209, -0.181367,
		-0.119728, 0.928208, -0.352271,
		35.821262, 31.202969, 31.239595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445900, 30.541813, 30.936689>,  <35.905071, 30.553223, 31.486185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445900, 30.541813, 30.936689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649170, 30.878880, 30.865509>,  <35.771133, 31.081120, 30.822800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649170, 30.878880, 30.865509>,  <35.445900, 30.541813, 30.936689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649170, 30.878880, 30.865509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156279, -0.293412, -0.943126,
		-0.846956, 0.451463, -0.280797,
		0.508176, 0.842668, -0.177953,
		35.801624, 31.131680, 30.812122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180912, 30.837385, 30.226406>,  <35.445900, 30.541813, 30.936689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180912, 30.837385, 30.226406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539833, 31.001299, 30.292034>,  <35.755188, 31.099648, 30.331411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.539833, 31.001299, 30.292034>,  <35.180912, 30.837385, 30.226406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539833, 31.001299, 30.292034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239195, -0.139017, -0.960968,
		-0.370982, 0.901527, -0.222760,
		0.897306, 0.409785, 0.164068,
		35.809025, 31.124235, 30.341255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296642, 31.362741, 29.700550>,  <35.180912, 30.837385, 30.226406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296642, 31.362741, 29.700550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673126, 31.282604, 29.809359>,  <35.899017, 31.234522, 29.874643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673126, 31.282604, 29.809359>,  <35.296642, 31.362741, 29.700550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673126, 31.282604, 29.809359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225528, -0.226896, -0.947447,
		0.251533, 0.953091, -0.168373,
		0.941206, -0.200342, 0.272020,
		35.955486, 31.222502, 29.890965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836117, 31.837923, 29.326826>,  <35.296642, 31.362741, 29.700550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836117, 31.837923, 29.326826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994667, 31.482203, 29.418068>,  <36.089798, 31.268770, 29.472813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994667, 31.482203, 29.418068>,  <35.836117, 31.837923, 29.326826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994667, 31.482203, 29.418068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415244, -0.047932, -0.908446,
		0.818815, 0.454805, 0.350278,
		0.396377, -0.889300, 0.228103,
		36.113579, 31.215412, 29.486498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947544, 32.393822, 28.785610>,  <35.836117, 31.837923, 29.326826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947544, 32.393822, 28.785610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619476, 32.436501, 28.560778>,  <35.422634, 32.462109, 28.425879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619476, 32.436501, 28.560778>,  <35.947544, 32.393822, 28.785610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619476, 32.436501, 28.560778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540912, 0.175433, 0.822580,
		0.186371, 0.978693, -0.086174,
		-0.820171, 0.106692, -0.562082,
		35.373425, 32.468510, 28.392153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614574, 32.893444, 29.141838>,  <35.947544, 32.393822, 28.785610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614574, 32.893444, 29.141838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333878, 32.725681, 28.911480>,  <35.165459, 32.625023, 28.773266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.333878, 32.725681, 28.911480>,  <35.614574, 32.893444, 29.141838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333878, 32.725681, 28.911480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646702, 0.035870, 0.761899,
		-0.298890, 0.907089, -0.296404,
		-0.701742, -0.419409, -0.575894,
		35.123356, 32.599857, 28.738712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208103, 33.432030, 28.957479>,  <35.614574, 32.893444, 29.141838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208103, 33.432030, 28.957479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983196, 33.101566, 28.942993>,  <34.848251, 32.903286, 28.934301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.983196, 33.101566, 28.942993>,  <35.208103, 33.432030, 28.957479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983196, 33.101566, 28.942993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570808, 0.356050, 0.739869,
		-0.598357, 0.436677, -0.671775,
		-0.562269, -0.826161, -0.036214,
		34.814514, 32.853718, 28.932129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504974, 33.705158, 28.813385>,  <35.208103, 33.432030, 28.957479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504974, 33.705158, 28.813385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407223, 33.344467, 28.956026>,  <34.348572, 33.128052, 29.041611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407223, 33.344467, 28.956026>,  <34.504974, 33.705158, 28.813385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407223, 33.344467, 28.956026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620036, 0.428060, 0.657510,
		-0.745543, -0.060426, -0.663712,
		-0.244378, -0.901728, 0.356604,
		34.333908, 33.073948, 29.063007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734550, 33.578171, 28.717409>,  <34.504974, 33.705158, 28.813385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734550, 33.578171, 28.717409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866486, 33.340679, 29.010994>,  <33.945644, 33.198185, 29.187145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866486, 33.340679, 29.010994>,  <33.734550, 33.578171, 28.717409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866486, 33.340679, 29.010994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619094, 0.450906, 0.642967,
		-0.712694, -0.666463, -0.218849,
		0.329834, -0.593727, 0.733961,
		33.965435, 33.162560, 29.231182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263390, 33.740482, 29.250200>,  <33.734550, 33.578171, 28.717409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263390, 33.740482, 29.250200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478424, 33.489059, 29.475023>,  <33.607445, 33.338203, 29.609917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478424, 33.489059, 29.475023>,  <33.263390, 33.740482, 29.250200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478424, 33.489059, 29.475023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434750, 0.364522, 0.823478,
		-0.722488, -0.687048, -0.077303,
		0.537590, -0.628560, 0.562057,
		33.639702, 33.300491, 29.643641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849953, 33.559563, 29.792313>,  <33.263390, 33.740482, 29.250200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849953, 33.559563, 29.792313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213814, 33.481247, 29.938845>,  <33.432129, 33.434258, 30.026764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213814, 33.481247, 29.938845>,  <32.849953, 33.559563, 29.792313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213814, 33.481247, 29.938845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282077, 0.356210, 0.890813,
		-0.304901, -0.913664, 0.268800,
		0.909653, -0.195787, 0.366333,
		33.486710, 33.422512, 30.048744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777229, 33.156834, 30.388920>,  <32.849953, 33.559563, 29.792313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777229, 33.156834, 30.388920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143723, 33.312534, 30.426847>,  <33.363621, 33.405956, 30.449604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.143723, 33.312534, 30.426847>,  <32.777229, 33.156834, 30.388920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143723, 33.312534, 30.426847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278067, 0.447481, 0.849965,
		0.288422, -0.805136, 0.518237,
		0.916238, 0.389253, 0.094819,
		33.418594, 33.429310, 30.455294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986748, 32.981453, 31.066523>,  <32.777229, 33.156834, 30.388920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986748, 32.981453, 31.066523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188919, 33.301971, 30.938475>,  <33.310223, 33.494282, 30.861647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.188919, 33.301971, 30.938475>,  <32.986748, 32.981453, 31.066523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188919, 33.301971, 30.938475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244207, 0.488662, 0.837600,
		0.827593, -0.345167, 0.442663,
		0.505424, 0.801293, -0.320121,
		33.340546, 33.542358, 30.842438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279430, 33.232025, 31.658319>,  <32.986748, 32.981453, 31.066523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279430, 33.232025, 31.658319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289185, 33.546803, 31.411703>,  <33.295036, 33.735668, 31.263733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289185, 33.546803, 31.411703>,  <33.279430, 33.232025, 31.658319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289185, 33.546803, 31.411703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142525, 0.613163, 0.776992,
		0.989491, 0.068922, 0.127114,
		0.024389, 0.786944, -0.616542,
		33.296501, 33.782887, 31.226740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735390, 33.766594, 31.912924>,  <33.279430, 33.232025, 31.658319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735390, 33.766594, 31.912924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509132, 33.994942, 31.674879>,  <33.373379, 34.131950, 31.532053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509132, 33.994942, 31.674879>,  <33.735390, 33.766594, 31.912924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509132, 33.994942, 31.674879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126894, 0.652807, 0.746820,
		0.814827, 0.497951, -0.296818,
		-0.565645, 0.570865, -0.595112,
		33.339439, 34.166203, 31.496346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822483, 34.477253, 32.191879>,  <33.735390, 33.766594, 31.912924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822483, 34.477253, 32.191879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490467, 34.533714, 31.976061>,  <33.291256, 34.567593, 31.846571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490467, 34.533714, 31.976061>,  <33.822483, 34.477253, 32.191879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490467, 34.533714, 31.976061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349236, 0.622717, 0.700184,
		0.434819, 0.769609, -0.467582,
		-0.830040, 0.141157, -0.539545,
		33.241455, 34.576061, 31.814198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630566, 35.208057, 32.247536>,  <33.822483, 34.477253, 32.191879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630566, 35.208057, 32.247536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294479, 35.028194, 32.126308>,  <33.092827, 34.920277, 32.053574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294479, 35.028194, 32.126308>,  <33.630566, 35.208057, 32.247536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294479, 35.028194, 32.126308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535089, 0.596933, 0.597787,
		-0.087889, 0.664437, -0.742159,
		-0.840211, -0.449660, -0.303069,
		33.042416, 34.893295, 32.035389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158085, 35.761063, 31.932487>,  <33.630566, 35.208057, 32.247536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158085, 35.761063, 31.932487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935345, 35.450836, 32.051430>,  <32.801701, 35.264702, 32.122795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.935345, 35.450836, 32.051430>,  <33.158085, 35.761063, 31.932487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935345, 35.450836, 32.051430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567338, 0.616611, 0.545820,
		-0.606670, 0.135239, -0.783366,
		-0.556848, -0.775565, 0.297353,
		32.768291, 35.218166, 32.140636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480862, 35.993179, 31.940268>,  <33.158085, 35.761063, 31.932487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480862, 35.993179, 31.940268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515827, 35.694862, 32.204437>,  <32.536808, 35.515873, 32.362938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515827, 35.694862, 32.204437>,  <32.480862, 35.993179, 31.940268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515827, 35.694862, 32.204437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419818, 0.573633, 0.703347,
		-0.903389, -0.338739, -0.262952,
		0.087413, -0.745788, 0.660423,
		32.542049, 35.471127, 32.402565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911495, 35.861401, 31.262592>,  <32.480862, 35.993179, 31.940268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911495, 35.861401, 31.262592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063869, 36.211334, 31.382296>,  <33.155293, 36.421295, 31.454119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063869, 36.211334, 31.382296>,  <32.911495, 35.861401, 31.262592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063869, 36.211334, 31.382296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410321, 0.130095, -0.902614,
		-0.828570, 0.466627, -0.309405,
		0.380931, 0.874834, 0.299259,
		33.178150, 36.473785, 31.472073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834488, 36.310322, 30.688015>,  <32.911495, 35.861401, 31.262592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834488, 36.310322, 30.688015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134727, 36.477612, 30.892641>,  <33.314869, 36.577984, 31.015417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.134727, 36.477612, 30.892641>,  <32.834488, 36.310322, 30.688015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134727, 36.477612, 30.892641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438579, 0.263741, -0.859121,
		-0.494224, 0.869213, 0.014539,
		0.750594, 0.418221, 0.511566,
		33.359905, 36.603077, 31.046110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929356, 36.853928, 30.286135>,  <32.834488, 36.310322, 30.688015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929356, 36.853928, 30.286135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244770, 36.798912, 30.525900>,  <33.434017, 36.765903, 30.669758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244770, 36.798912, 30.525900>,  <32.929356, 36.853928, 30.286135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244770, 36.798912, 30.525900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596791, -0.064213, -0.799823,
		0.148499, 0.988412, 0.031450,
		0.788535, -0.137542, 0.599411,
		33.481331, 36.757648, 30.705723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362328, 37.326580, 30.130018>,  <32.929356, 36.853928, 30.286135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362328, 37.326580, 30.130018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632259, 37.104218, 30.324160>,  <33.794220, 36.970798, 30.440645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632259, 37.104218, 30.324160>,  <33.362328, 37.326580, 30.130018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632259, 37.104218, 30.324160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628039, 0.087262, -0.773274,
		0.387515, 0.826651, 0.408019,
		0.674832, -0.555907, 0.485354,
		33.834709, 36.937447, 30.469767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097504, 37.595158, 30.045439>,  <33.362328, 37.326580, 30.130018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097504, 37.595158, 30.045439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170258, 37.213596, 30.140928>,  <34.213909, 36.984661, 30.198223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170258, 37.213596, 30.140928>,  <34.097504, 37.595158, 30.045439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170258, 37.213596, 30.140928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765195, -0.015172, -0.643620,
		0.617572, 0.299735, 0.727162,
		0.181883, -0.953902, 0.238725,
		34.224823, 36.927425, 30.212545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772530, 37.525566, 29.996632>,  <34.097504, 37.595158, 30.045439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772530, 37.525566, 29.996632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671299, 37.139156, 30.017576>,  <34.610561, 36.907310, 30.030142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671299, 37.139156, 30.017576>,  <34.772530, 37.525566, 29.996632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671299, 37.139156, 30.017576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671732, -0.214413, -0.709086,
		0.696223, -0.144284, 0.703175,
		-0.253080, -0.966027, 0.052359,
		34.595375, 36.849350, 30.033283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454548, 37.074959, 30.052343>,  <34.772530, 37.525566, 29.996632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454548, 37.074959, 30.052343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160355, 36.837826, 29.921129>,  <34.983837, 36.695545, 29.842402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160355, 36.837826, 29.921129>,  <35.454548, 37.074959, 30.052343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160355, 36.837826, 29.921129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640795, -0.451359, -0.621013,
		0.220099, -0.666948, 0.711855,
		-0.735485, -0.592837, -0.328033,
		34.939709, 36.659973, 29.822720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696827, 36.391735, 30.172497>,  <35.454548, 37.074959, 30.052343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696827, 36.391735, 30.172497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429485, 36.422684, 29.876574>,  <35.269081, 36.441254, 29.699020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429485, 36.422684, 29.876574>,  <35.696827, 36.391735, 30.172497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429485, 36.422684, 29.876574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734625, -0.087436, -0.672816,
		-0.116747, -0.993160, 0.001594,
		-0.668353, 0.077378, -0.739808,
		35.228981, 36.445896, 29.654631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812599, 35.866756, 29.843718>,  <35.696827, 36.391735, 30.172497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812599, 35.866756, 29.843718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608543, 36.083237, 29.576326>,  <35.486111, 36.213123, 29.415892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608543, 36.083237, 29.576326>,  <35.812599, 35.866756, 29.843718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608543, 36.083237, 29.576326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683386, -0.216877, -0.697100,
		-0.522249, -0.812444, -0.259213,
		-0.510137, 0.541202, -0.668476,
		35.455502, 36.245598, 29.375784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897537, 35.535381, 29.185526>,  <35.812599, 35.866756, 29.843718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897537, 35.535381, 29.185526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769108, 35.895229, 29.067146>,  <35.692051, 36.111137, 28.996119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.769108, 35.895229, 29.067146>,  <35.897537, 35.535381, 29.185526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769108, 35.895229, 29.067146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589030, -0.055004, -0.806237,
		-0.741589, -0.433186, -0.512246,
		-0.321075, 0.899625, -0.295950,
		35.672787, 36.165115, 28.978361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779476, 35.467136, 28.450836>,  <35.897537, 35.535381, 29.185526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779476, 35.467136, 28.450836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828529, 35.853985, 28.539959>,  <35.857960, 36.086094, 28.593433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828529, 35.853985, 28.539959>,  <35.779476, 35.467136, 28.450836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828529, 35.853985, 28.539959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503688, 0.132792, -0.853618,
		-0.855138, 0.216904, -0.470842,
		0.122629, 0.967119, 0.222807,
		35.865318, 36.144119, 28.606802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562534, 35.812389, 27.768530>,  <35.779476, 35.467136, 28.450836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562534, 35.812389, 27.768530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770603, 36.065594, 27.997864>,  <35.895447, 36.217518, 28.135464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770603, 36.065594, 27.997864>,  <35.562534, 35.812389, 27.768530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770603, 36.065594, 27.997864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675718, 0.105519, -0.729569,
		-0.522326, 0.766914, -0.372851,
		0.520174, 0.633015, 0.573333,
		35.926655, 36.255497, 28.169865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724712, 36.452183, 27.411955>,  <35.562534, 35.812389, 27.768530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724712, 36.452183, 27.411955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.988323, 36.465656, 27.712500>,  <36.146488, 36.473740, 27.892826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.988323, 36.465656, 27.712500>,  <35.724712, 36.452183, 27.411955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988323, 36.465656, 27.712500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720269, 0.259367, -0.643383,
		-0.216553, 0.965191, 0.146667,
		0.659028, 0.033687, 0.751364,
		36.186031, 36.475761, 27.937908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133022, 37.080540, 27.292366>,  <35.724712, 36.452183, 27.411955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133022, 37.080540, 27.292366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329418, 36.813522, 27.516264>,  <36.447258, 36.653313, 27.650602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329418, 36.813522, 27.516264>,  <36.133022, 37.080540, 27.292366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329418, 36.813522, 27.516264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829156, 0.160975, -0.535339,
		0.267257, 0.726963, 0.632534,
		0.490993, -0.667542, 0.559744,
		36.476715, 36.613258, 27.684187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761948, 37.410137, 27.419338>,  <36.133022, 37.080540, 27.292366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761948, 37.410137, 27.419338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863350, 37.033058, 27.506102>,  <36.924191, 36.806808, 27.558159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863350, 37.033058, 27.506102>,  <36.761948, 37.410137, 27.419338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863350, 37.033058, 27.506102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828220, 0.095669, -0.552177,
		0.499787, 0.319628, 0.805016,
		0.253507, -0.942701, 0.216908,
		36.939404, 36.750248, 27.571175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415546, 37.352448, 27.725473>,  <36.761948, 37.410137, 27.419338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415546, 37.352448, 27.725473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344444, 36.982811, 27.590145>,  <37.301781, 36.761028, 27.508947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344444, 36.982811, 27.590145>,  <37.415546, 37.352448, 27.725473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344444, 36.982811, 27.590145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842375, 0.034842, -0.537764,
		0.508729, -0.380587, 0.772236,
		-0.177760, -0.924088, -0.338322,
		37.291115, 36.705585, 27.488647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078995, 37.065136, 27.794189>,  <37.415546, 37.352448, 27.725473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078995, 37.065136, 27.794189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.899738, 36.798595, 27.555811>,  <37.792187, 36.638672, 27.412785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.899738, 36.798595, 27.555811>,  <38.078995, 37.065136, 27.794189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899738, 36.798595, 27.555811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832736, -0.068689, -0.549393,
		0.325152, -0.742470, 0.585675,
		-0.448137, -0.666349, -0.595947,
		37.765297, 36.598690, 27.377028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591156, 36.532780, 27.673395>,  <38.078995, 37.065136, 27.794189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591156, 36.532780, 27.673395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.317802, 36.497158, 27.383551>,  <38.153790, 36.475784, 27.209644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.317802, 36.497158, 27.383551>,  <38.591156, 36.532780, 27.673395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317802, 36.497158, 27.383551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715824, -0.276809, -0.641071,
		-0.143487, -0.956789, 0.252914,
		-0.683379, -0.089057, -0.724612,
		38.112789, 36.470440, 27.166166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810394, 35.860241, 27.317877>,  <38.591156, 36.532780, 27.673395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810394, 35.860241, 27.317877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570595, 36.069942, 27.075964>,  <38.426716, 36.195763, 26.930817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.570595, 36.069942, 27.075964>,  <38.810394, 35.860241, 27.317877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570595, 36.069942, 27.075964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620896, -0.172206, -0.764744,
		-0.505068, -0.833968, -0.222271,
		-0.599496, 0.524255, -0.604783,
		38.390747, 36.227219, 26.894529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663132, 35.472607, 26.781864>,  <38.810394, 35.860241, 27.317877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663132, 35.472607, 26.781864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595169, 35.844517, 26.651236>,  <38.554390, 36.067661, 26.572859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595169, 35.844517, 26.651236>,  <38.663132, 35.472607, 26.781864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595169, 35.844517, 26.651236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483414, -0.210139, -0.849796,
		-0.858745, -0.302255, -0.413762,
		-0.169908, 0.929776, -0.326570,
		38.544197, 36.123451, 26.553265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480762, 35.425415, 26.112165>,  <38.663132, 35.472607, 26.781864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480762, 35.425415, 26.112165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.561852, 35.815552, 26.147055>,  <38.610504, 36.049633, 26.167988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.561852, 35.815552, 26.147055>,  <38.480762, 35.425415, 26.112165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561852, 35.815552, 26.147055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488479, -0.023526, -0.872258,
		-0.848699, 0.219438, -0.481204,
		0.202727, 0.975343, 0.087225,
		38.622669, 36.108154, 26.173222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428581, 35.734550, 25.485308>,  <38.480762, 35.425415, 26.112165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428581, 35.734550, 25.485308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.666321, 35.994057, 25.675404>,  <38.808964, 36.149761, 25.789461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.666321, 35.994057, 25.675404>,  <38.428581, 35.734550, 25.485308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666321, 35.994057, 25.675404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535713, 0.121347, -0.835636,
		-0.599802, 0.751250, -0.275430,
		0.594349, 0.648767, 0.475238,
		38.844624, 36.188686, 25.817974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551998, 36.348881, 25.105045>,  <38.428581, 35.734550, 25.485308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551998, 36.348881, 25.105045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863346, 36.347507, 25.356161>,  <39.050156, 36.346684, 25.506830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863346, 36.347507, 25.356161>,  <38.551998, 36.348881, 25.105045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863346, 36.347507, 25.356161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627799, 0.001641, -0.778374,
		0.001641, 0.999993, 0.003433,
		0.778374, -0.003433, 0.627792,
		39.096859, 36.346478, 25.544498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071930, 36.703922, 24.785992>,  <38.551998, 36.348881, 25.105045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071930, 36.703922, 24.785992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.312080, 36.573776, 25.078207>,  <39.456173, 36.495689, 25.253536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.312080, 36.573776, 25.078207>,  <39.071930, 36.703922, 24.785992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312080, 36.573776, 25.078207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799099, 0.279909, -0.532064,
		-0.031370, 0.903211, 0.428048,
		0.600381, -0.325362, 0.730536,
		39.492195, 36.476170, 25.297367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567039, 37.170261, 24.718094>,  <39.071930, 36.703922, 24.785992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567039, 37.170261, 24.718094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.713879, 36.859161, 24.922190>,  <39.801983, 36.672501, 25.044647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.713879, 36.859161, 24.922190>,  <39.567039, 37.170261, 24.718094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713879, 36.859161, 24.922190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856864, 0.069286, -0.510866,
		0.361974, 0.624743, 0.691860,
		0.367096, -0.777750, 0.510241,
		39.824009, 36.625835, 25.075262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270130, 37.414177, 25.034065>,  <39.567039, 37.170261, 24.718094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270130, 37.414177, 25.034065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.272507, 37.014778, 25.012299>,  <40.273933, 36.775139, 24.999239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.272507, 37.014778, 25.012299>,  <40.270130, 37.414177, 25.034065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272507, 37.014778, 25.012299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800228, 0.037381, -0.598530,
		0.599667, -0.039989, 0.799250,
		0.005943, -0.998501, -0.054416,
		40.274288, 36.715229, 24.995974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959366, 37.112724, 25.056475>,  <40.270130, 37.414177, 25.034065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959366, 37.112724, 25.056475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.732006, 36.837887, 24.875446>,  <40.595589, 36.672985, 24.766830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.732006, 36.837887, 24.875446>,  <40.959366, 37.112724, 25.056475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732006, 36.837887, 24.875446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607940, 0.019891, -0.793734,
		0.554374, -0.726294, 0.406408,
		-0.568400, -0.687097, -0.452570,
		40.561485, 36.631760, 24.739676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338585, 37.029293, 25.705984>,  <40.959366, 37.112724, 25.056475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338585, 37.029293, 25.705984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.579456, 37.035900, 26.025261>,  <41.723980, 37.039864, 26.216827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.579456, 37.035900, 26.025261>,  <41.338585, 37.029293, 25.705984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579456, 37.035900, 26.025261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725513, 0.428575, 0.538474,
		-0.333191, -0.903355, 0.270060,
		0.602174, 0.016518, 0.798194,
		41.760109, 37.040855, 26.264719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989933, 36.605469, 26.255445>,  <41.338585, 37.029293, 25.705984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989933, 36.605469, 26.255445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.250011, 36.845928, 26.441288>,  <41.406059, 36.990204, 26.552794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.250011, 36.845928, 26.441288>,  <40.989933, 36.605469, 26.255445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250011, 36.845928, 26.441288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753300, 0.430477, 0.497221,
		0.098904, -0.673279, 0.732744,
		0.650198, 0.601152, 0.464605,
		41.445072, 37.026276, 26.580669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806183, 36.459732, 26.865250>,  <40.989933, 36.605469, 26.255445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806183, 36.459732, 26.865250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.013988, 36.801373, 26.875221>,  <41.138672, 37.006355, 26.881205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.013988, 36.801373, 26.875221>,  <40.806183, 36.459732, 26.865250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013988, 36.801373, 26.875221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724868, 0.425081, 0.542099,
		0.452411, -0.299695, 0.839945,
		0.519509, 0.854101, 0.024928,
		41.169842, 37.057602, 26.882700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082123, 36.553360, 27.616474>,  <40.806183, 36.459732, 26.865250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082123, 36.553360, 27.616474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.049889, 36.905457, 27.429422>,  <41.030548, 37.116714, 27.317192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.049889, 36.905457, 27.429422>,  <41.082123, 36.553360, 27.616474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049889, 36.905457, 27.429422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732413, 0.265923, 0.626782,
		0.676074, 0.393011, 0.623270,
		-0.080590, 0.880243, -0.467630,
		41.025711, 37.169529, 27.289133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065842, 37.009670, 28.125166>,  <41.082123, 36.553360, 27.616474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065842, 37.009670, 28.125166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905369, 37.225777, 27.829285>,  <40.809086, 37.355442, 27.651756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905369, 37.225777, 27.829285>,  <41.065842, 37.009670, 28.125166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905369, 37.225777, 27.829285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739171, 0.285998, 0.609780,
		0.540999, 0.791400, 0.284614,
		-0.401181, 0.540269, -0.739704,
		40.785015, 37.387856, 27.607374>
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
