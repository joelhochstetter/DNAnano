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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.526453, 14.820715, 14.850355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.160897, 14.971965, 14.791255>,  <3.941564, 15.062715, 14.755795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.160897, 14.971965, 14.791255>,  <4.526453, 14.820715, 14.850355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.160897, 14.971965, 14.791255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378092, 0.925301, 0.029408,
		0.147833, -0.028988, -0.988587,
		-0.913888, 0.378124, -0.147750,
		3.886731, 15.085402, 14.746930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.525203, 15.119199, 14.252692>,  <4.526453, 14.820715, 14.850355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.525203, 15.119199, 14.252692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.236008, 15.305720, 14.456594>,  <4.062491, 15.417633, 14.578935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.236008, 15.305720, 14.456594>,  <4.525203, 15.119199, 14.252692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.236008, 15.305720, 14.456594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379989, 0.884623, -0.270281,
		-0.576972, -0.001709, -0.816762,
		-0.722988, 0.466305, 0.509753,
		4.019112, 15.445612, 14.609520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.009947, 15.556690, 13.885603>,  <4.525203, 15.119199, 14.252692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.009947, 15.556690, 13.885603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.127782, 15.674513, 14.249242>,  <4.198483, 15.745206, 14.467425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.127782, 15.674513, 14.249242>,  <4.009947, 15.556690, 13.885603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.127782, 15.674513, 14.249242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303883, 0.873056, -0.381350,
		-0.906021, 0.388600, 0.167680,
		0.294586, 0.294556, 0.909096,
		4.216158, 15.762879, 14.521971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.695980, 16.266468, 14.042648>,  <4.009947, 15.556690, 13.885603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.695980, 16.266468, 14.042648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.024335, 16.170099, 14.249762>,  <4.221348, 16.112278, 14.374030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.024335, 16.170099, 14.249762>,  <3.695980, 16.266468, 14.042648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.024335, 16.170099, 14.249762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267724, 0.963204, 0.023727,
		-0.504448, 0.119146, 0.855182,
		0.820888, -0.240921, 0.517784,
		4.270601, 16.097822, 14.405097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.727711, 16.737574, 14.654588>,  <3.695980, 16.266468, 14.042648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.727711, 16.737574, 14.654588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.094089, 16.613016, 14.553333>,  <4.313916, 16.538282, 14.492580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.094089, 16.613016, 14.553333>,  <3.727711, 16.737574, 14.654588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.094089, 16.613016, 14.553333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277912, 0.947247, -0.159647,
		0.289496, 0.075879, 0.954167,
		0.915946, -0.311392, -0.253136,
		4.368873, 16.519598, 14.477392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.291418, 17.117800, 15.018149>,  <3.727711, 16.737574, 14.654588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.291418, 17.117800, 15.018149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.471448, 16.963816, 14.695848>,  <4.579467, 16.871426, 14.502468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.471448, 16.963816, 14.695848>,  <4.291418, 17.117800, 15.018149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.471448, 16.963816, 14.695848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529879, 0.841420, -0.106023,
		0.718791, -0.379232, 0.582686,
		0.450076, -0.384961, -0.805752,
		4.606471, 16.848328, 14.454123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.094140, 17.238470, 15.071928>,  <4.291418, 17.117800, 15.018149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.094140, 17.238470, 15.071928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.990283, 17.171452, 14.691504>,  <4.927970, 17.131241, 14.463250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.990283, 17.171452, 14.691504>,  <5.094140, 17.238470, 15.071928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.990283, 17.171452, 14.691504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624333, 0.722217, -0.297676,
		0.736747, -0.671067, -0.082910,
		-0.259640, -0.167548, -0.951060,
		4.912392, 17.121187, 14.406186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.706150, 17.404343, 14.713069>,  <5.094140, 17.238470, 15.071928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.706150, 17.404343, 14.713069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.436769, 17.377844, 14.418567>,  <5.275141, 17.361944, 14.241865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.436769, 17.377844, 14.418567>,  <5.706150, 17.404343, 14.713069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.436769, 17.377844, 14.418567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496320, 0.697592, -0.516751,
		0.547841, -0.713426, -0.436914,
		-0.673452, -0.066248, -0.736257,
		5.234734, 17.357969, 14.197690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.998281, 17.193052, 14.018211>,  <5.706150, 17.404343, 14.713069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.998281, 17.193052, 14.018211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.653899, 17.381405, 13.941244>,  <5.447269, 17.494415, 13.895064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.653899, 17.381405, 13.941244>,  <5.998281, 17.193052, 14.018211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.653899, 17.381405, 13.941244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483880, 0.641471, -0.595294,
		-0.156882, -0.605629, -0.780128,
		-0.860957, 0.470880, -0.192417,
		5.395611, 17.522669, 13.883519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.956513, 17.140970, 13.360135>,  <5.998281, 17.193052, 14.018211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.956513, 17.140970, 13.360135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698837, 17.430189, 13.459914>,  <5.544232, 17.603720, 13.519782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698837, 17.430189, 13.459914>,  <5.956513, 17.140970, 13.360135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.698837, 17.430189, 13.459914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416307, 0.605046, -0.678681,
		-0.641645, -0.333351, -0.690774,
		-0.644189, 0.723046, 0.249448,
		5.505580, 17.647102, 13.534749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.665839, 17.480980, 12.675770>,  <5.956513, 17.140970, 13.360135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.665839, 17.480980, 12.675770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.619442, 17.733999, 12.982084>,  <5.591604, 17.885811, 13.165873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.619442, 17.733999, 12.982084>,  <5.665839, 17.480980, 12.675770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.619442, 17.733999, 12.982084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409559, 0.732855, -0.543310,
		-0.904880, 0.250614, -0.344071,
		-0.115993, 0.632548, 0.765786,
		5.584644, 17.923763, 13.211821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.438744, 18.137730, 12.387488>,  <5.665839, 17.480980, 12.675770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.438744, 18.137730, 12.387488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.540227, 18.256380, 12.755759>,  <5.601117, 18.327570, 12.976722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.540227, 18.256380, 12.755759>,  <5.438744, 18.137730, 12.387488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.540227, 18.256380, 12.755759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430461, 0.817749, -0.382086,
		-0.866219, 0.493253, 0.079782,
		0.253707, 0.296627, 0.920677,
		5.616339, 18.345367, 13.031962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425024, 18.830063, 12.363067>,  <5.438744, 18.137730, 12.387488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425024, 18.830063, 12.363067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.655266, 18.760994, 12.682782>,  <5.793412, 18.719553, 12.874612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.655266, 18.760994, 12.682782>,  <5.425024, 18.830063, 12.363067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.655266, 18.760994, 12.682782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610607, 0.740908, -0.279668,
		-0.543908, 0.649030, 0.531906,
		0.575606, -0.172671, 0.799288,
		5.827948, 18.709192, 12.922568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.464687, 19.476870, 12.763442>,  <5.425024, 18.830063, 12.363067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.464687, 19.476870, 12.763442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.771766, 19.246222, 12.875262>,  <5.956013, 19.107832, 12.942354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.771766, 19.246222, 12.875262>,  <5.464687, 19.476870, 12.763442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.771766, 19.246222, 12.875262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638753, 0.653622, -0.405923,
		0.051343, 0.490190, 0.870102,
		0.767697, -0.576622, 0.279551,
		6.002075, 19.073235, 12.959127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.900484, 19.852074, 13.118565>,  <5.464687, 19.476870, 12.763442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.900484, 19.852074, 13.118565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.131558, 19.561069, 12.970505>,  <6.270203, 19.386467, 12.881669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.131558, 19.561069, 12.970505>,  <5.900484, 19.852074, 13.118565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.131558, 19.561069, 12.970505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722555, 0.666725, -0.182732,
		0.379727, -0.161892, 0.910823,
		0.577686, -0.727508, -0.370150,
		6.304864, 19.342817, 12.859460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.590346, 19.952707, 13.379786>,  <5.900484, 19.852074, 13.118565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.590346, 19.952707, 13.379786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.689685, 19.707920, 13.079435>,  <6.749289, 19.561047, 12.899225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.689685, 19.707920, 13.079435>,  <6.590346, 19.952707, 13.379786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.689685, 19.707920, 13.079435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842453, 0.519059, -0.144398,
		0.478117, -0.596718, 0.644463,
		0.248349, -0.611969, -0.750877,
		6.764190, 19.524330, 12.854172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259129, 19.861452, 13.440042>,  <6.590346, 19.952707, 13.379786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259129, 19.861452, 13.440042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.201045, 19.780893, 13.052567>,  <7.166194, 19.732557, 12.820083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.201045, 19.780893, 13.052567>,  <7.259129, 19.861452, 13.440042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.201045, 19.780893, 13.052567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827803, 0.511508, -0.230438,
		0.541900, -0.835343, 0.092441,
		-0.145211, -0.201398, -0.968686,
		7.157481, 19.720474, 12.761962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.908648, 19.636223, 13.126622>,  <7.259129, 19.861452, 13.440042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.908648, 19.636223, 13.126622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.677748, 19.745251, 12.818728>,  <7.539208, 19.810667, 12.633992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.677748, 19.745251, 12.818728>,  <7.908648, 19.636223, 13.126622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.677748, 19.745251, 12.818728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778937, 0.466668, -0.418902,
		0.245030, -0.841385, -0.481697,
		-0.577250, 0.272568, -0.769734,
		7.504573, 19.827021, 12.587809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.415905, 19.530537, 12.612864>,  <7.908648, 19.636223, 13.126622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.415905, 19.530537, 12.612864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.131386, 19.742594, 12.428253>,  <7.960675, 19.869827, 12.317487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.131386, 19.742594, 12.428253>,  <8.415905, 19.530537, 12.612864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.131386, 19.742594, 12.428253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702730, 0.550462, -0.450736,
		0.015098, -0.644935, -0.764089,
		-0.711297, 0.530142, -0.461526,
		7.917997, 19.901636, 12.289795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.617443, 19.553230, 11.879103>,  <8.415905, 19.530537, 12.612864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.617443, 19.553230, 11.879103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.386055, 19.862972, 11.981670>,  <8.247222, 20.048817, 12.043211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.386055, 19.862972, 11.981670>,  <8.617443, 19.553230, 11.879103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.386055, 19.862972, 11.981670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717457, 0.632572, -0.291735,
		-0.388109, 0.015209, -0.921488,
		-0.578470, 0.774353, 0.256419,
		8.212514, 20.095278, 12.058596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.864065, 20.065313, 11.398198>,  <8.617443, 19.553230, 11.879103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.864065, 20.065313, 11.398198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.650778, 20.300907, 11.641106>,  <8.522805, 20.442265, 11.786850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.650778, 20.300907, 11.641106>,  <8.864065, 20.065313, 11.398198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.650778, 20.300907, 11.641106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549286, 0.786978, -0.280980,
		-0.643401, 0.183740, -0.743152,
		-0.533217, 0.588986, 0.607268,
		8.490812, 20.477602, 11.823286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.819183, 20.689087, 11.057736>,  <8.864065, 20.065313, 11.398198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.819183, 20.689087, 11.057736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.708731, 20.787575, 11.429356>,  <8.642459, 20.846666, 11.652327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.708731, 20.787575, 11.429356>,  <8.819183, 20.689087, 11.057736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.708731, 20.787575, 11.429356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329306, 0.932358, -0.149218,
		-0.902944, 0.264737, -0.338534,
		-0.276131, 0.246218, 0.929047,
		8.625892, 20.861441, 11.708070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.477498, 21.464209, 11.102183>,  <8.819183, 20.689087, 11.057736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.477498, 21.464209, 11.102183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.601634, 21.384468, 11.473978>,  <8.676116, 21.336624, 11.697055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.601634, 21.384468, 11.473978>,  <8.477498, 21.464209, 11.102183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.601634, 21.384468, 11.473978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398707, 0.914905, 0.063104,
		-0.862973, 0.351010, 0.363415,
		0.310340, -0.199353, 0.929488,
		8.694736, 21.324663, 11.752825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.324200, 22.013117, 11.322385>,  <8.477498, 21.464209, 11.102183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.324200, 22.013117, 11.322385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.600110, 21.848074, 11.560365>,  <8.765656, 21.749048, 11.703153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.600110, 21.848074, 11.560365>,  <8.324200, 22.013117, 11.322385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.600110, 21.848074, 11.560365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547950, 0.834602, -0.056474,
		-0.473244, 0.364957, 0.801777,
		0.689776, -0.412608, 0.594949,
		8.807043, 21.724291, 11.738850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.459165, 22.477293, 11.796696>,  <8.324200, 22.013117, 11.322385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.459165, 22.477293, 11.796696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.785207, 22.245569, 11.797111>,  <8.980832, 22.106535, 11.797359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.785207, 22.245569, 11.797111>,  <8.459165, 22.477293, 11.796696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.785207, 22.245569, 11.797111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561694, 0.789876, -0.246164,
		0.141786, 0.201233, 0.969228,
		0.815106, -0.579312, 0.001038,
		9.029738, 22.071775, 11.797421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.960197, 22.986073, 11.890072>,  <8.459165, 22.477293, 11.796696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.960197, 22.986073, 11.890072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.151319, 22.660048, 11.758996>,  <9.265991, 22.464434, 11.680350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.151319, 22.660048, 11.758996>,  <8.960197, 22.986073, 11.890072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.151319, 22.660048, 11.758996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797854, 0.558731, -0.226380,
		0.367603, -0.153283, 0.917263,
		0.477804, -0.815060, -0.327689,
		9.294660, 22.415529, 11.660689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.537151, 23.478033, 11.792642>,  <8.960197, 22.986073, 11.890072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.537151, 23.478033, 11.792642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.664564, 23.683659, 11.474075>,  <9.741012, 23.807034, 11.282936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.664564, 23.683659, 11.474075>,  <9.537151, 23.478033, 11.792642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.664564, 23.683659, 11.474075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084605, 0.852243, 0.516260,
		0.944129, -0.097064, 0.314958,
		0.318530, 0.514063, -0.796415,
		9.760123, 23.837877, 11.235150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.139244, 23.805161, 12.042991>,  <9.537151, 23.478033, 11.792642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.139244, 23.805161, 12.042991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.013268, 24.003042, 11.718996>,  <9.937682, 24.121771, 11.524599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.013268, 24.003042, 11.718996>,  <10.139244, 23.805161, 12.042991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.013268, 24.003042, 11.718996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045031, 0.844666, 0.533396,
		0.948043, 0.204462, -0.243743,
		-0.314940, 0.494706, -0.809987,
		9.918785, 24.151455, 11.476000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.587702, 23.351767, 11.890492>,  <10.139244, 23.805161, 12.042991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.587702, 23.351767, 11.890492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.420828, 22.988432, 11.902349>,  <10.320704, 22.770432, 11.909464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.420828, 22.988432, 11.902349>,  <10.587702, 23.351767, 11.890492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.420828, 22.988432, 11.902349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512885, -0.262236, -0.817424,
		0.750270, -0.325814, 0.575274,
		-0.417185, -0.908338, 0.029643,
		10.295672, 22.715931, 11.911242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.128512, 22.849159, 11.933112>,  <10.587702, 23.351767, 11.890492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.128512, 22.849159, 11.933112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815043, 22.645336, 11.791010>,  <10.626962, 22.523043, 11.705749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815043, 22.645336, 11.791010>,  <11.128512, 22.849159, 11.933112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.815043, 22.645336, 11.791010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610632, -0.527034, -0.591070,
		0.113953, -0.680136, 0.724176,
		-0.783673, -0.509559, -0.355256,
		10.579942, 22.492468, 11.684433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.332186, 22.239437, 11.891168>,  <11.128512, 22.849159, 11.933112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.332186, 22.239437, 11.891168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.040633, 22.285145, 11.621153>,  <10.865702, 22.312569, 11.459145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.040633, 22.285145, 11.621153>,  <11.332186, 22.239437, 11.891168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.040633, 22.285145, 11.621153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587654, -0.401464, -0.702488,
		-0.351274, -0.908719, 0.225470,
		-0.728882, 0.114268, -0.675036,
		10.821969, 22.319426, 11.418642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.687542, 22.030462, 11.331687>,  <11.332186, 22.239437, 11.891168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.687542, 22.030462, 11.331687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.354839, 22.111021, 11.124760>,  <11.155217, 22.159357, 11.000604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.354839, 22.111021, 11.124760>,  <11.687542, 22.030462, 11.331687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.354839, 22.111021, 11.124760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346712, -0.539319, -0.767415,
		-0.433554, -0.817664, 0.378756,
		-0.831758, 0.201397, -0.517318,
		11.105312, 22.171440, 10.969564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.084102, 21.430977, 11.754715>,  <11.687542, 22.030462, 11.331687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.084102, 21.430977, 11.754715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875238, 21.154064, 11.953954>,  <11.749921, 20.987917, 12.073497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875238, 21.154064, 11.953954>,  <12.084102, 21.430977, 11.754715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.875238, 21.154064, 11.953954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467791, 0.720826, 0.511451,
		-0.713108, 0.034052, -0.700227,
		-0.522157, -0.692279, 0.498097,
		11.718592, 20.946381, 12.103383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.667247, 21.624306, 12.431337>,  <12.084102, 21.430977, 11.754715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.667247, 21.624306, 12.431337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.868388, 21.782768, 12.738634>,  <11.989073, 21.877846, 12.923013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.868388, 21.782768, 12.738634>,  <11.667247, 21.624306, 12.431337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.868388, 21.782768, 12.738634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597505, -0.482930, 0.640130,
		0.624600, -0.780921, -0.006137,
		0.502854, 0.396158, 0.768243,
		12.019244, 21.901615, 12.969107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.188469, 21.178461, 12.920328>,  <11.667247, 21.624306, 12.431337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.188469, 21.178461, 12.920328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.038005, 21.477850, 13.138794>,  <11.947726, 21.657482, 13.269874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.038005, 21.477850, 13.138794>,  <12.188469, 21.178461, 12.920328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.038005, 21.477850, 13.138794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593344, -0.647326, 0.478448,
		0.711651, -0.144091, 0.687598,
		-0.376160, 0.748470, 0.546165,
		11.925157, 21.702391, 13.302644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170535, 21.076340, 13.672541>,  <12.188469, 21.178461, 12.920328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170535, 21.076340, 13.672541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888067, 21.357639, 13.639641>,  <11.718586, 21.526419, 13.619901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888067, 21.357639, 13.639641>,  <12.170535, 21.076340, 13.672541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888067, 21.357639, 13.639641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655681, -0.605678, 0.450817,
		0.267219, 0.372283, 0.888819,
		-0.706170, 0.703249, -0.082250,
		11.676216, 21.568613, 13.614965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.838240, 21.130648, 14.363425>,  <12.170535, 21.076340, 13.672541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.838240, 21.130648, 14.363425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.578088, 21.265615, 14.091204>,  <11.421997, 21.346596, 13.927871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.578088, 21.265615, 14.091204>,  <11.838240, 21.130648, 14.363425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.578088, 21.265615, 14.091204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690573, -0.635836, 0.344703,
		-0.316411, 0.694161, 0.646549,
		-0.650379, 0.337421, -0.680554,
		11.382975, 21.366842, 13.887037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.230512, 21.273937, 14.760098>,  <11.838240, 21.130648, 14.363425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.230512, 21.273937, 14.760098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.137148, 21.205761, 14.377169>,  <11.081129, 21.164856, 14.147410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.137148, 21.205761, 14.377169>,  <11.230512, 21.273937, 14.760098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.137148, 21.205761, 14.377169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758980, -0.583494, 0.288935,
		-0.607839, 0.794031, 0.006832,
		-0.233410, -0.170441, -0.957324,
		11.067125, 21.154629, 14.089972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.560300, 21.177715, 14.826580>,  <11.230512, 21.273937, 14.760098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.560300, 21.177715, 14.826580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.636218, 21.061777, 14.451354>,  <10.681769, 20.992214, 14.226218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.636218, 21.061777, 14.451354>,  <10.560300, 21.177715, 14.826580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.636218, 21.061777, 14.451354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680428, -0.727614, 0.087149,
		-0.707810, 0.621746, -0.335317,
		0.189796, -0.289844, -0.938066,
		10.693157, 20.974825, 14.169934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.869744, 21.165878, 14.493207>,  <10.560300, 21.177715, 14.826580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.869744, 21.165878, 14.493207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.102683, 20.937002, 14.262219>,  <10.242446, 20.799677, 14.123627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.102683, 20.937002, 14.262219>,  <9.869744, 21.165878, 14.493207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.102683, 20.937002, 14.262219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720469, -0.692299, -0.040581,
		-0.376561, 0.439680, -0.815404,
		0.582346, -0.572192, -0.577469,
		10.277387, 20.765345, 14.088979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.499422, 20.936134, 13.968767>,  <9.869744, 21.165878, 14.493207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.499422, 20.936134, 13.968767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.805710, 20.684896, 14.024152>,  <9.989483, 20.534155, 14.057383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.805710, 20.684896, 14.024152>,  <9.499422, 20.936134, 13.968767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.805710, 20.684896, 14.024152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632759, -0.774242, -0.012852,
		0.115276, -0.077772, -0.990284,
		0.765720, -0.628093, 0.138462,
		10.035426, 20.496468, 14.065690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.313788, 20.384460, 13.527818>,  <9.499422, 20.936134, 13.968767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.313788, 20.384460, 13.527818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.582453, 20.214466, 13.770555>,  <9.743651, 20.112469, 13.916198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.582453, 20.214466, 13.770555>,  <9.313788, 20.384460, 13.527818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.582453, 20.214466, 13.770555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539277, -0.842099, 0.007136,
		0.507990, -0.332050, -0.794789,
		0.671660, -0.424986, 0.606844,
		9.783951, 20.086969, 13.952609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.372095, 19.641268, 13.288252>,  <9.313788, 20.384460, 13.527818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.372095, 19.641268, 13.288252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.503251, 19.653889, 13.665928>,  <9.581944, 19.661461, 13.892533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.503251, 19.653889, 13.665928>,  <9.372095, 19.641268, 13.288252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.503251, 19.653889, 13.665928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516340, -0.830970, 0.207078,
		0.791128, -0.555421, -0.256173,
		0.327888, 0.031553, 0.944189,
		9.601618, 19.663355, 13.949184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.741903, 18.906609, 13.357780>,  <9.372095, 19.641268, 13.288252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.741903, 18.906609, 13.357780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.681976, 19.067316, 13.719140>,  <9.646020, 19.163740, 13.935957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.681976, 19.067316, 13.719140>,  <9.741903, 18.906609, 13.357780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.681976, 19.067316, 13.719140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405505, -0.858300, 0.314463,
		0.901732, -0.319222, 0.291508,
		-0.149818, 0.401770, 0.903402,
		9.637031, 19.187847, 13.990161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.097468, 18.492836, 13.845092>,  <9.741903, 18.906609, 13.357780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.097468, 18.492836, 13.845092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.788426, 18.684475, 14.011729>,  <9.603002, 18.799458, 14.111712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.788426, 18.684475, 14.011729>,  <10.097468, 18.492836, 13.845092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.788426, 18.684475, 14.011729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426730, -0.877713, 0.217992,
		0.470090, -0.009352, 0.882569,
		-0.772604, 0.479095, 0.416594,
		9.556645, 18.828203, 14.136707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.957212, 18.107924, 14.316471>,  <10.097468, 18.492836, 13.845092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.957212, 18.107924, 14.316471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.612968, 18.310114, 14.291664>,  <9.406423, 18.431429, 14.276780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.612968, 18.310114, 14.291664>,  <9.957212, 18.107924, 14.316471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.612968, 18.310114, 14.291664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505284, -0.832327, 0.227858,
		0.063559, 0.227433, 0.971717,
		-0.860609, 0.505475, -0.062016,
		9.354786, 18.461756, 14.273059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.622779, 17.926573, 14.905262>,  <9.957212, 18.107924, 14.316471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.622779, 17.926573, 14.905262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.327747, 18.061508, 14.671277>,  <9.150728, 18.142469, 14.530886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.327747, 18.061508, 14.671277>,  <9.622779, 17.926573, 14.905262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.327747, 18.061508, 14.671277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611899, -0.700261, 0.367714,
		-0.285584, 0.629156, 0.722914,
		-0.737578, 0.337338, -0.584963,
		9.106474, 18.162710, 14.495789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.002644, 17.623232, 15.249509>,  <9.622779, 17.926573, 14.905262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.002644, 17.623232, 15.249509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.844358, 17.738693, 14.900776>,  <8.749388, 17.807970, 14.691536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.844358, 17.738693, 14.900776>,  <9.002644, 17.623232, 15.249509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.844358, 17.738693, 14.900776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749919, -0.649551, 0.125318,
		-0.530126, 0.703393, 0.473503,
		-0.395712, 0.288654, -0.871832,
		8.725645, 17.825289, 14.639226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.279186, 17.775425, 15.403033>,  <9.002644, 17.623232, 15.249509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.279186, 17.775425, 15.403033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.317551, 17.690254, 15.014093>,  <8.340569, 17.639151, 14.780729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.317551, 17.690254, 15.014093>,  <8.279186, 17.775425, 15.403033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.317551, 17.690254, 15.014093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735226, -0.673660, 0.074999,
		-0.671001, 0.707703, -0.221164,
		0.095912, -0.212930, -0.972348,
		8.346324, 17.626375, 14.722389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.619557, 17.731449, 15.220304>,  <8.279186, 17.775425, 15.403033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.619557, 17.731449, 15.220304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.830038, 17.545351, 14.935585>,  <7.956326, 17.433691, 14.764753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.830038, 17.545351, 14.935585>,  <7.619557, 17.731449, 15.220304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.830038, 17.545351, 14.935585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633549, -0.772828, 0.036783,
		-0.567211, 0.431604, -0.701420,
		0.526201, -0.465247, -0.711799,
		7.987898, 17.405777, 14.722046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.188343, 17.676422, 14.694045>,  <7.619557, 17.731449, 15.220304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.188343, 17.676422, 14.694045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.458948, 17.389389, 14.627827>,  <7.621311, 17.217169, 14.588096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.458948, 17.389389, 14.627827>,  <7.188343, 17.676422, 14.694045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.458948, 17.389389, 14.627827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734393, -0.674086, -0.079216,
		-0.054748, 0.175165, -0.983016,
		0.676513, -0.717583, -0.165545,
		7.661902, 17.174114, 14.578163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.817376, 17.174791, 14.164340>,  <7.188343, 17.676422, 14.694045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.817376, 17.174791, 14.164340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.136246, 16.986082, 14.315041>,  <7.327568, 16.872856, 14.405460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.136246, 16.986082, 14.315041>,  <6.817376, 17.174791, 14.164340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.136246, 16.986082, 14.315041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439953, -0.881271, -0.172638,
		0.413466, -0.028130, -0.910085,
		0.797175, -0.471774, 0.376751,
		7.375399, 16.844549, 14.428066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.982992, 16.679193, 13.695205>,  <6.817376, 17.174791, 14.164340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.982992, 16.679193, 13.695205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.143833, 16.522762, 14.026354>,  <7.240337, 16.428904, 14.225043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.143833, 16.522762, 14.026354>,  <6.982992, 16.679193, 13.695205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.143833, 16.522762, 14.026354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400369, -0.888265, -0.225143,
		0.823419, -0.240925, -0.513748,
		0.402102, -0.391076, 0.827873,
		7.264463, 16.405439, 14.274715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.361721, 16.067841, 13.507176>,  <6.982992, 16.679193, 13.695205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.361721, 16.067841, 13.507176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.291650, 16.020918, 13.898186>,  <7.249608, 15.992764, 14.132792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.291650, 16.020918, 13.898186>,  <7.361721, 16.067841, 13.507176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.291650, 16.020918, 13.898186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450503, -0.873284, -0.185532,
		0.875420, -0.472878, 0.100131,
		-0.175177, -0.117309, 0.977523,
		7.239097, 15.985725, 14.191442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.371575, 15.349399, 13.593346>,  <7.361721, 16.067841, 13.507176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.371575, 15.349399, 13.593346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.198894, 15.484897, 13.927743>,  <7.095284, 15.566195, 14.128381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.198894, 15.484897, 13.927743>,  <7.371575, 15.349399, 13.593346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.198894, 15.484897, 13.927743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562959, -0.825328, 0.043714,
		0.704776, -0.451758, 0.546997,
		-0.431703, 0.338746, 0.835992,
		7.069383, 15.586520, 14.178540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.421266, 14.754987, 13.954639>,  <7.371575, 15.349399, 13.593346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.421266, 14.754987, 13.954639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.137079, 14.987845, 14.112802>,  <6.966568, 15.127561, 14.207699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.137079, 14.987845, 14.112802>,  <7.421266, 14.754987, 13.954639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.137079, 14.987845, 14.112802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574476, -0.804298, 0.151930,
		0.406469, -0.119209, 0.905854,
		-0.710465, 0.582146, 0.395405,
		6.923940, 15.162489, 14.231423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.814401, 14.518826, 14.589742>,  <7.421266, 14.754987, 13.954639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.814401, 14.518826, 14.589742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.199201, 14.419506, 14.635182>,  <8.430080, 14.359915, 14.662447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.199201, 14.419506, 14.635182>,  <7.814401, 14.518826, 14.589742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.199201, 14.419506, 14.635182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141382, -0.808880, -0.570723,
		0.233600, 0.532974, -0.813247,
		0.961999, -0.248299, 0.113601,
		8.487801, 14.345016, 14.669263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.301359, 14.707610, 14.063720>,  <7.814401, 14.518826, 14.589742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.301359, 14.707610, 14.063720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.328482, 14.367043, 14.271753>,  <8.344755, 14.162702, 14.396573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.328482, 14.367043, 14.271753>,  <8.301359, 14.707610, 14.063720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.328482, 14.367043, 14.271753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224180, -0.520956, -0.823619,
		0.972186, -0.060746, -0.226195,
		0.067806, -0.851420, 0.520084,
		8.348824, 14.111617, 14.427778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.653909, 14.868001, 13.482728>,  <8.301359, 14.707610, 14.063720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.653909, 14.868001, 13.482728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.839348, 15.006704, 13.156578>,  <8.950611, 15.089926, 12.960888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.839348, 15.006704, 13.156578>,  <8.653909, 14.868001, 13.482728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.839348, 15.006704, 13.156578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669624, 0.465519, 0.578702,
		0.580241, -0.814280, -0.016384,
		0.463599, 0.346758, -0.815374,
		8.978428, 15.110732, 12.911965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.363975, 14.847840, 13.593954>,  <8.653909, 14.868001, 13.482728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.363975, 14.847840, 13.593954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.337564, 15.122820, 13.304665>,  <9.321717, 15.287807, 13.131090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.337564, 15.122820, 13.304665>,  <9.363975, 14.847840, 13.593954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.337564, 15.122820, 13.304665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708074, 0.542966, 0.451463,
		0.703044, -0.482288, -0.522615,
		-0.066027, 0.687449, -0.723225,
		9.317756, 15.329055, 13.087697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.074088, 14.915486, 13.206171>,  <9.363975, 14.847840, 13.593954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.074088, 14.915486, 13.206171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.810733, 15.211585, 13.260661>,  <9.652719, 15.389244, 13.293355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.810733, 15.211585, 13.260661>,  <10.074088, 14.915486, 13.206171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.810733, 15.211585, 13.260661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384787, 0.175478, 0.906171,
		0.646887, 0.649031, -0.400371,
		-0.658389, 0.740248, 0.136225,
		9.613216, 15.433660, 13.301529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.387935, 15.604635, 13.322858>,  <10.074088, 14.915486, 13.206171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.387935, 15.604635, 13.322858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.043950, 15.576715, 13.525083>,  <9.837559, 15.559963, 13.646418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.043950, 15.576715, 13.525083>,  <10.387935, 15.604635, 13.322858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.043950, 15.576715, 13.525083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506647, 0.002496, 0.862150,
		-0.061440, 0.997558, 0.033218,
		-0.859962, -0.069800, 0.505563,
		9.785961, 15.555776, 13.676751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.484364, 16.109591, 13.908898>,  <10.387935, 15.604635, 13.322858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.484364, 16.109591, 13.908898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.256133, 15.792346, 13.994143>,  <10.119195, 15.601999, 14.045291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.256133, 15.792346, 13.994143>,  <10.484364, 16.109591, 13.908898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.256133, 15.792346, 13.994143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544293, -0.170882, 0.821307,
		-0.614971, 0.584613, 0.529186,
		-0.570575, -0.793112, 0.213113,
		10.084961, 15.554413, 14.058078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.428261, 16.065760, 14.642290>,  <10.484364, 16.109591, 13.908898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.428261, 16.065760, 14.642290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.320258, 15.703139, 14.512511>,  <10.255457, 15.485567, 14.434644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.320258, 15.703139, 14.512511>,  <10.428261, 16.065760, 14.642290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.320258, 15.703139, 14.512511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365818, -0.408278, 0.836353,
		-0.890659, 0.107132, 0.441870,
		-0.270006, -0.906549, -0.324446,
		10.239257, 15.431174, 14.415177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.821378, 16.593143, 15.070847>,  <10.428261, 16.065760, 14.642290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.821378, 16.593143, 15.070847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.190680, 16.550667, 15.218535>,  <11.412261, 16.525181, 15.307149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.190680, 16.550667, 15.218535>,  <10.821378, 16.593143, 15.070847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.190680, 16.550667, 15.218535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384185, -0.259917, 0.885915,
		0.001891, -0.959774, -0.280767,
		0.923254, -0.106191, 0.369222,
		11.467656, 16.518810, 15.329302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.753651, 15.907533, 15.395369>,  <10.821378, 16.593143, 15.070847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.753651, 15.907533, 15.395369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.076007, 16.082087, 15.555424>,  <11.269421, 16.186819, 15.651457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.076007, 16.082087, 15.555424>,  <10.753651, 15.907533, 15.395369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.076007, 16.082087, 15.555424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363485, -0.168813, 0.916177,
		0.467354, -0.883782, 0.022574,
		0.805890, 0.436384, 0.400137,
		11.317774, 16.213001, 15.675465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993401, 15.505600, 15.970223>,  <10.753651, 15.907533, 15.395369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993401, 15.505600, 15.970223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.143129, 15.870437, 16.037125>,  <11.232966, 16.089338, 16.077265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.143129, 15.870437, 16.037125>,  <10.993401, 15.505600, 15.970223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.143129, 15.870437, 16.037125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329516, -0.037761, 0.943395,
		0.866777, -0.408246, 0.286413,
		0.374322, 0.912091, 0.167254,
		11.255426, 16.144064, 16.087301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.335619, 15.390175, 16.586555>,  <10.993401, 15.505600, 15.970223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.335619, 15.390175, 16.586555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.276874, 15.782861, 16.538111>,  <11.241627, 16.018473, 16.509045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.276874, 15.782861, 16.538111>,  <11.335619, 15.390175, 16.586555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.276874, 15.782861, 16.538111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256244, 0.080499, 0.963254,
		0.955390, 0.172501, 0.239736,
		-0.146864, 0.981714, -0.121111,
		11.232815, 16.077375, 16.501778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704088, 15.684384, 17.166887>,  <11.335619, 15.390175, 16.586555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704088, 15.684384, 17.166887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.446008, 15.971432, 17.062014>,  <11.291160, 16.143660, 16.999090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.446008, 15.971432, 17.062014>,  <11.704088, 15.684384, 17.166887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.446008, 15.971432, 17.062014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222061, 0.152211, 0.963079,
		0.731029, 0.679601, 0.061149,
		-0.645201, 0.717618, -0.262183,
		11.252447, 16.186718, 16.983358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.938367, 16.319901, 17.538635>,  <11.704088, 15.684384, 17.166887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.938367, 16.319901, 17.538635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551670, 16.313450, 17.436537>,  <11.319652, 16.309580, 17.375278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.551670, 16.313450, 17.436537>,  <11.938367, 16.319901, 17.538635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.551670, 16.313450, 17.436537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252412, 0.220960, 0.942054,
		0.041209, 0.975150, -0.217681,
		-0.966742, -0.016124, -0.255245,
		11.261647, 16.308613, 17.359962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.678972, 16.872902, 17.877052>,  <11.938367, 16.319901, 17.538635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.678972, 16.872902, 17.877052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360534, 16.654163, 17.773369>,  <11.169471, 16.522921, 17.711159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360534, 16.654163, 17.773369>,  <11.678972, 16.872902, 17.877052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.360534, 16.654163, 17.773369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278066, -0.049892, 0.959265,
		-0.537504, 0.835744, -0.112340,
		-0.796096, -0.546847, -0.259209,
		11.121705, 16.490108, 17.695606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.174598, 17.175087, 18.293592>,  <11.678972, 16.872902, 17.877052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.174598, 17.175087, 18.293592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.986238, 16.835135, 18.198969>,  <10.873221, 16.631163, 18.142195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.986238, 16.835135, 18.198969>,  <11.174598, 17.175087, 18.293592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.986238, 16.835135, 18.198969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432958, -0.010990, 0.901347,
		-0.768636, 0.526863, -0.362787,
		-0.470900, -0.849879, -0.236557,
		10.844968, 16.580172, 18.128002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.488528, 17.198288, 18.574196>,  <11.174598, 17.175087, 18.293592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.488528, 17.198288, 18.574196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575737, 16.812237, 18.516243>,  <10.628062, 16.580606, 18.481472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575737, 16.812237, 18.516243>,  <10.488528, 17.198288, 18.574196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.575737, 16.812237, 18.516243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549960, -0.244136, 0.798713,
		-0.806232, -0.094459, -0.584010,
		0.218023, -0.965130, -0.144882,
		10.641144, 16.522697, 18.472778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.956226, 16.886793, 18.745378>,  <10.488528, 17.198288, 18.574196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.956226, 16.886793, 18.745378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.196858, 16.567753, 18.762962>,  <10.341238, 16.376329, 18.773512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.196858, 16.567753, 18.762962>,  <9.956226, 16.886793, 18.745378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.196858, 16.567753, 18.762962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452231, -0.294695, 0.841809,
		-0.658473, -0.526295, -0.537983,
		0.601581, -0.797602, 0.043958,
		10.377333, 16.328472, 18.776150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.481730, 16.328442, 18.862593>,  <9.956226, 16.886793, 18.745378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.481730, 16.328442, 18.862593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.848248, 16.231022, 18.989769>,  <10.068159, 16.172569, 19.066074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.848248, 16.231022, 18.989769>,  <9.481730, 16.328442, 18.862593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.848248, 16.231022, 18.989769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398342, -0.471843, 0.786567,
		-0.041551, -0.847377, -0.529364,
		0.916295, -0.243551, 0.317941,
		10.123137, 16.157957, 19.085152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.436960, 15.802672, 19.235271>,  <9.481730, 16.328442, 18.862593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.436960, 15.802672, 19.235271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.802696, 15.870718, 19.382263>,  <10.022138, 15.911546, 19.470459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.802696, 15.870718, 19.382263>,  <9.436960, 15.802672, 19.235271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.802696, 15.870718, 19.382263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265441, -0.433544, 0.861151,
		0.305813, -0.884930, -0.351251,
		0.914341, 0.170114, 0.367480,
		10.076999, 15.921752, 19.492508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.743832, 15.244766, 19.641628>,  <9.436960, 15.802672, 19.235271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.743832, 15.244766, 19.641628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.963700, 15.533641, 19.809586>,  <10.095621, 15.706965, 19.910360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.963700, 15.533641, 19.809586>,  <9.743832, 15.244766, 19.641628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.963700, 15.533641, 19.809586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037282, -0.480927, 0.875967,
		0.834548, -0.497149, -0.237427,
		0.549671, 0.722185, 0.419892,
		10.128602, 15.750297, 19.935553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.211655, 14.937822, 20.188894>,  <9.743832, 15.244766, 19.641628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.211655, 14.937822, 20.188894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192125, 15.330936, 20.260166>,  <10.180408, 15.566805, 20.302929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192125, 15.330936, 20.260166>,  <10.211655, 14.937822, 20.188894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192125, 15.330936, 20.260166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175568, -0.184057, 0.967108,
		0.983256, 0.015934, 0.181532,
		-0.048822, 0.982786, 0.178178,
		10.177479, 15.625772, 20.313620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.612729, 14.981171, 20.779682>,  <10.211655, 14.937822, 20.188894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.612729, 14.981171, 20.779682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.340539, 15.274259, 20.776262>,  <10.177225, 15.450111, 20.774210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.340539, 15.274259, 20.776262>,  <10.612729, 14.981171, 20.779682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.340539, 15.274259, 20.776262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306683, -0.274182, 0.911466,
		0.665506, 0.622852, 0.411287,
		-0.680476, 0.732721, -0.008548,
		10.136396, 15.494075, 20.773699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.626155, 15.306372, 21.459385>,  <10.612729, 14.981171, 20.779682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.626155, 15.306372, 21.459385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.281047, 15.438354, 21.306150>,  <10.073982, 15.517544, 21.214211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.281047, 15.438354, 21.306150>,  <10.626155, 15.306372, 21.459385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.281047, 15.438354, 21.306150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450828, -0.159076, 0.878321,
		0.228868, 0.930496, 0.286000,
		-0.862771, 0.329956, -0.383087,
		10.022216, 15.537341, 21.191225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.309400, 15.692527, 21.933281>,  <10.626155, 15.306372, 21.459385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.309400, 15.692527, 21.933281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.983473, 15.603948, 21.718979>,  <9.787917, 15.550800, 21.590397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.983473, 15.603948, 21.718979>,  <10.309400, 15.692527, 21.933281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.983473, 15.603948, 21.718979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509795, -0.166302, 0.844069,
		-0.276014, 0.960888, 0.022613,
		-0.814816, -0.221447, -0.535758,
		9.739028, 15.537514, 21.558252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.767090, 15.809474, 22.383741>,  <10.309400, 15.692527, 21.933281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.767090, 15.809474, 22.383741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.574441, 15.593508, 22.107616>,  <9.458852, 15.463928, 21.941940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.574441, 15.593508, 22.107616>,  <9.767090, 15.809474, 22.383741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.574441, 15.593508, 22.107616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574621, -0.400189, 0.713905,
		-0.661703, 0.740500, -0.117507,
		-0.481622, -0.539915, -0.690313,
		9.429955, 15.431533, 21.900522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.086876, 15.870792, 22.567957>,  <9.767090, 15.809474, 22.383741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.086876, 15.870792, 22.567957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.063309, 15.545326, 22.336620>,  <9.049169, 15.350046, 22.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.063309, 15.545326, 22.336620>,  <9.086876, 15.870792, 22.567957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.063309, 15.545326, 22.336620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553784, -0.455385, 0.697099,
		-0.830573, 0.361348, -0.423764,
		-0.058919, -0.813666, -0.578340,
		9.045633, 15.301227, 22.163118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.388533, 15.702190, 22.528572>,  <9.086876, 15.870792, 22.567957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.388533, 15.702190, 22.528572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.594294, 15.367914, 22.451620>,  <8.717750, 15.167348, 22.405449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.594294, 15.367914, 22.451620>,  <8.388533, 15.702190, 22.528572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.594294, 15.367914, 22.451620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529103, -0.485840, 0.695707,
		-0.674864, -0.256083, -0.692084,
		0.514401, -0.835692, -0.192382,
		8.748614, 15.117207, 22.393906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.842367, 15.213521, 22.588198>,  <8.388533, 15.702190, 22.528572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.842367, 15.213521, 22.588198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.196463, 15.037329, 22.647968>,  <8.408920, 14.931613, 22.683830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.196463, 15.037329, 22.647968>,  <7.842367, 15.213521, 22.588198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.196463, 15.037329, 22.647968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405248, -0.572688, 0.712602,
		-0.228313, -0.691378, -0.685470,
		0.885239, -0.440481, 0.149427,
		8.462034, 14.905184, 22.692797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.722721, 14.562753, 22.464643>,  <7.842367, 15.213521, 22.588198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.722721, 14.562753, 22.464643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.044363, 14.542509, 22.701574>,  <8.237349, 14.530363, 22.843733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.044363, 14.542509, 22.701574>,  <7.722721, 14.562753, 22.464643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.044363, 14.542509, 22.701574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462595, -0.679074, 0.569969,
		0.373388, -0.732323, -0.569460,
		0.804106, -0.050609, 0.592327,
		8.285595, 14.527327, 22.879272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.675208, 13.848684, 22.658932>,  <7.722721, 14.562753, 22.464643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.675208, 13.848684, 22.658932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.921889, 14.033160, 22.914112>,  <8.069898, 14.143846, 23.067221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.921889, 14.033160, 22.914112>,  <7.675208, 13.848684, 22.658932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.921889, 14.033160, 22.914112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303621, -0.608349, 0.733298,
		0.726286, -0.645922, -0.235144,
		0.616703, 0.461189, 0.637951,
		8.106900, 14.171517, 23.105497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.953306, 13.301520, 23.033909>,  <7.675208, 13.848684, 22.658932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.953306, 13.301520, 23.033909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.002545, 13.618940, 23.272278>,  <8.032089, 13.809392, 23.415300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.002545, 13.618940, 23.272278>,  <7.953306, 13.301520, 23.033909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.002545, 13.618940, 23.272278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346247, -0.528413, 0.775173,
		0.930032, -0.301760, 0.209717,
		0.123099, 0.793549, 0.595924,
		8.039475, 13.857005, 23.451056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.417347, 13.093428, 23.604181>,  <7.953306, 13.301520, 23.033909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.417347, 13.093428, 23.604181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.248420, 13.427923, 23.744095>,  <8.147063, 13.628621, 23.828043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.248420, 13.427923, 23.744095>,  <8.417347, 13.093428, 23.604181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.248420, 13.427923, 23.744095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133729, -0.439142, 0.888409,
		0.896529, 0.328415, 0.297287,
		-0.422319, 0.836240, 0.349785,
		8.121724, 13.678795, 23.849030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.761017, 13.248770, 24.235270>,  <8.417347, 13.093428, 23.604181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.761017, 13.248770, 24.235270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.409002, 13.438403, 24.246450>,  <8.197794, 13.552183, 24.253159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.409002, 13.438403, 24.246450>,  <8.761017, 13.248770, 24.235270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.409002, 13.438403, 24.246450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116051, -0.271749, 0.955345,
		0.460509, 0.837494, 0.294167,
		-0.880036, 0.474084, 0.027951,
		8.144992, 13.580628, 24.254835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.799980, 13.736954, 24.752142>,  <8.761017, 13.248770, 24.235270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.799980, 13.736954, 24.752142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.412871, 13.652243, 24.697636>,  <8.180606, 13.601417, 24.664932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.412871, 13.652243, 24.697636>,  <8.799980, 13.736954, 24.752142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.412871, 13.652243, 24.697636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062720, -0.321351, 0.944881,
		-0.243893, 0.922976, 0.297712,
		-0.967772, -0.211777, -0.136265,
		8.122540, 13.588710, 24.656755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.391418, 13.856277, 25.436954>,  <8.799980, 13.736954, 24.752142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.391418, 13.856277, 25.436954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.113588, 13.660953, 25.225626>,  <7.946891, 13.543758, 25.098829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.113588, 13.660953, 25.225626>,  <8.391418, 13.856277, 25.436954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113588, 13.660953, 25.225626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246158, -0.528733, 0.812310,
		-0.675998, 0.694259, 0.247043,
		-0.694574, -0.488309, -0.528320,
		7.905216, 13.514460, 25.067129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.805876, 14.022994, 25.773579>,  <8.391418, 13.856277, 25.436954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.805876, 14.022994, 25.773579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.723787, 13.676329, 25.591686>,  <7.674534, 13.468329, 25.482552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.723787, 13.676329, 25.591686>,  <7.805876, 14.022994, 25.773579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.723787, 13.676329, 25.591686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218714, -0.412260, 0.884424,
		-0.953965, 0.280959, -0.104946,
		-0.205222, -0.866663, -0.454731,
		7.662221, 13.416329, 25.455267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.159594, 13.859557, 25.986683>,  <7.805876, 14.022994, 25.773579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.159594, 13.859557, 25.986683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.323886, 13.510222, 25.881927>,  <7.422462, 13.300622, 25.819075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.323886, 13.510222, 25.881927>,  <7.159594, 13.859557, 25.986683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.323886, 13.510222, 25.881927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327325, -0.409326, 0.851652,
		-0.850975, -0.264077, -0.453987,
		0.410730, -0.873336, -0.261888,
		7.447105, 13.248221, 25.803362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.690434, 13.346399, 26.302425>,  <7.159594, 13.859557, 25.986683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.690434, 13.346399, 26.302425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.028298, 13.144950, 26.229860>,  <7.231017, 13.024080, 26.186321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.028298, 13.144950, 26.229860>,  <6.690434, 13.346399, 26.302425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.028298, 13.144950, 26.229860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132190, -0.524644, 0.840996,
		-0.518682, -0.686400, -0.509730,
		0.844686, -0.503591, -0.181388,
		7.281697, 12.993863, 26.175436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.499824, 12.618823, 26.341312>,  <6.690434, 13.346399, 26.302425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.499824, 12.618823, 26.341312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.888670, 12.665538, 26.422651>,  <7.121978, 12.693566, 26.471455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.888670, 12.665538, 26.422651>,  <6.499824, 12.618823, 26.341312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.888670, 12.665538, 26.422651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100314, -0.576705, 0.810770,
		0.211958, -0.808562, -0.548910,
		0.972117, 0.116786, 0.203348,
		7.180305, 12.700574, 26.483656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.830236, 12.021114, 26.311464>,  <6.499824, 12.618823, 26.341312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.830236, 12.021114, 26.311464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.046124, 12.243979, 26.563900>,  <7.175658, 12.377698, 26.715361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.046124, 12.243979, 26.563900>,  <6.830236, 12.021114, 26.311464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.046124, 12.243979, 26.563900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235029, -0.620115, 0.748478,
		0.808370, -0.552293, -0.203740,
		0.539721, 0.557162, 0.631087,
		7.208041, 12.411128, 26.753225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.903616, 11.602798, 26.896667>,  <6.830236, 12.021114, 26.311464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.903616, 11.602798, 26.896667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.078850, 11.924232, 27.057827>,  <7.183991, 12.117093, 27.154522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.078850, 11.924232, 27.057827>,  <6.903616, 11.602798, 26.896667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.078850, 11.924232, 27.057827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004725, -0.450249, 0.892890,
		0.898921, -0.389259, -0.201045,
		0.438085, 0.803588, 0.402899,
		7.210276, 12.165309, 27.178698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.359953, 11.321036, 27.209690>,  <6.903616, 11.602798, 26.896667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.359953, 11.321036, 27.209690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.314227, 11.670965, 27.397997>,  <7.286791, 11.880922, 27.510981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.314227, 11.670965, 27.397997>,  <7.359953, 11.321036, 27.209690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.314227, 11.670965, 27.397997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070709, -0.465505, 0.882216,
		0.990925, 0.134138, -0.008644,
		-0.114315, 0.874821, 0.470765,
		7.279932, 11.933412, 27.539227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.886039, 11.407559, 27.656677>,  <7.359953, 11.321036, 27.209690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.886039, 11.407559, 27.656677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.624079, 11.659257, 27.824085>,  <7.466903, 11.810275, 27.924530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.624079, 11.659257, 27.824085>,  <7.886039, 11.407559, 27.656677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.624079, 11.659257, 27.824085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065186, -0.504704, 0.860828,
		0.752898, 0.591038, 0.289513,
		-0.654901, 0.629243, 0.418518,
		7.427608, 11.848030, 27.949640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.244962, 11.660265, 28.257998>,  <7.886039, 11.407559, 27.656677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.244962, 11.660265, 28.257998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.858411, 11.732157, 28.331554>,  <7.626481, 11.775291, 28.375689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.858411, 11.732157, 28.331554>,  <8.244962, 11.660265, 28.257998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.858411, 11.732157, 28.331554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126364, -0.290894, 0.948374,
		0.223943, 0.939722, 0.258402,
		-0.966375, 0.179729, 0.183891,
		7.568499, 11.786076, 28.386723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.249081, 11.939374, 28.944201>,  <8.244962, 11.660265, 28.257998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.249081, 11.939374, 28.944201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.866856, 11.837715, 28.884455>,  <7.637521, 11.776720, 28.848608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.866856, 11.837715, 28.884455>,  <8.249081, 11.939374, 28.944201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.866856, 11.837715, 28.884455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080104, -0.263755, 0.961258,
		-0.283697, 0.930506, 0.231676,
		-0.955562, -0.254148, -0.149364,
		7.580187, 11.761471, 28.839645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.002056, 12.158920, 29.582018>,  <8.249081, 11.939374, 28.944201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.002056, 12.158920, 29.582018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.742959, 11.905232, 29.413164>,  <7.587501, 11.753020, 29.311852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.742959, 11.905232, 29.413164>,  <8.002056, 12.158920, 29.582018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.742959, 11.905232, 29.413164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338625, -0.256676, 0.905235,
		-0.682469, 0.729304, -0.048503,
		-0.647742, -0.634219, -0.422134,
		7.548636, 11.714967, 29.286524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.395307, 12.177495, 29.853716>,  <8.002056, 12.158920, 29.582018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.395307, 12.177495, 29.853716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.352135, 11.817074, 29.685690>,  <7.326231, 11.600821, 29.584875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.352135, 11.817074, 29.685690>,  <7.395307, 12.177495, 29.853716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.352135, 11.817074, 29.685690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171500, -0.399324, 0.900626,
		-0.979254, 0.169246, -0.111432,
		-0.107930, -0.901053, -0.420065,
		7.319756, 11.546758, 29.559669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.726193, 11.867727, 30.084845>,  <7.395307, 12.177495, 29.853716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.726193, 11.867727, 30.084845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.934170, 11.547956, 29.964458>,  <7.058956, 11.356094, 29.892227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.934170, 11.547956, 29.964458>,  <6.726193, 11.867727, 30.084845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.934170, 11.547956, 29.964458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351719, -0.521438, 0.777429,
		-0.778431, -0.298363, -0.552290,
		0.519941, -0.799426, -0.300964,
		7.090153, 11.308128, 29.874170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.266085, 11.358835, 30.169186>,  <6.726193, 11.867727, 30.084845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.266085, 11.358835, 30.169186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.630105, 11.194241, 30.149233>,  <6.848517, 11.095484, 30.137262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.630105, 11.194241, 30.149233>,  <6.266085, 11.358835, 30.169186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.630105, 11.194241, 30.149233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165405, -0.470857, 0.866565,
		-0.380064, -0.780368, -0.496565,
		0.910051, -0.411485, -0.049880,
		6.903120, 11.070795, 30.134268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.188090, 10.573264, 30.097218>,  <6.266085, 11.358835, 30.169186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.188090, 10.573264, 30.097218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.509939, 10.684184, 30.307241>,  <6.703048, 10.750736, 30.433256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.509939, 10.684184, 30.307241>,  <6.188090, 10.573264, 30.097218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.509939, 10.684184, 30.307241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269398, -0.617531, 0.738972,
		0.529158, -0.736044, -0.422175,
		0.804622, 0.277299, 0.525060,
		6.751326, 10.767374, 30.464760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.700085, 9.984603, 30.237230>,  <6.188090, 10.573264, 30.097218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.700085, 9.984603, 30.237230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.702179, 10.273179, 30.514214>,  <6.703435, 10.446324, 30.680403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.702179, 10.273179, 30.514214>,  <6.700085, 9.984603, 30.237230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.702179, 10.273179, 30.514214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305885, -0.658119, 0.687978,
		0.952054, -0.215414, 0.217232,
		0.005235, 0.721440, 0.692457,
		6.703750, 10.489611, 30.721951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.989088, 9.706113, 30.276896>,  <6.700085, 9.984603, 30.237230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.989088, 9.706113, 30.276896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.340563, 9.587609, 30.426638>,  <6.551447, 9.516507, 30.516483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.340563, 9.587609, 30.426638>,  <5.989088, 9.706113, 30.276896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.340563, 9.587609, 30.426638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043536, -0.830611, -0.555148,
		0.475410, 0.471503, -0.742745,
		0.878686, -0.296259, 0.374354,
		6.604169, 9.498732, 30.538944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.268166, 9.478266, 30.935375>,  <5.989088, 9.706113, 30.276896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.268166, 9.478266, 30.935375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.479939, 9.201417, 31.131605>,  <6.607003, 9.035308, 31.249344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.479939, 9.201417, 31.131605>,  <6.268166, 9.478266, 30.935375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.479939, 9.201417, 31.131605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735025, 0.085491, -0.672629,
		0.423602, 0.716699, 0.553989,
		0.529434, -0.692123, 0.490577,
		6.638769, 8.993780, 31.278778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.919855, 9.633960, 31.285124>,  <6.268166, 9.478266, 30.935375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.919855, 9.633960, 31.285124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.932093, 9.263587, 31.134544>,  <6.939435, 9.041363, 31.044197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.932093, 9.263587, 31.134544>,  <6.919855, 9.633960, 31.285124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.932093, 9.263587, 31.134544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644085, 0.306268, -0.700967,
		0.764342, -0.221018, 0.605749,
		0.030595, -0.925932, -0.376448,
		6.941271, 8.985807, 31.021610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.676056, 9.582479, 31.158955>,  <6.919855, 9.633960, 31.285124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.676056, 9.582479, 31.158955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.464720, 9.303381, 30.965456>,  <7.337919, 9.135921, 30.849358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.464720, 9.303381, 30.965456>,  <7.676056, 9.582479, 31.158955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.464720, 9.303381, 30.965456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421846, 0.278724, -0.862762,
		0.736820, -0.659896, 0.147081,
		-0.528339, -0.697746, -0.483744,
		7.306219, 9.094057, 30.820333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.034792, 9.615154, 30.596300>,  <7.676056, 9.582479, 31.158955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.034792, 9.615154, 30.596300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.717241, 9.384297, 30.519707>,  <7.526711, 9.245783, 30.473751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.717241, 9.384297, 30.519707>,  <8.034792, 9.615154, 30.596300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.717241, 9.384297, 30.519707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235952, -0.002152, -0.971762,
		0.560433, -0.816641, 0.137886,
		-0.793877, -0.577142, -0.191482,
		7.479078, 9.211155, 30.462261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.194512, 8.898068, 30.337849>,  <8.034792, 9.615154, 30.596300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.194512, 8.898068, 30.337849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.837675, 9.013996, 30.199184>,  <7.623572, 9.083552, 30.115986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.837675, 9.013996, 30.199184>,  <8.194512, 8.898068, 30.337849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.837675, 9.013996, 30.199184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386700, 0.092831, -0.917522,
		-0.233735, -0.952569, -0.194887,
		-0.892093, 0.289820, -0.346660,
		7.570046, 9.100942, 30.095186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.083611, 8.526806, 29.714327>,  <8.194512, 8.898068, 30.337849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.083611, 8.526806, 29.714327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.881851, 8.872097, 29.722511>,  <7.760795, 9.079272, 29.727423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.881851, 8.872097, 29.722511>,  <8.083611, 8.526806, 29.714327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.881851, 8.872097, 29.722511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357541, 0.230370, -0.905038,
		-0.785969, -0.449184, -0.424838,
		-0.504399, 0.863228, 0.020462,
		7.730531, 9.131065, 29.728649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.576994, 8.692972, 29.135822>,  <8.083611, 8.526806, 29.714327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.576994, 8.692972, 29.135822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.720503, 9.038743, 29.276703>,  <7.806609, 9.246205, 29.361231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.720503, 9.038743, 29.276703>,  <7.576994, 8.692972, 29.135822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.720503, 9.038743, 29.276703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399585, 0.198769, -0.894887,
		-0.843572, 0.461797, -0.274099,
		0.358774, 0.864427, 0.352203,
		7.828135, 9.298071, 29.382364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.432092, 9.274738, 28.646587>,  <7.576994, 8.692972, 29.135822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.432092, 9.274738, 28.646587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.742862, 9.377611, 28.876455>,  <7.929324, 9.439335, 29.014376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.742862, 9.377611, 28.876455>,  <7.432092, 9.274738, 28.646587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.742862, 9.377611, 28.876455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500686, 0.300998, -0.811612,
		-0.381707, 0.918290, 0.105085,
		0.776925, 0.257183, 0.574668,
		7.975940, 9.454766, 29.048857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.603459, 9.897807, 28.358860>,  <7.432092, 9.274738, 28.646587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.603459, 9.897807, 28.358860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.908253, 9.719157, 28.546436>,  <8.091129, 9.611967, 28.658981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.908253, 9.719157, 28.546436>,  <7.603459, 9.897807, 28.358860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.908253, 9.719157, 28.546436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631797, 0.353723, -0.689719,
		0.142171, 0.821831, 0.551708,
		0.761984, -0.446626, 0.468941,
		8.136848, 9.585170, 28.687119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.117990, 10.417994, 28.345478>,  <7.603459, 9.897807, 28.358860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.117990, 10.417994, 28.345478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.276236, 10.052129, 28.378647>,  <8.371183, 9.832609, 28.398548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.276236, 10.052129, 28.378647>,  <8.117990, 10.417994, 28.345478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.276236, 10.052129, 28.378647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744466, 0.266501, -0.612166,
		0.537827, 0.303917, 0.786369,
		0.395616, -0.914664, 0.082924,
		8.394920, 9.777729, 28.403524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.872362, 10.594421, 28.149210>,  <8.117990, 10.417994, 28.345478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.872362, 10.594421, 28.149210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.825584, 10.197717, 28.170126>,  <8.797518, 9.959694, 28.182676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.825584, 10.197717, 28.170126>,  <8.872362, 10.594421, 28.149210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.825584, 10.197717, 28.170126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831061, -0.126551, -0.541593,
		0.543748, -0.019879, 0.839013,
		-0.116944, -0.991761, 0.052291,
		8.790502, 9.900188, 28.185814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.519718, 10.370529, 28.253099>,  <8.872362, 10.594421, 28.149210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.519718, 10.370529, 28.253099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.317814, 10.055490, 28.111732>,  <9.196671, 9.866466, 28.026913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.317814, 10.055490, 28.111732>,  <9.519718, 10.370529, 28.253099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.317814, 10.055490, 28.111732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679111, -0.109541, -0.725816,
		0.532938, -0.606373, 0.590160,
		-0.504762, -0.787599, -0.353416,
		9.166386, 9.819210, 28.005707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.027776, 9.759300, 28.216524>,  <9.519718, 10.370529, 28.253099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.027776, 9.759300, 28.216524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.723589, 9.654168, 27.979000>,  <9.541077, 9.591089, 27.836485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.723589, 9.654168, 27.979000>,  <10.027776, 9.759300, 28.216524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.723589, 9.654168, 27.979000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648374, -0.358127, -0.671830,
		-0.036083, -0.895916, 0.442756,
		-0.760466, -0.262830, -0.593811,
		9.495449, 9.575319, 27.800858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.309925, 9.260723, 27.847248>,  <10.027776, 9.759300, 28.216524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.309925, 9.260723, 27.847248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.987995, 9.317453, 27.616720>,  <9.794837, 9.351492, 27.478405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.987995, 9.317453, 27.616720>,  <10.309925, 9.260723, 27.847248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.987995, 9.317453, 27.616720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528842, -0.269411, -0.804825,
		-0.269411, -0.952525, 0.141826,
		0.804825, -0.141826, 0.576317,
		9.746548, 9.360002, 27.443825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.131767, 8.644588, 27.419327>,  <10.309925, 9.260723, 27.847248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.131767, 8.644588, 27.419327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.005461, 8.973958, 27.230749>,  <9.929676, 9.171580, 27.117603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.005461, 8.973958, 27.230749>,  <10.131767, 8.644588, 27.419327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.005461, 8.973958, 27.230749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490551, -0.283633, -0.823961,
		-0.812189, -0.491447, -0.314371,
		-0.315767, 0.823427, -0.471443,
		9.910730, 9.220986, 27.089315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.929334, 8.367447, 26.680065>,  <10.131767, 8.644588, 27.419327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.929334, 8.367447, 26.680065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943246, 8.765903, 26.647820>,  <9.951593, 9.004975, 26.628471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943246, 8.765903, 26.647820>,  <9.929334, 8.367447, 26.680065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.943246, 8.765903, 26.647820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460041, -0.087566, -0.883569,
		-0.887216, -0.006354, -0.461310,
		0.034781, 0.996138, -0.080613,
		9.953680, 9.064744, 26.623636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.007199, 8.391257, 25.938553>,  <9.929334, 8.367447, 26.680065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.007199, 8.391257, 25.938553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.056716, 8.774069, 26.043449>,  <10.086426, 9.003756, 26.106388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.056716, 8.774069, 26.043449>,  <10.007199, 8.391257, 25.938553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.056716, 8.774069, 26.043449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438170, 0.184396, -0.879776,
		-0.890327, 0.223815, -0.396515,
		0.123792, 0.957029, 0.262242,
		10.093853, 9.061177, 26.122122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.893024, 8.856083, 25.352964>,  <10.007199, 8.391257, 25.938553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.893024, 8.856083, 25.352964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.107651, 9.073906, 25.610819>,  <10.236426, 9.204599, 25.765532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.107651, 9.073906, 25.610819>,  <9.893024, 8.856083, 25.352964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.107651, 9.073906, 25.610819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574313, 0.324044, -0.751771,
		-0.618272, 0.773598, -0.138875,
		0.536567, 0.544557, 0.644635,
		10.268620, 9.237273, 25.804209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.855246, 9.452943, 25.083130>,  <9.893024, 8.856083, 25.352964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.855246, 9.452943, 25.083130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.197553, 9.469501, 25.289410>,  <10.402937, 9.479437, 25.413177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.197553, 9.469501, 25.289410>,  <9.855246, 9.452943, 25.083130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197553, 9.469501, 25.289410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475058, 0.331889, -0.814966,
		-0.204893, 0.942409, 0.264354,
		0.855768, 0.041397, 0.515701,
		10.454283, 9.481921, 25.444120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.036630, 10.181158, 25.010838>,  <9.855246, 9.452943, 25.083130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.036630, 10.181158, 25.010838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.370130, 10.007524, 25.147326>,  <10.570230, 9.903343, 25.229218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.370130, 10.007524, 25.147326>,  <10.036630, 10.181158, 25.010838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.370130, 10.007524, 25.147326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489436, 0.294996, -0.820628,
		0.255565, 0.851203, 0.458410,
		0.833750, -0.434086, 0.341219,
		10.620255, 9.877297, 25.249691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.632622, 10.674600, 25.144039>,  <10.036630, 10.181158, 25.010838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.632622, 10.674600, 25.144039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.752877, 10.306698, 25.043110>,  <10.825030, 10.085957, 24.982552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.752877, 10.306698, 25.043110>,  <10.632622, 10.674600, 25.144039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.752877, 10.306698, 25.043110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403220, 0.362331, -0.840315,
		0.864309, 0.150888, 0.479794,
		0.300638, -0.919755, -0.252325,
		10.843069, 10.030771, 24.967413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.260093, 10.812276, 24.949455>,  <10.632622, 10.674600, 25.144039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.260093, 10.812276, 24.949455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.203230, 10.447859, 24.794643>,  <11.169112, 10.229208, 24.701756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.203230, 10.447859, 24.794643>,  <11.260093, 10.812276, 24.949455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.203230, 10.447859, 24.794643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366592, 0.314740, -0.875528,
		0.919457, -0.266344, 0.289239,
		-0.142157, -0.911043, -0.387029,
		11.160583, 10.174546, 24.678535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.974709, 10.553579, 24.710245>,  <11.260093, 10.812276, 24.949455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.974709, 10.553579, 24.710245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695192, 10.341271, 24.518423>,  <11.527482, 10.213887, 24.403330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695192, 10.341271, 24.518423>,  <11.974709, 10.553579, 24.710245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.695192, 10.341271, 24.518423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376364, 0.297303, -0.877474,
		0.608310, -0.793659, -0.007991,
		-0.698791, -0.530769, -0.479557,
		11.485555, 10.182040, 24.374556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213630, 10.125811, 24.182770>,  <11.974709, 10.553579, 24.710245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213630, 10.125811, 24.182770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837727, 10.156642, 24.049555>,  <11.612185, 10.175140, 23.969625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837727, 10.156642, 24.049555>,  <12.213630, 10.125811, 24.182770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.837727, 10.156642, 24.049555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341839, 0.213068, -0.915286,
		0.000410, -0.973992, -0.226581,
		-0.939758, 0.077079, -0.333036,
		11.555799, 10.179766, 23.949644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.165999, 9.750952, 23.506886>,  <12.213630, 10.125811, 24.182770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.165999, 9.750952, 23.506886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.860694, 10.008814, 23.524076>,  <11.677510, 10.163531, 23.534391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.860694, 10.008814, 23.524076>,  <12.165999, 9.750952, 23.506886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.860694, 10.008814, 23.524076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280792, 0.390894, -0.876560,
		-0.581880, -0.656978, -0.479369,
		-0.763264, 0.644656, 0.042979,
		11.631715, 10.202210, 23.536970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096262, 9.912197, 22.849224>,  <12.165999, 9.750952, 23.506886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.096262, 9.912197, 22.849224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891773, 10.206696, 23.026579>,  <11.769080, 10.383394, 23.132992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891773, 10.206696, 23.026579>,  <12.096262, 9.912197, 22.849224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.891773, 10.206696, 23.026579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181421, 0.596719, -0.781673,
		-0.840083, -0.319168, -0.438626,
		-0.511221, 0.736246, 0.443389,
		11.738407, 10.427569, 23.159595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.463199, 10.113217, 22.451332>,  <12.096262, 9.912197, 22.849224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.463199, 10.113217, 22.451332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.589172, 10.426705, 22.665472>,  <11.664757, 10.614799, 22.793955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.589172, 10.426705, 22.665472>,  <11.463199, 10.113217, 22.451332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.589172, 10.426705, 22.665472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182433, 0.503547, -0.844487,
		-0.931416, 0.363623, 0.015608,
		0.314934, 0.783721, 0.535348,
		11.683653, 10.661821, 22.826077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.149955, 10.677184, 22.107281>,  <11.463199, 10.113217, 22.451332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.149955, 10.677184, 22.107281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.409090, 10.867416, 22.345316>,  <11.564571, 10.981556, 22.488136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.409090, 10.867416, 22.345316>,  <11.149955, 10.677184, 22.107281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.409090, 10.867416, 22.345316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172910, 0.668992, -0.722878,
		-0.741896, 0.571204, 0.351165,
		0.647837, 0.475580, 0.595089,
		11.603441, 11.010091, 22.523842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.819721, 11.315310, 22.252577>,  <11.149955, 10.677184, 22.107281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.819721, 11.315310, 22.252577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.215924, 11.346639, 22.297764>,  <11.453646, 11.365436, 22.324875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.215924, 11.346639, 22.297764>,  <10.819721, 11.315310, 22.252577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.215924, 11.346639, 22.297764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052918, 0.541209, -0.839221,
		-0.126868, 0.837233, 0.531927,
		0.990507, 0.078322, 0.112967,
		11.513077, 11.370135, 22.331654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.923808, 11.991398, 22.181856>,  <10.819721, 11.315310, 22.252577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.923808, 11.991398, 22.181856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.286036, 11.826891, 22.140289>,  <11.503374, 11.728187, 22.115349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.286036, 11.826891, 22.140289>,  <10.923808, 11.991398, 22.181856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.286036, 11.826891, 22.140289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150754, 0.541007, -0.827396,
		0.396501, 0.733601, 0.551921,
		0.905572, -0.411268, -0.103916,
		11.557708, 11.703510, 22.109114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.394098, 12.557629, 21.869522>,  <10.923808, 11.991398, 22.181856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.394098, 12.557629, 21.869522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.619493, 12.229747, 21.828407>,  <11.754731, 12.033018, 21.803738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.619493, 12.229747, 21.828407>,  <11.394098, 12.557629, 21.869522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.619493, 12.229747, 21.828407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320844, 0.331800, -0.887112,
		0.761275, 0.466899, 0.449962,
		0.563489, -0.819704, -0.102789,
		11.788540, 11.983835, 21.797571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.988772, 12.822171, 21.695061>,  <11.394098, 12.557629, 21.869522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.988772, 12.822171, 21.695061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004970, 12.445898, 21.560316>,  <12.014688, 12.220134, 21.479469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004970, 12.445898, 21.560316>,  <11.988772, 12.822171, 21.695061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004970, 12.445898, 21.560316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257867, 0.335557, -0.906039,
		0.965331, -0.050178, 0.256159,
		0.040493, -0.940683, -0.336863,
		12.017118, 12.163693, 21.459257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478547, 12.902364, 21.261366>,  <11.988772, 12.822171, 21.695061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478547, 12.902364, 21.261366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317582, 12.563432, 21.122747>,  <12.221003, 12.360072, 21.039576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.317582, 12.563432, 21.122747>,  <12.478547, 12.902364, 21.261366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317582, 12.563432, 21.122747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164043, 0.305678, -0.937897,
		0.900641, -0.434271, 0.015990,
		-0.402413, -0.847331, -0.346545,
		12.196858, 12.309233, 21.018784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.928178, 12.582015, 20.713747>,  <12.478547, 12.902364, 21.261366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.928178, 12.582015, 20.713747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.553760, 12.451367, 20.661381>,  <12.329108, 12.372979, 20.629961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.553760, 12.451367, 20.661381>,  <12.928178, 12.582015, 20.713747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553760, 12.451367, 20.661381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066771, 0.200421, -0.977432,
		0.345487, -0.923662, -0.165794,
		-0.936045, -0.326619, -0.130917,
		12.272946, 12.353382, 20.622107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.974240, 12.361202, 20.074793>,  <12.928178, 12.582015, 20.713747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.974240, 12.361202, 20.074793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.577086, 12.382763, 20.117268>,  <12.338795, 12.395700, 20.142752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.577086, 12.382763, 20.117268>,  <12.974240, 12.361202, 20.074793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.577086, 12.382763, 20.117268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084403, 0.310513, -0.946815,
		-0.084007, -0.949040, -0.303754,
		-0.992884, 0.053901, 0.106187,
		12.279222, 12.398933, 20.149124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730178, 12.166856, 19.415689>,  <12.974240, 12.361202, 20.074793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.730178, 12.166856, 19.415689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.405521, 12.342778, 19.569473>,  <12.210728, 12.448332, 19.661743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.405521, 12.342778, 19.569473>,  <12.730178, 12.166856, 19.415689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.405521, 12.342778, 19.569473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171969, 0.449085, -0.876783,
		-0.558271, -0.777748, -0.288863,
		-0.811641, 0.439807, 0.384459,
		12.162029, 12.474720, 19.684811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.064172, 12.010702, 19.005123>,  <12.730178, 12.166856, 19.415689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.064172, 12.010702, 19.005123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.014624, 12.359295, 19.194933>,  <11.984895, 12.568451, 19.308819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.014624, 12.359295, 19.194933>,  <12.064172, 12.010702, 19.005123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.014624, 12.359295, 19.194933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196944, 0.447104, -0.872531,
		-0.972558, -0.201537, 0.116250,
		-0.123871, 0.871482, 0.474526,
		11.977462, 12.620740, 19.337292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.489469, 12.352240, 18.563665>,  <12.064172, 12.010702, 19.005123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.489469, 12.352240, 18.563665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.700791, 12.622904, 18.768808>,  <11.827585, 12.785302, 18.891893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.700791, 12.622904, 18.768808>,  <11.489469, 12.352240, 18.563665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.700791, 12.622904, 18.768808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082555, 0.560235, -0.824210,
		-0.845030, 0.477775, 0.240114,
		0.528307, 0.676659, 0.512858,
		11.859283, 12.825902, 18.922667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.187566, 13.042668, 18.386936>,  <11.489469, 12.352240, 18.563665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.187566, 13.042668, 18.386936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.549911, 13.116778, 18.539295>,  <11.767319, 13.161244, 18.630711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.549911, 13.116778, 18.539295>,  <11.187566, 13.042668, 18.386936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.549911, 13.116778, 18.539295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089942, 0.794612, -0.600418,
		-0.413908, 0.578156, 0.703147,
		0.905865, 0.185275, 0.380897,
		11.821671, 13.172361, 18.653564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.148900, 13.718261, 18.574425>,  <11.187566, 13.042668, 18.386936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.148900, 13.718261, 18.574425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.543240, 13.651213, 18.575266>,  <11.779843, 13.610984, 18.575771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.543240, 13.651213, 18.575266>,  <11.148900, 13.718261, 18.574425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.543240, 13.651213, 18.575266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151593, 0.886080, -0.438043,
		0.071561, 0.432163, 0.898951,
		0.985849, -0.167621, 0.002104,
		11.838994, 13.600926, 18.575897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.446465, 14.449113, 18.635822>,  <11.148900, 13.718261, 18.574425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.446465, 14.449113, 18.635822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737906, 14.210063, 18.501966>,  <11.912769, 14.066633, 18.421652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.737906, 14.210063, 18.501966>,  <11.446465, 14.449113, 18.635822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.737906, 14.210063, 18.501966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397568, 0.766844, -0.503875,
		0.557746, 0.234081, 0.796320,
		0.728601, -0.597625, -0.334641,
		11.956486, 14.030775, 18.401573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.041471, 14.846663, 18.521210>,  <11.446465, 14.449113, 18.635822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.041471, 14.846663, 18.521210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.127293, 14.534028, 18.286915>,  <12.178785, 14.346447, 18.146338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.127293, 14.534028, 18.286915>,  <12.041471, 14.846663, 18.521210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.127293, 14.534028, 18.286915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370803, 0.619984, -0.691465,
		0.903588, -0.068836, 0.422835,
		0.214553, -0.781589, -0.585735,
		12.191659, 14.299551, 18.111195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.737576, 14.919250, 18.285791>,  <12.041471, 14.846663, 18.521210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.737576, 14.919250, 18.285791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.549653, 14.683743, 18.022692>,  <12.436899, 14.542439, 17.864832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.549653, 14.683743, 18.022692>,  <12.737576, 14.919250, 18.285791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.549653, 14.683743, 18.022692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310649, 0.587174, -0.747478,
		0.826303, -0.555502, -0.092960,
		-0.469809, -0.588766, -0.657750,
		12.408710, 14.507114, 17.825367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185198, 14.841125, 17.758835>,  <12.737576, 14.919250, 18.285791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185198, 14.841125, 17.758835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846990, 14.763991, 17.559673>,  <12.644065, 14.717711, 17.440176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846990, 14.763991, 17.559673>,  <13.185198, 14.841125, 17.758835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846990, 14.763991, 17.559673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310568, 0.580924, -0.752379,
		0.434328, -0.790786, -0.431296,
		-0.845522, -0.192833, -0.497904,
		12.593333, 14.706141, 17.410301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.294501, 14.572802, 17.056870>,  <13.185198, 14.841125, 17.758835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.294501, 14.572802, 17.056870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.928470, 14.733991, 17.063087>,  <12.708851, 14.830705, 17.066818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.928470, 14.733991, 17.063087>,  <13.294501, 14.572802, 17.056870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.928470, 14.733991, 17.063087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290579, 0.685602, -0.667468,
		-0.279631, -0.606269, -0.744476,
		-0.915080, 0.402974, 0.015547,
		12.653946, 14.854883, 17.067751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955118, 14.727627, 16.858204>,  <13.294501, 14.572802, 17.056870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.955118, 14.727627, 16.858204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765172, 14.397907, 16.734894>,  <13.651204, 14.200075, 16.660908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765172, 14.397907, 16.734894>,  <13.955118, 14.727627, 16.858204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765172, 14.397907, 16.734894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469564, 0.533578, -0.703423,
		0.744320, -0.189277, -0.640439,
		-0.474866, -0.824299, -0.308275,
		13.622712, 14.150618, 16.642412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966269, 14.583991, 17.671562>,  <13.955118, 14.727627, 16.858204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966269, 14.583991, 17.671562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.340889, 14.679639, 17.569038>,  <14.565661, 14.737028, 17.507524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.340889, 14.679639, 17.569038>,  <13.966269, 14.583991, 17.671562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.340889, 14.679639, 17.569038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325906, -0.863225, 0.385524,
		-0.129064, -0.444595, -0.886385,
		0.936551, 0.239121, -0.256307,
		14.621855, 14.751375, 17.492146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.384509, 14.017467, 17.233603>,  <13.966269, 14.583991, 17.671562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.384509, 14.017467, 17.233603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588362, 14.256684, 17.481028>,  <14.710673, 14.400215, 17.629482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588362, 14.256684, 17.481028>,  <14.384509, 14.017467, 17.233603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588362, 14.256684, 17.481028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403052, -0.801108, 0.442465,
		0.760148, 0.023819, -0.649313,
		0.509631, 0.598046, 0.618561,
		14.741251, 14.436098, 17.666595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978401, 13.691401, 17.317394>,  <14.384509, 14.017467, 17.233603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978401, 13.691401, 17.317394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.992903, 13.962401, 17.611246>,  <15.001604, 14.125002, 17.787558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.992903, 13.962401, 17.611246>,  <14.978401, 13.691401, 17.317394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.992903, 13.962401, 17.611246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378741, -0.689587, 0.617272,
		0.924792, 0.255855, -0.281598,
		0.036254, 0.677501, 0.734628,
		15.003778, 14.165651, 17.831635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.665774, 13.652539, 17.593830>,  <14.978401, 13.691401, 17.317394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.665774, 13.652539, 17.593830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403249, 13.802444, 17.855764>,  <15.245733, 13.892386, 18.012924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.403249, 13.802444, 17.855764>,  <15.665774, 13.652539, 17.593830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.403249, 13.802444, 17.855764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394754, -0.569080, 0.721330,
		0.642979, 0.731917, 0.225557,
		-0.656313, 0.374761, 0.654834,
		15.206355, 13.914872, 18.052214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.069393, 13.566121, 18.056824>,  <15.665774, 13.652539, 17.593830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.069393, 13.566121, 18.056824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.725374, 13.627094, 18.251589>,  <15.518963, 13.663678, 18.368448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.725374, 13.627094, 18.251589>,  <16.069393, 13.566121, 18.056824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725374, 13.627094, 18.251589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376518, -0.454413, 0.807306,
		0.344320, 0.877652, 0.333422,
		-0.860046, 0.152432, 0.486915,
		15.467360, 13.672824, 18.397663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217878, 13.735127, 18.805145>,  <16.069393, 13.566121, 18.056824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217878, 13.735127, 18.805145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.835787, 13.617698, 18.819876>,  <15.606532, 13.547239, 18.828714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.835787, 13.617698, 18.819876>,  <16.217878, 13.735127, 18.805145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835787, 13.617698, 18.819876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151777, -0.379355, 0.912717,
		-0.253980, 0.877441, 0.406928,
		-0.955226, -0.293575, 0.036827,
		15.549219, 13.529625, 18.830923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.048082, 13.789824, 19.559795>,  <16.217878, 13.735127, 18.805145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.048082, 13.789824, 19.559795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765547, 13.553033, 19.404541>,  <15.596026, 13.410958, 19.311388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765547, 13.553033, 19.404541>,  <16.048082, 13.789824, 19.559795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765547, 13.553033, 19.404541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053832, -0.501803, 0.863305,
		-0.705826, 0.630678, 0.322574,
		-0.706337, -0.591979, -0.388136,
		15.553646, 13.375440, 19.288099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420788, 13.847927, 19.972252>,  <16.048082, 13.789824, 19.559795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420788, 13.847927, 19.972252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388157, 13.493882, 19.788982>,  <15.368578, 13.281455, 19.679020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388157, 13.493882, 19.788982>,  <15.420788, 13.847927, 19.972252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.388157, 13.493882, 19.788982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073965, -0.463815, 0.882839,
		-0.993919, 0.038132, 0.103304,
		-0.081578, -0.885111, -0.458174,
		15.363684, 13.228349, 19.651529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.036524, 13.371171, 20.468580>,  <15.420788, 13.847927, 19.972252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.036524, 13.371171, 20.468580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180219, 13.101668, 20.210278>,  <15.266436, 12.939967, 20.055296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180219, 13.101668, 20.210278>,  <15.036524, 13.371171, 20.468580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180219, 13.101668, 20.210278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085745, -0.712848, 0.696057,
		-0.929299, -0.194678, -0.313852,
		0.359236, -0.673757, -0.645757,
		15.287990, 12.899541, 20.016550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.552522, 12.798450, 20.339403>,  <15.036524, 13.371171, 20.468580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.552522, 12.798450, 20.339403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.918328, 12.649693, 20.275711>,  <15.137813, 12.560439, 20.237495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.918328, 12.649693, 20.275711>,  <14.552522, 12.798450, 20.339403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918328, 12.649693, 20.275711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077817, -0.547968, 0.832872,
		-0.396992, -0.749285, -0.530066,
		0.914517, -0.371891, -0.159232,
		15.192683, 12.538126, 20.227942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524460, 12.186277, 20.489862>,  <14.552522, 12.798450, 20.339403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524460, 12.186277, 20.489862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915552, 12.253834, 20.539692>,  <15.150208, 12.294368, 20.569590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.915552, 12.253834, 20.539692>,  <14.524460, 12.186277, 20.489862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915552, 12.253834, 20.539692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014692, -0.647225, 0.762158,
		0.209349, -0.743355, -0.635293,
		0.977730, 0.168891, 0.124574,
		15.208871, 12.304501, 20.577065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.018004, 11.535482, 20.365515>,  <14.524460, 12.186277, 20.489862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.018004, 11.535482, 20.365515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.226236, 11.763671, 20.619619>,  <15.351175, 11.900584, 20.772083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.226236, 11.763671, 20.619619>,  <15.018004, 11.535482, 20.365515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.226236, 11.763671, 20.619619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052486, -0.721242, 0.690692,
		0.852198, -0.392904, -0.345523,
		0.520581, 0.570471, 0.635263,
		15.382411, 11.934813, 20.810198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247074, 11.139012, 20.872416>,  <15.018004, 11.535482, 20.365515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.247074, 11.139012, 20.872416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.386342, 11.471211, 21.046335>,  <15.469903, 11.670531, 21.150686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.386342, 11.471211, 21.046335>,  <15.247074, 11.139012, 20.872416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386342, 11.471211, 21.046335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135802, -0.503610, 0.853191,
		0.927543, -0.238009, -0.288126,
		0.348170, 0.830499, 0.434798,
		15.490793, 11.720361, 21.176775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780213, 10.856925, 21.298569>,  <15.247074, 11.139012, 20.872416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780213, 10.856925, 21.298569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.647420, 11.202208, 21.450706>,  <15.567744, 11.409377, 21.541988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.647420, 11.202208, 21.450706>,  <15.780213, 10.856925, 21.298569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.647420, 11.202208, 21.450706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130441, -0.441347, 0.887805,
		0.934223, 0.245125, 0.259117,
		-0.331984, 0.863207, 0.380342,
		15.547825, 11.461170, 21.564810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234976, 11.054068, 21.834318>,  <15.780213, 10.856925, 21.298569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234976, 11.054068, 21.834318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870376, 11.212216, 21.879662>,  <15.651616, 11.307106, 21.906868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.870376, 11.212216, 21.879662>,  <16.234976, 11.054068, 21.834318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870376, 11.212216, 21.879662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070344, -0.421397, 0.904144,
		0.405242, 0.816153, 0.411915,
		-0.911499, 0.395373, 0.113356,
		15.596926, 11.330829, 21.913668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148046, 10.961040, 22.520750>,  <16.234976, 11.054068, 21.834318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148046, 10.961040, 22.520750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787853, 11.119309, 22.448557>,  <15.571737, 11.214271, 22.405241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.787853, 11.119309, 22.448557>,  <16.148046, 10.961040, 22.520750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.787853, 11.119309, 22.448557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332608, -0.359217, 0.871972,
		0.280183, 0.845226, 0.455073,
		-0.900483, 0.395673, -0.180482,
		15.517709, 11.238011, 22.394413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923059, 11.273831, 23.182175>,  <16.148046, 10.961040, 22.520750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923059, 11.273831, 23.182175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.603218, 11.222896, 22.947424>,  <15.411314, 11.192334, 22.806574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.603218, 11.222896, 22.947424>,  <15.923059, 11.273831, 23.182175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.603218, 11.222896, 22.947424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498369, -0.404547, 0.766792,
		-0.335063, 0.905608, 0.260014,
		-0.799601, -0.127340, -0.586875,
		15.363338, 11.184693, 22.771360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211955, 11.577624, 23.551249>,  <15.923059, 11.273831, 23.182175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211955, 11.577624, 23.551249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112847, 11.305391, 23.275446>,  <15.053383, 11.142052, 23.109964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112847, 11.305391, 23.275446>,  <15.211955, 11.577624, 23.551249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112847, 11.305391, 23.275446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626300, -0.430471, 0.649956,
		-0.739160, 0.592878, -0.319591,
		-0.247770, -0.680581, -0.689506,
		15.038516, 11.101217, 23.068594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.510407, 11.626606, 23.629862>,  <15.211955, 11.577624, 23.551249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.510407, 11.626606, 23.629862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.556117, 11.270933, 23.452641>,  <14.583543, 11.057529, 23.346308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.556117, 11.270933, 23.452641>,  <14.510407, 11.626606, 23.629862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.556117, 11.270933, 23.452641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521185, -0.433334, 0.735247,
		-0.845759, 0.146893, -0.512947,
		0.114275, -0.889182, -0.443054,
		14.590400, 11.004179, 23.319725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.878135, 11.423848, 23.624416>,  <14.510407, 11.626606, 23.629862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.878135, 11.423848, 23.624416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132421, 11.115431, 23.609673>,  <14.284992, 10.930380, 23.600826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132421, 11.115431, 23.609673>,  <13.878135, 11.423848, 23.624416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132421, 11.115431, 23.609673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420415, -0.385881, 0.821186,
		-0.647394, -0.506544, -0.569468,
		0.635714, -0.771044, -0.036858,
		14.323135, 10.884118, 23.598616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.434402, 10.848687, 23.660162>,  <13.878135, 11.423848, 23.624416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.434402, 10.848687, 23.660162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.788433, 10.706432, 23.780270>,  <14.000852, 10.621079, 23.852333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.788433, 10.706432, 23.780270>,  <13.434402, 10.848687, 23.660162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.788433, 10.706432, 23.780270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447989, -0.475893, 0.756857,
		-0.126271, -0.804393, -0.580524,
		0.885077, -0.355637, 0.300267,
		14.053956, 10.599741, 23.870350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.217050, 10.189436, 23.879208>,  <13.434402, 10.848687, 23.660162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.217050, 10.189436, 23.879208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576283, 10.283589, 24.027822>,  <13.791822, 10.340081, 24.116991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576283, 10.283589, 24.027822>,  <13.217050, 10.189436, 23.879208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.576283, 10.283589, 24.027822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249980, -0.421862, 0.871518,
		0.361879, -0.875573, -0.320026,
		0.898084, 0.235384, 0.371539,
		13.845708, 10.354204, 24.139284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.418036, 9.576725, 24.234972>,  <13.217050, 10.189436, 23.879208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.418036, 9.576725, 24.234972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.594759, 9.901655, 24.387253>,  <13.700792, 10.096614, 24.478621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.594759, 9.901655, 24.387253>,  <13.418036, 9.576725, 24.234972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.594759, 9.901655, 24.387253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320582, -0.253384, 0.912701,
		0.837875, -0.525283, 0.148471,
		0.441806, 0.812327, 0.380700,
		13.727301, 10.145353, 24.501463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.749947, 9.319728, 24.820572>,  <13.418036, 9.576725, 24.234972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.749947, 9.319728, 24.820572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706919, 9.713276, 24.877741>,  <13.681102, 9.949405, 24.912043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706919, 9.713276, 24.877741>,  <13.749947, 9.319728, 24.820572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706919, 9.713276, 24.877741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150989, -0.158255, 0.975786,
		0.982665, 0.083384, 0.165577,
		-0.107569, 0.983871, 0.142921,
		13.674648, 10.008437, 24.920618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862324, 9.357273, 25.539679>,  <13.749947, 9.319728, 24.820572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862324, 9.357273, 25.539679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.697066, 9.716273, 25.477962>,  <13.597912, 9.931673, 25.440933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.697066, 9.716273, 25.477962>,  <13.862324, 9.357273, 25.539679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.697066, 9.716273, 25.477962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399801, -0.026533, 0.916218,
		0.818212, 0.440215, 0.369784,
		-0.413145, 0.897500, -0.154289,
		13.573123, 9.985523, 25.431675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.023866, 9.873674, 26.116518>,  <13.862324, 9.357273, 25.539679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.023866, 9.873674, 26.116518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.675393, 9.967933, 25.944233>,  <13.466310, 10.024487, 25.840862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.675393, 9.967933, 25.944233>,  <14.023866, 9.873674, 26.116518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.675393, 9.967933, 25.944233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392307, 0.193352, 0.899283,
		0.295191, 0.952411, -0.076000,
		-0.871182, 0.235645, -0.430713,
		13.414039, 10.038627, 25.815020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.747054, 10.516588, 26.375183>,  <14.023866, 9.873674, 26.116518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.747054, 10.516588, 26.375183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462356, 10.254385, 26.274206>,  <13.291536, 10.097063, 26.213621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.462356, 10.254385, 26.274206>,  <13.747054, 10.516588, 26.375183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.462356, 10.254385, 26.274206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365806, 0.039090, 0.929870,
		-0.599670, 0.754175, -0.267611,
		-0.711746, -0.655508, -0.252441,
		13.248832, 10.057733, 26.198473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151087, 10.834169, 26.609869>,  <13.747054, 10.516588, 26.375183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151087, 10.834169, 26.609869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.045753, 10.450996, 26.564224>,  <12.982553, 10.221093, 26.536837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.045753, 10.450996, 26.564224>,  <13.151087, 10.834169, 26.609869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.045753, 10.450996, 26.564224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394583, -0.000989, 0.918859,
		-0.880318, 0.286994, -0.377724,
		-0.263333, -0.957932, -0.114114,
		12.966754, 10.163617, 26.529989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.573651, 10.810596, 26.879461>,  <13.151087, 10.834169, 26.609869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.573651, 10.810596, 26.879461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662709, 10.421830, 26.909946>,  <12.716145, 10.188570, 26.928238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.662709, 10.421830, 26.909946>,  <12.573651, 10.810596, 26.879461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.662709, 10.421830, 26.909946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342537, -0.004796, 0.939492,
		-0.912741, -0.235281, -0.333985,
		0.222646, -0.971916, 0.076215,
		12.729503, 10.130256, 26.932812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.093771, 10.712261, 27.200392>,  <12.573651, 10.810596, 26.879461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.093771, 10.712261, 27.200392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359257, 10.417275, 27.250397>,  <12.518548, 10.240284, 27.280399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359257, 10.417275, 27.250397>,  <12.093771, 10.712261, 27.200392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359257, 10.417275, 27.250397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197711, -0.011782, 0.980190,
		-0.721382, -0.675283, -0.153625,
		0.663715, -0.737465, 0.125012,
		12.558372, 10.196036, 27.287901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.763973, 10.269249, 27.538940>,  <12.093771, 10.712261, 27.200392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.763973, 10.269249, 27.538940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.148232, 10.205198, 27.629730>,  <12.378787, 10.166768, 27.684204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.148232, 10.205198, 27.629730>,  <11.763973, 10.269249, 27.538940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.148232, 10.205198, 27.629730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197898, 0.178870, 0.963764,
		-0.194924, -0.970755, 0.140142,
		0.960647, -0.160127, 0.226976,
		12.436425, 10.157161, 27.697823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.766517, 9.776274, 28.109285>,  <11.763973, 10.269249, 27.538940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.766517, 9.776274, 28.109285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112196, 9.976540, 28.129282>,  <12.319603, 10.096699, 28.141279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.112196, 9.976540, 28.129282>,  <11.766517, 9.776274, 28.109285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.112196, 9.976540, 28.129282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140945, 0.145510, 0.979266,
		0.483009, -0.853324, 0.196316,
		0.864197, 0.500664, 0.049990,
		12.371455, 10.126739, 28.144279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959704, 9.450748, 28.678579>,  <11.766517, 9.776274, 28.109285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959704, 9.450748, 28.678579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.190253, 9.775180, 28.638687>,  <12.328583, 9.969839, 28.614752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.190253, 9.775180, 28.638687>,  <11.959704, 9.450748, 28.678579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.190253, 9.775180, 28.638687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151967, 0.226296, 0.962131,
		0.802934, -0.539389, 0.253688,
		0.576371, 0.811079, -0.099731,
		12.363165, 10.018503, 28.608768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.489496, 9.432429, 29.186113>,  <11.959704, 9.450748, 28.678579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.489496, 9.432429, 29.186113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.474803, 9.821674, 29.095161>,  <12.465987, 10.055222, 29.040590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.474803, 9.821674, 29.095161>,  <12.489496, 9.432429, 29.186113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.474803, 9.821674, 29.095161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080289, 0.223926, 0.971293,
		0.996095, 0.053935, 0.069905,
		-0.036733, 0.973113, -0.227382,
		12.463783, 10.113608, 29.026947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.813274, 9.699551, 29.748056>,  <12.489496, 9.432429, 29.186113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.813274, 9.699551, 29.748056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610791, 10.004745, 29.587257>,  <12.489302, 10.187862, 29.490778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.610791, 10.004745, 29.587257>,  <12.813274, 9.699551, 29.748056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.610791, 10.004745, 29.587257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222380, 0.334889, 0.915640,
		0.833248, 0.552900, 0.000151,
		-0.506207, 0.762988, -0.402000,
		12.458929, 10.233642, 29.466658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.803717, 10.152009, 30.322140>,  <12.813274, 9.699551, 29.748056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.803717, 10.152009, 30.322140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.508110, 10.303454, 30.099247>,  <12.330747, 10.394321, 29.965511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.508110, 10.303454, 30.099247>,  <12.803717, 10.152009, 30.322140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.508110, 10.303454, 30.099247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405719, 0.410191, 0.816783,
		0.537817, 0.829695, -0.149527,
		-0.739016, 0.378614, -0.557231,
		12.286406, 10.417039, 29.932077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.735787, 10.860773, 30.465973>,  <12.803717, 10.152009, 30.322140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.735787, 10.860773, 30.465973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.383801, 10.747889, 30.313126>,  <12.172608, 10.680158, 30.221416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.383801, 10.747889, 30.313126>,  <12.735787, 10.860773, 30.465973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.383801, 10.747889, 30.313126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460429, 0.308763, 0.832268,
		-0.116890, 0.908308, -0.401639,
		-0.879967, -0.282210, -0.382120,
		12.119810, 10.663225, 30.198490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104246, 11.190158, 30.701118>,  <12.735787, 10.860773, 30.465973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104246, 11.190158, 30.701118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955379, 11.553250, 30.778595>,  <11.866059, 11.771106, 30.825081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955379, 11.553250, 30.778595>,  <12.104246, 11.190158, 30.701118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.955379, 11.553250, 30.778595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512119, 0.374866, -0.772793,
		-0.774098, -0.188414, -0.604379,
		-0.372166, 0.907731, 0.193693,
		11.843730, 11.825570, 30.836702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.758759, 11.619160, 30.138781>,  <12.104246, 11.190158, 30.701118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.758759, 11.619160, 30.138781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.894763, 11.904126, 30.384335>,  <11.976365, 12.075106, 30.531668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.894763, 11.904126, 30.384335>,  <11.758759, 11.619160, 30.138781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.894763, 11.904126, 30.384335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434040, 0.460212, -0.774477,
		-0.834268, 0.529781, -0.152740,
		0.340010, 0.712416, 0.613886,
		11.996766, 12.117851, 30.568501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.487243, 12.279101, 29.958572>,  <11.758759, 11.619160, 30.138781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.487243, 12.279101, 29.958572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.819217, 12.352182, 30.169409>,  <12.018401, 12.396030, 30.295912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.819217, 12.352182, 30.169409>,  <11.487243, 12.279101, 29.958572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.819217, 12.352182, 30.169409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323087, 0.612837, -0.721141,
		-0.454776, 0.768798, 0.449587,
		0.829936, 0.182702, 0.527092,
		12.068197, 12.406993, 30.327536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548307, 12.987362, 29.894659>,  <11.487243, 12.279101, 29.958572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548307, 12.987362, 29.894659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905957, 12.844767, 30.003071>,  <12.120547, 12.759210, 30.068117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905957, 12.844767, 30.003071>,  <11.548307, 12.987362, 29.894659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905957, 12.844767, 30.003071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434378, 0.543253, -0.718465,
		0.108887, 0.760126, 0.640587,
		0.894125, -0.356488, 0.271029,
		12.174194, 12.737820, 30.084379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.912469, 13.564979, 29.931875>,  <11.548307, 12.987362, 29.894659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.912469, 13.564979, 29.931875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.175500, 13.263656, 29.927471>,  <12.333319, 13.082862, 29.924829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.175500, 13.263656, 29.927471>,  <11.912469, 13.564979, 29.931875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.175500, 13.263656, 29.927471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501546, 0.448622, -0.739723,
		0.562177, 0.480904, 0.672822,
		0.657578, -0.753306, -0.011009,
		12.372773, 13.037663, 29.924168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.603067, 13.841404, 29.886299>,  <11.912469, 13.564979, 29.931875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.603067, 13.841404, 29.886299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.694028, 13.460317, 29.805683>,  <12.748604, 13.231665, 29.757313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.694028, 13.460317, 29.805683>,  <12.603067, 13.841404, 29.886299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.694028, 13.460317, 29.805683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590191, 0.299456, -0.749667,
		0.774573, 0.051528, 0.630382,
		0.227400, -0.952718, -0.201540,
		12.762248, 13.174501, 29.745222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305549, 13.783464, 29.702452>,  <12.603067, 13.841404, 29.886299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305549, 13.783464, 29.702452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.155354, 13.446096, 29.548748>,  <13.065238, 13.243675, 29.456526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.155354, 13.446096, 29.548748>,  <13.305549, 13.783464, 29.702452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.155354, 13.446096, 29.548748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623783, 0.076671, -0.777828,
		0.685497, -0.531756, 0.497322,
		-0.375484, -0.843420, -0.384258,
		13.042709, 13.193070, 29.433470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823653, 13.600207, 29.285402>,  <13.305549, 13.783464, 29.702452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823653, 13.600207, 29.285402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.543492, 13.341913, 29.163771>,  <13.375396, 13.186937, 29.090792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.543492, 13.341913, 29.163771>,  <13.823653, 13.600207, 29.285402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.543492, 13.341913, 29.163771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420143, -0.028599, -0.907007,
		0.576990, -0.763026, 0.291332,
		-0.700402, -0.645735, -0.304079,
		13.333372, 13.148193, 29.072546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.157344, 12.892982, 29.111753>,  <13.823653, 13.600207, 29.285402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.157344, 12.892982, 29.111753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806535, 12.948305, 28.927710>,  <13.596049, 12.981499, 28.817284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806535, 12.948305, 28.927710>,  <14.157344, 12.892982, 29.111753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806535, 12.948305, 28.927710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432180, -0.191252, -0.881274,
		-0.209905, -0.971745, 0.107947,
		-0.877018, 0.138331, -0.460113,
		13.543428, 12.989798, 28.789677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.102861, 12.301170, 28.750925>,  <14.157344, 12.892982, 29.111753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.102861, 12.301170, 28.750925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.877863, 12.563606, 28.549671>,  <13.742864, 12.721067, 28.428919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.877863, 12.563606, 28.549671>,  <14.102861, 12.301170, 28.750925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.877863, 12.563606, 28.549671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491203, -0.224319, -0.841665,
		-0.665070, -0.720575, -0.196095,
		-0.562495, 0.656089, -0.503137,
		13.709114, 12.760433, 28.398729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092786, 12.038074, 28.074615>,  <14.102861, 12.301170, 28.750925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092786, 12.038074, 28.074615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981448, 12.419868, 28.031763>,  <13.914645, 12.648946, 28.006052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.981448, 12.419868, 28.031763>,  <14.092786, 12.038074, 28.074615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.981448, 12.419868, 28.031763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529443, 0.059410, -0.846263,
		-0.801383, -0.292273, -0.521883,
		-0.278345, 0.954488, -0.107131,
		13.897944, 12.706215, 27.999624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943792, 11.949178, 27.390520>,  <14.092786, 12.038074, 28.074615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943792, 11.949178, 27.390520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.978816, 12.339294, 27.471653>,  <13.999830, 12.573364, 27.520332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.978816, 12.339294, 27.471653>,  <13.943792, 11.949178, 27.390520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.978816, 12.339294, 27.471653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389183, 0.153941, -0.908206,
		-0.916990, 0.158461, -0.366088,
		0.087559, 0.975291, 0.202832,
		14.005084, 12.631882, 27.532503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.656129, 12.322827, 26.772095>,  <13.943792, 11.949178, 27.390520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.656129, 12.322827, 26.772095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.892779, 12.570393, 26.978754>,  <14.034770, 12.718932, 27.102749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.892779, 12.570393, 26.978754>,  <13.656129, 12.322827, 26.772095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892779, 12.570393, 26.978754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300392, 0.425462, -0.853667,
		-0.748160, 0.660248, 0.065798,
		0.591627, 0.618914, 0.516646,
		14.070268, 12.756067, 27.133747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457387, 12.965712, 26.558029>,  <13.656129, 12.322827, 26.772095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457387, 12.965712, 26.558029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.826839, 13.020265, 26.701307>,  <14.048512, 13.052997, 26.787273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.826839, 13.020265, 26.701307>,  <13.457387, 12.965712, 26.558029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826839, 13.020265, 26.701307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255198, 0.478447, -0.840216,
		-0.285968, 0.867461, 0.407105,
		0.923632, 0.136383, 0.358195,
		14.103930, 13.061179, 26.808765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.685796, 13.724030, 26.319893>,  <13.457387, 12.965712, 26.558029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.685796, 13.724030, 26.319893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007120, 13.509737, 26.423958>,  <14.199915, 13.381162, 26.486397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007120, 13.509737, 26.423958>,  <13.685796, 13.724030, 26.319893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007120, 13.509737, 26.423958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482854, 0.330144, -0.811084,
		0.348633, 0.777172, 0.523888,
		0.803310, -0.535732, 0.260162,
		14.248113, 13.349017, 26.502007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.195305, 14.096637, 26.104040>,  <13.685796, 13.724030, 26.319893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.195305, 14.096637, 26.104040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390190, 13.748272, 26.129766>,  <14.507121, 13.539253, 26.145203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390190, 13.748272, 26.129766>,  <14.195305, 14.096637, 26.104040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390190, 13.748272, 26.129766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451330, 0.188066, -0.872314,
		0.747613, 0.454031, 0.484697,
		0.487213, -0.870912, 0.064317,
		14.536354, 13.486999, 26.149061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.613912, 14.189224, 25.595282>,  <14.195305, 14.096637, 26.104040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.613912, 14.189224, 25.595282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708212, 13.813376, 25.694506>,  <14.764792, 13.587868, 25.754040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708212, 13.813376, 25.694506>,  <14.613912, 14.189224, 25.595282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708212, 13.813376, 25.694506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556923, -0.078555, -0.826841,
		0.796403, 0.333080, 0.504777,
		0.235751, -0.939621, 0.248061,
		14.778937, 13.531490, 25.768925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402421, 14.023154, 25.624998>,  <14.613912, 14.189224, 25.595282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402421, 14.023154, 25.624998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.172753, 13.706311, 25.542152>,  <15.034953, 13.516206, 25.492445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.172753, 13.706311, 25.542152>,  <15.402421, 14.023154, 25.624998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.172753, 13.706311, 25.542152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438388, -0.083788, -0.894872,
		0.691481, -0.604603, 0.395359,
		-0.574169, -0.792108, -0.207112,
		15.000503, 13.468678, 25.480019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825105, 13.309856, 25.439137>,  <15.402421, 14.023154, 25.624998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825105, 13.309856, 25.439137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.462950, 13.315520, 25.269396>,  <15.245657, 13.318918, 25.167551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.462950, 13.315520, 25.269396>,  <15.825105, 13.309856, 25.439137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.462950, 13.315520, 25.269396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423157, -0.051871, -0.904570,
		-0.034821, -0.998553, 0.040971,
		-0.905387, 0.014161, -0.424351,
		15.191334, 13.319768, 25.142090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.908082, 12.946425, 24.831150>,  <15.825105, 13.309856, 25.439137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.908082, 12.946425, 24.831150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551437, 13.108201, 24.749704>,  <15.337451, 13.205266, 24.700836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551437, 13.108201, 24.749704>,  <15.908082, 12.946425, 24.831150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551437, 13.108201, 24.749704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233942, 0.026443, -0.971891,
		-0.387686, -0.914183, -0.118193,
		-0.891611, 0.404439, -0.203614,
		15.283954, 13.229532, 24.688620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597465, 12.668998, 24.238407>,  <15.908082, 12.946425, 24.831150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597465, 12.668998, 24.238407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410564, 13.022546, 24.246923>,  <15.298425, 13.234674, 24.252033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410564, 13.022546, 24.246923>,  <15.597465, 12.668998, 24.238407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410564, 13.022546, 24.246923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378380, 0.221675, -0.898715,
		-0.799066, -0.411868, -0.438016,
		-0.467249, 0.883869, 0.021290,
		15.270390, 13.287706, 24.253311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.151850, 12.779279, 23.584021>,  <15.597465, 12.668998, 24.238407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.151850, 12.779279, 23.584021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.213663, 13.145576, 23.732363>,  <15.250751, 13.365354, 23.821369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.213663, 13.145576, 23.732363>,  <15.151850, 12.779279, 23.584021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.213663, 13.145576, 23.732363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060724, 0.365853, -0.928690,
		-0.986120, 0.166033, 0.000929,
		0.154533, 0.915743, 0.370857,
		15.260023, 13.420299, 23.843620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.911749, 13.130944, 23.130953>,  <15.151850, 12.779279, 23.584021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.911749, 13.130944, 23.130953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118930, 13.410289, 23.328545>,  <15.243238, 13.577895, 23.447100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118930, 13.410289, 23.328545>,  <14.911749, 13.130944, 23.130953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118930, 13.410289, 23.328545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230904, 0.441899, -0.866838,
		-0.823656, 0.563042, 0.067628,
		0.517951, 0.698361, 0.493981,
		15.274315, 13.619798, 23.476740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715611, 13.817451, 22.828329>,  <14.911749, 13.130944, 23.130953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.715611, 13.817451, 22.828329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.070673, 13.850572, 23.009531>,  <15.283710, 13.870443, 23.118252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.070673, 13.850572, 23.009531>,  <14.715611, 13.817451, 22.828329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.070673, 13.850572, 23.009531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393716, 0.373801, -0.839798,
		-0.238870, 0.923806, 0.299206,
		0.887654, 0.082800, 0.453007,
		15.336969, 13.875412, 23.145433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954465, 14.389250, 22.490902>,  <14.715611, 13.817451, 22.828329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.954465, 14.389250, 22.490902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285610, 14.254476, 22.670286>,  <15.484298, 14.173612, 22.777918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285610, 14.254476, 22.670286>,  <14.954465, 14.389250, 22.490902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285610, 14.254476, 22.670286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555427, 0.380679, -0.739313,
		0.078380, 0.861138, 0.502293,
		0.827863, -0.336935, 0.448462,
		15.533969, 14.153396, 22.804825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448787, 14.952101, 22.490698>,  <14.954465, 14.389250, 22.490902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448787, 14.952101, 22.490698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678892, 14.626536, 22.523249>,  <15.816956, 14.431198, 22.542780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678892, 14.626536, 22.523249>,  <15.448787, 14.952101, 22.490698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678892, 14.626536, 22.523249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511128, 0.280011, -0.812614,
		0.638608, 0.509062, 0.577093,
		0.575263, -0.813910, 0.081379,
		15.851471, 14.382363, 22.547663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059889, 15.162330, 22.500540>,  <15.448787, 14.952101, 22.490698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059889, 15.162330, 22.500540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.129013, 14.780705, 22.402639>,  <16.170488, 14.551731, 22.343899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.129013, 14.780705, 22.402639>,  <16.059889, 15.162330, 22.500540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.129013, 14.780705, 22.402639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642257, 0.297545, -0.706380,
		0.746754, -0.035123, 0.664172,
		0.172811, -0.954062, -0.244751,
		16.180857, 14.494487, 22.329214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.686028, 15.144781, 22.420628>,  <16.059889, 15.162330, 22.500540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.686028, 15.144781, 22.420628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575985, 14.817886, 22.218067>,  <16.509960, 14.621750, 22.096531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575985, 14.817886, 22.218067>,  <16.686028, 15.144781, 22.420628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575985, 14.817886, 22.218067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706814, 0.185131, -0.682744,
		0.651714, -0.545758, 0.526704,
		-0.275104, -0.817236, -0.506402,
		16.493454, 14.572716, 22.066147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262562, 14.907207, 22.264696>,  <16.686028, 15.144781, 22.420628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262562, 14.907207, 22.264696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019516, 14.734061, 21.998333>,  <16.873688, 14.630174, 21.838516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.019516, 14.734061, 21.998333>,  <17.262562, 14.907207, 22.264696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.019516, 14.734061, 21.998333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609745, 0.283021, -0.740345,
		0.508934, -0.855878, 0.091969,
		-0.607616, -0.432865, -0.665907,
		16.837231, 14.604202, 21.798561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715532, 14.489223, 21.849323>,  <17.262562, 14.907207, 22.264696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715532, 14.489223, 21.849323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379347, 14.555151, 21.642845>,  <17.177635, 14.594708, 21.518959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379347, 14.555151, 21.642845>,  <17.715532, 14.489223, 21.849323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379347, 14.555151, 21.642845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538350, 0.145566, -0.830054,
		-0.061669, -0.975523, -0.211074,
		-0.840462, 0.164821, -0.516196,
		17.127209, 14.604597, 21.487986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736092, 14.200863, 21.147964>,  <17.715532, 14.489223, 21.849323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736092, 14.200863, 21.147964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.443008, 14.467080, 21.091129>,  <17.267159, 14.626810, 21.057028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.443008, 14.467080, 21.091129>,  <17.736092, 14.200863, 21.147964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443008, 14.467080, 21.091129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431665, 0.293101, -0.853086,
		-0.526119, -0.686400, -0.502050,
		-0.732710, 0.665543, -0.142089,
		17.223196, 14.666743, 21.048502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487535, 14.125118, 20.501493>,  <17.736092, 14.200863, 21.147964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.487535, 14.125118, 20.501493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361946, 14.491877, 20.600061>,  <17.286592, 14.711932, 20.659203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361946, 14.491877, 20.600061>,  <17.487535, 14.125118, 20.501493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361946, 14.491877, 20.600061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440369, 0.370574, -0.817771,
		-0.841128, -0.148241, -0.520122,
		-0.313971, 0.916897, 0.246419,
		17.267756, 14.766946, 20.673986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.328043, 14.313630, 19.845577>,  <17.487535, 14.125118, 20.501493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.328043, 14.313630, 19.845577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.354717, 14.651029, 20.058769>,  <17.370722, 14.853468, 20.186684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.354717, 14.651029, 20.058769>,  <17.328043, 14.313630, 19.845577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.354717, 14.651029, 20.058769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558385, 0.411138, -0.720535,
		-0.826897, 0.345656, -0.443580,
		0.066684, 0.843498, 0.532978,
		17.374723, 14.904078, 20.218662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.168535, 14.805923, 19.418491>,  <17.328043, 14.313630, 19.845577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.168535, 14.805923, 19.418491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345844, 15.013838, 19.710609>,  <17.452229, 15.138587, 19.885880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.345844, 15.013838, 19.710609>,  <17.168535, 14.805923, 19.418491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345844, 15.013838, 19.710609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634020, 0.394118, -0.665349,
		-0.633663, 0.757952, -0.154855,
		0.443272, 0.519788, 0.730295,
		17.478827, 15.169774, 19.929697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163279, 15.482409, 19.203899>,  <17.168535, 14.805923, 19.418491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.163279, 15.482409, 19.203899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448112, 15.475178, 19.484644>,  <17.619013, 15.470840, 19.653090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448112, 15.475178, 19.484644>,  <17.163279, 15.482409, 19.203899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.448112, 15.475178, 19.484644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630558, 0.456084, -0.628000,
		-0.308755, 0.889753, 0.336169,
		0.712086, -0.018077, 0.701859,
		17.661737, 15.469755, 19.695202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372612, 16.121428, 19.186377>,  <17.163279, 15.482409, 19.203899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.372612, 16.121428, 19.186377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679249, 15.923786, 19.350426>,  <17.863232, 15.805202, 19.448854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679249, 15.923786, 19.350426>,  <17.372612, 16.121428, 19.186377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679249, 15.923786, 19.350426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635521, 0.492374, -0.594710,
		0.091914, 0.716541, 0.691462,
		0.766593, -0.494101, 0.410122,
		17.909227, 15.775556, 19.473463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863153, 16.727348, 19.406128>,  <17.372612, 16.121428, 19.186377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863153, 16.727348, 19.406128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072157, 16.390625, 19.351944>,  <18.197559, 16.188591, 19.319433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072157, 16.390625, 19.351944>,  <17.863153, 16.727348, 19.406128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072157, 16.390625, 19.351944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726632, 0.522753, -0.445797,
		0.446086, 0.134503, 0.884825,
		0.522506, -0.841806, -0.135458,
		18.228909, 16.138083, 19.311306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.532183, 16.871101, 19.674488>,  <17.863153, 16.727348, 19.406128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.532183, 16.871101, 19.674488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582106, 16.560823, 19.427031>,  <18.612059, 16.374657, 19.278555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582106, 16.560823, 19.427031>,  <18.532183, 16.871101, 19.674488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582106, 16.560823, 19.427031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811566, 0.438506, -0.386099,
		0.570775, -0.453884, 0.684255,
		0.124806, -0.775694, -0.618645,
		18.619547, 16.328115, 19.241436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.237694, 16.714594, 19.761862>,  <18.532183, 16.871101, 19.674488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.237694, 16.714594, 19.761862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.131893, 16.520208, 19.428665>,  <19.068413, 16.403576, 19.228746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.131893, 16.520208, 19.428665>,  <19.237694, 16.714594, 19.761862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.131893, 16.520208, 19.428665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793045, 0.381878, -0.474605,
		0.548743, -0.786134, 0.284385,
		-0.264503, -0.485966, -0.832992,
		19.052542, 16.374418, 19.178768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848997, 16.469002, 19.504976>,  <19.237694, 16.714594, 19.761862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848997, 16.469002, 19.504976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.590452, 16.455727, 19.200052>,  <19.435326, 16.447762, 19.017097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.590452, 16.455727, 19.200052>,  <19.848997, 16.469002, 19.504976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.590452, 16.455727, 19.200052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672557, 0.447093, -0.589724,
		0.360394, -0.893872, -0.266663,
		-0.646361, -0.033187, -0.762310,
		19.396544, 16.445770, 18.971359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167986, 16.261257, 18.940374>,  <19.848997, 16.469002, 19.504976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167986, 16.261257, 18.940374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.862932, 16.476168, 18.796309>,  <19.679899, 16.605114, 18.709869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.862932, 16.476168, 18.796309>,  <20.167986, 16.261257, 18.940374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862932, 16.476168, 18.796309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643988, 0.578578, -0.500527,
		-0.060537, -0.613663, -0.787244,
		-0.762637, 0.537276, -0.360167,
		19.634142, 16.637350, 18.688259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.141603, 16.346375, 18.156197>,  <20.167986, 16.261257, 18.940374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.141603, 16.346375, 18.156197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950464, 16.660818, 18.313011>,  <19.835781, 16.849483, 18.407101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950464, 16.660818, 18.313011>,  <20.141603, 16.346375, 18.156197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950464, 16.660818, 18.313011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745185, 0.599068, -0.292946,
		-0.465145, 0.152157, -0.872060,
		-0.477850, 0.786108, 0.392038,
		19.807110, 16.896650, 18.430622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125771, 16.750168, 17.599792>,  <20.141603, 16.346375, 18.156197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.125771, 16.750168, 17.599792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083508, 16.979952, 17.924467>,  <20.058149, 17.117823, 18.119272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083508, 16.979952, 17.924467>,  <20.125771, 16.750168, 17.599792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083508, 16.979952, 17.924467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411967, 0.768197, -0.490058,
		-0.905052, 0.282610, -0.317823,
		-0.105655, 0.574460, 0.811685,
		20.051811, 17.152290, 18.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671743, 17.366991, 17.508663>,  <20.125771, 16.750168, 17.599792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.671743, 17.366991, 17.508663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969431, 17.412619, 17.771914>,  <20.148043, 17.439995, 17.929863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969431, 17.412619, 17.771914>,  <19.671743, 17.366991, 17.508663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969431, 17.412619, 17.771914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364747, 0.756024, -0.543496,
		-0.559554, 0.644528, 0.521040,
		0.744217, 0.114068, 0.658126,
		20.192696, 17.446838, 17.969351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729326, 18.092583, 17.684975>,  <19.671743, 17.366991, 17.508663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729326, 18.092583, 17.684975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092876, 17.935240, 17.740416>,  <20.311007, 17.840834, 17.773682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.092876, 17.935240, 17.740416>,  <19.729326, 18.092583, 17.684975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.092876, 17.935240, 17.740416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410709, 0.786362, -0.461469,
		0.072529, 0.476345, 0.876262,
		0.908877, -0.393358, 0.138605,
		20.365540, 17.817232, 17.781998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175913, 18.607523, 18.022959>,  <19.729326, 18.092583, 17.684975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175913, 18.607523, 18.022959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.373262, 18.370653, 17.768112>,  <20.491673, 18.228531, 17.615204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.373262, 18.370653, 17.768112>,  <20.175913, 18.607523, 18.022959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373262, 18.370653, 17.768112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403590, 0.804699, -0.435401,
		0.770518, -0.042318, 0.636012,
		0.493373, -0.592172, -0.637114,
		20.521275, 18.193001, 17.576979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917402, 18.749331, 18.118116>,  <20.175913, 18.607523, 18.022959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917402, 18.749331, 18.118116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883062, 18.559669, 17.767616>,  <20.862459, 18.445873, 17.557316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883062, 18.559669, 17.767616>,  <20.917402, 18.749331, 18.118116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883062, 18.559669, 17.767616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556381, 0.706763, -0.436950,
		0.826481, -0.525039, 0.203134,
		-0.085848, -0.474151, -0.876248,
		20.857307, 18.417425, 17.504742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.548973, 18.795458, 17.708776>,  <20.917402, 18.749331, 18.118116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.548973, 18.795458, 17.708776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.287201, 18.721483, 17.415514>,  <21.130138, 18.677099, 17.239555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.287201, 18.721483, 17.415514>,  <21.548973, 18.795458, 17.708776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.287201, 18.721483, 17.415514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415840, 0.721794, -0.553255,
		0.631504, -0.666943, -0.395461,
		-0.654431, -0.184934, -0.733157,
		21.090872, 18.666002, 17.195566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920874, 19.040981, 17.199684>,  <21.548973, 18.795458, 17.708776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920874, 19.040981, 17.199684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.557865, 19.002644, 17.036116>,  <21.340059, 18.979641, 16.937975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.557865, 19.002644, 17.036116>,  <21.920874, 19.040981, 17.199684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.557865, 19.002644, 17.036116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282571, 0.580982, -0.763291,
		0.310732, -0.808254, -0.500172,
		-0.907524, -0.095845, -0.408919,
		21.285608, 18.973890, 16.913441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.038015, 19.013494, 16.520681>,  <21.920874, 19.040981, 17.199684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.038015, 19.013494, 16.520681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644369, 19.082771, 16.505100>,  <21.408180, 19.124336, 16.495750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644369, 19.082771, 16.505100>,  <22.038015, 19.013494, 16.520681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644369, 19.082771, 16.505100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127355, 0.535945, -0.834592,
		-0.123667, -0.826298, -0.549489,
		-0.984117, 0.173191, -0.038955,
		21.349134, 19.134729, 16.493414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.860281, 18.778999, 15.776008>,  <22.038015, 19.013494, 16.520681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.860281, 18.778999, 15.776008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571568, 19.031244, 15.890099>,  <21.398340, 19.182592, 15.958553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.571568, 19.031244, 15.890099>,  <21.860281, 18.778999, 15.776008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.571568, 19.031244, 15.890099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004304, 0.408010, -0.912967,
		-0.692105, -0.660192, -0.291781,
		-0.721784, 0.630614, 0.285227,
		21.355032, 19.220428, 15.975667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406923, 18.917152, 15.187185>,  <21.860281, 18.778999, 15.776008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406923, 18.917152, 15.187185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.352394, 19.220921, 15.441649>,  <21.319677, 19.403181, 15.594328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.352394, 19.220921, 15.441649>,  <21.406923, 18.917152, 15.187185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.352394, 19.220921, 15.441649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148684, 0.619197, -0.771030,
		-0.979443, -0.199697, 0.028503,
		-0.136324, 0.759418, 0.636160,
		21.311497, 19.448746, 15.632498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.850954, 19.328922, 14.869478>,  <21.406923, 18.917152, 15.187185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.850954, 19.328922, 14.869478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000238, 19.566967, 15.154168>,  <21.089809, 19.709795, 15.324982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.000238, 19.566967, 15.154168>,  <20.850954, 19.328922, 14.869478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.000238, 19.566967, 15.154168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145058, 0.795151, -0.588806,
		-0.916336, 0.116508, 0.383086,
		0.373212, 0.595114, 0.711725,
		21.112202, 19.745501, 15.367685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.341890, 19.785063, 14.975450>,  <20.850954, 19.328922, 14.869478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.341890, 19.785063, 14.975450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.691521, 19.946215, 15.084023>,  <20.901299, 20.042906, 15.149168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.691521, 19.946215, 15.084023>,  <20.341890, 19.785063, 14.975450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.691521, 19.946215, 15.084023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146031, 0.750817, -0.644165,
		-0.463319, 0.523412, 0.715105,
		0.874076, 0.402882, 0.271434,
		20.953743, 20.067080, 15.165454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264992, 20.525528, 15.093977>,  <20.341890, 19.785063, 14.975450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264992, 20.525528, 15.093977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660923, 20.499115, 15.043566>,  <20.898481, 20.483267, 15.013319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660923, 20.499115, 15.043566>,  <20.264992, 20.525528, 15.093977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.660923, 20.499115, 15.043566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011517, 0.845682, -0.533562,
		0.141812, 0.529586, 0.836318,
		0.989827, -0.066034, -0.126028,
		20.957870, 20.479305, 15.005757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.529421, 21.168221, 15.210590>,  <20.264992, 20.525528, 15.093977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.529421, 21.168221, 15.210590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830637, 20.988440, 15.018373>,  <21.011366, 20.880571, 14.903044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830637, 20.988440, 15.018373>,  <20.529421, 21.168221, 15.210590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830637, 20.988440, 15.018373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024635, 0.749083, -0.662018,
		0.657513, 0.486688, 0.575162,
		0.753041, -0.449454, -0.480542,
		21.056549, 20.853603, 14.874211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.981266, 21.681107, 15.055150>,  <20.529421, 21.168221, 15.210590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.981266, 21.681107, 15.055150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115927, 21.390766, 14.815215>,  <21.196724, 21.216562, 14.671254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115927, 21.390766, 14.815215>,  <20.981266, 21.681107, 15.055150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115927, 21.390766, 14.815215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118354, 0.664588, -0.737777,
		0.934161, 0.177382, 0.309643,
		0.336654, -0.725850, -0.599838,
		21.216923, 21.173012, 14.635263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.617699, 21.981695, 14.804384>,  <20.981266, 21.681107, 15.055150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.617699, 21.981695, 14.804384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.472111, 21.703154, 14.556958>,  <21.384758, 21.536030, 14.408503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.472111, 21.703154, 14.556958>,  <21.617699, 21.981695, 14.804384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.472111, 21.703154, 14.556958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064148, 0.643797, -0.762503,
		0.929200, -0.317207, -0.189652,
		-0.363968, -0.696352, -0.618564,
		21.362921, 21.494247, 14.371389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954119, 22.081434, 14.189655>,  <21.617699, 21.981695, 14.804384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954119, 22.081434, 14.189655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644709, 21.866617, 14.055047>,  <21.459063, 21.737726, 13.974282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644709, 21.866617, 14.055047>,  <21.954119, 22.081434, 14.189655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644709, 21.866617, 14.055047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104215, 0.631538, -0.768309,
		0.625131, -0.559242, -0.544482,
		-0.773532, -0.537037, -0.336513,
		21.412651, 21.705503, 13.954091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.129042, 21.943922, 13.526859>,  <21.954119, 22.081434, 14.189655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.129042, 21.943922, 13.526859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731527, 21.908386, 13.553692>,  <21.493019, 21.887064, 13.569791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731527, 21.908386, 13.553692>,  <22.129042, 21.943922, 13.526859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731527, 21.908386, 13.553692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103020, 0.505612, -0.856588,
		0.042183, -0.858175, -0.511621,
		-0.993784, -0.088840, 0.067081,
		21.433392, 21.881735, 13.573816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994024, 21.723646, 12.861751>,  <22.129042, 21.943922, 13.526859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994024, 21.723646, 12.861751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649946, 21.852299, 13.020050>,  <21.443499, 21.929489, 13.115029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649946, 21.852299, 13.020050>,  <21.994024, 21.723646, 12.861751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649946, 21.852299, 13.020050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198825, 0.503105, -0.841043,
		-0.469608, -0.802147, -0.368821,
		-0.860196, 0.321630, 0.395749,
		21.391888, 21.948788, 13.138775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.416771, 21.535860, 12.372524>,  <21.994024, 21.723646, 12.861751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.416771, 21.535860, 12.372524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.293327, 21.834782, 12.607914>,  <21.219261, 22.014133, 12.749147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.293327, 21.834782, 12.607914>,  <21.416771, 21.535860, 12.372524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.293327, 21.834782, 12.607914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069960, 0.599163, -0.797565,
		-0.948613, -0.287304, -0.132625,
		-0.308607, 0.747302, 0.588474,
		21.200745, 22.058971, 12.784456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806538, 21.706787, 12.106100>,  <21.416771, 21.535860, 12.372524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806538, 21.706787, 12.106100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889769, 22.037436, 12.315250>,  <20.939707, 22.235825, 12.440741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.889769, 22.037436, 12.315250>,  <20.806538, 21.706787, 12.106100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889769, 22.037436, 12.315250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304018, 0.562756, -0.768686,
		-0.929665, 0.000984, 0.368406,
		0.208079, 0.826623, 0.522875,
		20.952192, 22.285423, 12.472113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275597, 22.134520, 11.868006>,  <20.806538, 21.706787, 12.106100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275597, 22.134520, 11.868006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.518087, 22.396872, 12.047923>,  <20.663582, 22.554283, 12.155873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.518087, 22.396872, 12.047923>,  <20.275597, 22.134520, 11.868006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.518087, 22.396872, 12.047923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208409, 0.676820, -0.706031,
		-0.767499, 0.334274, 0.546997,
		0.606227, 0.655878, 0.449793,
		20.699955, 22.593636, 12.182861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.980511, 22.807041, 11.946398>,  <20.275597, 22.134520, 11.868006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.980511, 22.807041, 11.946398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.373690, 22.876497, 11.922194>,  <20.609598, 22.918171, 11.907673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.373690, 22.876497, 11.922194>,  <19.980511, 22.807041, 11.946398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.373690, 22.876497, 11.922194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170600, 0.738398, -0.652430,
		-0.068608, 0.651628, 0.755430,
		0.982949, 0.173639, -0.060508,
		20.668575, 22.928589, 11.904042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.039900, 23.534058, 11.985435>,  <19.980511, 22.807041, 11.946398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.039900, 23.534058, 11.985435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.395037, 23.413725, 11.846160>,  <20.608120, 23.341526, 11.762595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.395037, 23.413725, 11.846160>,  <20.039900, 23.534058, 11.985435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.395037, 23.413725, 11.846160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036649, 0.708053, -0.705207,
		0.458682, 0.638875, 0.617616,
		0.887844, -0.300831, -0.348185,
		20.661390, 23.323475, 11.741704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.502195, 24.151855, 11.902358>,  <20.039900, 23.534058, 11.985435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.502195, 24.151855, 11.902358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660500, 23.876482, 11.659234>,  <20.755482, 23.711258, 11.513360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.660500, 23.876482, 11.659234>,  <20.502195, 24.151855, 11.902358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.660500, 23.876482, 11.659234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005393, 0.660093, -0.751164,
		0.918337, 0.300560, 0.257527,
		0.395762, -0.688433, -0.607809,
		20.779228, 23.669952, 11.476892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.991835, 24.495016, 11.519199>,  <20.502195, 24.151855, 11.902358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.991835, 24.495016, 11.519199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.936920, 24.187962, 11.268795>,  <20.903971, 24.003729, 11.118552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.936920, 24.187962, 11.268795>,  <20.991835, 24.495016, 11.519199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.936920, 24.187962, 11.268795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158890, 0.606744, -0.778855,
		0.977705, -0.206393, 0.038672,
		-0.137286, -0.767635, -0.626011,
		20.895735, 23.957670, 11.080992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.353588, 24.684792, 10.951750>,  <20.991835, 24.495016, 11.519199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.353588, 24.684792, 10.951750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.122456, 24.388138, 10.815460>,  <20.983776, 24.210146, 10.733686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.122456, 24.388138, 10.815460>,  <21.353588, 24.684792, 10.951750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.122456, 24.388138, 10.815460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002764, 0.415694, -0.909501,
		0.816153, -0.526478, -0.238150,
		-0.577829, -0.741633, -0.340725,
		20.949106, 24.165648, 10.713243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546827, 24.629997, 10.332828>,  <21.353588, 24.684792, 10.951750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546827, 24.629997, 10.332828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199160, 24.437654, 10.286659>,  <20.990559, 24.322248, 10.258958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199160, 24.437654, 10.286659>,  <21.546827, 24.629997, 10.332828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.199160, 24.437654, 10.286659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130675, 0.448440, -0.884209,
		0.476947, -0.753439, -0.452605,
		-0.869164, -0.480865, -0.115426,
		20.938410, 24.293396, 10.252032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507574, 24.310774, 9.719067>,  <21.546827, 24.629997, 10.332828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507574, 24.310774, 9.719067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127703, 24.375544, 9.826315>,  <20.899780, 24.414406, 9.890664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.127703, 24.375544, 9.826315>,  <21.507574, 24.310774, 9.719067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127703, 24.375544, 9.826315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217108, 0.276715, -0.936105,
		-0.225772, -0.947211, -0.227635,
		-0.949679, 0.161925, 0.268122,
		20.842798, 24.424120, 9.906752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.070658, 23.808701, 9.419304>,  <21.507574, 24.310774, 9.719067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.070658, 23.808701, 9.419304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.374210, 23.859489, 9.674795>,  <22.556343, 23.889963, 9.828090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.374210, 23.859489, 9.674795>,  <22.070658, 23.808701, 9.419304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.374210, 23.859489, 9.674795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644622, 0.007129, 0.764468,
		0.092514, -0.991881, 0.087260,
		0.758883, 0.126974, 0.638729,
		22.601875, 23.897581, 9.866414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.708872, 23.946365, 9.174539>,  <22.070658, 23.808701, 9.419304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.708872, 23.946365, 9.174539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047155, 24.152716, 9.229160>,  <23.250126, 24.276525, 9.261933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047155, 24.152716, 9.229160>,  <22.708872, 23.946365, 9.174539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047155, 24.152716, 9.229160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490457, -0.852235, 0.182064,
		0.210299, -0.086999, -0.973758,
		0.845710, 0.515875, 0.136555,
		23.300869, 24.307478, 9.270126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.215347, 23.877703, 8.525256>,  <22.708872, 23.946365, 9.174539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.215347, 23.877703, 8.525256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.361744, 23.921280, 8.894944>,  <23.449581, 23.947426, 9.116757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.361744, 23.921280, 8.894944>,  <23.215347, 23.877703, 8.525256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.361744, 23.921280, 8.894944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474382, -0.876248, -0.084565,
		0.800633, 0.469383, -0.372379,
		0.365990, 0.108944, 0.924220,
		23.471540, 23.953962, 9.172210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.798429, 23.351635, 8.756414>,  <23.215347, 23.877703, 8.525256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.798429, 23.351635, 8.756414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196398, 23.388746, 8.772027>,  <24.435179, 23.411013, 8.781395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.196398, 23.388746, 8.772027>,  <23.798429, 23.351635, 8.756414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196398, 23.388746, 8.772027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027659, -0.624870, 0.780239,
		0.096778, -0.775196, -0.624263,
		0.994921, 0.092776, 0.039033,
		24.494875, 23.416578, 8.783737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183931, 22.687584, 8.695716>,  <23.798429, 23.351635, 8.756414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183931, 22.687584, 8.695716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428808, 22.920435, 8.909763>,  <24.575733, 23.060144, 9.038192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428808, 22.920435, 8.909763>,  <24.183931, 22.687584, 8.695716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428808, 22.920435, 8.909763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019355, -0.687588, 0.725844,
		0.790474, -0.433997, -0.432201,
		0.612190, 0.582125, 0.535120,
		24.612465, 23.095072, 9.070299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.720022, 22.283157, 9.039090>,  <24.183931, 22.687584, 8.695716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.720022, 22.283157, 9.039090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638607, 22.582088, 9.292094>,  <24.589758, 22.761448, 9.443896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.638607, 22.582088, 9.292094>,  <24.720022, 22.283157, 9.039090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.638607, 22.582088, 9.292094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272226, -0.663758, 0.696649,
		0.940460, -0.030390, 0.338543,
		-0.203539, 0.747330, 0.632511,
		24.577545, 22.806288, 9.481848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105867, 22.199741, 9.561429>,  <24.720022, 22.283157, 9.039090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105867, 22.199741, 9.561429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752264, 22.354195, 9.666831>,  <24.540102, 22.446867, 9.730072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.752264, 22.354195, 9.666831>,  <25.105867, 22.199741, 9.561429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.752264, 22.354195, 9.666831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101451, -0.708707, 0.698171,
		0.456334, 0.590455, 0.665675,
		-0.884006, 0.386132, 0.263505,
		24.487062, 22.470034, 9.745882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170586, 22.282063, 10.220058>,  <25.105867, 22.199741, 9.561429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170586, 22.282063, 10.220058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774513, 22.245373, 10.177865>,  <24.536869, 22.223358, 10.152549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.774513, 22.245373, 10.177865>,  <25.170586, 22.282063, 10.220058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774513, 22.245373, 10.177865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007849, -0.716925, 0.697106,
		-0.139566, 0.691090, 0.709166,
		-0.990182, -0.091726, -0.105483,
		24.477459, 22.217855, 10.146220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.901886, 22.225531, 10.932987>,  <25.170586, 22.282063, 10.220058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.901886, 22.225531, 10.932987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611877, 22.092478, 10.691756>,  <24.437872, 22.012646, 10.547018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611877, 22.092478, 10.691756>,  <24.901886, 22.225531, 10.932987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.611877, 22.092478, 10.691756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195384, -0.740330, 0.643224,
		-0.660431, 0.584182, 0.471764,
		-0.725021, -0.332630, -0.603077,
		24.394371, 21.992689, 10.510833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.401619, 22.119818, 11.341861>,  <24.901886, 22.225531, 10.932987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.401619, 22.119818, 11.341861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295172, 21.887211, 11.034350>,  <24.231304, 21.747646, 10.849844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295172, 21.887211, 11.034350>,  <24.401619, 22.119818, 11.341861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295172, 21.887211, 11.034350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043703, -0.789437, 0.612274,
		-0.962950, 0.196535, 0.184668,
		-0.266117, -0.581519, -0.768777,
		24.215336, 21.712755, 10.803718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.730211, 21.952972, 11.494342>,  <24.401619, 22.119818, 11.341861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.730211, 21.952972, 11.494342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875366, 21.677151, 11.243638>,  <23.962460, 21.511658, 11.093216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875366, 21.677151, 11.243638>,  <23.730211, 21.952972, 11.494342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.875366, 21.677151, 11.243638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296803, -0.723110, 0.623714,
		-0.883301, -0.040314, -0.467070,
		0.362887, -0.689555, -0.626759,
		23.984232, 21.470284, 11.055611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.198635, 21.553133, 11.474528>,  <23.730211, 21.952972, 11.494342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.198635, 21.553133, 11.474528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.525583, 21.349352, 11.366923>,  <23.721752, 21.227083, 11.302361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.525583, 21.349352, 11.366923>,  <23.198635, 21.553133, 11.474528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.525583, 21.349352, 11.366923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285756, -0.763962, 0.578537,
		-0.500252, -0.396007, -0.770018,
		0.817369, -0.509452, -0.269012,
		23.770794, 21.196516, 11.286220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.946875, 20.941999, 11.401217>,  <23.198635, 21.553133, 11.474528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.946875, 20.941999, 11.401217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.333879, 20.849707, 11.442564>,  <23.566082, 20.794331, 11.467373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.333879, 20.849707, 11.442564>,  <22.946875, 20.941999, 11.401217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.333879, 20.849707, 11.442564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231604, -0.644858, 0.728366,
		-0.101399, -0.728643, -0.677346,
		0.967511, -0.230732, 0.103369,
		23.624132, 20.780487, 11.473575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.908812, 20.301878, 11.538290>,  <22.946875, 20.941999, 11.401217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.908812, 20.301878, 11.538290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.284817, 20.389730, 11.642700>,  <23.510420, 20.442442, 11.705346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.284817, 20.389730, 11.642700>,  <22.908812, 20.301878, 11.538290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.284817, 20.389730, 11.642700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086382, -0.586982, 0.804978,
		0.330018, -0.779239, -0.532799,
		0.940014, 0.219633, 0.261027,
		23.566820, 20.455620, 11.721008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.242191, 19.675856, 11.536770>,  <22.908812, 20.301878, 11.538290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.242191, 19.675856, 11.536770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.460928, 19.906805, 11.779291>,  <23.592169, 20.045376, 11.924804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.460928, 19.906805, 11.779291>,  <23.242191, 19.675856, 11.536770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460928, 19.906805, 11.779291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134333, -0.654283, 0.744223,
		0.826391, -0.488417, -0.280227,
		0.546839, 0.577376, 0.606304,
		23.624979, 20.080017, 11.961183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.613735, 19.171133, 11.942842>,  <23.242191, 19.675856, 11.536770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.613735, 19.171133, 11.942842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.621254, 19.522060, 12.134658>,  <23.625765, 19.732616, 12.249747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.621254, 19.522060, 12.134658>,  <23.613735, 19.171133, 11.942842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.621254, 19.522060, 12.134658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047406, -0.478301, 0.876916,
		0.998699, -0.039215, 0.032600,
		0.018796, 0.877320, 0.479537,
		23.626892, 19.785257, 12.278519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.180799, 19.138958, 12.462495>,  <23.613735, 19.171133, 11.942842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.180799, 19.138958, 12.462495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.938007, 19.425756, 12.599605>,  <23.792332, 19.597836, 12.681870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.938007, 19.425756, 12.599605>,  <24.180799, 19.138958, 12.462495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.938007, 19.425756, 12.599605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017636, -0.419056, 0.907789,
		0.794522, 0.557055, 0.241713,
		-0.606979, 0.716995, 0.342773,
		23.755913, 19.640856, 12.702436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487345, 19.443956, 13.117382>,  <24.180799, 19.138958, 12.462495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487345, 19.443956, 13.117382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.094559, 19.519566, 13.118804>,  <23.858887, 19.564932, 13.119658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.094559, 19.519566, 13.118804>,  <24.487345, 19.443956, 13.117382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.094559, 19.519566, 13.118804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061619, -0.337771, 0.939209,
		0.178733, 0.922053, 0.343327,
		-0.981966, 0.189023, 0.003555,
		23.799969, 19.576273, 13.119870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.381929, 19.636375, 13.731280>,  <24.487345, 19.443956, 13.117382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.381929, 19.636375, 13.731280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.013838, 19.535105, 13.611895>,  <23.792982, 19.474342, 13.540263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.013838, 19.535105, 13.611895>,  <24.381929, 19.636375, 13.731280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.013838, 19.535105, 13.611895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140368, -0.498365, 0.855528,
		-0.365343, 0.829177, 0.423072,
		-0.920229, -0.253175, -0.298464,
		23.737770, 19.459152, 13.522355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.982519, 19.663378, 14.394697>,  <24.381929, 19.636375, 13.731280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.982519, 19.663378, 14.394697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.763523, 19.448063, 14.138415>,  <23.632126, 19.318874, 13.984647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.763523, 19.448063, 14.138415>,  <23.982519, 19.663378, 14.394697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.763523, 19.448063, 14.138415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443102, -0.463019, 0.767642,
		-0.709869, 0.704174, 0.014983,
		-0.547491, -0.538286, -0.640704,
		23.599276, 19.286577, 13.946204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.383766, 19.672565, 14.645189>,  <23.982519, 19.663378, 14.394697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.383766, 19.672565, 14.645189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.387667, 19.347727, 14.411813>,  <23.390007, 19.152824, 14.271787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.387667, 19.347727, 14.411813>,  <23.383766, 19.672565, 14.645189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.387667, 19.347727, 14.411813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441445, -0.527030, 0.726199,
		-0.897235, 0.250477, -0.363635,
		0.009750, -0.812097, -0.583441,
		23.390593, 19.104097, 14.236780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.765270, 19.475607, 14.750545>,  <23.383766, 19.672565, 14.645189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.765270, 19.475607, 14.750545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.962257, 19.159681, 14.604300>,  <23.080450, 18.970125, 14.516554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.962257, 19.159681, 14.604300>,  <22.765270, 19.475607, 14.750545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.962257, 19.159681, 14.604300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482472, -0.597371, 0.640601,
		-0.724360, -0.139078, -0.675248,
		0.492467, -0.789814, -0.365610,
		23.109997, 18.922737, 14.494617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246214, 18.812920, 14.640529>,  <22.765270, 19.475607, 14.750545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246214, 18.812920, 14.640529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602722, 18.634594, 14.607337>,  <22.816628, 18.527599, 14.587422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.602722, 18.634594, 14.607337>,  <22.246214, 18.812920, 14.640529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.602722, 18.634594, 14.607337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295795, -0.710249, 0.638789,
		-0.343717, -0.544789, -0.764894,
		0.891271, -0.445815, -0.082979,
		22.870104, 18.500849, 14.582443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.048325, 18.083118, 14.575466>,  <22.246214, 18.812920, 14.640529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.048325, 18.083118, 14.575466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.421888, 18.116978, 14.714403>,  <22.646027, 18.137293, 14.797766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.421888, 18.116978, 14.714403>,  <22.048325, 18.083118, 14.575466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.421888, 18.116978, 14.714403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196377, -0.690405, 0.696259,
		0.298745, -0.718454, -0.628152,
		0.933910, 0.084649, 0.347343,
		22.702061, 18.142372, 14.818606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269424, 17.378757, 14.644741>,  <22.048325, 18.083118, 14.575466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269424, 17.378757, 14.644741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.505211, 17.611971, 14.868383>,  <22.646683, 17.751900, 15.002569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.505211, 17.611971, 14.868383>,  <22.269424, 17.378757, 14.644741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.505211, 17.611971, 14.868383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138709, -0.608804, 0.781100,
		0.795795, -0.537986, -0.277997,
		0.589466, 0.583035, 0.559107,
		22.682051, 17.786880, 15.036116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.656528, 16.939722, 14.954502>,  <22.269424, 17.378757, 14.644741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.656528, 16.939722, 14.954502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.680525, 17.276712, 15.168656>,  <22.694921, 17.478907, 15.297149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.680525, 17.276712, 15.168656>,  <22.656528, 16.939722, 14.954502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.680525, 17.276712, 15.168656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109462, -0.527566, 0.842433,
		0.992179, -0.109142, 0.060571,
		0.059990, 0.842474, 0.535386,
		22.698523, 17.529455, 15.329272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.284767, 16.855000, 15.352484>,  <22.656528, 16.939722, 14.954502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.284767, 16.855000, 15.352484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.013111, 17.075930, 15.545856>,  <22.850117, 17.208488, 15.661879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.013111, 17.075930, 15.545856>,  <23.284767, 16.855000, 15.352484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.013111, 17.075930, 15.545856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015359, -0.669166, 0.742954,
		0.733847, 0.497146, 0.462942,
		-0.679141, 0.552325, 0.483430,
		22.809368, 17.241627, 15.690885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.807304, 16.398577, 15.535225>,  <23.284767, 16.855000, 15.352484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.807304, 16.398577, 15.535225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.193714, 16.488523, 15.484269>,  <24.425560, 16.542492, 15.453695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.193714, 16.488523, 15.484269>,  <23.807304, 16.398577, 15.535225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.193714, 16.488523, 15.484269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181186, -0.940756, -0.286618,
		-0.184293, 0.253799, -0.949538,
		0.966027, 0.224865, -0.127390,
		24.483522, 16.555983, 15.446053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.110100, 16.193930, 14.845289>,  <23.807304, 16.398577, 15.535225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.110100, 16.193930, 14.845289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401876, 16.191820, 15.118899>,  <24.576942, 16.190554, 15.283065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.401876, 16.191820, 15.118899>,  <24.110100, 16.193930, 14.845289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.401876, 16.191820, 15.118899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356965, -0.850080, -0.387220,
		0.583518, 0.526627, -0.618200,
		0.729440, -0.005275, 0.684025,
		24.620708, 16.190237, 15.324107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250462, 15.486938, 14.466035>,  <24.110100, 16.193930, 14.845289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250462, 15.486938, 14.466035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414156, 15.323041, 14.792135>,  <24.512373, 15.224703, 14.987796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414156, 15.323041, 14.792135>,  <24.250462, 15.486938, 14.466035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414156, 15.323041, 14.792135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596793, -0.555668, -0.578853,
		0.690190, 0.723425, 0.017132,
		0.409237, -0.409743, 0.815252,
		24.536926, 15.200118, 15.036711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021267, 15.442307, 14.422708>,  <24.250462, 15.486938, 14.466035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021267, 15.442307, 14.422708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915688, 15.135485, 14.656617>,  <24.852341, 14.951392, 14.796963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915688, 15.135485, 14.656617>,  <25.021267, 15.442307, 14.422708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915688, 15.135485, 14.656617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531858, -0.621519, -0.575188,
		0.804648, 0.159197, 0.572013,
		-0.263949, -0.767053, 0.584773,
		24.836502, 14.905369, 14.832049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593973, 15.133046, 14.661645>,  <25.021267, 15.442307, 14.422708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593973, 15.133046, 14.661645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330832, 14.832632, 14.639107>,  <25.172947, 14.652384, 14.625584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330832, 14.832632, 14.639107>,  <25.593973, 15.133046, 14.661645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330832, 14.832632, 14.639107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733833, -0.622352, -0.272334,
		0.169466, -0.220504, 0.960552,
		-0.657853, -0.751036, -0.056346,
		25.133476, 14.607321, 14.622203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293961, 15.029901, 14.978083>,  <25.593973, 15.133046, 14.661645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293961, 15.029901, 14.978083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689358, 15.020378, 15.037832>,  <26.926596, 15.014665, 15.073682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689358, 15.020378, 15.037832>,  <26.293961, 15.029901, 14.978083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689358, 15.020378, 15.037832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151132, 0.114827, -0.981822,
		0.006220, 0.993100, 0.117103,
		0.988494, -0.023805, 0.149375,
		26.985907, 15.013236, 15.082644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<10.976826, 15.610753, 25.361296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.647211, 15.623688, 25.135050>,  <10.449443, 15.631449, 24.999302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.647211, 15.623688, 25.135050>,  <10.976826, 15.610753, 25.361296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.647211, 15.623688, 25.135050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564027, 0.140708, -0.813680,
		0.053274, -0.989523, -0.134188,
		-0.824036, 0.032338, -0.565614,
		10.400001, 15.633389, 24.965366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.056128, 15.094549, 24.789383>,  <10.976826, 15.610753, 25.361296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.056128, 15.094549, 24.789383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.782722, 15.360206, 24.668240>,  <10.618678, 15.519600, 24.595552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.782722, 15.360206, 24.668240>,  <11.056128, 15.094549, 24.789383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.782722, 15.360206, 24.668240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574647, 0.233750, -0.784310,
		-0.450100, -0.710125, -0.541418,
		-0.683514, 0.664142, -0.302860,
		10.577667, 15.559448, 24.577381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.856938, 14.965548, 24.032263>,  <11.056128, 15.094549, 24.789383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.856938, 14.965548, 24.032263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.739038, 15.340764, 24.105148>,  <10.668299, 15.565894, 24.148880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.739038, 15.340764, 24.105148>,  <10.856938, 14.965548, 24.032263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.739038, 15.340764, 24.105148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346299, 0.282579, -0.894553,
		-0.890617, -0.200569, -0.408133,
		-0.294750, 0.938041, 0.182213,
		10.650614, 15.622176, 24.159813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651389, 15.259875, 23.324257>,  <10.856938, 14.965548, 24.032263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651389, 15.259875, 23.324257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.701784, 15.583692, 23.553612>,  <10.732021, 15.777981, 23.691225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.701784, 15.583692, 23.553612>,  <10.651389, 15.259875, 23.324257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.701784, 15.583692, 23.553612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303122, 0.518935, -0.799264,
		-0.944587, 0.274503, -0.180010,
		0.125987, 0.809540, 0.573387,
		10.739580, 15.826553, 23.725628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.212708, 15.685888, 23.103605>,  <10.651389, 15.259875, 23.324257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.212708, 15.685888, 23.103605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.449868, 15.952951, 23.283693>,  <10.592165, 16.113190, 23.391747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.449868, 15.952951, 23.283693>,  <10.212708, 15.685888, 23.103605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.449868, 15.952951, 23.283693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189341, 0.427834, -0.883803,
		-0.782699, 0.609254, 0.127249,
		0.592902, 0.667658, 0.450222,
		10.627739, 16.153250, 23.418760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.892926, 16.345018, 22.943153>,  <10.212708, 15.685888, 23.103605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.892926, 16.345018, 22.943153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.282627, 16.363127, 23.031500>,  <10.516448, 16.373991, 23.084507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.282627, 16.363127, 23.031500>,  <9.892926, 16.345018, 22.943153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.282627, 16.363127, 23.031500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159894, 0.551917, -0.818426,
		-0.158949, 0.832669, 0.530469,
		0.974253, 0.045269, 0.220866,
		10.574903, 16.376707, 23.097759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.079857, 17.072954, 22.968967>,  <9.892926, 16.345018, 22.943153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.079857, 17.072954, 22.968967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.432492, 16.901783, 22.889288>,  <10.644073, 16.799080, 22.841480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.432492, 16.901783, 22.889288>,  <10.079857, 17.072954, 22.968967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.432492, 16.901783, 22.889288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162702, 0.671644, -0.722788,
		0.443093, 0.604790, 0.661738,
		0.881588, -0.427928, -0.199200,
		10.696968, 16.773405, 22.829529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.544301, 17.638519, 22.829842>,  <10.079857, 17.072954, 22.968967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.544301, 17.638519, 22.829842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.707090, 17.305027, 22.680567>,  <10.804764, 17.104933, 22.591002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.707090, 17.305027, 22.680567>,  <10.544301, 17.638519, 22.829842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.707090, 17.305027, 22.680567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298177, 0.507427, -0.808460,
		0.863402, 0.217747, 0.455109,
		0.406974, -0.833729, -0.373186,
		10.829183, 17.054909, 22.568611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.235077, 17.974571, 22.579649>,  <10.544301, 17.638519, 22.829842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.235077, 17.974571, 22.579649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.226695, 17.607496, 22.420950>,  <11.221666, 17.387251, 22.325729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.226695, 17.607496, 22.420950>,  <11.235077, 17.974571, 22.579649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.226695, 17.607496, 22.420950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609904, 0.302709, -0.732382,
		0.792198, -0.257325, 0.553359,
		-0.020953, -0.917688, -0.396749,
		11.220409, 17.332190, 22.301926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981453, 17.766697, 22.242830>,  <11.235077, 17.974571, 22.579649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.981453, 17.766697, 22.242830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.707102, 17.556660, 22.041298>,  <11.542491, 17.430637, 21.920378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.707102, 17.556660, 22.041298>,  <11.981453, 17.766697, 22.242830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.707102, 17.556660, 22.041298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493959, 0.172486, -0.852205,
		0.534392, -0.833381, 0.141071,
		-0.685879, -0.525095, -0.503831,
		11.501338, 17.399132, 21.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.262854, 17.194645, 21.877836>,  <11.981453, 17.766697, 22.242830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.262854, 17.194645, 21.877836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.935962, 17.289202, 21.667597>,  <11.739826, 17.345936, 21.541454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.935962, 17.289202, 21.667597>,  <12.262854, 17.194645, 21.877836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.935962, 17.289202, 21.667597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547354, 0.032920, -0.836253,
		-0.180383, -0.971099, -0.156295,
		-0.817230, 0.236395, -0.525597,
		11.690792, 17.360119, 21.509918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.339553, 16.752344, 21.365065>,  <12.262854, 17.194645, 21.877836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.339553, 16.752344, 21.365065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.128763, 17.077826, 21.266932>,  <12.002290, 17.273113, 21.208052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.128763, 17.077826, 21.266932>,  <12.339553, 16.752344, 21.365065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.128763, 17.077826, 21.266932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541681, 0.099140, -0.834717,
		-0.654889, -0.572766, -0.493011,
		-0.526974, 0.813702, -0.245331,
		11.970671, 17.321936, 21.193333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.362638, 16.683729, 20.671385>,  <12.339553, 16.752344, 21.365065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.362638, 16.683729, 20.671385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.240285, 17.059422, 20.733715>,  <12.166873, 17.284838, 20.771112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.240285, 17.059422, 20.733715>,  <12.362638, 16.683729, 20.671385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.240285, 17.059422, 20.733715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624285, 0.321439, -0.712001,
		-0.718821, -0.120509, -0.684670,
		-0.305882, 0.939231, 0.155826,
		12.148520, 17.341190, 20.780462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.405726, 16.964794, 20.030851>,  <12.362638, 16.683729, 20.671385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.405726, 16.964794, 20.030851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.358967, 17.296539, 20.249388>,  <12.330911, 17.495586, 20.380510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.358967, 17.296539, 20.249388>,  <12.405726, 16.964794, 20.030851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.358967, 17.296539, 20.249388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560179, 0.509317, -0.653296,
		-0.820082, 0.229680, -0.524130,
		-0.116899, 0.829363, 0.546343,
		12.323897, 17.545349, 20.413290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.279063, 17.475609, 19.558634>,  <12.405726, 16.964794, 20.030851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.279063, 17.475609, 19.558634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.426407, 17.667368, 19.877253>,  <12.514812, 17.782423, 20.068424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.426407, 17.667368, 19.877253>,  <12.279063, 17.475609, 19.558634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.426407, 17.667368, 19.877253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654288, 0.475007, -0.588452,
		-0.660469, 0.737933, -0.138692,
		0.368358, 0.479398, 0.796548,
		12.536914, 17.811188, 20.116217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.231291, 18.135801, 19.443016>,  <12.279063, 17.475609, 19.558634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.231291, 18.135801, 19.443016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.526132, 18.123665, 19.713057>,  <12.703036, 18.116383, 19.875080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.526132, 18.123665, 19.713057>,  <12.231291, 18.135801, 19.443016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.526132, 18.123665, 19.713057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613417, 0.449205, -0.649565,
		-0.283548, 0.892913, 0.349723,
		0.737103, -0.030343, 0.675099,
		12.747262, 18.114561, 19.915586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.481809, 18.880539, 19.478605>,  <12.231291, 18.135801, 19.443016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.481809, 18.880539, 19.478605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.749208, 18.625294, 19.631405>,  <12.909648, 18.472147, 19.723085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.749208, 18.625294, 19.631405>,  <12.481809, 18.880539, 19.478605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749208, 18.625294, 19.631405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735372, 0.490431, -0.467660,
		0.111075, 0.593541, 0.797102,
		0.668499, -0.638111, 0.381999,
		12.949759, 18.433861, 19.746004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.140170, 19.295633, 19.550388>,  <12.481809, 18.880539, 19.478605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.140170, 19.295633, 19.550388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.262700, 18.915884, 19.578268>,  <13.336218, 18.688034, 19.594995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.262700, 18.915884, 19.578268>,  <13.140170, 19.295633, 19.550388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.262700, 18.915884, 19.578268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713503, 0.180517, -0.676998,
		0.630141, 0.257113, 0.732677,
		0.306326, -0.949372, 0.069700,
		13.354598, 18.631073, 19.599178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.886715, 19.367868, 19.688387>,  <13.140170, 19.295633, 19.550388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.886715, 19.367868, 19.688387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.850254, 18.991491, 19.557962>,  <13.828378, 18.765665, 19.479708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.850254, 18.991491, 19.557962>,  <13.886715, 19.367868, 19.688387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.850254, 18.991491, 19.557962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729714, 0.159694, -0.664842,
		0.677649, -0.298534, 0.672064,
		-0.091153, -0.940944, -0.326061,
		13.822908, 18.709208, 19.460144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.581352, 18.971502, 19.622459>,  <13.886715, 19.367868, 19.688387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.581352, 18.971502, 19.622459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.331066, 18.799023, 19.362444>,  <14.180895, 18.695536, 19.206434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.331066, 18.799023, 19.362444>,  <14.581352, 18.971502, 19.622459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.331066, 18.799023, 19.362444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615120, 0.239708, -0.751111,
		0.479696, -0.869833, 0.115250,
		-0.625714, -0.431198, -0.650039,
		14.143352, 18.669664, 19.167433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007874, 18.504025, 19.221560>,  <14.581352, 18.971502, 19.622459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007874, 18.504025, 19.221560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.679753, 18.565159, 19.001108>,  <14.482881, 18.601839, 18.868837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.679753, 18.565159, 19.001108>,  <15.007874, 18.504025, 19.221560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.679753, 18.565159, 19.001108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571852, 0.235004, -0.785976,
		0.009392, -0.959903, -0.280174,
		-0.820303, 0.152836, -0.551130,
		14.433662, 18.611010, 18.835770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246758, 18.230797, 18.608213>,  <15.007874, 18.504025, 19.221560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246758, 18.230797, 18.608213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.927938, 18.453186, 18.513891>,  <14.736646, 18.586620, 18.457298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.927938, 18.453186, 18.513891>,  <15.246758, 18.230797, 18.608213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927938, 18.453186, 18.513891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399929, 0.193356, -0.895919,
		-0.452513, -0.808398, -0.376464,
		-0.797050, 0.555974, -0.235806,
		14.688823, 18.619978, 18.443150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814004, 17.843653, 18.212761>,  <15.246758, 18.230797, 18.608213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.814004, 17.843653, 18.212761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.146795, 17.864145, 18.433735>,  <16.346470, 17.876440, 18.566320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.146795, 17.864145, 18.433735>,  <15.814004, 17.843653, 18.212761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.146795, 17.864145, 18.433735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505572, -0.340074, 0.792936,
		0.228492, -0.939002, -0.257034,
		0.831979, 0.051230, 0.552437,
		16.396389, 17.879515, 18.599466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.007692, 17.135305, 18.372532>,  <15.814004, 17.843653, 18.212761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.007692, 17.135305, 18.372532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.176733, 17.337484, 18.673445>,  <16.278158, 17.458792, 18.853992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.176733, 17.337484, 18.673445>,  <16.007692, 17.135305, 18.372532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176733, 17.337484, 18.673445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512526, -0.551294, 0.658325,
		0.747478, -0.663774, 0.026077,
		0.422603, 0.505449, 0.752282,
		16.303514, 17.489119, 18.899130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026800, 16.648724, 18.864536>,  <16.007692, 17.135305, 18.372532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026800, 16.648724, 18.864536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.079500, 16.983574, 19.076899>,  <16.111120, 17.184484, 19.204315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.079500, 16.983574, 19.076899>,  <16.026800, 16.648724, 18.864536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.079500, 16.983574, 19.076899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507487, -0.403107, 0.761552,
		0.851527, -0.369763, 0.371721,
		0.131750, 0.837126, 0.530906,
		16.119026, 17.234713, 19.236170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131332, 16.414762, 19.433672>,  <16.026800, 16.648724, 18.864536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.131332, 16.414762, 19.433672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.039883, 16.792246, 19.529289>,  <15.985013, 17.018736, 19.586660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.039883, 16.792246, 19.529289>,  <16.131332, 16.414762, 19.433672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.039883, 16.792246, 19.529289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447688, -0.319960, 0.834986,
		0.864469, 0.083881, 0.495638,
		-0.228624, 0.943711, 0.239043,
		15.971295, 17.075359, 19.601002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209898, 16.421152, 20.089863>,  <16.131332, 16.414762, 19.433672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209898, 16.421152, 20.089863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.982410, 16.747036, 20.044586>,  <15.845919, 16.942566, 20.017420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.982410, 16.747036, 20.044586>,  <16.209898, 16.421152, 20.089863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.982410, 16.747036, 20.044586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390352, -0.146201, 0.908983,
		0.724008, 0.561138, 0.401170,
		-0.568717, 0.814708, -0.113191,
		15.811795, 16.991449, 20.010630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.179230, 16.847647, 20.803503>,  <16.209898, 16.421152, 20.089863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.179230, 16.847647, 20.803503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.858940, 16.902407, 20.570230>,  <15.666767, 16.935263, 20.430267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.858940, 16.902407, 20.570230>,  <16.179230, 16.847647, 20.803503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.858940, 16.902407, 20.570230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598828, -0.157328, 0.785272,
		0.015754, 0.978011, 0.207958,
		-0.800723, 0.136902, -0.583182,
		15.618723, 16.943478, 20.395275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.802218, 17.163219, 21.292231>,  <16.179230, 16.847647, 20.803503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.802218, 17.163219, 21.292231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.541054, 17.104551, 20.994991>,  <15.384355, 17.069351, 20.816648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.541054, 17.104551, 20.994991>,  <15.802218, 17.163219, 21.292231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541054, 17.104551, 20.994991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735840, -0.109760, 0.668200,
		-0.179568, 0.983077, -0.036262,
		-0.652912, -0.146671, -0.743097,
		15.345181, 17.060551, 20.772062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183990, 17.585726, 21.419899>,  <15.802218, 17.163219, 21.292231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183990, 17.585726, 21.419899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.102486, 17.258055, 21.205448>,  <15.053582, 17.061453, 21.076778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.102486, 17.258055, 21.205448>,  <15.183990, 17.585726, 21.419899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.102486, 17.258055, 21.205448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736582, -0.232464, 0.635144,
		-0.644925, 0.524320, -0.556023,
		-0.203763, -0.819176, -0.536126,
		15.041357, 17.012302, 21.044611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.503833, 17.554516, 21.360693>,  <15.183990, 17.585726, 21.419899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.503833, 17.554516, 21.360693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.598618, 17.170000, 21.304441>,  <14.655488, 16.939291, 21.270691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.598618, 17.170000, 21.304441>,  <14.503833, 17.554516, 21.360693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.598618, 17.170000, 21.304441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661344, -0.265642, 0.701469,
		-0.711670, -0.073218, -0.698689,
		0.236961, -0.961288, -0.140627,
		14.669706, 16.881615, 21.262253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.935515, 17.080429, 21.402603>,  <14.503833, 17.554516, 21.360693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.935515, 17.080429, 21.402603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.246201, 16.841002, 21.481024>,  <14.432611, 16.697346, 21.528076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.246201, 16.841002, 21.481024>,  <13.935515, 17.080429, 21.402603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.246201, 16.841002, 21.481024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534227, -0.461179, 0.708460,
		-0.333647, -0.655005, -0.677974,
		0.776712, -0.598567, 0.196051,
		14.479214, 16.661432, 21.539839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593402, 16.422766, 21.413830>,  <13.935515, 17.080429, 21.402603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593402, 16.422766, 21.413830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.945192, 16.350470, 21.589945>,  <14.156266, 16.307093, 21.695614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.945192, 16.350470, 21.589945>,  <13.593402, 16.422766, 21.413830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.945192, 16.350470, 21.589945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400548, -0.780733, 0.479601,
		0.257066, -0.598155, -0.759031,
		0.879476, -0.180739, 0.440290,
		14.209035, 16.296247, 21.722033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662609, 15.678843, 21.444279>,  <13.593402, 16.422766, 21.413830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.662609, 15.678843, 21.444279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.903470, 15.812166, 21.734470>,  <14.047987, 15.892159, 21.908585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.903470, 15.812166, 21.734470>,  <13.662609, 15.678843, 21.444279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.903470, 15.812166, 21.734470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517343, -0.529204, 0.672532,
		0.608085, -0.780288, -0.146228,
		0.602153, 0.333307, 0.725478,
		14.084116, 15.912158, 21.952114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.072707, 15.155379, 21.680981>,  <13.662609, 15.678843, 21.444279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.072707, 15.155379, 21.680981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.092091, 15.408749, 21.989895>,  <14.103721, 15.560770, 22.175243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.092091, 15.408749, 21.989895>,  <14.072707, 15.155379, 21.680981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.092091, 15.408749, 21.989895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079097, -0.768334, 0.635143,
		0.995688, -0.091864, 0.012869,
		0.048459, 0.633423, 0.772287,
		14.106628, 15.598776, 22.221581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.407690, 14.770706, 22.234739>,  <14.072707, 15.155379, 21.680981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.407690, 14.770706, 22.234739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.222037, 15.065203, 22.431728>,  <14.110645, 15.241900, 22.549923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.222037, 15.065203, 22.431728>,  <14.407690, 14.770706, 22.234739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222037, 15.065203, 22.431728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278716, -0.649136, 0.707771,
		0.840772, 0.191240, 0.506487,
		-0.464133, 0.736241, 0.492474,
		14.082797, 15.286075, 22.579470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472446, 14.679985, 23.021811>,  <14.407690, 14.770706, 22.234739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472446, 14.679985, 23.021811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.186267, 14.959350, 23.029345>,  <14.014559, 15.126968, 23.033865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.186267, 14.959350, 23.029345>,  <14.472446, 14.679985, 23.021811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.186267, 14.959350, 23.029345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307274, -0.338755, 0.889285,
		0.627468, 0.630449, 0.456965,
		-0.715449, 0.698411, 0.018837,
		13.971632, 15.168873, 23.034996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393009, 14.795526, 23.669064>,  <14.472446, 14.679985, 23.021811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393009, 14.795526, 23.669064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.059542, 14.991071, 23.566294>,  <13.859461, 15.108397, 23.504633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.059542, 14.991071, 23.566294>,  <14.393009, 14.795526, 23.669064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059542, 14.991071, 23.566294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434252, -0.292841, 0.851862,
		0.341205, 0.821741, 0.456422,
		-0.833669, 0.488862, -0.256924,
		13.809441, 15.137730, 23.489216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161162, 15.249150, 24.254776>,  <14.393009, 14.795526, 23.669064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161162, 15.249150, 24.254776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.837686, 15.171913, 24.032522>,  <13.643600, 15.125570, 23.899170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.837686, 15.171913, 24.032522>,  <14.161162, 15.249150, 24.254776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837686, 15.171913, 24.032522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483429, -0.319989, 0.814803,
		-0.335131, 0.927535, 0.165426,
		-0.808693, -0.193094, -0.555636,
		13.595078, 15.113985, 23.865831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.613852, 15.496294, 24.639233>,  <14.161162, 15.249150, 24.254776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.613852, 15.496294, 24.639233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.449815, 15.240837, 24.378784>,  <13.351393, 15.087563, 24.222515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.449815, 15.240837, 24.378784>,  <13.613852, 15.496294, 24.639233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449815, 15.240837, 24.378784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579274, -0.369039, 0.726809,
		-0.704461, 0.675237, -0.218609,
		-0.410093, -0.638643, -0.651121,
		13.326787, 15.049244, 24.183449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.861080, 15.668678, 24.693491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.882492, 15.316108, 24.505779>,  <12.895339, 15.104566, 24.393152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.882492, 15.316108, 24.505779>,  <12.861080, 15.668678, 24.693491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882492, 15.316108, 24.505779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617990, -0.398383, 0.677775,
		-0.784361, 0.253728, -0.566038,
		0.053530, -0.881426, -0.469278,
		12.898551, 15.051680, 24.364996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185093, 15.454596, 24.532417>,  <12.861080, 15.668678, 24.693491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185093, 15.454596, 24.532417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.369075, 15.099429, 24.535158>,  <12.479464, 14.886330, 24.536802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.369075, 15.099429, 24.535158>,  <12.185093, 15.454596, 24.532417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.369075, 15.099429, 24.535158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653292, -0.333167, 0.679860,
		-0.601375, -0.317181, -0.733310,
		0.459954, -0.887917, 0.006853,
		12.507061, 14.833055, 24.537214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.693203, 14.856912, 24.505667>,  <12.185093, 15.454596, 24.532417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.693203, 14.856912, 24.505667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.029927, 14.717063, 24.670164>,  <12.231961, 14.633154, 24.768862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.029927, 14.717063, 24.670164>,  <11.693203, 14.856912, 24.505667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.029927, 14.717063, 24.670164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514921, -0.291631, 0.806107,
		-0.161901, -0.890346, -0.425526,
		0.841810, -0.349622, 0.411242,
		12.282471, 14.612176, 24.793537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.474333, 14.193300, 24.795639>,  <11.693203, 14.856912, 24.505667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.474333, 14.193300, 24.795639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.817089, 14.304222, 24.969461>,  <12.022743, 14.370775, 25.073755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.817089, 14.304222, 24.969461>,  <11.474333, 14.193300, 24.795639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817089, 14.304222, 24.969461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389320, -0.204413, 0.898134,
		0.337886, -0.938785, -0.067200,
		0.856891, 0.277305, 0.434557,
		12.074157, 14.387413, 25.099829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.516171, 13.732264, 25.373449>,  <11.474333, 14.193300, 24.795639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.516171, 13.732264, 25.373449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.788291, 14.006927, 25.475969>,  <11.951564, 14.171725, 25.537481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.788291, 14.006927, 25.475969>,  <11.516171, 13.732264, 25.373449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.788291, 14.006927, 25.475969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263205, -0.097482, 0.959802,
		0.684042, -0.720414, 0.114414,
		0.680302, 0.686659, 0.256298,
		11.992382, 14.212925, 25.552858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027446, 13.386105, 25.909243>,  <11.516171, 13.732264, 25.373449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027446, 13.386105, 25.909243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.013197, 13.783989, 25.947773>,  <12.004648, 14.022720, 25.970892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.013197, 13.783989, 25.947773>,  <12.027446, 13.386105, 25.909243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013197, 13.783989, 25.947773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112699, -0.099773, 0.988607,
		0.992990, 0.024359, 0.115657,
		-0.035621, 0.994712, 0.096328,
		12.002511, 14.082402, 25.976671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.395576, 13.537936, 26.607950>,  <12.027446, 13.386105, 25.909243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.395576, 13.537936, 26.607950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.208254, 13.874980, 26.501593>,  <12.095861, 14.077207, 26.437778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.208254, 13.874980, 26.501593>,  <12.395576, 13.537936, 26.607950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.208254, 13.874980, 26.501593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341103, 0.105195, 0.934121,
		0.815071, 0.528150, 0.238154,
		-0.468303, 0.842610, -0.265895,
		12.067763, 14.127763, 26.421824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.714802, 14.007721, 27.015217>,  <12.395576, 13.537936, 26.607950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.714802, 14.007721, 27.015217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.350578, 14.136646, 26.911682>,  <12.132044, 14.214002, 26.849562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.350578, 14.136646, 26.911682>,  <12.714802, 14.007721, 27.015217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350578, 14.136646, 26.911682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240293, 0.096793, 0.965863,
		0.336364, 0.941671, -0.010686,
		-0.910560, 0.322313, -0.258835,
		12.077411, 14.233340, 26.834032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.613238, 14.467193, 27.474920>,  <12.714802, 14.007721, 27.015217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.613238, 14.467193, 27.474920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.241067, 14.384745, 27.353716>,  <12.017764, 14.335276, 27.280993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.241067, 14.384745, 27.353716>,  <12.613238, 14.467193, 27.474920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241067, 14.384745, 27.353716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303967, -0.027809, 0.952277,
		-0.204711, 0.978131, -0.036780,
		-0.930429, -0.206121, -0.303012,
		11.961938, 14.322908, 27.262812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.139600, 14.888405, 27.813713>,  <12.613238, 14.467193, 27.474920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.139600, 14.888405, 27.813713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.897352, 14.593928, 27.692884>,  <11.752004, 14.417242, 27.620386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.897352, 14.593928, 27.692884>,  <12.139600, 14.888405, 27.813713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.897352, 14.593928, 27.692884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558384, 0.122697, 0.820459,
		-0.566952, 0.665558, -0.485385,
		-0.605618, -0.736191, -0.302074,
		11.715667, 14.373071, 27.602262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.526135, 15.133359, 28.003456>,  <12.139600, 14.888405, 27.813713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.526135, 15.133359, 28.003456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.415760, 14.753374, 27.944902>,  <11.349535, 14.525383, 27.909769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.415760, 14.753374, 27.944902>,  <11.526135, 15.133359, 28.003456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.415760, 14.753374, 27.944902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594512, 0.049014, 0.802591,
		-0.755256, 0.308495, -0.578289,
		-0.275940, -0.949962, -0.146386,
		11.332978, 14.468386, 27.900986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.715020, 15.108680, 28.102333>,  <11.526135, 15.133359, 28.003456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.715020, 15.108680, 28.102333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.885390, 14.755388, 28.180813>,  <10.987612, 14.543413, 28.227900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.885390, 14.755388, 28.180813>,  <10.715020, 15.108680, 28.102333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.885390, 14.755388, 28.180813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385074, 0.019265, 0.922685,
		-0.818722, -0.468544, -0.331904,
		0.425925, -0.883230, 0.196197,
		11.013167, 14.490419, 28.239672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.237208, 14.711798, 28.470255>,  <10.715020, 15.108680, 28.102333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.237208, 14.711798, 28.470255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.572316, 14.522517, 28.579231>,  <10.773380, 14.408949, 28.644617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.572316, 14.522517, 28.579231>,  <10.237208, 14.711798, 28.470255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.572316, 14.522517, 28.579231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354308, -0.091467, 0.930645,
		-0.415463, -0.876193, -0.244287,
		0.837769, -0.473201, 0.272441,
		10.823647, 14.380557, 28.660963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.083758, 13.979807, 28.904055>,  <10.237208, 14.711798, 28.470255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.083758, 13.979807, 28.904055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.454453, 14.113481, 28.972736>,  <10.676869, 14.193685, 29.013945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.454453, 14.113481, 28.972736>,  <10.083758, 13.979807, 28.904055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.454453, 14.113481, 28.972736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193436, 0.032608, 0.980571,
		0.322092, -0.941944, 0.094862,
		0.926736, 0.334184, 0.171703,
		10.732473, 14.213736, 29.024248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.291721, 13.611765, 29.455143>,  <10.083758, 13.979807, 28.904055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.291721, 13.611765, 29.455143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.568065, 13.900732, 29.466644>,  <10.733871, 14.074113, 29.473545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.568065, 13.900732, 29.466644>,  <10.291721, 13.611765, 29.455143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.568065, 13.900732, 29.466644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005889, -0.034146, 0.999399,
		0.722967, -0.690612, -0.019335,
		0.690858, 0.722419, 0.028753,
		10.775322, 14.117457, 29.475271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.602355, 13.400404, 30.039452>,  <10.291721, 13.611765, 29.455143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.602355, 13.400404, 30.039452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.740135, 13.768660, 29.965939>,  <10.822803, 13.989614, 29.921831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.740135, 13.768660, 29.965939>,  <10.602355, 13.400404, 30.039452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.740135, 13.768660, 29.965939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149294, 0.246987, 0.957449,
		0.926858, -0.302356, 0.222521,
		0.344450, 0.920640, -0.183781,
		10.843471, 14.044851, 29.910805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.115807, 13.500463, 30.479933>,  <10.602355, 13.400404, 30.039452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.115807, 13.500463, 30.479933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.954152, 13.852614, 30.380651>,  <10.857160, 14.063906, 30.321083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.954152, 13.852614, 30.380651>,  <11.115807, 13.500463, 30.479933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.954152, 13.852614, 30.380651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159017, 0.199598, 0.966889,
		0.900771, 0.430223, 0.059331,
		-0.404136, 0.880380, -0.248205,
		10.832911, 14.116729, 30.306190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.493386, 13.994808, 30.866529>,  <11.115807, 13.500463, 30.479933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.493386, 13.994808, 30.866529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.137218, 14.144957, 30.763573>,  <10.923518, 14.235045, 30.701799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.137218, 14.144957, 30.763573>,  <11.493386, 13.994808, 30.866529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.137218, 14.144957, 30.763573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232581, 0.110842, 0.966240,
		0.391228, 0.920223, -0.011392,
		-0.890419, 0.375370, -0.257391,
		10.870092, 14.257567, 30.686356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.411171, 14.451886, 31.473423>,  <11.493386, 13.994808, 30.866529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.411171, 14.451886, 31.473423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.066133, 14.411984, 31.275040>,  <10.859110, 14.388043, 31.156010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.066133, 14.411984, 31.275040>,  <11.411171, 14.451886, 31.473423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.066133, 14.411984, 31.275040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487252, -0.099857, 0.867534,
		-0.136065, 0.989989, 0.037531,
		-0.862596, -0.099754, -0.495961,
		10.807354, 14.382058, 31.126251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.995887, 14.811425, 31.906733>,  <11.411171, 14.451886, 31.473423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.995887, 14.811425, 31.906733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.769771, 14.565499, 31.686750>,  <10.634101, 14.417944, 31.554762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.769771, 14.565499, 31.686750>,  <10.995887, 14.811425, 31.906733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.769771, 14.565499, 31.686750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499474, -0.275472, 0.821365,
		-0.656484, 0.738998, -0.151362,
		-0.565291, -0.614815, -0.549953,
		10.600183, 14.381055, 31.521765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.376880, 14.887429, 32.172298>,  <10.995887, 14.811425, 31.906733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.376880, 14.887429, 32.172298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.343371, 14.538218, 31.980129>,  <10.323267, 14.328691, 31.864828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.343371, 14.538218, 31.980129>,  <10.376880, 14.887429, 32.172298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.343371, 14.538218, 31.980129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392687, -0.414182, 0.821127,
		-0.915849, 0.257441, -0.308130,
		-0.083770, -0.873028, -0.480422,
		10.318240, 14.276310, 31.836002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.813645, 14.574003, 32.463940>,  <10.376880, 14.887429, 32.172298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.813645, 14.574003, 32.463940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.973072, 14.262183, 32.270676>,  <10.068728, 14.075091, 32.154716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.973072, 14.262183, 32.270676>,  <9.813645, 14.574003, 32.463940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.973072, 14.262183, 32.270676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525013, -0.625888, 0.576738,
		-0.752002, 0.023800, -0.658731,
		0.398566, -0.779550, -0.483164,
		10.092642, 14.028318, 32.125729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.244265, 14.160018, 32.337074>,  <9.813645, 14.574003, 32.463940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.244265, 14.160018, 32.337074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.559715, 13.916389, 32.303379>,  <9.748986, 13.770211, 32.283161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.559715, 13.916389, 32.303379>,  <9.244265, 14.160018, 32.337074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.559715, 13.916389, 32.303379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429790, -0.644021, 0.632864,
		-0.439712, -0.462889, -0.769666,
		0.788627, -0.609073, -0.084238,
		9.796304, 13.733666, 32.278107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.688246, 13.564954, 32.521793>,  <9.244265, 14.160018, 32.337074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.688246, 13.564954, 32.521793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.347478, 13.365579, 32.457554>,  <8.143017, 13.245954, 32.419010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.347478, 13.365579, 32.457554>,  <8.688246, 13.564954, 32.521793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.347478, 13.365579, 32.457554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252935, -0.123123, -0.959617,
		0.458537, -0.858137, 0.230963,
		-0.851920, -0.498439, -0.160596,
		8.091902, 13.216047, 32.409374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.871166, 13.068494, 32.075958>,  <8.688246, 13.564954, 32.521793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.871166, 13.068494, 32.075958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.480016, 13.136410, 32.027081>,  <8.245326, 13.177159, 31.997755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.480016, 13.136410, 32.027081>,  <8.871166, 13.068494, 32.075958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.480016, 13.136410, 32.027081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131055, 0.041970, -0.990486,
		-0.163048, -0.984586, -0.063293,
		-0.977875, 0.169792, -0.122192,
		8.186653, 13.187347, 31.990423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.617465, 12.510142, 31.695322>,  <8.871166, 13.068494, 32.075958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.617465, 12.510142, 31.695322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.362633, 12.814779, 31.647816>,  <8.209733, 12.997561, 31.619312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.362633, 12.814779, 31.647816>,  <8.617465, 12.510142, 31.695322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.362633, 12.814779, 31.647816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143310, -0.034360, -0.989081,
		-0.757357, -0.647146, -0.087253,
		-0.637082, 0.761591, -0.118765,
		8.171508, 13.043257, 31.612186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.031952, 12.295140, 31.244791>,  <8.617465, 12.510142, 31.695322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.031952, 12.295140, 31.244791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.081834, 12.690786, 31.213551>,  <8.111763, 12.928174, 31.194807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.081834, 12.690786, 31.213551>,  <8.031952, 12.295140, 31.244791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.081834, 12.690786, 31.213551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136475, -0.060866, -0.988772,
		-0.982763, 0.133963, 0.127399,
		0.124705, 0.989115, -0.078100,
		8.119246, 12.987521, 31.190121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.668276, 12.436518, 30.647057>,  <8.031952, 12.295140, 31.244791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.668276, 12.436518, 30.647057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.838960, 12.795410, 30.692480>,  <7.941371, 13.010745, 30.719734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.838960, 12.795410, 30.692480>,  <7.668276, 12.436518, 30.647057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.838960, 12.795410, 30.692480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095425, 0.169530, -0.980894,
		-0.899339, 0.407722, 0.157958,
		0.426711, 0.897230, 0.113559,
		7.966973, 13.064579, 30.726547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.230302, 12.944732, 30.325094>,  <7.668276, 12.436518, 30.647057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.230302, 12.944732, 30.325094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.581195, 13.136597, 30.332952>,  <7.791731, 13.251716, 30.337667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.581195, 13.136597, 30.332952>,  <7.230302, 12.944732, 30.325094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.581195, 13.136597, 30.332952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213711, 0.426838, -0.878713,
		-0.429872, 0.766637, 0.476945,
		0.877233, 0.479663, 0.019647,
		7.844365, 13.280496, 30.338846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.101378, 13.556872, 30.001911>,  <7.230302, 12.944732, 30.325094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.101378, 13.556872, 30.001911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.498857, 13.512548, 30.008745>,  <7.737343, 13.485954, 30.012846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.498857, 13.512548, 30.008745>,  <7.101378, 13.556872, 30.001911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.498857, 13.512548, 30.008745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069036, 0.484662, -0.871973,
		0.088343, 0.867654, 0.489256,
		0.993695, -0.110809, 0.017083,
		7.796965, 13.479305, 30.013870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.332116, 14.185466, 29.715065>,  <7.101378, 13.556872, 30.001911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.332116, 14.185466, 29.715065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.660588, 13.959191, 29.684967>,  <7.857672, 13.823427, 29.666908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.660588, 13.959191, 29.684967>,  <7.332116, 14.185466, 29.715065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.660588, 13.959191, 29.684967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250059, 0.475212, -0.843590,
		0.512964, 0.673924, 0.531690,
		0.821181, -0.565685, -0.075246,
		7.906942, 13.789486, 29.662394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.850158, 14.616073, 29.610214>,  <7.332116, 14.185466, 29.715065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.850158, 14.616073, 29.610214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.992729, 14.276475, 29.454180>,  <8.078271, 14.072716, 29.360559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.992729, 14.276475, 29.454180>,  <7.850158, 14.616073, 29.610214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.992729, 14.276475, 29.454180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331882, 0.505324, -0.796556,
		0.873392, 0.154451, 0.461877,
		0.356427, -0.848995, -0.390086,
		8.099657, 14.021776, 29.337154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.613419, 14.665513, 29.359985>,  <7.850158, 14.616073, 29.610214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.613419, 14.665513, 29.359985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.462916, 14.348315, 29.168322>,  <8.372615, 14.157997, 29.053324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.462916, 14.348315, 29.168322>,  <8.613419, 14.665513, 29.359985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.462916, 14.348315, 29.168322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433933, 0.306112, -0.847347,
		0.818617, -0.526741, 0.228931,
		-0.376254, -0.792994, -0.479159,
		8.350040, 14.110417, 29.024574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.205310, 14.334436, 29.051561>,  <8.613419, 14.665513, 29.359985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.205310, 14.334436, 29.051561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.867740, 14.213468, 28.874323>,  <8.665197, 14.140886, 28.767981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.867740, 14.213468, 28.874323>,  <9.205310, 14.334436, 29.051561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.867740, 14.213468, 28.874323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372749, 0.263444, -0.889750,
		0.385812, -0.916044, -0.109599,
		-0.843924, -0.302424, -0.443095,
		8.614562, 14.122742, 28.741394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.432961, 13.853148, 28.591143>,  <9.205310, 14.334436, 29.051561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.432961, 13.853148, 28.591143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.071591, 13.969608, 28.465250>,  <8.854770, 14.039485, 28.389715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.071591, 13.969608, 28.465250>,  <9.432961, 13.853148, 28.591143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.071591, 13.969608, 28.465250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332852, 0.013572, -0.942882,
		-0.270250, -0.956581, -0.109171,
		-0.903424, 0.291152, -0.314732,
		8.800564, 14.056953, 28.370831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.374950, 13.452080, 27.963511>,  <9.432961, 13.853148, 28.591143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.374950, 13.452080, 27.963511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.128135, 13.766722, 27.954428>,  <8.980045, 13.955507, 27.948978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.128135, 13.766722, 27.954428>,  <9.374950, 13.452080, 27.963511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.128135, 13.766722, 27.954428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308500, 0.215251, -0.926550,
		-0.723941, -0.578723, -0.375486,
		-0.617039, 0.786605, -0.022707,
		8.943023, 14.002703, 27.947615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.357725, 13.497182, 27.277981>,  <9.374950, 13.452080, 27.963511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.357725, 13.497182, 27.277981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.183709, 13.835130, 27.402517>,  <9.079300, 14.037899, 27.477240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.183709, 13.835130, 27.402517>,  <9.357725, 13.497182, 27.277981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.183709, 13.835130, 27.402517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156994, 0.411656, -0.897715,
		-0.886619, -0.341662, -0.311726,
		-0.435039, 0.844871, 0.311343,
		9.053197, 14.088591, 27.495920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.984837, 13.714298, 26.786606>,  <9.357725, 13.497182, 27.277981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.984837, 13.714298, 26.786606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.007548, 14.061168, 26.984509>,  <9.021175, 14.269290, 27.103251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.007548, 14.061168, 26.984509>,  <8.984837, 13.714298, 26.786606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.007548, 14.061168, 26.984509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192053, 0.476814, -0.857767,
		-0.979741, 0.143723, -0.139471,
		0.056779, 0.867175, 0.494757,
		9.024582, 14.321321, 27.132936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.648900, 14.260427, 26.366972>,  <8.984837, 13.714298, 26.786606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.648900, 14.260427, 26.366972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.874116, 14.495049, 26.599846>,  <9.009246, 14.635823, 26.739571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.874116, 14.495049, 26.599846>,  <8.648900, 14.260427, 26.366972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.874116, 14.495049, 26.599846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287307, 0.521590, -0.803367,
		-0.774880, 0.619594, 0.125155,
		0.563041, 0.586556, 0.582183,
		9.043028, 14.671017, 26.774502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.480288, 14.897091, 26.250597>,  <8.648900, 14.260427, 26.366972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.480288, 14.897091, 26.250597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.854810, 14.928494, 26.387516>,  <9.079523, 14.947336, 26.469667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.854810, 14.928494, 26.387516>,  <8.480288, 14.897091, 26.250597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.854810, 14.928494, 26.387516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237484, 0.576492, -0.781830,
		-0.258711, 0.813322, 0.521129,
		0.936306, 0.078509, 0.342296,
		9.135702, 14.952047, 26.490204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.683671, 15.645554, 26.219385>,  <8.480288, 14.897091, 26.250597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.683671, 15.645554, 26.219385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.006954, 15.411163, 26.195948>,  <9.200924, 15.270529, 26.181885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.006954, 15.411163, 26.195948>,  <8.683671, 15.645554, 26.219385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.006954, 15.411163, 26.195948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275133, 0.463693, -0.842194,
		0.520676, 0.664546, 0.535981,
		0.808207, -0.585976, -0.058595,
		9.249416, 15.235371, 26.178370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.141192, 16.144646, 25.893658>,  <8.683671, 15.645554, 26.219385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.141192, 16.144646, 25.893658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.320981, 15.788177, 25.869020>,  <9.428854, 15.574297, 25.854239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.320981, 15.788177, 25.869020>,  <9.141192, 16.144646, 25.893658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.320981, 15.788177, 25.869020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468900, 0.294059, -0.832864,
		0.760334, 0.345468, 0.550040,
		0.449472, -0.891168, -0.061594,
		9.455823, 15.520827, 25.850542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.845679, 16.324753, 25.856337>,  <9.141192, 16.144646, 25.893658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.845679, 16.324753, 25.856337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.797886, 15.965258, 25.687580>,  <9.769210, 15.749560, 25.586327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.797886, 15.965258, 25.687580>,  <9.845679, 16.324753, 25.856337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.797886, 15.965258, 25.687580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569021, 0.286232, -0.770900,
		0.813596, -0.332175, 0.477201,
		-0.119484, -0.898738, -0.421892,
		9.762041, 15.695636, 25.561012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.570054, 16.148106, 25.643263>,  <9.845679, 16.324753, 25.856337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.570054, 16.148106, 25.643263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.326287, 15.900642, 25.444920>,  <10.180027, 15.752165, 25.325914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.326287, 15.900642, 25.444920>,  <10.570054, 16.148106, 25.643263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.326287, 15.900642, 25.444920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391361, 0.309183, -0.866742,
		0.689526, -0.722267, 0.053697,
		-0.609417, -0.618657, -0.495857,
		10.143462, 15.715046, 25.296162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.513662, 23.903803, 7.677358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.741808, 23.694326, 7.424238>,  <19.878695, 23.568640, 7.272367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.741808, 23.694326, 7.424238>,  <19.513662, 23.903803, 7.677358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741808, 23.694326, 7.424238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031167, -0.783641, 0.620432,
		-0.820801, -0.334149, -0.463281,
		0.570363, -0.523691, -0.632799,
		19.912916, 23.537220, 7.234398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.926243, 24.493393, 7.536732>,  <19.513662, 23.903803, 7.677358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.926243, 24.493393, 7.536732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.632685, 24.458044, 7.267336>,  <19.456551, 24.436834, 7.105699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.632685, 24.458044, 7.267336>,  <19.926243, 24.493393, 7.536732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632685, 24.458044, 7.267336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628068, 0.465906, 0.623267,
		0.258702, 0.880410, -0.397431,
		-0.733896, -0.088373, -0.673489,
		19.412516, 24.431532, 7.065290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638195, 25.087479, 7.542233>,  <19.926243, 24.493393, 7.536732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638195, 25.087479, 7.542233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.357697, 24.834658, 7.410315>,  <19.189398, 24.682966, 7.331163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.357697, 24.834658, 7.410315>,  <19.638195, 25.087479, 7.542233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357697, 24.834658, 7.410315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683086, 0.463266, 0.564605,
		-0.204075, 0.621206, -0.756609,
		-0.701247, -0.632050, -0.329796,
		19.147322, 24.645042, 7.311376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.209064, 25.440584, 7.854722>,  <19.638195, 25.087479, 7.542233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.209064, 25.440584, 7.854722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.133123, 25.599586, 8.213820>,  <20.087559, 25.694988, 8.429278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.133123, 25.599586, 8.213820>,  <20.209064, 25.440584, 7.854722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133123, 25.599586, 8.213820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213113, -0.875890, 0.432897,
		0.958404, 0.273508, 0.081578,
		-0.189854, 0.397505, 0.897744,
		20.076168, 25.718838, 8.483143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.811085, 25.244068, 8.251650>,  <20.209064, 25.440584, 7.854722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.811085, 25.244068, 8.251650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.494200, 25.309479, 8.486819>,  <20.304068, 25.348724, 8.627921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.494200, 25.309479, 8.486819>,  <20.811085, 25.244068, 8.251650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494200, 25.309479, 8.486819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267049, -0.773378, 0.574952,
		0.548708, 0.612491, 0.569012,
		-0.792215, 0.163527, 0.587924,
		20.256535, 25.358538, 8.663197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.911463, 24.894194, 8.908276>,  <20.811085, 25.244068, 8.251650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.911463, 24.894194, 8.908276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.512018, 24.875481, 8.917943>,  <20.272350, 24.864252, 8.923743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.512018, 24.875481, 8.917943>,  <20.911463, 24.894194, 8.908276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.512018, 24.875481, 8.917943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052457, -0.843754, 0.534161,
		-0.004598, 0.534687, 0.845037,
		-0.998613, -0.046785, 0.024169,
		20.212435, 24.861444, 8.925194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617619, 25.147448, 9.505395>,  <20.911463, 24.894194, 8.908276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617619, 25.147448, 9.505395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.447866, 24.837894, 9.317349>,  <20.346014, 24.652163, 9.204522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.447866, 24.837894, 9.317349>,  <20.617619, 25.147448, 9.505395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.447866, 24.837894, 9.317349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094249, -0.554117, 0.827086,
		-0.900565, 0.306693, 0.308095,
		-0.424382, -0.773882, -0.470113,
		20.320551, 24.605730, 9.176315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.916216, 24.965197, 9.806003>,  <20.617619, 25.147448, 9.505395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.916216, 24.965197, 9.806003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.140799, 24.667557, 9.661181>,  <20.275549, 24.488974, 9.574288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.140799, 24.667557, 9.661181>,  <19.916216, 24.965197, 9.806003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140799, 24.667557, 9.661181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033179, -0.457415, 0.888634,
		-0.826840, -0.486918, -0.281508,
		0.561458, -0.744098, -0.362054,
		20.309237, 24.444328, 9.552566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.666479, 24.384478, 10.050195>,  <19.916216, 24.965197, 9.806003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.666479, 24.384478, 10.050195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.043287, 24.278288, 9.968102>,  <20.269373, 24.214575, 9.918847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.043287, 24.278288, 9.968102>,  <19.666479, 24.384478, 10.050195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043287, 24.278288, 9.968102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044194, -0.508132, 0.860145,
		-0.332630, -0.819345, -0.466939,
		0.942022, -0.265474, -0.205230,
		20.325893, 24.198645, 9.906533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.849838, 23.591745, 10.141529>,  <19.666479, 24.384478, 10.050195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.849838, 23.591745, 10.141529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.192804, 23.793318, 10.183276>,  <20.398584, 23.914261, 10.208324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.192804, 23.793318, 10.183276>,  <19.849838, 23.591745, 10.141529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.192804, 23.793318, 10.183276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248519, -0.583042, 0.773499,
		0.450640, -0.637273, -0.625145,
		0.857416, 0.503929, 0.104368,
		20.450029, 23.944496, 10.214586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187229, 23.177885, 10.450449>,  <19.849838, 23.591745, 10.141529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187229, 23.177885, 10.450449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.464994, 23.465172, 10.468112>,  <20.631655, 23.637545, 10.478710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.464994, 23.465172, 10.468112>,  <20.187229, 23.177885, 10.450449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.464994, 23.465172, 10.468112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444103, -0.476053, 0.759043,
		0.566181, -0.507480, -0.649541,
		0.694415, 0.718219, 0.044159,
		20.673319, 23.680637, 10.481359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.856850, 22.883770, 10.405844>,  <20.187229, 23.177885, 10.450449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.856850, 22.883770, 10.405844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.867214, 23.219976, 10.622312>,  <20.873432, 23.421700, 10.752192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.867214, 23.219976, 10.622312>,  <20.856850, 22.883770, 10.405844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867214, 23.219976, 10.622312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021526, -0.540757, 0.840903,
		0.999432, -0.033437, 0.004082,
		0.025911, 0.840514, 0.541170,
		20.874987, 23.472130, 10.784662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.452467, 22.813486, 10.865715>,  <20.856850, 22.883770, 10.405844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.452467, 22.813486, 10.865715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.211039, 23.080271, 11.040468>,  <21.066181, 23.240341, 11.145320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.211039, 23.080271, 11.040468>,  <21.452467, 22.813486, 10.865715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211039, 23.080271, 11.040468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186035, -0.415015, 0.890592,
		0.775301, 0.618811, 0.126413,
		-0.603572, 0.666960, 0.436882,
		21.029966, 23.280359, 11.171533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857407, 23.057413, 11.392269>,  <21.452467, 22.813486, 10.865715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.857407, 23.057413, 11.392269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.477798, 23.133024, 11.493166>,  <21.250032, 23.178391, 11.553704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.477798, 23.133024, 11.493166>,  <21.857407, 23.057413, 11.392269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.477798, 23.133024, 11.493166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145133, -0.448327, 0.882009,
		0.279812, 0.873654, 0.398038,
		-0.949022, 0.189028, 0.252243,
		21.193092, 23.189734, 11.568839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.909283, 23.081657, 12.082847>,  <21.857407, 23.057413, 11.392269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.909283, 23.081657, 12.082847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.513693, 23.047907, 12.034172>,  <21.276339, 23.027657, 12.004967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.513693, 23.047907, 12.034172>,  <21.909283, 23.081657, 12.082847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513693, 23.047907, 12.034172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057928, -0.535833, 0.842334,
		-0.136277, 0.840097, 0.525038,
		-0.988976, -0.084376, -0.121687,
		21.217001, 23.022594, 11.997665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.711435, 23.283485, 12.731940>,  <21.909283, 23.081657, 12.082847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.711435, 23.283485, 12.731940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.407467, 23.086567, 12.562157>,  <21.225086, 22.968416, 12.460287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.407467, 23.086567, 12.562157>,  <21.711435, 23.283485, 12.731940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.407467, 23.086567, 12.562157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110164, -0.546010, 0.830504,
		-0.640612, 0.677878, 0.360692,
		-0.759922, -0.492295, -0.424458,
		21.179491, 22.938879, 12.434819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177345, 23.300362, 13.172697>,  <21.711435, 23.283485, 12.731940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177345, 23.300362, 13.172697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.128996, 22.972967, 12.948030>,  <21.099987, 22.776531, 12.813231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.128996, 22.972967, 12.948030>,  <21.177345, 23.300362, 13.172697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128996, 22.972967, 12.948030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046490, -0.569862, 0.820425,
		-0.991579, 0.073054, 0.106932,
		-0.120871, -0.818487, -0.561667,
		21.092735, 22.727421, 12.779531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.773605, 22.992447, 13.575331>,  <21.177345, 23.300362, 13.172697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.773605, 22.992447, 13.575331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.904118, 22.709349, 13.324687>,  <20.982426, 22.539490, 13.174301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.904118, 22.709349, 13.324687>,  <20.773605, 22.992447, 13.575331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.904118, 22.709349, 13.324687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088375, -0.682823, 0.725218,
		-0.941133, -0.181248, -0.285339,
		0.326281, -0.707743, -0.626609,
		21.002003, 22.497026, 13.136704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.299541, 22.423124, 13.734693>,  <20.773605, 22.992447, 13.575331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.299541, 22.423124, 13.734693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.630129, 22.271811, 13.567909>,  <20.828482, 22.181023, 13.467839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.630129, 22.271811, 13.567909>,  <20.299541, 22.423124, 13.734693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.630129, 22.271811, 13.567909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000557, -0.741170, 0.671318,
		-0.562983, -0.554590, -0.612764,
		0.826468, -0.378282, -0.416957,
		20.878069, 22.158325, 13.442822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168190, 21.758070, 13.802030>,  <20.299541, 22.423124, 13.734693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168190, 21.758070, 13.802030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.561512, 21.785954, 13.734798>,  <20.797504, 21.802685, 13.694460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.561512, 21.785954, 13.734798>,  <20.168190, 21.758070, 13.802030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.561512, 21.785954, 13.734798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163077, -0.747384, 0.644068,
		-0.080720, -0.660725, -0.746275,
		0.983306, 0.069711, -0.168078,
		20.856504, 21.806868, 13.684375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417078, 21.075964, 13.512528>,  <20.168190, 21.758070, 13.802030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417078, 21.075964, 13.512528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726482, 21.286877, 13.653188>,  <20.912125, 21.413424, 13.737583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.726482, 21.286877, 13.653188>,  <20.417078, 21.075964, 13.512528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726482, 21.286877, 13.653188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289003, -0.787243, 0.544725,
		0.564056, -0.319724, -0.761327,
		0.773511, 0.527281, 0.351648,
		20.958536, 21.445061, 13.758682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.898697, 20.549343, 13.514235>,  <20.417078, 21.075964, 13.512528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.898697, 20.549343, 13.514235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.996546, 20.841158, 13.769714>,  <21.055256, 21.016247, 13.923002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.996546, 20.841158, 13.769714>,  <20.898697, 20.549343, 13.514235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.996546, 20.841158, 13.769714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179523, -0.681400, 0.709553,
		0.952855, -0.058912, -0.297654,
		0.244622, 0.729537, 0.638699,
		21.069933, 21.060019, 13.961324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379856, 20.154129, 13.861663>,  <20.898697, 20.549343, 13.514235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379856, 20.154129, 13.861663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.336288, 20.476486, 14.094445>,  <21.310148, 20.669901, 14.234115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.336288, 20.476486, 14.094445>,  <21.379856, 20.154129, 13.861663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.336288, 20.476486, 14.094445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268375, -0.539858, 0.797827,
		0.957137, 0.243080, -0.157481,
		-0.108919, 0.805894, 0.581955,
		21.303614, 20.718254, 14.269032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.032486, 20.241262, 14.199057>,  <21.379856, 20.154129, 13.861663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.032486, 20.241262, 14.199057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.758556, 20.440111, 14.412181>,  <21.594198, 20.559422, 14.540055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.758556, 20.440111, 14.412181>,  <22.032486, 20.241262, 14.199057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758556, 20.440111, 14.412181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317415, -0.454661, 0.832184,
		0.655947, 0.739020, 0.153568,
		-0.684822, 0.497124, 0.532810,
		21.553110, 20.589249, 14.572024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246309, 20.560955, 14.877219>,  <22.032486, 20.241262, 14.199057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246309, 20.560955, 14.877219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.849766, 20.543167, 14.926577>,  <21.611839, 20.532494, 14.956191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.849766, 20.543167, 14.926577>,  <22.246309, 20.560955, 14.877219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.849766, 20.543167, 14.926577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128557, -0.515981, 0.846898,
		0.026007, 0.855445, 0.517241,
		-0.991361, -0.044469, 0.123393,
		21.552357, 20.529827, 14.963594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.112246, 20.563137, 15.612532>,  <22.246309, 20.560955, 14.877219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.112246, 20.563137, 15.612532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.768080, 20.418617, 15.468783>,  <21.561581, 20.331905, 15.382535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.768080, 20.418617, 15.468783>,  <22.112246, 20.563137, 15.612532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.768080, 20.418617, 15.468783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034787, -0.661924, 0.748764,
		-0.508402, 0.656750, 0.556962,
		-0.860417, -0.361298, -0.359370,
		21.509954, 20.310228, 15.360972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647598, 20.673460, 16.147236>,  <22.112246, 20.563137, 15.612532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647598, 20.673460, 16.147236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.506535, 20.383942, 15.910001>,  <21.421896, 20.210230, 15.767660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.506535, 20.383942, 15.910001>,  <21.647598, 20.673460, 16.147236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.506535, 20.383942, 15.910001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072128, -0.610896, 0.788419,
		-0.932968, 0.320821, 0.163232,
		-0.352658, -0.723796, -0.593087,
		21.400738, 20.166803, 15.732075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.045557, 20.419340, 16.425533>,  <21.647598, 20.673460, 16.147236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.045557, 20.419340, 16.425533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.135359, 20.119524, 16.176443>,  <21.189240, 19.939634, 16.026989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.135359, 20.119524, 16.176443>,  <21.045557, 20.419340, 16.425533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135359, 20.119524, 16.176443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374111, -0.656363, 0.655156,
		-0.899800, 0.085883, -0.427767,
		0.224504, -0.749541, -0.622724,
		21.202709, 19.894661, 15.989626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456778, 20.055069, 16.366901>,  <21.045557, 20.419340, 16.425533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456778, 20.055069, 16.366901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.756636, 19.808084, 16.271593>,  <20.936550, 19.659895, 16.214409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.756636, 19.808084, 16.271593>,  <20.456778, 20.055069, 16.366901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756636, 19.808084, 16.271593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332623, -0.662736, 0.670927,
		-0.572180, -0.423705, -0.702200,
		0.749648, -0.617459, -0.238270,
		20.981529, 19.622847, 16.200111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128687, 19.425907, 16.364862>,  <20.456778, 20.055069, 16.366901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128687, 19.425907, 16.364862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.514772, 19.342871, 16.428450>,  <20.746424, 19.293049, 16.466602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.514772, 19.342871, 16.428450>,  <20.128687, 19.425907, 16.364862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.514772, 19.342871, 16.428450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261018, -0.729465, 0.632258,
		-0.015289, -0.651757, -0.758273,
		0.965212, -0.207590, 0.158968,
		20.804337, 19.280594, 16.476141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173790, 18.622187, 16.291058>,  <20.128687, 19.425907, 16.364862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173790, 18.622187, 16.291058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.505880, 18.732483, 16.484837>,  <20.705135, 18.798660, 16.601105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.505880, 18.732483, 16.484837>,  <20.173790, 18.622187, 16.291058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505880, 18.732483, 16.484837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062221, -0.817807, 0.572120,
		0.553943, -0.505132, -0.661808,
		0.830227, 0.275743, 0.484448,
		20.754948, 18.815207, 16.630171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.774031, 18.162626, 16.111706>,  <20.173790, 18.622187, 16.291058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.774031, 18.162626, 16.111706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.751598, 18.324032, 16.477007>,  <20.738140, 18.420876, 16.696188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.751598, 18.324032, 16.477007>,  <20.774031, 18.162626, 16.111706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.751598, 18.324032, 16.477007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167126, -0.905581, 0.389860,
		0.984339, -0.130766, 0.118221,
		-0.056079, 0.403513, 0.913254,
		20.734776, 18.445086, 16.750982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.310076, 18.107887, 16.543327>,  <20.774031, 18.162626, 16.111706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.310076, 18.107887, 16.543327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.955229, 18.113695, 16.727852>,  <20.742321, 18.117180, 16.838566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.955229, 18.113695, 16.727852>,  <21.310076, 18.107887, 16.543327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955229, 18.113695, 16.727852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157665, -0.929846, 0.332460,
		0.433775, 0.367664, 0.822595,
		-0.887119, 0.014519, 0.461312,
		20.689093, 18.118052, 16.866245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.946316, 18.014956, 16.203382>,  <21.310076, 18.107887, 16.543327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.946316, 18.014956, 16.203382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.238331, 17.787863, 16.051212>,  <22.413540, 17.651608, 15.959910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.238331, 17.787863, 16.051212>,  <21.946316, 18.014956, 16.203382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.238331, 17.787863, 16.051212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188738, 0.702503, -0.686198,
		0.656827, 0.429150, 0.620007,
		0.730039, -0.567732, -0.380426,
		22.457342, 17.617542, 15.937084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.669136, 18.376415, 16.226263>,  <21.946316, 18.014956, 16.203382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.669136, 18.376415, 16.226263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.722239, 18.102892, 15.939270>,  <22.754101, 17.938778, 15.767074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.722239, 18.102892, 15.939270>,  <22.669136, 18.376415, 16.226263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.722239, 18.102892, 15.939270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507227, 0.668791, -0.543544,
		0.851526, -0.291768, 0.435632,
		0.132758, -0.683806, -0.717485,
		22.762066, 17.897751, 15.724025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.377317, 18.507996, 15.861168>,  <22.669136, 18.376415, 16.226263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.377317, 18.507996, 15.861168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.180061, 18.296061, 15.585172>,  <23.061708, 18.168900, 15.419574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.180061, 18.296061, 15.585172>,  <23.377317, 18.507996, 15.861168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.180061, 18.296061, 15.585172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505046, 0.471431, -0.722967,
		0.708337, -0.705000, 0.035111,
		-0.493139, -0.529837, -0.689990,
		23.032120, 18.137110, 15.378175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914923, 18.276720, 15.364438>,  <23.377317, 18.507996, 15.861168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914923, 18.276720, 15.364438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560266, 18.233612, 15.184548>,  <23.347473, 18.207747, 15.076614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.560266, 18.233612, 15.184548>,  <23.914923, 18.276720, 15.364438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.560266, 18.233612, 15.184548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364700, 0.435016, -0.823259,
		0.284362, -0.893950, -0.346399,
		-0.886641, -0.107772, -0.449725,
		23.294273, 18.201281, 15.049631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.040026, 17.927917, 14.641898>,  <23.914923, 18.276720, 15.364438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.040026, 17.927917, 14.641898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.689964, 18.120968, 14.628174>,  <23.479927, 18.236797, 14.619939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.689964, 18.120968, 14.628174>,  <24.040026, 17.927917, 14.641898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.689964, 18.120968, 14.628174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269859, 0.428019, -0.862541,
		-0.401599, -0.764115, -0.504823,
		-0.875154, 0.482627, -0.034311,
		23.427418, 18.265757, 14.617881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.633320, 17.816034, 14.011651>,  <24.040026, 17.927917, 14.641898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.633320, 17.816034, 14.011651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.527872, 18.174475, 14.154486>,  <23.464603, 18.389538, 14.240187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.527872, 18.174475, 14.154486>,  <23.633320, 17.816034, 14.011651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.527872, 18.174475, 14.154486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135643, 0.400938, -0.906008,
		-0.955043, -0.190404, -0.227244,
		-0.263618, 0.896100, 0.357086,
		23.448786, 18.443304, 14.261612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.378904, 18.145065, 13.422978>,  <23.633320, 17.816034, 14.011651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.378904, 18.145065, 13.422978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.402546, 18.438379, 13.693918>,  <23.416731, 18.614368, 13.856482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.402546, 18.438379, 13.693918>,  <23.378904, 18.145065, 13.422978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.402546, 18.438379, 13.693918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062881, 0.674452, -0.735636,
		-0.996269, 0.086070, -0.006248,
		0.059103, 0.733284, 0.677348,
		23.420277, 18.658365, 13.897122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.964060, 18.604492, 13.044406>,  <23.378904, 18.145065, 13.422978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.964060, 18.604492, 13.044406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.133692, 18.824945, 13.331853>,  <23.235470, 18.957216, 13.504321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.133692, 18.824945, 13.331853>,  <22.964060, 18.604492, 13.044406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.133692, 18.824945, 13.331853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196351, 0.718674, -0.667048,
		-0.884084, 0.423982, 0.196558,
		0.424078, 0.551132, 0.718618,
		23.260916, 18.990286, 13.547439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.557514, 19.182333, 13.223864>,  <22.964060, 18.604492, 13.044406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.557514, 19.182333, 13.223864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.920210, 19.309900, 13.334221>,  <23.137827, 19.386440, 13.400435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.920210, 19.309900, 13.334221>,  <22.557514, 19.182333, 13.223864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920210, 19.309900, 13.334221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025822, 0.695011, -0.718536,
		-0.420903, 0.644400, 0.638428,
		0.906738, 0.318919, 0.275892,
		23.192232, 19.405577, 13.416988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.593060, 19.937925, 13.148794>,  <22.557514, 19.182333, 13.223864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.593060, 19.937925, 13.148794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.969076, 19.803909, 13.123264>,  <23.194685, 19.723499, 13.107946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.969076, 19.803909, 13.123264>,  <22.593060, 19.937925, 13.148794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.969076, 19.803909, 13.123264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182800, 0.652916, -0.735040,
		0.287938, 0.679301, 0.675013,
		0.940040, -0.335038, -0.063824,
		23.251089, 19.703398, 13.104117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.968777, 20.610861, 12.976060>,  <22.593060, 19.937925, 13.148794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.968777, 20.610861, 12.976060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.200245, 20.295435, 12.892817>,  <23.339127, 20.106180, 12.842871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.200245, 20.295435, 12.892817>,  <22.968777, 20.610861, 12.976060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.200245, 20.295435, 12.892817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363060, 0.477569, -0.800072,
		0.730294, 0.387422, 0.562650,
		0.578670, -0.788563, -0.208108,
		23.373846, 20.058867, 12.830384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.576298, 20.908632, 12.910655>,  <22.968777, 20.610861, 12.976060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.576298, 20.908632, 12.910655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.581568, 20.562346, 12.710510>,  <23.584730, 20.354574, 12.590424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.581568, 20.562346, 12.710510>,  <23.576298, 20.908632, 12.910655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.581568, 20.562346, 12.710510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490730, 0.441595, -0.751118,
		0.871212, -0.235645, 0.430652,
		0.013176, -0.865717, -0.500361,
		23.585520, 20.302631, 12.560402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322393, 20.870457, 12.722507>,  <23.576298, 20.908632, 12.910655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322393, 20.870457, 12.722507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.096479, 20.631203, 12.495086>,  <23.960930, 20.487650, 12.358633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.096479, 20.631203, 12.495086>,  <24.322393, 20.870457, 12.722507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.096479, 20.631203, 12.495086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345634, 0.454166, -0.821140,
		0.749369, -0.660280, -0.049772,
		-0.564787, -0.598133, -0.568553,
		23.927044, 20.451763, 12.324520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754784, 20.637486, 12.221830>,  <24.322393, 20.870457, 12.722507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754784, 20.637486, 12.221830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.383745, 20.596872, 12.078019>,  <24.161123, 20.572504, 11.991733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.383745, 20.596872, 12.078019>,  <24.754784, 20.637486, 12.221830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383745, 20.596872, 12.078019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297624, 0.380839, -0.875432,
		0.225807, -0.919050, -0.323045,
		-0.927594, -0.101533, -0.359528,
		24.105467, 20.566412, 11.970160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892504, 20.636007, 11.608497>,  <24.754784, 20.637486, 12.221830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892504, 20.636007, 11.608497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.495279, 20.652693, 11.564524>,  <24.256945, 20.662704, 11.538139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.495279, 20.652693, 11.564524>,  <24.892504, 20.636007, 11.608497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.495279, 20.652693, 11.564524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117198, 0.426515, -0.896856,
		0.009477, -0.903518, -0.428445,
		-0.993063, 0.041714, -0.109933,
		24.197361, 20.665207, 11.531544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725330, 20.442734, 10.892951>,  <24.892504, 20.636007, 11.608497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725330, 20.442734, 10.892951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.450512, 20.709352, 11.008660>,  <24.285620, 20.869324, 11.078086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.450512, 20.709352, 11.008660>,  <24.725330, 20.442734, 10.892951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.450512, 20.709352, 11.008660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058596, 0.447641, -0.892292,
		-0.724246, -0.596096, -0.346607,
		-0.687047, 0.666549, 0.289273,
		24.244398, 20.909317, 11.095442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.374155, 20.500040, 10.300640>,  <24.725330, 20.442734, 10.892951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.374155, 20.500040, 10.300640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279284, 20.811333, 10.533225>,  <24.222361, 20.998108, 10.672776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279284, 20.811333, 10.533225>,  <24.374155, 20.500040, 10.300640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279284, 20.811333, 10.533225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131612, 0.618764, -0.774473,
		-0.962509, -0.107163, -0.249184,
		-0.237181, 0.778233, 0.581462,
		24.208130, 21.044804, 10.707664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.968784, 20.848591, 9.872145>,  <24.374155, 20.500040, 10.300640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.968784, 20.848591, 9.872145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.036739, 21.128656, 10.149535>,  <24.077513, 21.296696, 10.315969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.036739, 21.128656, 10.149535>,  <23.968784, 20.848591, 9.872145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.036739, 21.128656, 10.149535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162324, 0.674211, -0.720479,
		-0.972003, 0.234968, 0.000886,
		0.169887, 0.700164, 0.693476,
		24.087706, 21.338705, 10.357578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.624958, 21.444496, 9.580407>,  <23.968784, 20.848591, 9.872145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.624958, 21.444496, 9.580407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.849968, 21.602743, 9.870801>,  <23.984974, 21.697691, 10.045037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.849968, 21.602743, 9.870801>,  <23.624958, 21.444496, 9.580407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.849968, 21.602743, 9.870801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194680, 0.790016, -0.581355,
		-0.803533, 0.468362, 0.367386,
		0.562525, 0.395615, 0.725985,
		24.018726, 21.721428, 10.088596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.103241, 16.277220, 22.733629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782378, 16.174898, 22.517813>,  <14.589860, 16.113504, 22.388323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782378, 16.174898, 22.517813>,  <15.103241, 16.277220, 22.733629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.782378, 16.174898, 22.517813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439442, 0.358858, -0.823475,
		0.404274, -0.897653, -0.175445,
		-0.802155, -0.255812, -0.539544,
		14.541731, 16.098156, 22.355949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412472, 16.097015, 22.205851>,  <15.103241, 16.277220, 22.733629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412472, 16.097015, 22.205851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042220, 16.152409, 22.064978>,  <14.820069, 16.185644, 21.980453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042220, 16.152409, 22.064978>,  <15.412472, 16.097015, 22.205851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.042220, 16.152409, 22.064978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377110, 0.259894, -0.888956,
		-0.031577, -0.955655, -0.292789,
		-0.925630, 0.138484, -0.352180,
		14.764531, 16.193953, 21.959324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.348854, 15.752180, 21.540289>,  <15.412472, 16.097015, 22.205851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.348854, 15.752180, 21.540289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072042, 16.040922, 21.538731>,  <14.905953, 16.214167, 21.537796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072042, 16.040922, 21.538731>,  <15.348854, 15.752180, 21.540289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072042, 16.040922, 21.538731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327080, 0.308745, -0.893138,
		-0.643514, -0.619355, -0.449766,
		-0.692032, 0.721856, -0.003897,
		14.864431, 16.257479, 21.537561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.066580, 15.693041, 20.836124>,  <15.348854, 15.752180, 21.540289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.066580, 15.693041, 20.836124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942821, 16.044344, 20.981964>,  <14.868565, 16.255127, 21.069468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942821, 16.044344, 20.981964>,  <15.066580, 15.693041, 20.836124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.942821, 16.044344, 20.981964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233927, 0.441927, -0.866013,
		-0.921711, -0.182652, -0.342179,
		-0.309398, 0.878259, 0.364602,
		14.850001, 16.307821, 21.091345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547244, 16.052483, 20.320761>,  <15.066580, 15.693041, 20.836124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547244, 16.052483, 20.320761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701601, 16.347933, 20.541857>,  <14.794215, 16.525202, 20.674515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701601, 16.347933, 20.541857>,  <14.547244, 16.052483, 20.320761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701601, 16.347933, 20.541857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210702, 0.512747, -0.832283,
		-0.898160, 0.437635, 0.042236,
		0.385893, 0.738624, 0.552739,
		14.817369, 16.569521, 20.707678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.360593, 16.647623, 19.941284>,  <14.547244, 16.052483, 20.320761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.360593, 16.647623, 19.941284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653955, 16.778254, 20.179768>,  <14.829973, 16.856632, 20.322857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653955, 16.778254, 20.179768>,  <14.360593, 16.647623, 19.941284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653955, 16.778254, 20.179768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417338, 0.476005, -0.774111,
		-0.536604, 0.816558, 0.212813,
		0.733407, 0.326576, 0.596207,
		14.873978, 16.876226, 20.358629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601713, 17.202732, 19.671356>,  <14.360593, 16.647623, 19.941284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601713, 17.202732, 19.671356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907348, 17.134310, 19.920166>,  <15.090728, 17.093256, 20.069452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907348, 17.134310, 19.920166>,  <14.601713, 17.202732, 19.671356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907348, 17.134310, 19.920166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618067, 0.470379, -0.629871,
		-0.184843, 0.865727, 0.465134,
		0.764085, -0.171056, 0.622024,
		15.136574, 17.082993, 20.106773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.881083, 17.820354, 19.834692>,  <14.601713, 17.202732, 19.671356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.881083, 17.820354, 19.834692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183885, 17.562559, 19.877735>,  <15.365565, 17.407883, 19.903561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183885, 17.562559, 19.877735>,  <14.881083, 17.820354, 19.834692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.183885, 17.562559, 19.877735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530109, 0.509487, -0.677795,
		0.382005, 0.570138, 0.727333,
		0.757004, -0.644488, 0.107609,
		15.410986, 17.369213, 19.910017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532164, 18.253426, 19.851345>,  <14.881083, 17.820354, 19.834692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532164, 18.253426, 19.851345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658532, 17.885347, 19.758879>,  <15.734353, 17.664501, 19.703400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658532, 17.885347, 19.758879>,  <15.532164, 18.253426, 19.851345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658532, 17.885347, 19.758879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748634, 0.391443, -0.535088,
		0.582873, -0.004013, 0.812553,
		0.315921, -0.920194, -0.231166,
		15.753308, 17.609289, 19.689529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160431, 18.368668, 19.842072>,  <15.532164, 18.253426, 19.851345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.160431, 18.368668, 19.842072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160490, 18.006947, 19.671312>,  <16.160526, 17.789915, 19.568857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.160490, 18.006947, 19.671312>,  <16.160431, 18.368668, 19.842072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160490, 18.006947, 19.671312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753942, 0.280547, -0.594024,
		0.656940, -0.321766, 0.681833,
		0.000149, -0.904301, -0.426896,
		16.160534, 17.735657, 19.543243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822916, 18.106306, 19.840164>,  <16.160431, 18.368668, 19.842072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822916, 18.106306, 19.840164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628679, 17.945929, 19.529438>,  <16.512136, 17.849703, 19.343002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628679, 17.945929, 19.529438>,  <16.822916, 18.106306, 19.840164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628679, 17.945929, 19.529438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695345, 0.361401, -0.621196,
		0.529806, -0.841804, 0.103299,
		-0.485593, -0.400942, -0.776817,
		16.483002, 17.825645, 19.296392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375774, 17.903357, 19.431314>,  <16.822916, 18.106306, 19.840164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375774, 17.903357, 19.431314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074791, 17.916000, 19.168161>,  <16.894201, 17.923588, 19.010269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074791, 17.916000, 19.168161>,  <17.375774, 17.903357, 19.431314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074791, 17.916000, 19.168161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560331, 0.555710, -0.614179,
		0.346177, -0.830775, -0.435861,
		-0.752457, 0.031612, -0.657883,
		16.849054, 17.925484, 18.970797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.671083, 18.121592, 18.765265>,  <17.375774, 17.903357, 19.431314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.671083, 18.121592, 18.765265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285131, 18.145916, 18.663038>,  <17.053560, 18.160511, 18.601704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285131, 18.145916, 18.663038>,  <17.671083, 18.121592, 18.765265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285131, 18.145916, 18.663038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231730, 0.655271, -0.718973,
		0.123742, -0.752942, -0.646348,
		-0.964878, 0.060811, -0.255564,
		16.995668, 18.164160, 18.586369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822977, 17.343102, 18.774439>,  <17.671083, 18.121592, 18.765265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.822977, 17.343102, 18.774439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.211340, 17.431158, 18.736744>,  <18.444357, 17.483992, 18.714127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.211340, 17.431158, 18.736744>,  <17.822977, 17.343102, 18.774439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211340, 17.431158, 18.736744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224932, -0.703416, 0.674249,
		0.082143, -0.675829, -0.732467,
		0.970906, 0.220140, -0.094235,
		18.502611, 17.497200, 18.708473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469801, 17.122032, 18.229689>,  <17.822977, 17.343102, 18.774439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469801, 17.122032, 18.229689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823851, 16.988092, 18.358952>,  <19.036280, 16.907728, 18.436508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823851, 16.988092, 18.358952>,  <18.469801, 17.122032, 18.229689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823851, 16.988092, 18.358952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424163, -0.866167, 0.264274,
		0.191415, -0.370986, -0.908697,
		0.885125, -0.334850, 0.323156,
		19.089388, 16.887638, 18.455898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432352, 16.432533, 18.104446>,  <18.469801, 17.122032, 18.229689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.432352, 16.432533, 18.104446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740768, 16.467197, 18.356791>,  <18.925819, 16.487995, 18.508198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740768, 16.467197, 18.356791>,  <18.432352, 16.432533, 18.104446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740768, 16.467197, 18.356791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301495, -0.822939, 0.481532,
		0.560888, -0.561482, -0.608393,
		0.771042, 0.086658, 0.630861,
		18.972080, 16.493195, 18.546049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640205, 15.797216, 18.077280>,  <18.432352, 16.432533, 18.104446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640205, 15.797216, 18.077280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.770626, 15.978496, 18.409136>,  <18.848879, 16.087263, 18.608250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.770626, 15.978496, 18.409136>,  <18.640205, 15.797216, 18.077280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770626, 15.978496, 18.409136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462716, -0.688779, 0.558102,
		0.824369, -0.565857, -0.014875,
		0.326052, 0.453199, 0.829639,
		18.868443, 16.114454, 18.658028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869860, 15.245552, 18.479839>,  <18.640205, 15.797216, 18.077280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.869860, 15.245552, 18.479839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781458, 15.559908, 18.710848>,  <18.728416, 15.748522, 18.849453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781458, 15.559908, 18.710848>,  <18.869860, 15.245552, 18.479839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781458, 15.559908, 18.710848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594841, -0.577889, 0.558756,
		0.772865, -0.220045, 0.595198,
		-0.221007, 0.785891, 0.577522,
		18.715157, 15.795675, 18.884104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.721954, 14.968995, 19.111826>,  <18.869860, 15.245552, 18.479839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.721954, 14.968995, 19.111826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612139, 15.347293, 19.181334>,  <18.546249, 15.574272, 19.223038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612139, 15.347293, 19.181334>,  <18.721954, 14.968995, 19.111826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.612139, 15.347293, 19.181334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578637, -0.306817, 0.755674,
		0.767990, 0.106910, 0.631476,
		-0.274537, 0.945745, 0.173770,
		18.529778, 15.631017, 19.233465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887575, 15.032992, 19.903080>,  <18.721954, 14.968995, 19.111826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887575, 15.032992, 19.903080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606619, 15.296103, 19.794283>,  <18.438046, 15.453969, 19.729004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606619, 15.296103, 19.794283>,  <18.887575, 15.032992, 19.903080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.606619, 15.296103, 19.794283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515640, -0.206794, 0.831476,
		0.490678, 0.724270, 0.484425,
		-0.702389, 0.657776, -0.271993,
		18.395903, 15.493435, 19.712685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548981, 15.259148, 20.561829>,  <18.887575, 15.032992, 19.903080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548981, 15.259148, 20.561829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282919, 15.362458, 20.281582>,  <18.123281, 15.424444, 20.113434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282919, 15.362458, 20.281582>,  <18.548981, 15.259148, 20.561829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282919, 15.362458, 20.281582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745739, -0.182038, 0.640886,
		0.037987, 0.948765, 0.313691,
		-0.665154, 0.258277, -0.700616,
		18.083372, 15.439941, 20.071398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185867, 15.833559, 20.817411>,  <18.548981, 15.259148, 20.561829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185867, 15.833559, 20.817411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953983, 15.639197, 20.555775>,  <17.814854, 15.522580, 20.398792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.953983, 15.639197, 20.555775>,  <18.185867, 15.833559, 20.817411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953983, 15.639197, 20.555775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745172, -0.008594, 0.666817,
		-0.329630, 0.873970, -0.357099,
		-0.579710, -0.485903, -0.654091,
		17.780071, 15.493426, 20.359547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533077, 16.029432, 21.034376>,  <18.185867, 15.833559, 20.817411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.533077, 16.029432, 21.034376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451338, 15.724756, 20.788427>,  <17.402294, 15.541950, 20.640858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451338, 15.724756, 20.788427>,  <17.533077, 16.029432, 21.034376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.451338, 15.724756, 20.788427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792080, -0.240424, 0.561076,
		-0.575196, 0.601684, -0.554190,
		-0.204350, -0.761691, -0.614872,
		17.390034, 15.496249, 20.603966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785915, 15.945527, 20.903271>,  <17.533077, 16.029432, 21.034376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785915, 15.945527, 20.903271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930029, 15.578331, 20.836950>,  <17.016497, 15.358013, 20.797157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930029, 15.578331, 20.836950>,  <16.785915, 15.945527, 20.903271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930029, 15.578331, 20.836950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777818, -0.393747, 0.489859,
		-0.514969, -0.047525, -0.855890,
		0.360285, -0.917989, -0.165802,
		17.038115, 15.302935, 20.787210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262033, 15.469130, 21.088984>,  <16.785915, 15.945527, 20.903271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262033, 15.469130, 21.088984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565666, 15.210426, 21.059330>,  <16.747847, 15.055204, 21.041538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565666, 15.210426, 21.059330>,  <16.262033, 15.469130, 21.088984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.565666, 15.210426, 21.059330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494810, -0.647213, 0.579895,
		-0.423031, -0.403508, -0.811311,
		0.759084, -0.646758, -0.074131,
		16.793392, 15.016399, 21.037090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.998670, 14.759827, 20.858112>,  <16.262033, 15.469130, 21.088984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.998670, 14.759827, 20.858112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350868, 14.708315, 21.040604>,  <16.562187, 14.677408, 21.150099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350868, 14.708315, 21.040604>,  <15.998670, 14.759827, 20.858112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.350868, 14.708315, 21.040604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382761, -0.760917, 0.523926,
		0.279680, -0.635940, -0.719277,
		0.880496, -0.128780, 0.456227,
		16.615017, 14.669681, 21.177471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027922, 14.094898, 20.911449>,  <15.998670, 14.759827, 20.858112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.027922, 14.094898, 20.911449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292688, 14.236336, 21.175825>,  <16.451548, 14.321198, 21.334450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292688, 14.236336, 21.175825>,  <16.027922, 14.094898, 20.911449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292688, 14.236336, 21.175825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524172, -0.411960, 0.745341,
		0.535828, -0.839798, -0.087339,
		0.661916, 0.353594, 0.660938,
		16.491262, 14.342414, 21.374107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131073, 13.598395, 21.325153>,  <16.027922, 14.094898, 20.911449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.131073, 13.598395, 21.325153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206322, 13.928826, 21.537645>,  <16.251471, 14.127085, 21.665140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.206322, 13.928826, 21.537645>,  <16.131073, 13.598395, 21.325153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206322, 13.928826, 21.537645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496654, -0.386620, 0.777084,
		0.847316, -0.410025, 0.337542,
		0.188123, 0.826078, 0.531230,
		16.262758, 14.176650, 21.697014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168486, 12.881933, 21.297081>,  <16.131073, 13.598395, 21.325153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.168486, 12.881933, 21.297081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944439, 12.572201, 21.179316>,  <15.810011, 12.386361, 21.108656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944439, 12.572201, 21.179316>,  <16.168486, 12.881933, 21.297081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944439, 12.572201, 21.179316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138444, 0.262903, -0.954838,
		0.816763, -0.575580, -0.040055,
		-0.560117, -0.774331, -0.294415,
		15.776403, 12.339901, 21.090992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494507, 12.505532, 20.624666>,  <16.168486, 12.881933, 21.297081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.494507, 12.505532, 20.624666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097597, 12.458714, 20.608225>,  <15.859451, 12.430624, 20.598360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.097597, 12.458714, 20.608225>,  <16.494507, 12.505532, 20.624666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.097597, 12.458714, 20.608225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034439, 0.058389, -0.997700,
		0.119180, -0.991408, -0.053907,
		-0.992275, -0.117049, -0.041102,
		15.799914, 12.423601, 20.595894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373299, 12.311797, 19.826801>,  <16.494507, 12.505532, 20.624666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373299, 12.311797, 19.826801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002438, 12.364758, 19.967009>,  <15.779922, 12.396534, 20.051132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002438, 12.364758, 19.967009>,  <16.373299, 12.311797, 19.826801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002438, 12.364758, 19.967009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295440, 0.317039, -0.901222,
		-0.230450, -0.939125, -0.254826,
		-0.927150, 0.132401, 0.350517,
		15.724293, 12.404478, 20.072165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.896619, 12.087583, 19.262304>,  <16.373299, 12.311797, 19.826801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.896619, 12.087583, 19.262304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694761, 12.325612, 19.512495>,  <15.573647, 12.468430, 19.662609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694761, 12.325612, 19.512495>,  <15.896619, 12.087583, 19.262304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.694761, 12.325612, 19.512495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359285, 0.514018, -0.778909,
		-0.785015, -0.617796, -0.045595,
		-0.504643, 0.595074, 0.625477,
		15.543368, 12.504134, 19.700138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102262, 12.090835, 19.109236>,  <15.896619, 12.087583, 19.262304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102262, 12.090835, 19.109236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189539, 12.443254, 19.277115>,  <15.241904, 12.654706, 19.377842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189539, 12.443254, 19.277115>,  <15.102262, 12.090835, 19.109236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189539, 12.443254, 19.277115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558836, 0.465366, -0.686394,
		-0.800059, -0.084778, 0.593900,
		0.218190, 0.881049, 0.419697,
		15.254996, 12.707569, 19.403025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727892, 12.580482, 18.676752>,  <15.102262, 12.090835, 19.109236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727892, 12.580482, 18.676752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971574, 12.829488, 18.873260>,  <15.117783, 12.978891, 18.991165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971574, 12.829488, 18.873260>,  <14.727892, 12.580482, 18.676752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971574, 12.829488, 18.873260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186781, 0.714706, -0.674024,
		-0.770703, 0.318859, 0.551675,
		0.609204, 0.622515, 0.491269,
		15.154335, 13.016242, 19.020641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352046, 13.117496, 18.712368>,  <14.727892, 12.580482, 18.676752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352046, 13.117496, 18.712368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715522, 13.268816, 18.782990>,  <14.933607, 13.359609, 18.825363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715522, 13.268816, 18.782990>,  <14.352046, 13.117496, 18.712368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.715522, 13.268816, 18.782990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225458, 0.800632, -0.555119,
		-0.351357, 0.464625, 0.812817,
		0.908690, 0.378301, 0.176554,
		14.988129, 13.382306, 18.835957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.225082, 13.751093, 18.874870>,  <14.352046, 13.117496, 18.712368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.225082, 13.751093, 18.874870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611536, 13.733787, 18.773115>,  <14.843409, 13.723403, 18.712061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611536, 13.733787, 18.773115>,  <14.225082, 13.751093, 18.874870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611536, 13.733787, 18.773115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079479, 0.888020, -0.452884,
		0.245497, 0.457766, 0.854507,
		0.966134, -0.043266, -0.254389,
		14.901376, 13.720807, 18.696798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.616254, 14.363432, 19.072266>,  <14.225082, 13.751093, 18.874870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.616254, 14.363432, 19.072266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.770409, 14.233253, 18.726883>,  <14.862902, 14.155147, 18.519653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.770409, 14.233253, 18.726883>,  <14.616254, 14.363432, 19.072266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.770409, 14.233253, 18.726883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024440, 0.931812, -0.362118,
		0.922431, 0.160659, 0.351155,
		0.385388, -0.325446, -0.863459,
		14.886024, 14.135619, 18.467846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894638, 15.000953, 18.843369>,  <14.616254, 14.363432, 19.072266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894638, 15.000953, 18.843369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919170, 14.737341, 18.543524>,  <14.933889, 14.579174, 18.363617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919170, 14.737341, 18.543524>,  <14.894638, 15.000953, 18.843369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919170, 14.737341, 18.543524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018773, 0.751656, -0.659288,
		0.997941, 0.026362, 0.058471,
		0.061330, -0.659029, -0.749613,
		14.937570, 14.539633, 18.318640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.421976, 15.239776, 18.397284>,  <14.894638, 15.000953, 18.843369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.421976, 15.239776, 18.397284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198190, 14.992513, 18.176420>,  <15.063918, 14.844154, 18.043901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198190, 14.992513, 18.176420>,  <15.421976, 15.239776, 18.397284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.198190, 14.992513, 18.176420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245796, 0.759940, -0.601728,
		0.791574, -0.200924, -0.577097,
		-0.559460, -0.618160, -0.552162,
		15.030350, 14.807065, 18.010773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523108, 15.442645, 17.781101>,  <15.421976, 15.239776, 18.397284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.523108, 15.442645, 17.781101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179667, 15.239820, 17.750917>,  <14.973603, 15.118126, 17.732807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179667, 15.239820, 17.750917>,  <15.523108, 15.442645, 17.781101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179667, 15.239820, 17.750917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355649, 0.695180, -0.624691,
		0.369215, -0.509523, -0.777217,
		-0.858600, -0.507062, -0.075460,
		14.922088, 15.087702, 17.728279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.504388, 10.789218, 25.563652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.838120, 10.646313, 25.731585>,  <13.038359, 10.560570, 25.832344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.838120, 10.646313, 25.731585>,  <12.504388, 10.789218, 25.563652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838120, 10.646313, 25.731585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348329, -0.248625, -0.903799,
		0.427275, 0.900305, -0.082990,
		0.834328, -0.357263, 0.419834,
		13.088418, 10.539134, 25.857534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.028481, 11.109982, 25.284063>,  <12.504388, 10.789218, 25.563652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.028481, 11.109982, 25.284063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.185001, 10.744318, 25.326393>,  <13.278913, 10.524920, 25.351791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.185001, 10.744318, 25.326393>,  <13.028481, 11.109982, 25.284063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.185001, 10.744318, 25.326393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482861, 0.106058, -0.869251,
		0.783410, 0.391236, 0.482912,
		0.391299, -0.914159, 0.105825,
		13.302391, 10.470070, 25.358141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.714705, 11.271480, 25.161175>,  <13.028481, 11.109982, 25.284063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.714705, 11.271480, 25.161175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.686729, 10.879832, 25.084822>,  <13.669944, 10.644844, 25.039009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.686729, 10.879832, 25.084822>,  <13.714705, 11.271480, 25.161175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686729, 10.879832, 25.084822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660410, 0.097967, -0.744487,
		0.747641, -0.178129, 0.639768,
		-0.069939, -0.979118, -0.190882,
		13.665748, 10.586097, 25.027557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452706, 10.923209, 25.206106>,  <13.714705, 11.271480, 25.161175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452706, 10.923209, 25.206106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.222882, 10.710151, 24.957537>,  <14.084988, 10.582315, 24.808395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.222882, 10.710151, 24.957537>,  <14.452706, 10.923209, 25.206106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222882, 10.710151, 24.957537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669597, 0.130707, -0.731133,
		0.470659, -0.836185, 0.281558,
		-0.574560, -0.532645, -0.621425,
		14.050514, 10.550357, 24.771109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.914115, 10.480715, 24.946123>,  <14.452706, 10.923209, 25.206106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.914115, 10.480715, 24.946123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.600538, 10.492368, 24.698063>,  <14.412393, 10.499359, 24.549227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.600538, 10.492368, 24.698063>,  <14.914115, 10.480715, 24.946123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600538, 10.492368, 24.698063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620805, 0.046706, -0.782573,
		0.006165, -0.998484, -0.054701,
		-0.783941, 0.029134, -0.620151,
		14.365355, 10.501107, 24.512018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192035, 10.193678, 24.311550>,  <14.914115, 10.480715, 24.946123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192035, 10.193678, 24.311550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.846415, 10.330091, 24.163435>,  <14.639042, 10.411939, 24.074566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.846415, 10.330091, 24.163435>,  <15.192035, 10.193678, 24.311550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846415, 10.330091, 24.163435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425352, 0.101182, -0.899354,
		-0.269243, -0.934590, -0.232486,
		-0.864051, 0.341033, -0.370288,
		14.587199, 10.432401, 24.052349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.098962, 9.860211, 23.637260>,  <15.192035, 10.193678, 24.311550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.098962, 9.860211, 23.637260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.857639, 10.179173, 23.632051>,  <14.712846, 10.370549, 23.628925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.857639, 10.179173, 23.632051>,  <15.098962, 9.860211, 23.637260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857639, 10.179173, 23.632051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254928, 0.177352, -0.950557,
		-0.755667, -0.576797, -0.310278,
		-0.603306, 0.797403, -0.013023,
		14.676647, 10.418393, 23.628145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737269, 9.843678, 22.890331>,  <15.098962, 9.860211, 23.637260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737269, 9.843678, 22.890331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.700665, 10.221258, 23.017189>,  <14.678701, 10.447806, 23.093304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.700665, 10.221258, 23.017189>,  <14.737269, 9.843678, 22.890331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.700665, 10.221258, 23.017189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301140, 0.329800, -0.894733,
		-0.949179, 0.013627, -0.314442,
		-0.091511, 0.943952, 0.317143,
		14.673211, 10.504444, 23.112331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.648692, 10.203918, 22.220463>,  <14.737269, 9.843678, 22.890331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.648692, 10.203918, 22.220463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.758406, 10.477210, 22.491156>,  <14.824234, 10.641186, 22.653570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.758406, 10.477210, 22.491156>,  <14.648692, 10.203918, 22.220463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.758406, 10.477210, 22.491156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232454, 0.635744, -0.736067,
		-0.933131, 0.359200, 0.015555,
		0.274285, 0.683231, 0.676730,
		14.840691, 10.682179, 22.694174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321823, 10.760151, 22.053328>,  <14.648692, 10.203918, 22.220463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321823, 10.760151, 22.053328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.632955, 10.884597, 22.271755>,  <14.819633, 10.959265, 22.402811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.632955, 10.884597, 22.271755>,  <14.321823, 10.760151, 22.053328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632955, 10.884597, 22.271755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285443, 0.599205, -0.747981,
		-0.559914, 0.737672, 0.377274,
		0.777829, 0.311115, 0.546067,
		14.866303, 10.977931, 22.435575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317451, 11.486822, 22.189844>,  <14.321823, 10.760151, 22.053328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317451, 11.486822, 22.189844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.706013, 11.402379, 22.233313>,  <14.939150, 11.351713, 22.259394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.706013, 11.402379, 22.233313>,  <14.317451, 11.486822, 22.189844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706013, 11.402379, 22.233313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208503, 0.539472, -0.815780,
		0.113592, 0.815109, 0.568061,
		0.971403, -0.211109, 0.108673,
		14.997434, 11.339046, 22.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.540226, 12.119744, 22.196795>,  <14.317451, 11.486822, 22.189844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.540226, 12.119744, 22.196795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.842008, 11.869240, 22.118210>,  <15.023077, 11.718937, 22.071058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.842008, 11.869240, 22.118210>,  <14.540226, 12.119744, 22.196795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.842008, 11.869240, 22.118210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298223, 0.593722, -0.747367,
		0.584690, 0.505264, 0.634701,
		0.754454, -0.626260, -0.196462,
		15.068344, 11.681362, 22.059271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050223, 12.557505, 22.070095>,  <14.540226, 12.119744, 22.196795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.050223, 12.557505, 22.070095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.208627, 12.230877, 21.902100>,  <15.303669, 12.034900, 21.801302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.208627, 12.230877, 21.902100>,  <15.050223, 12.557505, 22.070095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.208627, 12.230877, 21.902100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331672, 0.553703, -0.763811,
		0.856253, 0.163178, 0.490105,
		0.396010, -0.816570, -0.419988,
		15.327430, 11.985906, 21.776104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.640800, 12.813999, 21.801983>,  <15.050223, 12.557505, 22.070095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.640800, 12.813999, 21.801983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611637, 12.470856, 21.598509>,  <15.594140, 12.264970, 21.476423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611637, 12.470856, 21.598509>,  <15.640800, 12.813999, 21.801983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611637, 12.470856, 21.598509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332084, 0.460060, -0.823447,
		0.940428, -0.228961, 0.251340,
		-0.072906, -0.857859, -0.508687,
		15.589766, 12.213498, 21.445902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301044, 13.230630, 22.023529>,  <15.640800, 12.813999, 21.801983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301044, 13.230630, 22.023529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.275734, 13.620320, 22.110136>,  <16.260548, 13.854135, 22.162100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.275734, 13.620320, 22.110136>,  <16.301044, 13.230630, 22.023529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275734, 13.620320, 22.110136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574739, -0.212935, 0.790148,
		0.815887, -0.074441, 0.573400,
		-0.063278, 0.974226, 0.216515,
		16.256750, 13.912588, 22.175091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540150, 13.300396, 22.748804>,  <16.301044, 13.230630, 22.023529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.540150, 13.300396, 22.748804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.292278, 13.602412, 22.663097>,  <16.143555, 13.783623, 22.611673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.292278, 13.602412, 22.663097>,  <16.540150, 13.300396, 22.748804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292278, 13.602412, 22.663097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595482, -0.274461, 0.755031,
		0.511272, 0.595469, 0.619692,
		-0.619679, 0.755042, -0.214266,
		16.106375, 13.828925, 22.598818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600403, 13.633643, 23.292070>,  <16.540150, 13.300396, 22.748804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600403, 13.633643, 23.292070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.259485, 13.776127, 23.138859>,  <16.054935, 13.861617, 23.046932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.259485, 13.776127, 23.138859>,  <16.600403, 13.633643, 23.292070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.259485, 13.776127, 23.138859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441631, -0.097669, 0.891865,
		0.280280, 0.929288, 0.240555,
		-0.852294, 0.356209, -0.383028,
		16.003798, 13.882990, 23.023951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475878, 14.079929, 23.726879>,  <16.600403, 13.633643, 23.292070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475878, 14.079929, 23.726879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.127632, 13.999499, 23.547279>,  <15.918685, 13.951241, 23.439520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.127632, 13.999499, 23.547279>,  <16.475878, 14.079929, 23.726879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.127632, 13.999499, 23.547279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453673, -0.024897, 0.890820,
		-0.190300, 0.979259, -0.069546,
		-0.870613, -0.201075, -0.449002,
		15.866448, 13.939177, 23.412579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025736, 14.482806, 24.152143>,  <16.475878, 14.079929, 23.726879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.025736, 14.482806, 24.152143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.834450, 14.196048, 23.949217>,  <15.719679, 14.023993, 23.827461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.834450, 14.196048, 23.949217>,  <16.025736, 14.482806, 24.152143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834450, 14.196048, 23.949217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489597, -0.261950, 0.831672,
		-0.729113, 0.646099, -0.225722,
		-0.478214, -0.716895, -0.507319,
		15.690986, 13.980979, 23.797022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.302011, 14.598534, 24.356644>,  <16.025736, 14.482806, 24.152143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.302011, 14.598534, 24.356644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.304861, 14.227395, 24.207487>,  <15.306571, 14.004712, 24.117992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.304861, 14.227395, 24.207487>,  <15.302011, 14.598534, 24.356644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.304861, 14.227395, 24.207487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621448, -0.296255, 0.725283,
		-0.783423, 0.226567, -0.578719,
		0.007123, -0.927847, -0.372893,
		15.306998, 13.949041, 24.095619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528575, 14.383368, 24.445034>,  <15.302011, 14.598534, 24.356644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528575, 14.383368, 24.445034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.772303, 14.071693, 24.386246>,  <14.918539, 13.884689, 24.350973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.772303, 14.071693, 24.386246>,  <14.528575, 14.383368, 24.445034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772303, 14.071693, 24.386246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451071, -0.493057, 0.743928,
		-0.652124, -0.386994, -0.651897,
		0.609319, -0.779185, -0.146973,
		14.955098, 13.837938, 24.342154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135722, 13.859550, 24.433592>,  <14.528575, 14.383368, 24.445034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135722, 13.859550, 24.433592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.500438, 13.717462, 24.516014>,  <14.719267, 13.632208, 24.565468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.500438, 13.717462, 24.516014>,  <14.135722, 13.859550, 24.433592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.500438, 13.717462, 24.516014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387640, -0.578843, 0.717409,
		-0.135564, -0.734001, -0.665481,
		0.911789, -0.355222, 0.206058,
		14.773974, 13.610895, 24.577831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.010705, 13.103219, 24.668644>,  <14.135722, 13.859550, 24.433592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.010705, 13.103219, 24.668644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.371453, 13.189268, 24.818499>,  <14.587902, 13.240898, 24.908411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.371453, 13.189268, 24.818499>,  <14.010705, 13.103219, 24.668644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371453, 13.189268, 24.818499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256536, -0.431062, 0.865087,
		0.347592, -0.876303, -0.333575,
		0.901870, 0.215123, 0.374637,
		14.642015, 13.253805, 24.930889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.200748, 12.528103, 25.132059>,  <14.010705, 13.103219, 24.668644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.200748, 12.528103, 25.132059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.436570, 12.828017, 25.252224>,  <14.578063, 13.007966, 25.324324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.436570, 12.828017, 25.252224>,  <14.200748, 12.528103, 25.132059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.436570, 12.828017, 25.252224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105644, -0.297151, 0.948968,
		0.800790, -0.591205, -0.095976,
		0.589554, 0.749785, 0.300412,
		14.613437, 13.052953, 25.342348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623258, 12.204419, 25.619432>,  <14.200748, 12.528103, 25.132059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.623258, 12.204419, 25.619432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.661263, 12.593978, 25.701889>,  <14.684067, 12.827713, 25.751364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.661263, 12.593978, 25.701889>,  <14.623258, 12.204419, 25.619432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.661263, 12.593978, 25.701889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032875, -0.210037, 0.977140,
		0.994933, -0.086066, -0.051974,
		0.095015, 0.973898, 0.206144,
		14.689768, 12.886147, 25.763733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896419, 12.251125, 26.389679>,  <14.623258, 12.204419, 25.619432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896419, 12.251125, 26.389679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.809133, 12.631022, 26.299904>,  <14.756761, 12.858960, 26.246038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.809133, 12.631022, 26.299904>,  <14.896419, 12.251125, 26.389679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.809133, 12.631022, 26.299904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441226, 0.109119, 0.890737,
		0.870461, 0.293401, 0.395239,
		-0.218215, 0.949741, -0.224439,
		14.743668, 12.915945, 26.232573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311582, 12.646852, 26.836653>,  <14.896419, 12.251125, 26.389679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311582, 12.646852, 26.836653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.992682, 12.857559, 26.718729>,  <14.801343, 12.983983, 26.647974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.992682, 12.857559, 26.718729>,  <15.311582, 12.646852, 26.836653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.992682, 12.857559, 26.718729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389710, -0.076172, 0.917782,
		0.461002, 0.846590, 0.266014,
		-0.797248, 0.526767, -0.294809,
		14.753509, 13.015590, 26.630287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.283689, 13.179688, 27.340588>,  <15.311582, 12.646852, 26.836653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.283689, 13.179688, 27.340588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.928121, 13.138862, 27.161968>,  <14.714780, 13.114366, 27.054796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.928121, 13.138862, 27.161968>,  <15.283689, 13.179688, 27.340588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.928121, 13.138862, 27.161968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424962, -0.180102, 0.887114,
		-0.170970, 0.978338, 0.116721,
		-0.888919, -0.102068, -0.446548,
		14.661445, 13.108241, 27.028004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<6.840703, 13.415266, 24.390747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.224895, 13.473087, 24.485895>,  <7.455410, 13.507780, 24.542984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.224895, 13.473087, 24.485895>,  <6.840703, 13.415266, 24.390747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.224895, 13.473087, 24.485895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117881, 0.562914, -0.818066,
		-0.252154, 0.813776, 0.523628,
		0.960480, 0.144553, 0.237870,
		7.513039, 13.516454, 24.557257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.974051, 14.160142, 24.352987>,  <6.840703, 13.415266, 24.390747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.974051, 14.160142, 24.352987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.341908, 14.005410, 24.325794>,  <7.562622, 13.912571, 24.309479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.341908, 14.005410, 24.325794>,  <6.974051, 14.160142, 24.352987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.341908, 14.005410, 24.325794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202368, 0.615040, -0.762084,
		0.336610, 0.687087, 0.643899,
		0.919642, -0.386829, -0.067984,
		7.617801, 13.889361, 24.305399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.448286, 14.718915, 24.297718>,  <6.974051, 14.160142, 24.352987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.448286, 14.718915, 24.297718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.666711, 14.409089, 24.170053>,  <7.797766, 14.223193, 24.093454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.666711, 14.409089, 24.170053>,  <7.448286, 14.718915, 24.297718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.666711, 14.409089, 24.170053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495138, 0.605717, -0.622852,
		0.675762, 0.182086, 0.714276,
		0.546062, -0.774565, -0.319162,
		7.830530, 14.176720, 24.074305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.239894, 14.868355, 24.245878>,  <7.448286, 14.718915, 24.297718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.239894, 14.868355, 24.245878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.183701, 14.567409, 23.988441>,  <8.149984, 14.386841, 23.833979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.183701, 14.567409, 23.988441>,  <8.239894, 14.868355, 24.245878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.183701, 14.567409, 23.988441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533922, 0.489850, -0.689183,
		0.833781, -0.440448, 0.332888,
		-0.140484, -0.752365, -0.643593,
		8.141556, 14.341699, 23.795364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.838765, 14.811354, 23.947144>,  <8.239894, 14.868355, 24.245878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.838765, 14.811354, 23.947144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.613111, 14.610319, 23.685104>,  <8.477717, 14.489698, 23.527880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.613111, 14.610319, 23.685104>,  <8.838765, 14.811354, 23.947144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.613111, 14.610319, 23.685104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538735, 0.377200, -0.753316,
		0.625710, -0.777898, 0.057969,
		-0.564137, -0.502587, -0.655099,
		8.443870, 14.459543, 23.488575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.358314, 14.439795, 23.531111>,  <8.838765, 14.811354, 23.947144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.358314, 14.439795, 23.531111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.014796, 14.482997, 23.330788>,  <8.808686, 14.508918, 23.210594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.014796, 14.482997, 23.330788>,  <9.358314, 14.439795, 23.531111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.014796, 14.482997, 23.330788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508842, 0.293580, -0.809253,
		0.059626, -0.949814, -0.307081,
		-0.858793, 0.108003, -0.500810,
		8.757158, 14.515398, 23.180544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.527966, 14.175488, 22.788290>,  <9.358314, 14.439795, 23.531111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.527966, 14.175488, 22.788290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.194570, 14.395919, 22.772234>,  <8.994533, 14.528177, 22.762600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.194570, 14.395919, 22.772234>,  <9.527966, 14.175488, 22.788290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.194570, 14.395919, 22.772234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332133, 0.441632, -0.833456,
		-0.441569, -0.708009, -0.551126,
		-0.833489, 0.551076, -0.040142,
		8.944523, 14.561241, 22.760191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.354915, 14.058517, 22.038418>,  <9.527966, 14.175488, 22.788290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.354915, 14.058517, 22.038418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.160436, 14.389578, 22.150566>,  <9.043749, 14.588214, 22.217855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.160436, 14.389578, 22.150566>,  <9.354915, 14.058517, 22.038418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.160436, 14.389578, 22.150566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294438, 0.457244, -0.839187,
		-0.822751, -0.325457, -0.466002,
		-0.486196, 0.827651, 0.280371,
		9.014577, 14.637873, 22.234678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.084963, 14.267798, 21.391256>,  <9.354915, 14.058517, 22.038418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.084963, 14.267798, 21.391256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.062710, 14.583269, 21.636171>,  <9.049358, 14.772552, 21.783121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.062710, 14.583269, 21.636171>,  <9.084963, 14.267798, 21.391256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.062710, 14.583269, 21.636171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291497, 0.599350, -0.745526,
		-0.954953, 0.137005, -0.263239,
		-0.055631, 0.788676, 0.612287,
		9.046021, 14.819872, 21.819857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.794770, 14.686909, 20.977669>,  <9.084963, 14.267798, 21.391256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.794770, 14.686909, 20.977669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.994984, 14.899276, 21.251192>,  <9.115112, 15.026696, 21.415306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.994984, 14.899276, 21.251192>,  <8.794770, 14.686909, 20.977669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.994984, 14.899276, 21.251192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483632, 0.483640, -0.729516,
		-0.718029, 0.695858, -0.014691,
		0.500534, 0.530918, 0.683806,
		9.145144, 15.058551, 21.456333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.922247, 15.199123, 20.659786>,  <8.794770, 14.686909, 20.977669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.922247, 15.199123, 20.659786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.167417, 15.293324, 20.961479>,  <9.314518, 15.349843, 21.142494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.167417, 15.293324, 20.961479>,  <8.922247, 15.199123, 20.659786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.167417, 15.293324, 20.961479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508756, 0.612730, -0.604756,
		-0.604560, 0.754388, 0.255745,
		0.612923, 0.235499, 0.754231,
		9.351294, 15.363974, 21.187748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.924573, 15.973003, 20.715954>,  <8.922247, 15.199123, 20.659786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.924573, 15.973003, 20.715954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.268929, 15.822159, 20.852570>,  <9.475544, 15.731652, 20.934540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.268929, 15.822159, 20.852570>,  <8.924573, 15.973003, 20.715954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.268929, 15.822159, 20.852570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507633, 0.591457, -0.626488,
		0.034249, 0.712716, 0.700616,
		0.860892, -0.377112, 0.341541,
		9.527197, 15.709025, 20.955032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.381598, 16.553539, 20.729683>,  <8.924573, 15.973003, 20.715954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.381598, 16.553539, 20.729683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.623588, 16.235912, 20.753237>,  <9.768781, 16.045336, 20.767370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.623588, 16.235912, 20.753237>,  <9.381598, 16.553539, 20.729683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.623588, 16.235912, 20.753237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643166, 0.443727, -0.624054,
		0.469411, 0.415409, 0.779159,
		0.604972, -0.794066, 0.058887,
		9.805079, 15.997692, 20.770903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.049379, 16.823299, 20.672966>,  <9.381598, 16.553539, 20.729683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.049379, 16.823299, 20.672966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.084627, 16.448473, 20.537827>,  <10.105776, 16.223577, 20.456743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.084627, 16.448473, 20.537827>,  <10.049379, 16.823299, 20.672966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.084627, 16.448473, 20.537827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590278, 0.322326, -0.740052,
		0.802375, -0.134212, 0.581533,
		0.088119, -0.937066, -0.337849,
		10.111063, 16.167353, 20.436472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.653627, 16.756756, 21.178623>,  <10.049379, 16.823299, 20.672966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.653627, 16.756756, 21.178623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.922580, 16.947523, 21.405056>,  <11.083951, 17.061983, 21.540916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.922580, 16.947523, 21.405056>,  <10.653627, 16.756756, 21.178623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.922580, 16.947523, 21.405056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369905, -0.445930, 0.815057,
		0.641150, -0.757426, -0.123420,
		0.672382, 0.476920, 0.566083,
		11.124294, 17.090599, 21.574881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.011070, 16.243191, 21.612032>,  <10.653627, 16.756756, 21.178623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.011070, 16.243191, 21.612032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.071065, 16.571161, 21.833021>,  <11.107061, 16.767942, 21.965614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.071065, 16.571161, 21.833021>,  <11.011070, 16.243191, 21.612032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.071065, 16.571161, 21.833021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202834, -0.521392, 0.828860,
		0.967658, -0.236379, 0.088107,
		0.149987, 0.819924, 0.552475,
		11.116061, 16.817139, 21.998764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.557029, 16.052713, 22.145493>,  <11.011070, 16.243191, 21.612032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.557029, 16.052713, 22.145493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.337210, 16.359541, 22.277916>,  <11.205318, 16.543638, 22.357370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.337210, 16.359541, 22.277916>,  <11.557029, 16.052713, 22.145493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.337210, 16.359541, 22.277916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131360, -0.470663, 0.872480,
		0.825071, 0.435981, 0.359414,
		-0.549547, 0.767070, 0.331060,
		11.172345, 16.589663, 22.377234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.767759, 16.063377, 22.825478>,  <11.557029, 16.052713, 22.145493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.767759, 16.063377, 22.825478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.434831, 16.284061, 22.804089>,  <11.235074, 16.416471, 22.791254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.434831, 16.284061, 22.804089>,  <11.767759, 16.063377, 22.825478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.434831, 16.284061, 22.804089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262415, -0.307223, 0.914742,
		0.488243, 0.775391, 0.400484,
		-0.832321, 0.551709, -0.053474,
		11.185135, 16.449574, 22.788046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.822573, 16.586069, 23.433413>,  <11.767759, 16.063377, 22.825478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.822573, 16.586069, 23.433413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.448438, 16.511982, 23.312855>,  <11.223957, 16.467529, 23.240520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.448438, 16.511982, 23.312855>,  <11.822573, 16.586069, 23.433413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.448438, 16.511982, 23.312855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248479, -0.262440, 0.932407,
		-0.251797, 0.947005, 0.199447,
		-0.935337, -0.185219, -0.301393,
		11.167836, 16.456417, 23.222437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.556129, 16.828796, 23.972734>,  <11.822573, 16.586069, 23.433413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.556129, 16.828796, 23.972734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.252423, 16.634050, 23.800001>,  <11.070200, 16.517202, 23.696362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.252423, 16.634050, 23.800001>,  <11.556129, 16.828796, 23.972734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.252423, 16.634050, 23.800001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291418, -0.338956, 0.894530,
		-0.581887, 0.805029, 0.115477,
		-0.759265, -0.486864, -0.431834,
		11.024644, 16.487991, 23.670450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.941583, 16.941113, 24.448414>,  <11.556129, 16.828796, 23.972734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.941583, 16.941113, 24.448414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.861248, 16.621614, 24.221550>,  <10.813047, 16.429914, 24.085432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.861248, 16.621614, 24.221550>,  <10.941583, 16.941113, 24.448414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.861248, 16.621614, 24.221550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698480, -0.289179, 0.654599,
		-0.686869, 0.527616, -0.499831,
		-0.200836, -0.798747, -0.567158,
		10.800997, 16.381990, 24.051403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.192610, 16.829439, 24.432673>,  <10.941583, 16.941113, 24.448414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.192610, 16.829439, 24.432673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.344110, 16.469042, 24.348045>,  <10.435010, 16.252804, 24.297270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.344110, 16.469042, 24.348045>,  <10.192610, 16.829439, 24.432673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.344110, 16.469042, 24.348045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646992, -0.421223, 0.635588,
		-0.661777, -0.103846, -0.742473,
		0.378750, -0.900993, -0.211569,
		10.457735, 16.198744, 24.284575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.634255, 16.336910, 24.324102>,  <10.192610, 16.829439, 24.432673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.634255, 16.336910, 24.324102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.937426, 16.088552, 24.404140>,  <10.119328, 15.939538, 24.452164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.937426, 16.088552, 24.404140>,  <9.634255, 16.336910, 24.324102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.937426, 16.088552, 24.404140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568332, -0.477914, 0.669774,
		-0.320229, -0.621361, -0.715097,
		0.757927, -0.620894, 0.200097,
		10.164804, 15.902284, 24.464169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.302372, 15.686940, 24.265541>,  <9.634255, 16.336910, 24.324102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.302372, 15.686940, 24.265541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.637382, 15.666609, 24.483154>,  <9.838387, 15.654410, 24.613722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.637382, 15.666609, 24.483154>,  <9.302372, 15.686940, 24.265541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.637382, 15.666609, 24.483154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518429, -0.388412, 0.761819,
		0.172586, -0.920083, -0.351655,
		0.837523, -0.050828, 0.544032,
		9.888638, 15.651361, 24.646364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.246988, 15.022963, 24.609924>,  <9.302372, 15.686940, 24.265541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.246988, 15.022963, 24.609924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.509311, 15.236347, 24.823593>,  <9.666704, 15.364378, 24.951794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.509311, 15.236347, 24.823593>,  <9.246988, 15.022963, 24.609924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.509311, 15.236347, 24.823593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287644, -0.477629, 0.830139,
		0.697984, -0.698060, -0.159784,
		0.655805, 0.533463, 0.534170,
		9.706052, 15.396386, 24.983845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.654308, 14.540196, 24.972206>,  <9.246988, 15.022963, 24.609924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.654308, 14.540196, 24.972206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.673984, 14.886514, 25.171396>,  <9.685788, 15.094304, 25.290911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.673984, 14.886514, 25.171396>,  <9.654308, 14.540196, 24.972206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.673984, 14.886514, 25.171396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068937, -0.494449, 0.866468,
		0.996408, -0.076949, 0.035365,
		0.049187, 0.865794, 0.497977,
		9.688740, 15.146252, 25.320789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.095529, 14.369498, 25.578676>,  <9.654308, 14.540196, 24.972206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.095529, 14.369498, 25.578676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.893695, 14.700549, 25.677004>,  <9.772594, 14.899179, 25.736000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.893695, 14.700549, 25.677004>,  <10.095529, 14.369498, 25.578676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.893695, 14.700549, 25.677004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005457, -0.287774, 0.957683,
		0.863345, 0.481891, 0.149723,
		-0.504585, 0.827627, 0.245818,
		9.742319, 14.948837, 25.750750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.306203, 14.493877, 26.284077>,  <10.095529, 14.369498, 25.578676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.306203, 14.493877, 26.284077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.986019, 14.728897, 26.236666>,  <9.793909, 14.869909, 26.208220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.986019, 14.728897, 26.236666>,  <10.306203, 14.493877, 26.284077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.986019, 14.728897, 26.236666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255230, -0.155199, 0.954343,
		0.542330, 0.794165, 0.274191,
		-0.800460, 0.587550, -0.118526,
		9.745881, 14.905162, 26.201109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.983462, 14.753837, 26.352798>,  <10.306203, 14.493877, 26.284077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.983462, 14.753837, 26.352798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.316000, 14.597192, 26.510536>,  <11.515522, 14.503204, 26.605179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.316000, 14.597192, 26.510536>,  <10.983462, 14.753837, 26.352798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.316000, 14.597192, 26.510536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475056, 0.132491, -0.869924,
		0.288426, 0.910541, 0.296183,
		0.831343, -0.391613, 0.394345,
		11.565403, 14.479708, 26.628839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.432328, 15.225439, 26.195364>,  <10.983462, 14.753837, 26.352798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.432328, 15.225439, 26.195364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.634747, 14.884236, 26.246428>,  <11.756198, 14.679515, 26.277065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.634747, 14.884236, 26.246428>,  <11.432328, 15.225439, 26.195364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.634747, 14.884236, 26.246428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470093, 0.148681, -0.870004,
		0.723139, 0.500273, 0.476232,
		0.506046, -0.853007, 0.127657,
		11.786560, 14.628334, 26.284725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135791, 15.392382, 26.008003>,  <11.432328, 15.225439, 26.195364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.135791, 15.392382, 26.008003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.084213, 14.996547, 25.982418>,  <12.053267, 14.759046, 25.967066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.084213, 14.996547, 25.982418>,  <12.135791, 15.392382, 26.008003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.084213, 14.996547, 25.982418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460118, -0.002565, -0.887854,
		0.878445, -0.143914, 0.455657,
		-0.128944, -0.989587, -0.063965,
		12.045530, 14.699671, 25.963228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823755, 15.122111, 25.817547>,  <12.135791, 15.392382, 26.008003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823755, 15.122111, 25.817547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.562218, 14.829216, 25.741320>,  <12.405295, 14.653479, 25.695583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.562218, 14.829216, 25.741320>,  <12.823755, 15.122111, 25.817547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.562218, 14.829216, 25.741320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452317, -0.176363, -0.874245,
		0.606547, -0.657817, 0.446517,
		-0.653843, -0.732238, -0.190570,
		12.366065, 14.609545, 25.684149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.276561, 14.675128, 25.606455>,  <12.823755, 15.122111, 25.817547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.276561, 14.675128, 25.606455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.908102, 14.602433, 25.468784>,  <12.687027, 14.558816, 25.386181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.908102, 14.602433, 25.468784>,  <13.276561, 14.675128, 25.606455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.908102, 14.602433, 25.468784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376678, -0.193644, -0.905879,
		0.097984, -0.964092, 0.246831,
		-0.921148, -0.181738, -0.344178,
		12.631758, 14.547912, 25.365530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378667, 14.034844, 25.157541>,  <13.276561, 14.675128, 25.606455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378667, 14.034844, 25.157541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.039182, 14.215925, 25.048182>,  <12.835490, 14.324574, 24.982567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.039182, 14.215925, 25.048182>,  <13.378667, 14.034844, 25.157541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.039182, 14.215925, 25.048182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378953, 0.159984, -0.911483,
		-0.368890, -0.877193, -0.307333,
		-0.848714, 0.452701, -0.273398,
		12.784568, 14.351735, 24.966162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257300, 13.798975, 24.508526>,  <13.378667, 14.034844, 25.157541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257300, 13.798975, 24.508526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.023552, 14.123132, 24.525385>,  <12.883303, 14.317626, 24.535501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.023552, 14.123132, 24.525385>,  <13.257300, 13.798975, 24.508526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.023552, 14.123132, 24.525385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299146, 0.263414, -0.917129,
		-0.754336, -0.523334, -0.396357,
		-0.584370, 0.810392, 0.042150,
		12.848241, 14.366249, 24.538031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.942472, 13.864527, 23.850372>,  <13.257300, 13.798975, 24.508526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.942472, 13.864527, 23.850372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.937210, 14.233622, 24.004454>,  <12.934052, 14.455078, 24.096903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.937210, 14.233622, 24.004454>,  <12.942472, 13.864527, 23.850372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.937210, 14.233622, 24.004454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259051, 0.375230, -0.889997,
		-0.965774, 0.088079, -0.243973,
		-0.013155, 0.922737, 0.385205,
		12.933264, 14.510443, 24.120014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.841969, 14.146932, 23.309687>,  <12.942472, 13.864527, 23.850372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.841969, 14.146932, 23.309687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.958980, 14.435997, 23.560186>,  <13.029185, 14.609436, 23.710485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.958980, 14.435997, 23.560186>,  <12.841969, 14.146932, 23.309687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.958980, 14.435997, 23.560186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367607, 0.519587, -0.771294,
		-0.882776, 0.455836, -0.113664,
		0.292525, 0.722664, 0.626248,
		13.046737, 14.652796, 23.748060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.684980, 14.697515, 22.968439>,  <12.841969, 14.146932, 23.309687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.684980, 14.697515, 22.968439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.943958, 14.807113, 23.252901>,  <13.099345, 14.872871, 23.423578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.943958, 14.807113, 23.252901>,  <12.684980, 14.697515, 22.968439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.943958, 14.807113, 23.252901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389224, 0.683385, -0.617649,
		-0.655226, 0.676692, 0.335808,
		0.647444, 0.273995, 0.711156,
		13.138191, 14.889311, 23.466248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648130, 15.411553, 23.013700>,  <12.684980, 14.697515, 22.968439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648130, 15.411553, 23.013700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.014735, 15.334159, 23.153738>,  <13.234698, 15.287722, 23.237761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.014735, 15.334159, 23.153738>,  <12.648130, 15.411553, 23.013700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014735, 15.334159, 23.153738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378167, 0.704358, -0.600725,
		-0.130360, 0.682966, 0.718723,
		0.916513, -0.193487, 0.350095,
		13.289689, 15.276113, 23.258766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.045671, 16.109398, 23.023252>,  <12.648130, 15.411553, 23.013700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.045671, 16.109398, 23.023252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.311252, 15.810368, 23.016340>,  <13.470600, 15.630949, 23.012194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.311252, 15.810368, 23.016340>,  <13.045671, 16.109398, 23.023252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.311252, 15.810368, 23.016340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546079, 0.500520, -0.671772,
		0.510850, 0.436588, 0.740556,
		0.663950, -0.747577, -0.017279,
		13.510437, 15.586095, 23.011156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.701819, 16.321251, 23.255672>,  <13.045671, 16.109398, 23.023252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.701819, 16.321251, 23.255672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.798162, 16.012484, 23.020342>,  <13.855968, 15.827223, 22.879145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.798162, 16.012484, 23.020342>,  <13.701819, 16.321251, 23.255672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.798162, 16.012484, 23.020342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617660, 0.589486, -0.520578,
		0.748655, -0.238000, 0.618766,
		0.240857, -0.771921, -0.588325,
		13.870420, 15.780908, 22.843843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.396178, 16.513060, 23.106050>,  <13.701819, 16.321251, 23.255672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.396178, 16.513060, 23.106050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.325223, 16.204931, 22.861055>,  <14.282650, 16.020054, 22.714058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.325223, 16.204931, 22.861055>,  <14.396178, 16.513060, 23.106050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.325223, 16.204931, 22.861055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443240, 0.493127, -0.748575,
		0.878676, -0.404267, 0.253962,
		-0.177389, -0.770321, -0.612486,
		14.272006, 15.973835, 22.677309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.272863, 24.851337, 9.060667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.013233, 24.547058, 9.058151>,  <8.857455, 24.364491, 9.056642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.013233, 24.547058, 9.058151>,  <9.272863, 24.851337, 9.060667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.013233, 24.547058, 9.058151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753158, -0.643762, 0.135361,
		-0.107018, 0.083123, 0.990776,
		-0.649076, -0.760697, -0.006289,
		8.818510, 24.318850, 9.056265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.289002, 24.362286, 9.776675>,  <9.272863, 24.851337, 9.060667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.289002, 24.362286, 9.776675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.186808, 24.221367, 9.416539>,  <9.125491, 24.136816, 9.200458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.186808, 24.221367, 9.416539>,  <9.289002, 24.362286, 9.776675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.186808, 24.221367, 9.416539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600567, -0.787617, 0.137768,
		-0.757658, -0.505516, 0.412804,
		-0.255487, -0.352298, -0.900340,
		9.110162, 24.115677, 9.146437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.894567, 23.635509, 9.732961>,  <9.289002, 24.362286, 9.776675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.894567, 23.635509, 9.732961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.128536, 23.752031, 9.430172>,  <9.268917, 23.821945, 9.248499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.128536, 23.752031, 9.430172>,  <8.894567, 23.635509, 9.732961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.128536, 23.752031, 9.430172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497870, -0.865718, 0.051556,
		-0.640306, -0.407030, -0.651410,
		0.584922, 0.291306, -0.756972,
		9.304013, 23.839422, 9.203080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.719992, 23.240417, 9.176087>,  <8.894567, 23.635509, 9.732961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.719992, 23.240417, 9.176087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.094757, 23.353069, 9.258915>,  <9.319616, 23.420660, 9.308611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.094757, 23.353069, 9.258915>,  <8.719992, 23.240417, 9.176087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.094757, 23.353069, 9.258915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245855, -0.951996, 0.182371,
		0.248489, -0.119958, -0.961178,
		0.936915, 0.281627, 0.207068,
		9.375832, 23.437557, 9.321035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.241276, 22.776445, 8.768725>,  <8.719992, 23.240417, 9.176087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.241276, 22.776445, 8.768725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.400484, 22.932783, 9.100706>,  <9.496010, 23.026587, 9.299894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.400484, 22.932783, 9.100706>,  <9.241276, 22.776445, 8.768725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.400484, 22.932783, 9.100706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526416, -0.838236, 0.142290,
		0.751309, 0.380265, -0.539383,
		0.398022, 0.390844, 0.829952,
		9.519891, 23.050035, 9.349691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.541973, 22.200258, 8.976466>,  <9.241276, 22.776445, 8.768725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.541973, 22.200258, 8.976466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.302502, 22.418877, 9.210686>,  <9.158818, 22.550049, 9.351217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.302502, 22.418877, 9.210686>,  <9.541973, 22.200258, 8.976466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.302502, 22.418877, 9.210686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583641, -0.798331, 0.148429,
		0.548586, -0.252890, 0.796932,
		-0.598679, 0.546548, 0.585550,
		9.122898, 22.582842, 9.386351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.369629, 21.948364, 9.695189>,  <9.541973, 22.200258, 8.976466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.369629, 21.948364, 9.695189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.060449, 22.138504, 9.527098>,  <8.874941, 22.252588, 9.426244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.060449, 22.138504, 9.527098>,  <9.369629, 21.948364, 9.695189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.060449, 22.138504, 9.527098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582363, -0.794400, 0.172574,
		-0.251795, 0.378115, 0.890858,
		-0.772951, 0.475350, -0.420226,
		8.828564, 22.281109, 9.401030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.987053, 22.036537, 10.372360>,  <9.369629, 21.948364, 9.695189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.987053, 22.036537, 10.372360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.362900, 22.166214, 10.328506>,  <9.588408, 22.244020, 10.302195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.362900, 22.166214, 10.328506>,  <8.987053, 22.036537, 10.372360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.362900, 22.166214, 10.328506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085865, -0.533433, -0.841473,
		-0.331280, 0.781249, -0.529060,
		0.939617, 0.324191, -0.109633,
		9.644785, 22.263472, 10.295616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.546471, 21.870779, 10.721337>,  <8.987053, 22.036537, 10.372360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.546471, 21.870779, 10.721337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.687428, 22.107595, 11.011249>,  <9.772003, 22.249685, 11.185195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.687428, 22.107595, 11.011249>,  <9.546471, 21.870779, 10.721337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.687428, 22.107595, 11.011249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211947, -0.703846, 0.677996,
		0.911535, -0.392537, -0.122549,
		0.352394, 0.592043, 0.724778,
		9.793147, 22.285208, 11.228682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.018820, 21.464783, 11.243081>,  <9.546471, 21.870779, 10.721337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.018820, 21.464783, 11.243081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.817911, 21.762863, 11.418533>,  <9.697366, 21.941711, 11.523805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.817911, 21.762863, 11.418533>,  <10.018820, 21.464783, 11.243081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.817911, 21.762863, 11.418533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355962, -0.640470, 0.680506,
		0.788045, 0.185663, 0.586954,
		-0.502271, 0.745203, 0.438630,
		9.667230, 21.986423, 11.550122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.138216, 21.336674, 11.978587>,  <10.018820, 21.464783, 11.243081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.138216, 21.336674, 11.978587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.807057, 21.551313, 11.913290>,  <9.608362, 21.680098, 11.874112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.807057, 21.551313, 11.913290>,  <10.138216, 21.336674, 11.978587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.807057, 21.551313, 11.913290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511958, -0.604084, 0.610721,
		0.229101, 0.589187, 0.774836,
		-0.827895, 0.536601, -0.163243,
		9.558689, 21.712294, 11.864317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.782416, 21.184526, 12.534859>,  <10.138216, 21.336674, 11.978587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.782416, 21.184526, 12.534859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.500019, 21.308113, 12.279951>,  <9.330581, 21.382265, 12.127007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.500019, 21.308113, 12.279951>,  <9.782416, 21.184526, 12.534859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.500019, 21.308113, 12.279951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671095, -0.579355, 0.462579,
		-0.226283, 0.754246, 0.616367,
		-0.705994, 0.308967, -0.637269,
		9.288221, 21.400803, 12.088770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.255255, 21.159979, 12.903233>,  <9.782416, 21.184526, 12.534859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.255255, 21.159979, 12.903233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.096416, 21.176527, 12.536495>,  <9.001112, 21.186455, 12.316453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.096416, 21.176527, 12.536495>,  <9.255255, 21.159979, 12.903233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.096416, 21.176527, 12.536495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721256, -0.631826, 0.283878,
		-0.567541, 0.774006, 0.280734,
		-0.397098, 0.041369, -0.916843,
		8.977286, 21.188938, 12.261442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.500609, 21.088717, 13.040496>,  <9.255255, 21.159979, 12.903233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.500609, 21.088717, 13.040496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.520542, 21.025904, 12.645962>,  <8.532501, 20.988216, 12.409241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.520542, 21.025904, 12.645962>,  <8.500609, 21.088717, 13.040496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.520542, 21.025904, 12.645962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687836, -0.721432, 0.080106,
		-0.724153, 0.674446, -0.143960,
		0.049830, -0.157030, -0.986336,
		8.535491, 20.978794, 12.350061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.782714, 21.115574, 12.717658>,  <8.500609, 21.088717, 13.040496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.782714, 21.115574, 12.717658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.017567, 20.924152, 12.456503>,  <8.158478, 20.809299, 12.299809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.017567, 20.924152, 12.456503>,  <7.782714, 21.115574, 12.717658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.017567, 20.924152, 12.456503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714768, -0.685077, -0.140629,
		-0.379980, 0.549232, -0.744285,
		0.587130, -0.478554, -0.652889,
		8.193706, 20.780586, 12.260636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.413468, 21.110001, 12.111278>,  <7.782714, 21.115574, 12.717658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.413468, 21.110001, 12.111278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.655407, 20.791471, 12.109144>,  <7.800570, 20.600353, 12.107864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.655407, 20.791471, 12.109144>,  <7.413468, 21.110001, 12.111278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.655407, 20.791471, 12.109144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780676, -0.591613, -0.201343,
		0.157179, 0.125945, -0.979506,
		0.604847, -0.796324, -0.005334,
		7.836861, 20.552574, 12.107544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.976980, 20.605253, 11.749336>,  <7.413468, 21.110001, 12.111278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.976980, 20.605253, 11.749336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.276283, 20.399429, 11.916831>,  <7.455865, 20.275936, 12.017328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.276283, 20.399429, 11.916831>,  <6.976980, 20.605253, 11.749336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.276283, 20.399429, 11.916831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538041, -0.839948, -0.070712,
		0.388102, -0.172387, -0.905350,
		0.748257, -0.514559, 0.418737,
		7.500761, 20.245062, 12.042452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.027202, 19.951626, 11.375180>,  <6.976980, 20.605253, 11.749336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.027202, 19.951626, 11.375180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.154998, 19.915958, 11.752534>,  <7.231677, 19.894558, 11.978946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.154998, 19.915958, 11.752534>,  <7.027202, 19.951626, 11.375180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.154998, 19.915958, 11.752534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647931, -0.747019, 0.148823,
		0.691455, -0.658796, -0.296442,
		0.319492, -0.089169, 0.943384,
		7.250846, 19.889208, 12.035549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.033991, 19.242664, 11.606437>,  <7.027202, 19.951626, 11.375180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.033991, 19.242664, 11.606437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.040923, 19.424166, 11.962820>,  <7.045082, 19.533066, 12.176650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.040923, 19.424166, 11.962820>,  <7.033991, 19.242664, 11.606437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.040923, 19.424166, 11.962820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562909, -0.732027, 0.383759,
		0.826337, -0.508179, 0.242736,
		0.017329, 0.453752, 0.890959,
		7.046121, 19.560291, 12.230108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.082906, 18.580685, 12.012521>,  <7.033991, 19.242664, 11.606437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.082906, 18.580685, 12.012521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.997992, 18.876711, 12.267783>,  <6.947044, 19.054327, 12.420940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.997992, 18.876711, 12.267783>,  <7.082906, 18.580685, 12.012521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.997992, 18.876711, 12.267783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521474, -0.638076, 0.566501,
		0.826438, -0.212522, 0.521377,
		-0.212284, 0.740063, 0.638155,
		6.934307, 19.098730, 12.459229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.006599, 18.277975, 12.628856>,  <7.082906, 18.580685, 12.012521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.006599, 18.277975, 12.628856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.788612, 18.612047, 12.658488>,  <6.657820, 18.812490, 12.676268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.788612, 18.612047, 12.658488>,  <7.006599, 18.277975, 12.628856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.788612, 18.612047, 12.658488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706547, -0.505007, 0.495741,
		0.451444, 0.217820, 0.865305,
		-0.544967, 0.835178, 0.074083,
		6.625122, 18.862600, 12.680713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.954400, 18.231339, 13.259890>,  <7.006599, 18.277975, 12.628856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.954400, 18.231339, 13.259890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.666914, 18.488718, 13.154493>,  <6.494423, 18.643145, 13.091256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.666914, 18.488718, 13.154493>,  <6.954400, 18.231339, 13.259890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.666914, 18.488718, 13.154493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643774, -0.472644, 0.601800,
		0.262689, 0.602150, 0.753930,
		-0.718714, 0.643447, -0.263490,
		6.451300, 18.681751, 13.075446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.718755, 18.288815, 13.871247>,  <6.954400, 18.231339, 13.259890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.718755, 18.288815, 13.871247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.450328, 18.437414, 13.614605>,  <6.289272, 18.526573, 13.460620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.450328, 18.437414, 13.614605>,  <6.718755, 18.288815, 13.871247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.450328, 18.437414, 13.614605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740830, -0.369834, 0.560708,
		-0.028986, 0.851594, 0.523401,
		-0.671067, 0.371498, -0.641606,
		6.249008, 18.548864, 13.422123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.088420, 18.417212, 14.244901>,  <6.718755, 18.288815, 13.871247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.088420, 18.417212, 14.244901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.952699, 18.409519, 13.868709>,  <5.871266, 18.404903, 13.642993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.952699, 18.409519, 13.868709>,  <6.088420, 18.417212, 14.244901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.952699, 18.409519, 13.868709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826384, -0.471551, 0.307782,
		-0.449403, 0.881629, 0.144106,
		-0.339303, -0.019232, -0.940481,
		5.850908, 18.403749, 13.586564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.372140, 18.737457, 14.263567>,  <6.088420, 18.417212, 14.244901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.372140, 18.737457, 14.263567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.432916, 18.499153, 13.948103>,  <5.469382, 18.356171, 13.758824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.432916, 18.499153, 13.948103>,  <5.372140, 18.737457, 14.263567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.432916, 18.499153, 13.948103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849179, -0.486995, 0.204281,
		-0.505776, 0.638675, -0.579901,
		0.151940, -0.595760, -0.788660,
		5.478498, 18.320425, 13.711505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.725286, 18.681175, 13.855276>,  <5.372140, 18.737457, 14.263567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.725286, 18.681175, 13.855276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.937119, 18.352667, 13.770369>,  <5.064218, 18.155561, 13.719424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.937119, 18.352667, 13.770369>,  <4.725286, 18.681175, 13.855276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.937119, 18.352667, 13.770369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766974, -0.570493, 0.293747,
		-0.362343, 0.007241, -0.932016,
		0.529582, -0.821270, -0.212268,
		5.095993, 18.106285, 13.706688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.316504, 18.149881, 13.560748>,  <4.725286, 18.681175, 13.855276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.316504, 18.149881, 13.560748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.639479, 17.943808, 13.675730>,  <4.833264, 17.820164, 13.744719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.639479, 17.943808, 13.675730>,  <4.316504, 18.149881, 13.560748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.639479, 17.943808, 13.675730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583724, -0.768285, 0.262688,
		0.085513, -0.379897, -0.921068,
		0.807436, -0.515186, 0.287454,
		4.881710, 17.789251, 13.761966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.274344, 17.426558, 13.250723>,  <4.316504, 18.149881, 13.560748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.274344, 17.426558, 13.250723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.553998, 17.389519, 13.534310>,  <4.721790, 17.367294, 13.704463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.553998, 17.389519, 13.534310>,  <4.274344, 17.426558, 13.250723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.553998, 17.389519, 13.534310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349859, -0.909065, 0.226273,
		0.623547, -0.406235, -0.667954,
		0.699134, -0.092598, 0.708969,
		4.763738, 17.361740, 13.747001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.677945, 16.748772, 13.217343>,  <4.274344, 17.426558, 13.250723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.677945, 16.748772, 13.217343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.738213, 16.883760, 13.589024>,  <4.774374, 16.964754, 13.812032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.738213, 16.883760, 13.589024>,  <4.677945, 16.748772, 13.217343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.738213, 16.883760, 13.589024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193778, -0.911614, 0.362505,
		0.969406, -0.234677, -0.071960,
		0.150671, 0.337471, 0.929200,
		4.783414, 16.985003, 13.867784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.200027, 16.345701, 13.450425>,  <4.677945, 16.748772, 13.217343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.200027, 16.345701, 13.450425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.009097, 16.495152, 13.768561>,  <4.894539, 16.584822, 13.959443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.009097, 16.495152, 13.768561>,  <5.200027, 16.345701, 13.450425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.009097, 16.495152, 13.768561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087915, -0.920869, 0.379830,
		0.874318, 0.111379, 0.472401,
		-0.477324, 0.373624, 0.795341,
		4.865900, 16.607239, 14.007164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.565404, 16.160170, 14.078662>,  <5.200027, 16.345701, 13.450425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.565404, 16.160170, 14.078662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.191113, 16.255390, 14.182771>,  <4.966537, 16.312523, 14.245235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.191113, 16.255390, 14.182771>,  <5.565404, 16.160170, 14.078662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.191113, 16.255390, 14.182771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095430, -0.881247, 0.462922,
		0.339562, 0.408332, 0.847326,
		-0.935730, 0.238051, 0.260271,
		4.910394, 16.326805, 14.260852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.895877, 15.919224, 14.736288>,  <5.565404, 16.160170, 14.078662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.895877, 15.919224, 14.736288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.205064, 15.706547, 14.597827>,  <6.390577, 15.578940, 14.514750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.205064, 15.706547, 14.597827>,  <5.895877, 15.919224, 14.736288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.205064, 15.706547, 14.597827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621583, 0.743955, 0.245289,
		0.127103, -0.404763, 0.905545,
		0.772968, -0.531694, -0.346153,
		6.436955, 15.547039, 14.493981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.437245, 15.921061, 15.254916>,  <5.895877, 15.919224, 14.736288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.437245, 15.921061, 15.254916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.632247, 15.821506, 14.920157>,  <6.749248, 15.761772, 14.719302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.632247, 15.821506, 14.920157>,  <6.437245, 15.921061, 15.254916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.632247, 15.821506, 14.920157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805004, 0.499287, 0.320440,
		0.338097, -0.829920, 0.443760,
		0.487504, -0.248889, -0.836896,
		6.778498, 15.746839, 14.669088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.079680, 16.002069, 15.485970>,  <6.437245, 15.921061, 15.254916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.079680, 16.002069, 15.485970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.113254, 15.994591, 15.087451>,  <7.133398, 15.990104, 14.848340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.113254, 15.994591, 15.087451>,  <7.079680, 16.002069, 15.485970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.113254, 15.994591, 15.087451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825745, 0.560945, 0.059039,
		0.557763, -0.827642, 0.062520,
		0.083933, -0.018695, -0.996296,
		7.138433, 15.988982, 14.788562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.857984, 15.970016, 15.382842>,  <7.079680, 16.002069, 15.485970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.857984, 15.970016, 15.382842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.683022, 16.102423, 15.048392>,  <7.578044, 16.181868, 14.847723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.683022, 16.102423, 15.048392>,  <7.857984, 15.970016, 15.382842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.683022, 16.102423, 15.048392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690019, 0.719789, -0.076012,
		0.576671, -0.610189, -0.543249,
		-0.437406, 0.331018, -0.836124,
		7.551800, 16.201729, 14.797555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.393839, 16.125793, 14.944440>,  <7.857984, 15.970016, 15.382842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.393839, 16.125793, 14.944440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.081027, 16.325800, 14.795626>,  <7.893340, 16.445805, 14.706337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.081027, 16.325800, 14.795626>,  <8.393839, 16.125793, 14.944440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.081027, 16.325800, 14.795626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583172, 0.797660, -0.153783,
		0.219864, -0.337224, -0.915390,
		-0.782030, 0.500019, -0.372036,
		7.846418, 16.475805, 14.684014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.577114, 16.316347, 14.248038>,  <8.393839, 16.125793, 14.944440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.577114, 16.316347, 14.248038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.279504, 16.563917, 14.348721>,  <8.100938, 16.712460, 14.409130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.279504, 16.563917, 14.348721>,  <8.577114, 16.316347, 14.248038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.279504, 16.563917, 14.348721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635557, 0.771816, -0.019167,
		-0.206134, 0.145713, -0.967614,
		-0.744026, 0.618925, 0.251707,
		8.056295, 16.749596, 14.424232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.560400, 16.833483, 13.717649>,  <8.577114, 16.316347, 14.248038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.560400, 16.833483, 13.717649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.374865, 16.999451, 14.030748>,  <8.263543, 17.099031, 14.218608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.374865, 16.999451, 14.030748>,  <8.560400, 16.833483, 13.717649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.374865, 16.999451, 14.030748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572374, 0.814736, -0.092698,
		-0.676196, 0.405029, -0.615394,
		-0.463839, 0.414918, 0.782749,
		8.235713, 17.123926, 14.265574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.494105, 17.472530, 13.486447>,  <8.560400, 16.833483, 13.717649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.494105, 17.472530, 13.486447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.421072, 17.529322, 13.875602>,  <8.377252, 17.563396, 14.109095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.421072, 17.529322, 13.875602>,  <8.494105, 17.472530, 13.486447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.421072, 17.529322, 13.875602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454553, 0.889607, -0.044518,
		-0.871805, 0.434099, -0.226964,
		-0.182584, 0.141979, 0.972885,
		8.366297, 17.571915, 14.167467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.330870, 18.149946, 13.459425>,  <8.494105, 17.472530, 13.486447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.330870, 18.149946, 13.459425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.434408, 18.063692, 13.836041>,  <8.496531, 18.011940, 14.062012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.434408, 18.063692, 13.836041>,  <8.330870, 18.149946, 13.459425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.434408, 18.063692, 13.836041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512400, 0.856958, 0.055396,
		-0.818806, 0.468107, 0.332313,
		0.258847, -0.215635, 0.941541,
		8.512062, 17.999001, 14.118504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.071024, 18.643169, 13.958701>,  <8.330870, 18.149946, 13.459425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.071024, 18.643169, 13.958701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.407881, 18.501123, 14.121031>,  <8.609995, 18.415895, 14.218429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.407881, 18.501123, 14.121031>,  <8.071024, 18.643169, 13.958701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.407881, 18.501123, 14.121031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390628, 0.920535, -0.005100,
		-0.371764, 0.162821, 0.913937,
		0.842141, -0.355113, 0.405824,
		8.660523, 18.394590, 14.242778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.272729, 19.149105, 14.553560>,  <8.071024, 18.643169, 13.958701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.272729, 19.149105, 14.553560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.586807, 18.942924, 14.416286>,  <8.775254, 18.819216, 14.333922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.586807, 18.942924, 14.416286>,  <8.272729, 19.149105, 14.553560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.586807, 18.942924, 14.416286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552392, 0.833498, 0.011964,
		0.279877, -0.198967, 0.939191,
		0.785195, -0.515454, -0.343185,
		8.822366, 18.788288, 14.313331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.727589, 19.550062, 14.911591>,  <8.272729, 19.149105, 14.553560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.727589, 19.550062, 14.911591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.974295, 19.317966, 14.698830>,  <9.122318, 19.178709, 14.571173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.974295, 19.317966, 14.698830>,  <8.727589, 19.550062, 14.911591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.974295, 19.317966, 14.698830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687693, 0.725981, 0.005455,
		0.382986, -0.369151, 0.846787,
		0.616765, -0.580240, -0.531903,
		9.159325, 19.143894, 14.539259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.401008, 19.603476, 15.186424>,  <8.727589, 19.550062, 14.911591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.401008, 19.603476, 15.186424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.466671, 19.475023, 14.813345>,  <9.506069, 19.397951, 14.589498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.466671, 19.475023, 14.813345>,  <9.401008, 19.603476, 15.186424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.466671, 19.475023, 14.813345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727493, 0.677974, -0.105387,
		0.666188, -0.661231, 0.344917,
		0.164159, -0.321132, -0.932698,
		9.515919, 19.378683, 14.533535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.189507, 19.586712, 15.062087>,  <9.401008, 19.603476, 15.186424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.189507, 19.586712, 15.062087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.026876, 19.577436, 14.696758>,  <9.929298, 19.571871, 14.477561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.026876, 19.577436, 14.696758>,  <10.189507, 19.586712, 15.062087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026876, 19.577436, 14.696758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688589, 0.649234, -0.323018,
		0.600451, -0.760235, -0.247996,
		-0.406577, -0.023189, -0.913322,
		9.904903, 19.570480, 14.422762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.680122, 19.554039, 14.686048>,  <10.189507, 19.586712, 15.062087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.680122, 19.554039, 14.686048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.398498, 19.705748, 14.445898>,  <10.229523, 19.796774, 14.301808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.398498, 19.705748, 14.445898>,  <10.680122, 19.554039, 14.686048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.398498, 19.705748, 14.445898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670563, 0.633360, -0.386264,
		0.233753, -0.674542, -0.700252,
		-0.704063, 0.379273, -0.600373,
		10.187279, 19.819529, 14.265786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.900930, 19.498289, 13.939762>,  <10.680122, 19.554039, 14.686048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.900930, 19.498289, 13.939762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.652608, 19.806810, 13.995889>,  <10.503614, 19.991924, 14.029565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.652608, 19.806810, 13.995889>,  <10.900930, 19.498289, 13.939762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.652608, 19.806810, 13.995889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683393, 0.620133, -0.385239,
		-0.384152, -0.143267, -0.912087,
		-0.620807, 0.771304, 0.140318,
		10.466366, 20.038202, 14.037984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.056138, 19.865547, 13.447337>,  <10.900930, 19.498289, 13.939762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.056138, 19.865547, 13.447337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.852298, 20.146971, 13.645453>,  <10.729994, 20.315825, 13.764323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.852298, 20.146971, 13.645453>,  <11.056138, 19.865547, 13.447337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.852298, 20.146971, 13.645453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648842, 0.692292, -0.315811,
		-0.565077, 0.160427, -0.809291,
		-0.509601, 0.703559, 0.495290,
		10.699418, 20.358038, 13.794041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.973099, 20.410398, 13.019103>,  <11.056138, 19.865547, 13.447337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.973099, 20.410398, 13.019103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.907219, 20.590096, 13.370341>,  <10.867691, 20.697914, 13.581084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.907219, 20.590096, 13.370341>,  <10.973099, 20.410398, 13.019103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.907219, 20.590096, 13.370341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642124, 0.724597, -0.250273,
		-0.748700, 0.522627, -0.407811,
		-0.164699, 0.449245, 0.878096,
		10.857809, 20.724869, 13.633770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.730788, 21.022369, 12.808111>,  <10.973099, 20.410398, 13.019103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.730788, 21.022369, 12.808111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.837495, 21.086634, 13.188221>,  <10.901519, 21.125193, 13.416287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.837495, 21.086634, 13.188221>,  <10.730788, 21.022369, 12.808111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.837495, 21.086634, 13.188221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501711, 0.818718, -0.279262,
		-0.822874, 0.551261, 0.137801,
		0.266766, 0.160661, 0.950276,
		10.917524, 21.134832, 13.473304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.605802, 21.737318, 12.909504>,  <10.730788, 21.022369, 12.808111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.605802, 21.737318, 12.909504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.847460, 21.639984, 13.213029>,  <10.992455, 21.581585, 13.395144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.847460, 21.639984, 13.213029>,  <10.605802, 21.737318, 12.909504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.847460, 21.639984, 13.213029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499616, 0.857498, -0.122802,
		-0.620798, 0.453305, 0.639628,
		0.604147, -0.243333, 0.758812,
		11.028704, 21.566984, 13.440673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.703677, 22.360374, 13.366104>,  <10.605802, 21.737318, 12.909504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.703677, 22.360374, 13.366104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.010541, 22.114407, 13.439140>,  <11.194659, 21.966825, 13.482963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.010541, 22.114407, 13.439140>,  <10.703677, 22.360374, 13.366104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.010541, 22.114407, 13.439140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610202, 0.787360, 0.087851,
		-0.197786, 0.044022, 0.979256,
		0.767160, -0.614919, 0.182591,
		11.240689, 21.929932, 13.493917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.814474, 13.693717, 27.637026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.573706, 13.405149, 27.500061>,  <14.429244, 13.232009, 27.417883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.573706, 13.405149, 27.500061>,  <14.814474, 13.693717, 27.637026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573706, 13.405149, 27.500061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429420, -0.069101, 0.900457,
		-0.673267, 0.689044, -0.268198,
		-0.601922, -0.721418, -0.342412,
		14.393129, 13.188725, 27.397337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138926, 13.903149, 27.731556>,  <14.814474, 13.693717, 27.637026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138926, 13.903149, 27.731556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.089880, 13.510884, 27.670540>,  <14.060452, 13.275525, 27.633930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.089880, 13.510884, 27.670540>,  <14.138926, 13.903149, 27.731556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089880, 13.510884, 27.670540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672361, -0.030972, 0.739575,
		-0.729997, 0.193242, -0.655562,
		-0.122613, -0.980662, -0.152538,
		14.053096, 13.216685, 27.624779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.515090, 13.854217, 27.621218>,  <14.138926, 13.903149, 27.731556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.515090, 13.854217, 27.621218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.628081, 13.490197, 27.742556>,  <13.695876, 13.271786, 27.815357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.628081, 13.490197, 27.742556>,  <13.515090, 13.854217, 27.621218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.628081, 13.490197, 27.742556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753601, -0.014868, 0.657164,
		-0.593542, -0.414234, -0.690013,
		0.282479, -0.910049, 0.303343,
		13.712825, 13.217182, 27.833559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.948940, 13.498752, 27.677820>,  <13.515090, 13.854217, 27.621218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.948940, 13.498752, 27.677820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.188783, 13.291698, 27.921961>,  <13.332688, 13.167467, 28.068445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.188783, 13.291698, 27.921961>,  <12.948940, 13.498752, 27.677820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.188783, 13.291698, 27.921961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707972, 0.012522, 0.706129,
		-0.373159, -0.855511, -0.358961,
		0.599607, -0.517633, 0.610351,
		13.368665, 13.136409, 28.105066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.456181, 13.148628, 28.064032>,  <12.948940, 13.498752, 27.677820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.456181, 13.148628, 28.064032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.784271, 13.068113, 28.278214>,  <12.981126, 13.019804, 28.406723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.784271, 13.068113, 28.278214>,  <12.456181, 13.148628, 28.064032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.784271, 13.068113, 28.278214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566945, -0.161408, 0.807787,
		-0.076172, -0.966142, -0.246511,
		0.820226, -0.201289, 0.535455,
		13.030339, 13.007727, 28.438850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307721, 12.566301, 28.451044>,  <12.456181, 13.148628, 28.064032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307721, 12.566301, 28.451044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.608679, 12.720710, 28.664545>,  <12.789253, 12.813355, 28.792645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.608679, 12.720710, 28.664545>,  <12.307721, 12.566301, 28.451044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.608679, 12.720710, 28.664545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404271, -0.369134, 0.836842,
		0.520065, -0.845415, -0.121677,
		0.752394, 0.386022, 0.533751,
		12.834397, 12.836516, 28.824671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.618011, 12.127038, 28.908432>,  <12.307721, 12.566301, 28.451044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.618011, 12.127038, 28.908432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.749831, 12.463621, 29.079708>,  <12.828923, 12.665571, 29.182474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.749831, 12.463621, 29.079708>,  <12.618011, 12.127038, 28.908432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749831, 12.463621, 29.079708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244541, -0.361975, 0.899541,
		0.911919, -0.401153, 0.086482,
		0.329549, 0.841457, 0.428190,
		12.848696, 12.716059, 29.208166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.128475, 11.997712, 29.373861>,  <12.618011, 12.127038, 28.908432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.128475, 11.997712, 29.373861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.972379, 12.350284, 29.480289>,  <12.878720, 12.561827, 29.544147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.972379, 12.350284, 29.480289>,  <13.128475, 11.997712, 29.373861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.972379, 12.350284, 29.480289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258657, -0.382301, 0.887098,
		0.883633, 0.277362, 0.377178,
		-0.390242, 0.881429, 0.266073,
		12.855306, 12.614712, 29.560112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356162, 12.035838, 30.013489>,  <13.128475, 11.997712, 29.373861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356162, 12.035838, 30.013489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.102521, 12.344831, 29.999731>,  <12.950336, 12.530228, 29.991476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.102521, 12.344831, 29.999731>,  <13.356162, 12.035838, 30.013489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.102521, 12.344831, 29.999731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277583, -0.185893, 0.942545,
		0.721708, 0.607216, 0.332304,
		-0.634102, 0.772484, -0.034392,
		12.912291, 12.576577, 29.989414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.418190, 12.502140, 30.623541>,  <13.356162, 12.035838, 30.013489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.418190, 12.502140, 30.623541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.051044, 12.561382, 30.476250>,  <12.830757, 12.596928, 30.387875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.051044, 12.561382, 30.476250>,  <13.418190, 12.502140, 30.623541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.051044, 12.561382, 30.476250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395709, -0.269735, 0.877871,
		0.030693, 0.951476, 0.306186,
		-0.917863, 0.148105, -0.368229,
		12.775685, 12.605814, 30.365782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.076067, 12.878393, 31.047327>,  <13.418190, 12.502140, 30.623541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.076067, 12.878393, 31.047327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.783086, 12.710522, 30.832895>,  <12.607297, 12.609798, 30.704237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.783086, 12.710522, 30.832895>,  <13.076067, 12.878393, 31.047327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.783086, 12.710522, 30.832895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416516, -0.346626, 0.840455,
		-0.538541, 0.838880, 0.079084,
		-0.732453, -0.419680, -0.536079,
		12.563350, 12.584618, 30.672071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.546943, 12.704551, 31.548735>,  <13.076067, 12.878393, 31.047327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.546943, 12.704551, 31.548735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.421321, 12.520952, 31.216303>,  <12.345948, 12.410793, 31.016844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.421321, 12.520952, 31.216303>,  <12.546943, 12.704551, 31.548735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.421321, 12.520952, 31.216303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574250, -0.605252, 0.551277,
		-0.756047, 0.650378, -0.073497,
		-0.314054, -0.458997, -0.831078,
		12.327105, 12.383253, 30.966980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.834959, 12.778775, 31.570347>,  <12.546943, 12.704551, 31.548735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.834959, 12.778775, 31.570347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.012252, 12.468337, 31.390917>,  <12.118628, 12.282074, 31.283258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.012252, 12.468337, 31.390917>,  <11.834959, 12.778775, 31.570347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.012252, 12.468337, 31.390917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521494, -0.630264, 0.575161,
		-0.729101, -0.021001, -0.684083,
		0.443232, -0.776096, -0.448575,
		12.145222, 12.235508, 31.256344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.146690, 12.756840, 31.390091>,  <11.834959, 12.778775, 31.570347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.146690, 12.756840, 31.390091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.450154, 13.010567, 31.330658>,  <11.632233, 13.162803, 31.294998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.450154, 13.010567, 31.330658>,  <11.146690, 12.756840, 31.390091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.450154, 13.010567, 31.330658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559873, -0.751412, -0.349174,
		-0.333135, 0.181716, -0.925203,
		0.758659, 0.634318, -0.148584,
		11.677752, 13.200862, 31.286083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.520100, 12.885572, 31.680079>,  <11.146690, 12.756840, 31.390091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.520100, 12.885572, 31.680079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.381348, 13.238704, 31.806751>,  <10.298097, 13.450583, 31.882755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.381348, 13.238704, 31.806751>,  <10.520100, 12.885572, 31.680079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.381348, 13.238704, 31.806751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200401, 0.399613, -0.894511,
		-0.916250, -0.246824, -0.315537,
		-0.346880, 0.882829, 0.316681,
		10.277284, 13.503552, 31.901756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.126339, 13.176177, 31.133818>,  <10.520100, 12.885572, 31.680079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.126339, 13.176177, 31.133818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.182451, 13.513019, 31.342119>,  <10.216119, 13.715123, 31.467100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.182451, 13.513019, 31.342119>,  <10.126339, 13.176177, 31.133818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.182451, 13.513019, 31.342119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171863, 0.497259, -0.850410,
		-0.975082, 0.208795, -0.074970,
		0.140282, 0.842103, 0.520752,
		10.224536, 13.765650, 31.498344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.786919, 13.623900, 30.802908>,  <10.126339, 13.176177, 31.133818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.786919, 13.623900, 30.802908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.026717, 13.848130, 31.031420>,  <10.170596, 13.982668, 31.168528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.026717, 13.848130, 31.031420>,  <9.786919, 13.623900, 30.802908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026717, 13.848130, 31.031420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355662, 0.452841, -0.817582,
		-0.717014, 0.693320, 0.072102,
		0.599496, 0.560573, 0.571281,
		10.206566, 14.016302, 31.202805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.653172, 14.299531, 30.557980>,  <9.786919, 13.623900, 30.802908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.653172, 14.299531, 30.557980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.010107, 14.306797, 30.738380>,  <10.224268, 14.311157, 30.846621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.010107, 14.306797, 30.738380>,  <9.653172, 14.299531, 30.557980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.010107, 14.306797, 30.738380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424528, 0.305642, -0.852267,
		-0.153328, 0.951973, 0.265024,
		0.892338, 0.018166, 0.451002,
		10.277808, 14.312247, 30.873682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.830198, 14.959950, 30.484474>,  <9.653172, 14.299531, 30.557980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.830198, 14.959950, 30.484474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.146077, 14.716547, 30.515707>,  <10.335605, 14.570505, 30.534447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.146077, 14.716547, 30.515707>,  <9.830198, 14.959950, 30.484474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.146077, 14.716547, 30.515707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376615, 0.380368, -0.844678,
		0.484294, 0.696447, 0.529548,
		0.789697, -0.608508, 0.078083,
		10.382986, 14.533995, 30.539131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.230867, 15.280841, 29.976034>,  <9.830198, 14.959950, 30.484474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.230867, 15.280841, 29.976034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.424481, 14.949734, 30.089531>,  <10.540649, 14.751069, 30.157629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.424481, 14.949734, 30.089531>,  <10.230867, 15.280841, 29.976034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.424481, 14.949734, 30.089531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523103, 0.013778, -0.852158,
		0.701481, 0.560900, 0.439677,
		0.484034, -0.827769, 0.283743,
		10.569692, 14.701403, 30.174654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.913243, 15.366044, 29.796108>,  <10.230867, 15.280841, 29.976034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.913243, 15.366044, 29.796108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.912503, 14.966395, 29.812860>,  <10.912059, 14.726606, 29.822912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.912503, 14.966395, 29.812860>,  <10.913243, 15.366044, 29.796108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.912503, 14.966395, 29.812860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462546, -0.037984, -0.885781,
		0.886594, 0.017732, 0.462209,
		-0.001850, -0.999121, 0.041878,
		10.911948, 14.666659, 29.825424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.646888, 15.064514, 29.593678>,  <10.913243, 15.366044, 29.796108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.646888, 15.064514, 29.593678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.390296, 14.760900, 29.549194>,  <11.236341, 14.578731, 29.522505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.390296, 14.760900, 29.549194>,  <11.646888, 15.064514, 29.593678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.390296, 14.760900, 29.549194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373201, -0.182119, -0.909700,
		0.670243, -0.625057, 0.400099,
		-0.641480, -0.759037, -0.111208,
		11.197852, 14.533189, 29.515833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.955081, 14.460050, 29.301231>,  <11.646888, 15.064514, 29.593678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.955081, 14.460050, 29.301231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.569176, 14.379286, 29.233747>,  <11.337632, 14.330828, 29.193256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.569176, 14.379286, 29.233747>,  <11.955081, 14.460050, 29.301231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.569176, 14.379286, 29.233747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239597, -0.409185, -0.880432,
		0.108733, -0.889832, 0.443144,
		-0.964764, -0.201908, -0.168709,
		11.279746, 14.318713, 29.183134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.985265, 13.884123, 28.806301>,  <11.955081, 14.460050, 29.301231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.985265, 13.884123, 28.806301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.609047, 14.014503, 28.768072>,  <11.383316, 14.092731, 28.745134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.609047, 14.014503, 28.768072>,  <11.985265, 13.884123, 28.806301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.609047, 14.014503, 28.768072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012727, -0.247358, -0.968841,
		-0.339435, -0.912453, 0.228503,
		-0.940543, 0.325951, -0.095575,
		11.326883, 14.112288, 28.739399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574998, 13.309790, 28.490564>,  <11.985265, 13.884123, 28.806301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574998, 13.309790, 28.490564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.413737, 13.669173, 28.421005>,  <11.316981, 13.884804, 28.379269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.413737, 13.669173, 28.421005>,  <11.574998, 13.309790, 28.490564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.413737, 13.669173, 28.421005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221531, -0.088560, -0.971124,
		-0.887915, -0.430033, -0.163334,
		-0.403151, 0.898459, -0.173899,
		11.292792, 13.938711, 28.368835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.162537, 13.193158, 27.907591>,  <11.574998, 13.309790, 28.490564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.162537, 13.193158, 27.907591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.230137, 13.587403, 27.908466>,  <11.270697, 13.823951, 27.908991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.230137, 13.587403, 27.908466>,  <11.162537, 13.193158, 27.907591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.230137, 13.587403, 27.908466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156553, -0.024654, -0.987362,
		-0.973103, 0.167208, -0.158468,
		0.169001, 0.985613, 0.002186,
		11.280837, 13.883087, 27.909122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.857973, 13.523020, 27.245575>,  <11.162537, 13.193158, 27.907591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.857973, 13.523020, 27.245575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.122522, 13.799139, 27.362928>,  <11.281252, 13.964810, 27.433340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.122522, 13.799139, 27.362928>,  <10.857973, 13.523020, 27.245575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.122522, 13.799139, 27.362928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287815, 0.127643, -0.949142,
		-0.692639, 0.712177, -0.114259,
		0.661372, 0.690298, 0.293386,
		11.320934, 14.006228, 27.450945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.719910, 14.143938, 26.900944>,  <10.857973, 13.523020, 27.245575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.719910, 14.143938, 26.900944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.105971, 14.201025, 26.988678>,  <11.337608, 14.235277, 27.041319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.105971, 14.201025, 26.988678>,  <10.719910, 14.143938, 26.900944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.105971, 14.201025, 26.988678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162610, 0.329606, -0.930010,
		-0.205024, 0.933269, 0.294913,
		0.965154, 0.142718, 0.219336,
		11.395517, 14.243840, 27.054480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.353496, 14.933228, 26.929825>,  <10.719910, 14.143938, 26.900944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.353496, 14.933228, 26.929825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.976554, 14.958054, 26.798300>,  <9.750389, 14.972949, 26.719385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.976554, 14.958054, 26.798300>,  <10.353496, 14.933228, 26.929825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.976554, 14.958054, 26.798300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334393, -0.138717, 0.932169,
		0.012242, 0.988386, 0.151474,
		-0.942354, 0.062063, -0.328811,
		9.693848, 14.976672, 26.699656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.952117, 15.319051, 27.413200>,  <10.353496, 14.933228, 26.929825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.952117, 15.319051, 27.413200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.663227, 15.118661, 27.222448>,  <9.489893, 14.998427, 27.107998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.663227, 15.118661, 27.222448>,  <9.952117, 15.319051, 27.413200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.663227, 15.118661, 27.222448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451033, -0.181584, 0.873840,
		-0.524365, 0.846198, -0.094812,
		-0.722226, -0.500975, -0.476880,
		9.446559, 14.968369, 27.079384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.385063, 15.387778, 27.826111>,  <9.952117, 15.319051, 27.413200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.385063, 15.387778, 27.826111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.269418, 15.070168, 27.612221>,  <9.200030, 14.879601, 27.483887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.269418, 15.070168, 27.612221>,  <9.385063, 15.387778, 27.826111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.269418, 15.070168, 27.612221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667311, -0.233335, 0.707284,
		-0.686373, 0.561316, -0.462403,
		-0.289115, -0.794027, -0.534728,
		9.182683, 14.831960, 27.451803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.651196, 15.238827, 27.957682>,  <9.385063, 15.387778, 27.826111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.651196, 15.238827, 27.957682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.776497, 14.889896, 27.807526>,  <8.851678, 14.680538, 27.717432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.776497, 14.889896, 27.807526>,  <8.651196, 15.238827, 27.957682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.776497, 14.889896, 27.807526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490654, -0.487104, 0.722487,
		-0.813100, -0.042134, -0.580598,
		0.313253, -0.872327, -0.375391,
		8.870473, 14.628199, 27.694908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.034362, 14.920486, 27.765703>,  <8.651196, 15.238827, 27.957682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.034362, 14.920486, 27.765703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.317204, 14.643326, 27.822109>,  <8.486910, 14.477029, 27.855953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.317204, 14.643326, 27.822109>,  <8.034362, 14.920486, 27.765703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.317204, 14.643326, 27.822109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561794, -0.429403, 0.707107,
		-0.429403, -0.579223, -0.692902,
		-0.707107, 0.692902, -0.141017,
		8.529337, 14.435455, 27.864414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.689410, 14.294100, 27.786478>,  <8.034362, 14.920486, 27.765703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.689410, 14.294100, 27.786478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.033447, 14.237971, 27.982662>,  <8.239869, 14.204294, 28.100372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.033447, 14.237971, 27.982662>,  <7.689410, 14.294100, 27.786478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.033447, 14.237971, 27.982662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497080, -0.446658, 0.743914,
		0.114681, -0.883632, -0.453919,
		0.860093, -0.140321, 0.490459,
		8.291475, 14.195875, 28.129801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.580712, 13.708620, 28.032602>,  <7.689410, 14.294100, 27.786478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.580712, 13.708620, 28.032602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.886552, 13.836461, 28.256474>,  <8.070056, 13.913166, 28.390797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.886552, 13.836461, 28.256474>,  <7.580712, 13.708620, 28.032602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.886552, 13.836461, 28.256474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423436, -0.405571, 0.810070,
		0.485891, -0.856368, -0.174768,
		0.764600, 0.319602, 0.559680,
		8.115932, 13.932342, 28.424377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.833796, 13.109807, 27.776295>,  <7.580712, 13.708620, 28.032602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.833796, 13.109807, 27.776295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.623971, 12.824794, 27.589905>,  <7.498076, 12.653786, 27.478071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.623971, 12.824794, 27.589905>,  <7.833796, 13.109807, 27.776295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.623971, 12.824794, 27.589905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335887, 0.329723, -0.882305,
		0.782314, -0.619338, 0.066371,
		-0.524561, -0.712533, -0.465975,
		7.466603, 12.611033, 27.450111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.235336, 12.914532, 27.212229>,  <7.833796, 13.109807, 27.776295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.235336, 12.914532, 27.212229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.901854, 12.738482, 27.078829>,  <7.701764, 12.632852, 26.998789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.901854, 12.738482, 27.078829>,  <8.235336, 12.914532, 27.212229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.901854, 12.738482, 27.078829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329897, 0.087346, -0.939967,
		0.442835, -0.893678, 0.072375,
		-0.833706, -0.440126, -0.333502,
		7.651742, 12.606443, 26.978779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.467251, 12.608694, 26.632633>,  <8.235336, 12.914532, 27.212229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.467251, 12.608694, 26.632633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.071594, 12.623417, 26.575718>,  <7.834200, 12.632251, 26.541569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.071594, 12.623417, 26.575718>,  <8.467251, 12.608694, 26.632633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.071594, 12.623417, 26.575718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146612, 0.179406, -0.972789,
		-0.010278, -0.983086, -0.182854,
		-0.989140, 0.036807, -0.142288,
		7.774852, 12.634459, 26.533031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.236712, 12.173006, 26.062637>,  <8.467251, 12.608694, 26.632633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.236712, 12.173006, 26.062637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.932059, 12.430582, 26.091631>,  <7.749267, 12.585128, 26.109028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.932059, 12.430582, 26.091631>,  <8.236712, 12.173006, 26.062637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.932059, 12.430582, 26.091631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075499, 0.199277, -0.977030,
		-0.643595, -0.738667, -0.200393,
		-0.761633, 0.643941, 0.072485,
		7.703569, 12.623764, 26.113377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.924548, 12.113716, 25.370987>,  <8.236712, 12.173006, 26.062637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.924548, 12.113716, 25.370987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.766386, 12.452595, 25.512924>,  <7.671488, 12.655922, 25.598087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.766386, 12.452595, 25.512924>,  <7.924548, 12.113716, 25.370987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.766386, 12.452595, 25.512924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019271, 0.378589, -0.925364,
		-0.918304, -0.372733, -0.133370,
		-0.395406, 0.847196, 0.354843,
		7.647764, 12.706754, 25.619377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.356597, 12.286208, 24.905170>,  <7.924548, 12.113716, 25.370987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.356597, 12.286208, 24.905170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.475024, 12.634314, 25.062643>,  <7.546081, 12.843177, 25.157127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.475024, 12.634314, 25.062643>,  <7.356597, 12.286208, 24.905170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.475024, 12.634314, 25.062643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141327, 0.447536, -0.883028,
		-0.944653, 0.205799, 0.255493,
		0.296069, 0.870263, 0.393682,
		7.563845, 12.895392, 25.180748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.840062, 12.780913, 24.709394>,  <7.356597, 12.286208, 24.905170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.840062, 12.780913, 24.709394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.170707, 12.984852, 24.804699>,  <7.369094, 13.107215, 24.861881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.170707, 12.984852, 24.804699>,  <6.840062, 12.780913, 24.709394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.170707, 12.984852, 24.804699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111736, 0.563628, -0.818437,
		-0.551566, 0.649909, 0.522870,
		0.826614, 0.509845, 0.238260,
		7.418691, 13.137805, 24.876177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<11.088232, 9.767479, 30.069658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.208199, 10.140317, 30.150896>,  <11.280178, 10.364020, 30.199638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.208199, 10.140317, 30.150896>,  <11.088232, 9.767479, 30.069658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.208199, 10.140317, 30.150896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680025, -0.059582, -0.730764,
		-0.669042, 0.357277, -0.651718,
		0.299916, 0.932096, 0.203095,
		11.298173, 10.419946, 30.211824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006754, 10.358849, 29.577358>,  <11.088232, 9.767479, 30.069658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.006754, 10.358849, 29.577358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.333659, 10.479249, 29.773920>,  <11.529802, 10.551490, 29.891857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.333659, 10.479249, 29.773920>,  <11.006754, 10.358849, 29.577358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.333659, 10.479249, 29.773920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493463, 0.074864, -0.866539,
		-0.297619, 0.950680, -0.087350,
		0.817262, 0.301002, 0.491406,
		11.578837, 10.569550, 29.921343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.239769, 10.832201, 29.297892>,  <11.006754, 10.358849, 29.577358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.239769, 10.832201, 29.297892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.573992, 10.700166, 29.473568>,  <11.774526, 10.620945, 29.578974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.573992, 10.700166, 29.473568>,  <11.239769, 10.832201, 29.297892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573992, 10.700166, 29.473568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476353, 0.036967, -0.878477,
		0.273739, 0.943226, 0.188126,
		0.835557, -0.330087, 0.439190,
		11.824658, 10.601139, 29.605326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.838923, 11.299780, 29.089067>,  <11.239769, 10.832201, 29.297892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.838923, 11.299780, 29.089067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.030237, 10.969207, 29.207895>,  <12.145025, 10.770863, 29.279192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.030237, 10.969207, 29.207895>,  <11.838923, 11.299780, 29.089067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.030237, 10.969207, 29.207895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449263, -0.060405, -0.891355,
		0.754590, 0.559785, 0.342395,
		0.478285, -0.826433, 0.297072,
		12.173722, 10.721277, 29.297016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.437930, 11.354402, 28.744543>,  <11.838923, 11.299780, 29.089067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.437930, 11.354402, 28.744543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.392902, 10.972848, 28.855852>,  <12.365886, 10.743916, 28.922638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.392902, 10.972848, 28.855852>,  <12.437930, 11.354402, 28.744543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.392902, 10.972848, 28.855852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366790, -0.300164, -0.880549,
		0.923468, 0.002943, 0.383664,
		-0.112570, -0.953883, 0.278272,
		12.359131, 10.686683, 28.939333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.104206, 11.089905, 28.597841>,  <12.437930, 11.354402, 28.744543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.104206, 11.089905, 28.597841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.867254, 10.767659, 28.594431>,  <12.725083, 10.574312, 28.592384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.867254, 10.767659, 28.594431>,  <13.104206, 11.089905, 28.597841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.867254, 10.767659, 28.594431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391112, -0.278307, -0.877255,
		0.704356, -0.523003, 0.479948,
		-0.592380, -0.805614, -0.008526,
		12.689540, 10.525975, 28.591873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.559472, 10.581690, 28.391184>,  <13.104206, 11.089905, 28.597841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.559472, 10.581690, 28.391184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.184758, 10.468722, 28.308556>,  <12.959929, 10.400942, 28.258978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.184758, 10.468722, 28.308556>,  <13.559472, 10.581690, 28.391184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.184758, 10.468722, 28.308556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263754, -0.182005, -0.947263,
		0.229929, -0.941867, 0.244989,
		-0.936785, -0.282420, -0.206573,
		12.903723, 10.383997, 28.246584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692109, 10.020885, 27.990746>,  <13.559472, 10.581690, 28.391184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.692109, 10.020885, 27.990746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.300461, 10.052226, 27.915716>,  <13.065472, 10.071031, 27.870699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.300461, 10.052226, 27.915716>,  <13.692109, 10.020885, 27.990746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.300461, 10.052226, 27.915716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145009, -0.377445, -0.914608,
		-0.142458, -0.922712, 0.358202,
		-0.979121, 0.078350, -0.187572,
		13.006724, 10.075731, 27.859444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581883, 9.422136, 27.581894>,  <13.692109, 10.020885, 27.990746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581883, 9.422136, 27.581894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.262973, 9.647127, 27.494287>,  <13.071627, 9.782122, 27.441725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.262973, 9.647127, 27.494287>,  <13.581883, 9.422136, 27.581894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.262973, 9.647127, 27.494287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087063, -0.251886, -0.963833,
		-0.597301, -0.787510, 0.151851,
		-0.797277, 0.562478, -0.219015,
		13.023789, 9.815870, 27.428583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181523, 8.910499, 27.044586>,  <13.581883, 9.422136, 27.581894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181523, 8.910499, 27.044586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.068274, 9.292727, 27.011776>,  <13.000324, 9.522063, 26.992090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.068274, 9.292727, 27.011776>,  <13.181523, 8.910499, 27.044586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068274, 9.292727, 27.011776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102064, -0.115060, -0.988101,
		-0.953637, -0.271383, 0.130106,
		-0.283123, 0.955569, -0.082027,
		12.983336, 9.579397, 26.987167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.677904, 8.900803, 26.502350>,  <13.181523, 8.910499, 27.044586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.677904, 8.900803, 26.502350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.772792, 9.289299, 26.510525>,  <12.829724, 9.522397, 26.515430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.772792, 9.289299, 26.510525>,  <12.677904, 8.900803, 26.502350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772792, 9.289299, 26.510525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065654, 0.004961, -0.997830,
		-0.969235, 0.238048, -0.062589,
		0.237221, 0.971241, 0.020437,
		12.843958, 9.580671, 26.516655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.322604, 9.106804, 25.993858>,  <12.677904, 8.900803, 26.502350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.322604, 9.106804, 25.993858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.604377, 9.384377, 26.053499>,  <12.773440, 9.550920, 26.089285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.604377, 9.384377, 26.053499>,  <12.322604, 9.106804, 25.993858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604377, 9.384377, 26.053499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105442, 0.105429, -0.988821,
		-0.701895, 0.712279, 0.001098,
		0.704432, 0.693933, 0.149104,
		12.815706, 9.592556, 26.098230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.731382, 9.168315, 25.565155>,  <12.322604, 9.106804, 25.993858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.731382, 9.168315, 25.565155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.397282, 9.360443, 25.458086>,  <11.196821, 9.475719, 25.393845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.397282, 9.360443, 25.458086>,  <11.731382, 9.168315, 25.565155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.397282, 9.360443, 25.458086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392007, -0.178781, 0.902423,
		0.385597, 0.858679, 0.337616,
		-0.835251, 0.480320, -0.267671,
		11.146707, 9.504539, 25.377785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.582497, 9.627794, 26.048990>,  <11.731382, 9.168315, 25.565155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.582497, 9.627794, 26.048990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.227469, 9.552466, 25.880819>,  <11.014453, 9.507270, 25.779917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.227469, 9.552466, 25.880819>,  <11.582497, 9.627794, 26.048990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.227469, 9.552466, 25.880819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396296, -0.153206, 0.905250,
		-0.234888, 0.970084, 0.061351,
		-0.887568, -0.188319, -0.420427,
		10.961199, 9.495971, 25.754692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.115805, 9.870823, 26.579897>,  <11.582497, 9.627794, 26.048990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.115805, 9.870823, 26.579897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.849100, 9.680973, 26.350060>,  <10.689077, 9.567063, 26.212156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.849100, 9.680973, 26.350060>,  <11.115805, 9.870823, 26.579897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.849100, 9.680973, 26.350060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627844, -0.057684, 0.776198,
		-0.401548, 0.878295, -0.259530,
		-0.666761, -0.474626, -0.574596,
		10.649072, 9.538586, 26.177681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.542521, 10.198496, 26.636572>,  <11.115805, 9.870823, 26.579897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.542521, 10.198496, 26.636572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.416798, 9.847844, 26.490843>,  <10.341363, 9.637453, 26.403404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.416798, 9.847844, 26.490843>,  <10.542521, 10.198496, 26.636572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.416798, 9.847844, 26.490843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778422, 0.018322, 0.627473,
		-0.543386, 0.480819, -0.688146,
		-0.314309, -0.876628, -0.364325,
		10.322505, 9.584856, 26.381546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.868470, 10.315203, 26.464113>,  <10.542521, 10.198496, 26.636572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.868470, 10.315203, 26.464113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.914248, 9.926401, 26.546196>,  <9.941715, 9.693120, 26.595446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.914248, 9.926401, 26.546196>,  <9.868470, 10.315203, 26.464113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.914248, 9.926401, 26.546196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841994, 0.014716, 0.539287,
		-0.527208, -0.234504, -0.816737,
		0.114446, -0.972004, 0.205209,
		9.948583, 9.634800, 26.607759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.258307, 10.142561, 26.374250>,  <9.868470, 10.315203, 26.464113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.258307, 10.142561, 26.374250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.464513, 9.888822, 26.604675>,  <9.588236, 9.736578, 26.742931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.464513, 9.888822, 26.604675>,  <9.258307, 10.142561, 26.374250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.464513, 9.888822, 26.604675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741272, 0.007095, 0.671167,
		-0.429840, -0.773015, -0.466567,
		0.515512, -0.634348, 0.576064,
		9.619166, 9.698517, 26.777494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.777528, 9.612819, 26.621929>,  <9.258307, 10.142561, 26.374250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.777528, 9.612819, 26.621929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.067554, 9.575144, 26.894814>,  <9.241569, 9.552539, 27.058544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.067554, 9.575144, 26.894814>,  <8.777528, 9.612819, 26.621929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.067554, 9.575144, 26.894814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686376, -0.179820, 0.704665,
		0.056305, -0.979180, -0.195029,
		0.725064, -0.094187, 0.682210,
		9.285072, 9.546887, 27.099476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.410079, 9.439393, 27.091900>,  <8.777528, 9.612819, 26.621929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.410079, 9.439393, 27.091900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.755906, 9.442829, 27.292877>,  <8.963403, 9.444891, 27.413464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.755906, 9.442829, 27.292877>,  <8.410079, 9.439393, 27.091900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.755906, 9.442829, 27.292877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491444, -0.194284, 0.848962,
		0.104910, -0.980908, -0.163749,
		0.864567, 0.008591, 0.502443,
		9.015276, 9.445406, 27.443611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.463898, 8.842104, 27.486807>,  <8.410079, 9.439393, 27.091900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.463898, 8.842104, 27.486807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.689843, 9.113844, 27.674173>,  <8.825410, 9.276888, 27.786594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.689843, 9.113844, 27.674173>,  <8.463898, 8.842104, 27.486807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.689843, 9.113844, 27.674173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593832, -0.059495, 0.802386,
		0.572970, -0.731398, 0.369814,
		0.564862, 0.679350, 0.468417,
		8.859302, 9.317649, 27.814699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.624705, 8.615355, 28.141041>,  <8.463898, 8.842104, 27.486807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.624705, 8.615355, 28.141041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.681704, 9.010984, 28.156145>,  <8.715902, 9.248363, 28.165209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.681704, 9.010984, 28.156145>,  <8.624705, 8.615355, 28.141041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.681704, 9.010984, 28.156145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322366, 0.010304, 0.946559,
		0.935828, -0.147054, 0.320313,
		0.142496, 0.989075, 0.037763,
		8.724452, 9.307707, 28.167475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.039897, 8.733222, 28.723188>,  <8.624705, 8.615355, 28.141041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.039897, 8.733222, 28.723188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.851749, 9.071565, 28.622566>,  <8.738861, 9.274570, 28.562193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.851749, 9.071565, 28.622566>,  <9.039897, 8.733222, 28.723188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.851749, 9.071565, 28.622566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265689, 0.136090, 0.954405,
		0.841523, 0.515758, 0.160722,
		-0.470370, 0.845856, -0.251555,
		8.710638, 9.325321, 28.547100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.136985, 9.113183, 29.310575>,  <9.039897, 8.733222, 28.723188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.136985, 9.113183, 29.310575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.824664, 9.288349, 29.132326>,  <8.637272, 9.393449, 29.025377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.824664, 9.288349, 29.132326>,  <9.136985, 9.113183, 29.310575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.824664, 9.288349, 29.132326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464094, 0.070994, 0.882936,
		0.418288, 0.896209, 0.147802,
		-0.780802, 0.437916, -0.445621,
		8.590424, 9.419724, 28.998640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.992320, 9.805405, 29.711235>,  <9.136985, 9.113183, 29.310575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.992320, 9.805405, 29.711235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.665541, 9.687531, 29.512939>,  <8.469473, 9.616806, 29.393963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.665541, 9.687531, 29.512939>,  <8.992320, 9.805405, 29.711235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.665541, 9.687531, 29.512939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561137, 0.207743, 0.801229,
		-0.133124, 0.932739, -0.335074,
		-0.816948, -0.294685, -0.495739,
		8.420456, 9.599125, 29.364218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.462594, 10.310639, 29.806852>,  <8.992320, 9.805405, 29.711235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.462594, 10.310639, 29.806852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.269190, 9.978249, 29.696802>,  <8.153148, 9.778814, 29.630772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.269190, 9.978249, 29.696802>,  <8.462594, 10.310639, 29.806852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.269190, 9.978249, 29.696802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771184, 0.255692, 0.583007,
		-0.414117, 0.494064, -0.764466,
		-0.483510, -0.830977, -0.275128,
		8.124137, 9.728955, 29.614264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.792722, 10.355021, 29.300928>,  <8.462594, 10.310639, 29.806852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.792722, 10.355021, 29.300928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.557416, 10.624732, 29.479500>,  <7.416233, 10.786558, 29.586643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.557416, 10.624732, 29.479500>,  <7.792722, 10.355021, 29.300928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.557416, 10.624732, 29.479500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021020, 0.539116, -0.841969,
		-0.808396, -0.504684, -0.302969,
		-0.588264, 0.674276, 0.446428,
		7.380938, 10.827015, 29.613428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.218977, 10.415230, 28.976694>,  <7.792722, 10.355021, 29.300928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.218977, 10.415230, 28.976694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.213855, 10.758190, 29.182491>,  <7.210782, 10.963966, 29.305969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.213855, 10.758190, 29.182491>,  <7.218977, 10.415230, 28.976694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.213855, 10.758190, 29.182491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062588, 0.514212, -0.855376,
		-0.997957, 0.021248, -0.060247,
		-0.012805, 0.857400, 0.514492,
		7.210014, 11.015410, 29.336840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.774771, 10.791246, 28.633001>,  <7.218977, 10.415230, 28.976694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.774771, 10.791246, 28.633001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.985974, 11.068228, 28.829660>,  <7.112696, 11.234417, 28.947657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.985974, 11.068228, 28.829660>,  <6.774771, 10.791246, 28.633001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.985974, 11.068228, 28.829660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123728, 0.635474, -0.762145,
		-0.840178, 0.341588, 0.421210,
		0.528007, 0.692453, 0.491647,
		7.144376, 11.275964, 28.977154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.373316, 11.325761, 28.592701>,  <6.774771, 10.791246, 28.633001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.373316, 11.325761, 28.592701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.750498, 11.441127, 28.659218>,  <6.976807, 11.510346, 28.699127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.750498, 11.441127, 28.659218>,  <6.373316, 11.325761, 28.592701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.750498, 11.441127, 28.659218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081672, 0.684631, -0.724300,
		-0.322747, 0.669401, 0.669131,
		0.942955, 0.288415, 0.166291,
		7.033384, 11.527651, 28.709105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.359244, 12.075656, 28.677025>,  <6.373316, 11.325761, 28.592701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.359244, 12.075656, 28.677025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.730994, 11.973950, 28.569984>,  <6.954044, 11.912927, 28.505760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.730994, 11.973950, 28.569984>,  <6.359244, 12.075656, 28.677025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.730994, 11.973950, 28.569984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021779, 0.761450, -0.647858,
		0.368493, 0.596275, 0.713211,
		0.929375, -0.254264, -0.267603,
		7.009807, 11.897671, 28.489704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.596903, 12.635425, 28.485571>,  <6.359244, 12.075656, 28.677025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.596903, 12.635425, 28.485571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.879891, 12.391727, 28.342291>,  <7.049685, 12.245509, 28.256323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.879891, 12.391727, 28.342291>,  <6.596903, 12.635425, 28.485571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.879891, 12.391727, 28.342291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160347, 0.631984, -0.758212,
		0.688311, 0.478977, 0.544801,
		0.707472, -0.609243, -0.358199,
		7.092133, 12.208955, 28.234831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.106723, 13.069993, 28.183657>,  <6.596903, 12.635425, 28.485571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.106723, 13.069993, 28.183657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.146994, 12.724498, 27.986143>,  <7.171157, 12.517200, 27.867636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.146994, 12.724498, 27.986143>,  <7.106723, 13.069993, 28.183657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.146994, 12.724498, 27.986143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056320, 0.500455, -0.863928,
		0.993324, 0.059169, 0.099030,
		0.100678, -0.863738, -0.493782,
		7.177197, 12.465376, 27.838009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.840638, 13.072210, 28.487562>,  <7.106723, 13.069993, 28.183657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.840638, 13.072210, 28.487562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.005090, 13.402176, 28.642735>,  <8.103761, 13.600155, 28.735838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.005090, 13.402176, 28.642735>,  <7.840638, 13.072210, 28.487562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.005090, 13.402176, 28.642735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044651, -0.406826, 0.912414,
		0.910483, -0.392443, -0.130425,
		0.411130, 0.824913, 0.387931,
		8.128428, 13.649650, 28.759113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.336247, 12.845172, 28.849880>,  <7.840638, 13.072210, 28.487562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.336247, 12.845172, 28.849880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.258282, 13.208620, 28.997620>,  <8.211502, 13.426689, 29.086264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.258282, 13.208620, 28.997620>,  <8.336247, 12.845172, 28.849880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.258282, 13.208620, 28.997620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165948, -0.340592, 0.925450,
		0.966680, 0.241677, -0.084397,
		-0.194915, 0.908620, 0.369349,
		8.199807, 13.481206, 29.108425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.839051, 12.912598, 29.398333>,  <8.336247, 12.845172, 28.849880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.839051, 12.912598, 29.398333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.559019, 13.183937, 29.487534>,  <8.391000, 13.346741, 29.541054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.559019, 13.183937, 29.487534>,  <8.839051, 12.912598, 29.398333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.559019, 13.183937, 29.487534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103782, -0.212327, 0.971672,
		0.706482, 0.703392, 0.078245,
		-0.700080, 0.678348, 0.223005,
		8.348995, 13.387442, 29.554436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.099422, 13.334051, 29.869337>,  <8.839051, 12.912598, 29.398333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.099422, 13.334051, 29.869337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.705493, 13.390803, 29.909323>,  <8.469135, 13.424854, 29.933313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.705493, 13.390803, 29.909323>,  <9.099422, 13.334051, 29.869337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.705493, 13.390803, 29.909323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090361, -0.072604, 0.993259,
		0.148181, 0.987218, 0.058682,
		-0.984823, 0.141880, 0.099965,
		8.410046, 13.433368, 29.939312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.938541, 13.925613, 30.334715>,  <9.099422, 13.334051, 29.869337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.938541, 13.925613, 30.334715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.619841, 13.684232, 30.347555>,  <8.428620, 13.539403, 30.355259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.619841, 13.684232, 30.347555>,  <8.938541, 13.925613, 30.334715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.619841, 13.684232, 30.347555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021401, 0.081262, 0.996463,
		-0.603929, 0.793246, -0.077660,
		-0.796751, -0.603455, 0.032100,
		8.380816, 13.503196, 30.357185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.722531, 14.109912, 30.891760>,  <8.938541, 13.925613, 30.334715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.722531, 14.109912, 30.891760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.494771, 13.784616, 30.843729>,  <8.358114, 13.589437, 30.814911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.494771, 13.784616, 30.843729>,  <8.722531, 14.109912, 30.891760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.494771, 13.784616, 30.843729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088547, -0.084547, 0.992477,
		-0.817277, 0.575751, -0.023868,
		-0.569402, -0.813242, -0.120079,
		8.323951, 13.540643, 30.807705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.085632, 14.284426, 31.092833>,  <8.722531, 14.109912, 30.891760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.085632, 14.284426, 31.092833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.111619, 13.887512, 31.135077>,  <8.127211, 13.649364, 31.160423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.111619, 13.887512, 31.135077>,  <8.085632, 14.284426, 31.092833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.111619, 13.887512, 31.135077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128780, 0.096613, 0.986956,
		-0.989543, -0.077720, -0.121510,
		0.064966, -0.992283, 0.105612,
		8.131109, 13.589828, 31.166759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.515564, 14.144759, 31.498989>,  <8.085632, 14.284426, 31.092833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.515564, 14.144759, 31.498989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.735955, 13.812655, 31.532677>,  <7.868189, 13.613393, 31.552889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.735955, 13.812655, 31.532677>,  <7.515564, 14.144759, 31.498989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.735955, 13.812655, 31.532677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278861, -0.088057, 0.956286,
		-0.786550, -0.550376, -0.280045,
		0.550977, -0.830261, 0.084218,
		7.901248, 13.563578, 31.557941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.091190, 13.736145, 31.748728>,  <7.515564, 14.144759, 31.498989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.091190, 13.736145, 31.748728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.444139, 13.569662, 31.836533>,  <7.655909, 13.469772, 31.889215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.444139, 13.569662, 31.836533>,  <7.091190, 13.736145, 31.748728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.444139, 13.569662, 31.836533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303324, -0.146461, 0.941564,
		-0.359738, -0.897396, -0.255480,
		0.882374, -0.416210, 0.219514,
		7.708852, 13.444799, 31.902388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.757869, 19.272657, 17.884176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.049116, 19.068727, 18.067446>,  <14.223865, 18.946369, 18.177408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.049116, 19.068727, 18.067446>,  <13.757869, 19.272657, 17.884176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.049116, 19.068727, 18.067446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652936, -0.312438, 0.689969,
		-0.208611, -0.801538, -0.560373,
		0.728118, -0.509823, 0.458175,
		14.267551, 18.915779, 18.204897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.373043, 18.759077, 18.136938>,  <13.757869, 19.272657, 17.884176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.373043, 18.759077, 18.136938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713322, 18.687038, 18.334475>,  <13.917489, 18.643816, 18.452997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713322, 18.687038, 18.334475>,  <13.373043, 18.759077, 18.136938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713322, 18.687038, 18.334475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520455, -0.420418, 0.743220,
		0.073770, -0.889278, -0.451379,
		0.850697, -0.180095, 0.493843,
		13.968531, 18.633009, 18.482628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397334, 18.017763, 18.353594>,  <13.373043, 18.759077, 18.136938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397334, 18.017763, 18.353594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618506, 18.237581, 18.604118>,  <13.751210, 18.369473, 18.754433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618506, 18.237581, 18.604118>,  <13.397334, 18.017763, 18.353594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.618506, 18.237581, 18.604118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461625, -0.423728, 0.779331,
		0.693664, -0.720037, 0.019392,
		0.552930, 0.549546, 0.626312,
		13.784386, 18.402445, 18.792011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.534280, 17.600468, 18.883640>,  <13.397334, 18.017763, 18.353594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.534280, 17.600468, 18.883640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.637255, 17.945589, 19.057674>,  <13.699039, 18.152662, 19.162094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.637255, 17.945589, 19.057674>,  <13.534280, 17.600468, 18.883640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.637255, 17.945589, 19.057674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456022, -0.288487, 0.841914,
		0.851921, -0.415150, 0.319189,
		0.257438, 0.862801, 0.435086,
		13.714486, 18.204430, 19.188200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861986, 17.438698, 19.525612>,  <13.534280, 17.600468, 18.883640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.861986, 17.438698, 19.525612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.689898, 17.798307, 19.558281>,  <13.586646, 18.014072, 19.577883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.689898, 17.798307, 19.558281>,  <13.861986, 17.438698, 19.525612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.689898, 17.798307, 19.558281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470922, -0.300696, 0.829346,
		0.770159, 0.318340, 0.552734,
		-0.430219, 0.899023, 0.081671,
		13.560833, 18.068014, 19.582783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.908216, 17.628870, 20.225912>,  <13.861986, 17.438698, 19.525612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.908216, 17.628870, 20.225912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.612253, 17.844658, 20.065161>,  <13.434675, 17.974131, 19.968710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.612253, 17.844658, 20.065161>,  <13.908216, 17.628870, 20.225912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.612253, 17.844658, 20.065161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567511, -0.179804, 0.803494,
		0.361202, 0.822583, 0.439194,
		-0.739909, 0.539471, -0.401879,
		13.390281, 18.006498, 19.944597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593049, 17.964914, 20.782410>,  <13.908216, 17.628870, 20.225912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593049, 17.964914, 20.782410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310533, 17.974241, 20.499395>,  <13.141023, 17.979837, 20.329586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.310533, 17.974241, 20.499395>,  <13.593049, 17.964914, 20.782410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.310533, 17.974241, 20.499395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694118, -0.219213, 0.685671,
		-0.139113, 0.975399, 0.171013,
		-0.706291, 0.023318, -0.707537,
		13.098645, 17.981237, 20.287134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.056293, 18.460146, 21.068689>,  <13.593049, 17.964914, 20.782410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.056293, 18.460146, 21.068689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881363, 18.246159, 20.779537>,  <12.776404, 18.117767, 20.606047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.881363, 18.246159, 20.779537>,  <13.056293, 18.460146, 21.068689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.881363, 18.246159, 20.779537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806451, -0.122429, 0.578488,
		-0.397973, 0.835956, -0.377882,
		-0.437326, -0.534966, -0.722881,
		12.750165, 18.085669, 20.562674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336087, 18.648661, 21.086229>,  <13.056293, 18.460146, 21.068689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.336087, 18.648661, 21.086229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364441, 18.295151, 20.901222>,  <12.381454, 18.083046, 20.790218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364441, 18.295151, 20.901222>,  <12.336087, 18.648661, 21.086229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.364441, 18.295151, 20.901222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744965, -0.355253, 0.564644,
		-0.663327, 0.304534, -0.683562,
		0.070884, -0.883773, -0.462516,
		12.385706, 18.030020, 20.762468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.590088, 18.564163, 20.719521>,  <12.336087, 18.648661, 21.086229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.590088, 18.564163, 20.719521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762735, 18.207663, 20.775198>,  <11.866323, 17.993761, 20.808605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.762735, 18.207663, 20.775198>,  <11.590088, 18.564163, 20.719521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.762735, 18.207663, 20.775198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836469, -0.337678, 0.431618,
		-0.337678, -0.302725, -0.891253,
		-0.431618, 0.891253, -0.139194,
		11.892220, 17.940287, 20.816956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.987370, 18.106310, 20.810385>,  <11.590088, 18.564163, 20.719521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.987370, 18.106310, 20.810385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303943, 17.881094, 20.905565>,  <11.493886, 17.745964, 20.962673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303943, 17.881094, 20.905565>,  <10.987370, 18.106310, 20.810385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.303943, 17.881094, 20.905565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558267, -0.507257, 0.656528,
		-0.248948, -0.652438, -0.715786,
		0.791431, -0.563041, 0.237954,
		11.541372, 17.712181, 20.976952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.685370, 17.462860, 20.735012>,  <10.987370, 18.106310, 20.810385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.685370, 17.462860, 20.735012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.999585, 17.436464, 20.981127>,  <11.188114, 17.420626, 21.128796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.999585, 17.436464, 20.981127>,  <10.685370, 17.462860, 20.735012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.999585, 17.436464, 20.981127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559514, -0.500481, 0.660654,
		0.264343, -0.863229, -0.430068,
		0.785536, -0.065990, 0.615287,
		11.235246, 17.416668, 21.165712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.763580, 16.832550, 20.300800>,  <10.685370, 17.462860, 20.735012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.763580, 16.832550, 20.300800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.561943, 16.503468, 20.195696>,  <10.440961, 16.306019, 20.132633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.561943, 16.503468, 20.195696>,  <10.763580, 16.832550, 20.300800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.561943, 16.503468, 20.195696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390316, 0.054385, -0.919073,
		0.770418, -0.565859, 0.293701,
		-0.504093, -0.822707, -0.262763,
		10.410715, 16.256655, 20.116867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.209030, 16.401009, 19.895477>,  <10.763580, 16.832550, 20.300800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.209030, 16.401009, 19.895477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.865889, 16.224865, 19.789518>,  <10.660004, 16.119179, 19.725943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.865889, 16.224865, 19.789518>,  <11.209030, 16.401009, 19.895477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.865889, 16.224865, 19.789518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380211, -0.197085, -0.903658,
		0.345726, -0.875924, 0.336499,
		-0.857854, -0.440358, -0.264899,
		10.608532, 16.092758, 19.710049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.305733, 15.722008, 19.416840>,  <11.209030, 16.401009, 19.895477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.305733, 15.722008, 19.416840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.939087, 15.844877, 19.314495>,  <10.719100, 15.918599, 19.253088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.939087, 15.844877, 19.314495>,  <11.305733, 15.722008, 19.416840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.939087, 15.844877, 19.314495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309140, 0.138820, -0.940830,
		-0.253480, -0.941474, -0.222204,
		-0.916614, 0.307174, -0.255859,
		10.664103, 15.937029, 19.237738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186870, 15.347763, 18.829197>,  <11.305733, 15.722008, 19.416840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186870, 15.347763, 18.829197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.932385, 15.655596, 18.807354>,  <10.779695, 15.840295, 18.794249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.932385, 15.655596, 18.807354>,  <11.186870, 15.347763, 18.829197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.932385, 15.655596, 18.807354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276088, 0.161005, -0.947551,
		-0.720425, -0.617918, -0.314905,
		-0.636210, 0.769581, -0.054608,
		10.741523, 15.886470, 18.790972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.842823, 15.236561, 18.300653>,  <11.186870, 15.347763, 18.829197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.842823, 15.236561, 18.300653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772085, 15.628746, 18.335106>,  <10.729642, 15.864057, 18.355778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772085, 15.628746, 18.335106>,  <10.842823, 15.236561, 18.300653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.772085, 15.628746, 18.335106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232802, 0.126698, -0.964236,
		-0.956310, -0.150469, -0.250660,
		-0.176846, 0.980462, 0.086133,
		10.719031, 15.922885, 18.360947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.348186, 15.450069, 17.778765>,  <10.842823, 15.236561, 18.300653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.348186, 15.450069, 17.778765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.508418, 15.800626, 17.885704>,  <10.604558, 16.010960, 17.949867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.508418, 15.800626, 17.885704>,  <10.348186, 15.450069, 17.778765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.508418, 15.800626, 17.885704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258237, 0.171967, -0.950653,
		-0.879118, 0.449853, -0.157429,
		0.400581, 0.876390, 0.267348,
		10.628592, 16.063543, 17.965908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.991655, 15.938353, 17.334677>,  <10.348186, 15.450069, 17.778765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.991655, 15.938353, 17.334677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.337173, 16.105009, 17.448002>,  <10.544484, 16.205004, 17.515997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.337173, 16.105009, 17.448002>,  <9.991655, 15.938353, 17.334677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.337173, 16.105009, 17.448002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172431, 0.283896, -0.943223,
		-0.473418, 0.863604, 0.173386,
		0.863795, 0.416642, 0.283314,
		10.596313, 16.230001, 17.532995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.033169, 16.639782, 17.016302>,  <9.991655, 15.938353, 17.334677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.033169, 16.639782, 17.016302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.403677, 16.519802, 17.107561>,  <10.625982, 16.447813, 17.162317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.403677, 16.519802, 17.107561>,  <10.033169, 16.639782, 17.016302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.403677, 16.519802, 17.107561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301404, 0.226224, -0.926271,
		0.226224, 0.926743, 0.299951,
		0.926271, -0.299951, 0.228147,
		10.681559, 16.429817, 17.176004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.410604, 17.040810, 16.593344>,  <10.033169, 16.639782, 17.016302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.410604, 17.040810, 16.593344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.695098, 16.797697, 16.734621>,  <10.865795, 16.651831, 16.819387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.695098, 16.797697, 16.734621>,  <10.410604, 17.040810, 16.593344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.695098, 16.797697, 16.734621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455468, 0.015735, -0.890113,
		0.535435, 0.793950, 0.288016,
		0.711237, -0.607780, 0.353193,
		10.908469, 16.615362, 16.840580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.990361, 17.376678, 16.372831>,  <10.410604, 17.040810, 16.593344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.990361, 17.376678, 16.372831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.067348, 16.986519, 16.415827>,  <11.113541, 16.752422, 16.441624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.067348, 16.986519, 16.415827>,  <10.990361, 17.376678, 16.372831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.067348, 16.986519, 16.415827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517972, 0.007949, -0.855361,
		0.833463, 0.220305, 0.506759,
		0.192468, -0.975399, 0.107487,
		11.125089, 16.693899, 16.448072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744820, 17.336878, 16.325407>,  <10.990361, 17.376678, 16.372831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744820, 17.336878, 16.325407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.593480, 16.975704, 16.243856>,  <11.502676, 16.759001, 16.194927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.593480, 16.975704, 16.243856>,  <11.744820, 17.336878, 16.325407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.593480, 16.975704, 16.243856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548852, -0.041470, -0.834890,
		0.745395, -0.427777, 0.511266,
		-0.378349, -0.902932, -0.203875,
		11.479976, 16.704824, 16.182693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.296436, 16.870672, 16.294590>,  <11.744820, 17.336878, 16.325407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.296436, 16.870672, 16.294590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004154, 16.698015, 16.083023>,  <11.828785, 16.594421, 15.956083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004154, 16.698015, 16.083023>,  <12.296436, 16.870672, 16.294590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004154, 16.698015, 16.083023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578149, 0.020765, -0.815667,
		0.363061, -0.901805, 0.234381,
		-0.730706, -0.431644, -0.528917,
		11.784943, 16.568521, 15.924348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.610648, 16.479948, 15.824569>,  <12.296436, 16.870672, 16.294590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.610648, 16.479948, 15.824569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.244945, 16.536131, 15.672568>,  <12.025522, 16.569841, 15.581367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.244945, 16.536131, 15.672568>,  <12.610648, 16.479948, 15.824569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.244945, 16.536131, 15.672568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392038, 0.070213, -0.917265,
		-0.102158, -0.987594, -0.119258,
		-0.914259, 0.140460, -0.380002,
		11.970667, 16.578268, 15.558568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.803007, 15.796062, 15.663308>,  <12.610648, 16.479948, 15.824569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.803007, 15.796062, 15.663308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.906995, 15.728943, 15.282938>,  <12.969388, 15.688672, 15.054716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.906995, 15.728943, 15.282938>,  <12.803007, 15.796062, 15.663308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.906995, 15.728943, 15.282938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799568, -0.589548, -0.114562,
		-0.541394, 0.790112, -0.287430,
		0.259970, -0.167796, -0.950926,
		12.984986, 15.678604, 14.997661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.248233, 15.677197, 15.172866>,  <12.803007, 15.796062, 15.663308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.248233, 15.677197, 15.172866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.456450, 15.571982, 14.847942>,  <12.581381, 15.508853, 14.652988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.456450, 15.571982, 14.847942>,  <12.248233, 15.677197, 15.172866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.456450, 15.571982, 14.847942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850112, -0.248401, -0.464334,
		-0.079640, 0.932259, -0.352916,
		0.520545, -0.263039, -0.812308,
		12.612614, 15.493071, 14.604250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.318439, 15.010386, 15.367821>,  <12.248233, 15.677197, 15.172866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.318439, 15.010386, 15.367821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.643597, 14.824286, 15.507961>,  <12.838692, 14.712626, 15.592046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.643597, 14.824286, 15.507961>,  <12.318439, 15.010386, 15.367821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.643597, 14.824286, 15.507961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264391, 0.241211, 0.933764,
		-0.518942, -0.851681, 0.073071,
		0.812894, -0.465249, 0.350351,
		12.887465, 14.684711, 15.613067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.172919, 14.475327, 15.786924>,  <12.318439, 15.010386, 15.367821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.172919, 14.475327, 15.786924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.514074, 14.647936, 15.904480>,  <12.718767, 14.751502, 15.975014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.514074, 14.647936, 15.904480>,  <12.172919, 14.475327, 15.786924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.514074, 14.647936, 15.904480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468327, 0.383525, 0.795977,
		0.230768, -0.816515, 0.529197,
		0.852887, 0.431523, 0.293891,
		12.769940, 14.777393, 15.992647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.190914, 14.322889, 16.488022>,  <12.172919, 14.475327, 15.786924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.190914, 14.322889, 16.488022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.427087, 14.644844, 16.464188>,  <12.568790, 14.838017, 16.449888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.427087, 14.644844, 16.464188>,  <12.190914, 14.322889, 16.488022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.427087, 14.644844, 16.464188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478100, 0.408282, 0.777642,
		0.650240, -0.430656, 0.625878,
		0.590431, 0.804886, -0.059584,
		12.604216, 14.886310, 16.446312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.521494, 14.319417, 16.985043>,  <12.190914, 14.322889, 16.488022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.521494, 14.319417, 16.985043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891704, 14.401350, 17.112446>,  <12.113830, 14.450510, 17.188889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891704, 14.401350, 17.112446>,  <11.521494, 14.319417, 16.985043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.891704, 14.401350, 17.112446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017048, -0.817699, 0.575394,
		0.378304, -0.537971, -0.753308,
		0.925524, 0.204832, 0.318510,
		12.169361, 14.462800, 17.207998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.724337, 13.626678, 17.143353>,  <11.521494, 14.319417, 16.985043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.724337, 13.626678, 17.143353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.960194, 13.892119, 17.327505>,  <12.101707, 14.051385, 17.437996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.960194, 13.892119, 17.327505>,  <11.724337, 13.626678, 17.143353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.960194, 13.892119, 17.327505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068731, -0.609175, 0.790052,
		0.804735, -0.434206, -0.404805,
		0.589642, 0.663605, 0.460381,
		12.137086, 14.091201, 17.465620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213526, 13.209758, 17.418396>,  <11.724337, 13.626678, 17.143353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213526, 13.209758, 17.418396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.228374, 13.555785, 17.618507>,  <12.237284, 13.763401, 17.738575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.228374, 13.555785, 17.618507>,  <12.213526, 13.209758, 17.418396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.228374, 13.555785, 17.618507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000033, -0.500624, 0.865665,
		0.999311, -0.032152, -0.018555,
		0.037122, 0.865067, 0.500280,
		12.239511, 13.815306, 17.768591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.870425, 13.294182, 17.857418>,  <12.213526, 13.209758, 17.418396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.870425, 13.294182, 17.857418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574222, 13.494819, 18.036325>,  <12.396500, 13.615201, 18.143671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.574222, 13.494819, 18.036325>,  <12.870425, 13.294182, 17.857418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.574222, 13.494819, 18.036325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189635, -0.482532, 0.855103,
		0.644736, 0.718030, 0.262200,
		-0.740509, 0.501593, 0.447270,
		12.352069, 13.645297, 18.170506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117128, 13.474572, 18.485155>,  <12.870425, 13.294182, 17.857418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117128, 13.474572, 18.485155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721367, 13.516468, 18.525377>,  <12.483911, 13.541605, 18.549511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.721367, 13.516468, 18.525377>,  <13.117128, 13.474572, 18.485155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.721367, 13.516468, 18.525377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016785, -0.605396, 0.795748,
		0.144221, 0.789003, 0.597222,
		-0.989403, 0.104739, 0.100554,
		12.424546, 13.547890, 18.555544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.877594, 13.612987, 19.204927>,  <13.117128, 13.474572, 18.485155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.877594, 13.612987, 19.204927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.537324, 13.468212, 19.052425>,  <12.333162, 13.381348, 18.960924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.537324, 13.468212, 19.052425>,  <12.877594, 13.612987, 19.204927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.537324, 13.468212, 19.052425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186867, -0.469682, 0.862832,
		-0.491358, 0.805234, 0.331913,
		-0.850675, -0.361936, -0.381253,
		12.282122, 13.359632, 18.938049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.356195, 13.749240, 19.664289>,  <12.877594, 13.612987, 19.204927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.356195, 13.749240, 19.664289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.191311, 13.463176, 19.438501>,  <12.092381, 13.291537, 19.303028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.191311, 13.463176, 19.438501>,  <12.356195, 13.749240, 19.664289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191311, 13.463176, 19.438501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353592, -0.445421, 0.822540,
		-0.839675, 0.538653, -0.069268,
		-0.412211, -0.715159, -0.564472,
		12.067648, 13.248628, 19.269159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.734613, 13.715444, 19.943737>,  <12.356195, 13.749240, 19.664289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.734613, 13.715444, 19.943737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.793881, 13.370991, 19.749212>,  <11.829442, 13.164319, 19.632498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.793881, 13.370991, 19.749212>,  <11.734613, 13.715444, 19.943737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.793881, 13.370991, 19.749212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277254, -0.508189, 0.815398,
		-0.949303, 0.014014, -0.314050,
		0.148170, -0.861132, -0.486310,
		11.838332, 13.112651, 19.603319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.334936, 13.230309, 20.320272>,  <11.734613, 13.715444, 19.943737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.334936, 13.230309, 20.320272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.583896, 12.982850, 20.128485>,  <11.733272, 12.834374, 20.013412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.583896, 12.982850, 20.128485>,  <11.334936, 13.230309, 20.320272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.583896, 12.982850, 20.128485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061042, -0.649086, 0.758262,
		-0.780316, -0.442674, -0.441754,
		0.622399, -0.618650, -0.479471,
		11.770616, 12.797256, 19.984644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.020302, 12.664975, 20.298153>,  <11.334936, 13.230309, 20.320272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.020302, 12.664975, 20.298153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.411802, 12.586428, 20.274534>,  <11.646703, 12.539299, 20.260363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.411802, 12.586428, 20.274534>,  <11.020302, 12.664975, 20.298153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.411802, 12.586428, 20.274534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090868, -0.673494, 0.733587,
		-0.183819, -0.712633, -0.677026,
		0.978751, -0.196368, -0.059045,
		11.705427, 12.527517, 20.256821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.190328, 11.833311, 20.189402>,  <11.020302, 12.664975, 20.298153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.190328, 11.833311, 20.189402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.516053, 12.003337, 20.347498>,  <11.711489, 12.105352, 20.442356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.516053, 12.003337, 20.347498>,  <11.190328, 11.833311, 20.189402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.516053, 12.003337, 20.347498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062962, -0.741619, 0.667860,
		0.577000, -0.518962, -0.630673,
		0.814313, 0.425064, 0.395239,
		11.760347, 12.130857, 20.466070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.454128, 11.288141, 20.600721>,  <11.190328, 11.833311, 20.189402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.454128, 11.288141, 20.600721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695219, 11.576366, 20.737841>,  <11.839873, 11.749302, 20.820112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695219, 11.576366, 20.737841>,  <11.454128, 11.288141, 20.600721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.695219, 11.576366, 20.737841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138071, -0.517295, 0.844596,
		0.785911, -0.461731, -0.411277,
		0.602727, 0.720563, 0.342796,
		11.876038, 11.792535, 20.840679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.853391, 10.919094, 21.081753>,  <11.454128, 11.288141, 20.600721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.853391, 10.919094, 21.081753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908826, 11.301812, 21.183998>,  <11.942087, 11.531443, 21.245344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.908826, 11.301812, 21.183998>,  <11.853391, 10.919094, 21.081753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.908826, 11.301812, 21.183998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277943, -0.285306, 0.917251,
		0.950548, -0.056073, -0.305474,
		0.138587, 0.956795, 0.255612,
		11.950402, 11.588851, 21.260681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.531256, 11.013402, 21.428698>,  <11.853391, 10.919094, 21.081753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.531256, 11.013402, 21.428698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.292880, 11.307375, 21.558146>,  <12.149855, 11.483759, 21.635815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.292880, 11.307375, 21.558146>,  <12.531256, 11.013402, 21.428698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.292880, 11.307375, 21.558146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061751, -0.359868, 0.930958,
		0.800652, 0.574778, 0.169077,
		-0.595939, 0.734932, 0.323622,
		12.114099, 11.527855, 21.655231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747585, 11.174550, 22.086983>,  <12.531256, 11.013402, 21.428698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.747585, 11.174550, 22.086983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.386621, 11.346779, 22.080532>,  <12.170041, 11.450116, 22.076662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.386621, 11.346779, 22.080532>,  <12.747585, 11.174550, 22.086983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.386621, 11.346779, 22.080532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139319, -0.256164, 0.956541,
		0.407728, 0.865441, 0.291153,
		-0.902412, 0.430571, -0.016127,
		12.115897, 11.475950, 22.075693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.725513, 11.575791, 22.644997>,  <12.747585, 11.174550, 22.086983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.725513, 11.575791, 22.644997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350861, 11.485231, 22.538065>,  <12.126069, 11.430896, 22.473906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350861, 11.485231, 22.538065>,  <12.725513, 11.575791, 22.644997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350861, 11.485231, 22.538065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162333, -0.395728, 0.903907,
		-0.310433, 0.890024, 0.333900,
		-0.936632, -0.226399, -0.267327,
		12.069871, 11.417312, 22.457867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420527, 11.669409, 23.281353>,  <12.725513, 11.575791, 22.644997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420527, 11.669409, 23.281353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181754, 11.463057, 23.035576>,  <12.038490, 11.339245, 22.888109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181754, 11.463057, 23.035576>,  <12.420527, 11.669409, 23.281353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181754, 11.463057, 23.035576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345869, -0.525565, 0.777275,
		-0.723910, 0.676497, 0.135299,
		-0.596933, -0.515881, -0.614441,
		12.002674, 11.308292, 22.851244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.776983, 11.698187, 23.563444>,  <12.420527, 11.669409, 23.281353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.776983, 11.698187, 23.563444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765699, 11.371031, 23.333570>,  <11.758929, 11.174737, 23.195646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765699, 11.371031, 23.333570>,  <11.776983, 11.698187, 23.563444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765699, 11.371031, 23.333570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572575, -0.458031, 0.679976,
		-0.819367, 0.348231, -0.455382,
		-0.028210, -0.817890, -0.574684,
		11.757236, 11.125664, 23.161165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.122564, 11.439285, 23.651766>,  <11.776983, 11.698187, 23.563444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.122564, 11.439285, 23.651766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.318211, 11.120800, 23.509325>,  <11.435598, 10.929708, 23.423861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.318211, 11.120800, 23.509325>,  <11.122564, 11.439285, 23.651766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.318211, 11.120800, 23.509325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453057, -0.580796, 0.676325,
		-0.745323, -0.169465, -0.644807,
		0.489114, -0.796214, -0.356103,
		11.464945, 10.881936, 23.402494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.593757, 10.973603, 23.513306>,  <11.122564, 11.439285, 23.651766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.593757, 10.973603, 23.513306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.917885, 10.740908, 23.541477>,  <11.112362, 10.601290, 23.558380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.917885, 10.740908, 23.541477>,  <10.593757, 10.973603, 23.513306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.917885, 10.740908, 23.541477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437870, -0.521237, 0.732517,
		-0.389423, -0.624413, -0.677095,
		0.810321, -0.581739, 0.070430,
		11.160981, 10.566386, 23.562607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.315167, 10.264421, 23.659840>,  <10.593757, 10.973603, 23.513306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.315167, 10.264421, 23.659840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.704647, 10.229316, 23.743942>,  <10.938335, 10.208252, 23.794403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.704647, 10.229316, 23.743942>,  <10.315167, 10.264421, 23.659840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.704647, 10.229316, 23.743942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220398, -0.596703, 0.771602,
		0.057740, -0.797648, -0.600353,
		0.973700, -0.087764, 0.210254,
		10.996757, 10.202987, 23.807018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.525719, 9.558774, 23.717125>,  <10.315167, 10.264421, 23.659840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.525719, 9.558774, 23.717125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.828073, 9.727015, 23.917816>,  <11.009485, 9.827960, 24.038231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.828073, 9.727015, 23.917816>,  <10.525719, 9.558774, 23.717125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.828073, 9.727015, 23.917816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212204, -0.567576, 0.795504,
		0.619360, -0.707779, -0.339769,
		0.755886, 0.420603, 0.501727,
		11.054838, 9.853196, 24.068335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.034506, 9.070284, 24.064354>,  <10.525719, 9.558774, 23.717125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.034506, 9.070284, 24.064354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.068604, 9.408907, 24.274525>,  <11.089064, 9.612082, 24.400627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.068604, 9.408907, 24.274525>,  <11.034506, 9.070284, 24.064354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.068604, 9.408907, 24.274525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174306, -0.506541, 0.844413,
		0.980995, -0.163568, 0.104380,
		0.085247, 0.846559, 0.525425,
		11.094178, 9.662874, 24.432152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.404288, 8.960819, 24.655352>,  <11.034506, 9.070284, 24.064354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.404288, 8.960819, 24.655352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.208750, 9.290229, 24.770477>,  <11.091427, 9.487875, 24.839552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.208750, 9.290229, 24.770477>,  <11.404288, 8.960819, 24.655352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.208750, 9.290229, 24.770477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137229, -0.398408, 0.906885,
		0.861509, 0.403830, 0.307771,
		-0.488846, 0.823524, 0.287815,
		11.062096, 9.537286, 24.856821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
