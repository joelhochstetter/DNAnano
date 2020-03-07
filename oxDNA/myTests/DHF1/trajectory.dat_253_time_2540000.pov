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
	<1.388078, 1.500531, 2.107074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.139091, 1.417160, 1.805321>,  <0.989700, 1.367138, 1.624269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.139091, 1.417160, 1.805321>,  <1.388078, 1.500531, 2.107074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.139091, 1.417160, 1.805321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363096, -0.776974, 0.514270,
		-0.693323, 0.594029, 0.407961,
		-0.622466, -0.208426, -0.754383,
		0.952352, 1.354632, 1.579006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.572266, 1.457955, 2.373341>,  <1.388078, 1.500531, 2.107074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.572266, 1.457955, 2.373341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683266, 1.236191, 2.059494>,  <0.749866, 1.103132, 1.871186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.683266, 1.236191, 2.059494>,  <0.572266, 1.457955, 2.373341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.683266, 1.236191, 2.059494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460357, -0.793560, 0.397912,
		-0.843247, 0.250784, -0.475439,
		0.277500, -0.554410, -0.784617,
		0.766516, 1.069868, 1.824109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.020724, 1.123505, 1.940679>,  <0.572266, 1.457955, 2.373341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.020724, 1.123505, 1.940679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.354446, 0.903809, 1.959732>,  <0.554680, 0.771991, 1.971164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.354446, 0.903809, 1.959732>,  <0.020724, 1.123505, 1.940679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.354446, 0.903809, 1.959732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500923, -0.719149, 0.481561,
		-0.230239, -0.425629, -0.875117,
		0.834306, -0.549241, 0.047632,
		0.604738, 0.739036, 1.974021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.070862, 0.503447, 1.411659>,  <0.020724, 1.123505, 1.940679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.070862, 0.503447, 1.411659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.262466, 0.484802, 1.762287>,  <0.377429, 0.473615, 1.972664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.262466, 0.484802, 1.762287>,  <0.070862, 0.503447, 1.411659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.262466, 0.484802, 1.762287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635190, -0.707643, 0.309477,
		0.605873, -0.705031, -0.368576,
		0.479011, -0.046612, 0.876571,
		0.406170, 0.470819, 2.025258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.228339, -0.263182, 1.651157>,  <0.070862, 0.503447, 1.411659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.228339, -0.263182, 1.651157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.223022, -0.038116, 1.981789>,  <0.219833, 0.096923, 2.180168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.223022, -0.038116, 1.981789>,  <0.228339, -0.263182, 1.651157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.223022, -0.038116, 1.981789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612392, -0.658059, 0.438104,
		0.790443, -0.500368, 0.353316,
		-0.013290, 0.562664, 0.826579,
		0.219035, 0.130683, 2.229762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.622987, -0.651596, 2.264804>,  <0.228339, -0.263182, 1.651157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.622987, -0.651596, 2.264804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.390198, -0.373962, 2.434299>,  <0.250524, -0.207382, 2.535997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.390198, -0.373962, 2.434299>,  <0.622987, -0.651596, 2.264804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.390198, -0.373962, 2.434299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438309, -0.706632, 0.555479,
		0.684976, 0.137545, 0.715464,
		-0.581973, 0.694084, 0.423739,
		0.215606, -0.165737, 2.561421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.771146, -0.700013, 2.993882>,  <0.622987, -0.651596, 2.264804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.771146, -0.700013, 2.993882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.410347, -0.532333, 2.952560>,  <0.193867, -0.431726, 2.927768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.410347, -0.532333, 2.952560>,  <0.771146, -0.700013, 2.993882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.410347, -0.532333, 2.952560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422970, -0.810028, 0.406143,
		0.086576, 0.410034, 0.907952,
		-0.901999, 0.419198, -0.103303,
		0.139747, -0.406574, 2.921570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.370095, -0.528367, 3.683694>,  <0.771146, -0.700013, 2.993882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.370095, -0.528367, 3.683694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.154373, -0.661163, 3.374130>,  <0.024940, -0.740841, 3.188392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.154373, -0.661163, 3.374130>,  <0.370095, -0.528367, 3.683694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.154373, -0.661163, 3.374130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115310, -0.881240, 0.458388,
		-0.834179, 0.336450, 0.436974,
		-0.539304, -0.331990, -0.773908,
		-0.007418, -0.760760, 3.141958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.244498, 3.219743, 4.163359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.148438, 3.128006, 3.786057>,  <4.090801, 3.072964, 3.559675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.148438, 3.128006, 3.786057>,  <4.244498, 3.219743, 4.163359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.148438, 3.128006, 3.786057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249751, 0.924383, -0.288339,
		0.938058, -0.304824, -0.164712,
		-0.240150, -0.229342, -0.943255,
		4.076392, 3.059203, 3.503080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.711085, 3.448339, 3.700343>,  <4.244498, 3.219743, 4.163359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.711085, 3.448339, 3.700343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.396225, 3.468964, 3.454502>,  <4.207309, 3.481338, 3.306998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.396225, 3.468964, 3.454502>,  <4.711085, 3.448339, 3.700343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.396225, 3.468964, 3.454502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262539, 0.929721, -0.258249,
		0.558093, -0.364637, -0.745367,
		-0.787150, 0.051561, -0.614602,
		4.160080, 3.484432, 3.270121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.837375, 3.565045, 2.962872>,  <4.711085, 3.448339, 3.700343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.837375, 3.565045, 2.962872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.488411, 3.735779, 3.058128>,  <4.279032, 3.838219, 3.115282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.488411, 3.735779, 3.058128>,  <4.837375, 3.565045, 2.962872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488411, 3.735779, 3.058128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389402, 0.901436, -0.189156,
		-0.295408, -0.072289, -0.952632,
		-0.872411, 0.426835, 0.238142,
		4.226688, 3.863829, 3.129571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.501472, 3.974321, 2.350615>,  <4.837375, 3.565045, 2.962872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.501472, 3.974321, 2.350615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.401028, 4.089050, 2.720409>,  <4.340761, 4.157888, 2.942286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.401028, 4.089050, 2.720409>,  <4.501472, 3.974321, 2.350615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.401028, 4.089050, 2.720409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305691, 0.929709, -0.205411,
		-0.918420, 0.231026, -0.321140,
		-0.251112, 0.286823, 0.924487,
		4.325694, 4.175097, 2.997756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.967240, 4.516548, 2.315442>,  <4.501472, 3.974321, 2.350615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.967240, 4.516548, 2.315442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.231380, 4.505341, 2.615616>,  <4.389864, 4.498616, 2.795720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.231380, 4.505341, 2.615616>,  <3.967240, 4.516548, 2.315442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.231380, 4.505341, 2.615616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392267, 0.865003, -0.312883,
		-0.640362, 0.500983, 0.582196,
		0.660351, -0.028017, 0.750434,
		4.429486, 4.496935, 2.840746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.016098, 5.220422, 2.638887>,  <3.967240, 4.516548, 2.315442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.016098, 5.220422, 2.638887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352116, 5.033081, 2.748409>,  <4.553727, 4.920677, 2.814123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352116, 5.033081, 2.748409>,  <4.016098, 5.220422, 2.638887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.352116, 5.033081, 2.748409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523778, 0.831658, -0.184395,
		-0.141351, 0.298314, 0.943943,
		0.840045, -0.468352, 0.273806,
		4.604129, 4.892575, 2.830551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.372958, 5.691471, 3.054652>,  <4.016098, 5.220422, 2.638887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.372958, 5.691471, 3.054652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.619896, 5.426361, 2.885128>,  <4.768059, 5.267295, 2.783413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.619896, 5.426361, 2.885128>,  <4.372958, 5.691471, 3.054652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.619896, 5.426361, 2.885128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508293, 0.747222, -0.428133,
		0.600436, 0.048886, 0.798177,
		0.617345, -0.662774, -0.423811,
		4.805099, 5.227529, 2.757985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.998061, 5.808078, 3.281937>,  <4.372958, 5.691471, 3.054652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.998061, 5.808078, 3.281937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.070618, 5.616165, 2.938564>,  <5.114152, 5.501018, 2.732541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.070618, 5.616165, 2.938564>,  <4.998061, 5.808078, 3.281937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.070618, 5.616165, 2.938564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641283, 0.719493, -0.266621,
		0.745556, -0.502135, 0.438187,
		0.181392, -0.479782, -0.858432,
		5.125035, 5.472230, 2.681035>
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
