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
	<24.488991, 34.939659, 34.880131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299269, 35.072361, 35.206314>,  <24.185434, 35.151981, 35.402023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299269, 35.072361, 35.206314>,  <24.488991, 34.939659, 34.880131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299269, 35.072361, 35.206314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792618, -0.242193, 0.559553,
		0.383132, 0.911747, -0.148081,
		-0.474306, 0.331754, 0.815459,
		24.156977, 35.171886, 35.450951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055416, 35.297554, 35.294693>,  <24.488991, 34.939659, 34.880131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055416, 35.297554, 35.294693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765287, 35.170006, 35.538734>,  <24.591211, 35.093475, 35.685162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765287, 35.170006, 35.538734>,  <25.055416, 35.297554, 35.294693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765287, 35.170006, 35.538734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687682, -0.376392, 0.620824,
		0.031675, 0.869856, 0.492288,
		-0.725320, -0.318873, 0.610107,
		24.547691, 35.074345, 35.721767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084679, 35.450211, 35.968582>,  <25.055416, 35.297554, 35.294693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084679, 35.450211, 35.968582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221117, 35.514198, 36.339108>,  <25.302980, 35.552589, 36.561424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221117, 35.514198, 36.339108>,  <25.084679, 35.450211, 35.968582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221117, 35.514198, 36.339108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940028, -0.058938, -0.335966,
		0.000851, 0.985361, -0.170480,
		0.341095, 0.159970, 0.926317,
		25.323446, 35.562191, 36.617004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579992, 36.018162, 35.790871>,  <25.084679, 35.450211, 35.968582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579992, 36.018162, 35.790871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643425, 35.775967, 36.102829>,  <25.681484, 35.630650, 36.290005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643425, 35.775967, 36.102829>,  <25.579992, 36.018162, 35.790871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643425, 35.775967, 36.102829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894861, -0.245646, -0.372669,
		0.417225, 0.756996, 0.502872,
		0.158580, -0.605487, 0.779896,
		25.691000, 35.594322, 36.336800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089907, 36.213272, 36.340858>,  <25.579992, 36.018162, 35.790871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089907, 36.213272, 36.340858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058783, 35.838154, 36.205513>,  <26.040108, 35.613083, 36.124306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058783, 35.838154, 36.205513>,  <26.089907, 36.213272, 36.340858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058783, 35.838154, 36.205513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718407, 0.182576, -0.671235,
		0.691257, -0.295310, 0.659511,
		-0.077811, -0.937794, -0.338360,
		26.035439, 35.556816, 36.104004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865749, 36.805706, 36.705902>,  <26.089907, 36.213272, 36.340858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865749, 36.805706, 36.705902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145853, 37.021610, 36.519012>,  <26.313915, 37.151154, 36.406879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145853, 37.021610, 36.519012>,  <25.865749, 36.805706, 36.705902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145853, 37.021610, 36.519012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422520, 0.214172, 0.880686,
		0.575424, -0.814120, -0.078082,
		0.700260, 0.539759, -0.467221,
		26.355932, 37.183537, 36.378845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548595, 36.575352, 36.892025>,  <25.865749, 36.805706, 36.705902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548595, 36.575352, 36.892025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559946, 36.962723, 36.792957>,  <26.566757, 37.195145, 36.733517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559946, 36.962723, 36.792957>,  <26.548595, 36.575352, 36.892025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559946, 36.962723, 36.792957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233515, 0.234494, 0.943654,
		0.971939, -0.084614, -0.219488,
		0.028378, 0.968428, -0.247672,
		26.568459, 37.253250, 36.718655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064095, 36.891472, 37.364391>,  <26.548595, 36.575352, 36.892025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064095, 36.891472, 37.364391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889074, 37.214447, 37.206104>,  <26.784063, 37.408234, 37.111134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889074, 37.214447, 37.206104>,  <27.064095, 36.891472, 37.364391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889074, 37.214447, 37.206104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159677, 0.502855, 0.849494,
		0.884904, 0.308508, -0.348953,
		-0.437548, 0.807440, -0.395717,
		26.757811, 37.456680, 37.087391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404207, 37.386639, 37.677017>,  <27.064095, 36.891472, 37.364391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404207, 37.386639, 37.677017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066090, 37.557419, 37.548523>,  <26.863218, 37.659885, 37.471428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066090, 37.557419, 37.548523>,  <27.404207, 37.386639, 37.677017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066090, 37.557419, 37.548523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037391, 0.552481, 0.832686,
		0.532988, 0.715878, -0.451046,
		-0.845296, 0.426947, -0.321234,
		26.812500, 37.685501, 37.452152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531364, 37.999405, 37.815128>,  <27.404207, 37.386639, 37.677017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531364, 37.999405, 37.815128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132332, 37.983620, 37.792244>,  <26.892912, 37.974148, 37.778515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132332, 37.983620, 37.792244>,  <27.531364, 37.999405, 37.815128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132332, 37.983620, 37.792244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068811, 0.445337, 0.892715,
		-0.009752, 0.894493, -0.446976,
		-0.997582, -0.039463, -0.057208,
		26.833057, 37.971783, 37.775082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307100, 38.632957, 38.086906>,  <27.531364, 37.999405, 37.815128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307100, 38.632957, 38.086906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993401, 38.385792, 38.109322>,  <26.805182, 38.237495, 38.122772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993401, 38.385792, 38.109322>,  <27.307100, 38.632957, 38.086906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993401, 38.385792, 38.109322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175149, 0.307128, 0.935412,
		-0.595210, 0.723782, -0.349091,
		-0.784250, -0.617909, 0.056036,
		26.758125, 38.200420, 38.126133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821251, 39.035625, 38.223774>,  <27.307100, 38.632957, 38.086906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821251, 39.035625, 38.223774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684273, 38.688328, 38.367374>,  <26.602085, 38.479950, 38.453537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684273, 38.688328, 38.367374>,  <26.821251, 39.035625, 38.223774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684273, 38.688328, 38.367374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121985, 0.419959, 0.899307,
		-0.931585, 0.264171, -0.249726,
		-0.342446, -0.868244, 0.359003,
		26.581539, 38.427856, 38.475075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351477, 39.211693, 38.783607>,  <26.821251, 39.035625, 38.223774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351477, 39.211693, 38.783607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438324, 38.836170, 38.890564>,  <26.490433, 38.610855, 38.954739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438324, 38.836170, 38.890564>,  <26.351477, 39.211693, 38.783607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438324, 38.836170, 38.890564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326424, 0.188333, 0.926271,
		-0.919950, -0.288393, -0.265560,
		0.217117, -0.938808, 0.267395,
		26.503458, 38.554527, 38.970783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762522, 39.095627, 39.185463>,  <26.351477, 39.211693, 38.783607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762522, 39.095627, 39.185463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036228, 38.828087, 39.301682>,  <26.200451, 38.667561, 39.371414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036228, 38.828087, 39.301682>,  <25.762522, 39.095627, 39.185463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036228, 38.828087, 39.301682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123795, 0.286103, 0.950168,
		-0.718649, -0.686135, 0.112970,
		0.684265, -0.668853, 0.290548,
		26.241508, 38.627430, 39.388847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481817, 38.668583, 39.791874>,  <25.762522, 39.095627, 39.185463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481817, 38.668583, 39.791874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878845, 38.621944, 39.805798>,  <26.117062, 38.593960, 39.814152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878845, 38.621944, 39.805798>,  <25.481817, 38.668583, 39.791874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878845, 38.621944, 39.805798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022255, 0.107306, 0.993977,
		-0.119635, -0.987365, 0.103914,
		0.992569, -0.116602, 0.034811,
		26.176617, 38.586964, 39.816242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558342, 38.297371, 40.323639>,  <25.481817, 38.668583, 39.791874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558342, 38.297371, 40.323639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930681, 38.431232, 40.264946>,  <26.154085, 38.511551, 40.229733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930681, 38.431232, 40.264946>,  <25.558342, 38.297371, 40.323639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930681, 38.431232, 40.264946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114425, 0.114393, 0.986824,
		0.347034, -0.935371, 0.068189,
		0.930846, 0.334658, -0.146728,
		26.209934, 38.531631, 40.220928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844284, 38.064575, 40.961155>,  <25.558342, 38.297371, 40.323639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844284, 38.064575, 40.961155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126617, 38.312584, 40.824116>,  <26.296019, 38.461388, 40.741894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126617, 38.312584, 40.824116>,  <25.844284, 38.064575, 40.961155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126617, 38.312584, 40.824116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178368, 0.312492, 0.933024,
		0.685553, -0.719669, 0.109976,
		0.705835, 0.620021, -0.342596,
		26.338367, 38.498589, 40.721336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438818, 38.138401, 41.459412>,  <25.844284, 38.064575, 40.961155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438818, 38.138401, 41.459412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440813, 38.461575, 41.223709>,  <26.442009, 38.655479, 41.082287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440813, 38.461575, 41.223709>,  <26.438818, 38.138401, 41.459412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440813, 38.461575, 41.223709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002663, 0.589273, 0.807930,
		0.999984, -0.002459, 0.005090,
		0.004986, 0.807930, -0.589257,
		26.442308, 38.703953, 41.046932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072479, 38.565517, 41.556244>,  <26.438818, 38.138401, 41.459412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072479, 38.565517, 41.556244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780153, 38.806599, 41.428082>,  <26.604757, 38.951248, 41.351185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780153, 38.806599, 41.428082>,  <27.072479, 38.565517, 41.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780153, 38.806599, 41.428082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056914, 0.521580, 0.851302,
		0.680201, 0.603907, -0.415479,
		-0.730813, 0.602703, -0.320409,
		26.560909, 38.987411, 41.331959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318758, 39.321091, 41.496059>,  <27.072479, 38.565517, 41.556244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318758, 39.321091, 41.496059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919481, 39.345142, 41.496647>,  <26.679916, 39.359573, 41.496998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919481, 39.345142, 41.496647>,  <27.318758, 39.321091, 41.496059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919481, 39.345142, 41.496647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036370, 0.583999, 0.810940,
		0.047904, 0.809525, -0.585128,
		-0.998190, 0.060128, 0.001467,
		26.620024, 39.363182, 41.497086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163000, 40.064297, 41.585934>,  <27.318758, 39.321091, 41.496059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163000, 40.064297, 41.585934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813543, 39.890408, 41.673351>,  <26.603868, 39.786072, 41.725803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813543, 39.890408, 41.673351>,  <27.163000, 40.064297, 41.585934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813543, 39.890408, 41.673351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106142, 0.608611, 0.786338,
		-0.474851, 0.663781, -0.577851,
		-0.873642, -0.434727, 0.218545,
		26.551451, 39.759991, 41.738914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665119, 40.549385, 41.520660>,  <27.163000, 40.064297, 41.585934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665119, 40.549385, 41.520660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501225, 40.283470, 41.770515>,  <26.402887, 40.123920, 41.920429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.501225, 40.283470, 41.770515>,  <26.665119, 40.549385, 41.520660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501225, 40.283470, 41.770515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069285, 0.705456, 0.705359,
		-0.909570, 0.245732, -0.335110,
		-0.409735, -0.664791, 0.624636,
		26.378304, 40.084034, 41.957905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106676, 40.977108, 41.791252>,  <26.665119, 40.549385, 41.520660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106676, 40.977108, 41.791252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165030, 40.674835, 42.046646>,  <26.200041, 40.493473, 42.199883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165030, 40.674835, 42.046646>,  <26.106676, 40.977108, 41.791252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165030, 40.674835, 42.046646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128419, 0.625467, 0.769610,
		-0.980931, -0.194267, -0.005798,
		0.145883, -0.755679, 0.638488,
		26.208794, 40.448132, 42.238194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562960, 41.019756, 42.267616>,  <26.106676, 40.977108, 41.791252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562960, 41.019756, 42.267616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832748, 40.787125, 42.449543>,  <25.994621, 40.647545, 42.558701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832748, 40.787125, 42.449543>,  <25.562960, 41.019756, 42.267616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832748, 40.787125, 42.449543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217332, 0.432341, 0.875127,
		-0.705589, -0.689094, 0.165207,
		0.674471, -0.581575, 0.454818,
		26.035089, 40.612652, 42.585987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380810, 41.064232, 42.890079>,  <25.562960, 41.019756, 42.267616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380810, 41.064232, 42.890079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742479, 40.905983, 42.954510>,  <25.959482, 40.811031, 42.993168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742479, 40.905983, 42.954510>,  <25.380810, 41.064232, 42.890079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742479, 40.905983, 42.954510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045672, 0.464463, 0.884414,
		-0.424711, -0.792309, 0.438025,
		0.904176, -0.395626, 0.161076,
		26.013733, 40.787296, 43.002834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390615, 40.679527, 43.473038>,  <25.380810, 41.064232, 42.890079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390615, 40.679527, 43.473038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752752, 40.843010, 43.426891>,  <25.970036, 40.941101, 43.399204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752752, 40.843010, 43.426891>,  <25.390615, 40.679527, 43.473038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752752, 40.843010, 43.426891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113066, 0.493814, 0.862186,
		0.409348, -0.767532, 0.493283,
		0.905345, 0.408707, -0.115360,
		26.024355, 40.965622, 43.392284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936546, 40.496262, 44.017906>,  <25.390615, 40.679527, 43.473038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936546, 40.496262, 44.017906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951324, 40.859783, 43.851673>,  <25.960192, 41.077896, 43.751934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951324, 40.859783, 43.851673>,  <25.936546, 40.496262, 44.017906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951324, 40.859783, 43.851673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210331, 0.413619, 0.885822,
		0.976932, 0.054682, 0.206431,
		0.036945, 0.908807, -0.415578,
		25.962408, 41.132423, 43.727001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524479, 40.989677, 44.269608>,  <25.936546, 40.496262, 44.017906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524479, 40.989677, 44.269608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217041, 41.207302, 44.134991>,  <26.032578, 41.337875, 44.054222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217041, 41.207302, 44.134991>,  <26.524479, 40.989677, 44.269608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217041, 41.207302, 44.134991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009673, 0.516114, 0.856465,
		0.639663, 0.661530, -0.391420,
		-0.768595, 0.544062, -0.336538,
		25.986462, 41.370522, 44.034031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605690, 41.684223, 44.630131>,  <26.524479, 40.989677, 44.269608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605690, 41.684223, 44.630131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252327, 41.703701, 44.443703>,  <26.040310, 41.715389, 44.331844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252327, 41.703701, 44.443703>,  <26.605690, 41.684223, 44.630131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252327, 41.703701, 44.443703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348842, 0.595753, 0.723455,
		0.312893, 0.801690, -0.509305,
		-0.883407, 0.048697, -0.466070,
		25.987305, 41.718311, 44.303883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441587, 42.391491, 44.361290>,  <26.605690, 41.684223, 44.630131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441587, 42.391491, 44.361290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125572, 42.175911, 44.478165>,  <25.935963, 42.046562, 44.548290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125572, 42.175911, 44.478165>,  <26.441587, 42.391491, 44.361290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125572, 42.175911, 44.478165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167626, 0.648355, 0.742655,
		-0.589695, 0.537748, -0.602567,
		-0.790039, -0.538946, 0.292191,
		25.888561, 42.014229, 44.565823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850943, 42.722576, 44.517040>,  <26.441587, 42.391491, 44.361290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850943, 42.722576, 44.517040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898941, 42.407822, 44.759167>,  <25.927740, 42.218967, 44.904442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898941, 42.407822, 44.759167>,  <25.850943, 42.722576, 44.517040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898941, 42.407822, 44.759167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128290, 0.592316, 0.795427,
		-0.984450, -0.173104, -0.029875,
		0.119996, -0.786891, 0.605313,
		25.934940, 42.171753, 44.940762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959425, 43.473221, 44.198994>,  <25.850943, 42.722576, 44.517040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959425, 43.473221, 44.198994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174042, 43.806545, 44.252232>,  <26.302811, 44.006542, 44.284172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174042, 43.806545, 44.252232>,  <25.959425, 43.473221, 44.198994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174042, 43.806545, 44.252232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658472, -0.314783, -0.683613,
		-0.527769, 0.454423, -0.717607,
		0.536540, 0.833314, 0.133092,
		26.335003, 44.056538, 44.292160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990585, 43.755550, 43.528664>,  <25.959425, 43.473221, 44.198994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990585, 43.755550, 43.528664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293970, 43.816486, 43.782127>,  <26.476000, 43.853050, 43.934208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293970, 43.816486, 43.782127>,  <25.990585, 43.755550, 43.528664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293970, 43.816486, 43.782127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645459, -0.310035, -0.698041,
		0.090116, 0.938440, -0.333481,
		0.758460, 0.152344, 0.633664,
		26.521507, 43.862190, 43.972225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432507, 44.276428, 43.218758>,  <25.990585, 43.755550, 43.528664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432507, 44.276428, 43.218758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599564, 43.999485, 43.454117>,  <26.699799, 43.833321, 43.595333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599564, 43.999485, 43.454117>,  <26.432507, 44.276428, 43.218758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599564, 43.999485, 43.454117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589560, -0.286257, -0.755299,
		0.691371, 0.662342, 0.288633,
		0.417643, -0.692358, 0.588400,
		26.724857, 43.791779, 43.630638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180304, 44.252449, 43.166401>,  <26.432507, 44.276428, 43.218758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180304, 44.252449, 43.166401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045410, 43.893421, 43.279987>,  <26.964474, 43.678005, 43.348137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045410, 43.893421, 43.279987>,  <27.180304, 44.252449, 43.166401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045410, 43.893421, 43.279987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497359, -0.425967, -0.755768,
		0.799317, -0.113638, 0.590067,
		-0.337233, -0.897573, 0.283964,
		26.944241, 43.624149, 43.365177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684671, 43.868206, 43.126957>,  <27.180304, 44.252449, 43.166401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684671, 43.868206, 43.126957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365377, 43.637108, 43.058796>,  <27.173801, 43.498451, 43.017899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365377, 43.637108, 43.058796>,  <27.684671, 43.868206, 43.126957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365377, 43.637108, 43.058796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426504, -0.342349, -0.837193,
		0.425346, -0.740951, 0.519684,
		-0.798233, -0.577744, -0.170402,
		27.125908, 43.463783, 43.007675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903910, 43.210339, 43.031689>,  <27.684671, 43.868206, 43.126957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903910, 43.210339, 43.031689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553614, 43.223049, 42.838993>,  <27.343435, 43.230675, 42.723377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553614, 43.223049, 42.838993>,  <27.903910, 43.210339, 43.031689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553614, 43.223049, 42.838993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432068, -0.393611, -0.811411,
		-0.215396, -0.918728, 0.330974,
		-0.875741, 0.031772, -0.481735,
		27.290892, 43.232582, 42.694473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921522, 42.478107, 42.686077>,  <27.903910, 43.210339, 43.031689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921522, 42.478107, 42.686077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639847, 42.706295, 42.516991>,  <27.470842, 42.843208, 42.415539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639847, 42.706295, 42.516991>,  <27.921522, 42.478107, 42.686077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639847, 42.706295, 42.516991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230255, -0.379704, -0.895995,
		-0.671642, -0.728281, 0.136030,
		-0.704187, 0.570467, -0.422716,
		27.428591, 42.877434, 42.390175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557961, 41.991993, 42.253376>,  <27.921522, 42.478107, 42.686077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557961, 41.991993, 42.253376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482069, 42.354683, 42.102726>,  <27.436535, 42.572296, 42.012337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482069, 42.354683, 42.102726>,  <27.557961, 41.991993, 42.253376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482069, 42.354683, 42.102726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312770, -0.307793, -0.898576,
		-0.930687, -0.288282, -0.225201,
		-0.189728, 0.906729, -0.376625,
		27.425150, 42.626701, 41.989738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228706, 41.791973, 41.733978>,  <27.557961, 41.991993, 42.253376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228706, 41.791973, 41.733978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342020, 42.163456, 41.638268>,  <27.410009, 42.386345, 41.580841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342020, 42.163456, 41.638268>,  <27.228706, 41.791973, 41.733978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342020, 42.163456, 41.638268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080428, -0.271626, -0.959036,
		-0.955657, 0.252436, -0.151642,
		0.283286, 0.928706, -0.239279,
		27.427006, 42.442066, 41.566483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830973, 42.082474, 41.176281>,  <27.228706, 41.791973, 41.733978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830973, 42.082474, 41.176281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176449, 42.283897, 41.167694>,  <27.383736, 42.404751, 41.162544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176449, 42.283897, 41.167694>,  <26.830973, 42.082474, 41.176281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176449, 42.283897, 41.167694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087722, -0.192118, -0.977443,
		-0.496327, 0.842327, -0.210104,
		0.863692, 0.503562, -0.021463,
		27.435556, 42.434967, 41.161255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840984, 42.270752, 40.506390>,  <26.830973, 42.082474, 41.176281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840984, 42.270752, 40.506390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223867, 42.339733, 40.599354>,  <27.453596, 42.381123, 40.655132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223867, 42.339733, 40.599354>,  <26.840984, 42.270752, 40.506390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223867, 42.339733, 40.599354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279108, -0.337785, -0.898888,
		-0.076513, 0.925289, -0.371463,
		0.957206, 0.172455, 0.232411,
		27.511030, 42.391468, 40.669079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156908, 42.588005, 39.928375>,  <26.840984, 42.270752, 40.506390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156908, 42.588005, 39.928375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452805, 42.407948, 40.128437>,  <27.630342, 42.299911, 40.248474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452805, 42.407948, 40.128437>,  <27.156908, 42.588005, 39.928375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452805, 42.407948, 40.128437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277055, -0.473609, -0.836024,
		0.613209, 0.757010, -0.225632,
		0.739739, -0.450145, 0.500155,
		27.674726, 42.272903, 40.278484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620146, 42.496750, 39.449749>,  <27.156908, 42.588005, 39.928375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620146, 42.496750, 39.449749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771978, 42.260048, 39.734211>,  <27.863077, 42.118027, 39.904888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771978, 42.260048, 39.734211>,  <27.620146, 42.496750, 39.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771978, 42.260048, 39.734211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365513, -0.610231, -0.702864,
		0.849894, 0.526731, -0.015338,
		0.379580, -0.591754, 0.711159,
		27.885853, 42.082523, 39.947559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337420, 42.418163, 39.274563>,  <27.620146, 42.496750, 39.449749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337420, 42.418163, 39.274563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215288, 42.104671, 39.490913>,  <28.142010, 41.916576, 39.620724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215288, 42.104671, 39.490913>,  <28.337420, 42.418163, 39.274563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215288, 42.104671, 39.490913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345666, -0.620476, -0.703934,
		0.887293, -0.027968, 0.460357,
		-0.305329, -0.783726, 0.540877,
		28.123690, 41.869553, 39.653175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779755, 42.044971, 39.008854>,  <28.337420, 42.418163, 39.274563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779755, 42.044971, 39.008854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499399, 41.833942, 39.200863>,  <28.331186, 41.707325, 39.316067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499399, 41.833942, 39.200863>,  <28.779755, 42.044971, 39.008854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499399, 41.833942, 39.200863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068902, -0.719915, -0.690633,
		0.709937, -0.450982, 0.540930,
		-0.700887, -0.527577, 0.480021,
		28.289133, 41.675671, 39.344868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145458, 41.412952, 39.215858>,  <28.779755, 42.044971, 39.008854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145458, 41.412952, 39.215858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750406, 41.396896, 39.155224>,  <28.513376, 41.387260, 39.118843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750406, 41.396896, 39.155224>,  <29.145458, 41.412952, 39.215858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750406, 41.396896, 39.155224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136515, -0.695758, -0.705184,
		-0.077160, -0.717153, 0.692630,
		-0.987628, -0.040142, -0.151587,
		28.454117, 41.384853, 39.109749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180824, 40.762989, 38.917999>,  <29.145458, 41.412952, 39.215858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180824, 40.762989, 38.917999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798992, 40.871986, 38.869797>,  <28.569893, 40.937386, 38.840878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798992, 40.871986, 38.869797>,  <29.180824, 40.762989, 38.917999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798992, 40.871986, 38.869797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042161, -0.523912, -0.850728,
		-0.294949, -0.807010, 0.511606,
		-0.954582, 0.272491, -0.120503,
		28.512617, 40.953735, 38.833645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867252, 40.119938, 39.001431>,  <29.180824, 40.762989, 38.917999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867252, 40.119938, 39.001431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640308, 40.371258, 38.788513>,  <28.504141, 40.522049, 38.660763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640308, 40.371258, 38.788513>,  <28.867252, 40.119938, 39.001431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640308, 40.371258, 38.788513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065277, -0.610053, -0.789667,
		-0.820877, -0.482774, 0.305108,
		-0.567363, 0.628303, -0.532292,
		28.470100, 40.559750, 38.628826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455048, 39.677319, 38.699783>,  <28.867252, 40.119938, 39.001431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455048, 39.677319, 38.699783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424744, 40.011211, 38.481613>,  <28.406561, 40.211548, 38.350712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424744, 40.011211, 38.481613>,  <28.455048, 39.677319, 38.699783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424744, 40.011211, 38.481613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070353, -0.541157, -0.837973,
		-0.994641, -0.101857, -0.017728,
		-0.075760, 0.834730, -0.545423,
		28.402016, 40.261631, 38.317986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898479, 39.523621, 38.204674>,  <28.455048, 39.677319, 38.699783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898479, 39.523621, 38.204674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113392, 39.828362, 38.059948>,  <28.242340, 40.011208, 37.973114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113392, 39.828362, 38.059948>,  <27.898479, 39.523621, 38.204674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113392, 39.828362, 38.059948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195772, -0.529931, -0.825134,
		-0.820367, 0.372496, -0.433872,
		0.537282, 0.761852, -0.361814,
		28.274576, 40.056919, 37.951405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.652599, 39.580704, 37.593201>,  <27.898479, 39.523621, 38.204674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.652599, 39.580704, 37.593201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999037, 39.767178, 37.521034>,  <28.206900, 39.879063, 37.477734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999037, 39.767178, 37.521034>,  <27.652599, 39.580704, 37.593201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999037, 39.767178, 37.521034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001660, -0.358237, -0.933629,
		-0.499878, 0.808910, -0.309493,
		0.866094, 0.466187, -0.180418,
		28.258865, 39.907032, 37.466908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470856, 39.836109, 36.944149>,  <27.652599, 39.580704, 37.593201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470856, 39.836109, 36.944149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867441, 39.837982, 36.996265>,  <28.105392, 39.839104, 37.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867441, 39.837982, 36.996265>,  <27.470856, 39.836109, 36.944149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867441, 39.837982, 36.996265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116317, -0.483185, -0.867757,
		0.058896, 0.875506, -0.479605,
		0.991464, 0.004679, 0.130294,
		28.164881, 39.839386, 37.035355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789732, 40.182869, 36.288166>,  <27.470856, 39.836109, 36.944149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789732, 40.182869, 36.288166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077459, 39.966171, 36.462109>,  <28.250095, 39.836151, 36.566475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077459, 39.966171, 36.462109>,  <27.789732, 40.182869, 36.288166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077459, 39.966171, 36.462109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317955, -0.299812, -0.899454,
		0.617647, 0.785256, -0.043410,
		0.719317, -0.541743, 0.434854,
		28.293255, 39.803650, 36.592564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309675, 40.251266, 35.807270>,  <27.789732, 40.182869, 36.288166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309675, 40.251266, 35.807270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392895, 39.920094, 36.015594>,  <28.442827, 39.721390, 36.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392895, 39.920094, 36.015594>,  <28.309675, 40.251266, 35.807270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392895, 39.920094, 36.015594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181175, -0.490626, -0.852327,
		0.961192, 0.271685, 0.047925,
		0.208051, -0.827933, 0.520808,
		28.455311, 39.671715, 36.171837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972328, 39.951115, 35.403553>,  <28.309675, 40.251266, 35.807270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972328, 39.951115, 35.403553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805532, 39.664097, 35.626713>,  <28.705456, 39.491886, 35.760609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805532, 39.664097, 35.626713>,  <28.972328, 39.951115, 35.403553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805532, 39.664097, 35.626713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065015, -0.588694, -0.805737,
		0.906584, -0.372255, 0.198827,
		-0.416988, -0.717542, 0.557903,
		28.680435, 39.448833, 35.794083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406422, 39.372185, 35.336952>,  <28.972328, 39.951115, 35.403553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406422, 39.372185, 35.336952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057890, 39.223476, 35.465057>,  <28.848770, 39.134251, 35.541920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.057890, 39.223476, 35.465057>,  <29.406422, 39.372185, 35.336952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057890, 39.223476, 35.465057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024970, -0.618231, -0.785600,
		0.490063, -0.692513, 0.529399,
		-0.871329, -0.371774, 0.320264,
		28.796492, 39.111942, 35.561138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477020, 38.614239, 35.312859>,  <29.406422, 39.372185, 35.336952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477020, 38.614239, 35.312859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103146, 38.737514, 35.241997>,  <28.878820, 38.811481, 35.199482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103146, 38.737514, 35.241997>,  <29.477020, 38.614239, 35.312859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103146, 38.737514, 35.241997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128851, -0.758184, -0.639183,
		-0.331303, -0.574608, 0.748374,
		-0.934685, 0.308192, -0.177150,
		28.822741, 38.829971, 35.188850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369297, 38.134041, 34.787601>,  <29.477020, 38.614239, 35.312859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369297, 38.134041, 34.787601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205883, 38.365093, 34.504917>,  <29.107834, 38.503727, 34.335308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205883, 38.365093, 34.504917>,  <29.369297, 38.134041, 34.787601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205883, 38.365093, 34.504917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812184, -0.123231, -0.570237,
		-0.416478, -0.806939, -0.418802,
		-0.408537, 0.577636, -0.706707,
		29.083323, 38.538383, 34.292904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677242, 38.348747, 34.116669>,  <29.369297, 38.134041, 34.787601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677242, 38.348747, 34.116669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009546, 38.570221, 34.139572>,  <30.208929, 38.703102, 34.153316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009546, 38.570221, 34.139572>,  <29.677242, 38.348747, 34.116669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009546, 38.570221, 34.139572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282654, -0.508237, 0.813512,
		0.479528, -0.659647, -0.578722,
		0.830759, 0.553680, 0.057262,
		30.258774, 38.736324, 34.156750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246826, 37.804962, 34.249668>,  <29.677242, 38.348747, 34.116669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246826, 37.804962, 34.249668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333942, 38.178997, 34.361507>,  <30.386211, 38.403419, 34.428612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333942, 38.178997, 34.361507>,  <30.246826, 37.804962, 34.249668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333942, 38.178997, 34.361507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508121, -0.353220, 0.785524,
		0.833295, -0.029012, -0.552067,
		0.217791, 0.935090, 0.279595,
		30.399281, 38.459522, 34.445385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873764, 37.853600, 34.483955>,  <30.246826, 37.804962, 34.249668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873764, 37.853600, 34.483955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743567, 38.182255, 34.671131>,  <30.665447, 38.379448, 34.783436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743567, 38.182255, 34.671131>,  <30.873764, 37.853600, 34.483955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743567, 38.182255, 34.671131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596566, -0.205509, 0.775806,
		0.733595, 0.531681, -0.423266,
		-0.325496, 0.821633, 0.467943,
		30.645918, 38.428745, 34.811516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389267, 37.950523, 34.952122>,  <30.873764, 37.853600, 34.483955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389267, 37.950523, 34.952122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509007, 37.594322, 35.089172>,  <31.580851, 37.380600, 35.171402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509007, 37.594322, 35.089172>,  <31.389267, 37.950523, 34.952122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509007, 37.594322, 35.089172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220724, 0.284718, 0.932854,
		-0.928262, -0.354875, -0.111325,
		0.299350, -0.890505, 0.342622,
		31.598812, 37.327171, 35.191959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758904, 37.689022, 35.366364>,  <31.389267, 37.950523, 34.952122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758904, 37.689022, 35.366364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144804, 37.611607, 35.437687>,  <31.376345, 37.565159, 35.480480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144804, 37.611607, 35.437687>,  <30.758904, 37.689022, 35.366364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144804, 37.611607, 35.437687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095654, 0.373328, 0.922755,
		-0.245158, -0.907286, 0.341656,
		0.964753, -0.193540, 0.178310,
		31.434231, 37.553543, 35.491180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801292, 37.255077, 35.928177>,  <30.758904, 37.689022, 35.366364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801292, 37.255077, 35.928177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170288, 37.409237, 35.936970>,  <31.391685, 37.501732, 35.942245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170288, 37.409237, 35.936970>,  <30.801292, 37.255077, 35.928177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170288, 37.409237, 35.936970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104231, 0.193846, 0.975479,
		0.371684, -0.902160, 0.218991,
		0.922489, 0.385396, 0.021983,
		31.447035, 37.524857, 35.943565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016451, 37.193710, 36.578007>,  <30.801292, 37.255077, 35.928177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016451, 37.193710, 36.578007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268810, 37.475838, 36.448700>,  <31.420225, 37.645115, 36.371117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268810, 37.475838, 36.448700>,  <31.016451, 37.193710, 36.578007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268810, 37.475838, 36.448700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064824, 0.463110, 0.883927,
		0.773154, -0.536712, 0.337896,
		0.630897, 0.705316, -0.323263,
		31.458080, 37.687431, 36.351723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456991, 37.300159, 37.072964>,  <31.016451, 37.193710, 36.578007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456991, 37.300159, 37.072964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526726, 37.649826, 36.891659>,  <31.568567, 37.859627, 36.782875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526726, 37.649826, 36.891659>,  <31.456991, 37.300159, 37.072964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526726, 37.649826, 36.891659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149697, 0.431433, 0.889639,
		0.973241, -0.222948, -0.055645,
		0.174336, 0.874163, -0.453262,
		31.579027, 37.912075, 36.755680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970039, 37.569183, 37.362053>,  <31.456991, 37.300159, 37.072964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970039, 37.569183, 37.362053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809315, 37.904926, 37.215614>,  <31.712879, 38.106373, 37.127750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809315, 37.904926, 37.215614>,  <31.970039, 37.569183, 37.362053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809315, 37.904926, 37.215614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142881, 0.452356, 0.880318,
		0.904507, 0.301414, -0.301690,
		-0.401812, 0.839359, -0.366093,
		31.688770, 38.156734, 37.105785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439434, 38.029930, 37.609795>,  <31.970039, 37.569183, 37.362053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439434, 38.029930, 37.609795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115242, 38.238258, 37.502563>,  <31.920727, 38.363255, 37.438225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115242, 38.238258, 37.502563>,  <32.439434, 38.029930, 37.609795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115242, 38.238258, 37.502563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184839, 0.661673, 0.726652,
		0.555835, 0.539387, -0.632542,
		-0.810483, 0.520817, -0.268081,
		31.872097, 38.394505, 37.422138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658695, 38.700497, 37.449425>,  <32.439434, 38.029930, 37.609795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658695, 38.700497, 37.449425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275974, 38.734028, 37.560787>,  <32.046341, 38.754147, 37.627605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275974, 38.734028, 37.560787>,  <32.658695, 38.700497, 37.449425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275974, 38.734028, 37.560787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232185, 0.796622, 0.558107,
		-0.174997, 0.598638, -0.781671,
		-0.956800, 0.083825, 0.278402,
		31.988934, 38.759174, 37.644306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676144, 39.322628, 37.758640>,  <32.658695, 38.700497, 37.449425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676144, 39.322628, 37.758640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307362, 39.214291, 37.869385>,  <32.086094, 39.149288, 37.935829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307362, 39.214291, 37.869385>,  <32.676144, 39.322628, 37.758640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307362, 39.214291, 37.869385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107418, 0.507978, 0.854646,
		-0.372111, 0.817682, -0.439238,
		-0.921952, -0.270842, 0.276858,
		32.030777, 39.133038, 37.952442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375805, 39.946129, 37.987667>,  <32.676144, 39.322628, 37.758640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375805, 39.946129, 37.987667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205452, 39.642235, 38.184208>,  <32.103241, 39.459900, 38.302132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205452, 39.642235, 38.184208>,  <32.375805, 39.946129, 37.987667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205452, 39.642235, 38.184208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028731, 0.531438, 0.846610,
		-0.904322, 0.374674, -0.204502,
		-0.425883, -0.759732, 0.491356,
		32.077686, 39.414314, 38.331615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835627, 40.262466, 38.470402>,  <32.375805, 39.946129, 37.987667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835627, 40.262466, 38.470402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890108, 39.892246, 38.611713>,  <31.922796, 39.670113, 38.696499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890108, 39.892246, 38.611713>,  <31.835627, 40.262466, 38.470402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890108, 39.892246, 38.611713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149972, 0.371752, 0.916138,
		-0.979263, -0.071799, 0.189441,
		0.136203, -0.925551, 0.353276,
		31.930969, 39.614582, 38.717697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587252, 40.336788, 39.031506>,  <31.835627, 40.262466, 38.470402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587252, 40.336788, 39.031506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793358, 39.999828, 39.094578>,  <31.917021, 39.797653, 39.132420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793358, 39.999828, 39.094578>,  <31.587252, 40.336788, 39.031506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793358, 39.999828, 39.094578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225498, 0.310758, 0.923353,
		-0.826834, -0.440215, 0.350082,
		0.515264, -0.842402, 0.157678,
		31.947937, 39.747108, 39.141880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334469, 39.985226, 39.668659>,  <31.587252, 40.336788, 39.031506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334469, 39.985226, 39.668659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712845, 39.876804, 39.597408>,  <31.939871, 39.811752, 39.554657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712845, 39.876804, 39.597408>,  <31.334469, 39.985226, 39.668659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712845, 39.876804, 39.597408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240486, 0.217638, 0.945939,
		-0.217634, -0.937637, 0.271057,
		0.945940, -0.271054, -0.178123,
		31.996626, 39.795486, 39.543972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512676, 39.389740, 40.214561>,  <31.334469, 39.985226, 39.668659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512676, 39.389740, 40.214561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856325, 39.546585, 40.083012>,  <32.062515, 39.640690, 40.004082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856325, 39.546585, 40.083012>,  <31.512676, 39.389740, 40.214561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856325, 39.546585, 40.083012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386586, -0.076145, 0.919104,
		0.335348, -0.916761, -0.217003,
		0.859123, 0.392110, -0.328872,
		32.114063, 39.664219, 39.984348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900600, 39.284737, 40.747578>,  <31.512676, 39.389740, 40.214561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900600, 39.284737, 40.747578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168999, 39.494030, 40.537441>,  <32.330036, 39.619606, 40.411358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168999, 39.494030, 40.537441>,  <31.900600, 39.284737, 40.747578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168999, 39.494030, 40.537441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559894, 0.106940, 0.821634,
		0.486091, -0.845450, -0.221202,
		0.670995, 0.523239, -0.525345,
		32.370296, 39.651001, 40.379837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545742, 38.935837, 40.702900>,  <31.900600, 39.284737, 40.747578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545742, 38.935837, 40.702900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579002, 39.334377, 40.710556>,  <32.598957, 39.573502, 40.715149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579002, 39.334377, 40.710556>,  <32.545742, 38.935837, 40.702900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579002, 39.334377, 40.710556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352468, -0.047367, 0.934625,
		0.932123, -0.070967, -0.355121,
		0.083149, 0.996353, 0.019138,
		32.603947, 39.633282, 40.716297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144939, 39.256580, 41.102409>,  <32.545742, 38.935837, 40.702900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144939, 39.256580, 41.102409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894379, 39.568180, 41.091297>,  <32.744041, 39.755142, 41.084629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894379, 39.568180, 41.091297>,  <33.144939, 39.256580, 41.102409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894379, 39.568180, 41.091297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186376, 0.184288, 0.965040,
		0.756888, 0.599328, -0.260626,
		-0.626406, 0.779002, -0.027785,
		32.706455, 39.801880, 41.082962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480492, 39.630043, 41.587784>,  <33.144939, 39.256580, 41.102409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480492, 39.630043, 41.587784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132206, 39.820953, 41.540340>,  <32.923237, 39.935501, 41.511875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132206, 39.820953, 41.540340>,  <33.480492, 39.630043, 41.587784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132206, 39.820953, 41.540340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013505, 0.264295, 0.964347,
		0.491609, 0.838067, -0.236570,
		-0.870712, 0.477276, -0.118612,
		32.870991, 39.964138, 41.504757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577686, 40.141544, 41.989880>,  <33.480492, 39.630043, 41.587784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577686, 40.141544, 41.989880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183605, 40.080223, 41.959206>,  <32.947159, 40.043430, 41.940800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183605, 40.080223, 41.959206>,  <33.577686, 40.141544, 41.989880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183605, 40.080223, 41.959206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086482, 0.058268, 0.994548,
		-0.147997, 0.986460, -0.070664,
		-0.985199, -0.153302, -0.076688,
		32.888046, 40.034233, 41.936199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377666, 40.542587, 42.448685>,  <33.577686, 40.141544, 41.989880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377666, 40.542587, 42.448685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068649, 40.294090, 42.396175>,  <32.883240, 40.144993, 42.364670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068649, 40.294090, 42.396175>,  <33.377666, 40.542587, 42.448685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068649, 40.294090, 42.396175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090737, -0.096610, 0.991178,
		-0.628441, 0.777643, 0.018266,
		-0.772547, -0.621239, -0.131275,
		32.836884, 40.107719, 42.356792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806351, 40.778770, 42.870255>,  <33.377666, 40.542587, 42.448685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806351, 40.778770, 42.870255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716671, 40.396584, 42.793499>,  <32.662865, 40.167271, 42.747448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716671, 40.396584, 42.793499>,  <32.806351, 40.778770, 42.870255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716671, 40.396584, 42.793499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277037, -0.126287, 0.952524,
		-0.934337, 0.266714, -0.236386,
		-0.224199, -0.955466, -0.191885,
		32.649410, 40.109943, 42.735935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180805, 40.628872, 43.230858>,  <32.806351, 40.778770, 42.870255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180805, 40.628872, 43.230858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342049, 40.271557, 43.151310>,  <32.438793, 40.057167, 43.103580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342049, 40.271557, 43.151310>,  <32.180805, 40.628872, 43.230858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342049, 40.271557, 43.151310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315327, -0.339575, 0.886148,
		-0.859111, -0.294506, -0.418562,
		0.403109, -0.893283, -0.198867,
		32.462982, 40.003571, 43.091652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808516, 40.217484, 43.645763>,  <32.180805, 40.628872, 43.230858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808516, 40.217484, 43.645763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088783, 39.944019, 43.564117>,  <32.256943, 39.779942, 43.515129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088783, 39.944019, 43.564117>,  <31.808516, 40.217484, 43.645763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088783, 39.944019, 43.564117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005608, -0.280798, 0.959751,
		-0.713462, -0.673614, -0.192914,
		0.700671, -0.683664, -0.204116,
		32.298985, 39.738918, 43.502884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642891, 39.641769, 44.064415>,  <31.808516, 40.217484, 43.645763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642891, 39.641769, 44.064415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029797, 39.622665, 43.964722>,  <32.261940, 39.611202, 43.904907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029797, 39.622665, 43.964722>,  <31.642891, 39.641769, 44.064415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029797, 39.622665, 43.964722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226771, -0.278126, 0.933392,
		-0.113898, -0.959356, -0.258190,
		0.967265, -0.047762, -0.249232,
		32.319977, 39.608337, 43.889954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931538, 39.067047, 44.532810>,  <31.642891, 39.641769, 44.064415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931538, 39.067047, 44.532810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265659, 39.244808, 44.403336>,  <32.466133, 39.351463, 44.325649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265659, 39.244808, 44.403336>,  <31.931538, 39.067047, 44.532810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265659, 39.244808, 44.403336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394558, -0.074551, 0.915842,
		0.382873, -0.892719, -0.237616,
		0.835304, 0.444404, -0.323686,
		32.516251, 39.378128, 44.306229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510395, 38.590588, 44.646709>,  <31.931538, 39.067047, 44.532810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510395, 38.590588, 44.646709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651115, 38.963879, 44.617519>,  <32.735550, 39.187851, 44.600006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651115, 38.963879, 44.617519>,  <32.510395, 38.590588, 44.646709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651115, 38.963879, 44.617519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582564, -0.157254, 0.797428,
		0.732703, -0.323053, -0.598985,
		0.351804, 0.933225, -0.072979,
		32.756657, 39.243847, 44.595627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297165, 38.622635, 44.697369>,  <32.510395, 38.590588, 44.646709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297165, 38.622635, 44.697369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189938, 38.996109, 44.792336>,  <33.125603, 39.220196, 44.849316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189938, 38.996109, 44.792336>,  <33.297165, 38.622635, 44.697369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189938, 38.996109, 44.792336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540509, -0.058238, 0.839320,
		0.797490, 0.353319, -0.489055,
		-0.268066, 0.933688, 0.237416,
		33.109516, 39.276215, 44.863560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888451, 38.978210, 44.974152>,  <33.297165, 38.622635, 44.697369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888451, 38.978210, 44.974152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595390, 39.216259, 45.106247>,  <33.419556, 39.359089, 45.185505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595390, 39.216259, 45.106247>,  <33.888451, 38.978210, 44.974152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595390, 39.216259, 45.106247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531723, 0.197614, 0.823541,
		0.424844, 0.778963, -0.461220,
		-0.732652, 0.595118, 0.330237,
		33.375595, 39.394794, 45.205318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243137, 39.699306, 45.289177>,  <33.888451, 38.978210, 44.974152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243137, 39.699306, 45.289177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870754, 39.636425, 45.420998>,  <33.647324, 39.598694, 45.500088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870754, 39.636425, 45.420998>,  <34.243137, 39.699306, 45.289177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870754, 39.636425, 45.420998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271654, 0.304848, 0.912837,
		-0.243965, 0.939337, -0.241095,
		-0.930959, -0.157206, 0.329547,
		33.591465, 39.589264, 45.519863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076050, 40.227318, 45.773178>,  <34.243137, 39.699306, 45.289177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076050, 40.227318, 45.773178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801884, 39.956593, 45.880611>,  <33.637383, 39.794159, 45.945072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801884, 39.956593, 45.880611>,  <34.076050, 40.227318, 45.773178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801884, 39.956593, 45.880611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227586, 0.151249, 0.961940,
		-0.691673, 0.720453, 0.050364,
		-0.685415, -0.676810, 0.268579,
		33.596260, 39.753548, 45.961185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597622, 40.593750, 46.214718>,  <34.076050, 40.227318, 45.773178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597622, 40.593750, 46.214718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568665, 40.204151, 46.300594>,  <33.551292, 39.970390, 46.352119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568665, 40.204151, 46.300594>,  <33.597622, 40.593750, 46.214718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568665, 40.204151, 46.300594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332001, 0.179446, 0.926053,
		-0.940497, 0.138313, 0.310377,
		-0.072389, -0.973996, 0.214689,
		33.546947, 39.911953, 46.365002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120678, 40.458614, 46.675304>,  <33.597622, 40.593750, 46.214718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120678, 40.458614, 46.675304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372028, 40.149841, 46.713791>,  <33.522839, 39.964577, 46.736881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372028, 40.149841, 46.713791>,  <33.120678, 40.458614, 46.675304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372028, 40.149841, 46.713791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158963, 0.248494, 0.955501,
		-0.761494, -0.585120, 0.278858,
		0.628377, -0.771936, 0.096214,
		33.560543, 39.918259, 46.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902351, 40.276520, 47.327892>,  <33.120678, 40.458614, 46.675304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902351, 40.276520, 47.327892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234306, 40.073032, 47.236244>,  <33.433479, 39.950939, 47.181255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234306, 40.073032, 47.236244>,  <32.902351, 40.276520, 47.327892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234306, 40.073032, 47.236244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297069, 0.055277, 0.953255,
		-0.472272, -0.859157, 0.196998,
		0.829885, -0.508718, -0.229123,
		33.483273, 39.920418, 47.167507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964542, 39.738392, 47.865314>,  <32.902351, 40.276520, 47.327892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964542, 39.738392, 47.865314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324982, 39.806015, 47.705593>,  <33.541245, 39.846588, 47.609760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324982, 39.806015, 47.705593>,  <32.964542, 39.738392, 47.865314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324982, 39.806015, 47.705593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392491, 0.073457, 0.916818,
		0.184328, -0.982865, -0.000162,
		0.901096, 0.169059, -0.399306,
		33.595310, 39.856731, 47.585800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255993, 39.412357, 48.307487>,  <32.964542, 39.738392, 47.865314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255993, 39.412357, 48.307487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530403, 39.638466, 48.124256>,  <33.695049, 39.774132, 48.014317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530403, 39.638466, 48.124256>,  <33.255993, 39.412357, 48.307487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530403, 39.638466, 48.124256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409191, 0.220834, 0.885322,
		0.601607, -0.794795, -0.079807,
		0.686026, 0.565272, -0.458078,
		33.736210, 39.808048, 47.986832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940304, 39.187565, 48.524933>,  <33.255993, 39.412357, 48.307487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940304, 39.187565, 48.524933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985912, 39.569576, 48.415443>,  <34.013279, 39.798782, 48.349751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985912, 39.569576, 48.415443>,  <33.940304, 39.187565, 48.524933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985912, 39.569576, 48.415443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350637, 0.219100, 0.910521,
		0.929544, -0.199797, -0.309886,
		0.114023, 0.955027, -0.273719,
		34.020119, 39.856083, 48.333328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552238, 39.341206, 48.699905>,  <33.940304, 39.187565, 48.524933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552238, 39.341206, 48.699905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377312, 39.700924, 48.701794>,  <34.272358, 39.916756, 48.702927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377312, 39.700924, 48.701794>,  <34.552238, 39.341206, 48.699905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377312, 39.700924, 48.701794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469493, 0.223822, 0.854096,
		0.767028, 0.375727, -0.520094,
		-0.437315, 0.899296, 0.004723,
		34.246117, 39.970715, 48.703209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047379, 39.638523, 49.064552>,  <34.552238, 39.341206, 48.699905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047379, 39.638523, 49.064552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769810, 39.926167, 49.079277>,  <34.603268, 40.098755, 49.088112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769810, 39.926167, 49.079277>,  <35.047379, 39.638523, 49.064552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769810, 39.926167, 49.079277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299040, 0.241305, 0.923226,
		0.655019, 0.651653, -0.382490,
		-0.693919, 0.719111, 0.036811,
		34.561634, 40.141899, 49.090321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373104, 40.235313, 49.281090>,  <35.047379, 39.638523, 49.064552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373104, 40.235313, 49.281090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987461, 40.307228, 49.359241>,  <34.756077, 40.350376, 49.406132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987461, 40.307228, 49.359241>,  <35.373104, 40.235313, 49.281090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987461, 40.307228, 49.359241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247504, 0.342200, 0.906444,
		0.096113, 0.922266, -0.374417,
		-0.964108, 0.179790, 0.195375,
		34.698227, 40.361164, 49.417854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339260, 40.877804, 49.612064>,  <35.373104, 40.235313, 49.281090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339260, 40.877804, 49.612064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978359, 40.730038, 49.701031>,  <34.761818, 40.641380, 49.754410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978359, 40.730038, 49.701031>,  <35.339260, 40.877804, 49.612064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978359, 40.730038, 49.701031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118187, 0.284193, 0.951455,
		-0.414688, 0.884743, -0.212756,
		-0.902256, -0.369411, 0.222416,
		34.707684, 40.619213, 49.767757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089863, 41.456078, 49.915699>,  <35.339260, 40.877804, 49.612064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089863, 41.456078, 49.915699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882298, 41.132912, 50.027416>,  <34.757759, 40.939011, 50.094444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882298, 41.132912, 50.027416>,  <35.089863, 41.456078, 49.915699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882298, 41.132912, 50.027416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002599, 0.325228, 0.945632,
		-0.854824, 0.491425, -0.166664,
		-0.518911, -0.807916, 0.279290,
		34.726624, 40.890537, 50.111202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618950, 41.709190, 50.438648>,  <35.089863, 41.456078, 49.915699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618950, 41.709190, 50.438648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659153, 41.313637, 50.482479>,  <34.683277, 41.076305, 50.508778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659153, 41.313637, 50.482479>,  <34.618950, 41.709190, 50.438648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659153, 41.313637, 50.482479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139052, 0.123016, 0.982615,
		-0.985171, -0.083526, 0.149870,
		0.100511, -0.988884, 0.109578,
		34.689304, 41.016972, 50.515354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178596, 41.453850, 50.935490>,  <34.618950, 41.709190, 50.438648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178596, 41.453850, 50.935490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506687, 41.225334, 50.923702>,  <34.703541, 41.088226, 50.916630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506687, 41.225334, 50.923702>,  <34.178596, 41.453850, 50.935490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506687, 41.225334, 50.923702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157482, 0.175987, 0.971714,
		-0.549941, -0.801661, 0.234316,
		0.820222, -0.571286, -0.029465,
		34.752754, 41.053947, 50.914864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242893, 41.160645, 51.656368>,  <34.178596, 41.453850, 50.935490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242893, 41.160645, 51.656368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609627, 41.071976, 51.523540>,  <34.829666, 41.018772, 51.443844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609627, 41.071976, 51.523540>,  <34.242893, 41.160645, 51.656368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609627, 41.071976, 51.523540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351190, 0.052098, 0.934853,
		-0.189933, -0.973728, 0.125616,
		0.916837, -0.221675, -0.332069,
		34.884678, 41.005474, 51.423920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611290, 40.529327, 51.997906>,  <34.242893, 41.160645, 51.656368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611290, 40.529327, 51.997906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895512, 40.759880, 51.836468>,  <35.066044, 40.898212, 51.739605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895512, 40.759880, 51.836468>,  <34.611290, 40.529327, 51.997906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895512, 40.759880, 51.836468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447566, 0.072365, 0.891318,
		0.542950, -0.813967, -0.206551,
		0.710556, 0.576386, -0.403594,
		35.108677, 40.932796, 51.715389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348034, 40.278522, 52.222614>,  <34.611290, 40.529327, 51.997906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348034, 40.278522, 52.222614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378754, 40.669220, 52.142548>,  <35.397186, 40.903641, 52.094505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378754, 40.669220, 52.142548>,  <35.348034, 40.278522, 52.222614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378754, 40.669220, 52.142548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344528, 0.162397, 0.924623,
		0.935629, -0.139978, -0.324044,
		0.076803, 0.976746, -0.200170,
		35.401794, 40.962242, 52.082497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951817, 40.521355, 52.770725>,  <35.348034, 40.278522, 52.222614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951817, 40.521355, 52.770725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993675, 40.428429, 53.157524>,  <35.018791, 40.372673, 53.389603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993675, 40.428429, 53.157524>,  <34.951817, 40.521355, 52.770725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993675, 40.428429, 53.157524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843844, -0.493809, -0.209953,
		0.526287, 0.837962, 0.144367,
		0.104643, -0.232319, 0.966994,
		35.025066, 40.358734, 53.447624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675198, 40.602520, 52.938263>,  <34.951817, 40.521355, 52.770725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675198, 40.602520, 52.938263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482552, 40.323040, 53.149876>,  <35.366966, 40.155354, 53.276844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482552, 40.323040, 53.149876>,  <35.675198, 40.602520, 52.938263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482552, 40.323040, 53.149876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802970, -0.593654, -0.053046,
		0.351123, 0.399247, 0.846944,
		-0.481613, -0.698696, 0.529029,
		35.338066, 40.113430, 53.308586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261791, 40.136845, 53.118053>,  <35.675198, 40.602520, 52.938263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261791, 40.136845, 53.118053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926449, 39.950382, 53.231094>,  <35.725243, 39.838505, 53.298920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926449, 39.950382, 53.231094>,  <36.261791, 40.136845, 53.118053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926449, 39.950382, 53.231094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538917, -0.786765, 0.300949,
		0.082052, 0.404600, 0.910805,
		-0.838353, -0.466155, 0.282601,
		35.674942, 39.810535, 53.315876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842884, 39.984138, 52.646355>,  <36.261791, 40.136845, 53.118053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842884, 39.984138, 52.646355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983307, 39.610291, 52.669121>,  <36.067558, 39.385983, 52.682781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983307, 39.610291, 52.669121>,  <35.842884, 39.984138, 52.646355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983307, 39.610291, 52.669121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109306, -0.101274, -0.988836,
		0.929954, 0.340912, -0.137713,
		0.351053, -0.934624, 0.056916,
		36.088623, 39.329903, 52.686195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273777, 40.035213, 52.055630>,  <35.842884, 39.984138, 52.646355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273777, 40.035213, 52.055630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222000, 39.648693, 52.144627>,  <36.190933, 39.416779, 52.198025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222000, 39.648693, 52.144627>,  <36.273777, 40.035213, 52.055630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222000, 39.648693, 52.144627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052565, -0.217373, -0.974672,
		0.990193, -0.137856, -0.022657,
		-0.129440, -0.966304, 0.222488,
		36.183167, 39.358803, 52.211372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872440, 39.684738, 51.809155>,  <36.273777, 40.035213, 52.055630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872440, 39.684738, 51.809155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531380, 39.476818, 51.830280>,  <36.326744, 39.352066, 51.842957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531380, 39.476818, 51.830280>,  <36.872440, 39.684738, 51.809155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531380, 39.476818, 51.830280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145743, -0.333700, -0.931345,
		0.501735, -0.786419, 0.360288,
		-0.852655, -0.519797, 0.052814,
		36.275581, 39.320877, 51.846123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064102, 39.007454, 51.612053>,  <36.872440, 39.684738, 51.809155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064102, 39.007454, 51.612053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689129, 39.106213, 51.513859>,  <36.464146, 39.165470, 51.454945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689129, 39.106213, 51.513859>,  <37.064102, 39.007454, 51.612053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689129, 39.106213, 51.513859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147469, -0.357131, -0.922340,
		-0.315390, -0.900833, 0.298377,
		-0.937434, 0.246896, -0.245480,
		36.407898, 39.180283, 51.440216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574116, 38.383053, 51.318165>,  <37.064102, 39.007454, 51.612053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574116, 38.383053, 51.318165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486534, 38.751129, 51.188362>,  <36.433983, 38.971973, 51.110481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486534, 38.751129, 51.188362>,  <36.574116, 38.383053, 51.318165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486534, 38.751129, 51.188362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010747, -0.330282, -0.943821,
		-0.975675, -0.210145, 0.062429,
		-0.218959, 0.920192, -0.324506,
		36.420845, 39.027187, 51.091011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916893, 38.353249, 51.004658>,  <36.574116, 38.383053, 51.318165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916893, 38.353249, 51.004658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117455, 38.671894, 50.869606>,  <36.237793, 38.863083, 50.788574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117455, 38.671894, 50.869606>,  <35.916893, 38.353249, 51.004658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117455, 38.671894, 50.869606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034622, -0.408388, -0.912152,
		-0.864519, 0.445670, -0.232349,
		0.501407, 0.796616, -0.337629,
		36.267876, 38.910877, 50.768318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546974, 38.550808, 50.412949>,  <35.916893, 38.353249, 51.004658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546974, 38.550808, 50.412949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920288, 38.694393, 50.408489>,  <36.144276, 38.780544, 50.405815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920288, 38.694393, 50.408489>,  <35.546974, 38.550808, 50.412949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920288, 38.694393, 50.408489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066728, -0.203816, -0.976733,
		-0.352886, 0.910825, -0.214171,
		0.933284, 0.358967, -0.011147,
		36.200272, 38.802082, 50.405144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571384, 38.796349, 49.686260>,  <35.546974, 38.550808, 50.412949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571384, 38.796349, 49.686260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958458, 38.778973, 49.785618>,  <36.190701, 38.768547, 49.845234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958458, 38.778973, 49.785618>,  <35.571384, 38.796349, 49.686260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958458, 38.778973, 49.785618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229343, -0.257910, -0.938554,
		0.104837, 0.965192, -0.239612,
		0.967683, -0.043442, 0.248398,
		36.248764, 38.765942, 49.860138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902496, 39.240768, 49.255825>,  <35.571384, 38.796349, 49.686260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902496, 39.240768, 49.255825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185307, 38.996304, 49.398144>,  <36.354992, 38.849625, 49.483536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185307, 38.996304, 49.398144>,  <35.902496, 39.240768, 49.255825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185307, 38.996304, 49.398144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281488, -0.218326, -0.934397,
		0.648751, 0.760795, 0.017674,
		0.707026, -0.611166, 0.355794,
		36.397415, 38.812954, 49.504883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395226, 39.330349, 48.757572>,  <35.902496, 39.240768, 49.255825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395226, 39.330349, 48.757572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522900, 38.997677, 48.939308>,  <36.599503, 38.798073, 49.048347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522900, 38.997677, 48.939308>,  <36.395226, 39.330349, 48.757572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522900, 38.997677, 48.939308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375354, -0.329263, -0.866427,
		0.870189, 0.447089, 0.207079,
		0.319186, -0.831683, 0.454338,
		36.618656, 38.748173, 49.075611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022831, 39.231407, 48.535011>,  <36.395226, 39.330349, 48.757572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022831, 39.231407, 48.535011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889729, 38.876617, 48.663109>,  <36.809868, 38.663742, 48.739967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889729, 38.876617, 48.663109>,  <37.022831, 39.231407, 48.535011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889729, 38.876617, 48.663109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342531, -0.430081, -0.835286,
		0.878606, -0.168250, 0.446926,
		-0.332752, -0.886974, 0.320241,
		36.789902, 38.610527, 48.759182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596157, 38.720535, 48.466740>,  <37.022831, 39.231407, 48.535011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596157, 38.720535, 48.466740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244751, 38.531200, 48.492535>,  <37.033905, 38.417599, 48.508011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244751, 38.531200, 48.492535>,  <37.596157, 38.720535, 48.466740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244751, 38.531200, 48.492535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242712, -0.558546, -0.793169,
		0.411455, -0.681162, 0.605577,
		-0.878519, -0.473334, 0.064490,
		36.981194, 38.389202, 48.511883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727074, 37.997009, 48.372318>,  <37.596157, 38.720535, 48.466740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727074, 37.997009, 48.372318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333515, 38.025707, 48.306831>,  <37.097382, 38.042927, 48.267540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333515, 38.025707, 48.306831>,  <37.727074, 37.997009, 48.372318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333515, 38.025707, 48.306831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090698, -0.588867, -0.803125,
		-0.154029, -0.805039, 0.572876,
		-0.983895, 0.071746, -0.163718,
		37.038345, 38.047230, 48.257717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480682, 37.305233, 48.233852>,  <37.727074, 37.997009, 48.372318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480682, 37.305233, 48.233852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202118, 37.547436, 48.079777>,  <37.034981, 37.692757, 47.987331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202118, 37.547436, 48.079777>,  <37.480682, 37.305233, 48.233852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202118, 37.547436, 48.079777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038349, -0.504577, -0.862514,
		-0.716621, -0.615433, 0.328171,
		-0.696407, 0.605511, -0.385192,
		36.993195, 37.729088, 47.964218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166248, 36.907669, 47.901859>,  <37.480682, 37.305233, 48.233852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166248, 36.907669, 47.901859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027802, 37.242050, 47.731503>,  <36.944733, 37.442680, 47.629288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027802, 37.242050, 47.731503>,  <37.166248, 36.907669, 47.901859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027802, 37.242050, 47.731503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171289, -0.502622, -0.847367,
		-0.922424, -0.220334, 0.317154,
		-0.346112, 0.835957, -0.425890,
		36.923969, 37.492836, 47.603737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618393, 36.728539, 47.491432>,  <37.166248, 36.907669, 47.901859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618393, 36.728539, 47.491432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723892, 37.082874, 47.338741>,  <36.787193, 37.295475, 47.247128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723892, 37.082874, 47.338741>,  <36.618393, 36.728539, 47.491432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723892, 37.082874, 47.338741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112828, -0.364694, -0.924266,
		-0.957970, 0.286843, 0.003761,
		0.263747, 0.885844, -0.381730,
		36.803017, 37.348629, 47.224224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124195, 36.844139, 47.002808>,  <36.618393, 36.728539, 47.491432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124195, 36.844139, 47.002808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409042, 37.107449, 46.905174>,  <36.579948, 37.265434, 46.846596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409042, 37.107449, 46.905174>,  <36.124195, 36.844139, 47.002808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409042, 37.107449, 46.905174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310291, -0.016762, -0.950494,
		-0.629773, 0.752595, 0.192319,
		0.712114, 0.658270, -0.244079,
		36.622677, 37.304928, 46.831951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852840, 37.543266, 46.661224>,  <36.124195, 36.844139, 47.002808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852840, 37.543266, 46.661224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225048, 37.471729, 46.533379>,  <36.448372, 37.428806, 46.456673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225048, 37.471729, 46.533379>,  <35.852840, 37.543266, 46.661224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225048, 37.471729, 46.533379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322070, 0.015924, -0.946582,
		0.174382, 0.983748, -0.042783,
		0.930517, -0.178846, -0.319612,
		36.504204, 37.418076, 46.437496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839996, 37.834160, 46.063683>,  <35.852840, 37.543266, 46.661224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839996, 37.834160, 46.063683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195316, 37.660244, 46.004520>,  <36.408508, 37.555897, 45.969025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195316, 37.660244, 46.004520>,  <35.839996, 37.834160, 46.063683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195316, 37.660244, 46.004520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167717, -0.007304, -0.985808,
		0.427535, 0.900504, -0.079409,
		0.888305, -0.434786, -0.147907,
		36.461807, 37.529808, 45.960148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136112, 38.102425, 45.528522>,  <35.839996, 37.834160, 46.063683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136112, 38.102425, 45.528522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343719, 37.761002, 45.546658>,  <36.468285, 37.556149, 45.557541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343719, 37.761002, 45.546658>,  <36.136112, 38.102425, 45.528522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343719, 37.761002, 45.546658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136738, -0.135273, -0.981328,
		0.843757, 0.503124, -0.186923,
		0.519015, -0.853561, 0.045341,
		36.499424, 37.504932, 45.560261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619823, 38.149818, 45.071167>,  <36.136112, 38.102425, 45.528522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619823, 38.149818, 45.071167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556496, 37.758240, 45.122688>,  <36.518497, 37.523293, 45.153603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556496, 37.758240, 45.122688>,  <36.619823, 38.149818, 45.071167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556496, 37.758240, 45.122688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232919, -0.089741, -0.968347,
		0.959523, -0.183310, -0.213808,
		-0.158320, -0.978950, 0.128805,
		36.508999, 37.464554, 45.161331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799099, 37.832111, 44.417770>,  <36.619823, 38.149818, 45.071167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799099, 37.832111, 44.417770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626259, 37.515804, 44.591198>,  <36.522556, 37.326019, 44.695255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626259, 37.515804, 44.591198>,  <36.799099, 37.832111, 44.417770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626259, 37.515804, 44.591198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174791, -0.398215, -0.900485,
		0.884725, -0.464883, 0.033850,
		-0.432100, -0.790764, 0.433568,
		36.496628, 37.278576, 44.721268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858963, 37.212536, 44.022873>,  <36.799099, 37.832111, 44.417770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858963, 37.212536, 44.022873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525391, 37.122944, 44.224625>,  <36.325249, 37.069187, 44.345676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525391, 37.122944, 44.224625>,  <36.858963, 37.212536, 44.022873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525391, 37.122944, 44.224625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396479, -0.392580, -0.829871,
		0.383882, -0.892028, 0.238581,
		-0.833930, -0.223980, 0.504375,
		36.275211, 37.055752, 44.375938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670921, 36.565113, 43.726395>,  <36.858963, 37.212536, 44.022873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670921, 36.565113, 43.726395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331257, 36.696461, 43.891853>,  <36.127460, 36.775269, 43.991131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331257, 36.696461, 43.891853>,  <36.670921, 36.565113, 43.726395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331257, 36.696461, 43.891853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487533, -0.186201, -0.853018,
		-0.203076, -0.926017, 0.318201,
		-0.849159, 0.328361, 0.413651,
		36.076508, 36.794971, 44.015949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168289, 36.003391, 43.577133>,  <36.670921, 36.565113, 43.726395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168289, 36.003391, 43.577133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952095, 36.333229, 43.643970>,  <35.822380, 36.531132, 43.684074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952095, 36.333229, 43.643970>,  <36.168289, 36.003391, 43.577133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952095, 36.333229, 43.643970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634544, -0.269097, -0.724528,
		-0.552477, -0.497624, 0.668684,
		-0.540483, 0.824595, 0.167094,
		35.789951, 36.580608, 43.694099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485687, 35.757301, 43.614082>,  <36.168289, 36.003391, 43.577133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485687, 35.757301, 43.614082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463097, 36.148968, 43.536060>,  <35.449543, 36.383968, 43.489246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463097, 36.148968, 43.536060>,  <35.485687, 35.757301, 43.614082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463097, 36.148968, 43.536060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585144, -0.190757, -0.788174,
		-0.808961, 0.069626, 0.583725,
		-0.056472, 0.979165, -0.195057,
		35.446156, 36.442719, 43.477543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829243, 35.953045, 43.480385>,  <35.485687, 35.757301, 43.614082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829243, 35.953045, 43.480385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030006, 36.262596, 43.325878>,  <35.150463, 36.448326, 43.233173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030006, 36.262596, 43.325878>,  <34.829243, 35.953045, 43.480385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030006, 36.262596, 43.325878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547441, -0.061521, -0.834580,
		-0.669627, 0.630339, 0.392775,
		0.501905, 0.773878, -0.386270,
		35.180576, 36.494759, 43.209999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371181, 36.400677, 43.200169>,  <34.829243, 35.953045, 43.480385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371181, 36.400677, 43.200169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701870, 36.525017, 43.012592>,  <34.900284, 36.599621, 42.900047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701870, 36.525017, 43.012592>,  <34.371181, 36.400677, 43.200169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701870, 36.525017, 43.012592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497362, 0.014179, -0.867427,
		-0.262992, 0.950353, 0.166328,
		0.826720, 0.310852, -0.468941,
		34.949886, 36.618271, 42.871910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101692, 36.870319, 42.682793>,  <34.371181, 36.400677, 43.200169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101692, 36.870319, 42.682793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464645, 36.756260, 42.559277>,  <34.682415, 36.687824, 42.485165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464645, 36.756260, 42.559277>,  <34.101692, 36.870319, 42.682793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464645, 36.756260, 42.559277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359212, -0.144626, -0.921982,
		0.218239, 0.947510, -0.233658,
		0.907380, -0.285145, -0.308794,
		34.736858, 36.670715, 42.466637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231449, 37.273899, 42.024536>,  <34.101692, 36.870319, 42.682793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231449, 37.273899, 42.024536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477726, 36.959229, 42.006390>,  <34.625492, 36.770424, 41.995502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477726, 36.959229, 42.006390>,  <34.231449, 37.273899, 42.024536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477726, 36.959229, 42.006390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194660, -0.096062, -0.976155,
		0.763562, 0.609844, -0.212279,
		0.615695, -0.786678, -0.045363,
		34.662434, 36.723225, 41.992779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644169, 37.407158, 41.475052>,  <34.231449, 37.273899, 42.024536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644169, 37.407158, 41.475052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685925, 37.017418, 41.554790>,  <34.710976, 36.783573, 41.602634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685925, 37.017418, 41.554790>,  <34.644169, 37.407158, 41.475052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685925, 37.017418, 41.554790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081460, -0.208146, -0.974700,
		0.991195, 0.085507, -0.101099,
		0.104387, -0.974353, 0.199348,
		34.717239, 36.725113, 41.614594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995548, 37.169643, 40.964504>,  <34.644169, 37.407158, 41.475052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995548, 37.169643, 40.964504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841068, 36.828667, 41.105469>,  <34.748379, 36.624081, 41.190048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841068, 36.828667, 41.105469>,  <34.995548, 37.169643, 40.964504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841068, 36.828667, 41.105469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157611, -0.315446, -0.935763,
		0.908850, -0.416935, -0.012529,
		-0.386200, -0.852443, 0.352407,
		34.725208, 36.572933, 41.211189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300098, 36.663902, 40.526760>,  <34.995548, 37.169643, 40.964504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300098, 36.663902, 40.526760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993149, 36.468239, 40.692585>,  <34.808979, 36.350842, 40.792080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993149, 36.468239, 40.692585>,  <35.300098, 36.663902, 40.526760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993149, 36.468239, 40.692585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218838, -0.407926, -0.886401,
		0.602703, -0.770921, 0.205984,
		-0.767371, -0.489159, 0.414565,
		34.762936, 36.321491, 40.816956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344955, 35.975658, 40.376949>,  <35.300098, 36.663902, 40.526760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344955, 35.975658, 40.376949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958782, 36.056244, 40.443111>,  <34.727077, 36.104595, 40.482807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958782, 36.056244, 40.443111>,  <35.344955, 35.975658, 40.376949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958782, 36.056244, 40.443111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229815, -0.358401, -0.904839,
		-0.123014, -0.911570, 0.392311,
		-0.965428, 0.201467, 0.165404,
		34.669155, 36.116684, 40.492733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023396, 35.365723, 40.125431>,  <35.344955, 35.975658, 40.376949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023396, 35.365723, 40.125431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746929, 35.653347, 40.154408>,  <34.581051, 35.825920, 40.171795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746929, 35.653347, 40.154408>,  <35.023396, 35.365723, 40.125431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746929, 35.653347, 40.154408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294561, -0.188750, -0.936807,
		-0.659947, -0.668824, 0.342264,
		-0.691161, 0.719061, 0.072444,
		34.539581, 35.869064, 40.176140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455555, 35.061691, 39.927666>,  <35.023396, 35.365723, 40.125431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455555, 35.061691, 39.927666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362358, 35.446304, 39.869473>,  <34.306442, 35.677074, 39.834557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362358, 35.446304, 39.869473>,  <34.455555, 35.061691, 39.927666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362358, 35.446304, 39.869473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293154, -0.212087, -0.932245,
		-0.927242, -0.174552, 0.331292,
		-0.232988, 0.961536, -0.145485,
		34.292461, 35.734764, 39.825829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742825, 35.062672, 39.568199>,  <34.455555, 35.061691, 39.927666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742825, 35.062672, 39.568199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925961, 35.410461, 39.494011>,  <34.035843, 35.619137, 39.449497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925961, 35.410461, 39.494011>,  <33.742825, 35.062672, 39.568199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925961, 35.410461, 39.494011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463104, 0.055161, -0.884586,
		-0.758895, 0.490887, 0.427912,
		0.457836, 0.869475, -0.185470,
		34.063313, 35.671303, 39.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267216, 35.358360, 39.135818>,  <33.742825, 35.062672, 39.568199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267216, 35.358360, 39.135818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595871, 35.575684, 39.066841>,  <33.793064, 35.706078, 39.025455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595871, 35.575684, 39.066841>,  <33.267216, 35.358360, 39.135818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595871, 35.575684, 39.066841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317580, 0.185096, -0.929990,
		-0.473349, 0.818877, 0.324624,
		0.821634, 0.543305, -0.172444,
		33.842361, 35.738674, 39.015106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046432, 35.941967, 38.699478>,  <33.267216, 35.358360, 39.135818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046432, 35.941967, 38.699478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442818, 35.926975, 38.647953>,  <33.680649, 35.917980, 38.617039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442818, 35.926975, 38.647953>,  <33.046432, 35.941967, 38.699478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442818, 35.926975, 38.647953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114675, 0.261642, -0.958328,
		0.069622, 0.964437, 0.254978,
		0.990960, -0.037481, -0.128813,
		33.740105, 35.915730, 38.609310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224365, 36.609081, 38.323364>,  <33.046432, 35.941967, 38.699478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224365, 36.609081, 38.323364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538818, 36.364841, 38.285072>,  <33.727489, 36.218296, 38.262096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538818, 36.364841, 38.285072>,  <33.224365, 36.609081, 38.323364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538818, 36.364841, 38.285072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038156, 0.106651, -0.993564,
		0.616879, 0.784726, 0.060544,
		0.786133, -0.610599, -0.095732,
		33.774658, 36.181664, 38.256351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549797, 36.987816, 37.866043>,  <33.224365, 36.609081, 38.323364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549797, 36.987816, 37.866043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670036, 36.606823, 37.846375>,  <33.742180, 36.378227, 37.834572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670036, 36.606823, 37.846375>,  <33.549797, 36.987816, 37.866043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670036, 36.606823, 37.846375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104721, 0.018287, -0.994333,
		0.947985, 0.304043, -0.094248,
		0.300596, -0.952483, -0.049176,
		33.760216, 36.321079, 37.831623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932579, 36.991039, 37.275845>,  <33.549797, 36.987816, 37.866043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932579, 36.991039, 37.275845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822193, 36.608078, 37.309841>,  <33.755962, 36.378300, 37.330238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822193, 36.608078, 37.309841>,  <33.932579, 36.991039, 37.275845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822193, 36.608078, 37.309841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295521, 0.000375, -0.955336,
		0.914609, -0.288758, -0.283036,
		-0.275967, -0.957402, 0.084991,
		33.739403, 36.320858, 37.335339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268341, 36.696148, 36.734699>,  <33.932579, 36.991039, 37.275845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268341, 36.696148, 36.734699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973907, 36.453209, 36.854244>,  <33.797249, 36.307446, 36.925972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973907, 36.453209, 36.854244>,  <34.268341, 36.696148, 36.734699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973907, 36.453209, 36.854244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219082, -0.203999, -0.954142,
		0.640460, -0.767801, 0.017101,
		-0.736080, -0.607344, 0.298865,
		33.753082, 36.271008, 36.943905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475807, 36.107265, 36.407330>,  <34.268341, 36.696148, 36.734699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475807, 36.107265, 36.407330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084148, 36.096966, 36.487942>,  <33.849155, 36.090786, 36.536308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084148, 36.096966, 36.487942>,  <34.475807, 36.107265, 36.407330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084148, 36.096966, 36.487942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194162, -0.173505, -0.965504,
		0.059824, -0.984496, 0.164888,
		-0.979144, -0.025745, 0.201531,
		33.790405, 36.089241, 36.548401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137833, 36.158695, 36.705257>,  <34.475807, 36.107265, 36.407330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137833, 36.158695, 36.705257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475151, 36.052814, 36.518158>,  <35.677544, 35.989285, 36.405899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475151, 36.052814, 36.518158>,  <35.137833, 36.158695, 36.705257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475151, 36.052814, 36.518158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495332, 0.045052, 0.867535,
		-0.208566, -0.963277, 0.169108,
		0.843295, -0.264703, -0.467746,
		35.728138, 35.973404, 36.377834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485065, 35.478855, 37.052422>,  <35.137833, 36.158695, 36.705257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485065, 35.478855, 37.052422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735001, 35.729511, 36.866127>,  <35.884960, 35.879906, 36.754353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735001, 35.729511, 36.866127>,  <35.485065, 35.478855, 37.052422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735001, 35.729511, 36.866127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658400, -0.102296, 0.745685,
		0.419630, -0.772569, -0.476496,
		0.624836, 0.626636, -0.465732,
		35.922451, 35.917503, 36.726406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170227, 35.176857, 37.108009>,  <35.485065, 35.478855, 37.052422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170227, 35.176857, 37.108009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208061, 35.570782, 37.049778>,  <36.230762, 35.807137, 37.014839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208061, 35.570782, 37.049778>,  <36.170227, 35.176857, 37.108009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208061, 35.570782, 37.049778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615973, 0.056986, 0.785703,
		0.782068, -0.163992, -0.601229,
		0.094587, 0.984814, -0.145582,
		36.236439, 35.866226, 37.006104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790607, 35.349808, 37.297680>,  <36.170227, 35.176857, 37.108009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790607, 35.349808, 37.297680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609116, 35.704620, 37.331886>,  <36.500221, 35.917507, 37.352409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609116, 35.704620, 37.331886>,  <36.790607, 35.349808, 37.297680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609116, 35.704620, 37.331886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520776, 0.186061, 0.833171,
		0.723134, 0.422568, -0.546364,
		-0.453728, 0.887027, 0.085516,
		36.472996, 35.970730, 37.357540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327740, 35.815712, 37.294868>,  <36.790607, 35.349808, 37.297680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327740, 35.815712, 37.294868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030830, 36.026958, 37.459850>,  <36.852684, 36.153706, 37.558842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030830, 36.026958, 37.459850>,  <37.327740, 35.815712, 37.294868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030830, 36.026958, 37.459850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526340, 0.078557, 0.846638,
		0.414720, 0.845532, -0.336279,
		-0.742276, 0.528114, 0.412458,
		36.808147, 36.185394, 37.583588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743633, 36.343491, 37.667255>,  <37.327740, 35.815712, 37.294868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743633, 36.343491, 37.667255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370441, 36.340340, 37.811195>,  <37.146526, 36.338448, 37.897560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370441, 36.340340, 37.811195>,  <37.743633, 36.343491, 37.667255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370441, 36.340340, 37.811195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318118, 0.449653, 0.834634,
		-0.168385, 0.893169, -0.417009,
		-0.932978, -0.007882, 0.359848,
		37.090549, 36.337975, 37.919151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574230, 37.011280, 37.878586>,  <37.743633, 36.343491, 37.667255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574230, 37.011280, 37.878586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349724, 36.757179, 38.090790>,  <37.215019, 36.604721, 38.218113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349724, 36.757179, 38.090790>,  <37.574230, 37.011280, 37.878586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349724, 36.757179, 38.090790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306000, 0.436290, 0.846177,
		-0.768987, 0.637267, -0.050490,
		-0.561269, -0.635249, 0.530505,
		37.181343, 36.566605, 38.249943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424110, 37.408890, 38.494453>,  <37.574230, 37.011280, 37.878586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424110, 37.408890, 38.494453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343174, 37.029881, 38.593449>,  <37.294613, 36.802475, 38.652847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343174, 37.029881, 38.593449>,  <37.424110, 37.408890, 38.494453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343174, 37.029881, 38.593449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033163, 0.259200, 0.965254,
		-0.978754, 0.187100, -0.083868,
		-0.202338, -0.947528, 0.247488,
		37.282471, 36.745621, 38.667694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905422, 37.369812, 39.002029>,  <37.424110, 37.408890, 38.494453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905422, 37.369812, 39.002029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082851, 37.013309, 39.039791>,  <37.189308, 36.799408, 39.062447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082851, 37.013309, 39.039791>,  <36.905422, 37.369812, 39.002029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082851, 37.013309, 39.039791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034507, 0.122237, 0.991901,
		-0.895574, -0.436722, 0.084976,
		0.443572, -0.891253, 0.094402,
		37.215923, 36.745934, 39.068111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665848, 37.048298, 39.706264>,  <36.905422, 37.369812, 39.002029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665848, 37.048298, 39.706264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991722, 36.847099, 39.590828>,  <37.187244, 36.726379, 39.521568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991722, 36.847099, 39.590828>,  <36.665848, 37.048298, 39.706264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991722, 36.847099, 39.590828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356722, 0.042324, 0.933252,
		-0.457212, -0.863249, 0.213912,
		0.814682, -0.503001, -0.288588,
		37.236126, 36.696198, 39.504250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712204, 36.600204, 40.213333>,  <36.665848, 37.048298, 39.706264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712204, 36.600204, 40.213333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069633, 36.597843, 40.033783>,  <37.284092, 36.596428, 39.926052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069633, 36.597843, 40.033783>,  <36.712204, 36.600204, 40.213333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069633, 36.597843, 40.033783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446751, -0.086273, 0.890489,
		-0.043982, -0.996254, -0.074454,
		0.893577, -0.005903, -0.448872,
		37.337708, 36.596073, 39.899120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156231, 35.919441, 40.448620>,  <36.712204, 36.600204, 40.213333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156231, 35.919441, 40.448620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406429, 36.216419, 40.352680>,  <37.556549, 36.394608, 40.295116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406429, 36.216419, 40.352680>,  <37.156231, 35.919441, 40.448620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406429, 36.216419, 40.352680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471559, -0.114828, 0.874327,
		0.621598, -0.659993, -0.421931,
		0.625499, 0.742445, -0.239849,
		37.594078, 36.439152, 40.280727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844540, 35.635853, 40.547951>,  <37.156231, 35.919441, 40.448620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844540, 35.635853, 40.547951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913063, 36.029942, 40.547638>,  <37.954178, 36.266396, 40.547451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913063, 36.029942, 40.547638>,  <37.844540, 35.635853, 40.547951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913063, 36.029942, 40.547638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618690, -0.106954, 0.778321,
		0.766732, -0.133817, -0.627866,
		0.171305, 0.985218, -0.000786,
		37.964455, 36.325508, 40.547401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515076, 35.732361, 40.732285>,  <37.844540, 35.635853, 40.547951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515076, 35.732361, 40.732285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325600, 36.075981, 40.809895>,  <38.211914, 36.282154, 40.856461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325600, 36.075981, 40.809895>,  <38.515076, 35.732361, 40.732285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325600, 36.075981, 40.809895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506277, 0.085348, 0.858137,
		0.720626, 0.504721, -0.475347,
		-0.473690, 0.859053, 0.194025,
		38.183495, 36.333698, 40.868103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897434, 36.014709, 41.168869>,  <38.515076, 35.732361, 40.732285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897434, 36.014709, 41.168869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604435, 36.283669, 41.211441>,  <38.428635, 36.445045, 41.236984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604435, 36.283669, 41.211441>,  <38.897434, 36.014709, 41.168869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604435, 36.283669, 41.211441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403905, 0.303401, 0.863023,
		0.548003, 0.675151, -0.493826,
		-0.732498, 0.672398, 0.106432,
		38.384686, 36.485390, 41.243370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196198, 36.714378, 41.285713>,  <38.897434, 36.014709, 41.168869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196198, 36.714378, 41.285713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818851, 36.712135, 41.418396>,  <38.592445, 36.710789, 41.498005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818851, 36.712135, 41.418396>,  <39.196198, 36.714378, 41.285713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818851, 36.712135, 41.418396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297469, 0.428378, 0.853232,
		-0.146885, 0.903582, -0.402448,
		-0.943365, -0.005611, 0.331710,
		38.535843, 36.710453, 41.517910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078041, 37.324444, 41.561359>,  <39.196198, 36.714378, 41.285713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078041, 37.324444, 41.561359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794365, 37.098804, 41.730518>,  <38.624157, 36.963421, 41.832012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794365, 37.098804, 41.730518>,  <39.078041, 37.324444, 41.561359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794365, 37.098804, 41.730518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185292, 0.429616, 0.883797,
		-0.680230, 0.705142, -0.200158,
		-0.709193, -0.564097, 0.422894,
		38.581608, 36.929577, 41.857388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734715, 37.728252, 41.987091>,  <39.078041, 37.324444, 41.561359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734715, 37.728252, 41.987091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641655, 37.371536, 42.142315>,  <38.585819, 37.157509, 42.235447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641655, 37.371536, 42.142315>,  <38.734715, 37.728252, 41.987091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641655, 37.371536, 42.142315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226019, 0.338505, 0.913417,
		-0.945933, 0.300215, 0.122808,
		-0.232651, -0.891788, 0.388057,
		38.571861, 37.104000, 42.258732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531052, 37.872875, 42.597420>,  <38.734715, 37.728252, 41.987091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531052, 37.872875, 42.597420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580822, 37.477295, 42.629646>,  <38.610683, 37.239948, 42.648983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580822, 37.477295, 42.629646>,  <38.531052, 37.872875, 42.597420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580822, 37.477295, 42.629646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039382, 0.086060, 0.995511,
		-0.991446, -0.120699, 0.049656,
		0.124430, -0.988952, 0.080570,
		38.618153, 37.180611, 42.653816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990437, 37.609554, 42.997795>,  <38.531052, 37.872875, 42.597420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990437, 37.609554, 42.997795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264366, 37.320259, 43.033443>,  <38.428722, 37.146683, 43.054832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264366, 37.320259, 43.033443>,  <37.990437, 37.609554, 42.997795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264366, 37.320259, 43.033443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001173, 0.121209, 0.992626,
		-0.728709, -0.679877, 0.082158,
		0.684822, -0.723240, 0.089124,
		38.469814, 37.103287, 43.060181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785656, 37.122803, 43.446911>,  <37.990437, 37.609554, 42.997795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785656, 37.122803, 43.446911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182827, 37.075310, 43.447208>,  <38.421131, 37.046814, 43.447388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182827, 37.075310, 43.447208>,  <37.785656, 37.122803, 43.446911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182827, 37.075310, 43.447208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009961, -0.077077, 0.996975,
		-0.118320, -0.989930, -0.077715,
		0.992926, -0.118736, 0.000741,
		38.480705, 37.039692, 43.447430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941597, 36.562180, 43.972393>,  <37.785656, 37.122803, 43.446911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941597, 36.562180, 43.972393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289253, 36.750420, 43.911556>,  <38.497849, 36.863361, 43.875053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289253, 36.750420, 43.911556>,  <37.941597, 36.562180, 43.972393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289253, 36.750420, 43.911556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262969, -0.179285, 0.948000,
		0.418859, -0.863941, -0.279577,
		0.869140, 0.470599, -0.152095,
		38.549995, 36.891598, 43.865929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490528, 36.161507, 44.233391>,  <37.941597, 36.562180, 43.972393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490528, 36.161507, 44.233391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664932, 36.521374, 44.224533>,  <38.769573, 36.737293, 44.219219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664932, 36.521374, 44.224533>,  <38.490528, 36.161507, 44.233391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664932, 36.521374, 44.224533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221079, -0.083221, 0.971699,
		0.872364, -0.428567, -0.235183,
		0.436010, 0.899669, -0.022148,
		38.795734, 36.791275, 44.217888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220226, 36.148087, 44.631874>,  <38.490528, 36.161507, 44.233391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220226, 36.148087, 44.631874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101295, 36.529804, 44.643967>,  <39.029938, 36.758835, 44.651222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101295, 36.529804, 44.643967>,  <39.220226, 36.148087, 44.631874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101295, 36.529804, 44.643967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105971, 0.001518, 0.994368,
		0.948877, 0.298855, -0.101579,
		-0.297326, 0.954297, 0.030230,
		39.012096, 36.816093, 44.653034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673512, 36.543041, 45.099224>,  <39.220226, 36.148087, 44.631874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673512, 36.543041, 45.099224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363358, 36.795460, 45.089733>,  <39.177265, 36.946911, 45.084038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363358, 36.795460, 45.089733>,  <39.673512, 36.543041, 45.099224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363358, 36.795460, 45.089733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115151, 0.178232, 0.977227,
		0.620905, 0.754992, -0.210864,
		-0.775382, 0.631047, -0.023727,
		39.130745, 36.984776, 45.082615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942951, 37.165352, 45.294777>,  <39.673512, 36.543041, 45.099224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942951, 37.165352, 45.294777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551502, 37.195774, 45.371220>,  <39.316635, 37.214027, 45.417084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551502, 37.195774, 45.371220>,  <39.942951, 37.165352, 45.294777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551502, 37.195774, 45.371220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202201, 0.185501, 0.961615,
		0.037689, 0.979696, -0.196914,
		-0.978619, 0.076059, 0.191104,
		39.257915, 37.218590, 45.428551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878006, 37.792343, 45.542633>,  <39.942951, 37.165352, 45.294777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878006, 37.792343, 45.542633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541241, 37.613342, 45.663246>,  <39.339180, 37.505939, 45.735615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541241, 37.613342, 45.663246>,  <39.878006, 37.792343, 45.542633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541241, 37.613342, 45.663246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176497, 0.299685, 0.937570,
		-0.509932, 0.842572, -0.173325,
		-0.841913, -0.447506, 0.301530,
		39.288666, 37.479092, 45.753704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555962, 38.265182, 45.944462>,  <39.878006, 37.792343, 45.542633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555962, 38.265182, 45.944462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381641, 37.924103, 46.059692>,  <39.277050, 37.719456, 46.128830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.381641, 37.924103, 46.059692>,  <39.555962, 38.265182, 45.944462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381641, 37.924103, 46.059692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033579, 0.304440, 0.951939,
		-0.899418, 0.424526, -0.104041,
		-0.435797, -0.852698, 0.288074,
		39.250904, 37.668293, 46.146114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180702, 38.575771, 46.482677>,  <39.555962, 38.265182, 45.944462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180702, 38.575771, 46.482677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187027, 38.177326, 46.517323>,  <39.190823, 37.938259, 46.538109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187027, 38.177326, 46.517323>,  <39.180702, 38.575771, 46.482677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187027, 38.177326, 46.517323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090644, 0.087695, 0.992015,
		-0.995758, -0.007833, 0.091679,
		0.015811, -0.996116, 0.086613,
		39.191769, 37.878490, 46.543308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636597, 38.451637, 46.909740>,  <39.180702, 38.575771, 46.482677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636597, 38.451637, 46.909740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920265, 38.170635, 46.933651>,  <39.090466, 38.002033, 46.947998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920265, 38.170635, 46.933651>,  <38.636597, 38.451637, 46.909740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920265, 38.170635, 46.933651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094437, 0.178661, 0.979368,
		-0.698687, -0.688892, 0.193043,
		0.709168, -0.702502, 0.059772,
		39.133015, 37.959885, 46.951584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445633, 37.967228, 47.509872>,  <38.636597, 38.451637, 46.909740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445633, 37.967228, 47.509872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838917, 37.920673, 47.453663>,  <39.074886, 37.892742, 47.419937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838917, 37.920673, 47.453663>,  <38.445633, 37.967228, 47.509872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838917, 37.920673, 47.453663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169682, 0.300118, 0.938689,
		-0.067076, -0.946776, 0.314829,
		0.983213, -0.116384, -0.140520,
		39.133881, 37.885757, 47.411507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616295, 37.657040, 48.173943>,  <38.445633, 37.967228, 47.509872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616295, 37.657040, 48.173943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949276, 37.794502, 48.000076>,  <39.149063, 37.876980, 47.895756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949276, 37.794502, 48.000076>,  <38.616295, 37.657040, 48.173943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949276, 37.794502, 48.000076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358082, 0.264993, 0.895297,
		0.422856, -0.900932, 0.097537,
		0.832449, 0.343655, -0.434661,
		39.199009, 37.897598, 47.869678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118572, 37.389954, 48.556244>,  <38.616295, 37.657040, 48.173943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118572, 37.389954, 48.556244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297825, 37.698231, 48.375038>,  <39.405376, 37.883198, 48.266315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297825, 37.698231, 48.375038>,  <39.118572, 37.389954, 48.556244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297825, 37.698231, 48.375038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388088, 0.288788, 0.875208,
		0.805338, -0.568014, -0.169682,
		0.448128, 0.770689, -0.453011,
		39.432262, 37.929436, 48.239136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788086, 37.377258, 48.937065>,  <39.118572, 37.389954, 48.556244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788086, 37.377258, 48.937065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760563, 37.736603, 48.763527>,  <39.744049, 37.952209, 48.659405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760563, 37.736603, 48.763527>,  <39.788086, 37.377258, 48.937065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760563, 37.736603, 48.763527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183428, 0.438851, 0.879638,
		0.980622, -0.019053, -0.194981,
		-0.068808, 0.898358, -0.433842,
		39.739922, 38.006111, 48.633373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454155, 37.732948, 49.115383>,  <39.788086, 37.377258, 48.937065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454155, 37.732948, 49.115383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185219, 37.999405, 48.986252>,  <40.023857, 38.159279, 48.908772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185219, 37.999405, 48.986252>,  <40.454155, 37.732948, 49.115383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185219, 37.999405, 48.986252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110048, 0.521208, 0.846304,
		0.732020, 0.533475, -0.423735,
		-0.672336, 0.666143, -0.322827,
		39.983517, 38.199249, 48.889404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713139, 38.395382, 49.219604>,  <40.454155, 37.732948, 49.115383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713139, 38.395382, 49.219604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314949, 38.423954, 49.244698>,  <40.076035, 38.441097, 49.259754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314949, 38.423954, 49.244698>,  <40.713139, 38.395382, 49.219604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314949, 38.423954, 49.244698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090085, 0.497918, 0.862533,
		0.030371, 0.864278, -0.502097,
		-0.995471, 0.071427, 0.062736,
		40.016308, 38.445381, 49.263519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663425, 39.072266, 49.378941>,  <40.713139, 38.395382, 49.219604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663425, 39.072266, 49.378941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298313, 38.929920, 49.459137>,  <40.079247, 38.844513, 49.507256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298313, 38.929920, 49.459137>,  <40.663425, 39.072266, 49.378941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298313, 38.929920, 49.459137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025497, 0.539541, 0.841573,
		-0.407660, 0.763057, -0.501555,
		-0.912778, -0.355864, 0.200494,
		40.024479, 38.823162, 49.519283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082802, 39.639156, 49.383430>,  <40.663425, 39.072266, 49.378941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082802, 39.639156, 49.383430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016655, 39.329807, 49.628231>,  <39.976967, 39.144196, 49.775112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016655, 39.329807, 49.628231>,  <40.082802, 39.639156, 49.383430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016655, 39.329807, 49.628231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135237, 0.632464, 0.762692,
		-0.976917, 0.043356, -0.209175,
		-0.165363, -0.773375, 0.612002,
		39.967045, 39.097794, 49.811832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105545, 40.405132, 49.260914>,  <40.082802, 39.639156, 49.383430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105545, 40.405132, 49.260914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099106, 40.798065, 49.186337>,  <40.095242, 41.033825, 49.141590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099106, 40.798065, 49.186337>,  <40.105545, 40.405132, 49.260914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099106, 40.798065, 49.186337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836249, -0.115445, -0.536060,
		-0.548114, 0.147288, 0.823333,
		-0.016095, 0.982333, -0.186446,
		40.094276, 41.092766, 49.130402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422245, 40.605862, 49.235088>,  <40.105545, 40.405132, 49.260914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422245, 40.605862, 49.235088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612793, 40.881229, 49.016308>,  <39.727119, 41.046448, 48.885040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612793, 40.881229, 49.016308>,  <39.422245, 40.605862, 49.235088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612793, 40.881229, 49.016308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601381, -0.198701, -0.773860,
		-0.641418, 0.697568, 0.319346,
		0.476366, 0.688416, -0.546954,
		39.755703, 41.087753, 48.852222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839050, 40.934925, 48.797749>,  <39.422245, 40.605862, 49.235088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839050, 40.934925, 48.797749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167992, 41.053467, 48.603462>,  <39.365356, 41.124592, 48.486893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167992, 41.053467, 48.603462>,  <38.839050, 40.934925, 48.797749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167992, 41.053467, 48.603462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395332, -0.316346, -0.862344,
		-0.409212, 0.901165, -0.142988,
		0.822349, 0.296354, -0.485712,
		39.414696, 41.142372, 48.457748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540413, 41.251572, 48.226391>,  <38.839050, 40.934925, 48.797749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540413, 41.251572, 48.226391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920593, 41.167702, 48.134583>,  <39.148701, 41.117378, 48.079498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920593, 41.167702, 48.134583>,  <38.540413, 41.251572, 48.226391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920593, 41.167702, 48.134583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278952, -0.249301, -0.927381,
		0.137227, 0.945455, -0.295437,
		0.950450, -0.209674, -0.229525,
		39.205727, 41.104801, 48.065723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510799, 41.573658, 47.582951>,  <38.540413, 41.251572, 48.226391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510799, 41.573658, 47.582951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822109, 41.328457, 47.637375>,  <39.008896, 41.181335, 47.670029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822109, 41.328457, 47.637375>,  <38.510799, 41.573658, 47.582951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822109, 41.328457, 47.637375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083040, -0.315260, -0.945365,
		0.622406, 0.724457, -0.296263,
		0.778276, -0.613003, 0.136061,
		39.055592, 41.144554, 47.678192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913021, 41.651390, 46.957432>,  <38.510799, 41.573658, 47.582951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913021, 41.651390, 46.957432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006908, 41.301598, 47.127228>,  <39.063240, 41.091721, 47.229107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006908, 41.301598, 47.127228>,  <38.913021, 41.651390, 46.957432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006908, 41.301598, 47.127228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016410, -0.440193, -0.897753,
		0.971925, 0.203754, -0.117672,
		0.234719, -0.874480, 0.424491,
		39.077324, 41.039253, 47.254574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298130, 41.285397, 46.460316>,  <38.913021, 41.651390, 46.957432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298130, 41.285397, 46.460316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182129, 40.992294, 46.706558>,  <39.112530, 40.816433, 46.854305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182129, 40.992294, 46.706558>,  <39.298130, 41.285397, 46.460316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182129, 40.992294, 46.706558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202590, -0.581671, -0.787792,
		0.935339, -0.353175, 0.020235,
		-0.289998, -0.732753, 0.615609,
		39.095131, 40.772469, 46.891239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452126, 40.726208, 46.087238>,  <39.298130, 41.285397, 46.460316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452126, 40.726208, 46.087238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196732, 40.601398, 46.368656>,  <39.043495, 40.526512, 46.537506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196732, 40.601398, 46.368656>,  <39.452126, 40.726208, 46.087238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196732, 40.601398, 46.368656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325179, -0.719158, -0.614060,
		0.697560, -0.620849, 0.357711,
		-0.638490, -0.312024, 0.703543,
		39.005184, 40.507790, 46.579720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503933, 39.993820, 46.108280>,  <39.452126, 40.726208, 46.087238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503933, 39.993820, 46.108280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139965, 40.101517, 46.234486>,  <38.921585, 40.166134, 46.310211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139965, 40.101517, 46.234486>,  <39.503933, 39.993820, 46.108280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139965, 40.101517, 46.234486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409021, -0.456170, -0.790323,
		-0.068855, -0.848187, 0.525203,
		-0.909924, 0.269237, 0.315517,
		38.866989, 40.182289, 46.329140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170910, 39.292641, 46.127388>,  <39.503933, 39.993820, 46.108280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170910, 39.292641, 46.127388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904102, 39.589188, 46.097836>,  <38.744019, 39.767117, 46.080105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904102, 39.589188, 46.097836>,  <39.170910, 39.292641, 46.127388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904102, 39.589188, 46.097836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445957, -0.476724, -0.757533,
		-0.596836, -0.472336, 0.648602,
		-0.667015, 0.741372, -0.073885,
		38.703999, 39.811600, 46.075672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429489, 39.060959, 46.085613>,  <39.170910, 39.292641, 46.127388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429489, 39.060959, 46.085613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380196, 39.425617, 45.928783>,  <38.350620, 39.644413, 45.834686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380196, 39.425617, 45.928783>,  <38.429489, 39.060959, 46.085613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380196, 39.425617, 45.928783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478786, -0.400682, -0.781164,
		-0.869240, 0.091454, 0.485859,
		-0.123235, 0.911641, -0.392076,
		38.343224, 39.699108, 45.811161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812969, 39.003063, 45.729652>,  <38.429489, 39.060959, 46.085613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812969, 39.003063, 45.729652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983315, 39.331955, 45.578617>,  <38.085522, 39.529289, 45.487995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983315, 39.331955, 45.578617>,  <37.812969, 39.003063, 45.729652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983315, 39.331955, 45.578617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356011, -0.231386, -0.905382,
		-0.831801, 0.519999, 0.194183,
		0.425867, 0.822229, -0.377593,
		38.111076, 39.578625, 45.465340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371910, 39.132679, 45.289776>,  <37.812969, 39.003063, 45.729652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371910, 39.132679, 45.289776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710461, 39.317406, 45.183670>,  <37.913593, 39.428242, 45.120007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710461, 39.317406, 45.183670>,  <37.371910, 39.132679, 45.289776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710461, 39.317406, 45.183670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163073, -0.249419, -0.954566,
		-0.506998, 0.851184, -0.135793,
		0.846381, 0.461819, -0.265260,
		37.964375, 39.455952, 45.104092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192928, 39.438686, 44.643265>,  <37.371910, 39.132679, 45.289776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192928, 39.438686, 44.643265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591164, 39.409317, 44.666634>,  <37.830105, 39.391697, 44.680656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591164, 39.409317, 44.666634>,  <37.192928, 39.438686, 44.643265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591164, 39.409317, 44.666634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045172, -0.170729, -0.984282,
		0.082244, 0.982579, -0.166659,
		0.995588, -0.073423, 0.058427,
		37.889839, 39.387291, 44.684162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356636, 39.948353, 44.174732>,  <37.192928, 39.438686, 44.643265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356636, 39.948353, 44.174732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658634, 39.688633, 44.211357>,  <37.839832, 39.532799, 44.233330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658634, 39.688633, 44.211357>,  <37.356636, 39.948353, 44.174732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658634, 39.688633, 44.211357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042860, -0.188199, -0.981195,
		0.654325, 0.736876, -0.169919,
		0.754998, -0.649303, 0.091561,
		37.885132, 39.493843, 44.238827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818504, 40.183620, 43.582863>,  <37.356636, 39.948353, 44.174732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818504, 40.183620, 43.582863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940655, 39.812759, 43.669704>,  <38.013947, 39.590244, 43.721809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940655, 39.812759, 43.669704>,  <37.818504, 40.183620, 43.582863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940655, 39.812759, 43.669704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089788, -0.198942, -0.975889,
		0.947988, 0.317509, 0.022495,
		0.305379, -0.927151, 0.217103,
		38.032269, 39.534615, 43.734837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377769, 40.084259, 43.129082>,  <37.818504, 40.183620, 43.582863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377769, 40.084259, 43.129082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274944, 39.713657, 43.238991>,  <38.213249, 39.491295, 43.304935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274944, 39.713657, 43.238991>,  <38.377769, 40.084259, 43.129082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274944, 39.713657, 43.238991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100648, -0.308450, -0.945901,
		0.961140, -0.215499, 0.172542,
		-0.257061, -0.926509, 0.274774,
		38.197826, 39.435703, 43.321423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957932, 39.665588, 42.885128>,  <38.377769, 40.084259, 43.129082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957932, 39.665588, 42.885128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651875, 39.412834, 42.934555>,  <38.468239, 39.261181, 42.964211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651875, 39.412834, 42.934555>,  <38.957932, 39.665588, 42.885128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651875, 39.412834, 42.934555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031464, -0.154998, -0.987414,
		0.643087, -0.759404, 0.098715,
		-0.765147, -0.631887, 0.123571,
		38.422329, 39.223267, 42.971626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082699, 39.088890, 42.459400>,  <38.957932, 39.665588, 42.885128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082699, 39.088890, 42.459400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688183, 39.097427, 42.524857>,  <38.451473, 39.102551, 42.564129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688183, 39.097427, 42.524857>,  <39.082699, 39.088890, 42.459400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688183, 39.097427, 42.524857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164122, -0.230435, -0.959147,
		0.017241, -0.972854, 0.230778,
		-0.986289, 0.021339, 0.163640,
		38.392296, 39.103828, 42.573948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850269, 38.473152, 42.138638>,  <39.082699, 39.088890, 42.459400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850269, 38.473152, 42.138638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540768, 38.723976, 42.174641>,  <38.355064, 38.874470, 42.196243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540768, 38.723976, 42.174641>,  <38.850269, 38.473152, 42.138638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540768, 38.723976, 42.174641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261569, -0.186847, -0.946927,
		-0.576961, -0.756232, 0.308593,
		-0.773756, 0.627058, 0.090003,
		38.308640, 38.912094, 42.201641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141102, 38.149857, 41.902817>,  <38.850269, 38.473152, 42.138638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141102, 38.149857, 41.902817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086536, 38.545311, 41.877541>,  <38.053799, 38.782585, 41.862373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086536, 38.545311, 41.877541>,  <38.141102, 38.149857, 41.902817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086536, 38.545311, 41.877541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317554, -0.104057, -0.942513,
		-0.938377, -0.108503, 0.328140,
		-0.136410, 0.988635, -0.063189,
		38.045612, 38.841900, 41.858585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478786, 38.236507, 41.607258>,  <38.141102, 38.149857, 41.902817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478786, 38.236507, 41.607258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693310, 38.564507, 41.527279>,  <37.822025, 38.761307, 41.479294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693310, 38.564507, 41.527279>,  <37.478786, 38.236507, 41.607258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693310, 38.564507, 41.527279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246451, -0.074428, -0.966293,
		-0.807239, 0.567508, 0.162173,
		0.536309, 0.819997, -0.199944,
		37.854202, 38.810505, 41.467297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128788, 38.375156, 41.034397>,  <37.478786, 38.236507, 41.607258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128788, 38.375156, 41.034397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431553, 38.636543, 41.031261>,  <37.613213, 38.793377, 41.029381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431553, 38.636543, 41.031261>,  <37.128788, 38.375156, 41.034397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431553, 38.636543, 41.031261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152715, 0.165197, -0.974365,
		-0.635419, 0.738710, 0.224834,
		0.756915, 0.653466, -0.007843,
		37.658627, 38.832584, 41.028908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984982, 38.763870, 40.453106>,  <37.128788, 38.375156, 41.034397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984982, 38.763870, 40.453106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365471, 38.855865, 40.535358>,  <37.593765, 38.911060, 40.584709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365471, 38.855865, 40.535358>,  <36.984982, 38.763870, 40.453106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365471, 38.855865, 40.535358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158801, 0.206429, -0.965489,
		-0.264496, 0.951049, 0.159838,
		0.951222, 0.229985, 0.205627,
		37.650837, 38.924862, 40.597046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116772, 39.430340, 40.165913>,  <36.984982, 38.763870, 40.453106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116772, 39.430340, 40.165913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464539, 39.239059, 40.215618>,  <37.673199, 39.124290, 40.245441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464539, 39.239059, 40.215618>,  <37.116772, 39.430340, 40.165913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464539, 39.239059, 40.215618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331353, 0.377778, -0.864574,
		0.366495, 0.792850, 0.486899,
		0.869417, -0.478198, 0.124260,
		37.725365, 39.095600, 40.252895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587078, 39.848465, 39.854546>,  <37.116772, 39.430340, 40.165913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587078, 39.848465, 39.854546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768505, 39.493221, 39.884312>,  <37.877361, 39.280075, 39.902172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768505, 39.493221, 39.884312>,  <37.587078, 39.848465, 39.854546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768505, 39.493221, 39.884312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511230, 0.190875, -0.837980,
		0.730014, 0.418125, 0.540603,
		0.453568, -0.888110, 0.074416,
		37.904575, 39.226788, 39.906635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329464, 39.951084, 39.626858>,  <37.587078, 39.848465, 39.854546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329464, 39.951084, 39.626858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257713, 39.560280, 39.580780>,  <38.214661, 39.325798, 39.553135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257713, 39.560280, 39.580780>,  <38.329464, 39.951084, 39.626858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257713, 39.560280, 39.580780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398477, 0.034896, -0.916514,
		0.899466, -0.210305, 0.383057,
		-0.179380, -0.977013, -0.115190,
		38.203899, 39.267178, 39.546223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902081, 39.744614, 39.357727>,  <38.329464, 39.951084, 39.626858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902081, 39.744614, 39.357727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606491, 39.488674, 39.273335>,  <38.429138, 39.335110, 39.222698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606491, 39.488674, 39.273335>,  <38.902081, 39.744614, 39.357727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606491, 39.488674, 39.273335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231491, 0.052951, -0.971395,
		0.632716, -0.766676, 0.108989,
		-0.738974, -0.639847, -0.210981,
		38.384800, 39.296719, 39.210041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222107, 39.345982, 38.900124>,  <38.902081, 39.744614, 39.357727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222107, 39.345982, 38.900124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837196, 39.254879, 38.840591>,  <38.606251, 39.200218, 38.804874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837196, 39.254879, 38.840591>,  <39.222107, 39.345982, 38.900124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837196, 39.254879, 38.840591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204028, -0.242196, -0.948533,
		0.179993, -0.943115, 0.279528,
		-0.962276, -0.227760, -0.148828,
		38.548515, 39.186550, 38.795944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262920, 38.800644, 38.430222>,  <39.222107, 39.345982, 38.900124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262920, 38.800644, 38.430222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878090, 38.904613, 38.397102>,  <38.647194, 38.966995, 38.377232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878090, 38.904613, 38.397102>,  <39.262920, 38.800644, 38.430222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878090, 38.904613, 38.397102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062353, -0.085952, -0.994346,
		-0.265568, -0.961797, 0.066486,
		-0.962073, 0.259921, -0.082797,
		38.589466, 38.982590, 38.372265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917400, 38.334835, 37.969101>,  <39.262920, 38.800644, 38.430222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917400, 38.334835, 37.969101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683296, 38.659168, 37.967236>,  <38.542835, 38.853767, 37.966118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683296, 38.659168, 37.967236>,  <38.917400, 38.334835, 37.969101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683296, 38.659168, 37.967236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025831, 0.012901, -0.999583,
		-0.810435, -0.585135, -0.028496,
		-0.585259, 0.810833, -0.004659,
		38.507717, 38.902420, 37.965839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468620, 38.149578, 37.456860>,  <38.917400, 38.334835, 37.969101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468620, 38.149578, 37.456860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444660, 38.545471, 37.508770>,  <38.430286, 38.783009, 37.539917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444660, 38.545471, 37.508770>,  <38.468620, 38.149578, 37.456860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444660, 38.545471, 37.508770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250520, 0.110941, -0.961734,
		-0.966257, -0.090114, 0.241303,
		-0.059896, 0.989733, 0.129773,
		38.426693, 38.842392, 37.547703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784237, 38.334976, 37.118801>,  <38.468620, 38.149578, 37.456860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784237, 38.334976, 37.118801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984436, 38.680176, 37.146351>,  <38.104553, 38.887295, 37.162880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984436, 38.680176, 37.146351>,  <37.784237, 38.334976, 37.118801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984436, 38.680176, 37.146351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223123, 0.205450, -0.952894,
		-0.836493, 0.461551, 0.295381,
		0.500495, 0.862995, 0.068875,
		38.134586, 38.939075, 37.167015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309525, 38.844563, 36.739643>,  <37.784237, 38.334976, 37.118801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309525, 38.844563, 36.739643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684326, 38.984245, 36.743061>,  <37.909206, 39.068054, 36.745110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684326, 38.984245, 36.743061>,  <37.309525, 38.844563, 36.739643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684326, 38.984245, 36.743061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106214, 0.308124, -0.945399,
		-0.332768, 0.884939, 0.325804,
		0.937008, 0.349203, 0.008541,
		37.965427, 39.089005, 36.745625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199352, 39.432552, 36.363743>,  <37.309525, 38.844563, 36.739643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199352, 39.432552, 36.363743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597012, 39.398220, 36.389980>,  <37.835606, 39.377621, 36.405724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597012, 39.398220, 36.389980>,  <37.199352, 39.432552, 36.363743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597012, 39.398220, 36.389980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099833, 0.498059, -0.861377,
		0.041260, 0.862885, 0.503713,
		0.994148, -0.085828, 0.065594,
		37.895256, 39.372471, 36.409660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435982, 39.986813, 36.166019>,  <37.199352, 39.432552, 36.363743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435982, 39.986813, 36.166019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788708, 39.811554, 36.096245>,  <38.000343, 39.706398, 36.054379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788708, 39.811554, 36.096245>,  <37.435982, 39.986813, 36.166019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788708, 39.811554, 36.096245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048904, 0.452854, -0.890243,
		0.469050, 0.776500, 0.420761,
		0.881816, -0.438146, -0.174437,
		38.053253, 39.680111, 36.043915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928459, 40.498055, 36.083393>,  <37.435982, 39.986813, 36.166019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928459, 40.498055, 36.083393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074390, 40.168240, 35.910404>,  <38.161949, 39.970348, 35.806610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074390, 40.168240, 35.910404>,  <37.928459, 40.498055, 36.083393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074390, 40.168240, 35.910404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047129, 0.447534, -0.893024,
		0.929879, 0.346186, 0.124415,
		0.364833, -0.824541, -0.432468,
		38.183842, 39.920876, 35.780663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528038, 40.697445, 35.710091>,  <37.928459, 40.498055, 36.083393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528038, 40.697445, 35.710091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445194, 40.340519, 35.549652>,  <38.395489, 40.126362, 35.453388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445194, 40.340519, 35.549652>,  <38.528038, 40.697445, 35.710091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445194, 40.340519, 35.549652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174551, 0.369699, -0.912609,
		0.962620, -0.259021, 0.079187,
		-0.207109, -0.892318, -0.401092,
		38.383060, 40.072823, 35.429325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033634, 40.599846, 35.292446>,  <38.528038, 40.697445, 35.710091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033634, 40.599846, 35.292446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752148, 40.349598, 35.157761>,  <38.583256, 40.199448, 35.076950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752148, 40.349598, 35.157761>,  <39.033634, 40.599846, 35.292446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752148, 40.349598, 35.157761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044054, 0.434597, -0.899547,
		0.709110, -0.647863, -0.278273,
		-0.703720, -0.625619, -0.336718,
		38.541031, 40.161911, 35.056744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186451, 40.404774, 34.638626>,  <39.033634, 40.599846, 35.292446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186451, 40.404774, 34.638626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796867, 40.314339, 34.631821>,  <38.563118, 40.260078, 34.627739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796867, 40.314339, 34.631821>,  <39.186451, 40.404774, 34.638626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796867, 40.314339, 34.631821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107665, 0.527238, -0.842869,
		0.199532, -0.819088, -0.537850,
		-0.973959, -0.226087, -0.017014,
		38.504681, 40.246513, 34.626717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051876, 40.169888, 33.890476>,  <39.186451, 40.404774, 34.638626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051876, 40.169888, 33.890476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714634, 40.301918, 34.060287>,  <38.512287, 40.381138, 34.162174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714634, 40.301918, 34.060287>,  <39.051876, 40.169888, 33.890476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714634, 40.301918, 34.060287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126665, 0.645340, -0.753321,
		-0.522616, -0.688903, -0.502281,
		-0.843107, 0.330076, 0.424525,
		38.461700, 40.400940, 34.187645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451519, 39.768448, 34.459908>,  <39.051876, 40.169888, 33.890476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451519, 39.768448, 34.459908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798172, 39.894684, 34.614491>,  <40.006165, 39.970425, 34.707241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798172, 39.894684, 34.614491>,  <39.451519, 39.768448, 34.459908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798172, 39.894684, 34.614491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285562, -0.321426, 0.902851,
		0.409150, -0.892797, -0.188437,
		0.866632, 0.315592, 0.386460,
		40.058163, 39.989361, 34.730427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815781, 39.195648, 34.798985>,  <39.451519, 39.768448, 34.459908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815781, 39.195648, 34.798985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900444, 39.531216, 34.999554>,  <39.951244, 39.732555, 35.119896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900444, 39.531216, 34.999554>,  <39.815781, 39.195648, 34.798985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900444, 39.531216, 34.999554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191907, -0.467380, 0.862976,
		0.958317, -0.278885, 0.062066,
		0.211663, 0.838915, 0.501418,
		39.963943, 39.782890, 35.149979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365269, 39.071365, 35.353401>,  <39.815781, 39.195648, 34.798985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365269, 39.071365, 35.353401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083099, 39.337303, 35.451664>,  <39.913795, 39.496868, 35.510624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083099, 39.337303, 35.451664>,  <40.365269, 39.071365, 35.353401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083099, 39.337303, 35.451664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251333, -0.558711, 0.790363,
		0.662726, 0.495800, 0.561228,
		-0.705426, 0.664849, 0.245662,
		39.871471, 39.536758, 35.525364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513351, 39.266693, 36.009121>,  <40.365269, 39.071365, 35.353401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513351, 39.266693, 36.009121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119423, 39.305679, 35.951672>,  <39.883064, 39.329071, 35.917202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119423, 39.305679, 35.951672>,  <40.513351, 39.266693, 36.009121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119423, 39.305679, 35.951672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173053, -0.615328, 0.769041,
		-0.013425, 0.782223, 0.622854,
		-0.984821, 0.097463, -0.143626,
		39.823978, 39.334919, 35.908585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959076, 38.673168, 36.344414>,  <40.513351, 39.266693, 36.009121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959076, 38.673168, 36.344414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264301, 38.907841, 36.452885>,  <41.447437, 39.048645, 36.517967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264301, 38.907841, 36.452885>,  <40.959076, 38.673168, 36.344414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264301, 38.907841, 36.452885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234487, -0.139680, 0.962032,
		0.602285, -0.797680, 0.030985,
		0.763066, 0.586683, 0.271173,
		41.493221, 39.083847, 36.534237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266071, 38.277550, 36.920624>,  <40.959076, 38.673168, 36.344414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266071, 38.277550, 36.920624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308487, 38.675285, 36.923565>,  <41.333935, 38.913925, 36.925331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308487, 38.675285, 36.923565>,  <41.266071, 38.277550, 36.920624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308487, 38.675285, 36.923565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184989, 0.012457, 0.982662,
		0.977003, -0.105561, 0.185262,
		0.106039, 0.994335, 0.007357,
		41.340298, 38.973587, 36.925774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776463, 37.694809, 36.847984>,  <41.266071, 38.277550, 36.920624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776463, 37.694809, 36.847984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102020, 37.485435, 36.747112>,  <42.297356, 37.359810, 36.686588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.102020, 37.485435, 36.747112>,  <41.776463, 37.694809, 36.847984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102020, 37.485435, 36.747112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580830, 0.722019, 0.375932,
		-0.014699, -0.452440, 0.891673,
		0.813892, -0.523437, -0.252178,
		42.346188, 37.328403, 36.671459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142731, 37.859863, 37.313923>,  <41.776463, 37.694809, 36.847984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142731, 37.859863, 37.313923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395939, 37.714539, 37.040489>,  <42.547863, 37.627342, 36.876427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395939, 37.714539, 37.040489>,  <42.142731, 37.859863, 37.313923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395939, 37.714539, 37.040489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643520, 0.737804, 0.203782,
		0.430317, -0.568899, 0.700843,
		0.633016, -0.363316, -0.683588,
		42.585842, 37.605545, 36.835411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817955, 37.806225, 37.671574>,  <42.142731, 37.859863, 37.313923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817955, 37.806225, 37.671574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902077, 37.803093, 37.280533>,  <42.952549, 37.801212, 37.045906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.902077, 37.803093, 37.280533>,  <42.817955, 37.806225, 37.671574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902077, 37.803093, 37.280533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507103, 0.855801, 0.102230,
		0.835835, -0.517245, 0.183950,
		0.210302, -0.007834, -0.977605,
		42.965168, 37.800743, 36.987251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546303, 37.811771, 37.577385>,  <42.817955, 37.806225, 37.671574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546303, 37.811771, 37.577385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346195, 37.969376, 37.268970>,  <43.226131, 38.063938, 37.083923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.346195, 37.969376, 37.268970>,  <43.546303, 37.811771, 37.577385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346195, 37.969376, 37.268970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472065, 0.870601, 0.138599,
		0.725872, -0.294642, -0.621527,
		-0.500265, 0.394006, -0.771034,
		43.196117, 38.087578, 37.037659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080738, 38.257889, 37.158131>,  <43.546303, 37.811771, 37.577385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080738, 38.257889, 37.158131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726696, 38.393288, 37.030380>,  <43.514271, 38.474529, 36.953732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726696, 38.393288, 37.030380>,  <44.080738, 38.257889, 37.158131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726696, 38.393288, 37.030380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322755, 0.940888, 0.102757,
		0.335277, -0.012128, -0.942042,
		-0.885109, 0.338501, -0.319373,
		43.461163, 38.494839, 36.934570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222961, 38.887249, 36.865452>,  <44.080738, 38.257889, 37.158131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222961, 38.887249, 36.865452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826950, 38.923599, 36.908520>,  <43.589344, 38.945408, 36.934361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826950, 38.923599, 36.908520>,  <44.222961, 38.887249, 36.865452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826950, 38.923599, 36.908520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106080, 0.983707, 0.145147,
		-0.092724, 0.155121, -0.983534,
		-0.990025, 0.090875, 0.107668,
		43.529942, 38.950863, 36.940819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027367, 39.384403, 36.433582>,  <44.222961, 38.887249, 36.865452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027367, 39.384403, 36.433582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737141, 39.370361, 36.708485>,  <43.563004, 39.361935, 36.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737141, 39.370361, 36.708485>,  <44.027367, 39.384403, 36.433582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737141, 39.370361, 36.708485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121801, 0.976379, 0.178463,
		-0.677288, 0.213195, -0.704151,
		-0.725565, -0.035105, 0.687257,
		43.519470, 39.359829, 36.914661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709160, 39.992943, 36.313129>,  <44.027367, 39.384403, 36.433582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709160, 39.992943, 36.313129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594181, 39.890434, 36.682278>,  <43.525192, 39.828930, 36.903767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.594181, 39.890434, 36.682278>,  <43.709160, 39.992943, 36.313129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594181, 39.890434, 36.682278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055804, 0.957422, 0.283248,
		-0.956168, 0.132920, -0.260911,
		-0.287452, -0.256273, 0.922874,
		43.507946, 39.813553, 36.959141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250553, 40.635670, 36.606911>,  <43.709160, 39.992943, 36.313129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250553, 40.635670, 36.606911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360455, 40.418762, 36.924515>,  <43.426395, 40.288616, 37.115078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360455, 40.418762, 36.924515>,  <43.250553, 40.635670, 36.606911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360455, 40.418762, 36.924515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071297, 0.835010, 0.545596,
		-0.958868, -0.093292, 0.268082,
		0.274751, -0.542268, 0.794014,
		43.442879, 40.256081, 37.162720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770863, 40.807812, 37.192711>,  <43.250553, 40.635670, 36.606911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770863, 40.807812, 37.192711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117867, 40.659779, 37.325661>,  <43.326069, 40.570961, 37.405430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.117867, 40.659779, 37.325661>,  <42.770863, 40.807812, 37.192711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117867, 40.659779, 37.325661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121388, 0.805490, 0.580043,
		-0.482388, -0.462845, 0.743691,
		0.867506, -0.370081, 0.332375,
		43.378117, 40.548756, 37.425373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715317, 40.899963, 37.938019>,  <42.770863, 40.807812, 37.192711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715317, 40.899963, 37.938019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105930, 40.839397, 37.876766>,  <43.340298, 40.803059, 37.840015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105930, 40.839397, 37.876766>,  <42.715317, 40.899963, 37.938019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105930, 40.839397, 37.876766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214460, 0.748437, 0.627573,
		0.019583, -0.645689, 0.763349,
		0.976536, -0.151419, -0.153131,
		43.398891, 40.793972, 37.830826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012169, 40.866581, 38.558689>,  <42.715317, 40.899963, 37.938019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012169, 40.866581, 38.558689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314327, 40.948528, 38.309719>,  <43.495621, 40.997696, 38.160339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.314327, 40.948528, 38.309719>,  <43.012169, 40.866581, 38.558689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314327, 40.948528, 38.309719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292721, 0.744324, 0.600247,
		0.586251, -0.635620, 0.502292,
		0.755397, 0.204863, -0.622420,
		43.540947, 41.009987, 38.122993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607964, 41.069801, 39.016670>,  <43.012169, 40.866581, 38.558689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607964, 41.069801, 39.016670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675323, 41.222359, 38.653091>,  <43.715740, 41.313892, 38.434944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675323, 41.222359, 38.653091>,  <43.607964, 41.069801, 39.016670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675323, 41.222359, 38.653091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270304, 0.868899, 0.414670,
		0.947934, -0.315520, 0.043226,
		0.168396, 0.381396, -0.908945,
		43.725842, 41.336777, 38.380409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198586, 41.545799, 39.178383>,  <43.607964, 41.069801, 39.016670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198586, 41.545799, 39.178383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032490, 41.634350, 38.825436>,  <43.932835, 41.687481, 38.613667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032490, 41.634350, 38.825436>,  <44.198586, 41.545799, 39.178383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032490, 41.634350, 38.825436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169807, 0.971753, 0.163896,
		0.893726, -0.081776, -0.441098,
		-0.415235, 0.221380, -0.882366,
		43.907921, 41.700764, 38.560726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623791, 41.778667, 38.813519>,  <44.198586, 41.545799, 39.178383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623791, 41.778667, 38.813519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318741, 41.955132, 38.624294>,  <44.135712, 42.061008, 38.510761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318741, 41.955132, 38.624294>,  <44.623791, 41.778667, 38.813519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318741, 41.955132, 38.624294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409167, 0.895436, 0.175433,
		0.500989, -0.059771, -0.863387,
		-0.762622, 0.441159, -0.473060,
		44.089954, 42.087479, 38.482376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002762, 42.241856, 38.395382>,  <44.623791, 41.778667, 38.813519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002762, 42.241856, 38.395382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625404, 42.369949, 38.429947>,  <44.398991, 42.446804, 38.450687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625404, 42.369949, 38.429947>,  <45.002762, 42.241856, 38.395382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625404, 42.369949, 38.429947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313064, 0.945741, -0.086976,
		-0.109578, -0.054999, -0.992455,
		-0.943389, 0.320232, 0.086415,
		44.342388, 42.466019, 38.455872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892864, 42.627392, 37.759182>,  <45.002762, 42.241856, 38.395382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892864, 42.627392, 37.759182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619694, 42.736820, 38.030113>,  <44.455791, 42.802479, 38.192673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619694, 42.736820, 38.030113>,  <44.892864, 42.627392, 37.759182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619694, 42.736820, 38.030113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286289, 0.953284, -0.096372,
		-0.672046, 0.128095, -0.729346,
		-0.682929, 0.273570, 0.677323,
		44.414814, 42.818890, 38.233311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515526, 43.298092, 37.551392>,  <44.892864, 42.627392, 37.759182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515526, 43.298092, 37.551392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422710, 43.316814, 37.940022>,  <44.367020, 43.328049, 38.173203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422710, 43.316814, 37.940022>,  <44.515526, 43.298092, 37.551392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422710, 43.316814, 37.940022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221783, 0.975078, 0.005990,
		-0.947085, 0.216870, -0.236637,
		-0.232038, 0.046809, 0.971580,
		44.353100, 43.330856, 38.231495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122974, 43.879890, 37.630489>,  <44.515526, 43.298092, 37.551392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122974, 43.879890, 37.630489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288269, 43.801464, 37.986195>,  <44.387447, 43.754410, 38.199619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288269, 43.801464, 37.986195>,  <44.122974, 43.879890, 37.630489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288269, 43.801464, 37.986195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384759, 0.922688, 0.024638,
		-0.825345, 0.331971, 0.456729,
		0.413239, -0.196066, 0.889264,
		44.412239, 43.742645, 38.252975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061623, 44.509567, 38.021126>,  <44.122974, 43.879890, 37.630489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061623, 44.509567, 38.021126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343418, 44.295422, 38.207493>,  <44.512497, 44.166935, 38.319313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343418, 44.295422, 38.207493>,  <44.061623, 44.509567, 38.021126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343418, 44.295422, 38.207493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641078, 0.761682, -0.094129,
		-0.304488, 0.365003, 0.879806,
		0.704490, -0.535363, 0.465919,
		44.554764, 44.134811, 38.347267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208488, 44.901398, 38.667652>,  <44.061623, 44.509567, 38.021126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208488, 44.901398, 38.667652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526997, 44.663914, 38.621246>,  <44.718102, 44.521423, 38.593403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526997, 44.663914, 38.621246>,  <44.208488, 44.901398, 38.667652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526997, 44.663914, 38.621246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599412, 0.748484, 0.283686,
		-0.081594, -0.295430, 0.951874,
		0.796271, -0.593711, -0.116012,
		44.765877, 44.485802, 38.586441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446117, 45.152061, 39.158989>,  <44.208488, 44.901398, 38.667652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446117, 45.152061, 39.158989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725414, 44.970959, 38.937191>,  <44.892990, 44.862297, 38.804111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725414, 44.970959, 38.937191>,  <44.446117, 45.152061, 39.158989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725414, 44.970959, 38.937191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661900, 0.703362, 0.259171,
		0.272672, -0.547987, 0.790797,
		0.698239, -0.452760, -0.554499,
		44.934887, 44.835129, 38.770840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557495, 45.724991, 39.584602>,  <44.446117, 45.152061, 39.158989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557495, 45.724991, 39.584602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.859821, 45.857746, 39.358826>,  <45.041218, 45.937401, 39.223358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.859821, 45.857746, 39.358826>,  <44.557495, 45.724991, 39.584602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859821, 45.857746, 39.358826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571592, -0.754936, 0.321488,
		-0.319422, -0.565617, -0.760294,
		0.755812, 0.331888, -0.564446,
		45.086563, 45.957314, 39.189491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253021, 45.414482, 39.626369>,  <44.557495, 45.724991, 39.584602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253021, 45.414482, 39.626369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154602, 45.278713, 39.989525>,  <45.095551, 45.197254, 40.207417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154602, 45.278713, 39.989525>,  <45.253021, 45.414482, 39.626369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154602, 45.278713, 39.989525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750547, -0.659409, -0.043116,
		0.613301, 0.670802, 0.416997,
		-0.246049, -0.339419, 0.907885,
		45.080788, 45.176888, 40.261890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.805843, 45.529282, 40.091904>,  <45.253021, 45.414482, 39.626369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.805843, 45.529282, 40.091904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593643, 45.217125, 40.224304>,  <45.466324, 45.029831, 40.303745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593643, 45.217125, 40.224304>,  <45.805843, 45.529282, 40.091904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593643, 45.217125, 40.224304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819872, -0.571563, -0.033537,
		0.215359, 0.253585, 0.943035,
		-0.530500, -0.780391, 0.330999,
		45.434494, 44.983009, 40.323605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580246, 45.870770, 40.407761>,  <45.805843, 45.529282, 40.091904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580246, 45.870770, 40.407761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850094, 45.680145, 40.182278>,  <47.012005, 45.565769, 40.046986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.850094, 45.680145, 40.182278>,  <46.580246, 45.870770, 40.407761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850094, 45.680145, 40.182278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366513, -0.446627, 0.816206,
		-0.640743, -0.757239, -0.126639,
		0.674624, -0.476564, -0.563711,
		47.052483, 45.537178, 40.013165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550243, 45.204792, 40.420307>,  <46.580246, 45.870770, 40.407761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550243, 45.204792, 40.420307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928680, 45.261124, 40.303638>,  <47.155743, 45.294922, 40.233639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928680, 45.261124, 40.303638>,  <46.550243, 45.204792, 40.420307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.928680, 45.261124, 40.303638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302140, -0.708156, 0.638143,
		-0.116678, -0.691869, -0.712533,
		0.946096, 0.140827, -0.291667,
		47.212509, 45.303371, 40.216137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.186581, 44.904968, 40.842373>,  <46.550243, 45.204792, 40.420307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.186581, 44.904968, 40.842373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539097, 45.032177, 40.702553>,  <47.750607, 45.108501, 40.618660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.539097, 45.032177, 40.702553>,  <47.186581, 44.904968, 40.842373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.539097, 45.032177, 40.702553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050909, 0.671479, 0.739273,
		0.469816, -0.669312, 0.575581,
		0.881295, 0.318020, -0.349545,
		47.803486, 45.127583, 40.597691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.845612, 44.771851, 41.043854>,  <47.186581, 44.904968, 40.842373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.845612, 44.771851, 41.043854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.005795, 44.743061, 41.409248>,  <48.101902, 44.725788, 41.628487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.005795, 44.743061, 41.409248>,  <47.845612, 44.771851, 41.043854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.005795, 44.743061, 41.409248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308016, -0.928327, -0.208171,
		0.862997, 0.364731, -0.349583,
		0.400454, -0.071974, 0.913486,
		48.125931, 44.721470, 41.683292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.704445, 44.199120, 40.560280>,  <47.845612, 44.771851, 41.043854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.704445, 44.199120, 40.560280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395702, 44.131710, 40.805500>,  <47.210457, 44.091267, 40.952633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395702, 44.131710, 40.805500>,  <47.704445, 44.199120, 40.560280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.395702, 44.131710, 40.805500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011000, -0.967628, -0.252141,
		0.635698, -0.187874, 0.748726,
		-0.771859, -0.168521, 0.613053,
		47.164146, 44.081154, 40.989414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.800613, 43.525269, 40.831379>,  <47.704445, 44.199120, 40.560280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.800613, 43.525269, 40.831379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402134, 43.555511, 40.848709>,  <47.163048, 43.573658, 40.859108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.402134, 43.555511, 40.848709>,  <47.800613, 43.525269, 40.831379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402134, 43.555511, 40.848709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084943, -0.953491, -0.289205,
		0.019442, -0.291785, 0.956286,
		-0.996196, 0.075607, 0.043323,
		47.103275, 43.578194, 40.861706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399471, 42.957039, 41.321495>,  <47.800613, 43.525269, 40.831379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399471, 42.957039, 41.321495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166763, 43.099400, 41.028954>,  <47.027138, 43.184818, 40.853428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166763, 43.099400, 41.028954>,  <47.399471, 42.957039, 41.321495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.166763, 43.099400, 41.028954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217535, -0.934510, -0.281726,
		-0.783726, -0.004804, 0.621089,
		-0.581767, 0.355904, -0.731355,
		46.992233, 43.206169, 40.809547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916405, 42.432964, 41.205601>,  <47.399471, 42.957039, 41.321495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916405, 42.432964, 41.205601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.881786, 42.615112, 40.851166>,  <46.861015, 42.724400, 40.638504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.881786, 42.615112, 40.851166>,  <46.916405, 42.432964, 41.205601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.881786, 42.615112, 40.851166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437924, -0.816277, -0.376715,
		-0.894836, 0.355436, 0.270062,
		-0.086547, 0.455365, -0.886088,
		46.855824, 42.751720, 40.585339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175152, 42.377541, 40.962982>,  <46.916405, 42.432964, 41.205601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175152, 42.377541, 40.962982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401978, 42.415535, 40.635712>,  <46.538071, 42.438332, 40.439350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.401978, 42.415535, 40.635712>,  <46.175152, 42.377541, 40.962982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401978, 42.415535, 40.635712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585929, -0.651621, -0.481744,
		-0.578903, 0.752574, -0.313853,
		0.567061, 0.094987, -0.818180,
		46.572098, 42.444031, 40.390259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.719437, 42.273525, 40.514347>,  <46.175152, 42.377541, 40.962982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.719437, 42.273525, 40.514347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055748, 42.214237, 40.306068>,  <46.257534, 42.178665, 40.181103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055748, 42.214237, 40.306068>,  <45.719437, 42.273525, 40.514347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055748, 42.214237, 40.306068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440223, -0.746995, -0.498199,
		-0.315114, 0.648097, -0.693306,
		0.840778, -0.148220, -0.520696,
		46.307980, 42.169773, 40.149860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.489758, 42.245010, 39.774658>,  <45.719437, 42.273525, 40.514347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.489758, 42.245010, 39.774658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854729, 42.084534, 39.806965>,  <46.073711, 41.988247, 39.826351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854729, 42.084534, 39.806965>,  <45.489758, 42.245010, 39.774658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854729, 42.084534, 39.806965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297330, -0.785480, -0.542785,
		0.281207, 0.471235, -0.835979,
		0.912424, -0.401196, 0.080770,
		46.128456, 41.964176, 39.831196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.638279, 41.927895, 39.073265>,  <45.489758, 42.245010, 39.774658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.638279, 41.927895, 39.073265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877132, 41.745331, 39.337120>,  <46.020443, 41.635792, 39.495434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877132, 41.745331, 39.337120>,  <45.638279, 41.927895, 39.073265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877132, 41.745331, 39.337120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139488, -0.868900, -0.474927,
		0.789921, 0.191583, -0.582512,
		0.597133, -0.456409, 0.659639,
		46.056271, 41.608410, 39.535011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046017, 41.503948, 38.672379>,  <45.638279, 41.927895, 39.073265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046017, 41.503948, 38.672379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088234, 41.329033, 39.029621>,  <46.113564, 41.224083, 39.243965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.088234, 41.329033, 39.029621>,  <46.046017, 41.503948, 38.672379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.088234, 41.329033, 39.029621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106002, -0.888057, -0.447347,
		0.988749, 0.141886, -0.047376,
		0.105545, -0.437291, 0.893105,
		46.119896, 41.197845, 39.297554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569771, 41.029663, 38.514465>,  <46.046017, 41.503948, 38.672379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569771, 41.029663, 38.514465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389420, 40.896111, 38.845581>,  <46.281208, 40.815979, 39.044250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.389420, 40.896111, 38.845581>,  <46.569771, 41.029663, 38.514465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389420, 40.896111, 38.845581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010551, -0.925344, -0.378981,
		0.892522, -0.179609, 0.413697,
		-0.450880, -0.333884, 0.827785,
		46.254154, 40.795944, 39.093918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963081, 40.427723, 38.639923>,  <46.569771, 41.029663, 38.514465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963081, 40.427723, 38.639923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622234, 40.391834, 38.846165>,  <46.417725, 40.370300, 38.969910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622234, 40.391834, 38.846165>,  <46.963081, 40.427723, 38.639923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622234, 40.391834, 38.846165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067415, -0.958168, -0.278154,
		0.518988, -0.271780, 0.810424,
		-0.852119, -0.089724, 0.515600,
		46.366600, 40.364918, 39.000843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.980415, 39.736469, 38.874275>,  <46.963081, 40.427723, 38.639923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.980415, 39.736469, 38.874275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587986, 39.810349, 38.897522>,  <46.352528, 39.854675, 38.911472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587986, 39.810349, 38.897522>,  <46.980415, 39.736469, 38.874275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587986, 39.810349, 38.897522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192970, -0.957367, -0.214966,
		0.015938, -0.222113, 0.974891,
		-0.981075, 0.184698, 0.058119,
		46.293663, 39.865757, 38.914959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642929, 39.055595, 39.144539>,  <46.980415, 39.736469, 38.874275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642929, 39.055595, 39.144539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345081, 39.268734, 38.983734>,  <46.166374, 39.396618, 38.887253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345081, 39.268734, 38.983734>,  <46.642929, 39.055595, 39.144539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345081, 39.268734, 38.983734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399276, -0.838210, -0.371461,
		-0.534903, -0.116083, 0.836901,
		-0.744619, 0.532850, -0.402012,
		46.121696, 39.428589, 38.863132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040234, 38.803474, 39.444160>,  <46.642929, 39.055595, 39.144539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040234, 38.803474, 39.444160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948608, 38.983746, 39.099041>,  <45.893631, 39.091908, 38.891972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948608, 38.983746, 39.099041>,  <46.040234, 38.803474, 39.444160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948608, 38.983746, 39.099041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351234, -0.864918, -0.358541,
		-0.907834, 0.220913, 0.356418,
		-0.229067, 0.450682, -0.862795,
		45.879887, 39.118950, 38.840202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353687, 38.639355, 39.327953>,  <46.040234, 38.803474, 39.444160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353687, 38.639355, 39.327953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517029, 38.741463, 38.977390>,  <45.615032, 38.802727, 38.767052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517029, 38.741463, 38.977390>,  <45.353687, 38.639355, 39.327953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517029, 38.741463, 38.977390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370208, -0.831284, -0.414625,
		-0.834381, 0.493765, -0.244955,
		0.408355, 0.255271, -0.876404,
		45.639534, 38.818043, 38.714470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874821, 38.454662, 38.852451>,  <45.353687, 38.639355, 39.327953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874821, 38.454662, 38.852451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175049, 38.522415, 38.596966>,  <45.355186, 38.563068, 38.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175049, 38.522415, 38.596966>,  <44.874821, 38.454662, 38.852451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175049, 38.522415, 38.596966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318762, -0.753877, -0.574510,
		-0.578826, 0.634806, -0.511841,
		0.750567, 0.169386, -0.638715,
		45.400219, 38.573231, 38.405350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678822, 38.653908, 38.197483>,  <44.874821, 38.454662, 38.852451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678822, 38.653908, 38.197483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022854, 38.458229, 38.139595>,  <45.229275, 38.340824, 38.104862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022854, 38.458229, 38.139595>,  <44.678822, 38.653908, 38.197483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022854, 38.458229, 38.139595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497625, -0.742027, -0.449183,
		0.112355, 0.458350, -0.881642,
		0.860085, -0.489195, -0.144716,
		45.280880, 38.311470, 38.096180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690651, 38.535480, 37.501431>,  <44.678822, 38.653908, 38.197483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690651, 38.535480, 37.501431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956829, 38.281670, 37.658688>,  <45.116535, 38.129383, 37.753044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956829, 38.281670, 37.658688>,  <44.690651, 38.535480, 37.501431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956829, 38.281670, 37.658688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371278, -0.738275, -0.563118,
		0.647560, 0.228759, -0.726867,
		0.665446, -0.634523, 0.393144,
		45.156464, 38.091312, 37.776630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913578, 38.173286, 36.936298>,  <44.690651, 38.535480, 37.501431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913578, 38.173286, 36.936298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020199, 37.944324, 37.246475>,  <45.084171, 37.806950, 37.432579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020199, 37.944324, 37.246475>,  <44.913578, 38.173286, 36.936298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020199, 37.944324, 37.246475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314355, -0.812182, -0.491468,
		0.911115, -0.112761, -0.396427,
		0.266552, -0.572403, 0.775439,
		45.100166, 37.772602, 37.479107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365181, 37.595367, 36.649315>,  <44.913578, 38.173286, 36.936298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365181, 37.595367, 36.649315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263031, 37.477276, 37.017582>,  <45.201740, 37.406422, 37.238541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.263031, 37.477276, 37.017582>,  <45.365181, 37.595367, 36.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.263031, 37.477276, 37.017582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091414, -0.940601, -0.326977,
		0.962511, -0.167663, 0.213216,
		-0.255373, -0.295228, 0.920666,
		45.186420, 37.388706, 37.293781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806591, 37.066021, 36.817253>,  <45.365181, 37.595367, 36.649315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806591, 37.066021, 36.817253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453518, 37.024288, 37.000549>,  <45.241673, 36.999249, 37.110527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.453518, 37.024288, 37.000549>,  <45.806591, 37.066021, 36.817253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453518, 37.024288, 37.000549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118789, -0.893854, -0.432336,
		0.454704, -0.436050, 0.776598,
		-0.882685, -0.104334, 0.458237,
		45.188713, 36.992989, 37.138020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908360, 36.438320, 37.125816>,  <45.806591, 37.066021, 36.817253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908360, 36.438320, 37.125816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513985, 36.504379, 37.115520>,  <45.277359, 36.544014, 37.109341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.513985, 36.504379, 37.115520>,  <45.908360, 36.438320, 37.125816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513985, 36.504379, 37.115520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158612, -0.973038, -0.167451,
		-0.052702, -0.161012, 0.985544,
		-0.985933, 0.165144, -0.025742,
		45.218204, 36.553921, 37.107800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118759, 36.227531, 36.432358>,  <45.908360, 36.438320, 37.125816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118759, 36.227531, 36.432358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430668, 36.366058, 36.223736>,  <46.617813, 36.449173, 36.098564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430668, 36.366058, 36.223736>,  <46.118759, 36.227531, 36.432358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430668, 36.366058, 36.223736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203822, -0.928114, -0.311546,
		-0.591957, 0.136630, -0.794304,
		0.779772, 0.346318, -0.521555,
		46.664600, 36.469955, 36.067268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.082783, 36.157745, 35.694462>,  <46.118759, 36.227531, 36.432358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.082783, 36.157745, 35.694462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458153, 36.117119, 35.826546>,  <46.683376, 36.092743, 35.905796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458153, 36.117119, 35.826546>,  <46.082783, 36.157745, 35.694462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458153, 36.117119, 35.826546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061426, -0.891525, -0.448787,
		0.339969, 0.441438, -0.830394,
		0.938428, -0.101566, 0.330206,
		46.739681, 36.086651, 35.925606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.505672, 36.230297, 35.099407>,  <46.082783, 36.157745, 35.694462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.505672, 36.230297, 35.099407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642590, 36.011875, 35.405262>,  <46.724739, 35.880821, 35.588776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642590, 36.011875, 35.405262>,  <46.505672, 36.230297, 35.099407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642590, 36.011875, 35.405262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061044, -0.799148, -0.598026,
		0.937607, 0.251378, -0.240212,
		0.342296, -0.546050, 0.764632,
		46.745277, 35.848061, 35.634651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.195023, 36.119041, 35.122704>,  <46.505672, 36.230297, 35.099407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.195023, 36.119041, 35.122704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.002605, 35.813236, 35.294338>,  <46.887154, 35.629753, 35.397320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.002605, 35.813236, 35.294338>,  <47.195023, 36.119041, 35.122704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.002605, 35.813236, 35.294338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320477, -0.608908, -0.725621,
		0.816020, -0.211546, 0.537922,
		-0.481047, -0.764513, 0.429085,
		46.858292, 35.583881, 35.423065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631939, 35.623142, 34.815929>,  <47.195023, 36.119041, 35.122704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631939, 35.623142, 34.815929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612915, 35.265701, 34.637402>,  <47.601501, 35.051235, 34.530285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612915, 35.265701, 34.637402>,  <47.631939, 35.623142, 34.815929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612915, 35.265701, 34.637402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104972, 0.448826, -0.887432,
		0.993337, 0.004646, -0.115149,
		-0.047559, -0.893607, -0.446324,
		47.598648, 34.997620, 34.503506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.120476, 42.796967, 43.426090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.725025, 42.746727, 43.459175>,  <34.487755, 42.716583, 43.479027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.725025, 42.746727, 43.459175>,  <35.120476, 42.796967, 43.426090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725025, 42.746727, 43.459175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039822, -0.311705, -0.949344,
		0.145020, -0.941841, 0.303158,
		-0.988627, -0.125602, 0.082709,
		34.428436, 42.709045, 43.483990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004642, 42.327213, 42.965660>,  <35.120476, 42.796967, 43.426090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004642, 42.327213, 42.965660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635418, 42.459816, 43.043697>,  <34.413883, 42.539375, 43.090519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635418, 42.459816, 43.043697>,  <35.004642, 42.327213, 42.965660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635418, 42.459816, 43.043697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282619, -0.240459, -0.928604,
		-0.260941, -0.912290, 0.315652,
		-0.923058, 0.331520, 0.195085,
		34.358498, 42.559265, 43.102226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616661, 41.802475, 42.791553>,  <35.004642, 42.327213, 42.965660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616661, 41.802475, 42.791553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.362263, 42.111107, 42.786106>,  <34.209625, 42.296284, 42.782837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.362263, 42.111107, 42.786106>,  <34.616661, 41.802475, 42.791553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362263, 42.111107, 42.786106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182725, -0.167718, -0.968753,
		-0.749751, -0.613630, 0.247653,
		-0.635992, 0.771576, -0.013622,
		34.171467, 42.342579, 42.782021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994064, 41.498741, 42.487789>,  <34.616661, 41.802475, 42.791553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994064, 41.498741, 42.487789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984100, 41.897457, 42.457371>,  <33.978123, 42.136688, 42.439121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.984100, 41.897457, 42.457371>,  <33.994064, 41.498741, 42.487789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984100, 41.897457, 42.457371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507017, -0.078158, -0.858385,
		-0.861576, 0.017176, 0.507338,
		-0.024909, 0.996793, -0.076047,
		33.976627, 42.196495, 42.434555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324776, 41.608803, 42.271427>,  <33.994064, 41.498741, 42.487789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324776, 41.608803, 42.271427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540924, 41.929501, 42.169285>,  <33.670612, 42.121922, 42.108002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540924, 41.929501, 42.169285>,  <33.324776, 41.608803, 42.271427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540924, 41.929501, 42.169285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268605, -0.123234, -0.955335,
		-0.797404, 0.584822, 0.148761,
		0.540368, 0.801746, -0.255354,
		33.703033, 42.170025, 42.092678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909592, 41.939381, 41.789230>,  <33.324776, 41.608803, 42.271427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909592, 41.939381, 41.789230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.283844, 42.072124, 41.741131>,  <33.508396, 42.151772, 41.712269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.283844, 42.072124, 41.741131>,  <32.909592, 41.939381, 41.789230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283844, 42.072124, 41.741131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076036, -0.143194, -0.986769,
		-0.344685, 0.932398, -0.108744,
		0.935634, 0.331856, -0.120253,
		33.564533, 42.171680, 41.705055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929939, 42.407303, 41.136288>,  <32.909592, 41.939381, 41.789230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929939, 42.407303, 41.136288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.309528, 42.307423, 41.213337>,  <33.537281, 42.247494, 41.259567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.309528, 42.307423, 41.213337>,  <32.929939, 42.407303, 41.136288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309528, 42.307423, 41.213337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161661, -0.139282, -0.976968,
		0.270777, 0.958254, -0.091808,
		0.948971, -0.249699, 0.192626,
		33.594219, 42.232513, 41.271126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369572, 42.795303, 40.643242>,  <32.929939, 42.407303, 41.136288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369572, 42.795303, 40.643242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569000, 42.486038, 40.800034>,  <33.688656, 42.300480, 40.894108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569000, 42.486038, 40.800034>,  <33.369572, 42.795303, 40.643242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569000, 42.486038, 40.800034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380670, -0.210970, -0.900324,
		0.778792, 0.598089, 0.189136,
		0.498571, -0.773163, 0.391976,
		33.718571, 42.254089, 40.917625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992546, 42.854481, 40.313141>,  <33.369572, 42.795303, 40.643242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992546, 42.854481, 40.313141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988636, 42.480137, 40.454041>,  <33.986290, 42.255531, 40.538582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988636, 42.480137, 40.454041>,  <33.992546, 42.854481, 40.313141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988636, 42.480137, 40.454041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216970, -0.345859, -0.912856,
		0.976129, 0.067503, 0.206433,
		-0.009776, -0.935855, 0.352250,
		33.985703, 42.199379, 40.559715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622387, 42.510517, 40.022106>,  <33.992546, 42.854481, 40.313141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622387, 42.510517, 40.022106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.373199, 42.221519, 40.142052>,  <34.223686, 42.048122, 40.214020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.373199, 42.221519, 40.142052>,  <34.622387, 42.510517, 40.022106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373199, 42.221519, 40.142052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240457, -0.541640, -0.805485,
		0.744376, -0.429684, 0.511152,
		-0.622965, -0.722493, 0.299863,
		34.186310, 42.004772, 40.232010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988903, 41.882206, 39.900978>,  <34.622387, 42.510517, 40.022106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988903, 41.882206, 39.900978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.594734, 41.815563, 39.914692>,  <34.358231, 41.775578, 39.922920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.594734, 41.815563, 39.914692>,  <34.988903, 41.882206, 39.900978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594734, 41.815563, 39.914692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046660, -0.458562, -0.887437,
		0.163577, -0.872904, 0.459653,
		-0.985426, -0.166611, 0.034280,
		34.299107, 41.765579, 39.924976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966896, 41.210888, 39.663673>,  <34.988903, 41.882206, 39.900978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966896, 41.210888, 39.663673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.616638, 41.396534, 39.610245>,  <34.406483, 41.507923, 39.578186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.616638, 41.396534, 39.610245>,  <34.966896, 41.210888, 39.663673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616638, 41.396534, 39.610245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064218, -0.386008, -0.920258,
		-0.478669, -0.797240, 0.367810,
		-0.875644, 0.464119, -0.133573,
		34.353947, 41.535770, 39.570171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669643, 40.727650, 39.372059>,  <34.966896, 41.210888, 39.663673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669643, 40.727650, 39.372059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431755, 41.035179, 39.278065>,  <34.289021, 41.219696, 39.221668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431755, 41.035179, 39.278065>,  <34.669643, 40.727650, 39.372059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431755, 41.035179, 39.278065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016183, -0.280792, -0.959632,
		-0.803767, -0.574519, 0.154552,
		-0.594724, 0.768819, -0.234988,
		34.253338, 41.265823, 39.207569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089611, 40.421345, 39.051437>,  <34.669643, 40.727650, 39.372059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089611, 40.421345, 39.051437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066605, 40.806400, 38.945587>,  <34.052803, 41.037434, 38.882076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066605, 40.806400, 38.945587>,  <34.089611, 40.421345, 39.051437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066605, 40.806400, 38.945587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191447, -0.270775, -0.943413,
		-0.979816, -0.003599, 0.199867,
		-0.057514, 0.962636, -0.264621,
		34.049351, 41.095192, 38.866199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583996, 40.455345, 38.553188>,  <34.089611, 40.421345, 39.051437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583996, 40.455345, 38.553188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.784298, 40.795525, 38.488712>,  <33.904480, 40.999630, 38.450027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.784298, 40.795525, 38.488712>,  <33.583996, 40.455345, 38.553188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784298, 40.795525, 38.488712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029964, -0.169082, -0.985147,
		-0.865068, 0.498151, -0.059186,
		0.500759, 0.850446, -0.161194,
		33.934525, 41.050659, 38.440353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177513, 40.951710, 38.046131>,  <33.583996, 40.455345, 38.553188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177513, 40.951710, 38.046131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569630, 41.029854, 38.034363>,  <33.804901, 41.076740, 38.027302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569630, 41.029854, 38.034363>,  <33.177513, 40.951710, 38.046131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569630, 41.029854, 38.034363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029030, -0.004887, -0.999567,
		-0.195419, 0.980719, 0.000881,
		0.980290, 0.195360, -0.029425,
		33.863716, 41.088463, 38.025536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272484, 41.211552, 37.372192>,  <33.177513, 40.951710, 38.046131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272484, 41.211552, 37.372192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653111, 41.137386, 37.470284>,  <33.881489, 41.092888, 37.529137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.653111, 41.137386, 37.470284>,  <33.272484, 41.211552, 37.372192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653111, 41.137386, 37.470284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261718, 0.070046, -0.962599,
		0.161305, 0.980161, 0.115180,
		0.951570, -0.185416, 0.245227,
		33.938580, 41.081760, 37.543850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757252, 41.628429, 36.934460>,  <33.272484, 41.211552, 37.372192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757252, 41.628429, 36.934460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988949, 41.331291, 37.068722>,  <34.127968, 41.153008, 37.149277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988949, 41.331291, 37.068722>,  <33.757252, 41.628429, 36.934460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988949, 41.331291, 37.068722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378409, -0.119669, -0.917870,
		0.722002, 0.658682, 0.211782,
		0.579241, -0.742844, 0.335652,
		34.162720, 41.108437, 37.169418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381187, 41.729816, 36.659771>,  <33.757252, 41.628429, 36.934460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381187, 41.729816, 36.659771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389614, 41.342514, 36.759396>,  <34.394672, 41.110130, 36.819172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389614, 41.342514, 36.759396>,  <34.381187, 41.729816, 36.659771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389614, 41.342514, 36.759396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465901, -0.210905, -0.859334,
		0.884586, 0.134145, 0.446669,
		0.021070, -0.968258, 0.249062,
		34.395935, 41.052036, 36.834114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036579, 41.566078, 36.595711>,  <34.381187, 41.729816, 36.659771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036579, 41.566078, 36.595711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835529, 41.220669, 36.579220>,  <34.714897, 41.013424, 36.569324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.835529, 41.220669, 36.579220>,  <35.036579, 41.566078, 36.595711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835529, 41.220669, 36.579220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232828, -0.089289, -0.968410,
		0.832560, -0.496349, 0.245931,
		-0.502629, -0.863519, -0.041226,
		34.684742, 40.961613, 36.566853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472820, 41.016701, 36.312756>,  <35.036579, 41.566078, 36.595711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472820, 41.016701, 36.312756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106739, 40.869522, 36.247005>,  <34.887089, 40.781216, 36.207558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106739, 40.869522, 36.247005>,  <35.472820, 41.016701, 36.312756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106739, 40.869522, 36.247005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288234, -0.312602, -0.905097,
		0.281643, -0.875726, 0.392149,
		-0.915204, -0.367945, -0.164372,
		34.832176, 40.759140, 36.197693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503281, 40.346802, 36.112495>,  <35.472820, 41.016701, 36.312756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503281, 40.346802, 36.112495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192776, 40.543385, 35.954567>,  <35.006474, 40.661335, 35.859810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.192776, 40.543385, 35.954567>,  <35.503281, 40.346802, 36.112495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192776, 40.543385, 35.954567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339462, -0.201876, -0.918701,
		-0.531208, -0.847181, -0.010123,
		-0.776262, 0.491458, -0.394824,
		34.959896, 40.690823, 35.836121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715115, 40.545761, 35.399860>,  <35.503281, 40.346802, 36.112495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715115, 40.545761, 35.399860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957901, 40.836990, 35.272423>,  <36.103573, 41.011726, 35.195961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957901, 40.836990, 35.272423>,  <35.715115, 40.545761, 35.399860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957901, 40.836990, 35.272423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216319, 0.234398, 0.947768,
		0.764724, -0.644177, -0.015226,
		0.606962, 0.728074, -0.318597,
		36.139988, 41.055412, 35.176842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300945, 40.475124, 35.809498>,  <35.715115, 40.545761, 35.399860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300945, 40.475124, 35.809498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336380, 40.845245, 35.662003>,  <36.357639, 41.067318, 35.573505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336380, 40.845245, 35.662003>,  <36.300945, 40.475124, 35.809498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336380, 40.845245, 35.662003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482249, 0.284072, 0.828697,
		0.871543, -0.251236, -0.421061,
		0.088587, 0.925302, -0.368739,
		36.362957, 41.122837, 35.551380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064537, 40.679550, 35.921829>,  <36.300945, 40.475124, 35.809498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064537, 40.679550, 35.921829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863403, 41.019478, 35.858635>,  <36.742722, 41.223434, 35.820717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.863403, 41.019478, 35.858635>,  <37.064537, 40.679550, 35.921829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863403, 41.019478, 35.858635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490994, 0.431237, 0.756941,
		0.711396, 0.303044, -0.634098,
		-0.502833, 0.849823, -0.157987,
		36.712555, 41.274426, 35.811237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552105, 41.313023, 35.933434>,  <37.064537, 40.679550, 35.921829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552105, 41.313023, 35.933434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180309, 41.436371, 36.014381>,  <36.957233, 41.510380, 36.062950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180309, 41.436371, 36.014381>,  <37.552105, 41.313023, 35.933434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180309, 41.436371, 36.014381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348388, 0.553795, 0.756265,
		0.121140, 0.773444, -0.622181,
		-0.929490, 0.308374, 0.202372,
		36.901463, 41.528885, 36.075092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609440, 41.992455, 36.155453>,  <37.552105, 41.313023, 35.933434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609440, 41.992455, 36.155453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248142, 41.892868, 36.295261>,  <37.031364, 41.833115, 36.379147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248142, 41.892868, 36.295261>,  <37.609440, 41.992455, 36.155453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248142, 41.892868, 36.295261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115975, 0.642562, 0.757406,
		-0.413161, 0.724657, -0.551516,
		-0.903243, -0.248969, 0.349524,
		36.977169, 41.818176, 36.400120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320576, 42.673996, 36.303276>,  <37.609440, 41.992455, 36.155453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320576, 42.673996, 36.303276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139286, 42.402267, 36.534142>,  <37.030514, 42.239231, 36.672661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.139286, 42.402267, 36.534142>,  <37.320576, 42.673996, 36.303276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139286, 42.402267, 36.534142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221129, 0.541560, 0.811058,
		-0.863536, 0.495215, -0.095229,
		-0.453220, -0.679320, 0.577162,
		37.003319, 42.198471, 36.707291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000748, 43.017040, 36.905964>,  <37.320576, 42.673996, 36.303276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000748, 43.017040, 36.905964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965740, 42.644714, 37.047905>,  <36.944736, 42.421318, 37.133068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965740, 42.644714, 37.047905>,  <37.000748, 43.017040, 36.905964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965740, 42.644714, 37.047905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101147, 0.346072, 0.932740,
		-0.991015, 0.117520, 0.063863,
		-0.087515, -0.930818, 0.354849,
		36.939487, 42.365467, 37.154358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601608, 43.036968, 37.582676>,  <37.000748, 43.017040, 36.905964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601608, 43.036968, 37.582676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695225, 42.652386, 37.640392>,  <36.751392, 42.421635, 37.675022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.695225, 42.652386, 37.640392>,  <36.601608, 43.036968, 37.582676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695225, 42.652386, 37.640392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100505, 0.171547, 0.980036,
		-0.967019, -0.214862, 0.136779,
		0.234037, -0.961460, 0.144294,
		36.765434, 42.363949, 37.683681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201973, 42.836540, 38.232552>,  <36.601608, 43.036968, 37.582676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201973, 42.836540, 38.232552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509922, 42.586460, 38.181297>,  <36.694691, 42.436413, 38.150543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.509922, 42.586460, 38.181297>,  <36.201973, 42.836540, 38.232552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509922, 42.586460, 38.181297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147367, -0.021197, 0.988855,
		-0.620946, -0.780178, 0.075815,
		0.769876, -0.625198, -0.128135,
		36.740887, 42.398899, 38.142857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115566, 42.170021, 38.594902>,  <36.201973, 42.836540, 38.232552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115566, 42.170021, 38.594902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510662, 42.201237, 38.540821>,  <36.747719, 42.219967, 38.508373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.510662, 42.201237, 38.540821>,  <36.115566, 42.170021, 38.594902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510662, 42.201237, 38.540821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129615, 0.072676, 0.988897,
		0.087012, -0.994297, 0.061668,
		0.987740, 0.078052, -0.135199,
		36.806984, 42.224651, 38.500263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392410, 41.845596, 39.112583>,  <36.115566, 42.170021, 38.594902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392410, 41.845596, 39.112583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684029, 42.088776, 38.986790>,  <36.858997, 42.234684, 38.911312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684029, 42.088776, 38.986790>,  <36.392410, 41.845596, 39.112583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684029, 42.088776, 38.986790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213371, 0.234701, 0.948361,
		0.650362, -0.758496, 0.041389,
		0.729042, 0.607947, -0.314482,
		36.902740, 42.271160, 38.892445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035885, 41.647869, 39.382805>,  <36.392410, 41.845596, 39.112583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035885, 41.647869, 39.382805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057106, 42.041363, 39.314156>,  <37.069839, 42.277458, 39.272968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057106, 42.041363, 39.314156>,  <37.035885, 41.647869, 39.382805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057106, 42.041363, 39.314156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257601, 0.152564, 0.954131,
		0.964794, -0.094830, -0.245317,
		0.053054, 0.983733, -0.171621,
		37.073021, 42.336483, 39.262669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617779, 41.786640, 39.732635>,  <37.035885, 41.647869, 39.382805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617779, 41.786640, 39.732635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410427, 42.127510, 39.704124>,  <37.286015, 42.332031, 39.687016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410427, 42.127510, 39.704124>,  <37.617779, 41.786640, 39.732635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410427, 42.127510, 39.704124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316383, 0.268560, 0.909822,
		0.794470, 0.449083, -0.408830,
		-0.518381, 0.852174, -0.071281,
		37.254913, 42.383163, 39.682739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054810, 42.281292, 40.085564>,  <37.617779, 41.786640, 39.732635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054810, 42.281292, 40.085564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.722004, 42.501472, 40.057987>,  <37.522320, 42.633579, 40.041439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.722004, 42.501472, 40.057987>,  <38.054810, 42.281292, 40.085564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722004, 42.501472, 40.057987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006419, 0.114717, 0.993377,
		0.554711, 0.826951, -0.091914,
		-0.832018, 0.550447, -0.068943,
		37.472397, 42.666607, 40.037304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186863, 42.862068, 40.408627>,  <38.054810, 42.281292, 40.085564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186863, 42.862068, 40.408627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788845, 42.824856, 40.422672>,  <37.550034, 42.802528, 40.431099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788845, 42.824856, 40.422672>,  <38.186863, 42.862068, 40.408627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788845, 42.824856, 40.422672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022986, 0.128413, 0.991454,
		-0.096742, 0.987348, -0.125638,
		-0.995044, -0.093028, 0.035118,
		37.490334, 42.796947, 40.433208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008160, 43.453911, 40.787239>,  <38.186863, 42.862068, 40.408627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008160, 43.453911, 40.787239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706711, 43.195034, 40.833195>,  <37.525841, 43.039707, 40.860767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706711, 43.195034, 40.833195>,  <38.008160, 43.453911, 40.787239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706711, 43.195034, 40.833195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195339, 0.387397, 0.900981,
		-0.627617, 0.656553, -0.418372,
		-0.753617, -0.647195, 0.114886,
		37.480625, 43.000874, 40.867661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399979, 43.848476, 41.123543>,  <38.008160, 43.453911, 40.787239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399979, 43.848476, 41.123543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337955, 43.462036, 41.206116>,  <37.300743, 43.230171, 41.255657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337955, 43.462036, 41.206116>,  <37.399979, 43.848476, 41.123543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337955, 43.462036, 41.206116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119767, 0.225800, 0.966784,
		-0.980619, 0.125185, -0.150719,
		-0.155059, -0.966097, 0.206431,
		37.291439, 43.172207, 41.268044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978333, 43.861328, 41.723671>,  <37.399979, 43.848476, 41.123543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978333, 43.861328, 41.723671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088295, 43.477360, 41.745522>,  <37.154274, 43.246979, 41.758633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088295, 43.477360, 41.745522>,  <36.978333, 43.861328, 41.723671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088295, 43.477360, 41.745522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124862, 0.020695, 0.991958,
		-0.953329, -0.279518, -0.114168,
		0.274907, -0.959917, 0.054631,
		37.170769, 43.189384, 41.761909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.379993, 43.496487, 41.882099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675041, 43.249115, 41.990517>,  <36.852070, 43.100693, 42.055565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.675041, 43.249115, 41.990517>,  <36.379993, 43.496487, 41.882099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675041, 43.249115, 41.990517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375039, -0.041440, 0.926083,
		-0.561487, -0.784745, -0.262503,
		0.737616, -0.618432, 0.271042,
		36.896328, 43.063583, 42.071831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110622, 42.998478, 42.229694>,  <36.379993, 43.496487, 41.882099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110622, 42.998478, 42.229694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493431, 42.987114, 42.345142>,  <36.723118, 42.980293, 42.414410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493431, 42.987114, 42.345142>,  <36.110622, 42.998478, 42.229694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493431, 42.987114, 42.345142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289849, -0.060449, 0.955161,
		-0.009688, -0.997767, -0.066085,
		0.957023, -0.028408, 0.288616,
		36.780537, 42.978588, 42.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188461, 42.358551, 42.690289>,  <36.110622, 42.998478, 42.229694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188461, 42.358551, 42.690289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492344, 42.608162, 42.763428>,  <36.674675, 42.757931, 42.807312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492344, 42.608162, 42.763428>,  <36.188461, 42.358551, 42.690289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492344, 42.608162, 42.763428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102759, -0.162448, 0.981352,
		0.642097, -0.764328, -0.059288,
		0.759706, 0.624031, 0.182849,
		36.720257, 42.795372, 42.818283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622993, 41.915127, 43.163139>,  <36.188461, 42.358551, 42.690289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622993, 41.915127, 43.163139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.689316, 42.301853, 43.240879>,  <36.729107, 42.533890, 43.287525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.689316, 42.301853, 43.240879>,  <36.622993, 41.915127, 43.163139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689316, 42.301853, 43.240879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229820, -0.153773, 0.961008,
		0.959006, -0.204004, 0.196698,
		0.165802, 0.966817, 0.194353,
		36.739056, 42.591900, 43.299187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885242, 41.863804, 43.805882>,  <36.622993, 41.915127, 43.163139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885242, 41.863804, 43.805882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811878, 42.252693, 43.747726>,  <36.767860, 42.486027, 43.712833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811878, 42.252693, 43.747726>,  <36.885242, 41.863804, 43.805882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811878, 42.252693, 43.747726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139926, 0.120570, 0.982794,
		0.973027, 0.200599, 0.113926,
		-0.183412, 0.972226, -0.145386,
		36.756855, 42.544361, 43.704109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362442, 42.249229, 44.283066>,  <36.885242, 41.863804, 43.805882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362442, 42.249229, 44.283066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079216, 42.518829, 44.198814>,  <36.909279, 42.680588, 44.148266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.079216, 42.518829, 44.198814>,  <37.362442, 42.249229, 44.283066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079216, 42.518829, 44.198814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072387, 0.227426, 0.971101,
		0.702425, 0.702851, -0.112244,
		-0.708067, 0.674001, -0.210627,
		36.866795, 42.721031, 44.135628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557083, 42.923420, 44.657501>,  <37.362442, 42.249229, 44.283066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557083, 42.923420, 44.657501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166679, 42.927258, 44.570499>,  <36.932438, 42.929562, 44.518299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166679, 42.927258, 44.570499>,  <37.557083, 42.923420, 44.657501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166679, 42.927258, 44.570499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198179, 0.374443, 0.905824,
		0.090132, 0.927200, -0.363560,
		-0.976013, 0.009593, -0.217501,
		36.873875, 42.930134, 44.505249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304268, 43.599514, 44.738407>,  <37.557083, 42.923420, 44.657501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304268, 43.599514, 44.738407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986195, 43.360859, 44.781685>,  <36.795349, 43.217667, 44.807652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986195, 43.360859, 44.781685>,  <37.304268, 43.599514, 44.738407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986195, 43.360859, 44.781685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207798, 0.435754, 0.875750,
		-0.569651, 0.673901, -0.470484,
		-0.795184, -0.596638, 0.108192,
		36.747639, 43.181870, 44.814144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958752, 43.984810, 45.112446>,  <37.304268, 43.599514, 44.738407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958752, 43.984810, 45.112446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.772106, 43.634472, 45.161709>,  <36.660118, 43.424271, 45.191265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.772106, 43.634472, 45.161709>,  <36.958752, 43.984810, 45.112446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772106, 43.634472, 45.161709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315367, 0.294850, 0.902002,
		-0.826325, 0.382049, -0.413794,
		-0.466616, -0.875844, 0.123156,
		36.632122, 43.371719, 45.198654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315845, 44.182217, 45.516926>,  <36.958752, 43.984810, 45.112446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315845, 44.182217, 45.516926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386608, 43.790684, 45.558083>,  <36.429066, 43.555763, 45.582779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.386608, 43.790684, 45.558083>,  <36.315845, 44.182217, 45.516926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386608, 43.790684, 45.558083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276803, 0.050844, 0.959581,
		-0.944501, -0.198241, -0.261950,
		0.176910, -0.978834, 0.102896,
		36.439682, 43.497032, 45.588951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787880, 43.972157, 45.889320>,  <36.315845, 44.182217, 45.516926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787880, 43.972157, 45.889320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094734, 43.722095, 45.946857>,  <36.278847, 43.572060, 45.981380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094734, 43.722095, 45.946857>,  <35.787880, 43.972157, 45.889320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094734, 43.722095, 45.946857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145485, 0.048838, 0.988154,
		-0.624769, -0.778976, -0.053484,
		0.767136, -0.625149, 0.143841,
		36.324875, 43.534550, 45.990009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520248, 43.595634, 46.460922>,  <35.787880, 43.972157, 45.889320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520248, 43.595634, 46.460922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914661, 43.531349, 46.443455>,  <36.151310, 43.492779, 46.432976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.914661, 43.531349, 46.443455>,  <35.520248, 43.595634, 46.460922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914661, 43.531349, 46.443455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063513, 0.120500, 0.990680,
		-0.153956, -0.979617, 0.129025,
		0.986034, -0.160716, -0.043667,
		36.210472, 43.483135, 46.430355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686501, 43.343029, 47.115139>,  <35.520248, 43.595634, 46.460922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686501, 43.343029, 47.115139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044788, 43.454903, 46.976887>,  <36.259762, 43.522026, 46.893936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.044788, 43.454903, 46.976887>,  <35.686501, 43.343029, 47.115139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044788, 43.454903, 46.976887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343050, 0.059802, 0.937412,
		0.282849, -0.958228, -0.042380,
		0.895720, 0.279684, -0.345635,
		36.313503, 43.538807, 46.873196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213757, 42.902885, 47.496712>,  <35.686501, 43.343029, 47.115139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213757, 42.902885, 47.496712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395592, 43.223312, 47.340946>,  <36.504692, 43.415569, 47.247486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.395592, 43.223312, 47.340946>,  <36.213757, 42.902885, 47.496712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395592, 43.223312, 47.340946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515990, 0.119520, 0.848215,
		0.726020, -0.586520, -0.359011,
		0.454586, 0.801067, -0.389413,
		36.531967, 43.463634, 47.224121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897057, 42.739708, 47.495445>,  <36.213757, 42.902885, 47.496712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897057, 42.739708, 47.495445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.877724, 43.139233, 47.493042>,  <36.866123, 43.378948, 47.491600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.877724, 43.139233, 47.493042>,  <36.897057, 42.739708, 47.495445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877724, 43.139233, 47.493042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578166, 0.032879, 0.815257,
		0.814487, 0.035930, -0.579069,
		-0.048332, 0.998813, -0.006006,
		36.863224, 43.438877, 47.491241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530754, 42.848557, 47.672417>,  <36.897057, 42.739708, 47.495445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530754, 42.848557, 47.672417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340477, 43.192642, 47.745903>,  <37.226311, 43.399094, 47.789993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340477, 43.192642, 47.745903>,  <37.530754, 42.848557, 47.672417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340477, 43.192642, 47.745903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601659, 0.165847, 0.781346,
		0.641653, 0.482217, -0.596446,
		-0.475697, 0.860210, 0.183714,
		37.197769, 43.450706, 47.801018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137283, 43.322903, 47.865028>,  <37.530754, 42.848557, 47.672417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137283, 43.322903, 47.865028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811119, 43.528358, 47.971821>,  <37.615421, 43.651630, 48.035896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811119, 43.528358, 47.971821>,  <38.137283, 43.322903, 47.865028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811119, 43.528358, 47.971821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475213, 0.330569, 0.815412,
		0.330569, 0.791771, -0.513637,
		-0.815412, 0.513637, 0.266983,
		37.566494, 43.682449, 48.051914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423153, 43.828339, 48.206585>,  <38.137283, 43.322903, 47.865028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423153, 43.828339, 48.206585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048534, 43.810612, 48.345680>,  <37.823765, 43.799976, 48.429138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.048534, 43.810612, 48.345680>,  <38.423153, 43.828339, 48.206585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048534, 43.810612, 48.345680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300743, 0.408117, 0.861971,
		-0.180115, 0.911854, -0.368892,
		-0.936543, -0.044313, 0.347741,
		37.767570, 43.797318, 48.450001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346695, 44.281422, 48.647022>,  <38.423153, 43.828339, 48.206585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346695, 44.281422, 48.647022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025917, 44.069214, 48.756886>,  <37.833450, 43.941891, 48.822803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025917, 44.069214, 48.756886>,  <38.346695, 44.281422, 48.647022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025917, 44.069214, 48.756886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343332, -0.033044, 0.938633,
		-0.488884, 0.847031, 0.208642,
		-0.801945, -0.530516, 0.274658,
		37.785332, 43.910061, 48.839283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115589, 44.603813, 49.348946>,  <38.346695, 44.281422, 48.647022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115589, 44.603813, 49.348946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959103, 44.237568, 49.311863>,  <37.865211, 44.017818, 49.289612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959103, 44.237568, 49.311863>,  <38.115589, 44.603813, 49.348946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959103, 44.237568, 49.311863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180463, -0.175108, 0.967869,
		-0.902431, 0.361918, 0.233740,
		-0.391219, -0.915616, -0.092711,
		37.841736, 43.962883, 49.284050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577312, 44.589844, 49.774555>,  <38.115589, 44.603813, 49.348946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577312, 44.589844, 49.774555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674377, 44.204166, 49.731770>,  <37.732616, 43.972759, 49.706100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674377, 44.204166, 49.731770>,  <37.577312, 44.589844, 49.774555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674377, 44.204166, 49.731770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062497, -0.094489, 0.993562,
		-0.968095, -0.247789, 0.037330,
		0.242666, -0.964195, -0.106961,
		37.747177, 43.914909, 49.699680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829597, 44.394707, 50.522575>,  <37.577312, 44.589844, 49.774555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829597, 44.394707, 50.522575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828865, 44.031876, 50.354191>,  <37.828426, 43.814178, 50.253162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828865, 44.031876, 50.354191>,  <37.829597, 44.394707, 50.522575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828865, 44.031876, 50.354191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067472, -0.420114, 0.904960,
		-0.997720, -0.026741, 0.061973,
		-0.001836, -0.907078, -0.420960,
		37.828316, 43.759754, 50.227901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465435, 43.884403, 51.055359>,  <37.829597, 44.394707, 50.522575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465435, 43.884403, 51.055359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663773, 43.661236, 50.789165>,  <37.782776, 43.527336, 50.629448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663773, 43.661236, 50.789165>,  <37.465435, 43.884403, 51.055359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663773, 43.661236, 50.789165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248262, -0.643270, 0.724271,
		-0.832171, -0.524338, -0.180449,
		0.495840, -0.557919, -0.665484,
		37.812527, 43.493862, 50.589520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788609, 43.910759, 50.798908>,  <37.465435, 43.884403, 51.055359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788609, 43.910759, 50.798908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598675, 43.779312, 51.125477>,  <36.484715, 43.700443, 51.321419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.598675, 43.779312, 51.125477>,  <36.788609, 43.910759, 50.798908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598675, 43.779312, 51.125477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591432, -0.567814, -0.572534,
		0.651720, -0.754716, 0.075262,
		-0.474836, -0.328620, 0.816419,
		36.456223, 43.680725, 51.370403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824341, 43.135918, 50.801899>,  <36.788609, 43.910759, 50.798908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824341, 43.135918, 50.801899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499172, 43.288471, 50.977943>,  <36.304070, 43.380005, 51.083572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499172, 43.288471, 50.977943>,  <36.824341, 43.135918, 50.801899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499172, 43.288471, 50.977943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568547, -0.356041, -0.741613,
		-0.126142, -0.853100, 0.506270,
		-0.812922, 0.381386, 0.440116,
		36.255295, 43.402889, 51.109978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341442, 42.666225, 50.806526>,  <36.824341, 43.135918, 50.801899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341442, 42.666225, 50.806526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115837, 42.994495, 50.843166>,  <35.980476, 43.191456, 50.865150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115837, 42.994495, 50.843166>,  <36.341442, 42.666225, 50.806526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115837, 42.994495, 50.843166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738915, -0.452050, -0.499655,
		-0.368645, -0.349496, 0.861367,
		-0.564009, 0.820672, 0.091602,
		35.946636, 43.240696, 50.870647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729652, 42.365231, 50.994698>,  <36.341442, 42.666225, 50.806526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729652, 42.365231, 50.994698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657158, 42.728634, 50.844093>,  <35.613659, 42.946678, 50.753731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657158, 42.728634, 50.844093>,  <35.729652, 42.365231, 50.994698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657158, 42.728634, 50.844093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554230, -0.410622, -0.724030,
		-0.812393, 0.077452, 0.577944,
		-0.181239, 0.908510, -0.376512,
		35.602787, 43.001186, 50.731140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076939, 42.314552, 50.686245>,  <35.729652, 42.365231, 50.994698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076939, 42.314552, 50.686245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206394, 42.633606, 50.482666>,  <35.284069, 42.825039, 50.360519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206394, 42.633606, 50.482666>,  <35.076939, 42.314552, 50.686245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206394, 42.633606, 50.482666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556313, -0.274692, -0.784258,
		-0.765359, 0.536953, 0.354835,
		0.323639, 0.797638, -0.508952,
		35.303486, 42.872898, 50.329979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508728, 42.447594, 50.277363>,  <35.076939, 42.314552, 50.686245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508728, 42.447594, 50.277363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815220, 42.645554, 50.113434>,  <34.999115, 42.764332, 50.015076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815220, 42.645554, 50.113434>,  <34.508728, 42.447594, 50.277363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815220, 42.645554, 50.113434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323212, -0.254388, -0.911493,
		-0.555355, 0.830878, -0.034962,
		0.766234, 0.494903, -0.409826,
		35.045090, 42.794025, 49.990486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120579, 42.765999, 49.724373>,  <34.508728, 42.447594, 50.277363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120579, 42.765999, 49.724373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504791, 42.788185, 49.615334>,  <34.735317, 42.801495, 49.549911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504791, 42.788185, 49.615334>,  <34.120579, 42.765999, 49.724373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504791, 42.788185, 49.615334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268371, -0.073238, -0.960528,
		-0.073238, 0.995771, -0.055462,
		0.960528, 0.055462, -0.272600,
		34.792950, 42.804825, 49.533554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194309, 43.179295, 49.085167>,  <34.120579, 42.765999, 49.724373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194309, 43.179295, 49.085167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.535625, 42.971554, 49.103771>,  <34.740417, 42.846909, 49.114933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.535625, 42.971554, 49.103771>,  <34.194309, 43.179295, 49.085167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535625, 42.971554, 49.103771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083959, -0.224874, -0.970764,
		0.514628, 0.824441, -0.235487,
		0.853293, -0.519354, 0.046507,
		34.791615, 42.815746, 49.117722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604187, 43.464516, 48.571674>,  <34.194309, 43.179295, 49.085167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604187, 43.464516, 48.571674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.707249, 43.080315, 48.613724>,  <34.769085, 42.849792, 48.638954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.707249, 43.080315, 48.613724>,  <34.604187, 43.464516, 48.571674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707249, 43.080315, 48.613724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080865, -0.129850, -0.988231,
		0.962848, 0.246118, -0.111127,
		0.257651, -0.960503, 0.105124,
		34.784542, 42.792164, 48.645260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156624, 43.258060, 48.081280>,  <34.604187, 43.464516, 48.571674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156624, 43.258060, 48.081280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029507, 42.896999, 48.197361>,  <34.953236, 42.680363, 48.267010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.029507, 42.896999, 48.197361>,  <35.156624, 43.258060, 48.081280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029507, 42.896999, 48.197361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002496, -0.305272, -0.952262,
		0.948155, -0.303350, 0.094762,
		-0.317797, -0.902656, 0.290203,
		34.934166, 42.626202, 48.284420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533852, 42.767868, 47.695240>,  <35.156624, 43.258060, 48.081280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533852, 42.767868, 47.695240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201569, 42.575768, 47.807865>,  <35.002197, 42.460506, 47.875439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.201569, 42.575768, 47.807865>,  <35.533852, 42.767868, 47.695240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201569, 42.575768, 47.807865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147532, -0.297765, -0.943170,
		0.536801, -0.825040, 0.176503,
		-0.830710, -0.480255, 0.281561,
		34.952354, 42.431690, 47.892334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610119, 42.100616, 47.509018>,  <35.533852, 42.767868, 47.695240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610119, 42.100616, 47.509018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218521, 42.181725, 47.517590>,  <34.983562, 42.230389, 47.522732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.218521, 42.181725, 47.517590>,  <35.610119, 42.100616, 47.509018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218521, 42.181725, 47.517590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057829, -0.175337, -0.982808,
		-0.195544, -0.963397, 0.183380,
		-0.978988, 0.202787, 0.021426,
		34.924824, 42.242558, 47.524017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312328, 41.538422, 47.138165>,  <35.610119, 42.100616, 47.509018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312328, 41.538422, 47.138165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040192, 41.831142, 47.122150>,  <34.876911, 42.006775, 47.112541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040192, 41.831142, 47.122150>,  <35.312328, 41.538422, 47.138165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040192, 41.831142, 47.122150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011742, -0.065504, -0.997783,
		-0.732801, -0.678363, 0.053158,
		-0.680341, 0.731801, -0.040036,
		34.836090, 42.050682, 47.110138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923782, 41.327560, 46.592491>,  <35.312328, 41.538422, 47.138165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923782, 41.327560, 46.592491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764549, 41.691677, 46.637928>,  <34.669010, 41.910149, 46.665192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764549, 41.691677, 46.637928>,  <34.923782, 41.327560, 46.592491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764549, 41.691677, 46.637928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169366, 0.048772, -0.984346,
		-0.901581, -0.411086, 0.134757,
		-0.398078, 0.910291, 0.113596,
		34.645126, 41.964764, 46.672009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176121, 41.438496, 46.237831>,  <34.923782, 41.327560, 46.592491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176121, 41.438496, 46.237831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322140, 41.809933, 46.264534>,  <34.409752, 42.032795, 46.280556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.322140, 41.809933, 46.264534>,  <34.176121, 41.438496, 46.237831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322140, 41.809933, 46.264534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196648, 0.147001, -0.969392,
		-0.909984, 0.340745, 0.236268,
		0.365047, 0.928592, 0.066761,
		34.431652, 42.088509, 46.284561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695866, 41.783886, 45.896488>,  <34.176121, 41.438496, 46.237831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695866, 41.783886, 45.896488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009151, 42.032036, 45.879910>,  <34.197121, 42.180923, 45.869961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.009151, 42.032036, 45.879910>,  <33.695866, 41.783886, 45.896488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009151, 42.032036, 45.879910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275858, 0.286977, -0.917359,
		-0.557209, 0.729920, 0.395898,
		0.783212, 0.620372, -0.041448,
		34.244114, 42.218147, 45.867474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399834, 42.444042, 45.562035>,  <33.695866, 41.783886, 45.896488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399834, 42.444042, 45.562035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799156, 42.449963, 45.539497>,  <34.038750, 42.453514, 45.525974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.799156, 42.449963, 45.539497>,  <33.399834, 42.444042, 45.562035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799156, 42.449963, 45.539497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058140, 0.314957, -0.947323,
		0.003725, 0.948991, 0.315283,
		0.998302, 0.014801, -0.056347,
		34.098648, 42.454403, 45.522594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561687, 43.140202, 45.364128>,  <33.399834, 42.444042, 45.562035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561687, 43.140202, 45.364128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870796, 42.914650, 45.247604>,  <34.056259, 42.779320, 45.177689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870796, 42.914650, 45.247604>,  <33.561687, 43.140202, 45.364128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870796, 42.914650, 45.247604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028408, 0.489258, -0.871676,
		0.634050, 0.665329, 0.394103,
		0.772770, -0.563882, -0.291313,
		34.102627, 42.745487, 45.160210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175358, 43.542492, 45.051781>,  <33.561687, 43.140202, 45.364128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175358, 43.542492, 45.051781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.212715, 43.172497, 44.904446>,  <34.235130, 42.950500, 44.816044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.212715, 43.172497, 44.904446>,  <34.175358, 43.542492, 45.051781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212715, 43.172497, 44.904446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277217, 0.379484, -0.882690,
		0.956257, -0.019669, 0.291865,
		0.093397, -0.924989, -0.368337,
		34.240734, 42.895000, 44.793945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510208, 43.677677, 44.379257>,  <34.175358, 43.542492, 45.051781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510208, 43.677677, 44.379257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391926, 43.295921, 44.362793>,  <34.320957, 43.066868, 44.352917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391926, 43.295921, 44.362793>,  <34.510208, 43.677677, 44.379257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391926, 43.295921, 44.362793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099341, 0.012129, -0.994980,
		0.950101, -0.298305, 0.091223,
		-0.295701, -0.954394, -0.041158,
		34.303215, 43.009602, 44.350445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832962, 43.514282, 43.791370>,  <34.510208, 43.677677, 44.379257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832962, 43.514282, 43.791370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588715, 43.201904, 43.843945>,  <34.442165, 43.014477, 43.875488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.588715, 43.201904, 43.843945>,  <34.832962, 43.514282, 43.791370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588715, 43.201904, 43.843945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021657, -0.182370, -0.982991,
		0.791627, -0.597389, 0.128272,
		-0.610621, -0.780941, 0.131431,
		34.405529, 42.967621, 43.883373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.754055, 43.600239, 38.238735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.490456, 43.844894, 38.413830>,  <45.332294, 43.991688, 38.518887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.490456, 43.844894, 38.413830>,  <45.754055, 43.600239, 38.238735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490456, 43.844894, 38.413830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646947, -0.757795, 0.084890,
		0.383634, -0.227248, 0.895088,
		-0.659002, 0.611642, 0.437733,
		45.292755, 44.028385, 38.545151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430367, 43.335625, 38.882381>,  <45.754055, 43.600239, 38.238735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430367, 43.335625, 38.882381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.160030, 43.592163, 38.737103>,  <44.997829, 43.746086, 38.649937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.160030, 43.592163, 38.737103>,  <45.430367, 43.335625, 38.882381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160030, 43.592163, 38.737103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726474, -0.662820, 0.181398,
		-0.124393, 0.386447, 0.913885,
		-0.675842, 0.641349, -0.363194,
		44.957279, 43.784569, 38.628143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920334, 43.467144, 39.440529>,  <45.430367, 43.335625, 38.882381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920334, 43.467144, 39.440529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756393, 43.548843, 39.084934>,  <44.658028, 43.597862, 38.871578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756393, 43.548843, 39.084934>,  <44.920334, 43.467144, 39.440529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756393, 43.548843, 39.084934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715950, -0.675920, 0.174780,
		-0.565187, 0.708107, 0.423259,
		-0.409852, 0.204249, -0.888990,
		44.633438, 43.610119, 38.818237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222607, 43.223167, 39.519127>,  <44.920334, 43.467144, 39.440529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222607, 43.223167, 39.519127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235657, 43.266502, 39.121696>,  <44.243484, 43.292503, 38.883236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.235657, 43.266502, 39.121696>,  <44.222607, 43.223167, 39.519127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235657, 43.266502, 39.121696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709504, -0.697661, -0.099365,
		-0.703946, 0.708190, 0.054106,
		0.032622, 0.108336, -0.993579,
		44.245441, 43.299004, 38.823624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579250, 43.242016, 39.142078>,  <44.222607, 43.223167, 39.519127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579250, 43.242016, 39.142078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813286, 43.106598, 38.847309>,  <43.953709, 43.025349, 38.670448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813286, 43.106598, 38.847309>,  <43.579250, 43.242016, 39.142078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813286, 43.106598, 38.847309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645814, -0.744121, -0.170903,
		-0.490504, 0.575910, -0.654013,
		0.585090, -0.338542, -0.736925,
		43.988811, 43.005035, 38.626232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096134, 42.934013, 38.749695>,  <43.579250, 43.242016, 39.142078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096134, 42.934013, 38.749695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454029, 42.820366, 38.611870>,  <43.668766, 42.752178, 38.529175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454029, 42.820366, 38.611870>,  <43.096134, 42.934013, 38.749695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454029, 42.820366, 38.611870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415380, -0.812815, -0.408400,
		-0.164034, 0.508535, -0.845272,
		0.894736, -0.284118, -0.344565,
		43.722450, 42.735130, 38.508499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023880, 42.567093, 38.135895>,  <43.096134, 42.934013, 38.749695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023880, 42.567093, 38.135895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.391788, 42.421555, 38.194733>,  <43.612534, 42.334232, 38.230034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.391788, 42.421555, 38.194733>,  <43.023880, 42.567093, 38.135895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391788, 42.421555, 38.194733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258553, -0.843760, -0.470340,
		0.295243, 0.394573, -0.870140,
		0.919773, -0.363842, 0.147096,
		43.667721, 42.312401, 38.238861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368690, 42.294617, 37.478149>,  <43.023880, 42.567093, 38.135895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368690, 42.294617, 37.478149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532066, 42.101482, 37.788002>,  <43.630093, 41.985603, 37.973911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532066, 42.101482, 37.788002>,  <43.368690, 42.294617, 37.478149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532066, 42.101482, 37.788002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042548, -0.857791, -0.512235,
		0.911793, 0.176259, -0.370900,
		0.408441, -0.482833, 0.774628,
		43.654598, 41.956631, 38.020390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966705, 41.854469, 37.215900>,  <43.368690, 42.294617, 37.478149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966705, 41.854469, 37.215900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889294, 41.685493, 37.570095>,  <43.842846, 41.584106, 37.782612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889294, 41.685493, 37.570095>,  <43.966705, 41.854469, 37.215900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889294, 41.685493, 37.570095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109350, -0.906215, -0.408432,
		0.974981, 0.017784, 0.221575,
		-0.193531, -0.422442, 0.885487,
		43.831234, 41.558762, 37.835743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491299, 41.294033, 37.258133>,  <43.966705, 41.854469, 37.215900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491299, 41.294033, 37.258133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211399, 41.218536, 37.533733>,  <44.043457, 41.173241, 37.699093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.211399, 41.218536, 37.533733>,  <44.491299, 41.294033, 37.258133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211399, 41.218536, 37.533733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006465, -0.962756, -0.270295,
		0.714356, -0.193594, 0.672471,
		-0.699752, -0.188739, 0.689002,
		44.001472, 41.161915, 37.740433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697910, 40.646679, 37.564056>,  <44.491299, 41.294033, 37.258133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697910, 40.646679, 37.564056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.307064, 40.687706, 37.638592>,  <44.072556, 40.712322, 37.683311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.307064, 40.687706, 37.638592>,  <44.697910, 40.646679, 37.564056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307064, 40.687706, 37.638592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138861, -0.971208, -0.193578,
		0.161115, -0.215023, 0.963227,
		-0.977118, 0.102566, 0.186335,
		44.013927, 40.718475, 37.694492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491859, 39.992043, 37.785751>,  <44.697910, 40.646679, 37.564056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491859, 39.992043, 37.785751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.145828, 40.165882, 37.685543>,  <43.938210, 40.270187, 37.625420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.145828, 40.165882, 37.685543>,  <44.491859, 39.992043, 37.785751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145828, 40.165882, 37.685543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403074, -0.899505, -0.168588,
		-0.298612, -0.044865, 0.953320,
		-0.865080, 0.434600, -0.250519,
		43.886303, 40.296261, 37.610386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942856, 39.623020, 38.150032>,  <44.491859, 39.992043, 37.785751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942856, 39.623020, 38.150032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813538, 39.817463, 37.825272>,  <43.735947, 39.934128, 37.630417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813538, 39.817463, 37.825272>,  <43.942856, 39.623020, 38.150032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813538, 39.817463, 37.825272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381434, -0.852128, -0.358310,
		-0.866020, 0.193847, 0.460904,
		-0.323292, 0.486108, -0.811900,
		43.716549, 39.963295, 37.581703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260292, 39.489170, 38.173111>,  <43.942856, 39.623020, 38.150032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260292, 39.489170, 38.173111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356106, 39.586281, 37.797092>,  <43.413593, 39.644547, 37.571484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356106, 39.586281, 37.797092>,  <43.260292, 39.489170, 38.173111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356106, 39.586281, 37.797092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419745, -0.847172, -0.325753,
		-0.875463, 0.472608, -0.101024,
		0.239537, 0.242780, -0.940042,
		43.427967, 39.659115, 37.515079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665546, 39.198990, 37.857796>,  <43.260292, 39.489170, 38.173111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665546, 39.198990, 37.857796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.930614, 39.264103, 37.565392>,  <43.089657, 39.303169, 37.389950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.930614, 39.264103, 37.565392>,  <42.665546, 39.198990, 37.857796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930614, 39.264103, 37.565392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292708, -0.842154, -0.452878,
		-0.689341, 0.514080, -0.510422,
		0.662670, 0.162783, -0.731006,
		43.129414, 39.312939, 37.346088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295376, 38.990635, 37.262177>,  <42.665546, 39.198990, 37.857796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295376, 38.990635, 37.262177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679855, 38.998371, 37.152100>,  <42.910542, 39.003014, 37.086056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679855, 38.998371, 37.152100>,  <42.295376, 38.990635, 37.262177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679855, 38.998371, 37.152100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125558, -0.857563, -0.498820,
		-0.245639, 0.514016, -0.821857,
		0.961195, 0.019339, -0.275190,
		42.968212, 39.004173, 37.069542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292255, 38.919842, 36.486916>,  <42.295376, 38.990635, 37.262177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292255, 38.919842, 36.486916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.638321, 38.788204, 36.638279>,  <42.845959, 38.709221, 36.729095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.638321, 38.788204, 36.638279>,  <42.292255, 38.919842, 36.486916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638321, 38.788204, 36.638279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140778, -0.883599, -0.446581,
		0.481323, 0.333095, -0.810787,
		0.865164, -0.329091, 0.378404,
		42.897869, 38.689476, 36.751801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706001, 38.512840, 35.929531>,  <42.292255, 38.919842, 36.486916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706001, 38.512840, 35.929531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.837082, 38.401920, 36.290798>,  <42.915730, 38.335369, 36.507557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.837082, 38.401920, 36.290798>,  <42.706001, 38.512840, 35.929531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837082, 38.401920, 36.290798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149658, -0.959122, -0.240180,
		0.932851, -0.056458, -0.355810,
		0.327706, -0.277302, 0.903168,
		42.935394, 38.318729, 36.561749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103115, 37.905838, 35.685818>,  <42.706001, 38.512840, 35.929531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103115, 37.905838, 35.685818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.066261, 37.878525, 36.083179>,  <43.044147, 37.862137, 36.321594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.066261, 37.878525, 36.083179>,  <43.103115, 37.905838, 35.685818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066261, 37.878525, 36.083179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196720, -0.976735, -0.085385,
		0.976121, -0.203289, 0.076562,
		-0.092138, -0.068285, 0.993402,
		43.038620, 37.858040, 36.381199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387405, 37.293114, 35.877731>,  <43.103115, 37.905838, 35.685818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387405, 37.293114, 35.877731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153923, 37.379253, 36.190887>,  <43.013832, 37.430939, 36.378780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153923, 37.379253, 36.190887>,  <43.387405, 37.293114, 35.877731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153923, 37.379253, 36.190887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449101, -0.888903, -0.090331,
		0.676459, -0.404322, 0.615570,
		-0.583705, 0.215348, 0.782888,
		42.978813, 37.443859, 36.425755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442188, 36.725311, 36.314629>,  <43.387405, 37.293114, 35.877731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442188, 36.725311, 36.314629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.096344, 36.908031, 36.398323>,  <42.888836, 37.017662, 36.448540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.096344, 36.908031, 36.398323>,  <43.442188, 36.725311, 36.314629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096344, 36.908031, 36.398323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487279, -0.863884, -0.127532,
		0.122500, -0.212222, 0.969513,
		-0.864612, 0.456800, 0.209237,
		42.836960, 37.045071, 36.461094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195751, 36.504494, 36.533951>,  <43.442188, 36.725311, 36.314629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195751, 36.504494, 36.533951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450489, 36.355183, 36.803795>,  <44.603333, 36.265598, 36.965702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450489, 36.355183, 36.803795>,  <44.195751, 36.504494, 36.533951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450489, 36.355183, 36.803795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007130, 0.877800, 0.478974,
		-0.770962, -0.300220, 0.561681,
		0.636842, -0.373275, 0.674610,
		44.641541, 36.243198, 37.006176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910404, 36.592094, 37.236988>,  <44.195751, 36.504494, 36.533951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910404, 36.592094, 37.236988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310139, 36.578522, 37.231716>,  <44.549980, 36.570377, 37.228554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310139, 36.578522, 37.231716>,  <43.910404, 36.592094, 37.236988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310139, 36.578522, 37.231716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036105, 0.877904, 0.477473,
		-0.004631, -0.477633, 0.878547,
		0.999337, -0.033931, -0.013180,
		44.609940, 36.568344, 37.227764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181610, 36.724396, 37.907589>,  <43.910404, 36.592094, 37.236988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181610, 36.724396, 37.907589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.489944, 36.816715, 37.670086>,  <44.674946, 36.872108, 37.527584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.489944, 36.816715, 37.670086>,  <44.181610, 36.724396, 37.907589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489944, 36.816715, 37.670086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197972, 0.799123, 0.567635,
		0.605496, -0.555099, 0.570298,
		0.770832, 0.230798, -0.593760,
		44.721195, 36.885956, 37.491959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707310, 36.976585, 38.399273>,  <44.181610, 36.724396, 37.907589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707310, 36.976585, 38.399273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834789, 37.105705, 38.042793>,  <44.911278, 37.183178, 37.828907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834789, 37.105705, 38.042793>,  <44.707310, 36.976585, 38.399273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834789, 37.105705, 38.042793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384581, 0.815320, 0.432841,
		0.866332, -0.480682, 0.135697,
		0.318695, 0.322797, -0.891199,
		44.930397, 37.202545, 37.775433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385796, 36.978737, 38.489780>,  <44.707310, 36.976585, 38.399273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385796, 36.978737, 38.489780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.307087, 37.229881, 38.188564>,  <45.259861, 37.380569, 38.007835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.307087, 37.229881, 38.188564>,  <45.385796, 36.978737, 38.489780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307087, 37.229881, 38.188564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484876, 0.729873, 0.481851,
		0.852159, -0.270315, -0.448057,
		-0.196773, 0.627866, -0.753037,
		45.248055, 37.418240, 37.962654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086658, 37.225197, 38.259609>,  <45.385796, 36.978737, 38.489780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086658, 37.225197, 38.259609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826210, 37.488846, 38.109089>,  <45.669941, 37.647034, 38.018776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826210, 37.488846, 38.109089>,  <46.086658, 37.225197, 38.259609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826210, 37.488846, 38.109089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553695, 0.751620, 0.358454,
		0.519098, 0.025042, -0.854348,
		-0.651121, 0.659121, -0.376298,
		45.630875, 37.686581, 37.996201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472729, 37.822445, 37.954857>,  <46.086658, 37.225197, 38.259609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472729, 37.822445, 37.954857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.102512, 37.970787, 37.985432>,  <45.880383, 38.059792, 38.003777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.102512, 37.970787, 37.985432>,  <46.472729, 37.822445, 37.954857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102512, 37.970787, 37.985432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374656, 0.867696, 0.326706,
		0.054837, 0.331017, -0.942030,
		-0.925541, 0.370853, 0.076435,
		45.824852, 38.082043, 38.008362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467289, 38.484722, 37.647045>,  <46.472729, 37.822445, 37.954857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467289, 38.484722, 37.647045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.150944, 38.498524, 37.891453>,  <45.961136, 38.506805, 38.038097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.150944, 38.498524, 37.891453>,  <46.467289, 38.484722, 37.647045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150944, 38.498524, 37.891453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307057, 0.886017, 0.347405,
		-0.529390, 0.462367, -0.711310,
		-0.790861, 0.034500, 0.611022,
		45.913685, 38.508873, 38.074760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175110, 39.224476, 37.557827>,  <46.467289, 38.484722, 37.647045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175110, 39.224476, 37.557827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006618, 39.109936, 37.902054>,  <45.905525, 39.041210, 38.108589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.006618, 39.109936, 37.902054>,  <46.175110, 39.224476, 37.557827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006618, 39.109936, 37.902054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256968, 0.872287, 0.416033,
		-0.869789, 0.396383, -0.293850,
		-0.421230, -0.286351, 0.860563,
		45.880249, 39.024029, 38.160221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664993, 39.778164, 37.746078>,  <46.175110, 39.224476, 37.557827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664993, 39.778164, 37.746078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729420, 39.583115, 38.089306>,  <45.768078, 39.466084, 38.295242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729420, 39.583115, 38.089306>,  <45.664993, 39.778164, 37.746078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729420, 39.583115, 38.089306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096707, 0.857437, 0.505421,
		-0.982194, -0.164388, 0.090949,
		0.161068, -0.487626, 0.858067,
		45.777740, 39.436829, 38.346725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122932, 39.887711, 38.270519>,  <45.664993, 39.778164, 37.746078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122932, 39.887711, 38.270519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457363, 39.786331, 38.465141>,  <45.658020, 39.725502, 38.581917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.457363, 39.786331, 38.465141>,  <45.122932, 39.887711, 38.270519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457363, 39.786331, 38.465141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064397, 0.835418, 0.545830,
		-0.544819, -0.487689, 0.682152,
		0.836077, -0.253450, 0.486557,
		45.708187, 39.710297, 38.611107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039207, 40.116161, 38.997478>,  <45.122932, 39.887711, 38.270519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039207, 40.116161, 38.997478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.431217, 40.044353, 38.963234>,  <45.666424, 40.001270, 38.942688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.431217, 40.044353, 38.963234>,  <45.039207, 40.116161, 38.997478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431217, 40.044353, 38.963234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193056, 0.755170, 0.626456,
		-0.047806, -0.630470, 0.774740,
		0.980023, -0.179516, -0.085615,
		45.725224, 39.990498, 38.937550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286289, 40.153919, 39.702606>,  <45.039207, 40.116161, 38.997478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286289, 40.153919, 39.702606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598942, 40.225746, 39.463676>,  <45.786533, 40.268845, 39.320316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.598942, 40.225746, 39.463676>,  <45.286289, 40.153919, 39.702606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598942, 40.225746, 39.463676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334564, 0.687538, 0.644483,
		0.526415, -0.703595, 0.477327,
		0.781636, 0.179569, -0.597328,
		45.833431, 40.279617, 39.284477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669331, 40.388584, 40.190685>,  <45.286289, 40.153919, 39.702606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669331, 40.388584, 40.190685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875462, 40.501884, 39.867153>,  <45.999142, 40.569866, 39.673035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.875462, 40.501884, 39.867153>,  <45.669331, 40.388584, 40.190685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875462, 40.501884, 39.867153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267107, 0.843697, 0.465649,
		0.814301, -0.456007, 0.359125,
		0.515332, 0.283254, -0.808826,
		46.030060, 40.586861, 39.624504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349037, 40.658184, 40.450085>,  <45.669331, 40.388584, 40.190685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349037, 40.658184, 40.450085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266258, 40.824055, 40.095634>,  <46.216591, 40.923576, 39.882965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.266258, 40.824055, 40.095634>,  <46.349037, 40.658184, 40.450085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266258, 40.824055, 40.095634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325687, 0.883274, 0.337277,
		0.922552, -0.218802, -0.317842,
		-0.206945, 0.414672, -0.886127,
		46.204174, 40.948456, 39.829796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895645, 41.065414, 40.324059>,  <46.349037, 40.658184, 40.450085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895645, 41.065414, 40.324059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.612366, 41.214005, 40.083904>,  <46.442398, 41.303158, 39.939812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.612366, 41.214005, 40.083904>,  <46.895645, 41.065414, 40.324059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.612366, 41.214005, 40.083904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174926, 0.916194, 0.360541,
		0.684000, 0.150312, -0.713828,
		-0.708198, 0.371478, -0.600383,
		46.399906, 41.325447, 39.903790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.246899, 41.382710, 39.725483>,  <46.895645, 41.065414, 40.324059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.246899, 41.382710, 39.725483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.900723, 41.575363, 39.780678>,  <46.693016, 41.690956, 39.813797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.900723, 41.575363, 39.780678>,  <47.246899, 41.382710, 39.725483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900723, 41.575363, 39.780678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499977, 0.847925, 0.176200,
		-0.032142, 0.221483, -0.974634,
		-0.865442, 0.481631, 0.137991,
		46.641090, 41.719852, 39.822075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.426601, 41.996258, 39.518883>,  <47.246899, 41.382710, 39.725483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.426601, 41.996258, 39.518883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.073414, 42.058533, 39.696026>,  <46.861500, 42.095898, 39.802311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.073414, 42.058533, 39.696026>,  <47.426601, 41.996258, 39.518883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073414, 42.058533, 39.696026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330530, 0.876095, 0.351010,
		-0.333337, 0.456310, -0.825026,
		-0.882970, 0.155691, 0.442859,
		46.808521, 42.105240, 39.828884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332409, 42.643723, 39.351143>,  <47.426601, 41.996258, 39.518883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332409, 42.643723, 39.351143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.103542, 42.563980, 39.669357>,  <46.966221, 42.516136, 39.860287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.103542, 42.563980, 39.669357>,  <47.332409, 42.643723, 39.351143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.103542, 42.563980, 39.669357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409202, 0.771250, 0.487572,
		-0.710759, 0.604509, -0.359709,
		-0.572167, -0.199353, 0.795539,
		46.931892, 42.504173, 39.908020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814911, 43.214195, 39.416279>,  <47.332409, 42.643723, 39.351143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814911, 43.214195, 39.416279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.836700, 43.067081, 39.787605>,  <46.849773, 42.978813, 40.010399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.836700, 43.067081, 39.787605>,  <46.814911, 43.214195, 39.416279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836700, 43.067081, 39.787605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001776, 0.929728, 0.368243,
		-0.998514, -0.018411, 0.051300,
		0.054475, -0.367786, 0.928313,
		46.853043, 42.956745, 40.066101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353912, 43.632992, 39.726173>,  <46.814911, 43.214195, 39.416279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353912, 43.632992, 39.726173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.554394, 43.511463, 40.050270>,  <46.674683, 43.438545, 40.244728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.554394, 43.511463, 40.050270>,  <46.353912, 43.632992, 39.726173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554394, 43.511463, 40.050270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094755, 0.911434, 0.400387,
		-0.860125, -0.277450, 0.428026,
		0.501204, -0.303825, 0.810238,
		46.704754, 43.420315, 40.293343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.205933, 43.643669, 38.972115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187115, 43.255901, 39.068455>,  <37.175823, 43.023239, 39.126259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187115, 43.255901, 39.068455>,  <37.205933, 43.643669, 38.972115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187115, 43.255901, 39.068455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073322, -0.243819, -0.967045,
		0.996198, -0.027837, 0.082551,
		-0.047047, -0.969421, 0.240851,
		37.173000, 42.965076, 39.140709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654797, 43.250740, 38.464226>,  <37.205933, 43.643669, 38.972115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654797, 43.250740, 38.464226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410000, 42.958370, 38.585033>,  <37.263123, 42.782948, 38.657516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410000, 42.958370, 38.585033>,  <37.654797, 43.250740, 38.464226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410000, 42.958370, 38.585033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025028, -0.363791, -0.931144,
		0.790469, -0.577410, 0.204343,
		-0.611991, -0.730926, 0.302017,
		37.226402, 42.739094, 38.675640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009045, 42.613064, 38.263794>,  <37.654797, 43.250740, 38.464226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009045, 42.613064, 38.263794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632351, 42.498501, 38.334339>,  <37.406334, 42.429764, 38.376667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632351, 42.498501, 38.334339>,  <38.009045, 42.613064, 38.263794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632351, 42.498501, 38.334339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057779, -0.378786, -0.923679,
		0.331353, -0.880051, 0.340169,
		-0.941736, -0.286409, 0.176360,
		37.349831, 42.412579, 38.387249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937637, 41.999729, 37.931835>,  <38.009045, 42.613064, 38.263794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937637, 41.999729, 37.931835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552349, 42.078255, 38.005222>,  <37.321175, 42.125370, 38.049255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552349, 42.078255, 38.005222>,  <37.937637, 41.999729, 37.931835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552349, 42.078255, 38.005222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263117, -0.550632, -0.792196,
		-0.054491, -0.811336, 0.582034,
		-0.963224, 0.196310, 0.183472,
		37.263382, 42.137150, 38.060265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469738, 41.360481, 37.847912>,  <37.937637, 41.999729, 37.931835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469738, 41.360481, 37.847912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265949, 41.697098, 37.776077>,  <37.143677, 41.899067, 37.732979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265949, 41.697098, 37.776077>,  <37.469738, 41.360481, 37.847912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265949, 41.697098, 37.776077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380052, -0.407307, -0.830459,
		-0.772008, -0.354846, 0.527340,
		-0.509475, 0.841537, -0.179584,
		37.113106, 41.949558, 37.722202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790119, 41.223019, 37.716373>,  <37.469738, 41.360481, 37.847912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790119, 41.223019, 37.716373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836754, 41.572197, 37.526901>,  <36.864735, 41.781704, 37.413219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836754, 41.572197, 37.526901>,  <36.790119, 41.223019, 37.716373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836754, 41.572197, 37.526901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385689, -0.399708, -0.831551,
		-0.915233, 0.279639, 0.290087,
		0.116584, 0.872947, -0.473680,
		36.871731, 41.834080, 37.384796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239750, 41.395306, 37.380486>,  <36.790119, 41.223019, 37.716373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239750, 41.395306, 37.380486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479095, 41.642475, 37.176476>,  <36.622704, 41.790779, 37.054070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479095, 41.642475, 37.176476>,  <36.239750, 41.395306, 37.380486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479095, 41.642475, 37.176476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383058, -0.338472, -0.859479,
		-0.703725, 0.709650, 0.034172,
		0.598363, 0.617926, -0.510028,
		36.658604, 41.827854, 37.023468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834190, 41.799057, 36.922192>,  <36.239750, 41.395306, 37.380486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834190, 41.799057, 36.922192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200634, 41.783077, 36.762619>,  <36.420502, 41.773491, 36.666874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200634, 41.783077, 36.762619>,  <35.834190, 41.799057, 36.922192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200634, 41.783077, 36.762619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398867, -0.191544, -0.896781,
		-0.040587, 0.980671, -0.191410,
		0.916110, -0.039950, -0.398932,
		36.475468, 41.771091, 36.642941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635567, 41.764832, 36.230831>,  <35.834190, 41.799057, 36.922192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635567, 41.764832, 36.230831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031498, 41.729237, 36.186420>,  <36.269054, 41.707878, 36.159775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031498, 41.729237, 36.186420>,  <35.635567, 41.764832, 36.230831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031498, 41.729237, 36.186420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131315, -0.270763, -0.953648,
		0.054800, 0.958524, -0.279694,
		0.989825, -0.088988, -0.111031,
		36.328445, 41.702541, 36.153111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936577, 42.259041, 35.653076>,  <35.635567, 41.764832, 36.230831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936577, 42.259041, 35.653076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153000, 41.930466, 35.725178>,  <36.282856, 41.733322, 35.768440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153000, 41.930466, 35.725178>,  <35.936577, 42.259041, 35.653076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153000, 41.930466, 35.725178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034566, -0.192433, -0.980701,
		0.840273, 0.536850, -0.075724,
		0.541061, -0.821439, 0.180252,
		36.315319, 41.684032, 35.779255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472946, 42.341019, 35.208015>,  <35.936577, 42.259041, 35.653076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472946, 42.341019, 35.208015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431572, 41.956257, 35.309238>,  <36.406746, 41.725399, 35.369972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431572, 41.956257, 35.309238>,  <36.472946, 42.341019, 35.208015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431572, 41.956257, 35.309238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019786, -0.252378, -0.967426,
		0.994439, -0.105076, 0.007073,
		-0.103439, -0.961906, 0.253053,
		36.400539, 41.667686, 35.385155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974178, 41.963989, 34.823269>,  <36.472946, 42.341019, 35.208015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974178, 41.963989, 34.823269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689228, 41.702702, 34.925900>,  <36.518257, 41.545929, 34.987476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689228, 41.702702, 34.925900>,  <36.974178, 41.963989, 34.823269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689228, 41.702702, 34.925900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138275, -0.489070, -0.861215,
		0.688043, -0.578029, 0.438724,
		-0.712374, -0.653218, 0.256574,
		36.475517, 41.506737, 35.002872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156715, 41.369549, 34.544670>,  <36.974178, 41.963989, 34.823269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156715, 41.369549, 34.544670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787323, 41.275383, 34.665840>,  <36.565689, 41.218884, 34.738541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787323, 41.275383, 34.665840>,  <37.156715, 41.369549, 34.544670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787323, 41.275383, 34.665840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107916, -0.598315, -0.793961,
		0.368157, -0.765897, 0.527126,
		-0.923480, -0.235417, 0.302927,
		36.510281, 41.204758, 34.756718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315357, 40.733406, 34.666424>,  <37.156715, 41.369549, 34.544670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315357, 40.733406, 34.666424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622322, 40.554966, 34.482220>,  <37.806503, 40.447903, 34.371696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622322, 40.554966, 34.482220>,  <37.315357, 40.733406, 34.666424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622322, 40.554966, 34.482220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009795, -0.710017, 0.704117,
		-0.641072, -0.544863, -0.540510,
		0.767418, -0.446095, -0.460509,
		37.852547, 40.421135, 34.344067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275299, 39.981434, 34.604736>,  <37.315357, 40.733406, 34.666424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275299, 39.981434, 34.604736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669071, 40.050701, 34.592644>,  <37.905334, 40.092262, 34.585388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669071, 40.050701, 34.592644>,  <37.275299, 39.981434, 34.604736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669071, 40.050701, 34.592644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118606, -0.527400, 0.841298,
		0.129740, -0.831784, -0.539726,
		0.984429, 0.173164, -0.030230,
		37.964401, 40.102650, 34.583576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583714, 39.363976, 34.663940>,  <37.275299, 39.981434, 34.604736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583714, 39.363976, 34.663940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877998, 39.607368, 34.782921>,  <38.054569, 39.753403, 34.854309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877998, 39.607368, 34.782921>,  <37.583714, 39.363976, 34.663940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877998, 39.607368, 34.782921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273802, -0.668888, 0.691101,
		0.619484, -0.427009, -0.658713,
		0.735712, 0.608483, 0.297449,
		38.098713, 39.789913, 34.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192993, 38.897003, 34.792477>,  <37.583714, 39.363976, 34.663940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192993, 38.897003, 34.792477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236698, 39.238956, 34.995354>,  <38.262920, 39.444130, 35.117081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236698, 39.238956, 34.995354>,  <38.192993, 38.897003, 34.792477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236698, 39.238956, 34.995354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263770, -0.516885, 0.814405,
		0.958378, 0.044799, -0.281967,
		0.109259, 0.854882, 0.507188,
		38.269478, 39.495422, 35.147511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698624, 38.808296, 35.250168>,  <38.192993, 38.897003, 34.792477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698624, 38.808296, 35.250168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534618, 39.134468, 35.413616>,  <38.436214, 39.330170, 35.511684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534618, 39.134468, 35.413616>,  <38.698624, 38.808296, 35.250168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534618, 39.134468, 35.413616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279888, -0.313907, 0.907263,
		0.868075, 0.486354, -0.099523,
		-0.410010, 0.815428, 0.408619,
		38.411613, 39.379097, 35.536201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147263, 39.026840, 35.838387>,  <38.698624, 38.808296, 35.250168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147263, 39.026840, 35.838387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815384, 39.239826, 35.905415>,  <38.616257, 39.367619, 35.945629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815384, 39.239826, 35.905415>,  <39.147263, 39.026840, 35.838387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815384, 39.239826, 35.905415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078346, -0.186134, 0.979396,
		0.552684, 0.825733, 0.112719,
		-0.829700, 0.532465, 0.167566,
		38.566475, 39.399567, 35.955685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214306, 39.364540, 36.379452>,  <39.147263, 39.026840, 35.838387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214306, 39.364540, 36.379452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814384, 39.358532, 36.374256>,  <38.574432, 39.354927, 36.371140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814384, 39.358532, 36.374256>,  <39.214306, 39.364540, 36.379452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814384, 39.358532, 36.374256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009449, -0.215779, 0.976396,
		-0.017465, 0.976327, 0.215595,
		-0.999803, -0.015016, -0.012994,
		38.514442, 39.354027, 36.370358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127655, 39.644695, 37.069893>,  <39.214306, 39.364540, 36.379452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127655, 39.644695, 37.069893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781456, 39.508659, 36.922783>,  <38.573738, 39.427036, 36.834518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781456, 39.508659, 36.922783>,  <39.127655, 39.644695, 37.069893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781456, 39.508659, 36.922783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387751, -0.009957, 0.921710,
		-0.317126, 0.940340, -0.123253,
		-0.865494, -0.340089, -0.367776,
		38.521809, 39.406631, 36.812450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660686, 40.133152, 37.246372>,  <39.127655, 39.644695, 37.069893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660686, 40.133152, 37.246372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526936, 39.757847, 37.210918>,  <38.446686, 39.532665, 37.189648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526936, 39.757847, 37.210918>,  <38.660686, 40.133152, 37.246372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526936, 39.757847, 37.210918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179942, -0.028757, 0.983257,
		-0.925101, 0.344728, -0.159217,
		-0.334378, -0.938262, -0.088634,
		38.426620, 39.476368, 37.184330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234249, 40.156185, 37.711624>,  <38.660686, 40.133152, 37.246372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234249, 40.156185, 37.711624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277420, 39.763859, 37.646683>,  <38.303322, 39.528465, 37.607716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277420, 39.763859, 37.646683>,  <38.234249, 40.156185, 37.711624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277420, 39.763859, 37.646683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121233, -0.175075, 0.977063,
		-0.986740, -0.085766, -0.137802,
		0.107924, -0.980813, -0.162355,
		38.309795, 39.469616, 37.597977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748344, 39.923714, 38.063065>,  <38.234249, 40.156185, 37.711624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748344, 39.923714, 38.063065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995663, 39.612167, 38.020958>,  <38.144054, 39.425240, 37.995693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995663, 39.612167, 38.020958>,  <37.748344, 39.923714, 38.063065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995663, 39.612167, 38.020958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168198, -0.261957, 0.950309,
		-0.767739, -0.569865, -0.292970,
		0.618293, -0.778867, -0.105265,
		38.181152, 39.378506, 37.989380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354427, 39.415520, 38.363102>,  <37.748344, 39.923714, 38.063065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354427, 39.415520, 38.363102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729481, 39.276566, 38.357777>,  <37.954514, 39.193195, 38.354580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729481, 39.276566, 38.357777>,  <37.354427, 39.415520, 38.363102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729481, 39.276566, 38.357777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094502, -0.291557, 0.951874,
		-0.334549, -0.891245, -0.306201,
		0.937629, -0.347385, -0.013316,
		38.010769, 39.172352, 38.353783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343460, 38.767590, 38.547260>,  <37.354427, 39.415520, 38.363102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343460, 38.767590, 38.547260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717392, 38.887733, 38.623028>,  <37.941750, 38.959820, 38.668488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717392, 38.887733, 38.623028>,  <37.343460, 38.767590, 38.547260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717392, 38.887733, 38.623028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131312, -0.203200, 0.970292,
		0.329929, -0.931929, -0.150516,
		0.934828, 0.300363, 0.189416,
		37.997841, 38.977844, 38.679852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695324, 38.249317, 38.876205>,  <37.343460, 38.767590, 38.547260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695324, 38.249317, 38.876205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918556, 38.566723, 38.973263>,  <38.052494, 38.757168, 39.031498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918556, 38.566723, 38.973263>,  <37.695324, 38.249317, 38.876205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918556, 38.566723, 38.973263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028629, -0.273831, 0.961352,
		0.829292, -0.543459, -0.130102,
		0.558081, 0.793517, 0.242644,
		38.085979, 38.804779, 39.046055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076706, 38.002975, 39.426651>,  <37.695324, 38.249317, 38.876205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076706, 38.002975, 39.426651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121761, 38.398453, 39.466251>,  <38.148792, 38.635738, 39.490013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121761, 38.398453, 39.466251>,  <38.076706, 38.002975, 39.426651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121761, 38.398453, 39.466251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049080, -0.105052, 0.993255,
		0.992424, -0.107016, -0.060357,
		0.112634, 0.988692, 0.099004,
		38.155552, 38.695061, 39.495953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323391, 37.401009, 39.752758>,  <38.076706, 38.002975, 39.426651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323391, 37.401009, 39.752758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126865, 37.097969, 39.924644>,  <38.008949, 36.916145, 40.027775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126865, 37.097969, 39.924644>,  <38.323391, 37.401009, 39.752758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126865, 37.097969, 39.924644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314495, -0.305771, -0.898664,
		0.812222, -0.576668, -0.088032,
		-0.491313, -0.757600, 0.429713,
		37.979473, 36.870689, 40.053558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498711, 36.741829, 39.347515>,  <38.323391, 37.401009, 39.752758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498711, 36.741829, 39.347515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137882, 36.688122, 39.511585>,  <37.921387, 36.655899, 39.610027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137882, 36.688122, 39.511585>,  <38.498711, 36.741829, 39.347515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137882, 36.688122, 39.511585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332122, -0.390988, -0.858384,
		0.275626, -0.910550, 0.308105,
		-0.902068, -0.134264, 0.410180,
		37.867264, 36.647842, 39.634640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306946, 36.031445, 39.193386>,  <38.498711, 36.741829, 39.347515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306946, 36.031445, 39.193386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975430, 36.235542, 39.285259>,  <37.776520, 36.358002, 39.340382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975430, 36.235542, 39.285259>,  <38.306946, 36.031445, 39.193386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975430, 36.235542, 39.285259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404806, -0.263362, -0.875655,
		-0.386308, -0.818714, 0.424822,
		-0.828793, 0.510244, 0.229682,
		37.726791, 36.388615, 39.354164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727360, 35.578331, 39.099472>,  <38.306946, 36.031445, 39.193386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727360, 35.578331, 39.099472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569595, 35.945606, 39.084637>,  <37.474937, 36.165970, 39.075737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569595, 35.945606, 39.084637>,  <37.727360, 35.578331, 39.099472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569595, 35.945606, 39.084637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463833, -0.233755, -0.854528,
		-0.793284, -0.319834, 0.518080,
		-0.394411, 0.918186, -0.037084,
		37.451271, 36.221062, 39.073513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019848, 35.482872, 38.834244>,  <37.727360, 35.578331, 39.099472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019848, 35.482872, 38.834244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094257, 35.874516, 38.801411>,  <37.138905, 36.109501, 38.781712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094257, 35.874516, 38.801411>,  <37.019848, 35.482872, 38.834244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094257, 35.874516, 38.801411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433205, 0.006748, -0.901270,
		-0.881889, 0.203215, 0.425411,
		0.186023, 0.979111, -0.082083,
		37.150063, 36.168247, 38.776787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321465, 35.773663, 38.903046>,  <37.019848, 35.482872, 38.834244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321465, 35.773663, 38.903046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597912, 35.985027, 38.705807>,  <36.763779, 36.111847, 38.587463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597912, 35.985027, 38.705807>,  <36.321465, 35.773663, 38.903046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597912, 35.985027, 38.705807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437733, -0.236860, -0.867345,
		-0.575106, 0.815281, 0.067603,
		0.691117, 0.528407, -0.493095,
		36.805248, 36.143551, 38.557877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937103, 36.327721, 38.507999>,  <36.321465, 35.773663, 38.903046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937103, 36.327721, 38.507999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287289, 36.326115, 38.314693>,  <36.497398, 36.325150, 38.198708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287289, 36.326115, 38.314693>,  <35.937103, 36.327721, 38.507999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287289, 36.326115, 38.314693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482039, 0.064513, -0.873771,
		0.034686, 0.997909, 0.054542,
		0.875463, -0.004016, -0.483269,
		36.549927, 36.324909, 38.169712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835484, 36.832306, 38.068489>,  <35.937103, 36.327721, 38.507999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835484, 36.832306, 38.068489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136574, 36.618023, 37.915428>,  <36.317226, 36.489452, 37.823593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136574, 36.618023, 37.915428>,  <35.835484, 36.832306, 38.068489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136574, 36.618023, 37.915428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424090, 0.049999, -0.904239,
		0.503540, 0.842922, -0.189553,
		0.752725, -0.535708, -0.382651,
		36.362392, 36.457310, 37.800632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213737, 37.178005, 37.433064>,  <35.835484, 36.832306, 38.068489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213737, 37.178005, 37.433064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264606, 36.781898, 37.410442>,  <36.295128, 36.544235, 37.396870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264606, 36.781898, 37.410442>,  <36.213737, 37.178005, 37.433064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264606, 36.781898, 37.410442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265347, 0.020969, -0.963925,
		0.955730, 0.137586, -0.260098,
		0.127168, -0.990268, -0.056549,
		36.302757, 36.484818, 37.393478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314896, 37.142010, 36.725258>,  <36.213737, 37.178005, 37.433064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314896, 37.142010, 36.725258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278553, 36.752785, 36.810005>,  <36.256748, 36.519249, 36.860855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278553, 36.752785, 36.810005>,  <36.314896, 37.142010, 36.725258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278553, 36.752785, 36.810005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255092, -0.182912, -0.949458,
		0.962639, -0.140311, -0.231603,
		-0.090856, -0.973065, 0.211870,
		36.251297, 36.460865, 36.873566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637245, 36.784714, 36.105049>,  <36.314896, 37.142010, 36.725258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637245, 36.784714, 36.105049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394009, 36.530716, 36.295635>,  <36.248066, 36.378319, 36.409985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394009, 36.530716, 36.295635>,  <36.637245, 36.784714, 36.105049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394009, 36.530716, 36.295635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501261, -0.158290, -0.850695,
		0.615602, -0.756129, -0.222041,
		-0.608088, -0.634990, 0.476462,
		36.211582, 36.340218, 36.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663132, 36.043472, 35.876621>,  <36.637245, 36.784714, 36.105049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663132, 36.043472, 35.876621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303947, 36.156105, 36.011902>,  <36.088436, 36.223682, 36.093071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303947, 36.156105, 36.011902>,  <36.663132, 36.043472, 35.876621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303947, 36.156105, 36.011902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387238, -0.140432, -0.911222,
		-0.209083, -0.949207, 0.235139,
		-0.897959, 0.281576, 0.338207,
		36.034561, 36.240578, 36.113365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.742413, 36.959507, 43.419182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.342728, 36.971855, 43.429150>,  <39.102917, 36.979263, 43.435131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.342728, 36.971855, 43.429150>,  <39.742413, 36.959507, 43.419182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342728, 36.971855, 43.429150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031434, -0.232835, -0.972008,
		-0.024206, -0.972026, 0.233622,
		-0.999213, 0.030872, 0.024919,
		39.042965, 36.981117, 43.436626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482555, 36.249821, 43.123451>,  <39.742413, 36.959507, 43.419182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482555, 36.249821, 43.123451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177444, 36.508305, 43.113834>,  <38.994377, 36.663395, 43.108063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.177444, 36.508305, 43.113834>,  <39.482555, 36.249821, 43.123451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177444, 36.508305, 43.113834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203823, -0.275544, -0.939432,
		-0.613696, -0.711679, 0.341892,
		-0.762780, 0.646211, -0.024044,
		38.948612, 36.702168, 43.106621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921936, 35.850620, 42.715691>,  <39.482555, 36.249821, 43.123451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921936, 35.850620, 42.715691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830307, 36.239868, 42.706249>,  <38.775330, 36.473419, 42.700584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830307, 36.239868, 42.706249>,  <38.921936, 35.850620, 42.715691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830307, 36.239868, 42.706249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516008, -0.141960, -0.844738,
		-0.825385, -0.181328, 0.534659,
		-0.229075, 0.973122, -0.023605,
		38.761585, 36.531803, 42.699169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179630, 35.854790, 42.642673>,  <38.921936, 35.850620, 42.715691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179630, 35.854790, 42.642673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.308544, 36.217274, 42.533199>,  <38.385895, 36.434765, 42.467514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.308544, 36.217274, 42.533199>,  <38.179630, 35.854790, 42.642673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308544, 36.217274, 42.533199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524908, -0.069523, -0.848315,
		-0.787783, 0.417064, 0.453272,
		0.322289, 0.906214, -0.273689,
		38.405231, 36.489140, 42.451092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646950, 36.159698, 42.392391>,  <38.179630, 35.854790, 42.642673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646950, 36.159698, 42.392391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926807, 36.395035, 42.230225>,  <38.094723, 36.536236, 42.132923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.926807, 36.395035, 42.230225>,  <37.646950, 36.159698, 42.392391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926807, 36.395035, 42.230225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478987, -0.034816, -0.877131,
		-0.530164, 0.807866, 0.257447,
		0.699641, 0.588338, -0.405416,
		38.136700, 36.571537, 42.108601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274014, 36.748585, 42.005287>,  <37.646950, 36.159698, 42.392391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274014, 36.748585, 42.005287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648640, 36.701260, 41.873322>,  <37.873417, 36.672863, 41.794140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648640, 36.701260, 41.873322>,  <37.274014, 36.748585, 42.005287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648640, 36.701260, 41.873322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335217, -0.027542, -0.941738,
		0.102334, 0.992594, -0.065456,
		0.936567, -0.118314, -0.329916,
		37.929611, 36.665764, 41.774345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305489, 37.113941, 41.459545>,  <37.274014, 36.748585, 42.005287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305489, 37.113941, 41.459545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624413, 36.885460, 41.381542>,  <37.815765, 36.748371, 41.334740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624413, 36.885460, 41.381542>,  <37.305489, 37.113941, 41.459545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624413, 36.885460, 41.381542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087026, 0.210923, -0.973621,
		0.597264, 0.793248, 0.118461,
		0.797309, -0.571200, -0.195010,
		37.863605, 36.714100, 41.323040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653706, 37.520512, 41.081253>,  <37.305489, 37.113941, 41.459545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653706, 37.520512, 41.081253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.796734, 37.153187, 41.013321>,  <37.882553, 36.932793, 40.972561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.796734, 37.153187, 41.013321>,  <37.653706, 37.520512, 41.081253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796734, 37.153187, 41.013321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008724, 0.185135, -0.982675,
		0.933844, 0.349896, 0.074210,
		0.357573, -0.918312, -0.169834,
		37.904007, 36.877693, 40.962372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222103, 37.595879, 40.515663>,  <37.653706, 37.520512, 41.081253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222103, 37.595879, 40.515663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095055, 37.216705, 40.524895>,  <38.018826, 36.989201, 40.530434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095055, 37.216705, 40.524895>,  <38.222103, 37.595879, 40.515663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095055, 37.216705, 40.524895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012425, -0.020180, -0.999719,
		0.948135, -0.317823, -0.005368,
		-0.317625, -0.947935, 0.023082,
		37.999767, 36.932323, 40.531818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522011, 38.075390, 40.033913>,  <38.222103, 37.595879, 40.515663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522011, 38.075390, 40.033913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331680, 38.423489, 39.982910>,  <38.217480, 38.632347, 39.952309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331680, 38.423489, 39.982910>,  <38.522011, 38.075390, 40.033913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331680, 38.423489, 39.982910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012080, 0.151424, 0.988395,
		0.879454, 0.468767, -0.082564,
		-0.475830, 0.870246, -0.127508,
		38.188931, 38.684563, 39.944656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866726, 38.439701, 40.539581>,  <38.522011, 38.075390, 40.033913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866726, 38.439701, 40.539581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558529, 38.675381, 40.442265>,  <38.373611, 38.816788, 40.383877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558529, 38.675381, 40.442265>,  <38.866726, 38.439701, 40.539581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558529, 38.675381, 40.442265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181619, 0.162933, 0.969777,
		0.611029, 0.791392, -0.018530,
		-0.770492, 0.589196, -0.243288,
		38.327381, 38.852139, 40.369278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955765, 39.077812, 40.741108>,  <38.866726, 38.439701, 40.539581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955765, 39.077812, 40.741108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558250, 39.039349, 40.718712>,  <38.319740, 39.016270, 40.705273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558250, 39.039349, 40.718712>,  <38.955765, 39.077812, 40.741108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558250, 39.039349, 40.718712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079707, 0.264029, 0.961215,
		-0.077647, 0.959709, -0.270054,
		-0.993790, -0.096161, -0.055994,
		38.260113, 39.010502, 40.701912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677200, 39.724476, 41.046829>,  <38.955765, 39.077812, 40.741108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677200, 39.724476, 41.046829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.381836, 39.454735, 41.046898>,  <38.204617, 39.292889, 41.046940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.381836, 39.454735, 41.046898>,  <38.677200, 39.724476, 41.046829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381836, 39.454735, 41.046898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259433, 0.284313, 0.922963,
		-0.622451, 0.681480, -0.384889,
		-0.738410, -0.674352, 0.000173,
		38.160313, 39.252430, 41.046951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078175, 40.041649, 41.284054>,  <38.677200, 39.724476, 41.046829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078175, 40.041649, 41.284054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056007, 39.650547, 41.364975>,  <38.042709, 39.415886, 41.413528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056007, 39.650547, 41.364975>,  <38.078175, 40.041649, 41.284054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056007, 39.650547, 41.364975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207543, 0.209465, 0.955537,
		-0.976655, 0.010966, -0.214534,
		-0.055416, -0.977755, 0.202299,
		38.039383, 39.357220, 41.425663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645664, 40.061268, 41.834763>,  <38.078175, 40.041649, 41.284054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645664, 40.061268, 41.834763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766220, 39.680035, 41.845997>,  <37.838554, 39.451294, 41.852737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766220, 39.680035, 41.845997>,  <37.645664, 40.061268, 41.834763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766220, 39.680035, 41.845997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025436, 0.021407, 0.999447,
		-0.953161, -0.301940, -0.017791,
		0.301392, -0.953086, 0.028084,
		37.856636, 39.394108, 41.854424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301563, 39.727566, 42.324406>,  <37.645664, 40.061268, 41.834763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301563, 39.727566, 42.324406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591690, 39.454845, 42.286327>,  <37.765766, 39.291214, 42.263481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.591690, 39.454845, 42.286327>,  <37.301563, 39.727566, 42.324406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591690, 39.454845, 42.286327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121649, -0.009173, 0.992531,
		-0.677586, -0.731476, 0.076288,
		0.725312, -0.681805, -0.095199,
		37.809284, 39.250305, 42.257767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083778, 39.064075, 42.576492>,  <37.301563, 39.727566, 42.324406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083778, 39.064075, 42.576492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482632, 39.081097, 42.601517>,  <37.721943, 39.091309, 42.616531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482632, 39.081097, 42.601517>,  <37.083778, 39.064075, 42.576492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482632, 39.081097, 42.601517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055066, -0.158959, 0.985748,
		0.051895, -0.986368, -0.156160,
		0.997133, 0.042556, 0.062565,
		37.781773, 39.093864, 42.620285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342682, 38.523640, 43.128433>,  <37.083778, 39.064075, 42.576492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342682, 38.523640, 43.128433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669868, 38.748238, 43.078392>,  <37.866180, 38.882996, 43.048367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669868, 38.748238, 43.078392>,  <37.342682, 38.523640, 43.128433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669868, 38.748238, 43.078392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121889, 0.043370, 0.991596,
		0.562206, -0.826340, -0.032965,
		0.817965, 0.561499, -0.125105,
		37.915257, 38.916687, 43.040859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735195, 38.267242, 43.607109>,  <37.342682, 38.523640, 43.128433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735195, 38.267242, 43.607109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862038, 38.635723, 43.516922>,  <37.938141, 38.856812, 43.462811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862038, 38.635723, 43.516922>,  <37.735195, 38.267242, 43.607109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862038, 38.635723, 43.516922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199645, 0.167569, 0.965434,
		0.927140, -0.351154, -0.130777,
		0.317102, 0.921201, -0.225466,
		37.957169, 38.912083, 43.449284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355118, 38.308098, 43.983189>,  <37.735195, 38.267242, 43.607109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355118, 38.308098, 43.983189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.256203, 38.688698, 43.909973>,  <38.196854, 38.917057, 43.866043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.256203, 38.688698, 43.909973>,  <38.355118, 38.308098, 43.983189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256203, 38.688698, 43.909973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306376, 0.256002, 0.916841,
		0.919229, 0.170645, -0.354822,
		-0.247289, 0.951495, -0.183043,
		38.182014, 38.974148, 43.855061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886616, 38.664429, 44.293385>,  <38.355118, 38.308098, 43.983189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886616, 38.664429, 44.293385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600574, 38.943348, 44.273746>,  <38.428951, 39.110699, 44.261963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600574, 38.943348, 44.273746>,  <38.886616, 38.664429, 44.293385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600574, 38.943348, 44.273746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274637, 0.344847, 0.897583,
		0.642811, 0.628378, -0.438103,
		-0.715100, 0.697296, -0.049096,
		38.386044, 39.152538, 44.259018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185509, 39.306793, 44.529934>,  <38.886616, 38.664429, 44.293385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185509, 39.306793, 44.529934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.790886, 39.353493, 44.575687>,  <38.554111, 39.381512, 44.603138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.790886, 39.353493, 44.575687>,  <39.185509, 39.306793, 44.529934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790886, 39.353493, 44.575687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158695, 0.516792, 0.841274,
		0.039107, 0.848113, -0.528371,
		-0.986553, 0.116749, 0.114381,
		38.494919, 39.388519, 44.610001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149075, 39.963753, 44.778271>,  <39.185509, 39.306793, 44.529934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149075, 39.963753, 44.778271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786407, 39.820644, 44.867668>,  <38.568806, 39.734779, 44.921307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.786407, 39.820644, 44.867668>,  <39.149075, 39.963753, 44.778271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786407, 39.820644, 44.867668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129509, 0.268147, 0.954633,
		-0.401469, 0.894482, -0.196787,
		-0.906670, -0.357770, 0.223496,
		38.514408, 39.713314, 44.934715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.359646, 39.308910, 45.986858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.726208, 39.391396, 45.849644>,  <32.946144, 39.440887, 45.767315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.726208, 39.391396, 45.849644>,  <32.359646, 39.308910, 45.986858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726208, 39.391396, 45.849644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389053, 0.257671, -0.884445,
		-0.093992, 0.943972, 0.316359,
		0.916408, 0.206211, -0.343036,
		33.001129, 39.453259, 45.746735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418129, 40.076050, 45.763103>,  <32.359646, 39.308910, 45.986858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418129, 40.076050, 45.763103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702354, 39.871338, 45.569946>,  <32.872890, 39.748512, 45.454052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702354, 39.871338, 45.569946>,  <32.418129, 40.076050, 45.763103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702354, 39.871338, 45.569946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326878, 0.367643, -0.870626,
		0.623101, 0.776479, 0.093943,
		0.710561, -0.511780, -0.482892,
		32.915524, 39.717804, 45.425079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572041, 40.436520, 45.149269>,  <32.418129, 40.076050, 45.763103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572041, 40.436520, 45.149269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.753273, 40.089371, 45.067760>,  <32.862011, 39.881081, 45.018856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.753273, 40.089371, 45.067760>,  <32.572041, 40.436520, 45.149269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753273, 40.089371, 45.067760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191317, 0.128594, -0.973068,
		0.870700, 0.479860, -0.107775,
		0.453077, -0.867870, -0.203773,
		32.889194, 39.829010, 45.006630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109772, 40.544048, 44.574078>,  <32.572041, 40.436520, 45.149269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109772, 40.544048, 44.574078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985554, 40.164989, 44.603813>,  <32.911022, 39.937553, 44.621655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.985554, 40.164989, 44.603813>,  <33.109772, 40.544048, 44.574078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985554, 40.164989, 44.603813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210850, -0.007590, -0.977489,
		0.926880, -0.319226, -0.197455,
		-0.310541, -0.947648, 0.074344,
		32.892391, 39.880695, 44.626118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446255, 40.248932, 43.999538>,  <33.109772, 40.544048, 44.574078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446255, 40.248932, 43.999538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146984, 40.003403, 44.100300>,  <32.967422, 39.856087, 44.160755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146984, 40.003403, 44.100300>,  <33.446255, 40.248932, 43.999538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146984, 40.003403, 44.100300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265186, -0.071371, -0.961552,
		0.608199, -0.786213, -0.109379,
		-0.748178, -0.613820, 0.251900,
		32.922531, 39.819256, 44.175869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611710, 39.623890, 43.729214>,  <33.446255, 40.248932, 43.999538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611710, 39.623890, 43.729214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213680, 39.617805, 43.768410>,  <32.974865, 39.614155, 43.791927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213680, 39.617805, 43.768410>,  <33.611710, 39.623890, 43.729214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213680, 39.617805, 43.768410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097752, -0.015451, -0.995091,
		0.016659, -0.999765, 0.013887,
		-0.995072, -0.015220, 0.097986,
		32.915157, 39.613243, 43.797806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410316, 39.068913, 43.295887>,  <33.611710, 39.623890, 43.729214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410316, 39.068913, 43.295887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.082211, 39.290527, 43.352749>,  <32.885345, 39.423496, 43.386864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.082211, 39.290527, 43.352749>,  <33.410316, 39.068913, 43.295887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082211, 39.290527, 43.352749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127854, 0.064639, -0.989684,
		-0.557514, -0.829977, 0.017815,
		-0.820264, 0.554040, 0.142152,
		32.836132, 39.456738, 43.395393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973488, 38.817799, 42.904003>,  <33.410316, 39.068913, 43.295887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973488, 38.817799, 42.904003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846672, 39.192745, 42.961739>,  <32.770584, 39.417713, 42.996380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846672, 39.192745, 42.961739>,  <32.973488, 38.817799, 42.904003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846672, 39.192745, 42.961739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245762, 0.065791, -0.967095,
		-0.916018, -0.342076, 0.209511,
		-0.317036, 0.937366, 0.144335,
		32.751560, 39.473953, 43.005039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265236, 38.898975, 42.673813>,  <32.973488, 38.817799, 42.904003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265236, 38.898975, 42.673813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399628, 39.275551, 42.685249>,  <32.480263, 39.501495, 42.692112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.399628, 39.275551, 42.685249>,  <32.265236, 38.898975, 42.673813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399628, 39.275551, 42.685249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299871, 0.135690, -0.944281,
		-0.892859, 0.308683, 0.327898,
		0.335976, 0.941437, 0.028587,
		32.500420, 39.557983, 42.693825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853500, 39.222195, 42.195431>,  <32.265236, 38.898975, 42.673813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853500, 39.222195, 42.195431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.130974, 39.505817, 42.246094>,  <32.297459, 39.675991, 42.276493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.130974, 39.505817, 42.246094>,  <31.853500, 39.222195, 42.195431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130974, 39.505817, 42.246094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180513, 0.341378, -0.922430,
		-0.697291, 0.617012, 0.364802,
		0.693686, 0.709054, 0.126661,
		32.339081, 39.718533, 42.284092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664938, 39.715382, 41.715702>,  <31.853500, 39.222195, 42.195431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664938, 39.715382, 41.715702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.034664, 39.847057, 41.792931>,  <32.256500, 39.926064, 41.839268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.034664, 39.847057, 41.792931>,  <31.664938, 39.715382, 41.715702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034664, 39.847057, 41.792931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102632, 0.272845, -0.956568,
		-0.367571, 0.903985, 0.218409,
		0.924315, 0.329191, 0.193067,
		32.311958, 39.945816, 41.850849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620321, 40.365803, 41.540287>,  <31.664938, 39.715382, 41.715702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620321, 40.365803, 41.540287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004826, 40.258987, 41.512962>,  <32.235527, 40.194901, 41.496567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004826, 40.258987, 41.512962>,  <31.620321, 40.365803, 41.540287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004826, 40.258987, 41.512962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026747, 0.156290, -0.987349,
		0.274334, 0.950928, 0.143093,
		0.961262, -0.267036, -0.068310,
		32.293205, 40.178875, 41.492470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002739, 40.880779, 41.115784>,  <31.620321, 40.365803, 41.540287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002739, 40.880779, 41.115784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195671, 40.531433, 41.088684>,  <32.311428, 40.321827, 41.072426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195671, 40.531433, 41.088684>,  <32.002739, 40.880779, 41.115784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195671, 40.531433, 41.088684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019775, 0.066462, -0.997593,
		0.875767, 0.482507, 0.014786,
		0.482329, -0.873367, -0.067747,
		32.340370, 40.269424, 41.068359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476116, 40.994225, 40.595295>,  <32.002739, 40.880779, 41.115784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476116, 40.994225, 40.595295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481853, 40.595100, 40.621147>,  <32.485294, 40.355625, 40.636658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.481853, 40.595100, 40.621147>,  <32.476116, 40.994225, 40.595295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481853, 40.595100, 40.621147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051854, -0.063813, -0.996614,
		0.998552, 0.017643, 0.050825,
		0.014340, -0.997806, 0.064635,
		32.486156, 40.295757, 40.640537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257320, 41.126877, 40.586964>,  <32.476116, 40.994225, 40.595295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257320, 41.126877, 40.586964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539127, 41.395905, 40.496361>,  <33.708210, 41.557323, 40.441998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539127, 41.395905, 40.496361>,  <33.257320, 41.126877, 40.586964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539127, 41.395905, 40.496361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092639, 0.229278, 0.968942,
		0.703619, -0.703616, 0.099223,
		0.704513, 0.672574, -0.226507,
		33.750481, 41.597675, 40.428410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820808, 41.001640, 41.026821>,  <33.257320, 41.126877, 40.586964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820808, 41.001640, 41.026821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857147, 41.372330, 40.880981>,  <33.878952, 41.594742, 40.793476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857147, 41.372330, 40.880981>,  <33.820808, 41.001640, 41.026821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857147, 41.372330, 40.880981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074902, 0.358718, 0.930436,
		0.993044, -0.111836, -0.036825,
		0.090846, 0.926722, -0.364600,
		33.884399, 41.650345, 40.771603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408859, 41.199028, 41.414162>,  <33.820808, 41.001640, 41.026821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408859, 41.199028, 41.414162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198467, 41.491085, 41.239693>,  <34.072231, 41.666317, 41.135010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198467, 41.491085, 41.239693>,  <34.408859, 41.199028, 41.414162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198467, 41.491085, 41.239693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044567, 0.535798, 0.843169,
		0.849331, 0.424048, -0.314357,
		-0.525976, 0.730140, -0.436171,
		34.040676, 41.710129, 41.108841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772488, 41.915642, 41.492378>,  <34.408859, 41.199028, 41.414162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772488, 41.915642, 41.492378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384941, 42.002220, 41.444283>,  <34.152412, 42.054169, 41.415424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384941, 42.002220, 41.444283>,  <34.772488, 41.915642, 41.492378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384941, 42.002220, 41.444283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039813, 0.615488, 0.787140,
		0.244380, 0.757843, -0.604941,
		-0.968862, 0.216446, -0.120241,
		34.094284, 42.067154, 41.408211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747070, 42.601208, 41.569386>,  <34.772488, 41.915642, 41.492378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747070, 42.601208, 41.569386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.362175, 42.501034, 41.612045>,  <34.131237, 42.440929, 41.637642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.362175, 42.501034, 41.612045>,  <34.747070, 42.601208, 41.569386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362175, 42.501034, 41.612045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032545, 0.494839, 0.868375,
		-0.270246, 0.832115, -0.484305,
		-0.962241, -0.250436, 0.106647,
		34.073502, 42.425903, 41.644039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476425, 43.207352, 41.815239>,  <34.747070, 42.601208, 41.569386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476425, 43.207352, 41.815239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223709, 42.904827, 41.883175>,  <34.072079, 42.723312, 41.923935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.223709, 42.904827, 41.883175>,  <34.476425, 43.207352, 41.815239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223709, 42.904827, 41.883175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025186, 0.239017, 0.970689,
		-0.774734, 0.608990, -0.170056,
		-0.631786, -0.756308, 0.169836,
		34.034172, 42.677933, 41.934124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930477, 43.422081, 42.227531>,  <34.476425, 43.207352, 41.815239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930477, 43.422081, 42.227531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945942, 43.029625, 42.303295>,  <33.955223, 42.794151, 42.348755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.945942, 43.029625, 42.303295>,  <33.930477, 43.422081, 42.227531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945942, 43.029625, 42.303295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087073, 0.185525, 0.978774,
		-0.995451, -0.054336, -0.078257,
		0.038664, -0.981136, 0.189413,
		33.957542, 42.735283, 42.360119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416023, 43.447227, 42.715881>,  <33.930477, 43.422081, 42.227531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416023, 43.447227, 42.715881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626537, 43.107719, 42.736309>,  <33.752846, 42.904015, 42.748566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626537, 43.107719, 42.736309>,  <33.416023, 43.447227, 42.715881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626537, 43.107719, 42.736309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038751, 0.083939, 0.995717,
		-0.849426, -0.522050, 0.077067,
		0.526283, -0.848774, 0.051070,
		33.784424, 42.853088, 42.751629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030113, 42.971882, 43.151707>,  <33.416023, 43.447227, 42.715881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030113, 42.971882, 43.151707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417603, 42.873215, 43.162533>,  <33.650097, 42.814014, 43.169029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417603, 42.873215, 43.162533>,  <33.030113, 42.971882, 43.151707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417603, 42.873215, 43.162533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057329, -0.116360, 0.991551,
		-0.241440, -0.962088, -0.126861,
		0.968721, -0.246673, 0.027061,
		33.708218, 42.799213, 43.170650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136951, 42.470478, 43.633907>,  <33.030113, 42.971882, 43.151707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136951, 42.470478, 43.633907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525646, 42.551624, 43.585609>,  <33.758862, 42.600311, 43.556629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.525646, 42.551624, 43.585609>,  <33.136951, 42.470478, 43.633907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525646, 42.551624, 43.585609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148740, -0.128892, 0.980440,
		0.183338, -0.970686, -0.155423,
		0.971732, 0.202869, -0.120749,
		33.817165, 42.612484, 43.549385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510223, 42.032127, 44.119640>,  <33.136951, 42.470478, 43.633907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510223, 42.032127, 44.119640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800346, 42.290684, 44.024899>,  <33.974422, 42.445816, 43.968052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800346, 42.290684, 44.024899>,  <33.510223, 42.032127, 44.119640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800346, 42.290684, 44.024899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311861, -0.001781, 0.950126,
		0.613731, -0.763004, -0.202876,
		0.725312, 0.646391, -0.236858,
		34.017941, 42.484600, 43.953842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046566, 41.690468, 44.185139>,  <33.510223, 42.032127, 44.119640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046566, 41.690468, 44.185139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.093616, 42.085686, 44.224995>,  <34.121845, 42.322815, 44.248909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.093616, 42.085686, 44.224995>,  <34.046566, 41.690468, 44.185139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093616, 42.085686, 44.224995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255884, -0.127108, 0.958315,
		0.959525, -0.087227, -0.267776,
		0.117627, 0.988046, 0.099643,
		34.128906, 42.382099, 44.254887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693764, 41.734695, 44.430298>,  <34.046566, 41.690468, 44.185139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693764, 41.734695, 44.430298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569542, 42.099995, 44.535778>,  <34.495010, 42.319172, 44.599068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569542, 42.099995, 44.535778>,  <34.693764, 41.734695, 44.430298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569542, 42.099995, 44.535778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215871, -0.202414, 0.955211,
		0.925720, 0.353569, -0.134283,
		-0.310552, 0.913246, 0.263704,
		34.476376, 42.373970, 44.614891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187546, 42.033314, 44.935886>,  <34.693764, 41.734695, 44.430298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187546, 42.033314, 44.935886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845261, 42.229076, 45.003101>,  <34.639889, 42.346535, 45.043430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845261, 42.229076, 45.003101>,  <35.187546, 42.033314, 44.935886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845261, 42.229076, 45.003101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075359, -0.203404, 0.976190,
		0.511932, 0.848003, 0.137175,
		-0.855714, 0.489406, 0.168034,
		34.588547, 42.375896, 45.053513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625225, 42.652905, 44.852329>,  <35.187546, 42.033314, 44.935886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625225, 42.652905, 44.852329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002148, 42.786102, 44.838612>,  <36.228302, 42.866020, 44.830379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002148, 42.786102, 44.838612>,  <35.625225, 42.652905, 44.852329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002148, 42.786102, 44.838612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042202, 0.016536, -0.998972,
		-0.332089, 0.942783, 0.029635,
		0.942304, 0.332998, -0.034296,
		36.284840, 42.886002, 44.828323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600670, 43.036037, 44.245094>,  <35.625225, 42.652905, 44.852329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600670, 43.036037, 44.245094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990013, 43.002724, 44.330544>,  <36.223618, 42.982735, 44.381813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990013, 43.002724, 44.330544>,  <35.600670, 43.036037, 44.245094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990013, 43.002724, 44.330544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215790, 0.017784, -0.976278,
		0.077512, 0.996367, 0.035283,
		0.973358, -0.083287, 0.213628,
		36.282021, 42.977737, 44.394630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929039, 43.501328, 43.800804>,  <35.600670, 43.036037, 44.245094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929039, 43.501328, 43.800804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226387, 43.258369, 43.912853>,  <36.404797, 43.112595, 43.980083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226387, 43.258369, 43.912853>,  <35.929039, 43.501328, 43.800804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226387, 43.258369, 43.912853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319432, -0.045580, -0.946512,
		0.587671, 0.793095, 0.160137,
		0.743375, -0.607391, 0.280126,
		36.449398, 43.076153, 43.996891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508099, 43.833672, 43.585636>,  <35.929039, 43.501328, 43.800804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508099, 43.833672, 43.585636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565357, 43.439274, 43.619877>,  <36.599712, 43.202637, 43.640423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565357, 43.439274, 43.619877>,  <36.508099, 43.833672, 43.585636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565357, 43.439274, 43.619877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349107, -0.030631, -0.936582,
		0.926085, 0.163956, 0.339832,
		0.143149, -0.985992, 0.085605,
		36.608303, 43.143475, 43.645557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168114, 43.826588, 43.495647>,  <36.508099, 43.833672, 43.585636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168114, 43.826588, 43.495647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007622, 43.470798, 43.408146>,  <36.911327, 43.257324, 43.355644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007622, 43.470798, 43.408146>,  <37.168114, 43.826588, 43.495647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007622, 43.470798, 43.408146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512126, -0.019837, -0.858681,
		0.759434, -0.456558, 0.463481,
		-0.401232, -0.889472, -0.218750,
		36.887253, 43.203957, 43.342522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736496, 43.562214, 43.061367>,  <37.168114, 43.826588, 43.495647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736496, 43.562214, 43.061367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.423737, 43.323559, 42.989082>,  <37.236080, 43.180367, 42.945709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.423737, 43.323559, 42.989082>,  <37.736496, 43.562214, 43.061367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423737, 43.323559, 42.989082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294016, -0.097317, -0.950833,
		0.549712, -0.796591, 0.251513,
		-0.781902, -0.596633, -0.180714,
		37.189167, 43.144569, 42.934868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040108, 42.987453, 42.679085>,  <37.736496, 43.562214, 43.061367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040108, 42.987453, 42.679085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645638, 42.989769, 42.612854>,  <37.408955, 42.991158, 42.573116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.645638, 42.989769, 42.612854>,  <38.040108, 42.987453, 42.679085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645638, 42.989769, 42.612854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164997, -0.056489, -0.984675,
		-0.015055, -0.998386, 0.054753,
		-0.986179, 0.005790, -0.165581,
		37.349785, 42.991508, 42.563179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963432, 42.401875, 42.409794>,  <38.040108, 42.987453, 42.679085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963432, 42.401875, 42.409794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629719, 42.600918, 42.314838>,  <37.429489, 42.720345, 42.257866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.629719, 42.600918, 42.314838>,  <37.963432, 42.401875, 42.409794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629719, 42.600918, 42.314838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113078, -0.266980, -0.957045,
		-0.539616, -0.825290, 0.166468,
		-0.834283, 0.497613, -0.237389,
		37.379433, 42.750202, 42.243622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572346, 41.981045, 41.896126>,  <37.963432, 42.401875, 42.409794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572346, 41.981045, 41.896126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.444916, 42.354298, 41.829472>,  <37.368458, 42.578251, 41.789478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.444916, 42.354298, 41.829472>,  <37.572346, 41.981045, 41.896126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444916, 42.354298, 41.829472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054045, -0.157630, -0.986018,
		-0.946356, -0.323126, -0.000214,
		-0.318575, 0.933136, -0.166638,
		37.349342, 42.634239, 41.779480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009094, 41.875759, 41.431976>,  <37.572346, 41.981045, 41.896126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009094, 41.875759, 41.431976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.096409, 42.263329, 41.385429>,  <37.148800, 42.495869, 41.357502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.096409, 42.263329, 41.385429>,  <37.009094, 41.875759, 41.431976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096409, 42.263329, 41.385429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153511, -0.083664, -0.984599,
		-0.963734, 0.232791, 0.130477,
		0.218289, 0.968921, -0.116365,
		37.161896, 42.554005, 41.350521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472980, 42.214428, 41.001072>,  <37.009094, 41.875759, 41.431976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472980, 42.214428, 41.001072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.783226, 42.464523, 40.966434>,  <36.969376, 42.614578, 40.945652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.783226, 42.464523, 40.966434>,  <36.472980, 42.214428, 41.001072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783226, 42.464523, 40.966434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093876, -0.021394, -0.995354,
		-0.624183, 0.780143, 0.042101,
		0.775617, 0.625236, -0.086591,
		37.015911, 42.652096, 40.940456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263424, 42.508015, 40.405750>,  <36.472980, 42.214428, 41.001072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263424, 42.508015, 40.405750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.645142, 42.620834, 40.445286>,  <36.874172, 42.688526, 40.469006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.645142, 42.620834, 40.445286>,  <36.263424, 42.508015, 40.405750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645142, 42.620834, 40.445286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072635, 0.101914, -0.992138,
		-0.289905, 0.953972, 0.076769,
		0.954295, 0.282049, 0.098837,
		36.931431, 42.705448, 40.474937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293148, 43.127308, 40.000198>,  <36.263424, 42.508015, 40.405750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293148, 43.127308, 40.000198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.671066, 42.998478, 40.024330>,  <36.897816, 42.921181, 40.038807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.671066, 42.998478, 40.024330>,  <36.293148, 43.127308, 40.000198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671066, 42.998478, 40.024330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130978, 0.202442, -0.970496,
		0.300357, 0.924817, 0.233450,
		0.944791, -0.322072, 0.060326,
		36.954502, 42.901855, 40.042427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692425, 43.566010, 39.528984>,  <36.293148, 43.127308, 40.000198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692425, 43.566010, 39.528984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.853340, 43.203976, 39.584114>,  <36.949890, 42.986755, 39.617191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.853340, 43.203976, 39.584114>,  <36.692425, 43.566010, 39.528984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853340, 43.203976, 39.584114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057944, -0.125068, -0.990455,
		0.913678, 0.406434, 0.002131,
		0.402288, -0.905080, 0.137822,
		36.974026, 42.932453, 39.625462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.170269, 40.463570, 43.320705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786926, 40.531010, 43.228508>,  <26.556921, 40.571472, 43.173191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786926, 40.531010, 43.228508>,  <27.170269, 40.463570, 43.320705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786926, 40.531010, 43.228508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001959, -0.810989, -0.585058,
		-0.285566, -0.560243, 0.777547,
		-0.958357, 0.168596, -0.230493,
		26.499418, 40.581589, 43.159359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951265, 39.829060, 43.028435>,  <27.170269, 40.463570, 43.320705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951265, 39.829060, 43.028435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.666483, 40.086018, 42.914986>,  <26.495613, 40.240192, 42.846916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.666483, 40.086018, 42.914986>,  <26.951265, 39.829060, 43.028435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666483, 40.086018, 42.914986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148156, -0.532216, -0.833544,
		-0.686418, -0.551425, 0.474089,
		-0.711955, 0.642399, -0.283625,
		26.452896, 40.278736, 42.829899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332228, 39.445595, 42.999371>,  <26.951265, 39.829060, 43.028435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332228, 39.445595, 42.999371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295315, 39.765106, 42.761566>,  <26.273167, 39.956814, 42.618885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295315, 39.765106, 42.761566>,  <26.332228, 39.445595, 42.999371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295315, 39.765106, 42.761566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419492, -0.572674, -0.704323,
		-0.903056, 0.184396, 0.387927,
		-0.092282, 0.798776, -0.594509,
		26.267630, 40.004738, 42.583214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591148, 39.506878, 42.757328>,  <26.332228, 39.445595, 42.999371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591148, 39.506878, 42.757328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850760, 39.680954, 42.507729>,  <26.006525, 39.785400, 42.357967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850760, 39.680954, 42.507729>,  <25.591148, 39.506878, 42.757328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850760, 39.680954, 42.507729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428678, -0.468410, -0.772546,
		-0.628491, 0.768898, -0.117454,
		0.649026, 0.435188, -0.624001,
		26.045467, 39.811512, 42.320530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398790, 39.384800, 42.089668>,  <25.591148, 39.506878, 42.757328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398790, 39.384800, 42.089668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.760326, 39.501968, 41.964916>,  <25.977249, 39.572269, 41.890064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.760326, 39.501968, 41.964916>,  <25.398790, 39.384800, 42.089668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760326, 39.501968, 41.964916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114816, -0.536132, -0.836289,
		-0.412173, 0.791682, -0.450947,
		0.903842, 0.292920, -0.311877,
		26.031479, 39.589844, 41.871353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336651, 39.496929, 41.430519>,  <25.398790, 39.384800, 42.089668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336651, 39.496929, 41.430519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730116, 39.436218, 41.469234>,  <25.966196, 39.399792, 41.492462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730116, 39.436218, 41.469234>,  <25.336651, 39.496929, 41.430519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730116, 39.436218, 41.469234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019909, -0.442637, -0.896480,
		0.178910, 0.883762, -0.432385,
		0.983664, -0.151781, 0.096787,
		26.025215, 39.390682, 41.498272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572084, 39.656258, 40.784512>,  <25.336651, 39.496929, 41.430519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572084, 39.656258, 40.784512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.876610, 39.466324, 40.961117>,  <26.059324, 39.352364, 41.067081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.876610, 39.466324, 40.961117>,  <25.572084, 39.656258, 40.784512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.876610, 39.466324, 40.961117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294463, -0.353463, -0.887894,
		0.577664, 0.805973, -0.129274,
		0.761312, -0.474838, 0.441512,
		26.105003, 39.323872, 41.093571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173859, 39.736233, 40.327599>,  <25.572084, 39.656258, 40.784512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173859, 39.736233, 40.327599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.282473, 39.425949, 40.555473>,  <26.347641, 39.239780, 40.692200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.282473, 39.425949, 40.555473>,  <26.173859, 39.736233, 40.327599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282473, 39.425949, 40.555473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264697, -0.508910, -0.819113,
		0.925313, 0.373214, 0.067139,
		0.271537, -0.775707, 0.569689,
		26.363934, 39.193237, 40.726379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968088, 39.591438, 40.253670>,  <26.173859, 39.736233, 40.327599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968088, 39.591438, 40.253670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.727596, 39.283672, 40.339947>,  <26.583302, 39.099014, 40.391712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.727596, 39.283672, 40.339947>,  <26.968088, 39.591438, 40.253670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727596, 39.283672, 40.339947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261648, -0.444607, -0.856659,
		0.755025, -0.458613, 0.468627,
		-0.601230, -0.769415, 0.215694,
		26.547228, 39.052849, 40.404655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350586, 39.029854, 40.038765>,  <26.968088, 39.591438, 40.253670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350586, 39.029854, 40.038765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.971573, 38.908836, 40.080040>,  <26.744165, 38.836224, 40.104805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.971573, 38.908836, 40.080040>,  <27.350586, 39.029854, 40.038765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971573, 38.908836, 40.080040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049469, -0.457697, -0.887731,
		0.315810, -0.836049, 0.448649,
		-0.947532, -0.302548, 0.103187,
		26.687313, 38.818073, 40.110996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420986, 38.345684, 39.923466>,  <27.350586, 39.029854, 40.038765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420986, 38.345684, 39.923466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038406, 38.450233, 39.871483>,  <26.808859, 38.512962, 39.840294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038406, 38.450233, 39.871483>,  <27.420986, 38.345684, 39.923466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038406, 38.450233, 39.871483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021132, -0.382037, -0.923905,
		-0.291133, -0.886415, 0.359875,
		-0.956449, 0.261375, -0.129955,
		26.751472, 38.528648, 39.832497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243528, 37.794041, 39.605579>,  <27.420986, 38.345684, 39.923466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243528, 37.794041, 39.605579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.936296, 38.040829, 39.536987>,  <26.751957, 38.188900, 39.495834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.936296, 38.040829, 39.536987>,  <27.243528, 37.794041, 39.605579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936296, 38.040829, 39.536987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058133, -0.333859, -0.940829,
		-0.637711, -0.712662, 0.292296,
		-0.768078, 0.616969, -0.171476,
		26.705873, 38.225918, 39.485546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763237, 37.334515, 39.213051>,  <27.243528, 37.794041, 39.605579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763237, 37.334515, 39.213051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.647802, 37.708889, 39.132317>,  <26.578541, 37.933514, 39.083874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.647802, 37.708889, 39.132317>,  <26.763237, 37.334515, 39.213051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647802, 37.708889, 39.132317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226268, -0.271505, -0.935461,
		-0.930334, -0.224291, 0.290125,
		-0.288586, 0.935937, -0.201840,
		26.561226, 37.989670, 39.071766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152802, 37.273830, 38.846210>,  <26.763237, 37.334515, 39.213051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152802, 37.273830, 38.846210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.283911, 37.630886, 38.722427>,  <26.362576, 37.845119, 38.648159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.283911, 37.630886, 38.722427>,  <26.152802, 37.273830, 38.846210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283911, 37.630886, 38.722427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193443, -0.257199, -0.946799,
		-0.924740, 0.370196, 0.088372,
		0.327772, 0.892638, -0.309455,
		26.382242, 37.898678, 38.629589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700697, 37.465107, 38.333694>,  <26.152802, 37.273830, 38.846210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700697, 37.465107, 38.333694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.031300, 37.681099, 38.270058>,  <26.229662, 37.810696, 38.231876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.031300, 37.681099, 38.270058>,  <25.700697, 37.465107, 38.333694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031300, 37.681099, 38.270058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030517, -0.239217, -0.970487,
		-0.562100, 0.806968, -0.181236,
		0.826506, 0.539980, -0.159090,
		26.279251, 37.843094, 38.222332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542137, 37.789177, 37.765205>,  <25.700697, 37.465107, 38.333694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542137, 37.789177, 37.765205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.937489, 37.849834, 37.769478>,  <26.174700, 37.886230, 37.772041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.937489, 37.849834, 37.769478>,  <25.542137, 37.789177, 37.765205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937489, 37.849834, 37.769478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040673, -0.196061, -0.979748,
		-0.146479, 0.968795, -0.199950,
		0.988377, 0.151645, 0.010685,
		26.234001, 37.895329, 37.772682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672935, 38.291615, 37.219532>,  <25.542137, 37.789177, 37.765205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672935, 38.291615, 37.219532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.007771, 38.082279, 37.283291>,  <26.208672, 37.956680, 37.321545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.007771, 38.082279, 37.283291>,  <25.672935, 38.291615, 37.219532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007771, 38.082279, 37.283291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076803, -0.176061, -0.981378,
		0.541653, 0.833740, -0.107184,
		0.837086, -0.523335, 0.159398,
		26.258896, 37.925278, 37.331112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146898, 38.559166, 36.846188>,  <25.672935, 38.291615, 37.219532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146898, 38.559166, 36.846188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.301113, 38.194550, 36.903400>,  <26.393642, 37.975780, 36.937729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.301113, 38.194550, 36.903400>,  <26.146898, 38.559166, 36.846188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301113, 38.194550, 36.903400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068837, -0.126168, -0.989618,
		0.920122, 0.391378, 0.014105,
		0.385535, -0.911540, 0.143032,
		26.416773, 37.921089, 36.946308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624672, 38.500599, 36.316246>,  <26.146898, 38.559166, 36.846188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624672, 38.500599, 36.316246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592680, 38.122051, 36.441456>,  <26.573484, 37.894920, 36.516582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592680, 38.122051, 36.441456>,  <26.624672, 38.500599, 36.316246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592680, 38.122051, 36.441456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184517, -0.294549, -0.937653,
		0.979570, -0.132751, -0.151064,
		-0.079978, -0.946371, 0.313027,
		26.568687, 37.838139, 36.535362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035099, 38.097855, 35.907536>,  <26.624672, 38.500599, 36.316246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035099, 38.097855, 35.907536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774179, 37.820381, 36.029720>,  <26.617628, 37.653896, 36.103031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.774179, 37.820381, 36.029720>,  <27.035099, 38.097855, 35.907536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774179, 37.820381, 36.029720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199375, -0.231785, -0.952117,
		0.731270, -0.681966, 0.012890,
		-0.652299, -0.693685, 0.305464,
		26.578489, 37.612274, 36.121361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701721, 38.617558, 36.000454>,  <27.035099, 38.097855, 35.907536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701721, 38.617558, 36.000454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060408, 38.744530, 35.877075>,  <28.275620, 38.820713, 35.803047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060408, 38.744530, 35.877075>,  <27.701721, 38.617558, 36.000454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060408, 38.744530, 35.877075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115489, 0.504946, 0.855390,
		0.427274, -0.802664, 0.416134,
		0.896716, 0.317427, -0.308450,
		28.329422, 38.839760, 35.784538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214888, 38.502945, 36.528961>,  <27.701721, 38.617558, 36.000454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214888, 38.502945, 36.528961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373636, 38.796738, 36.308769>,  <28.468885, 38.973011, 36.176655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373636, 38.796738, 36.308769>,  <28.214888, 38.502945, 36.528961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373636, 38.796738, 36.308769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077709, 0.570698, 0.817475,
		0.914579, -0.367210, 0.169417,
		0.396871, 0.734480, -0.550483,
		28.492699, 39.017082, 36.143623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856932, 38.618587, 36.840382>,  <28.214888, 38.502945, 36.528961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856932, 38.618587, 36.840382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713919, 38.940163, 36.650288>,  <28.628111, 39.133110, 36.536232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713919, 38.940163, 36.650288>,  <28.856932, 38.618587, 36.840382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713919, 38.940163, 36.650288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169886, 0.556371, 0.813382,
		0.918319, 0.210074, -0.335499,
		-0.357532, 0.803940, -0.475238,
		28.606659, 39.181343, 36.507717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220890, 39.193447, 37.192795>,  <28.856932, 38.618587, 36.840382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220890, 39.193447, 37.192795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924742, 39.366039, 36.986618>,  <28.747053, 39.469593, 36.862911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924742, 39.366039, 36.986618>,  <29.220890, 39.193447, 37.192795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924742, 39.366039, 36.986618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143016, 0.648131, 0.747979,
		0.656809, 0.627498, -0.418149,
		-0.740370, 0.431478, -0.515440,
		28.702631, 39.495483, 36.831985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514103, 39.859848, 36.979290>,  <29.220890, 39.193447, 37.192795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514103, 39.859848, 36.979290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115105, 39.857750, 37.007500>,  <28.875706, 39.856491, 37.024426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115105, 39.857750, 37.007500>,  <29.514103, 39.859848, 36.979290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115105, 39.857750, 37.007500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061050, 0.439433, 0.896198,
		-0.035690, 0.898260, -0.438013,
		-0.997497, -0.005245, 0.070523,
		28.815855, 39.856178, 37.028656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352716, 40.552151, 37.214153>,  <29.514103, 39.859848, 36.979290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352716, 40.552151, 37.214153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020098, 40.338207, 37.274094>,  <28.820526, 40.209839, 37.310059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.020098, 40.338207, 37.274094>,  <29.352716, 40.552151, 37.214153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020098, 40.338207, 37.274094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236045, 0.584474, 0.776320,
		-0.502808, 0.610174, -0.612268,
		-0.831545, -0.534862, 0.149850,
		28.770634, 40.177750, 37.319050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929525, 41.045551, 37.430218>,  <29.352716, 40.552151, 37.214153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929525, 41.045551, 37.430218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.720974, 40.734337, 37.570400>,  <28.595842, 40.547607, 37.654510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.720974, 40.734337, 37.570400>,  <28.929525, 41.045551, 37.430218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720974, 40.734337, 37.570400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326565, 0.561353, 0.760420,
		-0.788365, 0.282021, -0.546759,
		-0.521379, -0.778041, 0.350452,
		28.564560, 40.500923, 37.675537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266758, 41.379738, 37.602459>,  <28.929525, 41.045551, 37.430218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266758, 41.379738, 37.602459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275440, 41.049686, 37.828274>,  <28.280649, 40.851658, 37.963760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.275440, 41.049686, 37.828274>,  <28.266758, 41.379738, 37.602459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275440, 41.049686, 37.828274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270716, 0.538721, 0.797805,
		-0.962414, -0.170146, -0.211681,
		0.021707, -0.825124, 0.564534,
		28.281952, 40.802151, 37.997635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718424, 41.448792, 38.039112>,  <28.266758, 41.379738, 37.602459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718424, 41.448792, 38.039112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936144, 41.156738, 38.204346>,  <28.066776, 40.981506, 38.303486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.936144, 41.156738, 38.204346>,  <27.718424, 41.448792, 38.039112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936144, 41.156738, 38.204346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127314, 0.414820, 0.900953,
		-0.829175, -0.542978, 0.132829,
		0.544298, -0.730136, 0.413087,
		28.099434, 40.937698, 38.328270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301865, 41.206509, 38.453957>,  <27.718424, 41.448792, 38.039112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301865, 41.206509, 38.453957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680298, 41.165089, 38.576729>,  <27.907358, 41.140236, 38.650391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680298, 41.165089, 38.576729>,  <27.301865, 41.206509, 38.453957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680298, 41.165089, 38.576729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225470, 0.469809, 0.853488,
		-0.232577, -0.876674, 0.421131,
		0.946082, -0.103549, 0.306931,
		27.964123, 41.134026, 38.668808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206181, 41.042900, 39.152786>,  <27.301865, 41.206509, 38.453957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206181, 41.042900, 39.152786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596157, 41.131847, 39.150280>,  <27.830143, 41.185215, 39.148777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596157, 41.131847, 39.150280>,  <27.206181, 41.042900, 39.152786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596157, 41.131847, 39.150280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069735, 0.332261, 0.940606,
		0.211241, -0.916600, 0.339443,
		0.974943, 0.222366, -0.006268,
		27.888639, 41.198559, 39.148399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326624, 40.827969, 39.751400>,  <27.206181, 41.042900, 39.152786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326624, 40.827969, 39.751400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616270, 41.088085, 39.659504>,  <27.790058, 41.244156, 39.604366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616270, 41.088085, 39.659504>,  <27.326624, 40.827969, 39.751400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616270, 41.088085, 39.659504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176259, 0.496544, 0.849928,
		0.666777, -0.574950, 0.474174,
		0.724114, 0.650289, -0.229744,
		27.833504, 41.283173, 39.590580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739265, 40.876740, 40.365505>,  <27.326624, 40.827969, 39.751400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739265, 40.876740, 40.365505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849571, 41.194206, 40.148602>,  <27.915754, 41.384686, 40.018459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849571, 41.194206, 40.148602>,  <27.739265, 40.876740, 40.365505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849571, 41.194206, 40.148602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125910, 0.589099, 0.798191,
		0.952943, -0.151839, 0.262384,
		0.275766, 0.793667, -0.542260,
		27.932301, 41.432308, 39.985924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334694, 41.165951, 40.781223>,  <27.739265, 40.876740, 40.365505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334694, 41.165951, 40.781223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147757, 41.426804, 40.542454>,  <28.035595, 41.583317, 40.399193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147757, 41.426804, 40.542454>,  <28.334694, 41.165951, 40.781223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147757, 41.426804, 40.542454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088765, 0.637169, 0.765595,
		0.879609, 0.410781, -0.239890,
		-0.467342, 0.652131, -0.596923,
		28.007553, 41.622444, 40.363377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711775, 41.795055, 40.924763>,  <28.334694, 41.165951, 40.781223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711775, 41.795055, 40.924763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.386818, 41.942039, 40.743660>,  <28.191843, 42.030231, 40.634998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.386818, 41.942039, 40.743660>,  <28.711775, 41.795055, 40.924763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386818, 41.942039, 40.743660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089593, 0.688573, 0.719611,
		0.576187, 0.625171, -0.526470,
		-0.812393, 0.367462, -0.452758,
		28.143101, 42.052277, 40.607834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771988, 42.492718, 41.045914>,  <28.711775, 41.795055, 40.924763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771988, 42.492718, 41.045914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393169, 42.429291, 40.934227>,  <28.165878, 42.391235, 40.867214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393169, 42.429291, 40.934227>,  <28.771988, 42.492718, 41.045914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393169, 42.429291, 40.934227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319727, 0.546098, 0.774307,
		0.029697, 0.822576, -0.567879,
		-0.947044, -0.158571, -0.279217,
		28.109056, 42.381718, 40.850460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437525, 43.185253, 41.113514>,  <28.771988, 42.492718, 41.045914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437525, 43.185253, 41.113514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155981, 42.904423, 41.156742>,  <27.987055, 42.735924, 41.182678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155981, 42.904423, 41.156742>,  <28.437525, 43.185253, 41.113514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155981, 42.904423, 41.156742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369588, 0.491874, 0.788330,
		-0.606622, 0.514931, -0.605687,
		-0.703857, -0.702073, 0.108069,
		27.944824, 42.693802, 41.189163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953199, 43.590767, 41.323181>,  <28.437525, 43.185253, 41.113514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953199, 43.590767, 41.323181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775217, 43.241459, 41.402599>,  <27.668427, 43.031876, 41.450249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775217, 43.241459, 41.402599>,  <27.953199, 43.590767, 41.323181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775217, 43.241459, 41.402599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590367, 0.452733, 0.668206,
		-0.673409, 0.180111, -0.716994,
		-0.444958, -0.873266, 0.198543,
		27.641729, 42.979481, 41.462162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213640, 43.739555, 41.389900>,  <27.953199, 43.590767, 41.323181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213640, 43.739555, 41.389900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300138, 43.406158, 41.593285>,  <27.352037, 43.206120, 41.715317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300138, 43.406158, 41.593285>,  <27.213640, 43.739555, 41.389900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300138, 43.406158, 41.593285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566339, 0.317132, 0.760715,
		-0.795298, -0.452461, -0.403460,
		0.216244, -0.833490, 0.508461,
		27.365011, 43.156113, 41.745823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606524, 43.610580, 41.691658>,  <27.213640, 43.739555, 41.389900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606524, 43.610580, 41.691658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859932, 43.395161, 41.913872>,  <27.011978, 43.265911, 42.047199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.859932, 43.395161, 41.913872>,  <26.606524, 43.610580, 41.691658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859932, 43.395161, 41.913872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511064, 0.247813, 0.823045,
		-0.580916, -0.805330, -0.118237,
		0.633522, -0.538547, 0.555534,
		27.049988, 43.233597, 42.080532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146805, 43.165871, 42.111240>,  <26.606524, 43.610580, 41.691658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146805, 43.165871, 42.111240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.506155, 43.174828, 42.286701>,  <26.721766, 43.180202, 42.391979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.506155, 43.174828, 42.286701>,  <26.146805, 43.165871, 42.111240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506155, 43.174828, 42.286701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430559, 0.242276, 0.869437,
		-0.086811, -0.969949, 0.227295,
		0.898378, 0.022387, 0.438653,
		26.775669, 43.181545, 42.418297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072393, 42.827576, 42.722118>,  <26.146805, 43.165871, 42.111240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072393, 42.827576, 42.722118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.400063, 43.037285, 42.815147>,  <26.596664, 43.163113, 42.870964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.400063, 43.037285, 42.815147>,  <26.072393, 42.827576, 42.722118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400063, 43.037285, 42.815147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400002, 0.231630, 0.886762,
		0.411041, -0.819438, 0.399457,
		0.819173, 0.524279, 0.232567,
		26.645815, 43.194569, 42.884918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.694473, 40.604191, 44.966686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.486107, 40.301704, 45.125072>,  <38.361088, 40.120213, 45.220104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.486107, 40.301704, 45.125072>,  <38.694473, 40.604191, 44.966686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486107, 40.301704, 45.125072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090177, 0.412523, 0.906473,
		-0.848834, 0.507900, -0.146694,
		-0.520912, -0.756217, 0.395964,
		38.329834, 40.074841, 45.243862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185551, 40.934902, 45.439354>,  <38.694473, 40.604191, 44.966686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185551, 40.934902, 45.439354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.242844, 40.559029, 45.563602>,  <38.277218, 40.333504, 45.638153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.242844, 40.559029, 45.563602>,  <38.185551, 40.934902, 45.439354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242844, 40.559029, 45.563602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005651, 0.314629, 0.949198,
		-0.989674, -0.134197, 0.050374,
		0.143228, -0.939681, 0.310621,
		38.285812, 40.277122, 45.656788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795261, 40.767521, 46.001278>,  <38.185551, 40.934902, 45.439354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795261, 40.767521, 46.001278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.075603, 40.484619, 46.038372>,  <38.243809, 40.314877, 46.060627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.075603, 40.484619, 46.038372>,  <37.795261, 40.767521, 46.001278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075603, 40.484619, 46.038372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063545, 0.191397, 0.979454,
		-0.710471, -0.680559, 0.179083,
		0.700851, -0.707253, 0.092736,
		38.285858, 40.272442, 46.066193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687939, 40.418468, 46.647705>,  <37.795261, 40.767521, 46.001278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687939, 40.418468, 46.647705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070412, 40.373268, 46.539677>,  <38.299896, 40.346146, 46.474861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070412, 40.373268, 46.539677>,  <37.687939, 40.418468, 46.647705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070412, 40.373268, 46.539677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290577, 0.478754, 0.828468,
		0.035676, -0.870646, 0.490615,
		0.956187, -0.113005, -0.270070,
		38.357269, 40.339367, 46.458656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059147, 40.143719, 47.276684>,  <37.687939, 40.418468, 46.647705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059147, 40.143719, 47.276684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.402157, 40.218616, 47.085022>,  <38.607964, 40.263554, 46.970024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.402157, 40.218616, 47.085022>,  <38.059147, 40.143719, 47.276684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402157, 40.218616, 47.085022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396825, 0.351975, 0.847729,
		0.327367, -0.917093, 0.227533,
		0.857532, 0.187228, -0.479151,
		38.659416, 40.274788, 46.941277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727009, 39.821674, 47.659973>,  <38.059147, 40.143719, 47.276684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727009, 39.821674, 47.659973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884460, 40.103054, 47.423256>,  <38.978931, 40.271881, 47.281227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884460, 40.103054, 47.423256>,  <38.727009, 39.821674, 47.659973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884460, 40.103054, 47.423256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504778, 0.372627, 0.778684,
		0.768283, -0.605232, -0.208411,
		0.393625, 0.703451, -0.591791,
		39.002548, 40.314091, 47.245720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447369, 39.875999, 47.750473>,  <38.727009, 39.821674, 47.659973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447369, 39.875999, 47.750473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.322536, 40.232784, 47.619625>,  <39.247639, 40.446857, 47.541115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.322536, 40.232784, 47.619625>,  <39.447369, 39.875999, 47.750473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322536, 40.232784, 47.619625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401493, 0.435878, 0.805490,
		0.861053, 0.120038, -0.494144,
		-0.312076, 0.891965, -0.327119,
		39.228912, 40.500374, 47.521488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919460, 40.273056, 47.961693>,  <39.447369, 39.875999, 47.750473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919460, 40.273056, 47.961693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.672237, 40.556274, 47.825066>,  <39.523903, 40.726208, 47.743088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.672237, 40.556274, 47.825066>,  <39.919460, 40.273056, 47.961693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672237, 40.556274, 47.825066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497947, 0.688820, 0.526854,
		0.608319, 0.155544, -0.778303,
		-0.618059, 0.708049, -0.341570,
		39.486820, 40.768688, 47.722595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424484, 40.871361, 47.706532>,  <39.919460, 40.273056, 47.961693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424484, 40.871361, 47.706532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.047867, 40.944702, 47.819584>,  <39.821896, 40.988708, 47.887413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.047867, 40.944702, 47.819584>,  <40.424484, 40.871361, 47.706532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047867, 40.944702, 47.819584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335164, 0.594703, 0.730749,
		-0.034096, 0.782758, -0.621391,
		-0.941543, 0.183353, 0.282629,
		39.765404, 40.999706, 47.904373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394905, 41.567638, 47.758823>,  <40.424484, 40.871361, 47.706532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394905, 41.567638, 47.758823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.096333, 41.419270, 47.979824>,  <39.917191, 41.330250, 48.112423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.096333, 41.419270, 47.979824>,  <40.394905, 41.567638, 47.758823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096333, 41.419270, 47.979824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381323, 0.442019, 0.811918,
		-0.545373, 0.816723, -0.188497,
		-0.746432, -0.370920, 0.552501,
		39.872402, 41.307995, 48.145573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308159, 42.087986, 48.092876>,  <40.394905, 41.567638, 47.758823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308159, 42.087986, 48.092876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.134041, 41.804768, 48.315296>,  <40.029572, 41.634838, 48.448750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.134041, 41.804768, 48.315296>,  <40.308159, 42.087986, 48.092876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134041, 41.804768, 48.315296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424781, 0.383039, 0.820269,
		-0.793776, 0.593258, 0.134030,
		-0.435293, -0.708044, 0.556052,
		40.003452, 41.592354, 48.482113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920013, 42.355045, 48.753906>,  <40.308159, 42.087986, 48.092876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920013, 42.355045, 48.753906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.020767, 41.973099, 48.816879>,  <40.081219, 41.743931, 48.854664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.020767, 41.973099, 48.816879>,  <39.920013, 42.355045, 48.753906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020767, 41.973099, 48.816879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329598, 0.237601, 0.913735,
		-0.909900, -0.178266, 0.374570,
		0.251886, -0.954865, 0.157437,
		40.096333, 41.686638, 48.864109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831161, 43.117027, 48.960876>,  <39.920013, 42.355045, 48.753906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831161, 43.117027, 48.960876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.925507, 43.038254, 49.341526>,  <39.982113, 42.990990, 49.569916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.925507, 43.038254, 49.341526>,  <39.831161, 43.117027, 48.960876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925507, 43.038254, 49.341526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805217, 0.508630, 0.304829,
		-0.544055, -0.838161, -0.038608,
		0.235859, -0.196932, 0.951624,
		39.996265, 42.979176, 49.627014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194843, 42.760719, 49.168472>,  <39.831161, 43.117027, 48.960876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194843, 42.760719, 49.168472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.410313, 42.920456, 49.465214>,  <39.539597, 43.016300, 49.643261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.410313, 42.920456, 49.465214>,  <39.194843, 42.760719, 49.168472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410313, 42.920456, 49.465214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826832, 0.419669, 0.374469,
		-0.161792, -0.815108, 0.556257,
		0.538676, 0.399345, 0.741857,
		39.571915, 43.040260, 49.687771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674690, 43.077896, 49.684048>,  <39.194843, 42.760719, 49.168472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674690, 43.077896, 49.684048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334293, 43.235813, 49.822586>,  <38.130054, 43.330563, 49.905708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334293, 43.235813, 49.822586>,  <38.674690, 43.077896, 49.684048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334293, 43.235813, 49.822586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330851, 0.109167, -0.937347,
		-0.407868, -0.912262, 0.037718,
		-0.850988, 0.394793, 0.346349,
		38.078999, 43.354252, 49.926491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027893, 42.661694, 49.435043>,  <38.674690, 43.077896, 49.684048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027893, 42.661694, 49.435043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932178, 43.037739, 49.532139>,  <37.874748, 43.263367, 49.590397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.932178, 43.037739, 49.532139>,  <38.027893, 42.661694, 49.435043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932178, 43.037739, 49.532139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424124, 0.123682, -0.897118,
		-0.873419, -0.317619, 0.369131,
		-0.239287, 0.940117, 0.242736,
		37.860394, 43.319775, 49.604961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383213, 42.733524, 49.258244>,  <38.027893, 42.661694, 49.435043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383213, 42.733524, 49.258244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495026, 43.117382, 49.270542>,  <37.562111, 43.347698, 49.277920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495026, 43.117382, 49.270542>,  <37.383213, 42.733524, 49.258244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495026, 43.117382, 49.270542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419999, 0.151011, -0.894872,
		-0.863402, 0.237230, 0.445262,
		0.279530, 0.959644, 0.030747,
		37.578884, 43.405277, 49.279766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780815, 43.185307, 49.323193>,  <37.383213, 42.733524, 49.258244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780815, 43.185307, 49.323193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092285, 43.380768, 49.165775>,  <37.279167, 43.498047, 49.071323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092285, 43.380768, 49.165775>,  <36.780815, 43.185307, 49.323193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092285, 43.380768, 49.165775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466317, 0.031077, -0.884072,
		-0.419777, 0.871922, 0.252067,
		0.778676, 0.488656, -0.393547,
		37.325890, 43.527367, 49.047710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582657, 43.625263, 48.917484>,  <36.780815, 43.185307, 49.323193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582657, 43.625263, 48.917484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948437, 43.692039, 48.770016>,  <37.167904, 43.732105, 48.681534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.948437, 43.692039, 48.770016>,  <36.582657, 43.625263, 48.917484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948437, 43.692039, 48.770016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388802, 0.109502, -0.914791,
		-0.112341, 0.979868, 0.165038,
		0.914446, 0.166936, -0.368674,
		37.222771, 43.742119, 48.659412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483711, 44.158352, 48.571983>,  <36.582657, 43.625263, 48.917484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483711, 44.158352, 48.571983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828163, 44.043076, 48.404457>,  <37.034832, 43.973911, 48.303944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828163, 44.043076, 48.404457>,  <36.483711, 44.158352, 48.571983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828163, 44.043076, 48.404457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371705, 0.205110, -0.905409,
		0.346834, 0.935348, 0.069504,
		0.861128, -0.288191, -0.418813,
		37.086502, 43.956619, 48.278812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625450, 44.594444, 47.990711>,  <36.483711, 44.158352, 48.571983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625450, 44.594444, 47.990711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817417, 44.249039, 47.928711>,  <36.932598, 44.041798, 47.891510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817417, 44.249039, 47.928711>,  <36.625450, 44.594444, 47.990711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817417, 44.249039, 47.928711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329964, -0.013955, -0.943890,
		0.812896, 0.504138, -0.291625,
		0.479921, -0.863510, -0.155004,
		36.961391, 43.989986, 47.882210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799088, 44.748356, 47.324295>,  <36.625450, 44.594444, 47.990711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799088, 44.748356, 47.324295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851967, 44.355843, 47.380310>,  <36.883694, 44.120335, 47.413921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851967, 44.355843, 47.380310>,  <36.799088, 44.748356, 47.324295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851967, 44.355843, 47.380310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177521, -0.162435, -0.970619,
		0.975198, 0.103451, -0.195672,
		0.132196, -0.981281, 0.140041,
		36.891624, 44.061459, 47.422321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128647, 44.563435, 46.763237>,  <36.799088, 44.748356, 47.324295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128647, 44.563435, 46.763237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960152, 44.226658, 46.898113>,  <36.859055, 44.024593, 46.979038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960152, 44.226658, 46.898113>,  <37.128647, 44.563435, 46.763237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960152, 44.226658, 46.898113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156291, -0.298840, -0.941418,
		0.893382, -0.449261, -0.005704,
		-0.421238, -0.841938, 0.337194,
		36.833778, 43.974075, 46.999271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413338, 43.923706, 46.307335>,  <37.128647, 44.563435, 46.763237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413338, 43.923706, 46.307335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093109, 43.787987, 46.504902>,  <36.900970, 43.706554, 46.623444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093109, 43.787987, 46.504902>,  <37.413338, 43.923706, 46.307335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093109, 43.787987, 46.504902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239492, -0.574395, -0.782760,
		0.549293, -0.744949, 0.378588,
		-0.800575, -0.339296, 0.493921,
		36.852936, 43.686199, 46.653076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442902, 43.229649, 46.206158>,  <37.413338, 43.923706, 46.307335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442902, 43.229649, 46.206158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063206, 43.335411, 46.274319>,  <36.835388, 43.398869, 46.315216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063206, 43.335411, 46.274319>,  <37.442902, 43.229649, 46.206158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063206, 43.335411, 46.274319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271268, -0.413839, -0.868994,
		-0.159250, -0.871106, 0.464557,
		-0.949238, 0.264407, 0.170399,
		36.778435, 43.414734, 46.325439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194160, 42.596077, 46.237717>,  <37.442902, 43.229649, 46.206158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194160, 42.596077, 46.237717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935207, 42.890526, 46.158710>,  <36.779835, 43.067196, 46.111305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935207, 42.890526, 46.158710>,  <37.194160, 42.596077, 46.237717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935207, 42.890526, 46.158710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244589, -0.446099, -0.860913,
		-0.721852, -0.509032, 0.468846,
		-0.647384, 0.736127, -0.197514,
		36.740993, 43.111362, 46.099457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805183, 42.261089, 45.752499>,  <37.194160, 42.596077, 46.237717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805183, 42.261089, 45.752499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.681194, 42.637543, 45.698551>,  <36.606800, 42.863415, 45.666183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.681194, 42.637543, 45.698551>,  <36.805183, 42.261089, 45.752499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681194, 42.637543, 45.698551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201980, -0.203804, -0.957950,
		-0.929043, -0.269700, 0.253263,
		-0.309975, 0.941130, -0.134868,
		36.588203, 42.919880, 45.658092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094067, 42.265480, 45.483753>,  <36.805183, 42.261089, 45.752499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094067, 42.265480, 45.483753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288765, 42.594982, 45.367474>,  <36.405582, 42.792683, 45.297707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.288765, 42.594982, 45.367474>,  <36.094067, 42.265480, 45.483753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288765, 42.594982, 45.367474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274329, -0.171801, -0.946165,
		-0.829350, 0.540291, 0.142356,
		0.486747, 0.823754, -0.290701,
		36.434788, 42.842110, 45.280262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363144, 42.441647, 45.520535>,  <36.094067, 42.265480, 45.483753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363144, 42.441647, 45.520535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965061, 42.480713, 45.518291>,  <34.726212, 42.504154, 45.516945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965061, 42.480713, 45.518291>,  <35.363144, 42.441647, 45.520535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965061, 42.480713, 45.518291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021168, -0.159050, 0.987044,
		0.095513, 0.982427, 0.160355,
		-0.995203, 0.097670, -0.005604,
		34.666500, 42.510014, 45.516609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235477, 42.961605, 45.953434>,  <35.363144, 42.441647, 45.520535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235477, 42.961605, 45.953434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914951, 42.725246, 45.916039>,  <34.722637, 42.583431, 45.893600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914951, 42.725246, 45.916039>,  <35.235477, 42.961605, 45.953434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914951, 42.725246, 45.916039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049729, -0.089938, 0.994705,
		-0.596172, 0.801721, 0.042685,
		-0.801315, -0.590893, -0.093487,
		34.674557, 42.547977, 45.887993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851765, 43.253078, 46.497646>,  <35.235477, 42.961605, 45.953434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851765, 43.253078, 46.497646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696476, 42.893665, 46.415749>,  <34.603302, 42.678017, 46.366608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696476, 42.893665, 46.415749>,  <34.851765, 43.253078, 46.497646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696476, 42.893665, 46.415749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189136, -0.139759, 0.971954,
		-0.901948, 0.416060, -0.115687,
		-0.388222, -0.898533, -0.204748,
		34.580009, 42.624104, 46.354324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270813, 43.217522, 46.808079>,  <34.851765, 43.253078, 46.497646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270813, 43.217522, 46.808079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389339, 42.838142, 46.763092>,  <34.460453, 42.610516, 46.736099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389339, 42.838142, 46.763092>,  <34.270813, 43.217522, 46.808079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389339, 42.838142, 46.763092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009237, -0.120593, 0.992659,
		-0.955047, -0.293097, -0.044494,
		0.296311, -0.948447, -0.112465,
		34.478233, 42.553608, 46.729351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850357, 42.864025, 47.176266>,  <34.270813, 43.217522, 46.808079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850357, 42.864025, 47.176266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178337, 42.636021, 47.155186>,  <34.375126, 42.499218, 47.142536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178337, 42.636021, 47.155186>,  <33.850357, 42.864025, 47.176266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178337, 42.636021, 47.155186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092349, -0.222573, 0.970532,
		-0.564941, -0.790918, -0.235138,
		0.819947, -0.570009, -0.052700,
		34.424320, 42.465019, 47.139374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663422, 42.301147, 47.658901>,  <33.850357, 42.864025, 47.176266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663422, 42.301147, 47.658901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060192, 42.277489, 47.614017>,  <34.298252, 42.263294, 47.587090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060192, 42.277489, 47.614017>,  <33.663422, 42.301147, 47.658901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060192, 42.277489, 47.614017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098020, -0.203986, 0.974054,
		-0.080503, -0.977185, -0.196541,
		0.991923, -0.059149, -0.112206,
		34.357769, 42.259743, 47.580357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895569, 41.735596, 48.032223>,  <33.663422, 42.301147, 47.658901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895569, 41.735596, 48.032223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210098, 41.980774, 48.001251>,  <34.398815, 42.127880, 47.982666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210098, 41.980774, 48.001251>,  <33.895569, 41.735596, 48.032223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210098, 41.980774, 48.001251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056404, 0.053586, 0.996969,
		0.615240, -0.788303, 0.007563,
		0.786319, 0.612949, -0.077432,
		34.445995, 42.164658, 47.978024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278145, 41.068817, 47.917194>,  <33.895569, 41.735596, 48.032223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278145, 41.068817, 47.917194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212524, 40.699509, 48.056133>,  <34.173153, 40.477924, 48.139496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212524, 40.699509, 48.056133>,  <34.278145, 41.068817, 47.917194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212524, 40.699509, 48.056133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209230, -0.311537, -0.926913,
		0.964007, -0.224739, -0.142068,
		-0.164054, -0.923275, 0.347346,
		34.163307, 40.422527, 48.160336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656796, 40.604725, 47.582764>,  <34.278145, 41.068817, 47.917194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656796, 40.604725, 47.582764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347912, 40.376045, 47.693653>,  <34.162582, 40.238838, 47.760189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347912, 40.376045, 47.693653>,  <34.656796, 40.604725, 47.582764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347912, 40.376045, 47.693653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086568, -0.337590, -0.937304,
		0.629442, -0.747795, 0.211200,
		-0.772210, -0.571695, 0.277228,
		34.116249, 40.204536, 47.776821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837883, 39.942368, 47.284454>,  <34.656796, 40.604725, 47.582764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837883, 39.942368, 47.284454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444466, 39.943947, 47.356697>,  <34.208416, 39.944893, 47.400043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.444466, 39.943947, 47.356697>,  <34.837883, 39.942368, 47.284454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444466, 39.943947, 47.356697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160426, -0.478739, -0.863176,
		0.083057, -0.877948, 0.471496,
		-0.983547, 0.003947, 0.180609,
		34.149403, 39.945129, 47.410881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555893, 39.265472, 47.154942>,  <34.837883, 39.942368, 47.284454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555893, 39.265472, 47.154942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242104, 39.511299, 47.121685>,  <34.053829, 39.658794, 47.101730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242104, 39.511299, 47.121685>,  <34.555893, 39.265472, 47.154942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242104, 39.511299, 47.121685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350223, -0.549655, -0.758435,
		-0.511805, -0.565855, 0.646424,
		-0.784474, 0.614563, -0.083140,
		34.006763, 39.695667, 47.096741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243469, 38.834957, 46.749897>,  <34.555893, 39.265472, 47.154942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243469, 38.834957, 46.749897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020550, 39.166950, 46.759277>,  <33.886799, 39.366146, 46.764904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020550, 39.166950, 46.759277>,  <34.243469, 38.834957, 46.749897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020550, 39.166950, 46.759277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343566, -0.204796, -0.916526,
		-0.755898, -0.518834, 0.399286,
		-0.557297, 0.829982, 0.023449,
		33.853359, 39.415943, 46.766312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510780, 38.707382, 46.770077>,  <34.243469, 38.834957, 46.749897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510780, 38.707382, 46.770077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536449, 39.074787, 46.614017>,  <33.551849, 39.295231, 46.520382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.536449, 39.074787, 46.614017>,  <33.510780, 38.707382, 46.770077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536449, 39.074787, 46.614017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635002, -0.264009, -0.725997,
		-0.769841, 0.294332, 0.566316,
		0.064172, 0.918514, -0.390146,
		33.555702, 39.350342, 46.496975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806461, 38.756367, 46.314632>,  <33.510780, 38.707382, 46.770077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806461, 38.756367, 46.314632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046432, 39.059185, 46.211121>,  <33.190414, 39.240875, 46.149014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046432, 39.059185, 46.211121>,  <32.806461, 38.756367, 46.314632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046432, 39.059185, 46.211121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455550, 0.057338, -0.888362,
		-0.657690, 0.650845, 0.379270,
		0.599932, 0.757043, -0.258782,
		33.226414, 39.286297, 46.133488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.411507, 37.925297, 50.314907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.579853, 38.265060, 50.187542>,  <39.680862, 38.468918, 50.111122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.579853, 38.265060, 50.187542>,  <39.411507, 37.925297, 50.314907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579853, 38.265060, 50.187542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245563, -0.231224, -0.941400,
		-0.873254, 0.474392, 0.111268,
		0.420865, 0.849404, -0.318410,
		39.706112, 38.519882, 50.092018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958355, 38.171139, 49.782162>,  <39.411507, 37.925297, 50.314907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958355, 38.171139, 49.782162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.285896, 38.391823, 49.718803>,  <39.482422, 38.524235, 49.680790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.285896, 38.391823, 49.718803>,  <38.958355, 38.171139, 49.782162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285896, 38.391823, 49.718803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076133, -0.169115, -0.982651,
		-0.568927, 0.816709, -0.096478,
		0.818856, 0.551712, -0.158393,
		39.531551, 38.557335, 49.671284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749619, 38.648170, 49.240654>,  <38.958355, 38.171139, 49.782162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749619, 38.648170, 49.240654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.148148, 38.613968, 49.238365>,  <39.387264, 38.593449, 49.236992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.148148, 38.613968, 49.238365>,  <38.749619, 38.648170, 49.240654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148148, 38.613968, 49.238365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017627, -0.139093, -0.990122,
		0.083861, 0.986581, -0.140089,
		0.996322, -0.085502, -0.005726,
		39.447044, 38.588318, 49.236649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005638, 39.062046, 48.665974>,  <38.749619, 38.648170, 49.240654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005638, 39.062046, 48.665974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.316860, 38.819111, 48.730190>,  <39.503593, 38.673351, 48.768719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.316860, 38.819111, 48.730190>,  <39.005638, 39.062046, 48.665974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316860, 38.819111, 48.730190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050905, -0.193758, -0.979728,
		0.626128, 0.770456, -0.119838,
		0.778057, -0.607335, 0.160537,
		39.550278, 38.636909, 48.778351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658440, 39.203781, 48.095943>,  <39.005638, 39.062046, 48.665974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658440, 39.203781, 48.095943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.686859, 38.829708, 48.234734>,  <39.703911, 38.605267, 48.318008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.686859, 38.829708, 48.234734>,  <39.658440, 39.203781, 48.095943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686859, 38.829708, 48.234734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060430, -0.351253, -0.934328,
		0.995641, 0.045413, -0.081468,
		0.071046, -0.935178, 0.346978,
		39.708172, 38.549156, 48.338825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084396, 38.853191, 47.608864>,  <39.658440, 39.203781, 48.095943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084396, 38.853191, 47.608864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.895538, 38.561604, 47.807129>,  <39.782223, 38.386650, 47.926086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.895538, 38.561604, 47.807129>,  <40.084396, 38.853191, 47.608864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895538, 38.561604, 47.807129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174025, -0.474136, -0.863082,
		0.864175, -0.493754, 0.096999,
		-0.472140, -0.728973, 0.495662,
		39.753895, 38.342911, 47.955826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381039, 38.209621, 47.409920>,  <40.084396, 38.853191, 47.608864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381039, 38.209621, 47.409920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.026932, 38.099663, 47.559978>,  <39.814468, 38.033688, 47.650013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.026932, 38.099663, 47.559978>,  <40.381039, 38.209621, 47.409920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026932, 38.099663, 47.559978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143153, -0.606411, -0.782159,
		0.442504, -0.746123, 0.497484,
		-0.885266, -0.274892, 0.375150,
		39.761353, 38.017197, 47.672523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338020, 37.558510, 47.303139>,  <40.381039, 38.209621, 47.409920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338020, 37.558510, 47.303139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.947765, 37.639687, 47.336475>,  <39.713612, 37.688393, 47.356480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.947765, 37.639687, 47.336475>,  <40.338020, 37.558510, 47.303139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947765, 37.639687, 47.336475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189927, -0.591147, -0.783884,
		-0.109813, -0.780616, 0.615289,
		-0.975637, 0.202941, 0.083344,
		39.655075, 37.700569, 47.361477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044571, 36.953106, 47.110798>,  <40.338020, 37.558510, 47.303139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044571, 36.953106, 47.110798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.761818, 37.231079, 47.058056>,  <39.592167, 37.397865, 47.026409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.761818, 37.231079, 47.058056>,  <40.044571, 36.953106, 47.110798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761818, 37.231079, 47.058056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283039, -0.448739, -0.847657,
		-0.648236, -0.561870, 0.513898,
		-0.706879, 0.694935, -0.131858,
		39.549755, 37.439560, 47.018497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454792, 36.605267, 46.891029>,  <40.044571, 36.953106, 47.110798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454792, 36.605267, 46.891029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.367718, 36.976006, 46.768673>,  <39.315472, 37.198448, 46.695259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.367718, 36.976006, 46.768673>,  <39.454792, 36.605267, 46.891029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367718, 36.976006, 46.768673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298008, -0.361557, -0.883441,
		-0.929410, -0.101159, 0.354915,
		-0.217690, 0.926846, -0.305888,
		39.302410, 37.254059, 46.676907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783783, 36.582031, 46.665386>,  <39.454792, 36.605267, 46.891029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783783, 36.582031, 46.665386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.959633, 36.895153, 46.489231>,  <39.065144, 37.083027, 46.383537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.959633, 36.895153, 46.489231>,  <38.783783, 36.582031, 46.665386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959633, 36.895153, 46.489231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437615, -0.241497, -0.866125,
		-0.784362, 0.573490, 0.236401,
		0.439624, 0.782808, -0.440389,
		39.091518, 37.129997, 46.357113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252296, 36.860985, 46.273636>,  <38.783783, 36.582031, 46.665386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252296, 36.860985, 46.273636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.581108, 37.028736, 46.119549>,  <38.778397, 37.129387, 46.027096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.581108, 37.028736, 46.119549>,  <38.252296, 36.860985, 46.273636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581108, 37.028736, 46.119549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377568, -0.104989, -0.920011,
		-0.426277, 0.901720, 0.072040,
		0.822029, 0.419379, -0.385215,
		38.827717, 37.154549, 46.003983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760826, 37.386410, 46.258442>,  <38.252296, 36.860985, 46.273636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760826, 37.386410, 46.258442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.363037, 37.410271, 46.292995>,  <37.124363, 37.424587, 46.313728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.363037, 37.410271, 46.292995>,  <37.760826, 37.386410, 46.258442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363037, 37.410271, 46.292995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099066, 0.260951, 0.960255,
		0.034737, 0.963507, -0.265419,
		-0.994474, 0.059650, 0.086386,
		37.064693, 37.428165, 46.318913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647804, 38.074299, 46.574818>,  <37.760826, 37.386410, 46.258442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647804, 38.074299, 46.574818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.323753, 37.849522, 46.641647>,  <37.129322, 37.714657, 46.681744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.323753, 37.849522, 46.641647>,  <37.647804, 38.074299, 46.574818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323753, 37.849522, 46.641647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048187, 0.347847, 0.936312,
		-0.584267, 0.750484, -0.308879,
		-0.810130, -0.561940, 0.167072,
		37.080715, 37.680939, 46.691769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159508, 38.520180, 46.878273>,  <37.647804, 38.074299, 46.574818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159508, 38.520180, 46.878273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.052597, 38.146286, 46.971935>,  <36.988453, 37.921947, 47.028133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.052597, 38.146286, 46.971935>,  <37.159508, 38.520180, 46.878273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052597, 38.146286, 46.971935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127604, 0.275187, 0.952885,
		-0.955135, 0.224803, -0.192826,
		-0.267274, -0.934739, 0.234155,
		36.972416, 37.865864, 47.042183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489967, 38.642647, 47.203850>,  <37.159508, 38.520180, 46.878273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489967, 38.642647, 47.203850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.628815, 38.287354, 47.324215>,  <36.712124, 38.074177, 47.396435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.628815, 38.287354, 47.324215>,  <36.489967, 38.642647, 47.203850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628815, 38.287354, 47.324215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326934, 0.186130, 0.926537,
		-0.878991, -0.419994, -0.225785,
		0.347115, -0.888234, 0.300917,
		36.732948, 38.020882, 47.414490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965836, 38.349892, 47.564518>,  <36.489967, 38.642647, 47.203850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965836, 38.349892, 47.564518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.309925, 38.173988, 47.667767>,  <36.516380, 38.068447, 47.729713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.309925, 38.173988, 47.667767>,  <35.965836, 38.349892, 47.564518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309925, 38.173988, 47.667767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216270, 0.143763, 0.965691,
		-0.461782, -0.886533, 0.028561,
		0.860223, -0.439762, 0.258118,
		36.567993, 38.042061, 47.745201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737125, 38.186188, 48.172577>,  <35.965836, 38.349892, 47.564518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737125, 38.186188, 48.172577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.133472, 38.135303, 48.190460>,  <36.371281, 38.104771, 48.201191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.133472, 38.135303, 48.190460>,  <35.737125, 38.186188, 48.172577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133472, 38.135303, 48.190460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033346, 0.090101, 0.995374,
		-0.130653, -0.987775, 0.085036,
		0.990867, -0.127213, 0.044710,
		36.430733, 38.097141, 48.203873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844318, 37.780003, 48.736507>,  <35.737125, 38.186188, 48.172577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844318, 37.780003, 48.736507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191063, 37.967339, 48.668148>,  <36.399109, 38.079742, 48.627132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.191063, 37.967339, 48.668148>,  <35.844318, 37.780003, 48.736507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191063, 37.967339, 48.668148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103917, 0.165518, 0.980717,
		0.487599, -0.867904, 0.094812,
		0.866861, 0.468344, -0.170896,
		36.451122, 38.107841, 48.616879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260220, 37.561916, 49.286674>,  <35.844318, 37.780003, 48.736507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260220, 37.561916, 49.286674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.442375, 37.876518, 49.119804>,  <36.551670, 38.065281, 49.019684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.442375, 37.876518, 49.119804>,  <36.260220, 37.561916, 49.286674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442375, 37.876518, 49.119804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184994, 0.374756, 0.908479,
		0.870861, -0.490886, 0.025161,
		0.455389, 0.786504, -0.417172,
		36.578991, 38.112469, 48.994652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020996, 37.616680, 49.651173>,  <36.260220, 37.561916, 49.286674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020996, 37.616680, 49.651173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.893921, 37.963005, 49.496540>,  <36.817677, 38.170799, 49.403759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.893921, 37.963005, 49.496540>,  <37.020996, 37.616680, 49.651173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893921, 37.963005, 49.496540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035323, 0.418226, 0.907655,
		0.947538, 0.274693, -0.163448,
		-0.317685, 0.865812, -0.386582,
		36.798615, 38.222748, 49.380566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350086, 38.105762, 50.110840>,  <37.020996, 37.616680, 49.651173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350086, 38.105762, 50.110840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.071583, 38.308685, 49.907719>,  <36.904480, 38.430439, 49.785847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.071583, 38.308685, 49.907719>,  <37.350086, 38.105762, 50.110840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071583, 38.308685, 49.907719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216484, 0.526097, 0.822409,
		0.684369, 0.682540, -0.256475,
		-0.696257, 0.507308, -0.507803,
		36.862705, 38.460876, 49.755379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494507, 38.786877, 50.216885>,  <37.350086, 38.105762, 50.110840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494507, 38.786877, 50.216885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.109608, 38.790321, 50.108063>,  <36.878670, 38.792389, 50.042770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.109608, 38.790321, 50.108063>,  <37.494507, 38.786877, 50.216885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109608, 38.790321, 50.108063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217291, 0.577635, 0.786843,
		0.163922, 0.816250, -0.553955,
		-0.962244, 0.008612, -0.272051,
		36.820934, 38.792904, 50.026447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272018, 39.518822, 50.214302>,  <37.494507, 38.786877, 50.216885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272018, 39.518822, 50.214302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.942879, 39.297676, 50.266857>,  <36.745396, 39.164989, 50.298389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.942879, 39.297676, 50.266857>,  <37.272018, 39.518822, 50.214302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942879, 39.297676, 50.266857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237678, 0.544844, 0.804148,
		-0.516169, 0.630464, -0.579728,
		-0.822848, -0.552865, 0.131384,
		36.696026, 39.131817, 50.306271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928757, 39.985016, 50.526798>,  <37.272018, 39.518822, 50.214302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928757, 39.985016, 50.526798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712669, 39.653336, 50.584209>,  <36.583019, 39.454327, 50.618656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712669, 39.653336, 50.584209>,  <36.928757, 39.985016, 50.526798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712669, 39.653336, 50.584209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383776, 0.394542, 0.834897,
		-0.748922, 0.395940, -0.531363,
		-0.540214, -0.829197, 0.143529,
		36.550606, 39.404575, 50.627270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130470, 40.156010, 50.538925>,  <36.928757, 39.985016, 50.526798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130470, 40.156010, 50.538925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.239510, 39.822697, 50.731308>,  <36.304935, 39.622707, 50.846737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.239510, 39.822697, 50.731308>,  <36.130470, 40.156010, 50.538925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239510, 39.822697, 50.731308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524324, 0.290476, 0.800443,
		-0.806705, -0.470380, -0.357728,
		0.272601, -0.833286, 0.480959,
		36.321289, 39.572712, 50.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426895, 39.947468, 50.776073>,  <36.130470, 40.156010, 50.538925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426895, 39.947468, 50.776073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197971, 40.262337, 50.868008>,  <35.060619, 40.451260, 50.923168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.197971, 40.262337, 50.868008>,  <35.426895, 39.947468, 50.776073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197971, 40.262337, 50.868008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594219, -0.204932, -0.777757,
		-0.565127, -0.581691, 0.585036,
		-0.572307, 0.787171, 0.229839,
		35.026279, 40.498489, 50.936958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709221, 39.760986, 50.812229>,  <35.426895, 39.947468, 50.776073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709221, 39.760986, 50.812229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.708942, 40.146397, 50.705185>,  <34.708775, 40.377644, 50.640957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.708942, 40.146397, 50.705185>,  <34.709221, 39.760986, 50.812229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708942, 40.146397, 50.705185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587360, -0.216977, -0.779698,
		-0.809325, 0.156645, 0.566088,
		-0.000692, 0.963526, -0.267612,
		34.708736, 40.435455, 50.624901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018436, 39.918591, 50.591377>,  <34.709221, 39.760986, 50.812229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018436, 39.918591, 50.591377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.246742, 40.197727, 50.418285>,  <34.383724, 40.365208, 50.314430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.246742, 40.197727, 50.418285>,  <34.018436, 39.918591, 50.591377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246742, 40.197727, 50.418285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625952, 0.028705, -0.779333,
		-0.531428, 0.715679, 0.453197,
		0.570761, 0.697839, -0.432726,
		34.417973, 40.407078, 50.288467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541172, 40.084343, 50.094524>,  <34.018436, 39.918591, 50.591377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541172, 40.084343, 50.094524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887726, 40.256474, 49.993172>,  <34.095657, 40.359753, 49.932362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.887726, 40.256474, 49.993172>,  <33.541172, 40.084343, 50.094524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887726, 40.256474, 49.993172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318954, 0.086433, -0.943821,
		-0.384248, 0.898527, 0.212137,
		0.866384, 0.430324, -0.253377,
		34.147640, 40.385571, 49.917160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404713, 40.607006, 49.595528>,  <33.541172, 40.084343, 50.094524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404713, 40.607006, 49.595528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.789318, 40.521049, 49.527046>,  <34.020081, 40.469475, 49.485958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.789318, 40.521049, 49.527046>,  <33.404713, 40.607006, 49.595528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789318, 40.521049, 49.527046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183682, -0.039346, -0.982198,
		0.204331, 0.975845, -0.077303,
		0.961514, -0.214892, -0.171205,
		34.077774, 40.456581, 49.475685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672314, 41.141514, 49.197865>,  <33.404713, 40.607006, 49.595528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672314, 41.141514, 49.197865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894508, 40.815266, 49.133106>,  <34.027824, 40.619518, 49.094254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.894508, 40.815266, 49.133106>,  <33.672314, 41.141514, 49.197865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894508, 40.815266, 49.133106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193771, 0.062365, -0.979062,
		0.808636, 0.575222, -0.123401,
		0.555483, -0.815616, -0.161892,
		34.061153, 40.570580, 49.084538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934612, 41.206104, 48.620808>,  <33.672314, 41.141514, 49.197865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934612, 41.206104, 48.620808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028809, 40.817692, 48.637012>,  <34.085327, 40.584644, 48.646736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028809, 40.817692, 48.637012>,  <33.934612, 41.206104, 48.620808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028809, 40.817692, 48.637012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050984, -0.053967, -0.997240,
		0.970539, 0.232774, -0.062216,
		0.235489, -0.971032, 0.040510,
		34.099457, 40.526382, 48.649166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682758, 41.371014, 48.534813>,  <33.934612, 41.206104, 48.620808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682758, 41.371014, 48.534813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.760860, 41.757999, 48.470444>,  <34.807720, 41.990189, 48.431824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.760860, 41.757999, 48.470444>,  <34.682758, 41.371014, 48.534813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760860, 41.757999, 48.470444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276206, 0.103195, 0.955542,
		0.941056, -0.231018, -0.247070,
		0.195251, 0.967461, -0.160921,
		34.819435, 42.048237, 48.422169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187973, 41.583805, 48.964966>,  <34.682758, 41.371014, 48.534813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187973, 41.583805, 48.964966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.091423, 41.957836, 48.861141>,  <35.033493, 42.182255, 48.798847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.091423, 41.957836, 48.861141>,  <35.187973, 41.583805, 48.964966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091423, 41.957836, 48.861141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345760, 0.332780, 0.877330,
		0.906746, 0.122018, -0.403636,
		-0.241372, 0.935077, -0.259558,
		35.019012, 42.238358, 48.783276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795341, 42.031830, 49.229485>,  <35.187973, 41.583805, 48.964966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795341, 42.031830, 49.229485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493145, 42.289097, 49.179565>,  <35.311829, 42.443455, 49.149612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493145, 42.289097, 49.179565>,  <35.795341, 42.031830, 49.229485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493145, 42.289097, 49.179565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297759, 0.506746, 0.809042,
		0.583587, 0.574064, -0.574349,
		-0.755490, 0.643164, -0.124798,
		35.266499, 42.482044, 49.142128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039902, 42.695179, 49.303761>,  <35.795341, 42.031830, 49.229485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039902, 42.695179, 49.303761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649624, 42.757858, 49.365025>,  <35.415455, 42.795464, 49.401783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.649624, 42.757858, 49.365025>,  <36.039902, 42.695179, 49.303761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649624, 42.757858, 49.365025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218007, 0.623988, 0.750408,
		0.022015, 0.765562, -0.642985,
		-0.975699, 0.156695, 0.153161,
		35.356915, 42.804867, 49.410973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902111, 43.479965, 49.333981>,  <36.039902, 42.695179, 49.303761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902111, 43.479965, 49.333981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654179, 43.250187, 49.547829>,  <35.505417, 43.112320, 49.676136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654179, 43.250187, 49.547829>,  <35.902111, 43.479965, 49.333981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654179, 43.250187, 49.547829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450007, 0.297930, 0.841862,
		-0.642882, 0.762398, 0.073837,
		-0.619836, -0.574445, 0.534618,
		35.468227, 43.077854, 49.708214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509968, 43.981628, 49.716106>,  <35.902111, 43.479965, 49.333981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509968, 43.981628, 49.716106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.463291, 43.634304, 49.908947>,  <35.435284, 43.425911, 50.024651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.463291, 43.634304, 49.908947>,  <35.509968, 43.981628, 49.716106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463291, 43.634304, 49.908947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382498, 0.408682, 0.828658,
		-0.916558, 0.281100, 0.284437,
		-0.116692, -0.868310, 0.482101,
		35.428284, 43.373810, 50.053577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356773, 44.234890, 50.348644>,  <35.509968, 43.981628, 49.716106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356773, 44.234890, 50.348644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430508, 43.854885, 50.449440>,  <35.474747, 43.626881, 50.509918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430508, 43.854885, 50.449440>,  <35.356773, 44.234890, 50.348644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430508, 43.854885, 50.449440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392728, 0.306217, 0.867177,
		-0.900991, -0.060890, 0.429543,
		0.184336, -0.950012, 0.251986,
		35.485809, 43.569881, 50.525036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043938, 44.133850, 51.039185>,  <35.356773, 44.234890, 50.348644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043938, 44.133850, 51.039185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.335396, 43.866096, 50.981213>,  <35.510269, 43.705444, 50.946430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.335396, 43.866096, 50.981213>,  <35.043938, 44.133850, 51.039185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335396, 43.866096, 50.981213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392259, 0.234405, 0.889487,
		-0.561437, -0.704968, 0.433369,
		0.728643, -0.669384, -0.144927,
		35.553989, 43.665283, 50.937737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240223, 43.936409, 51.787697>,  <35.043938, 44.133850, 51.039185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240223, 43.936409, 51.787697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.544147, 43.790413, 51.572487>,  <35.726501, 43.702816, 51.443363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.544147, 43.790413, 51.572487>,  <35.240223, 43.936409, 51.787697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544147, 43.790413, 51.572487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641874, 0.289583, 0.710028,
		-0.103349, -0.884832, 0.454305,
		0.759814, -0.364987, -0.538022,
		35.772091, 43.680916, 51.411079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.493172, 40.750576, 35.794395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870293, 40.617771, 35.782486>,  <34.096565, 40.538090, 35.775341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870293, 40.617771, 35.782486>,  <33.493172, 40.750576, 35.794395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870293, 40.617771, 35.782486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118822, 0.251270, 0.960596,
		-0.311444, -0.909194, 0.276349,
		0.942806, -0.332008, -0.029775,
		34.153133, 40.518169, 35.773552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635708, 40.248909, 36.172958>,  <33.493172, 40.750576, 35.794395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635708, 40.248909, 36.172958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011688, 40.385426, 36.171368>,  <34.237278, 40.467335, 36.170414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011688, 40.385426, 36.171368>,  <33.635708, 40.248909, 36.172958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011688, 40.385426, 36.171368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035877, 0.110384, 0.993241,
		0.339420, -0.933455, 0.116000,
		0.939951, 0.341288, -0.003977,
		34.293674, 40.487812, 36.170174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986748, 39.828251, 36.625343>,  <33.635708, 40.248909, 36.172958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986748, 39.828251, 36.625343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182148, 40.176018, 36.595726>,  <34.299389, 40.384678, 36.577957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182148, 40.176018, 36.595726>,  <33.986748, 39.828251, 36.625343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182148, 40.176018, 36.595726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001580, 0.085734, 0.996317,
		0.872561, -0.486586, 0.043255,
		0.488502, 0.869416, -0.074039,
		34.328697, 40.436844, 36.573513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465675, 39.754677, 37.152931>,  <33.986748, 39.828251, 36.625343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465675, 39.754677, 37.152931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442932, 40.145512, 37.070881>,  <34.429287, 40.380013, 37.021652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442932, 40.145512, 37.070881>,  <34.465675, 39.754677, 37.152931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442932, 40.145512, 37.070881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007757, 0.205880, 0.978547,
		0.998352, 0.054046, -0.019285,
		-0.056856, 0.977084, -0.205122,
		34.425877, 40.438637, 37.009346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844902, 40.065350, 37.680988>,  <34.465675, 39.754677, 37.152931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844902, 40.065350, 37.680988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643456, 40.371254, 37.520237>,  <34.522587, 40.554798, 37.423786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643456, 40.371254, 37.520237>,  <34.844902, 40.065350, 37.680988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643456, 40.371254, 37.520237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092214, 0.414938, 0.905164,
		0.858993, 0.492913, -0.138448,
		-0.503615, 0.764763, -0.401883,
		34.492371, 40.600681, 37.399673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212654, 40.809620, 37.839020>,  <34.844902, 40.065350, 37.680988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212654, 40.809620, 37.839020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819626, 40.861267, 37.785538>,  <34.583809, 40.892254, 37.753448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819626, 40.861267, 37.785538>,  <35.212654, 40.809620, 37.839020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819626, 40.861267, 37.785538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039582, 0.557476, 0.829249,
		0.181604, 0.820091, -0.542651,
		-0.982575, 0.129116, -0.133700,
		34.524853, 40.900002, 37.745426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114906, 41.426392, 38.073193>,  <35.212654, 40.809620, 37.839020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114906, 41.426392, 38.073193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726669, 41.337917, 38.035179>,  <34.493729, 41.284832, 38.012371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726669, 41.337917, 38.035179>,  <35.114906, 41.426392, 38.073193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726669, 41.337917, 38.035179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161653, 0.306300, 0.938109,
		-0.178388, 0.925882, -0.333047,
		-0.970591, -0.221185, -0.095031,
		34.435493, 41.271561, 38.006668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705284, 42.052128, 38.315674>,  <35.114906, 41.426392, 38.073193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705284, 42.052128, 38.315674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478432, 41.724033, 38.345558>,  <34.342319, 41.527176, 38.363487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478432, 41.724033, 38.345558>,  <34.705284, 42.052128, 38.315674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478432, 41.724033, 38.345558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291106, 0.284475, 0.913417,
		-0.770466, 0.496280, -0.400110,
		-0.567132, -0.820232, 0.074708,
		34.308292, 41.477962, 38.367970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080032, 42.348881, 38.537231>,  <34.705284, 42.052128, 38.315674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080032, 42.348881, 38.537231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071762, 41.956890, 38.616444>,  <34.066799, 41.721695, 38.663971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071762, 41.956890, 38.616444>,  <34.080032, 42.348881, 38.537231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071762, 41.956890, 38.616444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184166, 0.198415, 0.962660,
		-0.982678, -0.016568, -0.184580,
		-0.020675, -0.979978, 0.198029,
		34.065559, 41.662895, 38.675854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440479, 42.205048, 38.917091>,  <34.080032, 42.348881, 38.537231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440479, 42.205048, 38.917091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697090, 41.910839, 39.004227>,  <33.851055, 41.734314, 39.056507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697090, 41.910839, 39.004227>,  <33.440479, 42.205048, 38.917091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697090, 41.910839, 39.004227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157556, 0.151579, 0.975807,
		-0.750747, -0.660327, -0.018645,
		0.641526, -0.735522, 0.217836,
		33.889549, 41.690182, 39.069576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142044, 41.924816, 39.481552>,  <33.440479, 42.205048, 38.917091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142044, 41.924816, 39.481552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518135, 41.791092, 39.507484>,  <33.743790, 41.710857, 39.523045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518135, 41.791092, 39.507484>,  <33.142044, 41.924816, 39.481552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518135, 41.791092, 39.507484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008583, 0.167060, 0.985909,
		-0.340427, -0.927540, 0.154206,
		0.940232, -0.334307, 0.064832,
		33.800205, 41.690800, 39.526936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056965, 41.384033, 39.912613>,  <33.142044, 41.924816, 39.481552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056965, 41.384033, 39.912613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437595, 41.505894, 39.929092>,  <33.665974, 41.579010, 39.938980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437595, 41.505894, 39.929092>,  <33.056965, 41.384033, 39.912613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437595, 41.505894, 39.929092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068902, 0.080750, 0.994350,
		0.299603, -0.949035, 0.097830,
		0.951573, 0.304651, 0.041198,
		33.723068, 41.597290, 39.941452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052948, 40.597660, 39.896088>,  <33.056965, 41.384033, 39.912613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052948, 40.597660, 39.896088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838867, 40.293255, 40.042740>,  <32.710419, 40.110611, 40.130730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838867, 40.293255, 40.042740>,  <33.052948, 40.597660, 39.896088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838867, 40.293255, 40.042740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145106, -0.344748, -0.927412,
		0.832166, -0.549556, 0.074083,
		-0.535205, -0.761011, 0.366631,
		32.678307, 40.064953, 40.152729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249920, 39.981335, 39.515739>,  <33.052948, 40.597660, 39.896088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249920, 39.981335, 39.515739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897728, 39.876175, 39.673542>,  <32.686413, 39.813080, 39.768223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897728, 39.876175, 39.673542>,  <33.249920, 39.981335, 39.515739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897728, 39.876175, 39.673542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260234, -0.427545, -0.865727,
		0.396267, -0.864921, 0.308031,
		-0.880483, -0.262899, 0.394504,
		32.633583, 39.797306, 39.791893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168652, 39.306591, 39.299870>,  <33.249920, 39.981335, 39.515739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168652, 39.306591, 39.299870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804893, 39.440712, 39.398312>,  <32.586639, 39.521183, 39.457378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804893, 39.440712, 39.398312>,  <33.168652, 39.306591, 39.299870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804893, 39.440712, 39.398312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390248, -0.483165, -0.783746,
		-0.143878, -0.808781, 0.570239,
		-0.909398, 0.335298, 0.246109,
		32.532074, 39.541302, 39.472145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805332, 38.726860, 39.268539>,  <33.168652, 39.306591, 39.299870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805332, 38.726860, 39.268539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536732, 39.020699, 39.229641>,  <32.375572, 39.197002, 39.206303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536732, 39.020699, 39.229641>,  <32.805332, 38.726860, 39.268539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536732, 39.020699, 39.229641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274652, -0.368629, -0.888076,
		-0.688221, -0.569638, 0.449293,
		-0.671505, 0.734592, -0.097245,
		32.335281, 39.241077, 39.200466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161148, 38.431301, 39.255905>,  <32.805332, 38.726860, 39.268539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161148, 38.431301, 39.255905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096912, 38.775532, 39.062572>,  <32.058369, 38.982071, 38.946571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096912, 38.775532, 39.062572>,  <32.161148, 38.431301, 39.255905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096912, 38.775532, 39.062572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543455, -0.485874, -0.684531,
		-0.823933, 0.152739, 0.545715,
		-0.160594, 0.860580, -0.483334,
		32.048733, 39.033707, 38.917572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488209, 38.432724, 38.925457>,  <32.161148, 38.431301, 39.255905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488209, 38.432724, 38.925457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640076, 38.754940, 38.743484>,  <31.731195, 38.948269, 38.634300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640076, 38.754940, 38.743484>,  <31.488209, 38.432724, 38.925457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640076, 38.754940, 38.743484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354886, -0.327314, -0.875740,
		-0.854346, 0.493940, 0.161603,
		0.379668, 0.805536, -0.454932,
		31.753977, 38.996601, 38.607006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873821, 38.804535, 38.526253>,  <31.488209, 38.432724, 38.925457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873821, 38.804535, 38.526253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220179, 38.895306, 38.347935>,  <31.427994, 38.949768, 38.240944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220179, 38.895306, 38.347935>,  <30.873821, 38.804535, 38.526253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220179, 38.895306, 38.347935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325947, -0.420064, -0.846938,
		-0.379452, 0.878665, -0.289766,
		0.865895, 0.226924, -0.445793,
		31.479948, 38.963383, 38.214195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738979, 39.008022, 37.834980>,  <30.873821, 38.804535, 38.526253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738979, 39.008022, 37.834980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121571, 38.892735, 37.816742>,  <31.351126, 38.823563, 37.805798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121571, 38.892735, 37.816742>,  <30.738979, 39.008022, 37.834980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121571, 38.892735, 37.816742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200283, -0.534768, -0.820920,
		0.212223, 0.794324, -0.569220,
		0.956477, -0.288223, -0.045600,
		31.408514, 38.806267, 37.803062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628836, 38.600002, 37.205173>,  <30.738979, 39.008022, 37.834980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628836, 38.600002, 37.205173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026611, 38.592361, 37.246597>,  <31.265276, 38.587776, 37.271454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026611, 38.592361, 37.246597>,  <30.628836, 38.600002, 37.205173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026611, 38.592361, 37.246597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095563, -0.249489, -0.963651,
		0.044245, 0.968189, -0.246276,
		0.994440, -0.019102, 0.103562,
		31.324944, 38.586632, 37.277664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998590, 39.069286, 36.593323>,  <30.628836, 38.600002, 37.205173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998590, 39.069286, 36.593323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237698, 38.789494, 36.749985>,  <31.381163, 38.621616, 36.843983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237698, 38.789494, 36.749985>,  <30.998590, 39.069286, 36.593323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237698, 38.789494, 36.749985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208773, -0.335865, -0.918482,
		0.774007, 0.630806, -0.054735,
		0.597768, -0.699484, 0.391657,
		31.417028, 38.579647, 36.867481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585016, 39.006088, 36.088432>,  <30.998590, 39.069286, 36.593323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585016, 39.006088, 36.088432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586960, 38.662537, 36.293293>,  <31.588125, 38.456406, 36.416210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586960, 38.662537, 36.293293>,  <31.585016, 39.006088, 36.088432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586960, 38.662537, 36.293293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165322, -0.504419, -0.847484,
		0.986228, 0.088786, 0.139542,
		0.004857, -0.858882, 0.512151,
		31.588417, 38.404873, 36.446938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208736, 38.581863, 35.788109>,  <31.585016, 39.006088, 36.088432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208736, 38.581863, 35.788109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995991, 38.295937, 35.969730>,  <31.868343, 38.124382, 36.078705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995991, 38.295937, 35.969730>,  <32.208736, 38.581863, 35.788109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995991, 38.295937, 35.969730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083918, -0.578030, -0.811689,
		0.842663, -0.393603, 0.367418,
		-0.531862, -0.714813, 0.454054,
		31.836432, 38.081493, 36.105946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604729, 37.988327, 35.798065>,  <32.208736, 38.581863, 35.788109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604729, 37.988327, 35.798065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232941, 37.850735, 35.851383>,  <32.009869, 37.768181, 35.883373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232941, 37.850735, 35.851383>,  <32.604729, 37.988327, 35.798065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232941, 37.850735, 35.851383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124680, -0.632988, -0.764056,
		0.347196, -0.693546, 0.631229,
		-0.929467, -0.343979, 0.133299,
		31.954100, 37.747540, 35.891373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680908, 37.258144, 35.802967>,  <32.604729, 37.988327, 35.798065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680908, 37.258144, 35.802967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310448, 37.359287, 35.691029>,  <32.088173, 37.419971, 35.623863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310448, 37.359287, 35.691029>,  <32.680908, 37.258144, 35.802967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310448, 37.359287, 35.691029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109797, -0.529103, -0.841424,
		-0.360826, -0.810010, 0.462265,
		-0.926147, 0.252852, -0.279850,
		32.032604, 37.435143, 35.607075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402939, 36.661526, 35.720634>,  <32.680908, 37.258144, 35.802967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402939, 36.661526, 35.720634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185535, 36.911411, 35.496376>,  <32.055092, 37.061344, 35.361820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185535, 36.911411, 35.496376>,  <32.402939, 36.661526, 35.720634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185535, 36.911411, 35.496376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368990, -0.422106, -0.828054,
		-0.753952, -0.656929, -0.001095,
		-0.543510, 0.624717, -0.560647,
		32.022484, 37.098827, 35.328182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508755, 36.400982, 36.448582>,  <32.402939, 36.661526, 35.720634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508755, 36.400982, 36.448582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855778, 36.220982, 36.363880>,  <33.063992, 36.112980, 36.313061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855778, 36.220982, 36.363880>,  <32.508755, 36.400982, 36.448582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855778, 36.220982, 36.363880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177465, -0.117631, 0.977072,
		-0.464590, -0.885248, -0.022193,
		0.867561, -0.450000, -0.211751,
		33.116047, 36.085983, 36.300354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535500, 35.905636, 36.836498>,  <32.508755, 36.400982, 36.448582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535500, 35.905636, 36.836498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921406, 35.953411, 36.742729>,  <33.152950, 35.982079, 36.686470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921406, 35.953411, 36.742729>,  <32.535500, 35.905636, 36.836498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921406, 35.953411, 36.742729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253959, -0.190018, 0.948366,
		0.068731, -0.974488, -0.213657,
		0.964770, 0.119443, -0.234419,
		33.210838, 35.989243, 36.672401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814495, 35.518196, 37.360661>,  <32.535500, 35.905636, 36.836498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814495, 35.518196, 37.360661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102581, 35.748035, 37.205158>,  <33.275433, 35.885937, 37.111855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102581, 35.748035, 37.205158>,  <32.814495, 35.518196, 37.360661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102581, 35.748035, 37.205158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383364, 0.137411, 0.913318,
		0.578208, -0.806820, -0.121314,
		0.720214, 0.574595, -0.388758,
		33.318645, 35.920414, 37.088531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441486, 35.137039, 37.560223>,  <32.814495, 35.518196, 37.360661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441486, 35.137039, 37.560223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571712, 35.507534, 37.484226>,  <33.649849, 35.729832, 37.438629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571712, 35.507534, 37.484226>,  <33.441486, 35.137039, 37.560223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571712, 35.507534, 37.484226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463546, 0.018783, 0.885873,
		0.824096, -0.376478, -0.423238,
		0.325562, 0.926235, -0.189994,
		33.669380, 35.785404, 37.427227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112629, 35.081043, 37.719849>,  <33.441486, 35.137039, 37.560223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112629, 35.081043, 37.719849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026585, 35.470688, 37.747662>,  <33.974957, 35.704475, 37.764351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026585, 35.470688, 37.747662>,  <34.112629, 35.081043, 37.719849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026585, 35.470688, 37.747662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454973, 0.036961, 0.889738,
		0.864134, 0.223028, -0.451145,
		-0.215111, 0.974111, 0.069532,
		33.962051, 35.762920, 37.768520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681015, 35.283440, 38.062271>,  <34.112629, 35.081043, 37.719849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681015, 35.283440, 38.062271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416180, 35.577686, 38.119549>,  <34.257278, 35.754234, 38.153915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416180, 35.577686, 38.119549>,  <34.681015, 35.283440, 38.062271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416180, 35.577686, 38.119549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300582, 0.085632, 0.949904,
		0.686507, 0.671959, -0.277810,
		-0.662086, 0.735621, 0.143192,
		34.217552, 35.798374, 38.162506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020435, 35.819153, 38.420120>,  <34.681015, 35.283440, 38.062271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020435, 35.819153, 38.420120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630733, 35.887383, 38.479092>,  <34.396912, 35.928322, 38.514473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630733, 35.887383, 38.479092>,  <35.020435, 35.819153, 38.420120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630733, 35.887383, 38.479092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165335, 0.095977, 0.981556,
		0.153279, 0.980659, -0.121707,
		-0.974254, 0.170574, 0.147426,
		34.338459, 35.938553, 38.523319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921555, 36.466869, 38.811981>,  <35.020435, 35.819153, 38.420120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921555, 36.466869, 38.811981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585705, 36.257824, 38.871181>,  <34.384193, 36.132397, 38.906700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585705, 36.257824, 38.871181>,  <34.921555, 36.466869, 38.811981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585705, 36.257824, 38.871181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060364, 0.181003, 0.981628,
		-0.539799, 0.833135, -0.120428,
		-0.839627, -0.522613, 0.147996,
		34.333817, 36.101040, 38.915581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464943, 36.841389, 39.136871>,  <34.921555, 36.466869, 38.811981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464943, 36.841389, 39.136871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358047, 36.467262, 39.229618>,  <34.293911, 36.242786, 39.285267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358047, 36.467262, 39.229618>,  <34.464943, 36.841389, 39.136871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358047, 36.467262, 39.229618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105554, 0.267586, 0.957735,
		-0.957832, 0.231469, -0.170236,
		-0.267238, -0.935318, 0.231870,
		34.277878, 36.186668, 39.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884953, 36.909149, 39.577431>,  <34.464943, 36.841389, 39.136871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884953, 36.909149, 39.577431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033829, 36.546032, 39.654778>,  <34.123154, 36.328163, 39.701183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033829, 36.546032, 39.654778>,  <33.884953, 36.909149, 39.577431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033829, 36.546032, 39.654778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110534, 0.250200, 0.961864,
		-0.921549, -0.336627, 0.193465,
		0.372194, -0.907790, 0.193363,
		34.145489, 36.273697, 39.712788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695980, 36.819698, 40.267704>,  <33.884953, 36.909149, 39.577431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695980, 36.819698, 40.267704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948856, 36.510830, 40.242142>,  <34.100582, 36.325508, 40.226807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948856, 36.510830, 40.242142>,  <33.695980, 36.819698, 40.267704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948856, 36.510830, 40.242142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119993, 0.016091, 0.992644,
		-0.765464, -0.635209, 0.102828,
		0.632191, -0.772173, -0.063903,
		34.138515, 36.279179, 40.222969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428139, 36.434452, 40.821426>,  <33.695980, 36.819698, 40.267704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428139, 36.434452, 40.821426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789619, 36.298885, 40.716770>,  <34.006508, 36.217545, 40.653976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789619, 36.298885, 40.716770>,  <33.428139, 36.434452, 40.821426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789619, 36.298885, 40.716770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307349, 0.088052, 0.947514,
		-0.298090, -0.936687, 0.183739,
		0.903703, -0.338916, -0.261642,
		34.060730, 36.197212, 40.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637039, 35.970230, 41.311562>,  <33.428139, 36.434452, 40.821426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637039, 35.970230, 41.311562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998806, 36.056202, 41.164139>,  <34.215866, 36.107784, 41.075684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998806, 36.056202, 41.164139>,  <33.637039, 35.970230, 41.311562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998806, 36.056202, 41.164139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360884, 0.075408, 0.929557,
		0.227583, -0.973714, -0.009365,
		0.904416, 0.214931, -0.368559,
		34.270130, 36.120682, 41.053570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124905, 35.562256, 41.719143>,  <33.637039, 35.970230, 41.311562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124905, 35.562256, 41.719143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328106, 35.869354, 41.562943>,  <34.450027, 36.053616, 41.469223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328106, 35.869354, 41.562943>,  <34.124905, 35.562256, 41.719143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328106, 35.869354, 41.562943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577554, 0.032730, 0.815696,
		0.639032, -0.639912, -0.426790,
		0.508005, 0.767751, -0.390499,
		34.480507, 36.099678, 41.445793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795784, 35.464622, 41.891525>,  <34.124905, 35.562256, 41.719143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795784, 35.464622, 41.891525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792301, 35.855976, 41.808884>,  <34.790211, 36.090790, 41.759296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792301, 35.855976, 41.808884>,  <34.795784, 35.464622, 41.891525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792301, 35.855976, 41.808884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490361, 0.184244, 0.851822,
		0.871476, -0.093898, -0.481366,
		-0.008705, 0.978385, -0.206608,
		34.789688, 36.149490, 41.746902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506401, 35.722786, 41.954712>,  <34.795784, 35.464622, 41.891525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506401, 35.722786, 41.954712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256386, 36.034641, 41.970150>,  <35.106377, 36.221756, 41.979412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256386, 36.034641, 41.970150>,  <35.506401, 35.722786, 41.954712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256386, 36.034641, 41.970150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540028, 0.396179, 0.742571,
		0.563649, 0.484977, -0.668654,
		-0.625036, 0.779641, 0.038595,
		35.068874, 36.268532, 41.981728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882877, 36.348507, 42.025944>,  <35.506401, 35.722786, 41.954712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882877, 36.348507, 42.025944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519894, 36.432007, 42.171787>,  <35.302105, 36.482109, 42.259293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519894, 36.432007, 42.171787>,  <35.882877, 36.348507, 42.025944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519894, 36.432007, 42.171787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420044, 0.431985, 0.798093,
		0.009099, 0.877388, -0.479694,
		-0.907458, 0.208754, 0.364611,
		35.247658, 36.494633, 42.281170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002365, 37.128456, 42.286343>,  <35.882877, 36.348507, 42.025944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002365, 37.128456, 42.286343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697258, 36.938278, 42.461674>,  <35.514194, 36.824173, 42.566872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697258, 36.938278, 42.461674>,  <36.002365, 37.128456, 42.286343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697258, 36.938278, 42.461674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362407, 0.247094, 0.898669,
		-0.535577, 0.844331, -0.016171,
		-0.762770, -0.475446, 0.438330,
		35.468426, 36.795643, 42.593174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681835, 37.610138, 42.721851>,  <36.002365, 37.128456, 42.286343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681835, 37.610138, 42.721851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554882, 37.263100, 42.874977>,  <35.478710, 37.054878, 42.966854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554882, 37.263100, 42.874977>,  <35.681835, 37.610138, 42.721851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554882, 37.263100, 42.874977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167413, 0.346085, 0.923146,
		-0.933402, 0.357083, 0.035404,
		-0.317387, -0.867593, 0.382816,
		35.459667, 37.002823, 42.989822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345901, 37.730740, 43.375648>,  <35.681835, 37.610138, 42.721851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345901, 37.730740, 43.375648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390896, 37.335133, 43.414013>,  <35.417892, 37.097771, 43.437031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390896, 37.335133, 43.414013>,  <35.345901, 37.730740, 43.375648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390896, 37.335133, 43.414013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168997, 0.114163, 0.978983,
		-0.979176, -0.093916, 0.179983,
		0.112490, -0.989013, 0.095914,
		35.424644, 37.038429, 43.442787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919525, 37.514874, 43.871284>,  <35.345901, 37.730740, 43.375648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919525, 37.514874, 43.871284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211464, 37.244106, 43.833107>,  <35.386627, 37.081646, 43.810200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211464, 37.244106, 43.833107>,  <34.919525, 37.514874, 43.871284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211464, 37.244106, 43.833107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267427, 0.154220, 0.951157,
		-0.629134, -0.719723, 0.293582,
		0.729845, -0.676916, -0.095448,
		35.430416, 37.041031, 43.804474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048840, 37.306488, 44.565331>,  <34.919525, 37.514874, 43.871284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048840, 37.306488, 44.565331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376190, 37.151081, 44.395947>,  <35.572601, 37.057838, 44.294315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376190, 37.151081, 44.395947>,  <35.048840, 37.306488, 44.565331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376190, 37.151081, 44.395947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506699, 0.140147, 0.850656,
		-0.271144, -0.910723, 0.311552,
		0.818375, -0.388513, -0.423462,
		35.621704, 37.034527, 44.268909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321030, 37.023960, 45.160019>,  <35.048840, 37.306488, 44.565331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321030, 37.023960, 45.160019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612957, 36.983829, 44.889523>,  <35.788113, 36.959751, 44.727226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612957, 36.983829, 44.889523>,  <35.321030, 37.023960, 45.160019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612957, 36.983829, 44.889523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676900, -0.032491, 0.735357,
		-0.095748, -0.994424, 0.044200,
		0.729821, -0.100328, -0.676237,
		35.831902, 36.953732, 44.686653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666962, 36.345867, 45.211769>,  <35.321030, 37.023960, 45.160019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666962, 36.345867, 45.211769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916763, 36.629761, 45.081375>,  <36.066643, 36.800098, 45.003139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916763, 36.629761, 45.081375>,  <35.666962, 36.345867, 45.211769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916763, 36.629761, 45.081375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495613, -0.037540, 0.867732,
		0.603623, -0.703467, -0.375198,
		0.624505, 0.709736, -0.325988,
		36.104115, 36.842682, 44.983578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412552, 36.186115, 45.333775>,  <35.666962, 36.345867, 45.211769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412552, 36.186115, 45.333775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456123, 36.580391, 45.282318>,  <36.482265, 36.816956, 45.251446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456123, 36.580391, 45.282318>,  <36.412552, 36.186115, 45.333775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456123, 36.580391, 45.282318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574580, 0.043164, 0.817309,
		0.811167, -0.162944, -0.561656,
		0.108933, 0.985691, -0.128637,
		36.488804, 36.876099, 45.243729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000584, 36.328987, 45.615170>,  <36.412552, 36.186115, 45.333775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000584, 36.328987, 45.615170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884075, 36.711624, 45.611347>,  <36.814171, 36.941208, 45.609055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884075, 36.711624, 45.611347>,  <37.000584, 36.328987, 45.615170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884075, 36.711624, 45.611347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400374, 0.130971, 0.906944,
		0.868827, 0.260342, -0.421143,
		-0.291273, 0.956592, -0.009557,
		36.796692, 36.998600, 45.608479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515331, 36.790215, 45.782249>,  <37.000584, 36.328987, 45.615170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515331, 36.790215, 45.782249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181595, 36.999325, 45.852207>,  <36.981354, 37.124790, 45.894180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181595, 36.999325, 45.852207>,  <37.515331, 36.790215, 45.782249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181595, 36.999325, 45.852207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372575, 0.300942, 0.877851,
		0.406286, 0.797584, -0.445860,
		-0.834338, 0.522774, 0.174891,
		36.931293, 37.156158, 45.904675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979950, 37.297001, 45.531780>,  <37.515331, 36.790215, 45.782249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979950, 37.297001, 45.531780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377060, 37.335430, 45.503025>,  <38.615326, 37.358490, 45.485771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377060, 37.335430, 45.503025>,  <37.979950, 37.297001, 45.531780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377060, 37.335430, 45.503025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068521, -0.037922, -0.996929,
		-0.098507, 0.994651, -0.031065,
		0.992775, 0.096076, -0.071890,
		38.674892, 37.364254, 45.481457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117115, 37.718803, 44.903625>,  <37.979950, 37.297001, 45.531780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117115, 37.718803, 44.903625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449886, 37.504799, 44.962505>,  <38.649548, 37.376396, 44.997833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449886, 37.504799, 44.962505>,  <38.117115, 37.718803, 44.903625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449886, 37.504799, 44.962505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122377, -0.081836, -0.989104,
		0.541223, 0.840875, -0.002609,
		0.831926, -0.535007, 0.147195,
		38.699463, 37.344296, 45.006664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630005, 38.077938, 44.620544>,  <38.117115, 37.718803, 44.903625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630005, 38.077938, 44.620544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718357, 37.688126, 44.636047>,  <38.771370, 37.454239, 44.645348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718357, 37.688126, 44.636047>,  <38.630005, 38.077938, 44.620544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718357, 37.688126, 44.636047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118624, -0.012597, -0.992859,
		0.968059, 0.223904, 0.112820,
		0.220884, -0.974530, 0.038755,
		38.784622, 37.395767, 44.647675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285023, 37.988842, 44.261562>,  <38.630005, 38.077938, 44.620544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285023, 37.988842, 44.261562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127884, 37.621830, 44.236893>,  <39.033600, 37.401623, 44.222092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127884, 37.621830, 44.236893>,  <39.285023, 37.988842, 44.261562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127884, 37.621830, 44.236893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090699, 0.028078, -0.995482,
		0.915119, -0.396669, 0.072189,
		-0.392850, -0.917532, -0.061672,
		39.010029, 37.346569, 44.218391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650986, 37.803795, 43.598091>,  <39.285023, 37.988842, 44.261562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650986, 37.803795, 43.598091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334339, 37.569641, 43.668148>,  <39.144352, 37.429150, 43.710182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334339, 37.569641, 43.668148>,  <39.650986, 37.803795, 43.598091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334339, 37.569641, 43.668148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084137, -0.179471, -0.980159,
		0.605200, -0.790643, 0.092820,
		-0.791614, -0.585383, 0.175138,
		39.096855, 37.394028, 43.720688>
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
