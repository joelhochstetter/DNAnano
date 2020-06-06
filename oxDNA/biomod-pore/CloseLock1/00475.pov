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
	<24.376495, 35.185093, 34.793621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529699, 34.940655, 35.070709>,  <24.621622, 34.793991, 35.236961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529699, 34.940655, 35.070709>,  <24.376495, 35.185093, 34.793621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529699, 34.940655, 35.070709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920241, 0.187173, -0.343689,
		0.080367, 0.769109, 0.634044,
		0.383010, -0.611095, 0.692724,
		24.644602, 34.757328, 35.278526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776438, 35.545723, 35.363777>,  <24.376495, 35.185093, 34.793621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776438, 35.545723, 35.363777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873680, 35.190800, 35.207020>,  <24.932026, 34.977844, 35.112965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873680, 35.190800, 35.207020>,  <24.776438, 35.545723, 35.363777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.873680, 35.190800, 35.207020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660725, 0.447270, -0.602820,
		0.710170, -0.112383, 0.695002,
		0.243107, -0.887310, -0.391892,
		24.946611, 34.924606, 35.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491920, 35.405323, 35.452709>,  <24.776438, 35.545723, 35.363777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491920, 35.405323, 35.452709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358517, 35.205574, 35.132858>,  <25.278475, 35.085724, 34.940948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358517, 35.205574, 35.132858>,  <25.491920, 35.405323, 35.452709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358517, 35.205574, 35.132858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584534, 0.555931, -0.590984,
		0.739656, -0.664506, 0.106490,
		-0.333511, -0.499372, -0.799624,
		25.258463, 35.055763, 34.892971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130934, 35.271492, 34.983444>,  <25.491920, 35.405323, 35.452709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130934, 35.271492, 34.983444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762537, 35.329334, 34.838745>,  <25.541498, 35.364040, 34.751926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762537, 35.329334, 34.838745>,  <26.130934, 35.271492, 34.983444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762537, 35.329334, 34.838745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373142, 0.594303, -0.712438,
		0.111964, -0.791134, -0.601308,
		-0.920993, 0.144606, -0.361746,
		25.486238, 35.372715, 34.730221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028240, 35.041092, 34.218464>,  <26.130934, 35.271492, 34.983444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028240, 35.041092, 34.218464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791914, 35.343666, 34.330711>,  <25.650118, 35.525211, 34.398060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791914, 35.343666, 34.330711>,  <26.028240, 35.041092, 34.218464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791914, 35.343666, 34.330711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470367, 0.605530, -0.641941,
		-0.655508, -0.247275, -0.713557,
		-0.590816, 0.756432, 0.280620,
		25.614670, 35.570595, 34.414898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866274, 35.468658, 33.727547>,  <26.028240, 35.041092, 34.218464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866274, 35.468658, 33.727547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799646, 35.718666, 34.032597>,  <25.759670, 35.868671, 34.215626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799646, 35.718666, 34.032597>,  <25.866274, 35.468658, 33.727547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799646, 35.718666, 34.032597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351338, 0.760290, -0.546371,
		-0.921313, 0.176933, -0.346233,
		-0.166567, 0.625023, 0.762628,
		25.749676, 35.906174, 34.261383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.401291, 35.992836, 33.496174>,  <25.866274, 35.468658, 33.727547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.401291, 35.992836, 33.496174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672258, 36.082829, 33.776314>,  <25.834839, 36.136826, 33.944397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672258, 36.082829, 33.776314>,  <25.401291, 35.992836, 33.496174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672258, 36.082829, 33.776314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296501, 0.787798, -0.539872,
		-0.673194, 0.573373, 0.466962,
		0.677419, 0.224984, 0.700347,
		25.875484, 36.150322, 33.986420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276178, 36.688889, 33.717968>,  <25.401291, 35.992836, 33.496174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276178, 36.688889, 33.717968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648443, 36.543087, 33.730610>,  <25.871803, 36.455605, 33.738194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648443, 36.543087, 33.730610>,  <25.276178, 36.688889, 33.717968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648443, 36.543087, 33.730610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330536, 0.800595, -0.499794,
		0.156877, 0.475586, 0.865568,
		0.930664, -0.364508, 0.031603,
		25.927643, 36.433735, 33.740089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710793, 37.204124, 33.775654>,  <25.276178, 36.688889, 33.717968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710793, 37.204124, 33.775654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968380, 36.943878, 33.614655>,  <26.122932, 36.787731, 33.518055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.968380, 36.943878, 33.614655>,  <25.710793, 37.204124, 33.775654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968380, 36.943878, 33.614655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321133, 0.707393, -0.629658,
		0.694390, 0.276224, 0.664472,
		0.643969, -0.650612, -0.402502,
		26.161572, 36.748695, 33.493904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409870, 37.589996, 33.669853>,  <25.710793, 37.204124, 33.775654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409870, 37.589996, 33.669853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521679, 37.277023, 33.447262>,  <26.588764, 37.089241, 33.313705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521679, 37.277023, 33.447262>,  <26.409870, 37.589996, 33.669853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521679, 37.277023, 33.447262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416575, 0.621017, -0.663930,
		0.865063, -0.046234, 0.499528,
		0.279520, -0.782432, -0.556479,
		26.605536, 37.042294, 33.280319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050983, 37.676392, 33.569504>,  <26.409870, 37.589996, 33.669853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050983, 37.676392, 33.569504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951881, 37.451885, 33.253632>,  <26.892420, 37.317181, 33.064106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951881, 37.451885, 33.253632>,  <27.050983, 37.676392, 33.569504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951881, 37.451885, 33.253632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578314, 0.568274, -0.585336,
		0.777284, -0.601706, 0.183792,
		-0.247756, -0.561262, -0.789685,
		26.877554, 37.283508, 33.016727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600969, 37.697224, 33.109718>,  <27.050983, 37.676392, 33.569504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600969, 37.697224, 33.109718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302967, 37.572960, 32.873596>,  <27.124165, 37.498402, 32.731922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302967, 37.572960, 32.873596>,  <27.600969, 37.697224, 33.109718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302967, 37.572960, 32.873596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418732, 0.471066, -0.776376,
		0.519260, -0.825583, -0.220864,
		-0.745005, -0.310659, -0.590304,
		27.079466, 37.479763, 32.696507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980944, 37.659966, 32.435089>,  <27.600969, 37.697224, 33.109718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980944, 37.659966, 32.435089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589905, 37.675465, 32.352329>,  <27.355282, 37.684765, 32.302673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589905, 37.675465, 32.352329>,  <27.980944, 37.659966, 32.435089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589905, 37.675465, 32.352329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173624, 0.704124, -0.688523,
		0.119005, -0.709019, -0.695075,
		-0.977595, 0.038744, -0.206897,
		27.296627, 37.687088, 32.290260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880526, 37.684013, 31.702782>,  <27.980944, 37.659966, 32.435089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880526, 37.684013, 31.702782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528395, 37.827469, 31.826977>,  <27.317116, 37.913540, 31.901495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528395, 37.827469, 31.826977>,  <27.880526, 37.684013, 31.702782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528395, 37.827469, 31.826977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080474, 0.757958, -0.647321,
		-0.467489, -0.544868, -0.696113,
		-0.880328, 0.358634, 0.310489,
		27.264296, 37.935059, 31.920124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424391, 37.735886, 31.175253>,  <27.880526, 37.684013, 31.702782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424391, 37.735886, 31.175253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315109, 38.001419, 31.453728>,  <27.249540, 38.160740, 31.620813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315109, 38.001419, 31.453728>,  <27.424391, 37.735886, 31.175253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315109, 38.001419, 31.453728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041537, 0.731189, -0.680910,
		-0.961059, -0.157109, -0.227338,
		-0.273204, 0.663837, 0.696189,
		27.233149, 38.200569, 31.662584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992935, 38.155228, 30.747461>,  <27.424391, 37.735886, 31.175253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992935, 38.155228, 30.747461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053427, 38.367714, 31.080914>,  <27.089722, 38.495205, 31.280985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053427, 38.367714, 31.080914>,  <26.992935, 38.155228, 30.747461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053427, 38.367714, 31.080914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085090, 0.847195, -0.524423,
		-0.984830, 0.008375, 0.173322,
		0.151230, 0.531215, 0.833630,
		27.098795, 38.527077, 31.331003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576611, 38.716343, 30.672676>,  <26.992935, 38.155228, 30.747461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576611, 38.716343, 30.672676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823170, 38.842274, 30.961380>,  <26.971106, 38.917831, 31.134602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823170, 38.842274, 30.961380>,  <26.576611, 38.716343, 30.672676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823170, 38.842274, 30.961380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117677, 0.943132, -0.310893,
		-0.778594, 0.106699, 0.618391,
		0.616396, 0.314830, 0.721760,
		27.008089, 38.936722, 31.177908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177961, 39.224892, 30.995306>,  <26.576611, 38.716343, 30.672676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177961, 39.224892, 30.995306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568794, 39.284817, 31.055790>,  <26.803295, 39.320770, 31.092081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568794, 39.284817, 31.055790>,  <26.177961, 39.224892, 30.995306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568794, 39.284817, 31.055790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132866, 0.984251, -0.116608,
		-0.166297, 0.093845, 0.981600,
		0.977083, 0.149813, 0.151209,
		26.861919, 39.329762, 31.101152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115635, 39.803288, 31.473091>,  <26.177961, 39.224892, 30.995306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115635, 39.803288, 31.473091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499596, 39.809692, 31.361137>,  <26.729971, 39.813534, 31.293964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499596, 39.809692, 31.361137>,  <26.115635, 39.803288, 31.473091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499596, 39.809692, 31.361137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089839, 0.963286, -0.253000,
		0.265558, 0.267999, 0.926097,
		0.959900, 0.016013, -0.279885,
		26.787565, 39.814495, 31.277172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453329, 40.412003, 31.807064>,  <26.115635, 39.803288, 31.473091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453329, 40.412003, 31.807064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684109, 40.333935, 31.489817>,  <26.822577, 40.287094, 31.299469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684109, 40.333935, 31.489817>,  <26.453329, 40.412003, 31.807064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684109, 40.333935, 31.489817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109856, 0.980751, -0.161431,
		0.809358, 0.006009, 0.587284,
		0.576950, -0.195172, -0.793119,
		26.857193, 40.275383, 31.251881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991386, 40.803715, 31.913698>,  <26.453329, 40.412003, 31.807064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991386, 40.803715, 31.913698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043970, 40.737072, 31.522810>,  <27.075520, 40.697086, 31.288277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043970, 40.737072, 31.522810>,  <26.991386, 40.803715, 31.913698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043970, 40.737072, 31.522810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184778, 0.972618, -0.140966,
		0.973948, -0.162038, 0.158646,
		0.131460, -0.166608, -0.977221,
		27.083408, 40.687088, 31.229643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580900, 41.202137, 31.565557>,  <26.991386, 40.803715, 31.913698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580900, 41.202137, 31.565557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343237, 41.114540, 31.255972>,  <27.200638, 41.061981, 31.070221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343237, 41.114540, 31.255972>,  <27.580900, 41.202137, 31.565557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343237, 41.114540, 31.255972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145420, 0.917122, -0.371135,
		0.791092, -0.333062, -0.513071,
		-0.594160, -0.218991, -0.773962,
		27.164989, 41.048843, 31.023783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014341, 41.460884, 31.015821>,  <27.580900, 41.202137, 31.565557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014341, 41.460884, 31.015821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631472, 41.459938, 30.900021>,  <27.401751, 41.459370, 30.830540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631472, 41.459938, 30.900021>,  <28.014341, 41.460884, 31.015821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631472, 41.459938, 30.900021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117069, 0.911411, -0.394493,
		0.264789, -0.411491, -0.872102,
		-0.957173, -0.002362, -0.289504,
		27.344320, 41.459229, 30.813169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045071, 41.829514, 30.400589>,  <28.014341, 41.460884, 31.015821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045071, 41.829514, 30.400589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655083, 41.828697, 30.489523>,  <27.421091, 41.828209, 30.542883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655083, 41.828697, 30.489523>,  <28.045071, 41.829514, 30.400589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655083, 41.828697, 30.489523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048853, 0.977484, -0.205274,
		-0.216911, -0.210998, -0.953116,
		-0.974968, -0.002036, 0.222335,
		27.362593, 41.828087, 30.556223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716309, 42.057056, 29.796665>,  <28.045071, 41.829514, 30.400589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716309, 42.057056, 29.796665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494041, 42.143158, 30.117887>,  <27.360682, 42.194820, 30.310621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494041, 42.143158, 30.117887>,  <27.716309, 42.057056, 29.796665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494041, 42.143158, 30.117887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134284, 0.976457, -0.168820,
		-0.820488, 0.014030, -0.571491,
		-0.555667, 0.215257, 0.803056,
		27.327341, 42.207733, 30.358805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249817, 42.624729, 29.677040>,  <27.716309, 42.057056, 29.796665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249817, 42.624729, 29.677040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310455, 42.602249, 30.071777>,  <27.346838, 42.588760, 30.308620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310455, 42.602249, 30.071777>,  <27.249817, 42.624729, 29.677040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310455, 42.602249, 30.071777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055351, 0.997298, 0.048292,
		-0.986892, 0.047302, 0.154297,
		0.151596, -0.056199, 0.986844,
		27.355934, 42.585388, 30.367830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807676, 43.162567, 29.280983>,  <27.249817, 42.624729, 29.677040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807676, 43.162567, 29.280983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933294, 43.430370, 29.550243>,  <28.008665, 43.591053, 29.711800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933294, 43.430370, 29.550243>,  <27.807676, 43.162567, 29.280983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933294, 43.430370, 29.550243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810479, -0.180219, 0.557355,
		0.494470, -0.720609, 0.486027,
		0.314044, 0.669510, 0.673151,
		28.027508, 43.631222, 29.752190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038490, 42.785755, 29.865528>,  <27.807676, 43.162567, 29.280983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038490, 42.785755, 29.865528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884382, 43.142723, 29.959463>,  <27.791918, 43.356903, 30.015825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884382, 43.142723, 29.959463>,  <28.038490, 42.785755, 29.865528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884382, 43.142723, 29.959463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643326, -0.442194, 0.624978,
		0.661588, 0.089707, 0.744482,
		-0.385270, 0.892422, 0.234840,
		27.768801, 43.410450, 30.029915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871206, 42.812065, 30.667473>,  <28.038490, 42.785755, 29.865528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871206, 42.812065, 30.667473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599012, 43.016663, 30.457592>,  <27.435696, 43.139423, 30.331663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599012, 43.016663, 30.457592>,  <27.871206, 42.812065, 30.667473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599012, 43.016663, 30.457592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698537, -0.236531, 0.675352,
		0.221331, 0.826090, 0.518255,
		-0.680485, 0.511496, -0.524702,
		27.394867, 43.170113, 30.300182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527893, 43.218166, 31.046955>,  <27.871206, 42.812065, 30.667473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527893, 43.218166, 31.046955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260132, 43.144089, 30.759178>,  <27.099474, 43.099640, 30.586512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260132, 43.144089, 30.759178>,  <27.527893, 43.218166, 31.046955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260132, 43.144089, 30.759178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655706, -0.307932, 0.689367,
		-0.349209, 0.933209, 0.084696,
		-0.669404, -0.185198, -0.719444,
		27.059311, 43.088528, 30.543344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948557, 43.698303, 31.005533>,  <27.527893, 43.218166, 31.046955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948557, 43.698303, 31.005533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849785, 43.318005, 30.930576>,  <26.790522, 43.089825, 30.885603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849785, 43.318005, 30.930576>,  <26.948557, 43.698303, 31.005533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849785, 43.318005, 30.930576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547432, -0.022702, 0.836542,
		-0.799589, 0.309152, -0.514861,
		-0.246930, -0.950742, -0.187392,
		26.775705, 43.032784, 30.874359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527008, 44.102760, 31.072542>,  <26.948557, 43.698303, 31.005533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527008, 44.102760, 31.072542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660042, 44.386806, 31.320772>,  <27.739862, 44.557236, 31.469711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660042, 44.386806, 31.320772>,  <27.527008, 44.102760, 31.072542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660042, 44.386806, 31.320772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901360, -0.432897, 0.012292,
		0.277375, 0.555275, -0.784049,
		0.332587, 0.710120, 0.620577,
		27.759817, 44.599842, 31.506945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971565, 44.577484, 30.764862>,  <27.527008, 44.102760, 31.072542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971565, 44.577484, 30.764862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032255, 44.506851, 31.153872>,  <28.068670, 44.464470, 31.387278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032255, 44.506851, 31.153872>,  <27.971565, 44.577484, 30.764862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032255, 44.506851, 31.153872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838297, -0.498298, -0.221263,
		0.523676, 0.848833, 0.072423,
		0.151727, -0.176582, 0.972521,
		28.077774, 44.453876, 31.445627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480026, 44.070595, 30.985367>,  <27.971565, 44.577484, 30.764862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480026, 44.070595, 30.985367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287500, 43.765469, 30.812649>,  <28.171986, 43.582394, 30.709017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287500, 43.765469, 30.812649>,  <28.480026, 44.070595, 30.985367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287500, 43.765469, 30.812649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863371, -0.497661, -0.083206,
		-0.151417, -0.412850, 0.898125,
		-0.481313, -0.762816, -0.431797,
		28.143106, 43.536625, 30.683109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664608, 43.524746, 31.384605>,  <28.480026, 44.070595, 30.985367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664608, 43.524746, 31.384605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544209, 43.409695, 31.020920>,  <28.471970, 43.340664, 30.802708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544209, 43.409695, 31.020920>,  <28.664608, 43.524746, 31.384605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544209, 43.409695, 31.020920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830364, -0.547886, -0.101569,
		-0.468931, -0.785550, 0.403750,
		-0.300997, -0.287631, -0.909214,
		28.453909, 43.323406, 30.748156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134951, 43.944546, 31.951244>,  <28.664608, 43.524746, 31.384605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134951, 43.944546, 31.951244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005455, 44.041252, 32.317139>,  <27.927757, 44.099277, 32.536674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005455, 44.041252, 32.317139>,  <28.134951, 43.944546, 31.951244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005455, 44.041252, 32.317139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235716, -0.915708, 0.325449,
		0.916313, 0.320979, 0.239464,
		-0.323741, 0.241768, 0.914735,
		27.908333, 44.113781, 32.591560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670101, 43.816360, 32.514385>,  <28.134951, 43.944546, 31.951244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670101, 43.816360, 32.514385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301252, 43.784496, 32.665829>,  <28.079943, 43.765377, 32.756695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301252, 43.784496, 32.665829>,  <28.670101, 43.816360, 32.514385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301252, 43.784496, 32.665829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256823, -0.857906, 0.445016,
		0.289360, 0.507594, 0.811553,
		-0.922124, -0.079656, 0.378606,
		28.024614, 43.760601, 32.779411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743168, 43.459770, 33.165573>,  <28.670101, 43.816360, 32.514385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743168, 43.459770, 33.165573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356005, 43.409000, 33.078815>,  <28.123707, 43.378540, 33.026760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356005, 43.409000, 33.078815>,  <28.743168, 43.459770, 33.165573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356005, 43.409000, 33.078815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001534, -0.860080, 0.510157,
		-0.251293, 0.494119, 0.832285,
		-0.967910, -0.126922, -0.216890,
		28.065632, 43.370922, 33.013748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375999, 43.325916, 33.818817>,  <28.743168, 43.459770, 33.165573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375999, 43.325916, 33.818817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170233, 43.173954, 33.511299>,  <28.046774, 43.082779, 33.326786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170233, 43.173954, 33.511299>,  <28.375999, 43.325916, 33.818817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170233, 43.173954, 33.511299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036010, -0.886155, 0.461987,
		-0.856785, 0.265337, 0.442171,
		-0.514415, -0.379902, -0.768799,
		28.015909, 43.059982, 33.280659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829279, 42.998222, 34.202454>,  <28.375999, 43.325916, 33.818817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829279, 42.998222, 34.202454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872274, 42.826843, 33.843594>,  <27.898071, 42.724014, 33.628277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872274, 42.826843, 33.843594>,  <27.829279, 42.998222, 34.202454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872274, 42.826843, 33.843594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069344, -0.903411, 0.423132,
		-0.991785, 0.016731, -0.126816,
		0.107487, -0.428450, -0.897150,
		27.904520, 42.698307, 33.574448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394297, 42.496159, 34.287422>,  <27.829279, 42.998222, 34.202454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394297, 42.496159, 34.287422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608934, 42.401836, 33.963333>,  <27.737717, 42.345242, 33.768879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608934, 42.401836, 33.963333>,  <27.394297, 42.496159, 34.287422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608934, 42.401836, 33.963333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182194, -0.905138, 0.384097,
		-0.823937, -0.353722, -0.442729,
		0.536594, -0.235809, -0.810223,
		27.769913, 42.331093, 33.720264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198381, 41.852348, 34.151836>,  <27.394297, 42.496159, 34.287422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198381, 41.852348, 34.151836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527023, 41.891033, 33.927120>,  <27.724209, 41.914246, 33.792290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.527023, 41.891033, 33.927120>,  <27.198381, 41.852348, 34.151836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527023, 41.891033, 33.927120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305998, -0.906310, 0.291491,
		-0.480968, -0.411398, -0.774223,
		0.821605, 0.096713, -0.561794,
		27.773504, 41.920048, 33.758583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224272, 41.335213, 33.709431>,  <27.198381, 41.852348, 34.151836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224272, 41.335213, 33.709431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604910, 41.457600, 33.697777>,  <27.833292, 41.531033, 33.690784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604910, 41.457600, 33.697777>,  <27.224272, 41.335213, 33.709431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604910, 41.457600, 33.697777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301630, -0.947876, -0.102714,
		-0.059047, 0.088953, -0.994284,
		0.951595, 0.305970, -0.029138,
		27.890388, 41.549389, 33.689034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581955, 40.834747, 33.252396>,  <27.224272, 41.335213, 33.709431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581955, 40.834747, 33.252396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871277, 41.008850, 33.466827>,  <28.044870, 41.113312, 33.595486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871277, 41.008850, 33.466827>,  <27.581955, 40.834747, 33.252396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871277, 41.008850, 33.466827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301905, -0.897532, 0.321387,
		0.621035, -0.070616, -0.780596,
		0.723304, 0.435258, 0.536079,
		28.088268, 41.139427, 33.627651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174891, 40.524563, 33.143936>,  <27.581955, 40.834747, 33.252396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174891, 40.524563, 33.143936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265421, 40.677864, 33.502129>,  <28.319738, 40.769844, 33.717045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265421, 40.677864, 33.502129>,  <28.174891, 40.524563, 33.143936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265421, 40.677864, 33.502129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434650, -0.862471, 0.259275,
		0.871697, 0.330542, -0.361781,
		0.226325, 0.383257, 0.895484,
		28.333319, 40.792843, 33.770775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900560, 40.481777, 33.347706>,  <28.174891, 40.524563, 33.143936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900560, 40.481777, 33.347706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681921, 40.485966, 33.682636>,  <28.550737, 40.488480, 33.883595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681921, 40.485966, 33.682636>,  <28.900560, 40.481777, 33.347706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681921, 40.485966, 33.682636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389845, -0.881772, 0.265517,
		0.741115, 0.471560, 0.477892,
		-0.546599, 0.010475, 0.837329,
		28.517941, 40.489109, 33.933834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058411, 39.908718, 33.643692>,  <28.900560, 40.481777, 33.347706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058411, 39.908718, 33.643692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809694, 40.003742, 33.942207>,  <28.660465, 40.060757, 34.121315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809694, 40.003742, 33.942207>,  <29.058411, 39.908718, 33.643692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809694, 40.003742, 33.942207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063236, -0.934547, 0.350176,
		0.780626, 0.264929, 0.566071,
		-0.621792, 0.237560, 0.746284,
		28.623158, 40.075012, 34.166092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383986, 39.797638, 34.278328>,  <29.058411, 39.908718, 33.643692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383986, 39.797638, 34.278328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996902, 39.796715, 34.379154>,  <28.764652, 39.796162, 34.439651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996902, 39.796715, 34.379154>,  <29.383986, 39.797638, 34.278328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996902, 39.796715, 34.379154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088477, -0.939446, 0.331077,
		0.236042, 0.342688, 0.909312,
		-0.967706, -0.002305, 0.252069,
		28.706591, 39.796024, 34.454777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317156, 39.633186, 34.989189>,  <29.383986, 39.797638, 34.278328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317156, 39.633186, 34.989189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965588, 39.537594, 34.824078>,  <28.754646, 39.480240, 34.725010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965588, 39.537594, 34.824078>,  <29.317156, 39.633186, 34.989189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965588, 39.537594, 34.824078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073442, -0.922913, 0.377940,
		-0.471281, 0.301863, 0.828717,
		-0.878920, -0.238978, -0.412782,
		28.701912, 39.465900, 34.700241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846603, 39.275299, 35.549736>,  <29.317156, 39.633186, 34.989189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846603, 39.275299, 35.549736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685791, 39.171848, 35.198399>,  <28.589304, 39.109776, 34.987598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685791, 39.171848, 35.198399>,  <28.846603, 39.275299, 35.549736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685791, 39.171848, 35.198399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003568, -0.958828, 0.283965,
		-0.915619, 0.117296, 0.384557,
		-0.402032, -0.258632, -0.878340,
		28.565182, 39.094257, 34.934898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343430, 38.839394, 35.792065>,  <28.846603, 39.275299, 35.549736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343430, 38.839394, 35.792065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348333, 38.772800, 35.397678>,  <28.351274, 38.732845, 35.161045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348333, 38.772800, 35.397678>,  <28.343430, 38.839394, 35.792065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348333, 38.772800, 35.397678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241227, -0.957411, 0.158665,
		-0.970391, 0.235897, -0.051896,
		0.012257, -0.166485, -0.985968,
		28.352011, 38.722855, 35.101887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669983, 38.463505, 35.647945>,  <28.343430, 38.839394, 35.792065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669983, 38.463505, 35.647945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939289, 38.399666, 35.359158>,  <28.100874, 38.361362, 35.185886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939289, 38.399666, 35.359158>,  <27.669983, 38.463505, 35.647945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939289, 38.399666, 35.359158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139317, -0.986320, 0.088116,
		-0.726156, 0.041257, -0.686291,
		0.673267, -0.159598, -0.721970,
		28.141270, 38.351788, 35.142567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314121, 37.937504, 35.244961>,  <27.669983, 38.463505, 35.647945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314121, 37.937504, 35.244961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705502, 37.933655, 35.162457>,  <27.940329, 37.931347, 35.112953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705502, 37.933655, 35.162457>,  <27.314121, 37.937504, 35.244961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705502, 37.933655, 35.162457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001895, -0.999291, 0.037608,
		-0.206477, -0.036407, -0.977774,
		0.978449, -0.009619, -0.206261,
		27.999037, 37.930771, 35.100578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389118, 37.467442, 34.719925>,  <27.314121, 37.937504, 35.244961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389118, 37.467442, 34.719925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756483, 37.488079, 34.876823>,  <27.976902, 37.500462, 34.970963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756483, 37.488079, 34.876823>,  <27.389118, 37.467442, 34.719925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756483, 37.488079, 34.876823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125506, -0.978242, -0.165198,
		0.375193, 0.200949, -0.904903,
		0.918411, 0.051589, 0.392250,
		28.032007, 37.503555, 34.994499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918407, 37.073910, 34.271645>,  <27.389118, 37.467442, 34.719925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918407, 37.073910, 34.271645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045609, 37.089226, 34.650570>,  <28.121929, 37.098415, 34.877926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045609, 37.089226, 34.650570>,  <27.918407, 37.073910, 34.271645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045609, 37.089226, 34.650570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177051, -0.984005, -0.019657,
		0.931412, 0.173974, -0.319695,
		0.318002, 0.038293, 0.947317,
		28.141008, 37.100716, 34.934765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690554, 36.937611, 34.277382>,  <27.918407, 37.073910, 34.271645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690554, 36.937611, 34.277382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499691, 36.837784, 34.614437>,  <28.385174, 36.777885, 34.816669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499691, 36.837784, 34.614437>,  <28.690554, 36.937611, 34.277382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499691, 36.837784, 34.614437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300704, -0.947318, -0.110296,
		0.825772, 0.200756, 0.527065,
		-0.477156, -0.249570, 0.842637,
		28.356544, 36.762913, 34.867229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955650, 36.322117, 34.393688>,  <28.690554, 36.937611, 34.277382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955650, 36.322117, 34.393688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648666, 36.346436, 34.648972>,  <28.464476, 36.361027, 34.802139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648666, 36.346436, 34.648972>,  <28.955650, 36.322117, 34.393688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648666, 36.346436, 34.648972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055630, -0.998054, 0.028175,
		0.638676, -0.013880, 0.769350,
		-0.767462, 0.060793, 0.638206,
		28.418428, 36.364674, 34.840435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619802, 36.051819, 34.123535>,  <28.955650, 36.322117, 34.393688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619802, 36.051819, 34.123535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622168, 36.303783, 33.812878>,  <29.623587, 36.454964, 33.626484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622168, 36.303783, 33.812878>,  <29.619802, 36.051819, 34.123535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622168, 36.303783, 33.812878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281842, 0.744121, 0.605681,
		0.959443, -0.222472, -0.173136,
		0.005913, 0.629913, -0.776643,
		29.623941, 36.492756, 33.579884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275440, 36.493305, 34.082504>,  <29.619802, 36.051819, 34.123535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275440, 36.493305, 34.082504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985798, 36.702263, 33.902382>,  <29.812012, 36.827637, 33.794308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985798, 36.702263, 33.902382>,  <30.275440, 36.493305, 34.082504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985798, 36.702263, 33.902382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124982, 0.741493, 0.659218,
		0.678267, 0.421064, -0.602211,
		-0.724108, 0.522392, -0.450305,
		29.768566, 36.858982, 33.767292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464098, 37.032238, 34.600979>,  <30.275440, 36.493305, 34.082504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464098, 37.032238, 34.600979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818609, 36.923630, 34.450890>,  <31.031317, 36.858467, 34.360836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818609, 36.923630, 34.450890>,  <30.464098, 37.032238, 34.600979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818609, 36.923630, 34.450890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222329, 0.960106, -0.169606,
		0.406300, 0.066896, 0.911288,
		0.886279, -0.271516, -0.375218,
		31.084494, 36.842175, 34.338326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926266, 37.501503, 34.687840>,  <30.464098, 37.032238, 34.600979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926266, 37.501503, 34.687840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080515, 37.306480, 34.374512>,  <31.173063, 37.189468, 34.186516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080515, 37.306480, 34.374512>,  <30.926266, 37.501503, 34.687840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080515, 37.306480, 34.374512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320123, 0.866941, -0.382013,
		0.865342, -0.103445, 0.490390,
		0.385622, -0.487557, -0.783316,
		31.196201, 37.160213, 34.139519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640419, 37.767456, 34.539780>,  <30.926266, 37.501503, 34.687840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640419, 37.767456, 34.539780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505224, 37.614689, 34.195709>,  <31.424107, 37.523029, 33.989265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505224, 37.614689, 34.195709>,  <31.640419, 37.767456, 34.539780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505224, 37.614689, 34.195709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212732, 0.859305, -0.465123,
		0.916793, -0.340192, -0.209187,
		-0.337987, -0.381921, -0.860175,
		31.403828, 37.500114, 33.937656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218361, 37.739178, 33.951485>,  <31.640419, 37.767456, 34.539780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218361, 37.739178, 33.951485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836060, 37.826054, 33.872131>,  <31.606678, 37.878178, 33.824520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836060, 37.826054, 33.872131>,  <32.218361, 37.739178, 33.951485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836060, 37.826054, 33.872131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292195, 0.778714, -0.555182,
		0.033906, -0.588587, -0.807723,
		-0.955758, 0.217188, -0.198385,
		31.549332, 37.891209, 33.812614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148636, 38.033737, 33.244335>,  <32.218361, 37.739178, 33.951485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148636, 38.033737, 33.244335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837675, 38.175789, 33.452000>,  <31.651098, 38.261021, 33.576599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837675, 38.175789, 33.452000>,  <32.148636, 38.033737, 33.244335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837675, 38.175789, 33.452000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123140, 0.895329, -0.428045,
		-0.616830, -0.268834, -0.739763,
		-0.777404, 0.355125, 0.519161,
		31.604454, 38.282326, 33.607750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205303, 38.469772, 33.928192>,  <32.148636, 38.033737, 33.244335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205303, 38.469772, 33.928192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098396, 38.755875, 34.186489>,  <32.034252, 38.927536, 34.341469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098396, 38.755875, 34.186489>,  <32.205303, 38.469772, 33.928192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098396, 38.755875, 34.186489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834709, -0.506675, 0.215735,
		0.481485, -0.481347, 0.732446,
		-0.267269, 0.715252, 0.645741,
		32.018215, 38.970451, 34.380211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740982, 38.900639, 33.524540>,  <32.205303, 38.469772, 33.928192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740982, 38.900639, 33.524540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136242, 38.944962, 33.567020>,  <33.373398, 38.971554, 33.592506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136242, 38.944962, 33.567020>,  <32.740982, 38.900639, 33.524540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136242, 38.944962, 33.567020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127453, 0.206919, 0.970021,
		0.085507, -0.972063, 0.218590,
		0.988152, 0.110803, 0.106200,
		33.432686, 38.978203, 33.598881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058929, 38.571785, 34.167313>,  <32.740982, 38.900639, 33.524540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058929, 38.571785, 34.167313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329792, 38.851948, 34.077080>,  <33.492310, 39.020046, 34.022938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329792, 38.851948, 34.077080>,  <33.058929, 38.571785, 34.167313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329792, 38.851948, 34.077080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054254, 0.258212, 0.964564,
		0.733837, -0.665399, 0.136849,
		0.677156, 0.700408, -0.225586,
		33.532940, 39.062069, 34.009403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775131, 38.491821, 34.545361>,  <33.058929, 38.571785, 34.167313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775131, 38.491821, 34.545361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749344, 38.877022, 34.440685>,  <33.733871, 39.108143, 34.377880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749344, 38.877022, 34.440685>,  <33.775131, 38.491821, 34.545361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749344, 38.877022, 34.440685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256118, 0.269419, 0.928341,
		0.964493, -0.007172, -0.264010,
		-0.064471, 0.962996, -0.261689,
		33.730003, 39.165920, 34.362179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371838, 38.733212, 34.736126>,  <33.775131, 38.491821, 34.545361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371838, 38.733212, 34.736126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146893, 39.063297, 34.715111>,  <34.011925, 39.261349, 34.702499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146893, 39.063297, 34.715111>,  <34.371838, 38.733212, 34.736126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146893, 39.063297, 34.715111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424024, 0.342345, 0.838453,
		0.709893, 0.449239, -0.542436,
		-0.562366, 0.825218, -0.052540,
		33.978184, 39.310863, 34.699348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795723, 39.140060, 35.153797>,  <34.371838, 38.733212, 34.736126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795723, 39.140060, 35.153797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491810, 39.379845, 35.053089>,  <34.309464, 39.523716, 34.992664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491810, 39.379845, 35.053089>,  <34.795723, 39.140060, 35.153797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491810, 39.379845, 35.053089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195000, 0.579494, 0.791303,
		0.620251, 0.552121, -0.557182,
		-0.759779, 0.599457, -0.251769,
		34.263878, 39.559681, 34.977558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959690, 39.830833, 35.101440>,  <34.795723, 39.140060, 35.153797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959690, 39.830833, 35.101440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574158, 39.815414, 35.206928>,  <34.342838, 39.806164, 35.270222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574158, 39.815414, 35.206928>,  <34.959690, 39.830833, 35.101440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574158, 39.815414, 35.206928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208296, 0.508371, 0.835567,
		-0.166274, 0.860275, -0.481954,
		-0.963829, -0.038544, 0.263721,
		34.285007, 39.803852, 35.286045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829727, 40.581776, 35.342163>,  <34.959690, 39.830833, 35.101440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829727, 40.581776, 35.342163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558559, 40.355820, 35.530342>,  <34.395859, 40.220245, 35.643250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558559, 40.355820, 35.530342>,  <34.829727, 40.581776, 35.342163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558559, 40.355820, 35.530342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183505, 0.489657, 0.852386,
		-0.711862, 0.664181, -0.228289,
		-0.677922, -0.564889, 0.470448,
		34.355183, 40.186352, 35.671478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425777, 40.967949, 35.852577>,  <34.829727, 40.581776, 35.342163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425777, 40.967949, 35.852577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374180, 40.595058, 35.987820>,  <34.343220, 40.371323, 36.068966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374180, 40.595058, 35.987820>,  <34.425777, 40.967949, 35.852577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374180, 40.595058, 35.987820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101620, 0.326728, 0.939639,
		-0.986425, 0.155565, 0.052588,
		-0.128993, -0.932227, 0.338102,
		34.335484, 40.315392, 36.089249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891418, 40.943924, 36.429359>,  <34.425777, 40.967949, 35.852577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891418, 40.943924, 36.429359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083298, 40.605164, 36.521141>,  <34.198425, 40.401909, 36.576210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083298, 40.605164, 36.521141>,  <33.891418, 40.943924, 36.429359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083298, 40.605164, 36.521141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161828, 0.171625, 0.971780,
		-0.862380, -0.503296, -0.054724,
		0.479701, -0.846899, 0.229453,
		34.227207, 40.351093, 36.589977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578598, 40.920593, 37.054031>,  <33.891418, 40.943924, 36.429359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578598, 40.920593, 37.054031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891865, 40.673199, 37.028362>,  <34.079826, 40.524761, 37.012962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891865, 40.673199, 37.028362>,  <33.578598, 40.920593, 37.054031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891865, 40.673199, 37.028362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059098, -0.028694, 0.997840,
		-0.618995, -0.785268, 0.014079,
		0.783168, -0.618490, -0.064169,
		34.126816, 40.487652, 37.009113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430962, 40.463322, 37.525650>,  <33.578598, 40.920593, 37.054031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430962, 40.463322, 37.525650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819839, 40.397411, 37.459095>,  <34.053165, 40.357864, 37.419163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819839, 40.397411, 37.459095>,  <33.430962, 40.463322, 37.525650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819839, 40.397411, 37.459095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133814, -0.192172, 0.972195,
		-0.192172, -0.967428, -0.164779,
		-0.972195, 0.164779, 0.166385,
		34.111500, 40.347977, 37.409180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515869, 40.115978, 38.045036>,  <33.430962, 40.463322, 37.525650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515869, 40.115978, 38.045036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893055, 40.205746, 37.946682>,  <34.119366, 40.259605, 37.887669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893055, 40.205746, 37.946682>,  <33.515869, 40.115978, 38.045036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893055, 40.205746, 37.946682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273561, -0.101458, 0.956489,
		0.189707, -0.969197, -0.157063,
		0.942961, 0.224419, -0.245887,
		34.175941, 40.273071, 37.872917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948837, 39.479458, 38.127800>,  <33.515869, 40.115978, 38.045036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948837, 39.479458, 38.127800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168907, 39.812233, 38.156601>,  <34.300949, 40.011898, 38.173882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168907, 39.812233, 38.156601>,  <33.948837, 39.479458, 38.127800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168907, 39.812233, 38.156601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388613, -0.331404, 0.859739,
		0.739111, -0.445028, -0.505633,
		0.550177, 0.831938, 0.072001,
		34.333961, 40.061813, 38.178200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448086, 39.250607, 38.518520>,  <33.948837, 39.479458, 38.127800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448086, 39.250607, 38.518520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484547, 39.646538, 38.562202>,  <34.506424, 39.884098, 38.588409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484547, 39.646538, 38.562202>,  <34.448086, 39.250607, 38.518520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484547, 39.646538, 38.562202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287730, -0.131160, 0.948688,
		0.953364, -0.055055, -0.296760,
		0.091153, 0.989831, 0.109202,
		34.511894, 39.943489, 38.594963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027206, 39.324020, 38.962158>,  <34.448086, 39.250607, 38.518520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027206, 39.324020, 38.962158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863422, 39.687447, 38.995262>,  <34.765152, 39.905502, 39.015125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863422, 39.687447, 38.995262>,  <35.027206, 39.324020, 38.962158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863422, 39.687447, 38.995262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039579, -0.072936, 0.996551,
		0.911469, 0.411325, -0.006096,
		-0.409462, 0.908566, 0.082759,
		34.740585, 39.960018, 39.020088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464317, 39.586094, 39.525780>,  <35.027206, 39.324020, 38.962158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464317, 39.586094, 39.525780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103333, 39.758141, 39.516205>,  <34.886742, 39.861366, 39.510460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103333, 39.758141, 39.516205>,  <35.464317, 39.586094, 39.525780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103333, 39.758141, 39.516205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111473, -0.179485, 0.977425,
		0.416107, 0.884753, 0.209924,
		-0.902457, 0.430114, -0.023941,
		34.832596, 39.887177, 39.509022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421883, 40.053623, 40.122002>,  <35.464317, 39.586094, 39.525780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421883, 40.053623, 40.122002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036041, 39.990215, 40.037708>,  <34.804535, 39.952171, 39.987133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036041, 39.990215, 40.037708>,  <35.421883, 40.053623, 40.122002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036041, 39.990215, 40.037708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189075, -0.141302, 0.971743,
		-0.183814, 0.977193, 0.106329,
		-0.964605, -0.158516, -0.210736,
		34.746658, 39.942661, 39.974487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133278, 40.464039, 40.619125>,  <35.421883, 40.053623, 40.122002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133278, 40.464039, 40.619125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861279, 40.209652, 40.473167>,  <34.698078, 40.057018, 40.385593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.861279, 40.209652, 40.473167>,  <35.133278, 40.464039, 40.619125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861279, 40.209652, 40.473167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342651, -0.164342, 0.924977,
		-0.648225, 0.754012, -0.106164,
		-0.679996, -0.635970, -0.364894,
		34.657280, 40.018860, 40.363701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498405, 40.720695, 40.864147>,  <35.133278, 40.464039, 40.619125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498405, 40.720695, 40.864147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467876, 40.329205, 40.787979>,  <34.449558, 40.094311, 40.742279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467876, 40.329205, 40.787979>,  <34.498405, 40.720695, 40.864147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467876, 40.329205, 40.787979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358271, -0.151305, 0.921275,
		-0.930492, 0.138540, -0.339103,
		-0.076326, -0.978731, -0.190423,
		34.444977, 40.035583, 40.730850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889797, 40.619686, 41.077679>,  <34.498405, 40.720695, 40.864147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889797, 40.619686, 41.077679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044388, 40.251125, 41.061420>,  <34.137142, 40.029987, 41.051666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044388, 40.251125, 41.061420>,  <33.889797, 40.619686, 41.077679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044388, 40.251125, 41.061420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490073, -0.242494, 0.837272,
		-0.781320, -0.303670, -0.545273,
		0.386480, -0.921402, -0.040645,
		34.160332, 39.974705, 41.049229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316509, 40.267727, 41.353951>,  <33.889797, 40.619686, 41.077679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316509, 40.267727, 41.353951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659100, 40.064953, 41.392849>,  <33.864655, 39.943287, 41.416187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659100, 40.064953, 41.392849>,  <33.316509, 40.267727, 41.353951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659100, 40.064953, 41.392849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238297, -0.221199, 0.945667,
		-0.457885, -0.833116, -0.310255,
		0.856478, -0.506940, 0.097245,
		33.916042, 39.912872, 41.422024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065948, 39.711334, 41.641186>,  <33.316509, 40.267727, 41.353951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065948, 39.711334, 41.641186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453278, 39.692375, 41.739246>,  <33.685677, 39.681000, 41.798084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453278, 39.692375, 41.739246>,  <33.065948, 39.711334, 41.641186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453278, 39.692375, 41.739246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246808, -0.330479, 0.910972,
		0.037842, -0.942623, -0.331709,
		0.968325, -0.047395, 0.245153,
		33.743774, 39.678158, 41.812794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124012, 39.044216, 41.966938>,  <33.065948, 39.711334, 41.641186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124012, 39.044216, 41.966938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448788, 39.240173, 42.093910>,  <33.643654, 39.357746, 42.170094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448788, 39.240173, 42.093910>,  <33.124012, 39.044216, 41.966938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448788, 39.240173, 42.093910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068548, -0.460005, 0.885266,
		0.579701, -0.740542, -0.339916,
		0.811940, 0.489889, 0.317429,
		33.692371, 39.387138, 42.189140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515514, 38.527237, 42.403111>,  <33.124012, 39.044216, 41.966938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515514, 38.527237, 42.403111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663486, 38.881977, 42.513855>,  <33.752270, 39.094822, 42.580303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663486, 38.881977, 42.513855>,  <33.515514, 38.527237, 42.403111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663486, 38.881977, 42.513855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063924, -0.321593, 0.944718,
		0.926856, -0.331785, -0.175659,
		0.369934, 0.886847, 0.276862,
		33.774467, 39.148029, 42.596912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955498, 38.359077, 42.856892>,  <33.515514, 38.527237, 42.403111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955498, 38.359077, 42.856892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897099, 38.749477, 42.921532>,  <33.862061, 38.983715, 42.960316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897099, 38.749477, 42.921532>,  <33.955498, 38.359077, 42.856892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897099, 38.749477, 42.921532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028994, -0.167497, 0.985446,
		0.988860, 0.139189, 0.052753,
		-0.146000, 0.975997, 0.161596,
		33.853298, 39.042278, 42.970009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403976, 38.512726, 43.348335>,  <33.955498, 38.359077, 42.856892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403976, 38.512726, 43.348335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142868, 38.814636, 43.374290>,  <33.986202, 38.995781, 43.389862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142868, 38.814636, 43.374290>,  <34.403976, 38.512726, 43.348335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142868, 38.814636, 43.374290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134529, 0.031201, 0.990418,
		0.745516, 0.655244, -0.121906,
		-0.652770, 0.754772, 0.064888,
		33.947037, 39.041069, 43.393757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681232, 38.957756, 43.782196>,  <34.403976, 38.512726, 43.348335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681232, 38.957756, 43.782196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291019, 39.040989, 43.810596>,  <34.056892, 39.090927, 43.827637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291019, 39.040989, 43.810596>,  <34.681232, 38.957756, 43.782196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291019, 39.040989, 43.810596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058408, -0.066065, 0.996104,
		0.211962, 0.975878, 0.052295,
		-0.975531, 0.208082, 0.071003,
		33.998360, 39.103413, 43.831898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630939, 39.563805, 44.173061>,  <34.681232, 38.957756, 43.782196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630939, 39.563805, 44.173061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299236, 39.343449, 44.210690>,  <34.100216, 39.211235, 44.233265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299236, 39.343449, 44.210690>,  <34.630939, 39.563805, 44.173061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299236, 39.343449, 44.210690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198804, -0.133467, 0.970909,
		-0.522309, 0.823836, 0.220198,
		-0.829259, -0.550890, 0.094071,
		34.050457, 39.178181, 44.238911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465370, 39.589725, 44.934525>,  <34.630939, 39.563805, 44.173061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465370, 39.589725, 44.934525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194168, 39.309628, 44.845104>,  <34.031448, 39.141571, 44.791454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194168, 39.309628, 44.845104>,  <34.465370, 39.589725, 44.934525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194168, 39.309628, 44.845104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194194, -0.463953, 0.864312,
		-0.708942, 0.542596, 0.450545,
		-0.678004, -0.700241, -0.223547,
		33.990768, 39.099556, 44.778042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103142, 39.520840, 45.549023>,  <34.465370, 39.589725, 44.934525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103142, 39.520840, 45.549023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033199, 39.185081, 45.343174>,  <33.991234, 38.983627, 45.219666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033199, 39.185081, 45.343174>,  <34.103142, 39.520840, 45.549023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033199, 39.185081, 45.343174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147219, -0.539088, 0.829283,
		-0.973526, 0.069240, 0.217837,
		-0.174853, -0.839399, -0.514623,
		33.980743, 38.933262, 45.188786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431641, 39.121429, 45.769188>,  <34.103142, 39.520840, 45.549023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431641, 39.121429, 45.769188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678787, 38.855118, 45.601864>,  <33.827076, 38.695332, 45.501469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678787, 38.855118, 45.601864>,  <33.431641, 39.121429, 45.769188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678787, 38.855118, 45.601864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026101, -0.514346, 0.857185,
		-0.785849, -0.540546, -0.300420,
		0.617868, -0.665777, -0.418307,
		33.864147, 38.655384, 45.476372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120770, 38.397556, 46.100716>,  <33.431641, 39.121429, 45.769188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120770, 38.397556, 46.100716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489056, 38.371544, 45.946804>,  <33.710026, 38.355934, 45.854458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489056, 38.371544, 45.946804>,  <33.120770, 38.397556, 46.100716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489056, 38.371544, 45.946804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298096, -0.519099, 0.801046,
		-0.251832, -0.852236, -0.458557,
		0.920717, -0.065035, -0.384774,
		33.765270, 38.352032, 45.831371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367775, 37.697514, 46.275013>,  <33.120770, 38.397556, 46.100716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367775, 37.697514, 46.275013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701656, 37.904285, 46.199059>,  <33.901985, 38.028347, 46.153488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701656, 37.904285, 46.199059>,  <33.367775, 37.697514, 46.275013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701656, 37.904285, 46.199059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504209, -0.578710, 0.640990,
		0.221459, -0.630777, -0.743691,
		0.834703, 0.516929, -0.189883,
		33.952068, 38.059364, 46.142094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879936, 37.242695, 46.370026>,  <33.367775, 37.697514, 46.275013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879936, 37.242695, 46.370026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109482, 37.570274, 46.369518>,  <34.247211, 37.766823, 46.369213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109482, 37.570274, 46.369518>,  <33.879936, 37.242695, 46.370026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109482, 37.570274, 46.369518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669255, -0.468080, 0.577061,
		0.471990, -0.332003, -0.816700,
		0.573867, 0.818948, -0.001266,
		34.281643, 37.815960, 46.369137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497543, 36.949596, 46.299004>,  <33.879936, 37.242695, 46.370026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497543, 36.949596, 46.299004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541229, 37.324390, 46.431751>,  <34.567440, 37.549267, 46.511402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541229, 37.324390, 46.431751>,  <34.497543, 36.949596, 46.299004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541229, 37.324390, 46.431751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621704, -0.324897, 0.712689,
		0.775600, 0.128489, -0.618009,
		0.109217, 0.936981, 0.331873,
		34.573994, 37.605484, 46.531315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251671, 37.239796, 46.292667>,  <34.497543, 36.949596, 46.299004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251671, 37.239796, 46.292667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057491, 37.431820, 46.584938>,  <34.940983, 37.547035, 46.760300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057491, 37.431820, 46.584938>,  <35.251671, 37.239796, 46.292667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057491, 37.431820, 46.584938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655074, -0.353755, 0.667634,
		0.578983, 0.802747, -0.142745,
		-0.485445, 0.480057, 0.730677,
		34.911858, 37.575836, 46.804142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758518, 37.474640, 46.812107>,  <35.251671, 37.239796, 46.292667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758518, 37.474640, 46.812107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403599, 37.460766, 46.996067>,  <35.190647, 37.452442, 47.106441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403599, 37.460766, 46.996067>,  <35.758518, 37.474640, 46.812107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403599, 37.460766, 46.996067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436265, -0.386584, 0.812543,
		0.149602, 0.921602, 0.358147,
		-0.887295, -0.034689, 0.459896,
		35.137409, 37.450359, 47.134037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832001, 37.646301, 47.473103>,  <35.758518, 37.474640, 46.812107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832001, 37.646301, 47.473103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485329, 37.447891, 47.494381>,  <35.277325, 37.328846, 47.507149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485329, 37.447891, 47.494381>,  <35.832001, 37.646301, 47.473103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485329, 37.447891, 47.494381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346670, -0.522154, 0.779215,
		-0.358737, 0.693767, 0.624496,
		-0.866676, -0.496027, 0.053192,
		35.225327, 37.299084, 47.510338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616608, 37.720272, 48.169201>,  <35.832001, 37.646301, 47.473103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616608, 37.720272, 48.169201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420937, 37.404797, 48.020248>,  <35.303532, 37.215511, 47.930878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420937, 37.404797, 48.020248>,  <35.616608, 37.720272, 48.169201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420937, 37.404797, 48.020248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282448, -0.547200, 0.787905,
		-0.825181, 0.280249, 0.490444,
		-0.489181, -0.788690, -0.372383,
		35.274181, 37.168190, 47.908535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279205, 37.480576, 48.700893>,  <35.616608, 37.720272, 48.169201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279205, 37.480576, 48.700893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256439, 37.164803, 48.456417>,  <35.242779, 36.975338, 48.309731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256439, 37.164803, 48.456417>,  <35.279205, 37.480576, 48.700893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256439, 37.164803, 48.456417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296750, -0.597891, 0.744624,
		-0.953257, -0.138988, 0.268296,
		-0.056918, -0.789436, -0.611189,
		35.239365, 36.927971, 48.273060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701565, 36.958889, 48.876862>,  <35.279205, 37.480576, 48.700893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701565, 36.958889, 48.876862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041637, 36.815365, 48.722748>,  <35.245682, 36.729248, 48.630280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041637, 36.815365, 48.722748>,  <34.701565, 36.958889, 48.876862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041637, 36.815365, 48.722748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113364, -0.589875, 0.799498,
		-0.514142, -0.723395, -0.460823,
		0.850181, -0.358814, -0.385286,
		35.296692, 36.707722, 48.607162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749165, 36.302555, 49.086304>,  <34.701565, 36.958889, 48.876862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749165, 36.302555, 49.086304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141727, 36.346924, 49.023651>,  <35.377266, 36.373547, 48.986057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141727, 36.346924, 49.023651>,  <34.749165, 36.302555, 49.086304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141727, 36.346924, 49.023651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183392, -0.301201, 0.935759,
		0.056622, -0.947087, -0.315944,
		0.981408, 0.110926, -0.156634,
		35.436150, 36.380203, 48.976662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353481, 36.136013, 49.437992>,  <34.749165, 36.302555, 49.086304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353481, 36.136013, 49.437992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742290, 36.047031, 49.407852>,  <35.975578, 35.993641, 49.389767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742290, 36.047031, 49.407852>,  <35.353481, 36.136013, 49.437992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742290, 36.047031, 49.407852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104853, -0.698076, 0.708305,
		-0.210166, -0.680591, -0.701873,
		0.972027, -0.222455, -0.075349,
		36.033897, 35.980293, 49.385246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426254, 35.526722, 49.192173>,  <35.353481, 36.136013, 49.437992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426254, 35.526722, 49.192173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732101, 35.618057, 49.433243>,  <35.915611, 35.672859, 49.577885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732101, 35.618057, 49.433243>,  <35.426254, 35.526722, 49.192173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732101, 35.618057, 49.433243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333864, -0.659542, 0.673453,
		0.551264, -0.716148, -0.428066,
		0.764620, 0.228334, 0.602678,
		35.961487, 35.686558, 49.614044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922997, 34.902611, 49.388836>,  <35.426254, 35.526722, 49.192173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922997, 34.902611, 49.388836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882648, 35.193626, 49.660282>,  <35.858440, 35.368237, 49.823151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882648, 35.193626, 49.660282>,  <35.922997, 34.902611, 49.388836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882648, 35.193626, 49.660282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330999, -0.667777, 0.666718,
		0.938224, -0.157366, 0.308176,
		-0.100874, 0.727537, 0.678612,
		35.852386, 35.411888, 49.863865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301949, 34.458897, 49.550369>,  <35.922997, 34.902611, 49.388836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301949, 34.458897, 49.550369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409393, 34.819031, 49.687332>,  <35.473858, 35.035110, 49.769512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409393, 34.819031, 49.687332>,  <35.301949, 34.458897, 49.550369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409393, 34.819031, 49.687332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902393, -0.110857, -0.416410,
		-0.336950, 0.420842, -0.842233,
		0.268610, 0.900335, 0.342412,
		35.489975, 35.089130, 49.790054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298313, 34.420334, 48.765057>,  <35.301949, 34.458897, 49.550369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298313, 34.420334, 48.765057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040005, 34.575691, 49.028000>,  <34.885017, 34.668907, 49.185768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040005, 34.575691, 49.028000>,  <35.298313, 34.420334, 48.765057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040005, 34.575691, 49.028000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763472, -0.338864, -0.549802,
		0.009217, -0.856926, 0.515357,
		-0.645775, 0.388393, 0.657362,
		34.846272, 34.692207, 49.225208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795387, 33.996883, 49.124981>,  <35.298313, 34.420334, 48.765057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795387, 33.996883, 49.124981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619640, 34.356071, 49.134876>,  <34.514194, 34.571583, 49.140812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619640, 34.356071, 49.134876>,  <34.795387, 33.996883, 49.124981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619640, 34.356071, 49.134876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749580, -0.351304, -0.560996,
		-0.495065, -0.265026, 0.827449,
		-0.439364, 0.897969, 0.024740,
		34.487831, 34.625462, 49.142300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193203, 33.930714, 49.338039>,  <34.795387, 33.996883, 49.124981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193203, 33.930714, 49.338039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195488, 34.234528, 49.077866>,  <34.196861, 34.416817, 48.921761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195488, 34.234528, 49.077866>,  <34.193203, 33.930714, 49.338039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195488, 34.234528, 49.077866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813126, -0.375075, -0.445135,
		-0.582060, 0.531432, 0.615456,
		0.005717, 0.759538, -0.650437,
		34.197205, 34.462391, 48.882736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794262, 33.691429, 48.801250>,  <34.193203, 33.930714, 49.338039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794262, 33.691429, 48.801250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840130, 34.060886, 48.654972>,  <33.867649, 34.282562, 48.567204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840130, 34.060886, 48.654972>,  <33.794262, 33.691429, 48.801250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840130, 34.060886, 48.654972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729441, -0.171614, -0.662167,
		-0.674365, 0.342683, 0.654065,
		0.114667, 0.923643, -0.365697,
		33.874531, 34.337978, 48.545261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466484, 33.803013, 48.429543>,  <33.794262, 33.691429, 48.801250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466484, 33.803013, 48.429543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621109, 34.171829, 48.437714>,  <34.713882, 34.393120, 48.442616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621109, 34.171829, 48.437714>,  <34.466484, 33.803013, 48.429543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621109, 34.171829, 48.437714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202826, -0.063381, -0.977161,
		-0.899685, 0.381874, -0.211514,
		0.386559, 0.922038, 0.020431,
		34.737076, 34.448441, 48.443844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146797, 34.116493, 47.915504>,  <34.466484, 33.803013, 48.429543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146797, 34.116493, 47.915504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495922, 34.306469, 47.960464>,  <34.705395, 34.420456, 47.987442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.495922, 34.306469, 47.960464>,  <34.146797, 34.116493, 47.915504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495922, 34.306469, 47.960464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117924, 0.018262, -0.992855,
		-0.473603, 0.879826, -0.040068,
		0.872808, 0.474944, 0.112402,
		34.757763, 34.448952, 47.994186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181179, 34.552803, 47.397579>,  <34.146797, 34.116493, 47.915504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181179, 34.552803, 47.397579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563366, 34.526882, 47.512741>,  <34.792679, 34.511330, 47.581837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563366, 34.526882, 47.512741>,  <34.181179, 34.552803, 47.397579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563366, 34.526882, 47.512741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294137, 0.130059, -0.946873,
		0.023918, 0.989386, 0.143328,
		0.955464, -0.064806, 0.287904,
		34.850006, 34.507439, 47.599113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527985, 35.094254, 47.061363>,  <34.181179, 34.552803, 47.397579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527985, 35.094254, 47.061363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801308, 34.815063, 47.147083>,  <34.965302, 34.647549, 47.198517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801308, 34.815063, 47.147083>,  <34.527985, 35.094254, 47.061363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801308, 34.815063, 47.147083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431748, 0.149565, -0.889508,
		0.588800, 0.700332, 0.403547,
		0.683307, -0.697973, 0.214304,
		35.006298, 34.605671, 47.211376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188435, 35.313580, 46.827473>,  <34.527985, 35.094254, 47.061363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188435, 35.313580, 46.827473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210533, 34.916553, 46.870861>,  <35.223793, 34.678337, 46.896896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210533, 34.916553, 46.870861>,  <35.188435, 35.313580, 46.827473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210533, 34.916553, 46.870861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453876, -0.071799, -0.888167,
		0.889350, 0.098305, 0.446533,
		0.055250, -0.992563, 0.108473,
		35.227108, 34.618786, 46.903404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845585, 35.164707, 46.705101>,  <35.188435, 35.313580, 46.827473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845585, 35.164707, 46.705101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655022, 34.814255, 46.675648>,  <35.540684, 34.603981, 46.657974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655022, 34.814255, 46.675648>,  <35.845585, 35.164707, 46.705101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655022, 34.814255, 46.675648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463865, -0.179317, -0.867568,
		0.746901, -0.447477, 0.491836,
		-0.476411, -0.876133, -0.073637,
		35.512096, 34.551414, 46.653557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329170, 34.711517, 46.513332>,  <35.845585, 35.164707, 46.705101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329170, 34.711517, 46.513332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980110, 34.563103, 46.386326>,  <35.770676, 34.474052, 46.310123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980110, 34.563103, 46.386326>,  <36.329170, 34.711517, 46.513332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980110, 34.563103, 46.386326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407181, -0.193874, -0.892534,
		0.269605, -0.908155, 0.320263,
		-0.872649, -0.371036, -0.317514,
		35.718315, 34.451794, 46.291073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611485, 34.180817, 46.118671>,  <36.329170, 34.711517, 46.513332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611485, 34.180817, 46.118671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232700, 34.216297, 45.995121>,  <36.005432, 34.237587, 45.920990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232700, 34.216297, 45.995121>,  <36.611485, 34.180817, 46.118671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232700, 34.216297, 45.995121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309441, -0.007694, -0.950887,
		-0.086722, -0.996028, -0.020162,
		-0.946955, 0.088702, -0.308879,
		35.948612, 34.242908, 45.902458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512085, 33.733940, 45.476643>,  <36.611485, 34.180817, 46.118671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512085, 33.733940, 45.476643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227535, 34.015003, 45.470734>,  <36.056805, 34.183640, 45.467190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227535, 34.015003, 45.470734>,  <36.512085, 33.733940, 45.476643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227535, 34.015003, 45.470734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171318, 0.152987, -0.973265,
		-0.681612, -0.694887, -0.229210,
		-0.711376, 0.702657, -0.014769,
		36.014122, 34.225800, 45.466305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169872, 33.658371, 44.875614>,  <36.512085, 33.733940, 45.476643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169872, 33.658371, 44.875614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046509, 34.027031, 44.969799>,  <35.972488, 34.248226, 45.026310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046509, 34.027031, 44.969799>,  <36.169872, 33.658371, 44.875614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046509, 34.027031, 44.969799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139089, 0.288561, -0.947305,
		-0.941029, -0.259411, -0.217188,
		-0.308413, 0.921650, 0.235463,
		35.953983, 34.303528, 45.040440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632679, 33.880951, 44.378098>,  <36.169872, 33.658371, 44.875614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632679, 33.880951, 44.378098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784031, 34.217674, 44.532078>,  <35.874840, 34.419708, 44.624466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784031, 34.217674, 44.532078>,  <35.632679, 33.880951, 44.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784031, 34.217674, 44.532078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091801, 0.379694, -0.920546,
		-0.921088, 0.383653, 0.066388,
		0.378377, 0.841809, 0.384951,
		35.897545, 34.470219, 44.647564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449642, 34.374668, 43.942734>,  <35.632679, 33.880951, 44.378098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449642, 34.374668, 43.942734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773197, 34.534809, 44.114975>,  <35.967331, 34.630894, 44.218319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773197, 34.534809, 44.114975>,  <35.449642, 34.374668, 43.942734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773197, 34.534809, 44.114975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240604, 0.442841, -0.863714,
		-0.536475, 0.802254, 0.261884,
		0.808891, 0.400350, 0.430598,
		36.015865, 34.654915, 44.244156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631004, 34.912582, 43.541943>,  <35.449642, 34.374668, 43.942734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631004, 34.912582, 43.541943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980453, 34.884167, 43.734497>,  <36.190125, 34.867119, 43.850029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980453, 34.884167, 43.734497>,  <35.631004, 34.912582, 43.541943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980453, 34.884167, 43.734497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471345, 0.369328, -0.800894,
		-0.120896, 0.926580, 0.356137,
		0.873624, -0.071039, 0.481389,
		36.242542, 34.862854, 43.878914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880138, 35.591469, 43.599800>,  <35.631004, 34.912582, 43.541943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880138, 35.591469, 43.599800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173279, 35.319351, 43.604366>,  <36.349163, 35.156082, 43.607105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173279, 35.319351, 43.604366>,  <35.880138, 35.591469, 43.599800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173279, 35.319351, 43.604366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452080, 0.474330, -0.755404,
		0.508483, 0.558758, 0.655160,
		0.732850, -0.680295, 0.011414,
		36.393135, 35.115261, 43.607792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415207, 36.028419, 43.701969>,  <35.880138, 35.591469, 43.599800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415207, 36.028419, 43.701969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592945, 35.696774, 43.566246>,  <36.699589, 35.497787, 43.484814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592945, 35.696774, 43.566246>,  <36.415207, 36.028419, 43.701969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592945, 35.696774, 43.566246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446783, 0.533386, -0.718250,
		0.776491, 0.167557, 0.607442,
		0.444349, -0.829110, -0.339308,
		36.726250, 35.448040, 43.464455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206409, 36.224667, 43.471016>,  <36.415207, 36.028419, 43.701969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206409, 36.224667, 43.471016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122993, 35.875000, 43.295589>,  <37.072945, 35.665199, 43.190334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122993, 35.875000, 43.295589>,  <37.206409, 36.224667, 43.471016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122993, 35.875000, 43.295589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381905, 0.340038, -0.859374,
		0.900366, -0.346705, 0.262938,
		-0.208540, -0.874168, -0.438567,
		37.060432, 35.612751, 43.164021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710472, 36.093014, 43.028519>,  <37.206409, 36.224667, 43.471016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710472, 36.093014, 43.028519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403252, 35.875118, 42.893841>,  <37.218918, 35.744381, 42.813034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403252, 35.875118, 42.893841>,  <37.710472, 36.093014, 43.028519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403252, 35.875118, 42.893841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159414, 0.346575, -0.924377,
		0.620232, -0.763641, -0.179348,
		-0.768049, -0.544738, -0.336692,
		37.172836, 35.711697, 42.792831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997498, 35.758820, 42.456879>,  <37.710472, 36.093014, 43.028519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997498, 35.758820, 42.456879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602520, 35.756886, 42.393711>,  <37.365536, 35.755726, 42.355808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602520, 35.756886, 42.393711>,  <37.997498, 35.758820, 42.456879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602520, 35.756886, 42.393711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155120, 0.160213, -0.974818,
		0.030013, -0.987070, -0.157451,
		-0.987439, -0.004833, -0.157923,
		37.306290, 35.755436, 42.346333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950142, 35.551136, 41.749039>,  <37.997498, 35.758820, 42.456879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950142, 35.551136, 41.749039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573292, 35.665970, 41.818295>,  <37.347179, 35.734871, 41.859848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573292, 35.665970, 41.818295>,  <37.950142, 35.551136, 41.749039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573292, 35.665970, 41.818295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099949, 0.252424, -0.962441,
		-0.320009, -0.924047, -0.209121,
		-0.942128, 0.287088, 0.173135,
		37.290653, 35.752098, 41.870235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502331, 35.274937, 41.219044>,  <37.950142, 35.551136, 41.749039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502331, 35.274937, 41.219044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337353, 35.622425, 41.328747>,  <37.238365, 35.830917, 41.394569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337353, 35.622425, 41.328747>,  <37.502331, 35.274937, 41.219044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337353, 35.622425, 41.328747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201237, 0.206732, -0.957479,
		-0.888477, -0.450098, 0.089553,
		-0.412446, 0.868719, 0.274253,
		37.213619, 35.883041, 41.411022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735611, 35.360806, 40.914906>,  <37.502331, 35.274937, 41.219044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735611, 35.360806, 40.914906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855995, 35.722027, 41.037483>,  <36.928226, 35.938759, 41.111031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855995, 35.722027, 41.037483>,  <36.735611, 35.360806, 40.914906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855995, 35.722027, 41.037483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246754, 0.384146, -0.889688,
		-0.921160, 0.192143, 0.338445,
		0.300960, 0.903057, 0.306448,
		36.946281, 35.992943, 41.129417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242245, 35.777191, 40.650349>,  <36.735611, 35.360806, 40.914906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242245, 35.777191, 40.650349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549923, 36.025665, 40.710316>,  <36.734528, 36.174747, 40.746296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549923, 36.025665, 40.710316>,  <36.242245, 35.777191, 40.650349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549923, 36.025665, 40.710316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177031, 0.432570, -0.884049,
		-0.614005, 0.653464, 0.442698,
		0.769193, 0.621182, 0.149917,
		36.780682, 36.212021, 40.755291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036369, 36.404572, 40.438492>,  <36.242245, 35.777191, 40.650349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036369, 36.404572, 40.438492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431789, 36.464314, 40.429909>,  <36.669041, 36.500156, 40.424759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431789, 36.464314, 40.429909>,  <36.036369, 36.404572, 40.438492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431789, 36.464314, 40.429909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080513, 0.401889, -0.912142,
		-0.127607, 0.903426, 0.409313,
		0.988551, 0.149351, -0.021454,
		36.728355, 36.509117, 40.423473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103191, 37.040253, 40.172585>,  <36.036369, 36.404572, 40.438492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103191, 37.040253, 40.172585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450760, 36.855381, 40.101742>,  <36.659302, 36.744457, 40.059235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450760, 36.855381, 40.101742>,  <36.103191, 37.040253, 40.172585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450760, 36.855381, 40.101742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005787, 0.367291, -0.930088,
		0.494917, 0.807148, 0.321822,
		0.868921, -0.462179, -0.177108,
		36.711437, 36.716728, 40.048611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415791, 37.548191, 39.868309>,  <36.103191, 37.040253, 40.172585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415791, 37.548191, 39.868309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604546, 37.222847, 39.732208>,  <36.717796, 37.027641, 39.650547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604546, 37.222847, 39.732208>,  <36.415791, 37.548191, 39.868309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604546, 37.222847, 39.732208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108442, 0.329449, -0.937925,
		0.874966, 0.479490, 0.067260,
		0.471884, -0.813359, -0.340253,
		36.746109, 36.978840, 39.630131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888088, 37.816750, 39.371265>,  <36.415791, 37.548191, 39.868309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888088, 37.816750, 39.371265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849163, 37.424953, 39.300701>,  <36.825809, 37.189877, 39.258362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849163, 37.424953, 39.300701>,  <36.888088, 37.816750, 39.371265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849163, 37.424953, 39.300701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085705, 0.184840, -0.979024,
		0.991557, -0.080152, -0.101935,
		-0.097312, -0.979495, -0.176409,
		36.819969, 37.131104, 39.247780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367443, 37.605495, 38.757713>,  <36.888088, 37.816750, 39.371265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367443, 37.605495, 38.757713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075455, 37.335678, 38.801785>,  <36.900261, 37.173790, 38.828228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075455, 37.335678, 38.801785>,  <37.367443, 37.605495, 38.757713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075455, 37.335678, 38.801785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258312, 0.123035, -0.958195,
		0.632787, -0.727912, -0.264054,
		-0.729969, -0.674542, 0.110173,
		36.856464, 37.133316, 38.834835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448299, 37.252254, 38.092648>,  <37.367443, 37.605495, 38.757713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448299, 37.252254, 38.092648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098606, 37.119469, 38.234356>,  <36.888790, 37.039795, 38.319382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098606, 37.119469, 38.234356>,  <37.448299, 37.252254, 38.092648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098606, 37.119469, 38.234356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316417, -0.163858, -0.934362,
		0.368229, -0.928950, 0.038210,
		-0.874236, -0.331969, 0.354272,
		36.836334, 37.019878, 38.340637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310692, 36.602032, 37.743568>,  <37.448299, 37.252254, 38.092648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310692, 36.602032, 37.743568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953320, 36.726089, 37.873550>,  <36.738895, 36.800526, 37.951538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.953320, 36.726089, 37.873550>,  <37.310692, 36.602032, 37.743568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953320, 36.726089, 37.873550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390249, -0.177628, -0.903412,
		-0.222473, -0.933946, 0.279733,
		-0.893426, 0.310151, 0.324954,
		36.685291, 36.819134, 37.971039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862949, 36.076031, 37.564205>,  <37.310692, 36.602032, 37.743568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862949, 36.076031, 37.564205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652721, 36.412159, 37.617317>,  <36.526585, 36.613838, 37.649185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652721, 36.412159, 37.617317>,  <36.862949, 36.076031, 37.564205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652721, 36.412159, 37.617317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453612, -0.144757, -0.879365,
		-0.719730, -0.522399, 0.457261,
		-0.525571, 0.840324, 0.132780,
		36.495049, 36.664257, 37.657150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142086, 35.893967, 37.357441>,  <36.862949, 36.076031, 37.564205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142086, 35.893967, 37.357441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132095, 36.293671, 37.345726>,  <36.126099, 36.533493, 37.338696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132095, 36.293671, 37.345726>,  <36.142086, 35.893967, 37.357441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132095, 36.293671, 37.345726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580415, -0.038354, -0.813417,
		-0.813938, -0.003319, 0.580943,
		-0.024981, 0.999259, -0.029291,
		36.124599, 36.593449, 37.336937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522034, 35.948971, 37.150383>,  <36.142086, 35.893967, 37.357441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522034, 35.948971, 37.150383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675213, 36.311485, 37.078831>,  <35.767120, 36.528996, 37.035900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675213, 36.311485, 37.078831>,  <35.522034, 35.948971, 37.150383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675213, 36.311485, 37.078831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323727, -0.049702, -0.944844,
		-0.865190, 0.419731, 0.274357,
		0.382944, 0.906287, -0.178880,
		35.790096, 36.583370, 37.025166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977543, 36.367935, 36.780704>,  <35.522034, 35.948971, 37.150383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977543, 36.367935, 36.780704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332569, 36.505695, 36.658325>,  <35.545586, 36.588352, 36.584896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332569, 36.505695, 36.658325>,  <34.977543, 36.367935, 36.780704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332569, 36.505695, 36.658325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324725, -0.003348, -0.945802,
		-0.326763, 0.938815, 0.108865,
		0.887569, 0.344405, -0.305951,
		35.598839, 36.609016, 36.566540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807636, 36.939953, 36.290543>,  <34.977543, 36.367935, 36.780704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807636, 36.939953, 36.290543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187778, 36.837635, 36.219662>,  <35.415863, 36.776245, 36.177132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187778, 36.837635, 36.219662>,  <34.807636, 36.939953, 36.290543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187778, 36.837635, 36.219662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170856, 0.047008, -0.984174,
		0.260077, 0.965587, 0.000970,
		0.950351, -0.255796, -0.177203,
		35.472885, 36.760895, 36.166500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949165, 37.322632, 35.708721>,  <34.807636, 36.939953, 36.290543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949165, 37.322632, 35.708721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258659, 37.069263, 35.713043>,  <35.444355, 36.917240, 35.715637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258659, 37.069263, 35.713043>,  <34.949165, 37.322632, 35.708721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258659, 37.069263, 35.713043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028483, -0.051817, -0.998250,
		0.632874, 0.772069, -0.058134,
		0.773731, -0.633423, 0.010803,
		35.490780, 36.879238, 35.716286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498257, 37.613609, 35.328125>,  <34.949165, 37.322632, 35.708721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498257, 37.613609, 35.328125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582375, 37.223362, 35.303013>,  <35.632847, 36.989212, 35.287945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582375, 37.223362, 35.303013>,  <35.498257, 37.613609, 35.328125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582375, 37.223362, 35.303013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009395, 0.062197, -0.998020,
		0.977593, 0.210470, 0.003914,
		0.210296, -0.975620, -0.062781,
		35.645462, 36.930676, 35.284180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071609, 37.504280, 34.736885>,  <35.498257, 37.613609, 35.328125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071609, 37.504280, 34.736885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921028, 37.135986, 34.777935>,  <35.830681, 36.915009, 34.802567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921028, 37.135986, 34.777935>,  <36.071609, 37.504280, 34.736885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921028, 37.135986, 34.777935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018208, -0.103404, -0.994473,
		0.926256, -0.376242, 0.022163,
		-0.376454, -0.920733, 0.102629,
		35.808090, 36.859768, 34.808723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250351, 37.213074, 34.104862>,  <36.071609, 37.504280, 34.736885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250351, 37.213074, 34.104862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986240, 36.950554, 34.250908>,  <35.827774, 36.793041, 34.338535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986240, 36.950554, 34.250908>,  <36.250351, 37.213074, 34.104862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986240, 36.950554, 34.250908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196870, -0.317908, -0.927457,
		0.724763, -0.684256, 0.080700,
		-0.660274, -0.656299, 0.365118,
		35.788158, 36.753666, 34.360443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511425, 36.491581, 33.874657>,  <36.250351, 37.213074, 34.104862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511425, 36.491581, 33.874657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119373, 36.498329, 33.953705>,  <35.884140, 36.502380, 34.001133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119373, 36.498329, 33.953705>,  <36.511425, 36.491581, 33.874657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119373, 36.498329, 33.953705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197106, -0.193746, -0.961047,
		0.022074, -0.980907, 0.193222,
		-0.980134, 0.016871, 0.197619,
		35.825333, 36.503391, 34.012989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329018, 35.821461, 33.824181>,  <36.511425, 36.491581, 33.874657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329018, 35.821461, 33.824181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000252, 36.038681, 33.755421>,  <35.802994, 36.169014, 33.714165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000252, 36.038681, 33.755421>,  <36.329018, 35.821461, 33.824181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000252, 36.038681, 33.755421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113752, -0.452195, -0.884636,
		-0.558134, -0.707542, 0.433440,
		-0.821916, 0.543050, -0.171901,
		35.753677, 36.201595, 33.703850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359306, 35.390156, 34.446625>,  <36.329018, 35.821461, 33.824181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359306, 35.390156, 34.446625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638725, 35.621925, 34.278671>,  <36.806377, 35.760986, 34.177898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638725, 35.621925, 34.278671>,  <36.359306, 35.390156, 34.446625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638725, 35.621925, 34.278671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691372, -0.395229, 0.604813,
		0.184493, -0.712785, -0.676683,
		0.698547, 0.579423, -0.419882,
		36.848289, 35.795753, 34.152706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919350, 34.963223, 34.224827>,  <36.359306, 35.390156, 34.446625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919350, 34.963223, 34.224827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082352, 35.328495, 34.222473>,  <37.180153, 35.547661, 34.221062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082352, 35.328495, 34.222473>,  <36.919350, 34.963223, 34.224827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082352, 35.328495, 34.222473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766806, -0.338670, 0.545262,
		0.495932, -0.226709, -0.838245,
		0.407504, 0.913184, -0.005884,
		37.204601, 35.602451, 34.220707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601765, 34.866730, 34.064396>,  <36.919350, 34.963223, 34.224827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601765, 34.866730, 34.064396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593624, 35.222622, 34.246811>,  <37.588737, 35.436157, 34.356258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593624, 35.222622, 34.246811>,  <37.601765, 34.866730, 34.064396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593624, 35.222622, 34.246811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751225, -0.287377, 0.594202,
		0.659733, 0.354680, -0.662537,
		-0.020354, 0.889728, 0.456037,
		37.587517, 35.489540, 34.383621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215492, 34.820271, 34.295341>,  <37.601765, 34.866730, 34.064396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215492, 34.820271, 34.295341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069088, 35.132233, 34.498428>,  <37.981243, 35.319408, 34.620281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069088, 35.132233, 34.498428>,  <38.215492, 34.820271, 34.295341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069088, 35.132233, 34.498428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725724, -0.102313, 0.680336,
		0.582545, 0.617477, -0.528548,
		-0.366015, 0.779906, 0.507720,
		37.959282, 35.366203, 34.650745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799519, 35.207710, 34.560040>,  <38.215492, 34.820271, 34.295341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799519, 35.207710, 34.560040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512665, 35.326496, 34.812237>,  <38.340553, 35.397766, 34.963554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512665, 35.326496, 34.812237>,  <38.799519, 35.207710, 34.560040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512665, 35.326496, 34.812237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661824, 0.006673, 0.749629,
		0.218405, 0.954866, -0.201322,
		-0.717139, 0.296962, 0.630496,
		38.297523, 35.415585, 35.001385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201244, 35.486687, 35.078278>,  <38.799519, 35.207710, 34.560040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201244, 35.486687, 35.078278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842415, 35.456688, 35.252468>,  <38.627117, 35.438690, 35.356983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842415, 35.456688, 35.252468>,  <39.201244, 35.486687, 35.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842415, 35.456688, 35.252468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439748, -0.248402, 0.863086,
		0.043446, 0.965750, 0.255813,
		-0.897070, -0.074996, 0.435479,
		38.573296, 35.434189, 35.383110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120728, 35.952682, 35.633293>,  <39.201244, 35.486687, 35.078278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120728, 35.952682, 35.633293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850285, 35.668919, 35.712906>,  <38.688019, 35.498661, 35.760674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850285, 35.668919, 35.712906>,  <39.120728, 35.952682, 35.633293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850285, 35.668919, 35.712906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340051, -0.060796, 0.938440,
		-0.653637, 0.702170, 0.282340,
		-0.676109, -0.709409, 0.199035,
		38.647453, 35.456097, 35.772617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964039, 36.072765, 36.275936>,  <39.120728, 35.952682, 35.633293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964039, 36.072765, 36.275936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848740, 35.695770, 36.208263>,  <38.779560, 35.469574, 36.167660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848740, 35.695770, 36.208263>,  <38.964039, 36.072765, 36.275936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848740, 35.695770, 36.208263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125922, -0.212459, 0.969023,
		-0.949241, 0.258013, 0.179921,
		-0.288246, -0.942492, -0.169185,
		38.762264, 35.413021, 36.157509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549191, 35.949543, 36.876709>,  <38.964039, 36.072765, 36.275936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549191, 35.949543, 36.876709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631603, 35.583965, 36.736847>,  <38.681053, 35.364620, 36.652927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631603, 35.583965, 36.736847>,  <38.549191, 35.949543, 36.876709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631603, 35.583965, 36.736847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035758, -0.364117, 0.930666,
		-0.977891, -0.179247, -0.107702,
		0.206036, -0.913941, -0.349657,
		38.693413, 35.309784, 36.631950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967869, 35.685516, 37.118099>,  <38.549191, 35.949543, 36.876709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967869, 35.685516, 37.118099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244480, 35.403652, 37.054539>,  <38.410446, 35.234535, 37.016403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244480, 35.403652, 37.054539>,  <37.967869, 35.685516, 37.118099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244480, 35.403652, 37.054539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133959, -0.341266, 0.930372,
		-0.709821, -0.622091, -0.330390,
		0.691527, -0.704656, -0.158902,
		38.451939, 35.192257, 37.006866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631638, 35.146984, 37.437157>,  <37.967869, 35.685516, 37.118099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631638, 35.146984, 37.437157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017723, 35.049690, 37.398811>,  <38.249374, 34.991314, 37.375805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017723, 35.049690, 37.398811>,  <37.631638, 35.146984, 37.437157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017723, 35.049690, 37.398811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028428, -0.266861, 0.963316,
		-0.259881, -0.932539, -0.250666,
		0.965222, -0.243222, -0.095862,
		38.307289, 34.976719, 37.370052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760189, 34.376339, 37.700600>,  <37.631638, 35.146984, 37.437157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760189, 34.376339, 37.700600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127304, 34.534630, 37.713684>,  <38.347572, 34.629604, 37.721535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127304, 34.534630, 37.713684>,  <37.760189, 34.376339, 37.700600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127304, 34.534630, 37.713684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024818, -0.139381, 0.989928,
		0.396301, -0.907729, -0.137743,
		0.917785, 0.395728, 0.032709,
		38.402641, 34.653347, 37.723495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164814, 33.844975, 38.008354>,  <37.760189, 34.376339, 37.700600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164814, 33.844975, 38.008354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371376, 34.180317, 38.078190>,  <38.495312, 34.381523, 38.120090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371376, 34.180317, 38.078190>,  <38.164814, 33.844975, 38.008354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371376, 34.180317, 38.078190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088385, -0.254969, 0.962901,
		0.851772, -0.481814, -0.205766,
		0.516403, 0.838359, 0.174591,
		38.526299, 34.431824, 38.130566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651024, 33.612175, 38.447571>,  <38.164814, 33.844975, 38.008354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651024, 33.612175, 38.447571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665543, 34.006721, 38.511772>,  <38.674255, 34.243450, 38.550293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665543, 34.006721, 38.511772>,  <38.651024, 33.612175, 38.447571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665543, 34.006721, 38.511772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140204, -0.164044, 0.976438,
		0.989457, -0.012940, -0.144248,
		0.036298, 0.986368, 0.160500,
		38.676434, 34.302631, 38.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313110, 33.784729, 38.700539>,  <38.651024, 33.612175, 38.447571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313110, 33.784729, 38.700539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068737, 34.073643, 38.830200>,  <38.922115, 34.246990, 38.907997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068737, 34.073643, 38.830200>,  <39.313110, 33.784729, 38.700539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068737, 34.073643, 38.830200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190536, -0.263270, 0.945719,
		0.768414, 0.639531, 0.023219,
		-0.610930, 0.722280, 0.324155,
		38.885460, 34.290325, 38.927448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608562, 34.299458, 39.155598>,  <39.313110, 33.784729, 38.700539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608562, 34.299458, 39.155598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223473, 34.348209, 39.252186>,  <38.992420, 34.377460, 39.310139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223473, 34.348209, 39.252186>,  <39.608562, 34.299458, 39.155598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223473, 34.348209, 39.252186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217205, -0.183673, 0.958690,
		0.161195, 0.975402, 0.150354,
		-0.962724, 0.121879, 0.241470,
		38.934654, 34.384773, 39.324627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676971, 34.756981, 39.624630>,  <39.608562, 34.299458, 39.155598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676971, 34.756981, 39.624630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320595, 34.586441, 39.687187>,  <39.106770, 34.484119, 39.724724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320595, 34.586441, 39.687187>,  <39.676971, 34.756981, 39.624630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320595, 34.586441, 39.687187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252120, -0.177926, 0.951198,
		-0.377713, 0.886889, 0.266011,
		-0.890937, -0.426346, 0.156397,
		39.053314, 34.458538, 39.734108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500153, 34.911907, 40.389378>,  <39.676971, 34.756981, 39.624630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500153, 34.911907, 40.389378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169174, 34.721584, 40.270084>,  <38.970589, 34.607391, 40.198509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169174, 34.721584, 40.270084>,  <39.500153, 34.911907, 40.389378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169174, 34.721584, 40.270084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254438, -0.155773, 0.954461,
		-0.500592, 0.865648, 0.007831,
		-0.827447, -0.475803, -0.298232,
		38.920940, 34.578842, 40.180614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761204, 35.317921, 40.485245>,  <39.500153, 34.911907, 40.389378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761204, 35.317921, 40.485245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753235, 34.919209, 40.516296>,  <38.748455, 34.679981, 40.534927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753235, 34.919209, 40.516296>,  <38.761204, 35.317921, 40.485245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753235, 34.919209, 40.516296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271835, 0.080118, 0.959003,
		-0.962138, -0.002000, -0.272557,
		-0.019918, -0.996784, 0.077629,
		38.747261, 34.620174, 40.539585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344505, 35.115242, 41.153126>,  <38.761204, 35.317921, 40.485245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344505, 35.115242, 41.153126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545662, 34.782188, 41.060322>,  <38.666355, 34.582355, 41.004639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545662, 34.782188, 41.060322>,  <38.344505, 35.115242, 41.153126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545662, 34.782188, 41.060322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021862, -0.280585, 0.959580,
		-0.864073, -0.477492, -0.159307,
		0.502891, -0.832630, -0.232007,
		38.696529, 34.532398, 40.990719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929035, 34.651653, 41.502609>,  <38.344505, 35.115242, 41.153126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929035, 34.651653, 41.502609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297443, 34.518986, 41.420914>,  <38.518490, 34.439384, 41.371899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297443, 34.518986, 41.420914>,  <37.929035, 34.651653, 41.502609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297443, 34.518986, 41.420914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056309, -0.405463, 0.912375,
		-0.385410, -0.851821, -0.354766,
		0.921026, -0.331662, -0.204235,
		38.573750, 34.419487, 41.359642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937485, 33.976189, 41.794456>,  <37.929035, 34.651653, 41.502609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937485, 33.976189, 41.794456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323627, 34.075058, 41.761005>,  <38.555313, 34.134380, 41.740936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323627, 34.075058, 41.761005>,  <37.937485, 33.976189, 41.794456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323627, 34.075058, 41.761005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172552, -0.364288, 0.915161,
		0.195735, -0.897887, -0.394317,
		0.965357, 0.247169, -0.083628,
		38.613235, 34.149208, 41.735916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193069, 33.459518, 42.030201>,  <37.937485, 33.976189, 41.794456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193069, 33.459518, 42.030201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501335, 33.712982, 42.057190>,  <38.686295, 33.865059, 42.073383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501335, 33.712982, 42.057190>,  <38.193069, 33.459518, 42.030201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501335, 33.712982, 42.057190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103105, -0.228482, 0.968073,
		0.628842, -0.739105, -0.241416,
		0.770667, 0.633656, 0.067474,
		38.732536, 33.903080, 42.077431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840061, 33.077358, 42.379307>,  <38.193069, 33.459518, 42.030201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840061, 33.077358, 42.379307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853374, 33.475094, 42.419655>,  <38.861362, 33.713737, 42.443863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853374, 33.475094, 42.419655>,  <38.840061, 33.077358, 42.379307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853374, 33.475094, 42.419655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010750, -0.100564, 0.994872,
		0.999388, -0.034200, 0.007342,
		0.033286, 0.994342, 0.100870,
		38.863361, 33.773396, 42.449917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425793, 33.254997, 42.810139>,  <38.840061, 33.077358, 42.379307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425793, 33.254997, 42.810139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187412, 33.575485, 42.831619>,  <39.044384, 33.767780, 42.844509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187412, 33.575485, 42.831619>,  <39.425793, 33.254997, 42.810139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187412, 33.575485, 42.831619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072831, -0.012668, 0.997264,
		0.799710, 0.598233, -0.050805,
		-0.595953, 0.801222, 0.053701,
		39.008625, 33.815853, 42.847729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771175, 33.685627, 43.360928>,  <39.425793, 33.254997, 42.810139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771175, 33.685627, 43.360928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402428, 33.830334, 43.305386>,  <39.181179, 33.917156, 43.272060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402428, 33.830334, 43.305386>,  <39.771175, 33.685627, 43.360928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402428, 33.830334, 43.305386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101326, 0.120808, 0.987491,
		0.374016, 0.924408, -0.074713,
		-0.921871, 0.361767, -0.138851,
		39.125866, 33.938862, 43.263729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846764, 34.361740, 43.630680>,  <39.771175, 33.685627, 43.360928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846764, 34.361740, 43.630680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475452, 34.213875, 43.646927>,  <39.252666, 34.125156, 43.656677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475452, 34.213875, 43.646927>,  <39.846764, 34.361740, 43.630680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475452, 34.213875, 43.646927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087288, 0.322752, 0.942450,
		-0.361504, 0.871308, -0.331870,
		-0.928276, -0.369668, 0.040622,
		39.196968, 34.102974, 43.659115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468819, 34.948475, 43.820511>,  <39.846764, 34.361740, 43.630680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468819, 34.948475, 43.820511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284370, 34.611179, 43.931011>,  <39.173702, 34.408802, 43.997311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284370, 34.611179, 43.931011>,  <39.468819, 34.948475, 43.820511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284370, 34.611179, 43.931011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020626, 0.321426, 0.946710,
		-0.887096, 0.430853, -0.165610,
		-0.461125, -0.843238, 0.276249,
		39.146034, 34.358208, 44.013885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107929, 35.146339, 44.399990>,  <39.468819, 34.948475, 43.820511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107929, 35.146339, 44.399990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102737, 34.746418, 44.405907>,  <39.099621, 34.506466, 44.409454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102737, 34.746418, 44.405907>,  <39.107929, 35.146339, 44.399990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102737, 34.746418, 44.405907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201753, 0.011865, 0.979365,
		-0.979351, 0.015699, 0.201560,
		-0.012984, -0.999807, 0.014787,
		39.098843, 34.446476, 44.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582062, 35.083889, 44.778381>,  <39.107929, 35.146339, 44.399990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582062, 35.083889, 44.778381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783272, 34.738457, 44.792175>,  <38.903999, 34.531197, 44.800453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783272, 34.738457, 44.792175>,  <38.582062, 35.083889, 44.778381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783272, 34.738457, 44.792175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041431, 0.015762, 0.999017,
		-0.863278, -0.503959, -0.027850,
		0.503025, -0.863583, 0.034487,
		38.934181, 34.479382, 44.802521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273605, 34.845661, 45.368500>,  <38.582062, 35.083889, 44.778381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273605, 34.845661, 45.368500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592213, 34.610836, 45.310650>,  <38.783379, 34.469940, 45.275940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592213, 34.610836, 45.310650>,  <38.273605, 34.845661, 45.368500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592213, 34.610836, 45.310650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142194, -0.050611, 0.988544,
		-0.587655, -0.807959, 0.043164,
		0.796519, -0.587061, -0.144628,
		38.831169, 34.434719, 45.267262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161358, 34.192711, 45.708900>,  <38.273605, 34.845661, 45.368500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161358, 34.192711, 45.708900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556511, 34.248997, 45.682724>,  <38.793602, 34.282768, 45.667019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556511, 34.248997, 45.682724>,  <38.161358, 34.192711, 45.708900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556511, 34.248997, 45.682724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072977, -0.049085, 0.996125,
		0.136957, -0.988833, -0.058760,
		0.987885, 0.140714, -0.065439,
		38.852875, 34.291210, 45.663094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369209, 33.847393, 46.264839>,  <38.161358, 34.192711, 45.708900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369209, 33.847393, 46.264839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674595, 34.079086, 46.150566>,  <38.857826, 34.218102, 46.082005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674595, 34.079086, 46.150566>,  <38.369209, 33.847393, 46.264839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674595, 34.079086, 46.150566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255470, 0.135411, 0.957287,
		0.593176, -0.803837, -0.044595,
		0.763464, 0.579233, -0.285679,
		38.903633, 34.252857, 46.064861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797749, 33.853535, 46.813225>,  <38.369209, 33.847393, 46.264839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797749, 33.853535, 46.813225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946568, 34.158955, 46.602104>,  <39.035858, 34.342205, 46.475430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946568, 34.158955, 46.602104>,  <38.797749, 33.853535, 46.813225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946568, 34.158955, 46.602104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289577, 0.444768, 0.847542,
		0.881888, -0.468166, -0.055630,
		0.372048, 0.763546, -0.527806,
		39.058182, 34.388020, 46.443764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552601, 33.967857, 46.899792>,  <38.797749, 33.853535, 46.813225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552601, 33.967857, 46.899792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397800, 34.323662, 46.802631>,  <39.304920, 34.537144, 46.744335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397800, 34.323662, 46.802631>,  <39.552601, 33.967857, 46.899792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397800, 34.323662, 46.802631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272538, 0.362005, 0.891446,
		0.880881, 0.278793, -0.382523,
		-0.387004, 0.889509, -0.242901,
		39.281700, 34.590515, 46.729759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968227, 34.484959, 47.261353>,  <39.552601, 33.967857, 46.899792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968227, 34.484959, 47.261353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629150, 34.687416, 47.197803>,  <39.425705, 34.808891, 47.159672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629150, 34.687416, 47.197803>,  <39.968227, 34.484959, 47.261353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629150, 34.687416, 47.197803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064816, 0.396063, 0.915933,
		0.526515, 0.766131, -0.368545,
		-0.847691, 0.506140, -0.158876,
		39.374844, 34.839256, 47.150143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097477, 35.197182, 47.515751>,  <39.968227, 34.484959, 47.261353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097477, 35.197182, 47.515751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699638, 35.236385, 47.502029>,  <39.460938, 35.259907, 47.493797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699638, 35.236385, 47.502029>,  <40.097477, 35.197182, 47.515751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699638, 35.236385, 47.502029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009500, 0.414858, 0.909837,
		0.103409, 0.904592, -0.413546,
		-0.994594, 0.098014, -0.034306,
		39.401260, 35.265789, 47.491737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983795, 35.851456, 47.715500>,  <40.097477, 35.197182, 47.515751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983795, 35.851456, 47.715500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629948, 35.670372, 47.760216>,  <39.417637, 35.561722, 47.787045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629948, 35.670372, 47.760216>,  <39.983795, 35.851456, 47.715500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629948, 35.670372, 47.760216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126132, 0.463105, 0.877282,
		-0.448928, 0.761962, -0.466774,
		-0.884621, -0.452712, 0.111793,
		39.364563, 35.534557, 47.793755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540558, 36.389122, 47.886627>,  <39.983795, 35.851456, 47.715500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540558, 36.389122, 47.886627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453495, 36.026611, 48.031563>,  <39.401257, 35.809105, 48.118526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453495, 36.026611, 48.031563>,  <39.540558, 36.389122, 47.886627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453495, 36.026611, 48.031563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064994, 0.356961, 0.931855,
		-0.973859, 0.226374, -0.018792,
		-0.217656, -0.906274, 0.362343,
		39.388199, 35.754730, 48.140266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983299, 37.062527, 48.113186>,  <39.540558, 36.389122, 47.886627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983299, 37.062527, 48.113186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160671, 37.415951, 48.052933>,  <40.267094, 37.628006, 48.016781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160671, 37.415951, 48.052933>,  <39.983299, 37.062527, 48.113186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160671, 37.415951, 48.052933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372886, 0.029033, -0.927423,
		-0.815060, 0.467418, 0.342341,
		0.443434, 0.883559, -0.150630,
		40.293701, 37.681019, 48.007744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461140, 37.633327, 47.791412>,  <39.983299, 37.062527, 48.113186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461140, 37.633327, 47.791412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807781, 37.808159, 47.695114>,  <40.015766, 37.913055, 47.637337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807781, 37.808159, 47.695114>,  <39.461140, 37.633327, 47.791412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807781, 37.808159, 47.695114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323422, 0.124600, -0.938015,
		-0.379986, 0.890753, 0.249339,
		0.866607, 0.437075, -0.240743,
		40.067764, 37.939281, 47.622890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247231, 38.176529, 47.234123>,  <39.461140, 37.633327, 47.791412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247231, 38.176529, 47.234123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634476, 38.081783, 47.201504>,  <39.866825, 38.024937, 47.181931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634476, 38.081783, 47.201504>,  <39.247231, 38.176529, 47.234123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634476, 38.081783, 47.201504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120018, -0.152824, -0.980939,
		0.219884, 0.959449, -0.176379,
		0.968115, -0.236862, -0.081547,
		39.924911, 38.010723, 47.177040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447388, 38.610672, 46.612011>,  <39.247231, 38.176529, 47.234123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447388, 38.610672, 46.612011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737534, 38.339462, 46.659565>,  <39.911621, 38.176739, 46.688099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737534, 38.339462, 46.659565>,  <39.447388, 38.610672, 46.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737534, 38.339462, 46.659565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048019, -0.122446, -0.991313,
		0.686689, 0.724771, -0.056260,
		0.725363, -0.678022, 0.118885,
		39.955143, 38.136055, 46.695232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083836, 38.801346, 46.142017>,  <39.447388, 38.610672, 46.612011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083836, 38.801346, 46.142017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092255, 38.406998, 46.208500>,  <40.097305, 38.170391, 46.248390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092255, 38.406998, 46.208500>,  <40.083836, 38.801346, 46.142017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092255, 38.406998, 46.208500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160121, -0.160776, -0.973916,
		0.986873, 0.047116, 0.154474,
		0.021052, -0.985866, 0.166210,
		40.098572, 38.111237, 46.258362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553303, 38.625950, 45.698650>,  <40.083836, 38.801346, 46.142017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553303, 38.625950, 45.698650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349426, 38.287395, 45.760406>,  <40.227100, 38.084263, 45.797462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349426, 38.287395, 45.760406>,  <40.553303, 38.625950, 45.698650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349426, 38.287395, 45.760406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070960, -0.137487, -0.987959,
		0.857425, -0.514511, 0.010017,
		-0.509693, -0.846390, 0.154395,
		40.196518, 38.033478, 45.806725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762753, 38.162868, 45.116295>,  <40.553303, 38.625950, 45.698650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762753, 38.162868, 45.116295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448940, 37.960808, 45.260143>,  <40.260651, 37.839573, 45.346451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448940, 37.960808, 45.260143>,  <40.762753, 38.162868, 45.116295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448940, 37.960808, 45.260143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260729, -0.257465, -0.930447,
		0.562607, -0.823732, 0.070283,
		-0.784534, -0.505151, 0.359622,
		40.213581, 37.809261, 45.368031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790905, 37.407368, 44.832714>,  <40.762753, 38.162868, 45.116295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790905, 37.407368, 44.832714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413166, 37.491119, 44.934196>,  <40.186523, 37.541370, 44.995087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413166, 37.491119, 44.934196>,  <40.790905, 37.407368, 44.832714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413166, 37.491119, 44.934196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318574, -0.389972, -0.863963,
		-0.081960, -0.896706, 0.434972,
		-0.944348, 0.209381, 0.253706,
		40.129860, 37.553932, 45.010307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523617, 36.849724, 44.654903>,  <40.790905, 37.407368, 44.832714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523617, 36.849724, 44.654903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218487, 37.107185, 44.679615>,  <40.035408, 37.261662, 44.694443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218487, 37.107185, 44.679615>,  <40.523617, 36.849724, 44.654903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218487, 37.107185, 44.679615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375278, -0.362894, -0.852921,
		-0.526564, -0.673811, 0.518371,
		-0.762822, 0.643651, 0.061779,
		39.989639, 37.300282, 44.698147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821022, 36.502922, 44.478455>,  <40.523617, 36.849724, 44.654903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821022, 36.502922, 44.478455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718777, 36.882710, 44.405594>,  <39.657429, 37.110580, 44.361877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718777, 36.882710, 44.405594>,  <39.821022, 36.502922, 44.478455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718777, 36.882710, 44.405594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363593, -0.268986, -0.891878,
		-0.895803, -0.161747, 0.413975,
		-0.255612, 0.949465, -0.182148,
		39.642094, 37.167549, 44.350948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148998, 36.488831, 44.174641>,  <39.821022, 36.502922, 44.478455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148998, 36.488831, 44.174641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300995, 36.844944, 44.074245>,  <39.392193, 37.058613, 44.014008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300995, 36.844944, 44.074245>,  <39.148998, 36.488831, 44.174641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300995, 36.844944, 44.074245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313613, -0.131268, -0.940434,
		-0.870203, 0.436069, 0.229326,
		0.379990, 0.890288, -0.250987,
		39.414993, 37.112030, 43.998951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698170, 36.803436, 43.721981>,  <39.148998, 36.488831, 44.174641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698170, 36.803436, 43.721981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041332, 36.994152, 43.645382>,  <39.247231, 37.108582, 43.599422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041332, 36.994152, 43.645382>,  <38.698170, 36.803436, 43.721981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041332, 36.994152, 43.645382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172028, -0.084654, -0.981448,
		-0.484155, 0.874932, 0.009396,
		0.857904, 0.476790, -0.191498,
		39.298702, 37.137188, 43.587933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570972, 37.354488, 43.169540>,  <38.698170, 36.803436, 43.721981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570972, 37.354488, 43.169540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969986, 37.326595, 43.166210>,  <39.209393, 37.309860, 43.164211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969986, 37.326595, 43.166210>,  <38.570972, 37.354488, 43.169540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969986, 37.326595, 43.166210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002208, 0.087375, -0.996173,
		0.070191, 0.993732, 0.087006,
		0.997531, -0.069731, -0.008327,
		39.269245, 37.305676, 43.163712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764511, 37.940750, 42.749424>,  <38.570972, 37.354488, 43.169540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764511, 37.940750, 42.749424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055439, 37.666958, 42.729462>,  <39.229996, 37.502682, 42.717484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055439, 37.666958, 42.729462>,  <38.764511, 37.940750, 42.749424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055439, 37.666958, 42.729462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054695, 0.014670, -0.998395,
		0.684115, 0.728883, -0.026768,
		0.727320, -0.684482, -0.049902,
		39.273636, 37.461613, 42.714493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075455, 38.197666, 42.270153>,  <38.764511, 37.940750, 42.749424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075455, 38.197666, 42.270153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223083, 37.826591, 42.292725>,  <39.311661, 37.603947, 42.306267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223083, 37.826591, 42.292725>,  <39.075455, 38.197666, 42.270153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223083, 37.826591, 42.292725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096921, -0.021963, -0.995050,
		0.924333, 0.372714, 0.081806,
		0.369072, -0.927687, 0.056425,
		39.333805, 37.548286, 42.309650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683796, 38.175957, 41.898579>,  <39.075455, 38.197666, 42.270153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683796, 38.175957, 41.898579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544334, 37.801086, 41.893906>,  <39.460659, 37.576164, 41.891102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544334, 37.801086, 41.893906>,  <39.683796, 38.175957, 41.898579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544334, 37.801086, 41.893906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186895, -0.057299, -0.980708,
		0.918430, -0.344108, 0.195132,
		-0.348650, -0.937180, -0.011687,
		39.439739, 37.519932, 41.890400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172470, 37.707779, 41.600937>,  <39.683796, 38.175957, 41.898579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172470, 37.707779, 41.600937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840664, 37.484406, 41.598118>,  <39.641579, 37.350380, 41.596428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840664, 37.484406, 41.598118>,  <40.172470, 37.707779, 41.600937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840664, 37.484406, 41.598118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197819, -0.282002, -0.938799,
		0.522268, -0.780146, 0.344395,
		-0.829520, -0.558433, -0.007047,
		39.591808, 37.316875, 41.596004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321491, 37.160683, 41.098782>,  <40.172470, 37.707779, 41.600937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321491, 37.160683, 41.098782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928291, 37.097698, 41.136574>,  <39.692371, 37.059910, 41.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928291, 37.097698, 41.136574>,  <40.321491, 37.160683, 41.098782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928291, 37.097698, 41.136574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036958, -0.334365, -0.941719,
		0.179874, -0.929197, 0.322860,
		-0.982995, -0.157458, 0.094485,
		39.633392, 37.050461, 41.164921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131111, 36.486217, 40.844860>,  <40.321491, 37.160683, 41.098782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131111, 36.486217, 40.844860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782944, 36.680569, 40.813122>,  <39.574043, 36.797180, 40.794079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782944, 36.680569, 40.813122>,  <40.131111, 36.486217, 40.844860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782944, 36.680569, 40.813122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083149, -0.303940, -0.949056,
		-0.485246, -0.819475, 0.304954,
		-0.870415, 0.485882, -0.079348,
		39.521820, 36.826332, 40.789318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719967, 36.074165, 40.425095>,  <40.131111, 36.486217, 40.844860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719967, 36.074165, 40.425095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503464, 36.410069, 40.407883>,  <39.373562, 36.611610, 40.397556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503464, 36.410069, 40.407883>,  <39.719967, 36.074165, 40.425095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503464, 36.410069, 40.407883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072314, -0.097474, -0.992607,
		-0.837740, -0.534146, 0.113484,
		-0.541260, 0.839754, -0.043032,
		39.341087, 36.661995, 40.394974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216049, 35.873249, 40.010250>,  <39.719967, 36.074165, 40.425095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216049, 35.873249, 40.010250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267948, 36.269852, 40.006714>,  <39.299088, 36.507812, 40.004593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267948, 36.269852, 40.006714>,  <39.216049, 35.873249, 40.010250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267948, 36.269852, 40.006714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154648, 0.011423, -0.987903,
		-0.979413, 0.129543, 0.154817,
		0.129744, 0.991508, -0.008845,
		39.306870, 36.567303, 40.004059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647175, 36.078064, 39.570076>,  <39.216049, 35.873249, 40.010250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647175, 36.078064, 39.570076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881474, 36.402184, 39.577110>,  <39.022053, 36.596657, 39.581333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881474, 36.402184, 39.577110>,  <38.647175, 36.078064, 39.570076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881474, 36.402184, 39.577110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224292, 0.182913, -0.957202,
		-0.778841, 0.556734, 0.288885,
		0.585748, 0.810302, 0.017589,
		39.057198, 36.645275, 39.582386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206478, 36.708557, 39.268097>,  <38.647175, 36.078064, 39.570076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206478, 36.708557, 39.268097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599159, 36.780636, 39.243473>,  <38.834766, 36.823883, 39.228699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599159, 36.780636, 39.243473>,  <38.206478, 36.708557, 39.268097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599159, 36.780636, 39.243473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043664, -0.101667, -0.993860,
		-0.185348, 0.978363, -0.091938,
		0.981702, 0.180195, -0.061563,
		38.893669, 36.834694, 39.225002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270168, 37.287125, 38.656528>,  <38.206478, 36.708557, 39.268097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270168, 37.287125, 38.656528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620541, 37.104469, 38.718781>,  <38.830765, 36.994877, 38.756130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620541, 37.104469, 38.718781>,  <38.270168, 37.287125, 38.656528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620541, 37.104469, 38.718781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224566, 0.100431, -0.969270,
		0.426978, 0.883964, 0.190517,
		0.875934, -0.456641, 0.155626,
		38.883320, 36.967476, 38.765469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692017, 37.642860, 38.398476>,  <38.270168, 37.287125, 38.656528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692017, 37.642860, 38.398476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940575, 37.329494, 38.394066>,  <39.089710, 37.141476, 38.391422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940575, 37.329494, 38.394066>,  <38.692017, 37.642860, 38.398476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940575, 37.329494, 38.394066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380374, 0.313944, -0.869916,
		0.684968, 0.536371, 0.493076,
		0.621396, -0.783419, -0.011020,
		39.126995, 37.094467, 38.390759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367195, 37.901115, 38.386600>,  <38.692017, 37.642860, 38.398476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367195, 37.901115, 38.386600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421909, 37.525890, 38.259274>,  <39.454739, 37.300755, 38.182877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421909, 37.525890, 38.259274>,  <39.367195, 37.901115, 38.386600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421909, 37.525890, 38.259274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389782, 0.346386, -0.853280,
		0.910691, -0.007356, 0.413022,
		0.136789, -0.938063, -0.318318,
		39.462944, 37.244473, 38.163776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071941, 37.820877, 38.085880>,  <39.367195, 37.901115, 38.386600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071941, 37.820877, 38.085880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851608, 37.528534, 37.924667>,  <39.719410, 37.353127, 37.827938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851608, 37.528534, 37.924667>,  <40.071941, 37.820877, 38.085880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851608, 37.528534, 37.924667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359577, 0.227972, -0.904839,
		0.753188, -0.643333, 0.137226,
		-0.550829, -0.730857, -0.403033,
		39.686359, 37.309277, 37.803757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523815, 37.554333, 37.646873>,  <40.071941, 37.820877, 38.085880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523815, 37.554333, 37.646873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175468, 37.405670, 37.518215>,  <39.966461, 37.316475, 37.441021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175468, 37.405670, 37.518215>,  <40.523815, 37.554333, 37.646873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175468, 37.405670, 37.518215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323480, 0.059320, -0.944374,
		0.370060, -0.926475, 0.068562,
		-0.870871, -0.371654, -0.321648,
		39.914207, 37.294174, 37.421722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654415, 37.074860, 37.149704>,  <40.523815, 37.554333, 37.646873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654415, 37.074860, 37.149704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269146, 37.167133, 37.094448>,  <40.037983, 37.222500, 37.061295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269146, 37.167133, 37.094448>,  <40.654415, 37.074860, 37.149704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269146, 37.167133, 37.094448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187485, 0.207937, -0.960006,
		-0.192739, -0.950550, -0.243530,
		-0.963172, 0.230689, -0.138136,
		39.980194, 37.236340, 37.053009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442566, 36.650593, 36.553368>,  <40.654415, 37.074860, 37.149704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442566, 36.650593, 36.553368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195534, 36.963364, 36.587280>,  <40.047314, 37.151028, 36.607628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195534, 36.963364, 36.587280>,  <40.442566, 36.650593, 36.553368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195534, 36.963364, 36.587280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155109, 0.226768, -0.961518,
		-0.771063, -0.580662, -0.261331,
		-0.617579, 0.781926, 0.084786,
		40.010262, 37.197941, 36.612717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991226, 36.648201, 35.837540>,  <40.442566, 36.650593, 36.553368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991226, 36.648201, 35.837540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013771, 37.017052, 35.990643>,  <40.027298, 37.238361, 36.082504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013771, 37.017052, 35.990643>,  <39.991226, 36.648201, 35.837540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013771, 37.017052, 35.990643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295351, 0.350807, -0.888652,
		-0.953725, 0.163130, -0.252581,
		0.056358, 0.922130, 0.382754,
		40.030678, 37.293690, 36.105469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889061, 37.065884, 35.303379>,  <39.991226, 36.648201, 35.837540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889061, 37.065884, 35.303379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998829, 37.366680, 35.543110>,  <40.064690, 37.547157, 35.686951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998829, 37.366680, 35.543110>,  <39.889061, 37.065884, 35.303379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998829, 37.366680, 35.543110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369908, 0.492749, -0.787634,
		-0.887617, 0.437836, -0.142951,
		0.274415, 0.751996, 0.599331,
		40.081154, 37.592278, 35.722908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648052, 37.605392, 34.962498>,  <39.889061, 37.065884, 35.303379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648052, 37.605392, 34.962498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927589, 37.760487, 35.202927>,  <40.095310, 37.853542, 35.347183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927589, 37.760487, 35.202927>,  <39.648052, 37.605392, 34.962498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927589, 37.760487, 35.202927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497873, 0.339662, -0.797967,
		-0.513562, 0.856907, 0.044326,
		0.698840, 0.387737, 0.601068,
		40.137241, 37.876808, 35.383247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784679, 38.236717, 34.669724>,  <39.648052, 37.605392, 34.962498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784679, 38.236717, 34.669724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096874, 38.162163, 34.908421>,  <40.284191, 38.117428, 35.051640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096874, 38.162163, 34.908421>,  <39.784679, 38.236717, 34.669724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096874, 38.162163, 34.908421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622058, 0.326756, -0.711530,
		-0.062368, 0.926547, 0.370973,
		0.780483, -0.186390, 0.596745,
		40.331020, 38.106247, 35.087444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172020, 38.920151, 34.887691>,  <39.784679, 38.236717, 34.669724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172020, 38.920151, 34.887691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417709, 38.604733, 34.875557>,  <40.565125, 38.415482, 34.868279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417709, 38.604733, 34.875557>,  <40.172020, 38.920151, 34.887691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417709, 38.604733, 34.875557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562127, 0.464187, -0.684502,
		0.553845, 0.403385, 0.728380,
		0.614222, -0.788550, -0.030334,
		40.601974, 38.368168, 34.866455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795864, 39.221561, 34.744270>,  <40.172020, 38.920151, 34.887691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795864, 39.221561, 34.744270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912357, 38.845409, 34.673996>,  <40.982254, 38.619717, 34.631832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912357, 38.845409, 34.673996>,  <40.795864, 39.221561, 34.744270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912357, 38.845409, 34.673996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635002, 0.327382, -0.699710,
		0.715510, 0.092219, 0.692489,
		0.291235, -0.940381, -0.175686,
		40.999729, 38.563293, 34.621288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527714, 39.158756, 34.912151>,  <40.795864, 39.221561, 34.744270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527714, 39.158756, 34.912151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469601, 38.857536, 34.655464>,  <41.434731, 38.676804, 34.501450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469601, 38.857536, 34.655464>,  <41.527714, 39.158756, 34.912151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469601, 38.857536, 34.655464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745104, 0.343445, -0.571722,
		0.650932, -0.561212, 0.511203,
		-0.145287, -0.753051, -0.641720,
		41.426014, 38.631622, 34.462948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075325, 39.098518, 34.642090>,  <41.527714, 39.158756, 34.912151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075325, 39.098518, 34.642090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870686, 38.870098, 34.385288>,  <41.747902, 38.733047, 34.231209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870686, 38.870098, 34.385288>,  <42.075325, 39.098518, 34.642090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870686, 38.870098, 34.385288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621508, 0.269986, -0.735415,
		0.593291, -0.775248, 0.216788,
		-0.511599, -0.571050, -0.642003,
		41.717205, 38.698784, 34.192688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553329, 38.669361, 34.322521>,  <42.075325, 39.098518, 34.642090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553329, 38.669361, 34.322521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244972, 38.675766, 34.067818>,  <42.059956, 38.679611, 33.914997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244972, 38.675766, 34.067818>,  <42.553329, 38.669361, 34.322521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244972, 38.675766, 34.067818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622842, 0.228273, -0.748305,
		0.133371, -0.973466, -0.185950,
		-0.770896, 0.016015, -0.636760,
		42.013702, 38.680573, 33.876789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702274, 38.237446, 33.604713>,  <42.553329, 38.669361, 34.322521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702274, 38.237446, 33.604713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435841, 38.535782, 33.601868>,  <42.275982, 38.714783, 33.600159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435841, 38.535782, 33.601868>,  <42.702274, 38.237446, 33.604713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435841, 38.535782, 33.601868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367206, 0.319606, -0.873505,
		-0.649223, -0.584441, -0.486763,
		-0.666085, 0.745842, -0.007115,
		42.236015, 38.759533, 33.599731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993183, 37.641151, 33.821091>,  <42.702274, 38.237446, 33.604713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993183, 37.641151, 33.821091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214127, 37.957592, 33.926212>,  <43.346691, 38.147457, 33.989285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214127, 37.957592, 33.926212>,  <42.993183, 37.641151, 33.821091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214127, 37.957592, 33.926212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110555, -0.242953, 0.963718,
		0.826243, -0.561371, -0.046737,
		0.552358, 0.791098, 0.262801,
		43.379833, 38.194920, 34.005051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424923, 37.369793, 34.318424>,  <42.993183, 37.641151, 33.821091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424923, 37.369793, 34.318424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352318, 37.762299, 34.344276>,  <43.308754, 37.997803, 34.359787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352318, 37.762299, 34.344276>,  <43.424923, 37.369793, 34.318424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352318, 37.762299, 34.344276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412179, -0.135586, 0.900958,
		0.892838, 0.136901, 0.429067,
		-0.181517, 0.981262, 0.064629,
		43.297863, 38.056679, 34.363667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537846, 37.636791, 34.954029>,  <43.424923, 37.369793, 34.318424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537846, 37.636791, 34.954029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283638, 37.920345, 34.831654>,  <43.131115, 38.090477, 34.758228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283638, 37.920345, 34.831654>,  <43.537846, 37.636791, 34.954029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283638, 37.920345, 34.831654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462259, -0.031966, 0.886169,
		0.618410, 0.704601, 0.348003,
		-0.635520, 0.708883, -0.305940,
		43.092983, 38.133011, 34.739872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853600, 37.331238, 35.712231>,  <43.537846, 37.636791, 34.954029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853600, 37.331238, 35.712231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972942, 36.973736, 35.846207>,  <44.044548, 36.759235, 35.926590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972942, 36.973736, 35.846207>,  <43.853600, 37.331238, 35.712231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972942, 36.973736, 35.846207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392608, -0.434779, -0.810448,
		0.869966, 0.110306, -0.480615,
		0.298359, -0.893756, 0.334936,
		44.062450, 36.705608, 35.946686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342941, 37.111595, 35.287552>,  <43.853600, 37.331238, 35.712231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342941, 37.111595, 35.287552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099758, 36.849785, 35.467323>,  <43.953850, 36.692699, 35.575188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.099758, 36.849785, 35.467323>,  <44.342941, 37.111595, 35.287552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.099758, 36.849785, 35.467323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417062, -0.218409, -0.882245,
		0.675612, -0.723806, -0.140195,
		-0.607954, -0.654525, 0.449432,
		43.917374, 36.653427, 35.602154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.995731, 36.571087, 34.884102>,  <44.342941, 37.111595, 35.287552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.995731, 36.571087, 34.884102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730721, 36.517185, 35.178829>,  <43.571716, 36.484844, 35.355667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730721, 36.517185, 35.178829>,  <43.995731, 36.571087, 34.884102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730721, 36.517185, 35.178829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521382, -0.623300, -0.582802,
		0.537794, -0.770285, 0.342694,
		-0.662525, -0.134753, 0.736819,
		43.531963, 36.476761, 35.399876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501827, 36.041878, 35.167427>,  <43.995731, 36.571087, 34.884102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501827, 36.041878, 35.167427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746487, 35.753716, 35.036644>,  <44.893280, 35.580818, 34.958176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746487, 35.753716, 35.036644>,  <44.501827, 36.041878, 35.167427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746487, 35.753716, 35.036644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766735, -0.641634, -0.020591,
		-0.194950, 0.263280, -0.944816,
		0.611647, -0.720409, -0.326953,
		44.929981, 35.537594, 34.938557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224072, 35.811092, 34.517544>,  <44.501827, 36.041878, 35.167427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224072, 35.811092, 34.517544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437916, 35.515911, 34.682285>,  <44.566223, 35.338802, 34.781128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437916, 35.515911, 34.682285>,  <44.224072, 35.811092, 34.517544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437916, 35.515911, 34.682285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789108, -0.610336, -0.069280,
		0.302492, -0.287957, -0.908614,
		0.534610, -0.737951, 0.411851,
		44.598297, 35.294525, 34.805840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928261, 35.265442, 34.277828>,  <44.224072, 35.811092, 34.517544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928261, 35.265442, 34.277828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137630, 35.104088, 34.578045>,  <44.263252, 35.007275, 34.758175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137630, 35.104088, 34.578045>,  <43.928261, 35.265442, 34.277828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137630, 35.104088, 34.578045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730219, -0.666284, 0.151150,
		0.439101, -0.627173, -0.643307,
		0.523422, -0.403385, 0.750540,
		44.294659, 34.983074, 34.803207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077808, 34.596199, 34.047253>,  <43.928261, 35.265442, 34.277828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077808, 34.596199, 34.047253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098759, 34.574306, 34.446102>,  <44.111328, 34.561172, 34.685413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098759, 34.574306, 34.446102>,  <44.077808, 34.596199, 34.047253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098759, 34.574306, 34.446102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553280, -0.832829, -0.016652,
		0.831347, -0.550818, -0.073902,
		0.052375, -0.054732, 0.997127,
		44.114471, 34.557888, 34.745239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325912, 33.949562, 34.116993>,  <44.077808, 34.596199, 34.047253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325912, 33.949562, 34.116993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134163, 34.062363, 34.449421>,  <44.019115, 34.130043, 34.648876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.134163, 34.062363, 34.449421>,  <44.325912, 33.949562, 34.116993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134163, 34.062363, 34.449421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493488, -0.869690, 0.010460,
		0.725724, -0.405109, 0.556068,
		-0.479370, 0.282004, 0.831071,
		43.990353, 34.146965, 34.698742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265636, 33.337791, 34.520592>,  <44.325912, 33.949562, 34.116993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265636, 33.337791, 34.520592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985798, 33.603760, 34.625237>,  <43.817894, 33.763340, 34.688023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985798, 33.603760, 34.625237>,  <44.265636, 33.337791, 34.520592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985798, 33.603760, 34.625237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686813, -0.726759, 0.010484,
		0.197099, -0.172342, 0.965117,
		-0.699600, 0.664921, 0.261610,
		43.775917, 33.803234, 34.703720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772083, 32.927345, 34.781181>,  <44.265636, 33.337791, 34.520592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772083, 32.927345, 34.781181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588688, 33.281403, 34.749409>,  <43.478653, 33.493835, 34.730343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588688, 33.281403, 34.749409>,  <43.772083, 32.927345, 34.781181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588688, 33.281403, 34.749409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888427, -0.458732, 0.016198,
		-0.022102, 0.077999, 0.996708,
		-0.458486, 0.885144, -0.079435,
		43.451141, 33.546947, 34.725578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183430, 32.991650, 35.350029>,  <43.772083, 32.927345, 34.781181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183430, 32.991650, 35.350029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084187, 33.246857, 35.058445>,  <43.024643, 33.399982, 34.883495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084187, 33.246857, 35.058445>,  <43.183430, 32.991650, 35.350029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084187, 33.246857, 35.058445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940016, -0.340422, 0.021987,
		-0.234124, 0.690685, 0.684207,
		-0.248105, 0.638018, -0.728956,
		43.009754, 33.438263, 34.839760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465137, 33.289394, 35.564026>,  <43.183430, 32.991650, 35.350029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465137, 33.289394, 35.564026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484024, 33.355350, 35.169952>,  <42.495358, 33.394924, 34.933510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484024, 33.355350, 35.169952>,  <42.465137, 33.289394, 35.564026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484024, 33.355350, 35.169952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975841, -0.203014, -0.080750,
		-0.213320, 0.965192, 0.151323,
		0.047218, 0.164893, -0.985181,
		42.498188, 33.404819, 34.874397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895576, 33.572460, 35.456860>,  <42.465137, 33.289394, 35.564026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895576, 33.572460, 35.456860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993660, 33.481747, 35.079830>,  <42.052509, 33.427319, 34.853611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993660, 33.481747, 35.079830>,  <41.895576, 33.572460, 35.456860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993660, 33.481747, 35.079830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969375, -0.070945, -0.235114,
		-0.013552, 0.971359, -0.237231,
		0.245210, -0.226780, -0.942572,
		42.067223, 33.413712, 34.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596310, 34.051926, 35.119041>,  <41.895576, 33.572460, 35.456860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596310, 34.051926, 35.119041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657410, 33.729656, 34.890114>,  <41.694069, 33.536293, 34.752758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657410, 33.729656, 34.890114>,  <41.596310, 34.051926, 35.119041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657410, 33.729656, 34.890114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988240, -0.120429, -0.094229,
		0.006994, 0.579983, -0.814599,
		0.152752, -0.805678, -0.572320,
		41.703236, 33.487953, 34.718418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123837, 34.084522, 34.665390>,  <41.596310, 34.051926, 35.119041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123837, 34.084522, 34.665390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222931, 33.702915, 34.597889>,  <41.282387, 33.473949, 34.557388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222931, 33.702915, 34.597889>,  <41.123837, 34.084522, 34.665390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222931, 33.702915, 34.597889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958824, -0.216460, -0.183851,
		0.138870, 0.207349, -0.968360,
		0.247732, -0.954019, -0.168751,
		41.297249, 33.416710, 34.547264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738251, 33.806458, 34.040516>,  <41.123837, 34.084522, 34.665390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738251, 33.806458, 34.040516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838177, 33.498558, 34.275490>,  <40.898132, 33.313820, 34.416473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838177, 33.498558, 34.275490>,  <40.738251, 33.806458, 34.040516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838177, 33.498558, 34.275490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900506, -0.407688, -0.151262,
		0.355924, -0.491201, -0.795009,
		0.249815, -0.769748, 0.587435,
		40.913120, 33.267635, 34.451721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419899, 33.334198, 33.690853>,  <40.738251, 33.806458, 34.040516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419899, 33.334198, 33.690853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502476, 33.163895, 34.043240>,  <40.552021, 33.061710, 34.254673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502476, 33.163895, 34.043240>,  <40.419899, 33.334198, 33.690853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502476, 33.163895, 34.043240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843405, -0.533876, -0.060371,
		0.496032, -0.730551, -0.469305,
		0.206446, -0.425760, 0.880970,
		40.564411, 33.036167, 34.307529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368931, 32.625835, 33.574699>,  <40.419899, 33.334198, 33.690853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368931, 32.625835, 33.574699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303009, 32.712517, 33.959591>,  <40.263454, 32.764526, 34.190525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303009, 32.712517, 33.959591>,  <40.368931, 32.625835, 33.574699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303009, 32.712517, 33.959591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876810, -0.478973, -0.042305,
		0.451713, -0.850661, 0.268945,
		-0.164805, 0.216704, 0.962226,
		40.253567, 32.777527, 34.248260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196827, 31.990971, 33.904778>,  <40.368931, 32.625835, 33.574699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196827, 31.990971, 33.904778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039440, 32.294289, 34.112690>,  <39.945007, 32.476280, 34.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039440, 32.294289, 34.112690>,  <40.196827, 31.990971, 33.904778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039440, 32.294289, 34.112690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878303, -0.477088, 0.031146,
		0.271600, -0.444272, 0.853731,
		-0.393467, 0.758294, 0.519783,
		39.921398, 32.521778, 34.268623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923599, 31.665203, 34.383526>,  <40.196827, 31.990971, 33.904778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923599, 31.665203, 34.383526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739914, 32.016422, 34.437428>,  <39.629704, 32.227154, 34.469769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739914, 32.016422, 34.437428>,  <39.923599, 31.665203, 34.383526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739914, 32.016422, 34.437428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824010, -0.477704, 0.304641,
		0.331860, 0.028859, 0.942887,
		-0.459213, 0.878047, 0.134750,
		39.602150, 32.279835, 34.477852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576046, 31.661226, 34.965828>,  <39.923599, 31.665203, 34.383526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576046, 31.661226, 34.965828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385529, 31.959536, 34.779510>,  <39.271217, 32.138523, 34.667721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385529, 31.959536, 34.779510>,  <39.576046, 31.661226, 34.965828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385529, 31.959536, 34.779510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837679, -0.545884, -0.017450,
		-0.267285, 0.381878, 0.884719,
		-0.476290, 0.745775, -0.465798,
		39.242641, 32.183270, 34.639771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993481, 31.719473, 35.319363>,  <39.576046, 31.661226, 34.965828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993481, 31.719473, 35.319363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892990, 31.913317, 34.984211>,  <38.832695, 32.029621, 34.783119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892990, 31.913317, 34.984211>,  <38.993481, 31.719473, 35.319363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892990, 31.913317, 34.984211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914438, -0.402610, 0.041321,
		-0.317313, 0.776569, 0.544291,
		-0.251226, 0.484609, -0.837878,
		38.817623, 32.058701, 34.732849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304649, 32.083740, 35.427933>,  <38.993481, 31.719473, 35.319363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304649, 32.083740, 35.427933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348812, 32.053818, 35.031506>,  <38.375309, 32.035862, 34.793648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348812, 32.053818, 35.031506>,  <38.304649, 32.083740, 35.427933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348812, 32.053818, 35.031506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936861, -0.340745, -0.078645,
		-0.331818, 0.937175, -0.107707,
		0.110405, -0.074810, -0.991067,
		38.381935, 32.031376, 34.734184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760551, 32.491272, 35.151756>,  <38.304649, 32.083740, 35.427933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760551, 32.491272, 35.151756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862900, 32.228779, 34.867817>,  <37.924309, 32.071281, 34.697453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862900, 32.228779, 34.867817>,  <37.760551, 32.491272, 35.151756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862900, 32.228779, 34.867817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962900, -0.238143, -0.126931,
		-0.085748, 0.715989, -0.692825,
		0.255873, -0.656237, -0.709846,
		37.939663, 32.031906, 34.654861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575771, 32.813595, 34.507526>,  <37.760551, 32.491272, 35.151756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575771, 32.813595, 34.507526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871620, 32.811726, 34.776726>,  <38.049129, 32.810604, 34.938248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871620, 32.811726, 34.776726>,  <37.575771, 32.813595, 34.507526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871620, 32.811726, 34.776726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651181, 0.257636, -0.713853,
		-0.170052, 0.966231, 0.193599,
		0.739625, -0.004676, 0.673003,
		38.093506, 32.810322, 34.978626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044987, 33.300972, 34.459015>,  <37.575771, 32.813595, 34.507526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044987, 33.300972, 34.459015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283627, 33.042526, 34.649426>,  <38.426811, 32.887459, 34.763672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283627, 33.042526, 34.649426>,  <38.044987, 33.300972, 34.459015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283627, 33.042526, 34.649426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730376, 0.191312, -0.655707,
		0.332596, 0.738871, 0.586046,
		0.596600, -0.646119, 0.476024,
		38.462608, 32.848690, 34.792233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562939, 33.918930, 34.224907>,  <38.044987, 33.300972, 34.459015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562939, 33.918930, 34.224907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751499, 33.606541, 34.061028>,  <37.864635, 33.419106, 33.962700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751499, 33.606541, 34.061028>,  <37.562939, 33.918930, 34.224907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751499, 33.606541, 34.061028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499937, 0.146065, -0.853656,
		0.726527, 0.607241, -0.321584,
		0.471403, -0.780976, -0.409703,
		37.892921, 33.372250, 33.938118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901043, 34.159916, 33.639874>,  <37.562939, 33.918930, 34.224907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901043, 34.159916, 33.639874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835968, 33.767879, 33.594334>,  <37.796925, 33.532658, 33.567009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835968, 33.767879, 33.594334>,  <37.901043, 34.159916, 33.639874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835968, 33.767879, 33.594334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503273, 0.181677, -0.844814,
		0.848675, -0.080143, -0.522808,
		-0.162688, -0.980087, -0.113851,
		37.787163, 33.473854, 33.560177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208458, 33.863194, 33.027344>,  <37.901043, 34.159916, 33.639874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208458, 33.863194, 33.027344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866844, 33.717297, 33.175716>,  <37.661877, 33.629757, 33.264740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866844, 33.717297, 33.175716>,  <38.208458, 33.863194, 33.027344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866844, 33.717297, 33.175716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464368, 0.213106, -0.859621,
		0.234511, -0.906386, -0.351383,
		-0.854030, -0.364761, 0.370921,
		37.610634, 33.607872, 33.286995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728260, 33.887444, 32.366409>,  <38.208458, 33.863194, 33.027344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728260, 33.887444, 32.366409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594608, 34.248528, 32.257984>,  <37.514416, 34.465176, 32.192928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594608, 34.248528, 32.257984>,  <37.728260, 33.887444, 32.366409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594608, 34.248528, 32.257984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920774, 0.374060, 0.110698,
		0.201321, -0.212598, -0.956176,
		-0.334133, 0.902708, -0.271061,
		37.494370, 34.519341, 32.176666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913441, 34.101921, 31.667046>,  <37.728260, 33.887444, 32.366409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913441, 34.101921, 31.667046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875202, 34.380222, 31.951801>,  <37.852261, 34.547203, 32.122654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875202, 34.380222, 31.951801>,  <37.913441, 34.101921, 31.667046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875202, 34.380222, 31.951801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977131, 0.202051, -0.066259,
		-0.189938, 0.689277, -0.699157,
		-0.095594, 0.695753, 0.711891,
		37.846523, 34.588947, 32.165367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352814, 34.708328, 31.510849>,  <37.913441, 34.101921, 31.667046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352814, 34.708328, 31.510849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312725, 34.669334, 31.906919>,  <38.288670, 34.645939, 32.144562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312725, 34.669334, 31.906919>,  <38.352814, 34.708328, 31.510849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312725, 34.669334, 31.906919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985595, 0.126530, 0.112218,
		-0.136227, 0.987161, 0.083401,
		-0.100225, -0.097487, 0.990177,
		38.282658, 34.640087, 32.203972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767132, 34.231281, 31.373446>,  <38.352814, 34.708328, 31.510849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767132, 34.231281, 31.373446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843399, 34.532410, 31.121445>,  <38.889160, 34.713089, 30.970243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843399, 34.532410, 31.121445>,  <38.767132, 34.231281, 31.373446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843399, 34.532410, 31.121445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980639, -0.116898, 0.157102,
		0.044624, -0.647759, -0.760537,
		0.190669, 0.752823, -0.630002,
		38.900600, 34.758255, 30.932444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205894, 34.042706, 30.732466>,  <38.767132, 34.231281, 31.373446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205894, 34.042706, 30.732466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247902, 34.401958, 30.903263>,  <39.273106, 34.617512, 31.005741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247902, 34.401958, 30.903263>,  <39.205894, 34.042706, 30.732466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247902, 34.401958, 30.903263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985548, -0.151380, 0.076022,
		0.132916, 0.412837, -0.901054,
		0.105017, 0.898137, 0.426992,
		39.279408, 34.671398, 31.031361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681919, 34.384548, 30.296846>,  <39.205894, 34.042706, 30.732466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681919, 34.384548, 30.296846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661198, 34.463951, 30.688337>,  <39.648766, 34.511593, 30.923233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661198, 34.463951, 30.688337>,  <39.681919, 34.384548, 30.296846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661198, 34.463951, 30.688337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933309, -0.339072, 0.118167,
		0.355317, 0.919579, -0.167705,
		-0.051800, 0.198507, 0.978730,
		39.645657, 34.523502, 30.981956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385349, 34.550564, 30.412455>,  <39.681919, 34.384548, 30.296846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385349, 34.550564, 30.412455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217648, 34.506741, 30.772949>,  <40.117027, 34.480446, 30.989246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217648, 34.506741, 30.772949>,  <40.385349, 34.550564, 30.412455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217648, 34.506741, 30.772949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906127, -0.111961, 0.407920,
		0.056213, 0.987655, 0.146211,
		-0.419255, -0.109555, 0.901234,
		40.091869, 34.473873, 31.043320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777248, 34.982452, 30.815063>,  <40.385349, 34.550564, 30.412455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777248, 34.982452, 30.815063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601589, 34.721786, 31.062443>,  <40.496193, 34.565388, 31.210871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601589, 34.721786, 31.062443>,  <40.777248, 34.982452, 30.815063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601589, 34.721786, 31.062443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886661, -0.203391, 0.415288,
		-0.144844, 0.730726, 0.667128,
		-0.439149, -0.651669, 0.618446,
		40.469845, 34.526287, 31.247976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059113, 35.214130, 31.525391>,  <40.777248, 34.982452, 30.815063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059113, 35.214130, 31.525391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932007, 34.834969, 31.534340>,  <40.855743, 34.607471, 31.539709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932007, 34.834969, 31.534340>,  <41.059113, 35.214130, 31.525391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932007, 34.834969, 31.534340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922356, -0.303555, 0.238985,
		-0.219745, 0.096575, 0.970765,
		-0.317760, -0.947907, 0.022372,
		40.836678, 34.550598, 31.541052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319504, 34.959675, 32.176186>,  <41.059113, 35.214130, 31.525391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319504, 34.959675, 32.176186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276348, 34.638020, 31.942360>,  <41.250454, 34.445026, 31.802063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276348, 34.638020, 31.942360>,  <41.319504, 34.959675, 32.176186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276348, 34.638020, 31.942360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920535, -0.302876, 0.246740,
		-0.375465, -0.511495, 0.772916,
		-0.107891, -0.804139, -0.584569,
		41.243980, 34.396778, 31.766989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582012, 34.447918, 32.585388>,  <41.319504, 34.959675, 32.176186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582012, 34.447918, 32.585388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567501, 34.270279, 32.227291>,  <41.558796, 34.163696, 32.012432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567501, 34.270279, 32.227291>,  <41.582012, 34.447918, 32.585388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567501, 34.270279, 32.227291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763582, -0.590233, 0.261856,
		-0.644691, -0.674091, 0.360520,
		-0.036276, -0.444102, -0.895241,
		41.556618, 34.137047, 31.958719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575359, 33.787708, 32.763508>,  <41.582012, 34.447918, 32.585388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575359, 33.787708, 32.763508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715008, 33.801640, 32.388935>,  <41.798798, 33.809998, 32.164192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715008, 33.801640, 32.388935>,  <41.575359, 33.787708, 32.763508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715008, 33.801640, 32.388935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891736, -0.319430, 0.320581,
		-0.287957, -0.946970, -0.142581,
		0.349125, 0.034831, -0.936429,
		41.819744, 33.812088, 32.108006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881977, 33.192165, 32.678799>,  <41.575359, 33.787708, 32.763508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881977, 33.192165, 32.678799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028194, 33.415073, 32.380585>,  <42.115925, 33.548820, 32.201656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028194, 33.415073, 32.380585>,  <41.881977, 33.192165, 32.678799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028194, 33.415073, 32.380585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922107, -0.325984, 0.208455,
		-0.126867, -0.763663, -0.633027,
		0.365546, 0.557272, -0.745536,
		42.137859, 33.582256, 32.156925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343185, 32.800953, 32.455212>,  <41.881977, 33.192165, 32.678799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343185, 32.800953, 32.455212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453812, 33.147907, 32.289722>,  <42.520187, 33.356079, 32.190430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453812, 33.147907, 32.289722>,  <42.343185, 32.800953, 32.455212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453812, 33.147907, 32.289722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945833, -0.169507, 0.276888,
		0.170039, -0.467886, -0.867277,
		0.276561, 0.867381, -0.413719,
		42.536781, 33.408123, 32.165607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891624, 32.612164, 31.931362>,  <42.343185, 32.800953, 32.455212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891624, 32.612164, 31.931362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938267, 32.982361, 32.075512>,  <42.966251, 33.204479, 32.162003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938267, 32.982361, 32.075512>,  <42.891624, 32.612164, 31.931362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938267, 32.982361, 32.075512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954266, -0.204973, 0.217626,
		0.275278, 0.318517, -0.907066,
		0.116607, 0.925491, 0.360375,
		42.973248, 33.260010, 32.183624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549984, 32.818432, 31.631107>,  <42.891624, 32.612164, 31.931362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549984, 32.818432, 31.631107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489975, 33.064144, 31.940987>,  <43.453972, 33.211571, 32.126915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489975, 33.064144, 31.940987>,  <43.549984, 32.818432, 31.631107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489975, 33.064144, 31.940987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947038, -0.135740, 0.291023,
		0.283926, 0.777328, -0.561380,
		-0.150019, 0.614277, 0.774699,
		43.444969, 33.248428, 32.173397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198746, 32.974056, 31.849001>,  <43.549984, 32.818432, 31.631107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198746, 32.974056, 31.849001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008736, 33.161743, 32.146774>,  <43.894730, 33.274357, 32.325439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008736, 33.161743, 32.146774>,  <44.198746, 32.974056, 31.849001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008736, 33.161743, 32.146774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871423, 0.133209, 0.472099,
		0.122351, 0.872978, -0.472165,
		-0.475029, 0.469217, 0.744435,
		43.866226, 33.302509, 32.370106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.627125, 33.498322, 32.086128>,  <44.198746, 32.974056, 31.849001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.627125, 33.498322, 32.086128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385422, 33.437225, 32.398933>,  <44.240402, 33.400570, 32.586617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385422, 33.437225, 32.398933>,  <44.627125, 33.498322, 32.086128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385422, 33.437225, 32.398933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760902, 0.180631, 0.623218,
		-0.236445, 0.971619, 0.007071,
		-0.604253, -0.152737, 0.782016,
		44.204147, 33.391403, 32.633537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709160, 34.013199, 32.578266>,  <44.627125, 33.498322, 32.086128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709160, 34.013199, 32.578266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569660, 33.688557, 32.765743>,  <44.485958, 33.493771, 32.878231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569660, 33.688557, 32.765743>,  <44.709160, 34.013199, 32.578266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569660, 33.688557, 32.765743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840552, -0.049665, 0.539450,
		-0.414540, 0.582097, 0.699514,
		-0.348753, -0.811601, 0.468695,
		44.465034, 33.445076, 32.906353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753384, 34.247036, 33.263046>,  <44.709160, 34.013199, 32.578266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753384, 34.247036, 33.263046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762215, 33.850227, 33.213394>,  <44.767513, 33.612141, 33.183605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762215, 33.850227, 33.213394>,  <44.753384, 34.247036, 33.263046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762215, 33.850227, 33.213394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900987, -0.034067, 0.432506,
		-0.433283, -0.121384, 0.893046,
		0.022076, -0.992021, -0.124126,
		44.768837, 33.552620, 33.176155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114441, 34.000118, 33.883392>,  <44.753384, 34.247036, 33.263046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114441, 34.000118, 33.883392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133533, 33.674553, 33.651783>,  <45.144989, 33.479214, 33.512817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.133533, 33.674553, 33.651783>,  <45.114441, 34.000118, 33.883392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133533, 33.674553, 33.651783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843717, -0.277438, 0.459532,
		-0.534662, -0.510464, 0.673470,
		0.047729, -0.813913, -0.579023,
		45.147854, 33.430378, 33.478077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076015, 33.516029, 34.378590>,  <45.114441, 34.000118, 33.883392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076015, 33.516029, 34.378590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250404, 33.402321, 34.037037>,  <45.355038, 33.334095, 33.832104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250404, 33.402321, 34.037037>,  <45.076015, 33.516029, 34.378590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250404, 33.402321, 34.037037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819644, -0.266378, 0.507174,
		-0.371633, -0.920994, 0.116871,
		0.435973, -0.284275, -0.853882,
		45.381195, 33.317039, 33.780872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362499, 32.886864, 34.503521>,  <45.076015, 33.516029, 34.378590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362499, 32.886864, 34.503521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584324, 32.999798, 34.190407>,  <45.717419, 33.067558, 34.002541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584324, 32.999798, 34.190407>,  <45.362499, 32.886864, 34.503521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584324, 32.999798, 34.190407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830946, -0.238285, 0.502741,
		-0.044585, -0.929251, -0.366748,
		0.554563, 0.282333, -0.782782,
		45.750694, 33.084499, 33.955574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995178, 32.401855, 34.566383>,  <45.362499, 32.886864, 34.503521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995178, 32.401855, 34.566383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072269, 32.737198, 34.362415>,  <46.118523, 32.938404, 34.240036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072269, 32.737198, 34.362415>,  <45.995178, 32.401855, 34.566383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072269, 32.737198, 34.362415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847462, 0.119745, 0.517174,
		0.494636, -0.531807, -0.687399,
		0.192724, 0.838357, -0.509916,
		46.130085, 32.988705, 34.209442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.674625, 32.369156, 34.503006>,  <45.995178, 32.401855, 34.566383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.674625, 32.369156, 34.503006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571220, 32.750641, 34.441559>,  <46.509178, 32.979534, 34.404690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571220, 32.750641, 34.441559>,  <46.674625, 32.369156, 34.503006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571220, 32.750641, 34.441559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871472, 0.298856, 0.388871,
		0.416783, -0.033350, -0.908394,
		-0.258510, 0.953715, -0.153622,
		46.493668, 33.036755, 34.395473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.185711, 32.627213, 34.199368>,  <46.674625, 32.369156, 34.503006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.185711, 32.627213, 34.199368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021637, 32.950203, 34.368946>,  <46.923195, 33.143997, 34.470692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.021637, 32.950203, 34.368946>,  <47.185711, 32.627213, 34.199368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.021637, 32.950203, 34.368946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893574, 0.262852, 0.363915,
		0.182420, 0.528096, -0.829360,
		-0.410181, 0.807480, 0.423944,
		46.898582, 33.192448, 34.496128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.697273, 33.165813, 34.073818>,  <47.185711, 32.627213, 34.199368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.697273, 33.165813, 34.073818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469517, 33.259354, 34.389061>,  <47.332863, 33.315479, 34.578205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.469517, 33.259354, 34.389061>,  <47.697273, 33.165813, 34.073818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.469517, 33.259354, 34.389061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791158, 0.416288, 0.448077,
		-0.223294, 0.878645, -0.422045,
		-0.569393, 0.233851, 0.788102,
		47.298698, 33.329510, 34.625492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.021324, 33.715752, 34.359348>,  <47.697273, 33.165813, 34.073818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.021324, 33.715752, 34.359348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778309, 33.567890, 34.640560>,  <47.632500, 33.479176, 34.809288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778309, 33.567890, 34.640560>,  <48.021324, 33.715752, 34.359348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778309, 33.567890, 34.640560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499697, 0.510133, 0.700049,
		-0.617413, 0.776610, -0.125212,
		-0.607539, -0.369651, 0.703032,
		47.596046, 33.456993, 34.851471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.740307, 34.110043, 34.766552>,  <48.021324, 33.715752, 34.359348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.740307, 34.110043, 34.766552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718464, 33.813679, 35.034306>,  <47.705357, 33.635860, 35.194958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718464, 33.813679, 35.034306>,  <47.740307, 34.110043, 34.766552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718464, 33.813679, 35.034306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192223, 0.650043, 0.735183,
		-0.979830, 0.168821, 0.106920,
		-0.054612, -0.740907, 0.669383,
		47.702080, 33.591408, 35.235119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714497, 34.898060, 35.216022>,  <47.740307, 34.110043, 34.766552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714497, 34.898060, 35.216022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.880695, 35.212315, 35.032661>,  <47.980415, 35.400867, 34.922646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.880695, 35.212315, 35.032661>,  <47.714497, 34.898060, 35.216022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.880695, 35.212315, 35.032661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811581, 0.092642, -0.576847,
		-0.410726, 0.611711, 0.676102,
		0.415500, 0.785638, -0.458402,
		48.005344, 35.448006, 34.895142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.073963, 41.519321, 41.863708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678780, 41.487881, 41.810413>,  <37.441669, 41.469017, 41.778435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678780, 41.487881, 41.810413>,  <38.073963, 41.519321, 41.863708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678780, 41.487881, 41.810413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037999, 0.711612, -0.701545,
		0.149957, -0.698163, -0.700058,
		-0.987962, -0.078600, -0.133241,
		37.382393, 41.464302, 41.770439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010101, 41.311184, 41.148033>,  <38.073963, 41.519321, 41.863708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010101, 41.311184, 41.148033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633335, 41.422215, 41.223652>,  <37.407276, 41.488834, 41.269024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.633335, 41.422215, 41.223652>,  <38.010101, 41.311184, 41.148033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633335, 41.422215, 41.223652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079723, 0.362009, -0.928759,
		-0.326238, -0.889888, -0.318854,
		-0.941920, 0.277577, 0.189046,
		37.350758, 41.505486, 41.280365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604065, 41.126255, 40.540859>,  <38.010101, 41.311184, 41.148033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604065, 41.126255, 40.540859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355095, 41.388172, 40.712360>,  <37.205711, 41.545322, 40.815262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355095, 41.388172, 40.712360>,  <37.604065, 41.126255, 40.540859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355095, 41.388172, 40.712360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310000, 0.296760, -0.903235,
		-0.718670, -0.695111, 0.018275,
		-0.622425, 0.654794, 0.428757,
		37.168365, 41.584610, 40.840988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958397, 41.005798, 40.253471>,  <37.604065, 41.126255, 40.540859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958397, 41.005798, 40.253471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.946697, 41.376526, 40.403221>,  <36.939678, 41.598961, 40.493073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.946697, 41.376526, 40.403221>,  <36.958397, 41.005798, 40.253471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946697, 41.376526, 40.403221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518120, 0.306234, -0.798607,
		-0.854808, -0.217329, 0.471245,
		-0.029249, 0.926817, 0.374374,
		36.937923, 41.654572, 40.515533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223717, 41.184921, 40.120090>,  <36.958397, 41.005798, 40.253471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223717, 41.184921, 40.120090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458286, 41.506413, 40.160343>,  <36.599030, 41.699306, 40.184494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458286, 41.506413, 40.160343>,  <36.223717, 41.184921, 40.120090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458286, 41.506413, 40.160343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296657, 0.328716, -0.896627,
		-0.753724, 0.495951, 0.431199,
		0.586425, 0.803728, 0.100634,
		36.634212, 41.747532, 40.190533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842598, 41.678558, 39.877747>,  <36.223717, 41.184921, 40.120090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842598, 41.678558, 39.877747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191353, 41.871216, 39.842346>,  <36.400604, 41.986809, 39.821106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191353, 41.871216, 39.842346>,  <35.842598, 41.678558, 39.877747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191353, 41.871216, 39.842346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139777, 0.071562, -0.987594,
		-0.469334, 0.873441, 0.129717,
		0.871887, 0.481643, -0.088500,
		36.452919, 42.015709, 39.815796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736023, 42.271492, 39.504959>,  <35.842598, 41.678558, 39.877747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736023, 42.271492, 39.504959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125542, 42.183372, 39.482346>,  <36.359253, 42.130501, 39.468777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.125542, 42.183372, 39.482346>,  <35.736023, 42.271492, 39.504959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125542, 42.183372, 39.482346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023415, 0.150140, -0.988387,
		0.226226, 0.963809, 0.141047,
		0.973793, -0.220296, -0.056533,
		36.417679, 42.117283, 39.465385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982891, 42.763988, 38.961586>,  <35.736023, 42.271492, 39.504959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982891, 42.763988, 38.961586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273220, 42.489510, 38.980854>,  <36.447418, 42.324821, 38.992416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273220, 42.489510, 38.980854>,  <35.982891, 42.763988, 38.961586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273220, 42.489510, 38.980854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049053, -0.018222, -0.998630,
		0.686135, 0.727187, 0.020434,
		0.725819, -0.686197, 0.048173,
		36.490967, 42.283649, 38.995304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373245, 42.932472, 38.315426>,  <35.982891, 42.763988, 38.961586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373245, 42.932472, 38.315426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496124, 42.573063, 38.440826>,  <36.569851, 42.357418, 38.516068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.496124, 42.573063, 38.440826>,  <36.373245, 42.932472, 38.315426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496124, 42.573063, 38.440826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197247, -0.262161, -0.944651,
		0.930978, 0.352037, 0.096694,
		0.307202, -0.898522, 0.313504,
		36.588284, 42.303505, 38.534878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094482, 42.820641, 38.121765>,  <36.373245, 42.932472, 38.315426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094482, 42.820641, 38.121765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903988, 42.469303, 38.138306>,  <36.789692, 42.258499, 38.148232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903988, 42.469303, 38.138306>,  <37.094482, 42.820641, 38.121765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903988, 42.469303, 38.138306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449211, -0.283452, -0.847269,
		0.755914, -0.384927, 0.529552,
		-0.476239, -0.878343, 0.041352,
		36.761116, 42.205799, 38.150711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610210, 42.260399, 37.862961>,  <37.094482, 42.820641, 38.121765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610210, 42.260399, 37.862961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264774, 42.058876, 37.870773>,  <37.057510, 41.937962, 37.875462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264774, 42.058876, 37.870773>,  <37.610210, 42.260399, 37.862961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264774, 42.058876, 37.870773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256218, -0.471890, -0.843607,
		0.434234, -0.723529, 0.536606,
		-0.863593, -0.503811, 0.019530,
		37.005695, 41.907734, 37.876633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778179, 41.551720, 37.722195>,  <37.610210, 42.260399, 37.862961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778179, 41.551720, 37.722195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390373, 41.607613, 37.641685>,  <37.157688, 41.641148, 37.593380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390373, 41.607613, 37.641685>,  <37.778179, 41.551720, 37.722195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390373, 41.607613, 37.641685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124780, -0.425387, -0.896368,
		-0.210869, -0.894159, 0.394985,
		-0.969518, 0.139730, -0.201274,
		37.099518, 41.649532, 37.581303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649395, 40.992481, 37.413452>,  <37.778179, 41.551720, 37.722195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649395, 40.992481, 37.413452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351402, 41.243992, 37.324333>,  <37.172607, 41.394897, 37.270863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351402, 41.243992, 37.324333>,  <37.649395, 40.992481, 37.413452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351402, 41.243992, 37.324333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074608, -0.253360, -0.964491,
		-0.662901, -0.735150, 0.141837,
		-0.744981, 0.628779, -0.222801,
		37.127907, 41.432625, 37.257492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316322, 40.633667, 36.968304>,  <37.649395, 40.992481, 37.413452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316322, 40.633667, 36.968304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191257, 41.004364, 36.884975>,  <37.116219, 41.226780, 36.834980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191257, 41.004364, 36.884975>,  <37.316322, 40.633667, 36.968304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191257, 41.004364, 36.884975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204847, -0.148370, -0.967484,
		-0.927514, -0.345167, -0.143450,
		-0.312660, 0.926739, -0.208321,
		37.097458, 41.282387, 36.822479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907581, 40.568012, 36.402294>,  <37.316322, 40.633667, 36.968304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907581, 40.568012, 36.402294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999207, 40.957123, 36.416367>,  <37.054184, 41.190590, 36.424809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.999207, 40.957123, 36.416367>,  <36.907581, 40.568012, 36.402294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999207, 40.957123, 36.416367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225107, -0.017775, -0.974172,
		-0.947024, 0.231070, -0.223050,
		0.229067, 0.972775, 0.035182,
		37.067928, 41.248955, 36.426922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570572, 40.927605, 35.794777>,  <36.907581, 40.568012, 36.402294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570572, 40.927605, 35.794777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886730, 41.134460, 35.926132>,  <37.076424, 41.258575, 36.004944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886730, 41.134460, 35.926132>,  <36.570572, 40.927605, 35.794777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886730, 41.134460, 35.926132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380054, 0.006468, -0.924942,
		-0.480450, 0.855875, -0.191429,
		0.790397, 0.517142, 0.328386,
		37.123848, 41.289604, 36.024647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612667, 41.494095, 35.329090>,  <36.570572, 40.927605, 35.794777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612667, 41.494095, 35.329090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983494, 41.468281, 35.476807>,  <37.205990, 41.452793, 35.565437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983494, 41.468281, 35.476807>,  <36.612667, 41.494095, 35.329090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983494, 41.468281, 35.476807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370988, 0.016217, -0.928496,
		0.053934, 0.997783, 0.038977,
		0.927070, -0.064538, 0.369291,
		37.261616, 41.448921, 35.587593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023617, 41.921490, 34.853550>,  <36.612667, 41.494095, 35.329090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023617, 41.921490, 34.853550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288692, 41.688557, 35.041904>,  <37.447739, 41.548798, 35.154919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288692, 41.688557, 35.041904>,  <37.023617, 41.921490, 34.853550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288692, 41.688557, 35.041904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506360, -0.114853, -0.854639,
		0.551767, 0.804797, 0.218758,
		0.662686, -0.582331, 0.470890,
		37.487499, 41.513859, 35.183170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660473, 42.211121, 34.751957>,  <37.023617, 41.921490, 34.853550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660473, 42.211121, 34.751957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739155, 41.829998, 34.844444>,  <37.786366, 41.601322, 34.899937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739155, 41.829998, 34.844444>,  <37.660473, 42.211121, 34.751957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739155, 41.829998, 34.844444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501340, -0.104917, -0.858866,
		0.842594, 0.284861, 0.457043,
		0.196706, -0.952810, 0.231215,
		37.798168, 41.544155, 34.913807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383148, 42.116570, 34.629337>,  <37.660473, 42.211121, 34.751957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383148, 42.116570, 34.629337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248852, 41.740082, 34.614491>,  <38.168274, 41.514187, 34.605583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248852, 41.740082, 34.614491>,  <38.383148, 42.116570, 34.629337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248852, 41.740082, 34.614491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540512, -0.160233, -0.825937,
		0.771442, -0.297368, 0.562539,
		-0.335744, -0.941221, -0.037120,
		38.148129, 41.457714, 34.603355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906834, 41.646362, 34.375278>,  <38.383148, 42.116570, 34.629337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906834, 41.646362, 34.375278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573227, 41.441422, 34.293385>,  <38.373062, 41.318455, 34.244247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573227, 41.441422, 34.293385>,  <38.906834, 41.646362, 34.375278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573227, 41.441422, 34.293385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404080, -0.314541, -0.858943,
		0.375688, -0.799097, 0.469364,
		-0.834013, -0.512355, -0.204730,
		38.323025, 41.287716, 34.231964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132595, 41.027451, 33.918671>,  <38.906834, 41.646362, 34.375278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132595, 41.027451, 33.918671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736744, 40.983135, 33.882088>,  <38.499233, 40.956547, 33.860138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736744, 40.983135, 33.882088>,  <39.132595, 41.027451, 33.918671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736744, 40.983135, 33.882088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116394, -0.245141, -0.962475,
		0.084210, -0.963137, 0.255493,
		-0.989627, -0.110788, -0.091459,
		38.439857, 40.949898, 33.854649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585766, 41.084267, 33.487312>,  <39.132595, 41.027451, 33.918671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585766, 41.084267, 33.487312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.985031, 41.060188, 33.490067>,  <40.224590, 41.045742, 33.491718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.985031, 41.060188, 33.490067>,  <39.585766, 41.084267, 33.487312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985031, 41.060188, 33.490067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026900, -0.338525, 0.940573,
		-0.054287, -0.939030, -0.339523,
		0.998163, -0.060193, 0.006882,
		40.284481, 41.042130, 33.492130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670143, 40.367348, 33.756618>,  <39.585766, 41.084267, 33.487312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670143, 40.367348, 33.756618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.984287, 40.605423, 33.824680>,  <40.172775, 40.748268, 33.865517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.984287, 40.605423, 33.824680>,  <39.670143, 40.367348, 33.756618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984287, 40.605423, 33.824680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089023, -0.380601, 0.920444,
		0.612600, -0.707737, -0.351896,
		0.785364, 0.595191, 0.170151,
		40.219898, 40.783981, 33.875725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280407, 39.883957, 33.905285>,  <39.670143, 40.367348, 33.756618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280407, 39.883957, 33.905285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.331047, 40.245712, 34.068279>,  <40.361431, 40.462765, 34.166077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.331047, 40.245712, 34.068279>,  <40.280407, 39.883957, 33.905285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331047, 40.245712, 34.068279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103211, -0.420573, 0.901369,
		0.986570, -0.072056, -0.146587,
		0.126600, 0.904393, 0.407488,
		40.369026, 40.517029, 34.190525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887646, 39.749470, 34.253399>,  <40.280407, 39.883957, 33.905285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887646, 39.749470, 34.253399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.741112, 40.081287, 34.421993>,  <40.653191, 40.280376, 34.523151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.741112, 40.081287, 34.421993>,  <40.887646, 39.749470, 34.253399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741112, 40.081287, 34.421993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303201, -0.321830, 0.896936,
		0.879696, 0.456378, -0.133621,
		-0.366338, 0.829545, 0.421487,
		40.631210, 40.330151, 34.548439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335140, 39.937019, 34.780159>,  <40.887646, 39.749470, 34.253399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335140, 39.937019, 34.780159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000538, 40.128170, 34.887405>,  <40.799774, 40.242863, 34.951752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.000538, 40.128170, 34.887405>,  <41.335140, 39.937019, 34.780159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000538, 40.128170, 34.887405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162962, -0.250193, 0.954383,
		0.523161, 0.842041, 0.131412,
		-0.836508, 0.477881, 0.268112,
		40.749584, 40.271534, 34.967838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521706, 40.436073, 35.397861>,  <41.335140, 39.937019, 34.780159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521706, 40.436073, 35.397861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.123363, 40.401093, 35.407864>,  <40.884357, 40.380104, 35.413864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.123363, 40.401093, 35.407864>,  <41.521706, 40.436073, 35.397861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123363, 40.401093, 35.407864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024015, 0.012371, 0.999635,
		-0.087730, 0.996092, -0.010220,
		-0.995855, -0.087452, 0.025007,
		40.824608, 40.374855, 35.415367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301029, 40.983341, 35.826115>,  <41.521706, 40.436073, 35.397861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301029, 40.983341, 35.826115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.996098, 40.725513, 35.802830>,  <40.813141, 40.570816, 35.788860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.996098, 40.725513, 35.802830>,  <41.301029, 40.983341, 35.826115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996098, 40.725513, 35.802830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132527, 0.067433, 0.988883,
		-0.633477, 0.761567, -0.136829,
		-0.762327, -0.644569, -0.058211,
		40.767399, 40.532143, 35.785366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827549, 41.241795, 36.278755>,  <41.301029, 40.983341, 35.826115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827549, 41.241795, 36.278755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.724712, 40.857777, 36.234535>,  <40.663010, 40.627365, 36.208004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.724712, 40.857777, 36.234535>,  <40.827549, 41.241795, 36.278755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724712, 40.857777, 36.234535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096399, -0.088348, 0.991414,
		-0.961567, 0.265543, -0.069834,
		-0.257094, -0.960042, -0.110550,
		40.647583, 40.569763, 36.201370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347359, 41.118126, 36.790993>,  <40.827549, 41.241795, 36.278755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347359, 41.118126, 36.790993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438797, 40.740398, 36.696327>,  <40.493660, 40.513763, 36.639526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.438797, 40.740398, 36.696327>,  <40.347359, 41.118126, 36.790993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438797, 40.740398, 36.696327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180197, -0.279948, 0.942952,
		-0.956698, -0.172911, -0.234159,
		0.228599, -0.944315, -0.236668,
		40.507378, 40.457104, 36.625328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783016, 40.704010, 36.946930>,  <40.347359, 41.118126, 36.790993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783016, 40.704010, 36.946930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108604, 40.471657, 36.944721>,  <40.303955, 40.332245, 36.943394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.108604, 40.471657, 36.944721>,  <39.783016, 40.704010, 36.946930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108604, 40.471657, 36.944721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265115, -0.379926, 0.886211,
		-0.516884, -0.719883, -0.463248,
		0.813969, -0.580883, -0.005526,
		40.352795, 40.297394, 36.943062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480026, 40.119564, 37.184937>,  <39.783016, 40.704010, 36.946930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480026, 40.119564, 37.184937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.876606, 40.080959, 37.220051>,  <40.114555, 40.057796, 37.241119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.876606, 40.080959, 37.220051>,  <39.480026, 40.119564, 37.184937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876606, 40.080959, 37.220051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120503, -0.419621, 0.899665,
		-0.049989, -0.902555, -0.427664,
		0.991453, -0.096508, 0.087784,
		40.174042, 40.052006, 37.246387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611153, 39.428528, 37.470528>,  <39.480026, 40.119564, 37.184937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611153, 39.428528, 37.470528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.932835, 39.652290, 37.550850>,  <40.125843, 39.786549, 37.599045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.932835, 39.652290, 37.550850>,  <39.611153, 39.428528, 37.470528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932835, 39.652290, 37.550850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012378, -0.353545, 0.935336,
		0.594229, -0.749712, -0.291245,
		0.804201, 0.559409, 0.200807,
		40.174095, 39.820114, 37.611092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971504, 38.999950, 37.988186>,  <39.611153, 39.428528, 37.470528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971504, 38.999950, 37.988186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135658, 39.362896, 38.024586>,  <40.234150, 39.580662, 38.046425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135658, 39.362896, 38.024586>,  <39.971504, 38.999950, 37.988186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135658, 39.362896, 38.024586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073663, -0.132449, 0.988449,
		0.908932, -0.398942, -0.121194,
		0.410386, 0.907360, 0.091000,
		40.258774, 39.635105, 38.051888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577030, 38.918007, 38.488026>,  <39.971504, 38.999950, 37.988186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577030, 38.918007, 38.488026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.456944, 39.299496, 38.494720>,  <40.384892, 39.528389, 38.498737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.456944, 39.299496, 38.494720>,  <40.577030, 38.918007, 38.488026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456944, 39.299496, 38.494720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006414, -0.015525, 0.999859,
		0.953851, 0.300277, -0.001457,
		-0.300212, 0.953726, 0.016735,
		40.366879, 39.585613, 38.499741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086678, 39.344368, 38.968113>,  <40.577030, 38.918007, 38.488026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086678, 39.344368, 38.968113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758030, 39.571445, 38.947498>,  <40.560841, 39.707691, 38.935131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758030, 39.571445, 38.947498>,  <41.086678, 39.344368, 38.968113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758030, 39.571445, 38.947498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086878, 0.214065, 0.972948,
		0.563372, 0.794919, -0.225201,
		-0.821623, 0.567697, -0.051538,
		40.511543, 39.741756, 38.932037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287861, 39.930225, 39.287354>,  <41.086678, 39.344368, 38.968113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287861, 39.930225, 39.287354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888439, 39.909409, 39.292637>,  <40.648785, 39.896919, 39.295807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888439, 39.909409, 39.292637>,  <41.287861, 39.930225, 39.287354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888439, 39.909409, 39.292637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004125, 0.319547, 0.947562,
		-0.053533, 0.946140, -0.319301,
		-0.998558, -0.052043, 0.013204,
		40.588871, 39.893795, 39.296597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061802, 40.549671, 39.657635>,  <41.287861, 39.930225, 39.287354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061802, 40.549671, 39.657635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.735508, 40.318474, 39.648617>,  <40.539734, 40.179756, 39.643208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.735508, 40.318474, 39.648617>,  <41.061802, 40.549671, 39.657635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735508, 40.318474, 39.648617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269873, 0.345823, 0.898652,
		-0.511615, 0.739144, -0.438083,
		-0.815732, -0.577991, -0.022546,
		40.490788, 40.145077, 39.641853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644650, 40.920670, 40.054672>,  <41.061802, 40.549671, 39.657635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644650, 40.920670, 40.054672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450008, 40.571255, 40.059654>,  <40.333225, 40.361607, 40.062641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450008, 40.571255, 40.059654>,  <40.644650, 40.920670, 40.054672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450008, 40.571255, 40.059654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381897, 0.225510, 0.896270,
		-0.785732, 0.431370, -0.443334,
		-0.486600, -0.873536, 0.012451,
		40.304028, 40.309193, 40.063389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.723137, 41.049706, 40.112865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816555, 40.682472, 40.240978>,  <39.872604, 40.462132, 40.317844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816555, 40.682472, 40.240978>,  <39.723137, 41.049706, 40.112865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816555, 40.682472, 40.240978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596272, 0.124962, 0.792997,
		-0.768061, -0.376170, -0.518245,
		0.233541, -0.918085, 0.320278,
		39.886616, 40.407047, 40.337063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054905, 40.726353, 40.301449>,  <39.723137, 41.049706, 40.112865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054905, 40.726353, 40.301449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337502, 40.511883, 40.486225>,  <39.507061, 40.383202, 40.597092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337502, 40.511883, 40.486225>,  <39.054905, 40.726353, 40.301449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337502, 40.511883, 40.486225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474714, 0.125072, 0.871208,
		-0.524893, -0.834791, -0.166166,
		0.706494, -0.536173, 0.461937,
		39.549450, 40.351032, 40.624805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669537, 40.236809, 40.791744>,  <39.054905, 40.726353, 40.301449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669537, 40.236809, 40.791744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046516, 40.275169, 40.919865>,  <39.272705, 40.298183, 40.996738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046516, 40.275169, 40.919865>,  <38.669537, 40.236809, 40.791744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046516, 40.275169, 40.919865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331656, 0.146737, 0.931919,
		0.042364, -0.984517, 0.170095,
		0.942449, 0.095893, 0.320305,
		39.329250, 40.303940, 41.015957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670433, 39.803070, 41.370747>,  <38.669537, 40.236809, 40.791744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670433, 39.803070, 41.370747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022655, 39.989613, 41.404530>,  <39.233990, 40.101540, 41.424801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022655, 39.989613, 41.404530>,  <38.670433, 39.803070, 41.370747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022655, 39.989613, 41.404530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018247, -0.144707, 0.989306,
		0.473594, -0.872679, -0.118912,
		0.880554, 0.466360, 0.084456,
		39.286823, 40.129520, 41.429867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292179, 39.477745, 41.783798>,  <38.670433, 39.803070, 41.370747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292179, 39.477745, 41.783798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351734, 39.873272, 41.787434>,  <39.387466, 40.110588, 41.789616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351734, 39.873272, 41.787434>,  <39.292179, 39.477745, 41.783798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351734, 39.873272, 41.787434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040529, -0.015285, 0.999062,
		0.988024, -0.148378, -0.042351,
		0.148886, 0.988813, 0.009088,
		39.396400, 40.169914, 41.790161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674290, 39.585857, 42.391335>,  <39.292179, 39.477745, 41.783798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674290, 39.585857, 42.391335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517742, 39.940025, 42.291054>,  <39.423813, 40.152527, 42.230885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517742, 39.940025, 42.291054>,  <39.674290, 39.585857, 42.391335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517742, 39.940025, 42.291054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007410, 0.269395, 0.963001,
		0.920202, 0.378750, -0.098873,
		-0.391372, 0.885423, -0.250705,
		39.400330, 40.205654, 42.215843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090324, 40.047810, 42.791824>,  <39.674290, 39.585857, 42.391335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090324, 40.047810, 42.791824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756481, 40.237900, 42.680405>,  <39.556175, 40.351952, 42.613552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756481, 40.237900, 42.680405>,  <40.090324, 40.047810, 42.791824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756481, 40.237900, 42.680405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150683, 0.289428, 0.945265,
		0.529831, 0.830900, -0.169952,
		-0.834610, 0.475222, -0.278550,
		39.506100, 40.380466, 42.596840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102840, 40.664867, 43.112747>,  <40.090324, 40.047810, 42.791824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102840, 40.664867, 43.112747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.710552, 40.628994, 43.043297>,  <39.475182, 40.607471, 43.001625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.710552, 40.628994, 43.043297>,  <40.102840, 40.664867, 43.112747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710552, 40.628994, 43.043297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194489, 0.361114, 0.912015,
		-0.019092, 0.928199, -0.371593,
		-0.980719, -0.089683, -0.173631,
		39.416336, 40.602089, 42.991207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757538, 41.333996, 43.309483>,  <40.102840, 40.664867, 43.112747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757538, 41.333996, 43.309483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491356, 41.035423, 43.308537>,  <39.331646, 40.856281, 43.307968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491356, 41.035423, 43.308537>,  <39.757538, 41.333996, 43.309483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491356, 41.035423, 43.308537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336107, 0.296807, 0.893833,
		-0.666483, 0.595604, -0.448393,
		-0.665457, -0.746432, -0.002370,
		39.291718, 40.811493, 43.307827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258705, 41.610477, 43.703529>,  <39.757538, 41.333996, 43.309483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258705, 41.610477, 43.703529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.229061, 41.211582, 43.705105>,  <39.211277, 40.972244, 43.706051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.229061, 41.211582, 43.705105>,  <39.258705, 41.610477, 43.703529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229061, 41.211582, 43.705105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208179, 0.019334, 0.977900,
		-0.975279, 0.071650, -0.209037,
		-0.074108, -0.997242, 0.003940,
		39.206829, 40.912411, 43.706287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636414, 41.568806, 44.021648>,  <39.258705, 41.610477, 43.703529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636414, 41.568806, 44.021648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798119, 41.203663, 44.044525>,  <38.895142, 40.984577, 44.058250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.798119, 41.203663, 44.044525>,  <38.636414, 41.568806, 44.021648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798119, 41.203663, 44.044525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439474, -0.139020, 0.887432,
		-0.802146, -0.383887, -0.457376,
		0.404258, -0.912855, 0.057194,
		38.919395, 40.929806, 44.061684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121582, 41.072819, 44.340763>,  <38.636414, 41.568806, 44.021648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121582, 41.072819, 44.340763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479828, 40.909203, 44.410702>,  <38.694775, 40.811035, 44.452663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.479828, 40.909203, 44.410702>,  <38.121582, 41.072819, 44.340763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479828, 40.909203, 44.410702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260382, -0.163365, 0.951585,
		-0.360671, -0.897775, -0.252817,
		0.895610, -0.409038, 0.174843,
		38.748512, 40.786491, 44.463154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924984, 40.438835, 44.685165>,  <38.121582, 41.072819, 44.340763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924984, 40.438835, 44.685165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308018, 40.520813, 44.766197>,  <38.537838, 40.570000, 44.814816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308018, 40.520813, 44.766197>,  <37.924984, 40.438835, 44.685165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308018, 40.520813, 44.766197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204352, -0.012701, 0.978815,
		0.203176, -0.978691, 0.029719,
		0.957580, 0.204945, 0.202578,
		38.595291, 40.582294, 44.826969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158600, 39.879589, 45.119419>,  <37.924984, 40.438835, 44.685165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158600, 39.879589, 45.119419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410789, 40.182125, 45.189224>,  <38.562103, 40.363647, 45.231110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410789, 40.182125, 45.189224>,  <38.158600, 39.879589, 45.119419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410789, 40.182125, 45.189224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023970, -0.243694, 0.969556,
		0.775838, -0.607099, -0.171772,
		0.630477, 0.756336, 0.174515,
		38.599934, 40.409027, 45.241577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666740, 39.638294, 45.528725>,  <38.158600, 39.879589, 45.119419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666740, 39.638294, 45.528725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666130, 40.027386, 45.621506>,  <38.665764, 40.260841, 45.677174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666130, 40.027386, 45.621506>,  <38.666740, 39.638294, 45.528725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666130, 40.027386, 45.621506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125827, -0.229919, 0.965041,
		0.992051, 0.030657, -0.122045,
		-0.001525, 0.972727, 0.231949,
		38.665672, 40.319202, 45.691090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215649, 39.656399, 45.955372>,  <38.666740, 39.638294, 45.528725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215649, 39.656399, 45.955372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012478, 39.988758, 46.046257>,  <38.890575, 40.188171, 46.100788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.012478, 39.988758, 46.046257>,  <39.215649, 39.656399, 45.955372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012478, 39.988758, 46.046257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195845, -0.145469, 0.969785,
		0.838841, 0.537079, -0.088839,
		-0.507928, 0.830894, 0.227209,
		38.860100, 40.238026, 46.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415367, 39.839539, 46.714249>,  <39.215649, 39.656399, 45.955372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415367, 39.839539, 46.714249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128983, 40.111015, 46.648796>,  <38.957153, 40.273903, 46.609524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128983, 40.111015, 46.648796>,  <39.415367, 39.839539, 46.714249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128983, 40.111015, 46.648796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141110, 0.088870, 0.985997,
		0.683733, 0.729024, 0.032143,
		-0.715959, 0.678694, -0.163636,
		38.914196, 40.314625, 46.599705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595512, 40.529007, 46.993912>,  <39.415367, 39.839539, 46.714249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595512, 40.529007, 46.993912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.199562, 40.472763, 46.986217>,  <38.961990, 40.439018, 46.981602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.199562, 40.472763, 46.986217>,  <39.595512, 40.529007, 46.993912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199562, 40.472763, 46.986217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032687, 0.093958, 0.995039,
		-0.138103, 0.985597, -0.097603,
		-0.989878, -0.140609, -0.019240,
		38.902599, 40.430580, 46.980446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317463, 40.993816, 47.434505>,  <39.595512, 40.529007, 46.993912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317463, 40.993816, 47.434505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.988678, 40.766388, 47.421242>,  <38.791405, 40.629929, 47.413284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.988678, 40.766388, 47.421242>,  <39.317463, 40.993816, 47.434505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988678, 40.766388, 47.421242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028868, -0.016558, 0.999446,
		-0.568807, 0.822466, -0.002803,
		-0.821964, -0.568573, -0.033161,
		38.742088, 40.595818, 47.411293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962360, 41.184528, 47.947906>,  <39.317463, 40.993816, 47.434505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962360, 41.184528, 47.947906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804512, 40.819233, 47.907379>,  <38.709805, 40.600056, 47.883064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.804512, 40.819233, 47.907379>,  <38.962360, 41.184528, 47.947906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804512, 40.819233, 47.907379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154650, -0.174704, 0.972400,
		-0.905735, 0.368063, 0.210175,
		-0.394622, -0.913241, -0.101314,
		38.686127, 40.545261, 47.876984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470348, 41.109596, 48.524178>,  <38.962360, 41.184528, 47.947906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470348, 41.109596, 48.524178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.490356, 40.720207, 48.434872>,  <38.502361, 40.486572, 48.381287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.490356, 40.720207, 48.434872>,  <38.470348, 41.109596, 48.524178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490356, 40.720207, 48.434872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089065, -0.227004, 0.969813,
		-0.994769, -0.028620, -0.098056,
		0.050015, -0.973473, -0.223268,
		38.505360, 40.428165, 48.367893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812172, 40.728233, 48.751186>,  <38.470348, 41.109596, 48.524178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812172, 40.728233, 48.751186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141354, 40.502476, 48.725273>,  <38.338863, 40.367020, 48.709724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141354, 40.502476, 48.725273>,  <37.812172, 40.728233, 48.751186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141354, 40.502476, 48.725273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050232, -0.185879, 0.981288,
		-0.565879, -0.804304, -0.181321,
		0.822957, -0.564398, -0.064783,
		38.388241, 40.333157, 48.705837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661583, 41.403893, 48.959156>,  <37.812172, 40.728233, 48.751186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661583, 41.403893, 48.959156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.508907, 41.577984, 49.285320>,  <37.417301, 41.682438, 49.481018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.508907, 41.577984, 49.285320>,  <37.661583, 41.403893, 48.959156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508907, 41.577984, 49.285320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513587, -0.833337, 0.204394,
		0.768467, -0.340767, 0.541605,
		-0.381689, 0.435232, 0.815406,
		37.394402, 41.708553, 49.529942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780243, 40.960556, 49.587566>,  <37.661583, 41.403893, 48.959156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780243, 40.960556, 49.587566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453346, 41.190716, 49.600384>,  <37.257210, 41.328812, 49.608074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.453346, 41.190716, 49.600384>,  <37.780243, 40.960556, 49.587566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453346, 41.190716, 49.600384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560351, -0.806393, 0.189043,
		0.134616, 0.136538, 0.981446,
		-0.817243, 0.575402, 0.032044,
		37.208172, 41.363335, 49.609997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307919, 40.361427, 49.255810>,  <37.780243, 40.960556, 49.587566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307919, 40.361427, 49.255810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005714, 40.617561, 49.200428>,  <36.824390, 40.771244, 49.167198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005714, 40.617561, 49.200428>,  <37.307919, 40.361427, 49.255810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005714, 40.617561, 49.200428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406772, -0.624163, -0.667051,
		-0.513554, -0.447647, 0.732035,
		-0.755512, 0.640338, -0.138451,
		36.779060, 40.809662, 49.158894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718418, 40.082726, 49.174007>,  <37.307919, 40.361427, 49.255810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718418, 40.082726, 49.174007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576752, 40.414497, 49.001217>,  <36.491753, 40.613560, 48.897541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576752, 40.414497, 49.001217>,  <36.718418, 40.082726, 49.174007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576752, 40.414497, 49.001217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234587, -0.525946, -0.817527,
		-0.905283, -0.188200, 0.380845,
		-0.354163, 0.829434, -0.431981,
		36.470501, 40.663326, 48.871624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168873, 39.919636, 48.884022>,  <36.718418, 40.082726, 49.174007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168873, 39.919636, 48.884022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206760, 40.258884, 48.675514>,  <36.229492, 40.462433, 48.550411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206760, 40.258884, 48.675514>,  <36.168873, 39.919636, 48.884022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206760, 40.258884, 48.675514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215995, -0.493637, -0.842419,
		-0.971790, 0.192380, 0.136435,
		0.094715, 0.848123, -0.521264,
		36.235176, 40.513321, 48.519135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567120, 40.066914, 48.537979>,  <36.168873, 39.919636, 48.884022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567120, 40.066914, 48.537979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845592, 40.264317, 48.329453>,  <36.012676, 40.382759, 48.204334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845592, 40.264317, 48.329453>,  <35.567120, 40.066914, 48.537979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845592, 40.264317, 48.329453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472029, -0.232428, -0.850391,
		-0.540844, 0.838109, 0.071137,
		0.696187, 0.493508, -0.521320,
		36.054447, 40.412369, 48.173058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164604, 40.211613, 48.049721>,  <35.567120, 40.066914, 48.537979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164604, 40.211613, 48.049721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537624, 40.237206, 47.907593>,  <35.761436, 40.252563, 47.822315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.537624, 40.237206, 47.907593>,  <35.164604, 40.211613, 48.049721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537624, 40.237206, 47.907593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277741, -0.501634, -0.819283,
		-0.230662, 0.862711, -0.450028,
		0.932553, 0.063986, -0.355318,
		35.817390, 40.256401, 47.800999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066498, 40.407665, 47.442131>,  <35.164604, 40.211613, 48.049721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066498, 40.407665, 47.442131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446583, 40.290829, 47.398735>,  <35.674633, 40.220726, 47.372696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446583, 40.290829, 47.398735>,  <35.066498, 40.407665, 47.442131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446583, 40.290829, 47.398735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184991, -0.248664, -0.950760,
		0.250733, 0.923497, -0.290320,
		0.950216, -0.292093, -0.108491,
		35.731647, 40.203201, 47.366188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460472, 40.786682, 46.818710>,  <35.066498, 40.407665, 47.442131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460472, 40.786682, 46.818710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696804, 40.466629, 46.860104>,  <35.838604, 40.274597, 46.884941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696804, 40.466629, 46.860104>,  <35.460472, 40.786682, 46.818710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696804, 40.466629, 46.860104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007639, -0.122713, -0.992413,
		0.806758, 0.587141, -0.066390,
		0.590833, -0.800130, 0.103485,
		35.874054, 40.226589, 46.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771187, 40.823952, 46.288681>,  <35.460472, 40.786682, 46.818710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771187, 40.823952, 46.288681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865227, 40.446724, 46.382786>,  <35.921650, 40.220387, 46.439251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865227, 40.446724, 46.382786>,  <35.771187, 40.823952, 46.288681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865227, 40.446724, 46.382786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019312, -0.246534, -0.968942,
		0.971778, 0.223258, -0.076174,
		0.235103, -0.943068, 0.235265,
		35.935757, 40.163803, 46.453365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389099, 40.720707, 45.932419>,  <35.771187, 40.823952, 46.288681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389099, 40.720707, 45.932419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259686, 40.349506, 46.006329>,  <36.182037, 40.126785, 46.050674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.259686, 40.349506, 46.006329>,  <36.389099, 40.720707, 45.932419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259686, 40.349506, 46.006329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166232, -0.247986, -0.954395,
		0.931501, -0.278060, 0.234495,
		-0.323531, -0.928001, 0.184777,
		36.162628, 40.071106, 46.061760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982422, 40.392689, 45.659412>,  <36.389099, 40.720707, 45.932419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982422, 40.392689, 45.659412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646164, 40.177872, 45.687386>,  <36.444408, 40.048981, 45.704170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.646164, 40.177872, 45.687386>,  <36.982422, 40.392689, 45.659412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646164, 40.177872, 45.687386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130557, -0.326274, -0.936216,
		0.525608, -0.777899, 0.344397,
		-0.840649, -0.537046, 0.069933,
		36.393970, 40.016758, 45.708366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112484, 39.652885, 45.336781>,  <36.982422, 40.392689, 45.659412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112484, 39.652885, 45.336781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724533, 39.749355, 45.323105>,  <36.491760, 39.807236, 45.314899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724533, 39.749355, 45.323105>,  <37.112484, 39.652885, 45.336781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724533, 39.749355, 45.323105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019891, -0.218313, -0.975676,
		-0.242780, -0.945606, 0.216535,
		-0.969878, 0.241182, -0.034193,
		36.433571, 39.821709, 45.312847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845264, 39.110100, 44.955711>,  <37.112484, 39.652885, 45.336781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845264, 39.110100, 44.955711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583977, 39.412960, 44.958141>,  <36.427204, 39.594677, 44.959599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.583977, 39.412960, 44.958141>,  <36.845264, 39.110100, 44.955711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583977, 39.412960, 44.958141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024024, -0.012711, -0.999631,
		-0.756792, -0.653119, 0.026493,
		-0.653215, 0.757148, 0.006071,
		36.388012, 39.640106, 44.959961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576237, 38.929768, 44.433540>,  <36.845264, 39.110100, 44.955711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576237, 38.929768, 44.433540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466724, 39.312729, 44.470257>,  <36.401016, 39.542507, 44.492287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466724, 39.312729, 44.470257>,  <36.576237, 38.929768, 44.433540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466724, 39.312729, 44.470257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081865, 0.118292, -0.989598,
		-0.958303, -0.263414, -0.110763,
		-0.273777, 0.957403, 0.091795,
		36.384590, 39.599949, 44.497795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366253, 39.111542, 43.746906>,  <36.576237, 38.929768, 44.433540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366253, 39.111542, 43.746906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399761, 39.479092, 43.901131>,  <36.419868, 39.699619, 43.993664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.399761, 39.479092, 43.901131>,  <36.366253, 39.111542, 43.746906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399761, 39.479092, 43.901131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285956, 0.348479, -0.892632,
		-0.954574, 0.185033, -0.233563,
		0.083775, 0.918872, 0.385560,
		36.424892, 39.754753, 44.016800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906284, 39.665047, 43.369400>,  <36.366253, 39.111542, 43.746906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906284, 39.665047, 43.369400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219891, 39.857269, 43.526569>,  <36.408054, 39.972603, 43.620872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.219891, 39.857269, 43.526569>,  <35.906284, 39.665047, 43.369400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219891, 39.857269, 43.526569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188800, 0.418390, -0.888428,
		-0.591338, 0.770721, 0.237292,
		0.784011, 0.480561, 0.392922,
		36.455093, 40.001438, 43.644447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768814, 40.431622, 43.086285>,  <35.906284, 39.665047, 43.369400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768814, 40.431622, 43.086285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.142883, 40.415001, 43.226978>,  <36.367325, 40.405029, 43.311394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.142883, 40.415001, 43.226978>,  <35.768814, 40.431622, 43.086285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142883, 40.415001, 43.226978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323646, 0.503655, -0.800990,
		-0.143874, 0.862905, 0.484454,
		0.935176, -0.041550, 0.351738,
		36.423435, 40.402534, 43.332500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045307, 41.148731, 43.189468>,  <35.768814, 40.431622, 43.086285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045307, 41.148731, 43.189468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358917, 40.911652, 43.115700>,  <36.547085, 40.769405, 43.071438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358917, 40.911652, 43.115700>,  <36.045307, 41.148731, 43.189468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358917, 40.911652, 43.115700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344905, 0.662994, -0.664440,
		0.516082, 0.457331, 0.724229,
		0.784028, -0.592695, -0.184423,
		36.594124, 40.733845, 43.060371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592613, 41.600513, 43.046646>,  <36.045307, 41.148731, 43.189468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592613, 41.600513, 43.046646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756393, 41.258854, 42.918411>,  <36.854664, 41.053860, 42.841469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.756393, 41.258854, 42.918411>,  <36.592613, 41.600513, 43.046646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756393, 41.258854, 42.918411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482754, 0.501013, -0.718286,
		0.774142, 0.139340, 0.617486,
		0.409454, -0.854149, -0.320588,
		36.879230, 41.002609, 42.822235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248913, 41.736996, 42.961960>,  <36.592613, 41.600513, 43.046646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248913, 41.736996, 42.961960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166515, 41.422722, 42.728634>,  <37.117077, 41.234158, 42.588638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.166515, 41.422722, 42.728634>,  <37.248913, 41.736996, 42.961960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166515, 41.422722, 42.728634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322504, 0.508290, -0.798519,
		0.923881, -0.352615, 0.148682,
		-0.205997, -0.785687, -0.583319,
		37.104717, 41.187016, 42.553638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760921, 41.800571, 42.490501>,  <37.248913, 41.736996, 42.961960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760921, 41.800571, 42.490501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510555, 41.554672, 42.298534>,  <37.360336, 41.407135, 42.183353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510555, 41.554672, 42.298534>,  <37.760921, 41.800571, 42.490501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510555, 41.554672, 42.298534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054975, 0.579058, -0.813430,
		0.777954, -0.535519, -0.328644,
		-0.625911, -0.614744, -0.479921,
		37.322781, 41.370247, 42.154556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.390255, 31.229925, 33.725681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.229424, 31.488230, 33.985317>,  <38.132923, 31.643213, 34.141098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.229424, 31.488230, 33.985317>,  <38.390255, 31.229925, 33.725681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229424, 31.488230, 33.985317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871168, 0.487988, 0.054159,
		-0.281776, 0.587245, -0.758779,
		-0.402079, 0.645763, 0.649093,
		38.108799, 31.681959, 34.180046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373753, 31.962282, 33.391808>,  <38.390255, 31.229925, 33.725681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373753, 31.962282, 33.391808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387794, 31.958342, 33.791542>,  <38.396221, 31.955976, 34.031384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.387794, 31.958342, 33.791542>,  <38.373753, 31.962282, 33.391808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387794, 31.958342, 33.791542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863844, 0.503120, -0.025385,
		-0.502535, 0.864161, 0.026171,
		0.035104, -0.009851, 0.999335,
		38.398327, 31.955387, 34.091343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544098, 32.636497, 33.581924>,  <38.373753, 31.962282, 33.391808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544098, 32.636497, 33.581924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646816, 32.441792, 33.915897>,  <38.708447, 32.324966, 34.116280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.646816, 32.441792, 33.915897>,  <38.544098, 32.636497, 33.581924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646816, 32.441792, 33.915897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842613, 0.535880, 0.053263,
		-0.473351, 0.689847, 0.547768,
		0.256795, -0.486768, 0.834933,
		38.723854, 32.295761, 34.166378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663147, 33.152676, 34.033600>,  <38.544098, 32.636497, 33.581924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663147, 33.152676, 34.033600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850941, 32.828102, 34.172832>,  <38.963615, 32.633358, 34.256374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.850941, 32.828102, 34.172832>,  <38.663147, 33.152676, 34.033600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850941, 32.828102, 34.172832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803032, 0.556299, 0.213707,
		-0.367048, 0.179191, 0.912779,
		0.469484, -0.811432, 0.348085,
		38.991787, 32.584671, 34.277260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061306, 33.468254, 34.552074>,  <38.663147, 33.152676, 34.033600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061306, 33.468254, 34.552074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212246, 33.098476, 34.530132>,  <39.302811, 32.876610, 34.516968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212246, 33.098476, 34.530132>,  <39.061306, 33.468254, 34.552074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212246, 33.098476, 34.530132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902505, 0.353822, 0.245551,
		-0.207590, -0.142165, 0.967830,
		0.377349, -0.924445, -0.054855,
		39.325451, 32.821144, 34.513676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430805, 33.396538, 35.101418>,  <39.061306, 33.468254, 34.552074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430805, 33.396538, 35.101418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.587154, 33.144310, 34.833210>,  <39.680965, 32.992973, 34.672287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.587154, 33.144310, 34.833210>,  <39.430805, 33.396538, 35.101418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587154, 33.144310, 34.833210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917680, 0.323381, 0.230842,
		0.071270, -0.705551, 0.705066,
		0.390875, -0.630573, -0.670517,
		39.704418, 32.955139, 34.632053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094116, 33.167538, 35.461132>,  <39.430805, 33.396538, 35.101418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094116, 33.167538, 35.461132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.129467, 33.045784, 35.081757>,  <40.150677, 32.972733, 34.854130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.129467, 33.045784, 35.081757>,  <40.094116, 33.167538, 35.461132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129467, 33.045784, 35.081757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992099, -0.058216, 0.111130,
		-0.089040, -0.950769, 0.296832,
		0.088379, -0.304382, -0.948441,
		40.155979, 32.954468, 34.797226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585613, 32.566696, 35.515621>,  <40.094116, 33.167538, 35.461132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585613, 32.566696, 35.515621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.603954, 32.736801, 35.154057>,  <40.614960, 32.838863, 34.937119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.603954, 32.736801, 35.154057>,  <40.585613, 32.566696, 35.515621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603954, 32.736801, 35.154057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998938, -0.015444, 0.043408,
		0.004500, -0.904938, -0.425520,
		0.045854, 0.425263, -0.903908,
		40.617710, 32.864380, 34.882885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118046, 32.225956, 35.156319>,  <40.585613, 32.566696, 35.515621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118046, 32.225956, 35.156319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.081276, 32.571171, 34.957638>,  <41.059216, 32.778301, 34.838428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.081276, 32.571171, 34.957638>,  <41.118046, 32.225956, 35.156319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081276, 32.571171, 34.957638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982662, -0.002031, -0.185393,
		-0.161010, -0.505131, -0.847891,
		-0.091925, 0.863041, -0.496700,
		41.053699, 32.830082, 34.808628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555244, 32.186275, 34.587772>,  <41.118046, 32.225956, 35.156319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555244, 32.186275, 34.587772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468338, 32.576485, 34.601303>,  <41.416195, 32.810612, 34.609421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468338, 32.576485, 34.601303>,  <41.555244, 32.186275, 34.587772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468338, 32.576485, 34.601303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961065, 0.219849, -0.167392,
		-0.170732, -0.003858, -0.985310,
		-0.217265, 0.975526, 0.033828,
		41.403160, 32.869144, 34.611450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926933, 32.453682, 33.971287>,  <41.555244, 32.186275, 34.587772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926933, 32.453682, 33.971287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864365, 32.775887, 34.199909>,  <41.826824, 32.969212, 34.337082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864365, 32.775887, 34.199909>,  <41.926933, 32.453682, 33.971287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864365, 32.775887, 34.199909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913925, 0.337476, -0.225502,
		-0.374532, 0.487087, -0.788969,
		-0.156419, 0.805516, 0.571557,
		41.817440, 33.017540, 34.371376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415630, 32.915890, 33.663029>,  <41.926933, 32.453682, 33.971287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415630, 32.915890, 33.663029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308422, 33.096401, 34.003502>,  <42.244099, 33.204708, 34.207787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308422, 33.096401, 34.003502>,  <42.415630, 32.915890, 33.663029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308422, 33.096401, 34.003502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881921, 0.470551, 0.028219,
		-0.387790, 0.758238, -0.524112,
		-0.268018, 0.451283, 0.851182,
		42.228016, 33.231785, 34.258858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516838, 33.589188, 33.583778>,  <42.415630, 32.915890, 33.663029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516838, 33.589188, 33.583778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517635, 33.540333, 33.980782>,  <42.518112, 33.511021, 34.218983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517635, 33.540333, 33.980782>,  <42.516838, 33.589188, 33.583778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517635, 33.540333, 33.980782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756855, 0.648872, 0.078329,
		-0.653579, 0.751031, 0.093735,
		0.001994, -0.122138, 0.992511,
		42.518234, 33.503693, 34.278534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736008, 34.253128, 33.916027>,  <42.516838, 33.589188, 33.583778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736008, 34.253128, 33.916027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.805183, 33.999741, 34.217705>,  <42.846691, 33.847710, 34.398712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.805183, 33.999741, 34.217705>,  <42.736008, 34.253128, 33.916027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805183, 33.999741, 34.217705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765499, 0.568279, 0.301778,
		-0.619760, 0.525146, 0.583197,
		0.172942, -0.633467, 0.754196,
		42.857067, 33.809700, 34.443962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738731, 34.631996, 34.563004>,  <42.736008, 34.253128, 33.916027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738731, 34.631996, 34.563004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.959740, 34.299610, 34.588982>,  <43.092346, 34.100178, 34.604568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.959740, 34.299610, 34.588982>,  <42.738731, 34.631996, 34.563004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959740, 34.299610, 34.588982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791022, 0.547330, 0.273339,
		-0.262682, -0.099653, 0.959723,
		0.552524, -0.830963, 0.064946,
		43.125496, 34.050320, 34.608467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013294, 34.681980, 35.189857>,  <42.738731, 34.631996, 34.563004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013294, 34.681980, 35.189857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249710, 34.412739, 35.012047>,  <43.391560, 34.251194, 34.905361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249710, 34.412739, 35.012047>,  <43.013294, 34.681980, 35.189857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249710, 34.412739, 35.012047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794374, 0.389955, 0.465731,
		-0.140140, -0.628384, 0.765176,
		0.591042, -0.673103, -0.444524,
		43.427021, 34.210808, 34.878689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478947, 34.375004, 35.865467>,  <43.013294, 34.681980, 35.189857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478947, 34.375004, 35.865467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.622101, 34.311581, 35.497383>,  <43.707993, 34.273525, 35.276535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.622101, 34.311581, 35.497383>,  <43.478947, 34.375004, 35.865467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622101, 34.311581, 35.497383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827400, 0.510633, 0.233802,
		0.432816, -0.845052, 0.313938,
		0.357882, -0.158559, -0.920206,
		43.729465, 34.264011, 35.221321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270538, 34.281635, 35.981342>,  <43.478947, 34.375004, 35.865467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270538, 34.281635, 35.981342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197357, 34.402672, 35.607182>,  <44.153450, 34.475292, 35.382687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.197357, 34.402672, 35.607182>,  <44.270538, 34.281635, 35.981342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197357, 34.402672, 35.607182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870473, 0.492091, -0.011071,
		0.456951, -0.816264, -0.353426,
		-0.182954, 0.302589, -0.935397,
		44.142471, 34.493450, 35.326561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939316, 34.333305, 35.811249>,  <44.270538, 34.281635, 35.981342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939316, 34.333305, 35.811249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.741360, 34.518711, 35.517246>,  <44.622585, 34.629955, 35.340843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.741360, 34.518711, 35.517246>,  <44.939316, 34.333305, 35.811249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741360, 34.518711, 35.517246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812274, 0.547254, -0.201804,
		0.308699, -0.696901, -0.647329,
		-0.494890, 0.463512, -0.735010,
		44.592892, 34.657764, 35.296741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397583, 34.364796, 35.240070>,  <44.939316, 34.333305, 35.811249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397583, 34.364796, 35.240070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145912, 34.641323, 35.097965>,  <44.994911, 34.807240, 35.012703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145912, 34.641323, 35.097965>,  <45.397583, 34.364796, 35.240070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145912, 34.641323, 35.097965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776620, 0.577712, -0.251217,
		0.031569, -0.433965, -0.900376,
		-0.629178, 0.691320, -0.355264,
		44.957157, 34.848721, 34.991386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633091, 34.503166, 34.558655>,  <45.397583, 34.364796, 35.240070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633091, 34.503166, 34.558655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.427597, 34.818771, 34.693428>,  <45.304298, 35.008137, 34.774292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.427597, 34.818771, 34.693428>,  <45.633091, 34.503166, 34.558655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427597, 34.818771, 34.693428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778276, 0.593861, -0.204000,
		-0.361052, 0.157426, -0.919162,
		-0.513739, 0.789016, 0.336935,
		45.273476, 35.055477, 34.794510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223190, 34.386486, 34.888836>,  <45.633091, 34.503166, 34.558655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223190, 34.386486, 34.888836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.443325, 34.069202, 34.784569>,  <46.575405, 33.878834, 34.722008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.443325, 34.069202, 34.784569>,  <46.223190, 34.386486, 34.888836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443325, 34.069202, 34.784569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581711, -0.140300, -0.801204,
		0.598948, 0.592570, -0.538630,
		0.550339, -0.793207, -0.260671,
		46.608425, 33.831242, 34.706367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199554, 34.311508, 34.134201>,  <46.223190, 34.386486, 34.888836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.199554, 34.311508, 34.134201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.327755, 33.937462, 34.194656>,  <46.404675, 33.713036, 34.230930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.327755, 33.937462, 34.194656>,  <46.199554, 34.311508, 34.134201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.327755, 33.937462, 34.194656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612734, -0.326339, -0.719764,
		0.722382, 0.138079, -0.677568,
		0.320500, -0.935113, 0.151136,
		46.423904, 33.656929, 34.239998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342392, 34.025185, 33.433701>,  <46.199554, 34.311508, 34.134201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342392, 34.025185, 33.433701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.303665, 33.705441, 33.670898>,  <46.280430, 33.513596, 33.813217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.303665, 33.705441, 33.670898>,  <46.342392, 34.025185, 33.433701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.303665, 33.705441, 33.670898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732585, -0.346081, -0.586128,
		0.673754, -0.491171, -0.552093,
		-0.096821, -0.799361, 0.592998,
		46.274620, 33.465633, 33.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.431362, 33.425880, 32.953560>,  <46.342392, 34.025185, 33.433701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.431362, 33.425880, 32.953560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218449, 33.348366, 33.283195>,  <46.090702, 33.301857, 33.480976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218449, 33.348366, 33.283195>,  <46.431362, 33.425880, 32.953560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218449, 33.348366, 33.283195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786628, -0.246553, -0.566064,
		0.312876, -0.949557, -0.021200,
		-0.532283, -0.193784, 0.824089,
		46.058765, 33.290230, 33.530422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025574, 32.834042, 32.780262>,  <46.431362, 33.425880, 32.953560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025574, 32.834042, 32.780262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.809269, 32.968628, 33.088642>,  <45.679485, 33.049381, 33.273670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.809269, 32.968628, 33.088642>,  <46.025574, 32.834042, 32.780262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809269, 32.968628, 33.088642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806683, 0.052330, -0.588664,
		-0.238410, -0.940240, 0.243125,
		-0.540762, 0.336468, 0.770951,
		45.647041, 33.069569, 33.319927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373734, 32.494442, 32.625160>,  <46.025574, 32.834042, 32.780262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373734, 32.494442, 32.625160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287945, 32.755741, 32.915615>,  <45.236473, 32.912521, 33.089890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.287945, 32.755741, 32.915615>,  <45.373734, 32.494442, 32.625160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287945, 32.755741, 32.915615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937120, 0.071948, -0.341510,
		-0.275334, -0.753720, 0.596738,
		-0.214469, 0.653245, 0.726136,
		45.223602, 32.951714, 33.133457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806255, 32.231617, 32.998787>,  <45.373734, 32.494442, 32.625160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806255, 32.231617, 32.998787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.815556, 32.628811, 33.045155>,  <44.821136, 32.867126, 33.072975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.815556, 32.628811, 33.045155>,  <44.806255, 32.231617, 32.998787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815556, 32.628811, 33.045155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935163, 0.062600, -0.348643,
		-0.353454, -0.100297, 0.930059,
		0.023254, 0.992986, 0.115920,
		44.822533, 32.926708, 33.079929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013474, 32.349319, 33.331417>,  <44.806255, 32.231617, 32.998787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013474, 32.349319, 33.331417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154804, 32.699448, 33.199371>,  <44.239601, 32.909523, 33.120144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154804, 32.699448, 33.199371>,  <44.013474, 32.349319, 33.331417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154804, 32.699448, 33.199371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931882, 0.298306, -0.206422,
		-0.082209, 0.380564, 0.921093,
		0.353325, 0.875320, -0.330117,
		44.260803, 32.962044, 33.100338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514156, 32.880268, 33.557774>,  <44.013474, 32.349319, 33.331417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514156, 32.880268, 33.557774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725479, 33.046169, 33.261429>,  <43.852272, 33.145710, 33.083622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725479, 33.046169, 33.261429>,  <43.514156, 32.880268, 33.557774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725479, 33.046169, 33.261429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848478, 0.289997, -0.442704,
		0.031234, 0.862486, 0.505116,
		0.528308, 0.414753, -0.740858,
		43.883972, 33.170593, 33.039173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267189, 33.471439, 33.496567>,  <43.514156, 32.880268, 33.557774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267189, 33.471439, 33.496567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445187, 33.416580, 33.142578>,  <43.551983, 33.383667, 32.930183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445187, 33.416580, 33.142578>,  <43.267189, 33.471439, 33.496567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445187, 33.416580, 33.142578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766356, 0.452966, -0.455544,
		0.463337, 0.880916, 0.096465,
		0.444992, -0.137144, -0.884971,
		43.578686, 33.375439, 32.877087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134605, 34.045212, 33.181984>,  <43.267189, 33.471439, 33.496567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134605, 34.045212, 33.181984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232418, 33.785564, 32.893860>,  <43.291103, 33.629776, 32.720985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232418, 33.785564, 32.893860>,  <43.134605, 34.045212, 33.181984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232418, 33.785564, 32.893860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750210, 0.343992, -0.564673,
		0.614322, 0.678462, -0.402862,
		0.244528, -0.649122, -0.720310,
		43.305775, 33.590828, 32.677765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024822, 34.441872, 32.603764>,  <43.134605, 34.045212, 33.181984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024822, 34.441872, 32.603764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044430, 34.071751, 32.453346>,  <43.056194, 33.849678, 32.363094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.044430, 34.071751, 32.453346>,  <43.024822, 34.441872, 32.603764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044430, 34.071751, 32.453346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829639, 0.171917, -0.531171,
		0.556143, 0.338022, -0.759240,
		0.049021, -0.925302, -0.376047,
		43.059135, 33.794159, 32.340530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084324, 34.523060, 31.800163>,  <43.024822, 34.441872, 32.603764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084324, 34.523060, 31.800163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915958, 34.177753, 31.911594>,  <42.814938, 33.970570, 31.978453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.915958, 34.177753, 31.911594>,  <43.084324, 34.523060, 31.800163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915958, 34.177753, 31.911594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793062, 0.201139, -0.574974,
		0.440322, -0.462944, -0.769285,
		-0.420914, -0.863265, 0.278577,
		42.789684, 33.918774, 31.995167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579159, 34.431007, 31.193487>,  <43.084324, 34.523060, 31.800163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579159, 34.431007, 31.193487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461388, 34.175045, 31.477413>,  <42.390724, 34.021469, 31.647768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461388, 34.175045, 31.477413>,  <42.579159, 34.431007, 31.193487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461388, 34.175045, 31.477413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921256, -0.007488, -0.388885,
		0.254164, -0.768418, -0.587311,
		-0.294428, -0.639904, 0.709813,
		42.373058, 33.983074, 31.690357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252964, 33.910202, 30.872900>,  <42.579159, 34.431007, 31.193487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252964, 33.910202, 30.872900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.109676, 33.900875, 31.246239>,  <42.023705, 33.895279, 31.470242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.109676, 33.900875, 31.246239>,  <42.252964, 33.910202, 30.872900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109676, 33.900875, 31.246239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929068, 0.107682, -0.353888,
		-0.092253, -0.993912, -0.060235,
		-0.358220, -0.023315, 0.933346,
		42.002209, 33.893879, 31.526243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586239, 33.853733, 30.714231>,  <42.252964, 33.910202, 30.872900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586239, 33.853733, 30.714231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.558315, 33.864494, 31.113110>,  <41.541561, 33.870953, 31.352436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.558315, 33.864494, 31.113110>,  <41.586239, 33.853733, 30.714231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558315, 33.864494, 31.113110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993042, 0.093165, -0.072031,
		-0.094842, -0.995287, 0.020214,
		-0.069809, 0.026905, 0.997197,
		41.537373, 33.872566, 31.412270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895142, 33.475231, 30.961205>,  <41.586239, 33.853733, 30.714231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895142, 33.475231, 30.961205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.016445, 33.740772, 31.234652>,  <41.089226, 33.900097, 31.398720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.016445, 33.740772, 31.234652>,  <40.895142, 33.475231, 30.961205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016445, 33.740772, 31.234652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912026, 0.410082, 0.006354,
		-0.276122, -0.625405, 0.729812,
		0.303257, 0.663853, 0.683618,
		41.107422, 33.939930, 31.439737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498600, 33.303211, 31.462334>,  <40.895142, 33.475231, 30.961205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498600, 33.303211, 31.462334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619286, 33.684536, 31.467531>,  <40.691696, 33.913330, 31.470650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.619286, 33.684536, 31.467531>,  <40.498600, 33.303211, 31.462334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619286, 33.684536, 31.467531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943892, 0.300602, -0.136774,
		-0.134293, 0.029004, 0.990517,
		0.301718, 0.953308, 0.012992,
		40.709801, 33.970528, 31.471428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053295, 33.529678, 31.981073>,  <40.498600, 33.303211, 31.462334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053295, 33.529678, 31.981073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.182938, 33.829651, 31.750401>,  <40.260723, 34.009632, 31.611998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.182938, 33.829651, 31.750401>,  <40.053295, 33.529678, 31.981073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182938, 33.829651, 31.750401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939379, 0.327224, -0.102426,
		0.111891, 0.574920, 0.810523,
		0.324109, 0.749928, -0.576681,
		40.280170, 34.054630, 31.577396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601440, 34.040630, 32.128723>,  <40.053295, 33.529678, 31.981073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601440, 34.040630, 32.128723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767078, 34.216175, 31.809744>,  <39.866463, 34.321503, 31.618357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767078, 34.216175, 31.809744>,  <39.601440, 34.040630, 32.128723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767078, 34.216175, 31.809744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838955, 0.523874, -0.147345,
		0.353097, 0.730036, 0.585124,
		0.414098, 0.438865, -0.797446,
		39.891308, 34.347836, 31.570511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520115, 34.757561, 32.299427>,  <39.601440, 34.040630, 32.128723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520115, 34.757561, 32.299427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.546947, 34.681599, 31.907623>,  <39.563049, 34.636021, 31.672541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.546947, 34.681599, 31.907623>,  <39.520115, 34.757561, 32.299427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546947, 34.681599, 31.907623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656207, 0.731122, -0.186689,
		0.751593, 0.655285, -0.075568,
		0.067086, -0.189902, -0.979508,
		39.567074, 34.624626, 31.613771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.259281, 40.418945, 37.929306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933334, 40.210377, 37.828033>,  <40.737766, 40.085236, 37.767269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933334, 40.210377, 37.828033>,  <41.259281, 40.418945, 37.929306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933334, 40.210377, 37.828033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269867, 0.045289, -0.961832,
		0.512991, -0.852094, 0.103812,
		-0.814869, -0.521426, -0.253185,
		40.688873, 40.053947, 37.752079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553753, 39.964100, 37.348171>,  <41.259281, 40.418945, 37.929306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553753, 39.964100, 37.348171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154457, 39.961559, 37.324608>,  <40.914879, 39.960033, 37.310471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154457, 39.961559, 37.324608>,  <41.553753, 39.964100, 37.348171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154457, 39.961559, 37.324608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058864, 0.006742, -0.998243,
		0.006742, -0.999957, -0.006356,
		0.998243, 0.006356, 0.058907,
		40.854984, 39.959652, 37.306934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383881, 39.455715, 36.865860>,  <41.553753, 39.964100, 37.348171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383881, 39.455715, 36.865860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079712, 39.714249, 36.891209>,  <40.897213, 39.869370, 36.906418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079712, 39.714249, 36.891209>,  <41.383881, 39.455715, 36.865860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079712, 39.714249, 36.891209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106886, -0.028312, -0.993868,
		-0.640579, -0.762528, 0.090613,
		-0.760418, 0.646336, 0.063368,
		40.851585, 39.908150, 36.910217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913174, 39.234318, 36.402885>,  <41.383881, 39.455715, 36.865860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913174, 39.234318, 36.402885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799030, 39.613556, 36.458996>,  <40.730545, 39.841099, 36.492661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799030, 39.613556, 36.458996>,  <40.913174, 39.234318, 36.402885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799030, 39.613556, 36.458996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130209, 0.106650, -0.985734,
		-0.949534, -0.299555, 0.093017,
		-0.285361, 0.948099, 0.140273,
		40.713421, 39.897987, 36.501080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293137, 39.365250, 35.946602>,  <40.913174, 39.234318, 36.402885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293137, 39.365250, 35.946602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388111, 39.741737, 36.042713>,  <40.445095, 39.967628, 36.100380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388111, 39.741737, 36.042713>,  <40.293137, 39.365250, 35.946602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388111, 39.741737, 36.042713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225327, 0.293973, -0.928874,
		-0.944907, 0.166410, 0.281882,
		0.237440, 0.941216, 0.240281,
		40.459343, 40.024101, 36.114796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701397, 39.724171, 35.707733>,  <40.293137, 39.365250, 35.946602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701397, 39.724171, 35.707733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030090, 39.949913, 35.739380>,  <40.227306, 40.085358, 35.758366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030090, 39.949913, 35.739380>,  <39.701397, 39.724171, 35.707733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030090, 39.949913, 35.739380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103752, 0.284663, -0.952997,
		-0.560349, 0.774900, 0.292470,
		0.821732, 0.564355, 0.079113,
		40.276611, 40.119221, 35.763115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549519, 40.233955, 35.377373>,  <39.701397, 39.724171, 35.707733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549519, 40.233955, 35.377373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944237, 40.297447, 35.390270>,  <40.181068, 40.335541, 35.398010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944237, 40.297447, 35.390270>,  <39.549519, 40.233955, 35.377373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944237, 40.297447, 35.390270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027312, 0.359280, -0.932830,
		-0.159652, 0.919632, 0.358872,
		0.986795, 0.158730, 0.032243,
		40.240276, 40.345066, 35.399944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706924, 40.961460, 35.242393>,  <39.549519, 40.233955, 35.377373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706924, 40.961460, 35.242393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027363, 40.737991, 35.156479>,  <40.219624, 40.603909, 35.104931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027363, 40.737991, 35.156479>,  <39.706924, 40.961460, 35.242393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027363, 40.737991, 35.156479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174850, 0.561634, -0.808699,
		0.572434, 0.610286, 0.547605,
		0.801091, -0.558676, -0.214789,
		40.267689, 40.570389, 35.092041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256371, 41.475761, 35.025726>,  <39.706924, 40.961460, 35.242393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256371, 41.475761, 35.025726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332264, 41.113739, 34.873474>,  <40.377800, 40.896526, 34.782124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332264, 41.113739, 34.873474>,  <40.256371, 41.475761, 35.025726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332264, 41.113739, 34.873474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065013, 0.398399, -0.914905,
		0.979680, 0.148846, 0.134431,
		0.189737, -0.905054, -0.380627,
		40.389187, 40.842224, 34.759285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733067, 41.709633, 34.566334>,  <40.256371, 41.475761, 35.025726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733067, 41.709633, 34.566334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605492, 41.341415, 34.476112>,  <40.528946, 41.120483, 34.421978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605492, 41.341415, 34.476112>,  <40.733067, 41.709633, 34.566334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605492, 41.341415, 34.476112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009519, 0.234859, -0.971982,
		0.947727, -0.312151, -0.066143,
		-0.318940, -0.920545, -0.225554,
		40.509811, 41.065250, 34.408447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259296, 41.466797, 34.199837>,  <40.733067, 41.709633, 34.566334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259296, 41.466797, 34.199837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926548, 41.269844, 34.097424>,  <40.726898, 41.151672, 34.035976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926548, 41.269844, 34.097424>,  <41.259296, 41.466797, 34.199837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926548, 41.269844, 34.097424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137291, 0.264422, -0.954585,
		0.537725, -0.829239, -0.152364,
		-0.831867, -0.492386, -0.256033,
		40.676987, 41.122128, 34.020615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505260, 40.928082, 33.679001>,  <41.259296, 41.466797, 34.199837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505260, 40.928082, 33.679001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118202, 41.003067, 33.611458>,  <40.885967, 41.048058, 33.570930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118202, 41.003067, 33.611458>,  <41.505260, 40.928082, 33.679001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118202, 41.003067, 33.611458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225540, 0.342763, -0.911946,
		-0.113074, -0.920529, -0.373954,
		-0.967650, 0.187459, -0.168858,
		40.827908, 41.059303, 33.560799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451736, 40.281849, 33.360245>,  <41.505260, 40.928082, 33.679001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451736, 40.281849, 33.360245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290504, 40.441288, 33.030724>,  <41.193768, 40.536953, 32.833012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290504, 40.441288, 33.030724>,  <41.451736, 40.281849, 33.360245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290504, 40.441288, 33.030724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910226, 0.081208, -0.406072,
		-0.094961, -0.913523, -0.395548,
		-0.403078, 0.398599, -0.823801,
		41.169582, 40.560867, 32.783585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296986, 39.454605, 33.287369>,  <41.451736, 40.281849, 33.360245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296986, 39.454605, 33.287369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570446, 39.162685, 33.285305>,  <41.734520, 38.987534, 33.284065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570446, 39.162685, 33.285305>,  <41.296986, 39.454605, 33.287369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570446, 39.162685, 33.285305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545511, -0.515691, 0.660667,
		-0.484811, -0.448850, -0.750661,
		0.683649, -0.729792, -0.005160,
		41.775539, 38.943748, 33.283756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013805, 38.743374, 33.060856>,  <41.296986, 39.454605, 33.287369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013805, 38.743374, 33.060856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331871, 38.710854, 33.301224>,  <41.522709, 38.691341, 33.445446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331871, 38.710854, 33.301224>,  <41.013805, 38.743374, 33.060856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331871, 38.710854, 33.301224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524188, -0.590368, 0.613753,
		0.304869, -0.803029, -0.512053,
		0.795161, -0.081298, 0.600923,
		41.570419, 38.686462, 33.481503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945671, 38.051662, 33.283337>,  <41.013805, 38.743374, 33.060856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945671, 38.051662, 33.283337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185413, 38.226849, 33.551353>,  <41.329258, 38.331959, 33.712166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185413, 38.226849, 33.551353>,  <40.945671, 38.051662, 33.283337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185413, 38.226849, 33.551353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336415, -0.621728, 0.707304,
		0.726360, -0.649340, -0.225298,
		0.599355, 0.437964, 0.670046,
		41.365219, 38.358238, 33.752369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108624, 37.575863, 33.760418>,  <40.945671, 38.051662, 33.283337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108624, 37.575863, 33.760418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226643, 37.890251, 33.977745>,  <41.297455, 38.078884, 34.108143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226643, 37.890251, 33.977745>,  <41.108624, 37.575863, 33.760418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226643, 37.890251, 33.977745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398450, -0.415620, 0.817617,
		0.868439, -0.457720, 0.190544,
		0.295046, 0.785972, 0.543319,
		41.315155, 38.126041, 34.140739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292610, 37.326916, 34.398689>,  <41.108624, 37.575863, 33.760418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292610, 37.326916, 34.398689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213146, 37.712383, 34.470100>,  <41.165466, 37.943665, 34.512947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213146, 37.712383, 34.470100>,  <41.292610, 37.326916, 34.398689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213146, 37.712383, 34.470100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414776, -0.247710, 0.875557,
		0.887972, 0.099891, 0.448918,
		-0.198662, 0.963671, 0.178527,
		41.153549, 38.001484, 34.523659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577576, 37.538742, 35.064796>,  <41.292610, 37.326916, 34.398689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577576, 37.538742, 35.064796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272038, 37.788559, 34.999702>,  <41.088715, 37.938450, 34.960648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272038, 37.788559, 34.999702>,  <41.577576, 37.538742, 35.064796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272038, 37.788559, 34.999702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436363, -0.313986, 0.843208,
		0.475521, 0.715096, 0.512365,
		-0.763850, 0.624541, -0.162734,
		41.042881, 37.975922, 34.950882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439644, 37.767765, 35.683823>,  <41.577576, 37.538742, 35.064796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439644, 37.767765, 35.683823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094822, 37.866425, 35.506725>,  <40.887928, 37.925621, 35.400467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094822, 37.866425, 35.506725>,  <41.439644, 37.767765, 35.683823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094822, 37.866425, 35.506725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489471, -0.178612, 0.853531,
		0.131445, 0.952502, 0.274703,
		-0.862056, 0.246652, -0.442744,
		40.836205, 37.940418, 35.373901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147449, 38.206707, 36.129379>,  <41.439644, 37.767765, 35.683823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147449, 38.206707, 36.129379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862122, 38.061832, 35.889381>,  <40.690926, 37.974907, 35.745384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862122, 38.061832, 35.889381>,  <41.147449, 38.206707, 36.129379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862122, 38.061832, 35.889381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618381, -0.077615, 0.782036,
		-0.329815, 0.928867, -0.168608,
		-0.713321, -0.362191, -0.599993,
		40.648125, 37.953175, 35.709385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570812, 38.568287, 36.352528>,  <41.147449, 38.206707, 36.129379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570812, 38.568287, 36.352528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418766, 38.245930, 36.170956>,  <40.327538, 38.052517, 36.062012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418766, 38.245930, 36.170956>,  <40.570812, 38.568287, 36.352528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418766, 38.245930, 36.170956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558155, -0.191482, 0.807340,
		-0.737548, 0.560245, -0.377027,
		-0.380114, -0.805891, -0.453930,
		40.304733, 38.004162, 36.034775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924873, 38.370689, 36.746754>,  <40.570812, 38.568287, 36.352528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924873, 38.370689, 36.746754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929443, 38.048328, 36.509979>,  <39.932186, 37.854912, 36.367912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929443, 38.048328, 36.509979>,  <39.924873, 38.370689, 36.746754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929443, 38.048328, 36.509979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528997, -0.507225, 0.680356,
		-0.848547, 0.305363, -0.432114,
		0.011423, -0.805901, -0.591940,
		39.932869, 37.806557, 36.332397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174286, 38.149693, 36.631294>,  <39.924873, 38.370689, 36.746754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174286, 38.149693, 36.631294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436466, 37.848354, 36.609898>,  <39.593773, 37.667553, 36.597061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436466, 37.848354, 36.609898>,  <39.174286, 38.149693, 36.631294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436466, 37.848354, 36.609898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510111, -0.493829, 0.704216,
		-0.556933, -0.434289, -0.707968,
		0.655448, -0.753344, -0.053494,
		39.633102, 37.622353, 36.593849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768528, 37.694096, 36.901867>,  <39.174286, 38.149693, 36.631294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768528, 37.694096, 36.901867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139954, 37.553062, 36.948269>,  <39.362808, 37.468445, 36.976109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139954, 37.553062, 36.948269>,  <38.768528, 37.694096, 36.901867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139954, 37.553062, 36.948269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299320, -0.526485, 0.795752,
		-0.219493, -0.773628, -0.594409,
		0.928563, -0.352581, 0.116003,
		39.418522, 37.447289, 36.983070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686733, 36.924400, 36.999218>,  <38.768528, 37.694096, 36.901867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686733, 36.924400, 36.999218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053860, 37.020729, 37.125469>,  <39.274136, 37.078526, 37.201221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053860, 37.020729, 37.125469>,  <38.686733, 36.924400, 36.999218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053860, 37.020729, 37.125469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158627, -0.506358, 0.847608,
		0.363947, -0.828013, -0.426541,
		0.917813, 0.240823, 0.315632,
		39.329205, 37.092976, 37.220158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954273, 36.378170, 37.273968>,  <38.686733, 36.924400, 36.999218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954273, 36.378170, 37.273968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185127, 36.668724, 37.423248>,  <39.323639, 36.843056, 37.512817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185127, 36.668724, 37.423248>,  <38.954273, 36.378170, 37.273968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185127, 36.668724, 37.423248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048721, -0.425555, 0.903620,
		0.815195, -0.539692, -0.210212,
		0.577133, 0.726385, 0.373205,
		39.358269, 36.886639, 37.535210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530575, 36.044510, 37.655819>,  <38.954273, 36.378170, 37.273968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530575, 36.044510, 37.655819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495876, 36.409969, 37.814678>,  <39.475056, 36.629246, 37.909992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495876, 36.409969, 37.814678>,  <39.530575, 36.044510, 37.655819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495876, 36.409969, 37.814678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265384, -0.405439, 0.874751,
		0.960232, -0.029512, 0.277639,
		-0.086750, 0.913645, 0.397148,
		39.469852, 36.684063, 37.933823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549656, 35.231014, 37.785339>,  <39.530575, 36.044510, 37.655819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549656, 35.231014, 37.785339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197998, 35.040615, 37.776066>,  <38.987003, 34.926376, 37.770504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197998, 35.040615, 37.776066>,  <39.549656, 35.231014, 37.785339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197998, 35.040615, 37.776066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020699, 0.086734, -0.996017,
		0.476110, -0.875160, -0.086104,
		-0.879142, -0.475996, -0.023180,
		38.934254, 34.897816, 37.769112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602436, 34.598728, 37.321396>,  <39.549656, 35.231014, 37.785339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602436, 34.598728, 37.321396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224606, 34.728546, 37.341194>,  <38.997910, 34.806438, 37.353073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224606, 34.728546, 37.341194>,  <39.602436, 34.598728, 37.321396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224606, 34.728546, 37.341194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082298, -0.088124, -0.992704,
		-0.317819, -0.941755, 0.109950,
		-0.944573, 0.324549, 0.049497,
		38.941235, 34.825912, 37.356045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323376, 34.209732, 36.821636>,  <39.602436, 34.598728, 37.321396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323376, 34.209732, 36.821636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064484, 34.512871, 36.854515>,  <38.909149, 34.694756, 36.874241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064484, 34.512871, 36.854515>,  <39.323376, 34.209732, 36.821636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064484, 34.512871, 36.854515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042037, 0.072177, -0.996505,
		-0.761135, -0.648423, -0.014857,
		-0.647229, 0.757851, 0.082194,
		38.870316, 34.740227, 36.879173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897400, 34.090858, 36.179691>,  <39.323376, 34.209732, 36.821636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897400, 34.090858, 36.179691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803761, 34.454723, 36.316929>,  <38.747578, 34.673042, 36.399269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803761, 34.454723, 36.316929>,  <38.897400, 34.090858, 36.179691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803761, 34.454723, 36.316929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222379, 0.293438, -0.929753,
		-0.946437, -0.293953, 0.133596,
		-0.234102, 0.909662, 0.343090,
		38.733528, 34.727623, 36.419857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341797, 34.233250, 35.814552>,  <38.897400, 34.090858, 36.179691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341797, 34.233250, 35.814552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457306, 34.587952, 35.958931>,  <38.526611, 34.800774, 36.045559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457306, 34.587952, 35.958931>,  <38.341797, 34.233250, 35.814552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457306, 34.587952, 35.958931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406381, 0.454888, -0.792421,
		-0.866872, 0.082144, 0.491717,
		0.288769, 0.886752, 0.360948,
		38.543938, 34.853977, 36.067215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759327, 34.588585, 36.042572>,  <38.341797, 34.233250, 35.814552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759327, 34.588585, 36.042572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034302, 34.864269, 35.950993>,  <38.199287, 35.029682, 35.896046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034302, 34.864269, 35.950993>,  <37.759327, 34.588585, 36.042572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034302, 34.864269, 35.950993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659039, 0.459566, -0.595371,
		-0.305124, 0.560162, 0.770141,
		0.687435, 0.689215, -0.228944,
		38.240532, 35.071033, 35.882309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405716, 35.254070, 36.027473>,  <37.759327, 34.588585, 36.042572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405716, 35.254070, 36.027473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737274, 35.287968, 35.806293>,  <37.936211, 35.308308, 35.673588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737274, 35.287968, 35.806293>,  <37.405716, 35.254070, 36.027473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737274, 35.287968, 35.806293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492571, 0.579091, -0.649637,
		0.265150, 0.810846, 0.521750,
		0.828897, 0.084747, -0.552945,
		37.985943, 35.313393, 35.640411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389301, 35.873119, 35.775188>,  <37.405716, 35.254070, 36.027473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389301, 35.873119, 35.775188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651356, 35.693256, 35.532337>,  <37.808590, 35.585339, 35.386627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651356, 35.693256, 35.532337>,  <37.389301, 35.873119, 35.775188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651356, 35.693256, 35.532337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441809, 0.423855, -0.790665,
		0.612861, 0.786230, 0.079022,
		0.655139, -0.449655, -0.607128,
		37.847897, 35.558361, 35.350201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747452, 36.418682, 35.429100>,  <37.389301, 35.873119, 35.775188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747452, 36.418682, 35.429100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790871, 36.100071, 35.191189>,  <37.816921, 35.908905, 35.048443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790871, 36.100071, 35.191189>,  <37.747452, 36.418682, 35.429100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790871, 36.100071, 35.191189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275312, 0.550823, -0.787907,
		0.955207, 0.249275, -0.159503,
		0.108548, -0.796527, -0.594779,
		37.823437, 35.861115, 35.012756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817318, 36.722305, 34.711102>,  <37.747452, 36.418682, 35.429100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817318, 36.722305, 34.711102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742455, 36.343914, 34.605198>,  <37.697536, 36.116879, 34.541656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742455, 36.343914, 34.605198>,  <37.817318, 36.722305, 34.711102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742455, 36.343914, 34.605198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504852, 0.323829, -0.800162,
		0.842671, -0.016097, -0.538187,
		-0.187161, -0.945979, -0.264754,
		37.686306, 36.060120, 34.525772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993359, 36.657619, 33.989983>,  <37.817318, 36.722305, 34.711102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993359, 36.657619, 33.989983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738934, 36.362827, 34.081440>,  <37.586277, 36.185951, 34.136314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738934, 36.362827, 34.081440>,  <37.993359, 36.657619, 33.989983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738934, 36.362827, 34.081440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663077, 0.370489, -0.650436,
		0.394656, -0.565321, -0.724333,
		-0.636063, -0.736987, 0.228636,
		37.548115, 36.141731, 34.150032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740673, 36.448376, 33.357693>,  <37.993359, 36.657619, 33.989983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740673, 36.448376, 33.357693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475910, 36.291142, 33.612991>,  <37.317051, 36.196800, 33.766171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475910, 36.291142, 33.612991>,  <37.740673, 36.448376, 33.357693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475910, 36.291142, 33.612991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735700, 0.177562, -0.653619,
		0.143589, -0.902201, -0.406712,
		-0.661913, -0.393070, 0.638253,
		37.277336, 36.173218, 33.804466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.804928, 33.883835, 41.231251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.434998, 34.034374, 41.253391>,  <39.213039, 34.124699, 41.266678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.434998, 34.034374, 41.253391>,  <39.804928, 33.883835, 41.231251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434998, 34.034374, 41.253391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041517, 0.044789, -0.998133,
		-0.378127, -0.925394, -0.025797,
		-0.924822, 0.376350, 0.055356,
		39.157551, 34.147278, 41.269997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437542, 33.516560, 40.769135>,  <39.804928, 33.883835, 41.231251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437542, 33.516560, 40.769135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210739, 33.839432, 40.834808>,  <39.074657, 34.033157, 40.874214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210739, 33.839432, 40.834808>,  <39.437542, 33.516560, 40.769135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210739, 33.839432, 40.834808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185969, 0.068736, -0.980148,
		-0.802446, -0.586284, 0.111137,
		-0.567006, 0.807185, 0.164188,
		39.040638, 34.081589, 40.884064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833260, 33.338463, 40.596096>,  <39.437542, 33.516560, 40.769135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833260, 33.338463, 40.596096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816307, 33.737736, 40.578987>,  <38.806137, 33.977299, 40.568722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816307, 33.737736, 40.578987>,  <38.833260, 33.338463, 40.596096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816307, 33.737736, 40.578987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157620, -0.048951, -0.986286,
		-0.986590, -0.035057, 0.159409,
		-0.042379, 0.998186, -0.042769,
		38.803593, 34.037193, 40.566158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319798, 33.471199, 40.086418>,  <38.833260, 33.338463, 40.596096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319798, 33.471199, 40.086418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493084, 33.828426, 40.135014>,  <38.597054, 34.042763, 40.164169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493084, 33.828426, 40.135014>,  <38.319798, 33.471199, 40.086418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493084, 33.828426, 40.135014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249829, 0.248494, -0.935861,
		-0.865975, 0.375076, 0.330765,
		0.433212, 0.893067, 0.121485,
		38.623047, 34.096348, 40.171459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824657, 33.937191, 39.894100>,  <38.319798, 33.471199, 40.086418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824657, 33.937191, 39.894100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.183693, 34.105129, 39.840332>,  <38.399113, 34.205891, 39.808071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.183693, 34.105129, 39.840332>,  <37.824657, 33.937191, 39.894100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183693, 34.105129, 39.840332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273274, 0.290643, -0.916978,
		-0.345922, 0.859800, 0.375610,
		0.897585, 0.419847, -0.134421,
		38.452969, 34.231083, 39.800007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745846, 34.681309, 39.674274>,  <37.824657, 33.937191, 39.894100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745846, 34.681309, 39.674274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119274, 34.586300, 39.566917>,  <38.343330, 34.529297, 39.502502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119274, 34.586300, 39.566917>,  <37.745846, 34.681309, 39.674274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119274, 34.586300, 39.566917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172790, 0.357811, -0.917668,
		0.313999, 0.903081, 0.293000,
		0.933568, -0.237519, -0.268395,
		38.399345, 34.515045, 39.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991226, 35.218254, 39.222126>,  <37.745846, 34.681309, 39.674274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991226, 35.218254, 39.222126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.278702, 34.956146, 39.129086>,  <38.451187, 34.798882, 39.073261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.278702, 34.956146, 39.129086>,  <37.991226, 35.218254, 39.222126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278702, 34.956146, 39.129086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081534, 0.411636, -0.907694,
		0.690532, 0.633387, 0.349266,
		0.718692, -0.655269, -0.232605,
		38.494308, 34.759567, 39.059303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445724, 35.553368, 38.741634>,  <37.991226, 35.218254, 39.222126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445724, 35.553368, 38.741634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533401, 35.167374, 38.684002>,  <38.586010, 34.935776, 38.649422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.533401, 35.167374, 38.684002>,  <38.445724, 35.553368, 38.741634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533401, 35.167374, 38.684002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179265, 0.184986, -0.966253,
		0.959071, 0.185972, 0.213536,
		0.219197, -0.964984, -0.144076,
		38.599159, 34.877880, 38.640778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120144, 35.539860, 38.431698>,  <38.445724, 35.553368, 38.741634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120144, 35.539860, 38.431698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.938450, 35.199638, 38.325691>,  <38.829433, 34.995506, 38.262089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.938450, 35.199638, 38.325691>,  <39.120144, 35.539860, 38.431698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938450, 35.199638, 38.325691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125544, 0.233394, -0.964244,
		0.881994, -0.471261, 0.000767,
		-0.454231, -0.850553, -0.265016,
		38.802181, 34.944473, 38.246185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742317, 35.975800, 38.375626>,  <39.120144, 35.539860, 38.431698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742317, 35.975800, 38.375626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569633, 36.336540, 38.382401>,  <39.466022, 36.552986, 38.386463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569633, 36.336540, 38.382401>,  <39.742317, 35.975800, 38.375626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569633, 36.336540, 38.382401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191769, -0.110113, 0.975244,
		0.881391, 0.417777, 0.220484,
		-0.431712, 0.901852, 0.016935,
		39.440121, 36.607098, 38.387482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026310, 36.432682, 38.934944>,  <39.742317, 35.975800, 38.375626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026310, 36.432682, 38.934944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.675407, 36.609203, 38.859390>,  <39.464867, 36.715118, 38.814060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.675407, 36.609203, 38.859390>,  <40.026310, 36.432682, 38.934944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675407, 36.609203, 38.859390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111902, 0.194635, 0.974472,
		0.466804, 0.875994, -0.121361,
		-0.877252, 0.441307, -0.188882,
		39.412231, 36.741596, 38.802727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138420, 37.151611, 39.158798>,  <40.026310, 36.432682, 38.934944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138420, 37.151611, 39.158798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.749184, 37.061516, 39.178211>,  <39.515640, 37.007458, 39.189857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.749184, 37.061516, 39.178211>,  <40.138420, 37.151611, 39.158798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749184, 37.061516, 39.178211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047725, 0.009017, 0.998820,
		-0.225412, 0.974261, 0.001975,
		-0.973094, -0.225241, 0.048529,
		39.457256, 36.993942, 39.192768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824787, 37.669930, 39.585884>,  <40.138420, 37.151611, 39.158798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824787, 37.669930, 39.585884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591751, 37.344887, 39.592354>,  <39.451931, 37.149860, 39.596237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.591751, 37.344887, 39.592354>,  <39.824787, 37.669930, 39.585884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591751, 37.344887, 39.592354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171924, 0.142663, 0.974725,
		-0.794378, 0.565079, -0.222820,
		-0.582585, -0.812608, 0.016178,
		39.416977, 37.101105, 39.597206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210796, 37.880527, 39.943039>,  <39.824787, 37.669930, 39.585884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210796, 37.880527, 39.943039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237122, 37.481949, 39.964062>,  <39.252918, 37.242802, 39.976677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.237122, 37.481949, 39.964062>,  <39.210796, 37.880527, 39.943039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237122, 37.481949, 39.964062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073489, 0.047687, 0.996155,
		-0.995122, -0.069424, -0.070090,
		0.065814, -0.996447, 0.052556,
		39.256866, 37.183014, 39.979828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613598, 37.733147, 40.257698>,  <39.210796, 37.880527, 39.943039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613598, 37.733147, 40.257698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871006, 37.431690, 40.311214>,  <39.025452, 37.250816, 40.343323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.871006, 37.431690, 40.311214>,  <38.613598, 37.733147, 40.257698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871006, 37.431690, 40.311214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033784, 0.146655, 0.988611,
		-0.764683, -0.640711, 0.068914,
		0.643520, -0.753646, 0.133790,
		39.064060, 37.205597, 40.351353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322784, 37.377190, 40.760288>,  <38.613598, 37.733147, 40.257698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322784, 37.377190, 40.760288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.696514, 37.234623, 40.760601>,  <38.920753, 37.149082, 40.760788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.696514, 37.234623, 40.760601>,  <38.322784, 37.377190, 40.760288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696514, 37.234623, 40.760601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020830, 0.056794, 0.998169,
		-0.355806, -0.932600, 0.060489,
		0.934328, -0.356414, 0.000781,
		38.976814, 37.127697, 40.760834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372463, 37.010101, 41.280254>,  <38.322784, 37.377190, 40.760288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372463, 37.010101, 41.280254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769768, 37.024673, 41.236244>,  <39.008152, 37.033417, 41.209839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769768, 37.024673, 41.236244>,  <38.372463, 37.010101, 41.280254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769768, 37.024673, 41.236244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112845, -0.087457, 0.989756,
		0.026438, -0.995502, -0.090979,
		0.993261, 0.036434, -0.110026,
		39.067745, 37.035603, 41.203236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579578, 36.534023, 41.707390>,  <38.372463, 37.010101, 41.280254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579578, 36.534023, 41.707390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903660, 36.762745, 41.655827>,  <39.098106, 36.899979, 41.624889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903660, 36.762745, 41.655827>,  <38.579578, 36.534023, 41.707390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903660, 36.762745, 41.655827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210932, -0.079226, 0.974285,
		0.546884, -0.816558, -0.184800,
		0.810201, 0.571801, -0.128911,
		39.146721, 36.934284, 41.617153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196487, 36.198666, 42.025391>,  <38.579578, 36.534023, 41.707390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196487, 36.198666, 42.025391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254002, 36.593327, 41.994804>,  <39.288509, 36.830124, 41.976452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254002, 36.593327, 41.994804>,  <39.196487, 36.198666, 42.025391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254002, 36.593327, 41.994804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259684, 0.036939, 0.964987,
		0.954929, -0.158606, -0.250907,
		0.143785, 0.986651, -0.076461,
		39.297138, 36.889320, 41.971867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648407, 36.262234, 42.460712>,  <39.196487, 36.198666, 42.025391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648407, 36.262234, 42.460712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553280, 36.646599, 42.404030>,  <39.496204, 36.877220, 42.370022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.553280, 36.646599, 42.404030>,  <39.648407, 36.262234, 42.460712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553280, 36.646599, 42.404030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285910, 0.208682, 0.935258,
		0.928277, 0.181906, -0.324364,
		-0.237818, 0.960917, -0.141706,
		39.481934, 36.934875, 42.361519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257473, 36.643139, 42.607540>,  <39.648407, 36.262234, 42.460712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257473, 36.643139, 42.607540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.944748, 36.882465, 42.677734>,  <39.757114, 37.026062, 42.719852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.944748, 36.882465, 42.677734>,  <40.257473, 36.643139, 42.607540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944748, 36.882465, 42.677734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227627, 0.011851, 0.973676,
		0.580483, 0.801175, -0.145457,
		-0.781809, 0.598312, 0.175490,
		39.710205, 37.061958, 42.730381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511520, 37.041615, 43.038811>,  <40.257473, 36.643139, 42.607540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511520, 37.041615, 43.038811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122150, 37.119328, 43.087292>,  <39.888527, 37.165955, 43.116383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122150, 37.119328, 43.087292>,  <40.511520, 37.041615, 43.038811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122150, 37.119328, 43.087292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169901, 0.257901, 0.951115,
		0.153531, 0.946435, -0.284058,
		-0.973428, 0.194287, 0.121205,
		39.830124, 37.177612, 43.123653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406357, 37.721375, 43.379940>,  <40.511520, 37.041615, 43.038811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406357, 37.721375, 43.379940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052349, 37.547958, 43.447811>,  <39.839943, 37.443909, 43.488533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.052349, 37.547958, 43.447811>,  <40.406357, 37.721375, 43.379940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052349, 37.547958, 43.447811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014564, 0.338494, 0.940856,
		-0.465329, 0.835145, -0.293259,
		-0.885018, -0.433537, 0.169674,
		39.786842, 37.417896, 43.498714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.056675, 39.983284, 43.507908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330978, 39.694702, 43.469456>,  <33.495560, 39.521553, 43.446384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330978, 39.694702, 43.469456>,  <33.056675, 39.983284, 43.507908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330978, 39.694702, 43.469456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169529, 0.286769, -0.942880,
		0.707814, 0.630288, 0.318961,
		0.685754, -0.721457, -0.096128,
		33.536705, 39.478264, 43.440617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560543, 40.283035, 43.106537>,  <33.056675, 39.983284, 43.507908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560543, 40.283035, 43.106537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645763, 39.893349, 43.076839>,  <33.696896, 39.659538, 43.059021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645763, 39.893349, 43.076839>,  <33.560543, 40.283035, 43.106537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645763, 39.893349, 43.076839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333577, 0.143953, -0.931667,
		0.918333, 0.173728, 0.355645,
		0.213053, -0.974216, -0.074245,
		33.709679, 39.601086, 43.054565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193260, 40.334194, 42.852783>,  <33.560543, 40.283035, 43.106537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193260, 40.334194, 42.852783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.058784, 39.961407, 42.798515>,  <33.978100, 39.737732, 42.765953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.058784, 39.961407, 42.798515>,  <34.193260, 40.334194, 42.852783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058784, 39.961407, 42.798515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307447, 0.027562, -0.951166,
		0.890199, -0.361483, 0.277266,
		-0.336188, -0.931971, -0.135672,
		33.957928, 39.681816, 42.757812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774178, 39.862919, 42.615269>,  <34.193260, 40.334194, 42.852783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774178, 39.862919, 42.615269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428585, 39.711826, 42.482090>,  <34.221230, 39.621170, 42.402184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428585, 39.711826, 42.482090>,  <34.774178, 39.862919, 42.615269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428585, 39.711826, 42.482090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375431, -0.042637, -0.925869,
		0.335534, -0.924933, 0.178649,
		-0.863984, -0.377731, -0.332942,
		34.169388, 39.598507, 42.382206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964230, 39.346111, 42.143044>,  <34.774178, 39.862919, 42.615269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964230, 39.346111, 42.143044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608013, 39.492962, 42.035595>,  <34.394283, 39.581074, 41.971127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608013, 39.492962, 42.035595>,  <34.964230, 39.346111, 42.143044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608013, 39.492962, 42.035595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334677, 0.128797, -0.933490,
		-0.308112, -0.921211, -0.237568,
		-0.890539, 0.367127, -0.268624,
		34.340851, 39.603100, 41.955009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845203, 39.029743, 41.576576>,  <34.964230, 39.346111, 42.143044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845203, 39.029743, 41.576576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567860, 39.313309, 41.524902>,  <34.401455, 39.483448, 41.493896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567860, 39.313309, 41.524902>,  <34.845203, 39.029743, 41.576576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567860, 39.313309, 41.524902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287193, 0.107435, -0.951829,
		-0.660887, -0.697062, -0.278087,
		-0.693361, 0.708916, -0.129189,
		34.359852, 39.525982, 41.486145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722401, 38.762630, 40.888947>,  <34.845203, 39.029743, 41.576576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722401, 38.762630, 40.888947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557076, 39.121342, 40.952145>,  <34.457878, 39.336567, 40.990063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557076, 39.121342, 40.952145>,  <34.722401, 38.762630, 40.888947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557076, 39.121342, 40.952145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109753, 0.221310, -0.969008,
		-0.903949, -0.383166, -0.189895,
		-0.413316, 0.896775, 0.158000,
		34.433083, 39.390373, 40.999546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212269, 38.827663, 40.317375>,  <34.722401, 38.762630, 40.888947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212269, 38.827663, 40.317375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293556, 39.192333, 40.460228>,  <34.342327, 39.411137, 40.545940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293556, 39.192333, 40.460228>,  <34.212269, 38.827663, 40.317375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293556, 39.192333, 40.460228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141977, 0.333453, -0.932014,
		-0.968785, 0.240107, -0.061673,
		0.203218, 0.911678, 0.357134,
		34.354523, 39.465836, 40.567368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711674, 39.209736, 40.045311>,  <34.212269, 38.827663, 40.317375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711674, 39.209736, 40.045311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991779, 39.480236, 40.136795>,  <34.159843, 39.642536, 40.191685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991779, 39.480236, 40.136795>,  <33.711674, 39.209736, 40.045311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991779, 39.480236, 40.136795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037001, 0.354327, -0.934389,
		-0.712921, 0.645860, 0.273145,
		0.700267, 0.676252, 0.228710,
		34.201859, 39.683113, 40.205406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532280, 39.883717, 39.695293>,  <33.711674, 39.209736, 40.045311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532280, 39.883717, 39.695293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919022, 39.925720, 39.788395>,  <34.151066, 39.950920, 39.844254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919022, 39.925720, 39.788395>,  <33.532280, 39.883717, 39.695293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919022, 39.925720, 39.788395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196741, 0.274681, -0.941193,
		-0.162761, 0.955785, 0.244917,
		0.966852, 0.105005, 0.232749,
		34.209076, 39.957222, 39.858219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664101, 40.563057, 39.461094>,  <33.532280, 39.883717, 39.695293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664101, 40.563057, 39.461094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005569, 40.354786, 39.456463>,  <34.210453, 40.229824, 39.453686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.005569, 40.354786, 39.456463>,  <33.664101, 40.563057, 39.461094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005569, 40.354786, 39.456463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238799, 0.411085, -0.879764,
		0.462831, 0.748269, 0.475270,
		0.853676, -0.520676, -0.011577,
		34.261673, 40.198582, 39.452991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120792, 41.052704, 39.294037>,  <33.664101, 40.563057, 39.461094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120792, 41.052704, 39.294037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.265285, 40.695717, 39.185955>,  <34.351982, 40.481525, 39.121105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.265285, 40.695717, 39.185955>,  <34.120792, 41.052704, 39.294037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265285, 40.695717, 39.185955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190750, 0.354364, -0.915446,
		0.912759, 0.279144, 0.298245,
		0.361229, -0.892471, -0.270202,
		34.373653, 40.427975, 39.104893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576393, 41.238327, 38.790382>,  <34.120792, 41.052704, 39.294037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576393, 41.238327, 38.790382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582615, 40.844128, 38.722801>,  <34.586349, 40.607609, 38.682251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582615, 40.844128, 38.722801>,  <34.576393, 41.238327, 38.790382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582615, 40.844128, 38.722801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218644, 0.168240, -0.961192,
		0.975681, -0.021989, 0.218091,
		0.015556, -0.985501, -0.168957,
		34.587280, 40.548477, 38.672115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252754, 40.974422, 38.391018>,  <34.576393, 41.238327, 38.790382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252754, 40.974422, 38.391018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.926792, 40.751183, 38.328465>,  <34.731216, 40.617237, 38.290932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.926792, 40.751183, 38.328465>,  <35.252754, 40.974422, 38.391018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926792, 40.751183, 38.328465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188753, -0.000444, -0.982024,
		0.547998, -0.829774, 0.105705,
		-0.814905, -0.558100, -0.156379,
		34.682320, 40.583752, 38.281551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119732, 41.077492, 38.404995>,  <35.252754, 40.974422, 38.391018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119732, 41.077492, 38.404995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333427, 41.407837, 38.332844>,  <36.461643, 41.606045, 38.289555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333427, 41.407837, 38.332844>,  <36.119732, 41.077492, 38.404995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333427, 41.407837, 38.332844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102217, 0.274925, 0.956017,
		0.839133, -0.492301, 0.231293,
		0.534236, 0.825867, -0.180377,
		36.493698, 41.655598, 38.278732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709686, 41.021931, 38.736855>,  <36.119732, 41.077492, 38.404995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709686, 41.021931, 38.736855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712265, 41.419697, 38.694729>,  <36.713810, 41.658356, 38.669453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712265, 41.419697, 38.694729>,  <36.709686, 41.021931, 38.736855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712265, 41.419697, 38.694729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090420, 0.104307, 0.990426,
		0.995883, -0.015903, -0.089244,
		0.006442, 0.994418, -0.105315,
		36.714199, 41.718021, 38.663136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198914, 41.243301, 39.145275>,  <36.709686, 41.021931, 38.736855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198914, 41.243301, 39.145275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970432, 41.568733, 39.101807>,  <36.833344, 41.763992, 39.075726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970432, 41.568733, 39.101807>,  <37.198914, 41.243301, 39.145275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970432, 41.568733, 39.101807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029879, 0.111695, 0.993293,
		0.820262, 0.570623, -0.039492,
		-0.571207, 0.813580, -0.108668,
		36.799068, 41.812809, 39.069206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691101, 41.910309, 39.410381>,  <37.198914, 41.243301, 39.145275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691101, 41.910309, 39.410381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293560, 41.949772, 39.430477>,  <37.055035, 41.973450, 39.442535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293560, 41.949772, 39.430477>,  <37.691101, 41.910309, 39.410381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293560, 41.949772, 39.430477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052352, 0.018950, 0.998449,
		0.097556, 0.994941, -0.023998,
		-0.993852, 0.098661, 0.050239,
		36.995403, 41.979370, 39.445549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586727, 42.579399, 39.777596>,  <37.691101, 41.910309, 39.410381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586727, 42.579399, 39.777596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224861, 42.410828, 39.802826>,  <37.007740, 42.309685, 39.817963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224861, 42.410828, 39.802826>,  <37.586727, 42.579399, 39.777596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224861, 42.410828, 39.802826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108302, -0.084239, 0.990543,
		-0.412129, 0.902941, 0.121849,
		-0.904666, -0.421427, 0.063073,
		36.953461, 42.284401, 39.821747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202900, 42.964062, 40.296722>,  <37.586727, 42.579399, 39.777596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202900, 42.964062, 40.296722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064190, 42.590210, 40.265182>,  <36.980965, 42.365898, 40.246258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064190, 42.590210, 40.265182>,  <37.202900, 42.964062, 40.296722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064190, 42.590210, 40.265182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074539, -0.111263, 0.990992,
		-0.934982, 0.337773, 0.108249,
		-0.346774, -0.934628, -0.078852,
		36.960159, 42.309822, 40.241528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967445, 42.852268, 41.021206>,  <37.202900, 42.964062, 40.296722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967445, 42.852268, 41.021206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975346, 42.491951, 40.847687>,  <36.980087, 42.275761, 40.743576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975346, 42.491951, 40.847687>,  <36.967445, 42.852268, 41.021206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975346, 42.491951, 40.847687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049962, -0.432453, 0.900271,
		-0.998556, -0.039454, 0.036465,
		0.019749, -0.900793, -0.433800,
		36.981270, 42.221714, 40.717548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540291, 42.537769, 41.459999>,  <36.967445, 42.852268, 41.021206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540291, 42.537769, 41.459999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711628, 42.236912, 41.259678>,  <36.814430, 42.056396, 41.139484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711628, 42.236912, 41.259678>,  <36.540291, 42.537769, 41.459999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711628, 42.236912, 41.259678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035143, -0.567672, 0.822504,
		-0.902933, -0.334713, -0.269591,
		0.428342, -0.752141, -0.500807,
		36.840130, 42.011269, 41.109436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212528, 41.950703, 41.612469>,  <36.540291, 42.537769, 41.459999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212528, 41.950703, 41.612469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573372, 41.826370, 41.492741>,  <36.789879, 41.751770, 41.420906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573372, 41.826370, 41.492741>,  <36.212528, 41.950703, 41.612469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573372, 41.826370, 41.492741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043003, -0.625425, 0.779098,
		-0.429368, -0.715700, -0.550832,
		0.902106, -0.310833, -0.299315,
		36.844002, 41.733120, 41.402946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156631, 41.238689, 41.453167>,  <36.212528, 41.950703, 41.612469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156631, 41.238689, 41.453167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.528618, 41.328335, 41.569748>,  <36.751808, 41.382122, 41.639698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.528618, 41.328335, 41.569748>,  <36.156631, 41.238689, 41.453167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528618, 41.328335, 41.569748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068325, -0.673569, 0.735959,
		0.361253, -0.704327, -0.611081,
		0.929961, 0.224115, 0.291452,
		36.807606, 41.395569, 41.657185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427025, 40.607735, 41.600704>,  <36.156631, 41.238689, 41.453167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427025, 40.607735, 41.600704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.698654, 40.853165, 41.761890>,  <36.861633, 41.000423, 41.858604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.698654, 40.853165, 41.761890>,  <36.427025, 40.607735, 41.600704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698654, 40.853165, 41.761890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006831, -0.543647, 0.839286,
		0.734037, -0.572691, -0.364986,
		0.679075, 0.613574, 0.402969,
		36.902378, 41.037235, 41.882782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904247, 40.216141, 41.792175>,  <36.427025, 40.607735, 41.600704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904247, 40.216141, 41.792175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953835, 40.522751, 42.044228>,  <36.983585, 40.706718, 42.195461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953835, 40.522751, 42.044228>,  <36.904247, 40.216141, 41.792175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953835, 40.522751, 42.044228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014434, -0.636359, 0.771258,
		0.992181, -0.086516, -0.089952,
		0.123968, 0.766526, 0.630135,
		36.991024, 40.752708, 42.233269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410103, 39.916058, 42.316750>,  <36.904247, 40.216141, 41.792175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410103, 39.916058, 42.316750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227772, 40.236942, 42.470985>,  <37.118374, 40.429474, 42.563526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227772, 40.236942, 42.470985>,  <37.410103, 39.916058, 42.316750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227772, 40.236942, 42.470985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151643, -0.496876, 0.854470,
		0.877054, 0.331020, 0.348140,
		-0.455829, 0.802209, 0.385590,
		37.091022, 40.477604, 42.586662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629730, 39.836735, 42.959015>,  <37.410103, 39.916058, 42.316750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629730, 39.836735, 42.959015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343639, 40.114834, 42.987537>,  <37.171986, 40.281693, 43.004650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.343639, 40.114834, 42.987537>,  <37.629730, 39.836735, 42.959015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343639, 40.114834, 42.987537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274138, -0.372935, 0.886435,
		0.642882, 0.614455, 0.457327,
		-0.715228, 0.695244, 0.071307,
		37.129070, 40.323406, 43.008930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145065, 40.340763, 42.743938>,  <37.629730, 39.836735, 42.959015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145065, 40.340763, 42.743938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527195, 40.439602, 42.808800>,  <38.756474, 40.498905, 42.847717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527195, 40.439602, 42.808800>,  <38.145065, 40.340763, 42.743938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527195, 40.439602, 42.808800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160758, 0.025934, -0.986653,
		-0.248002, 0.968644, -0.014947,
		0.955328, 0.247095, 0.162149,
		38.813793, 40.513729, 42.857445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315567, 40.842373, 42.262665>,  <38.145065, 40.340763, 42.743938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315567, 40.842373, 42.262665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684498, 40.729488, 42.368244>,  <38.905857, 40.661758, 42.431591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684498, 40.729488, 42.368244>,  <38.315567, 40.842373, 42.262665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684498, 40.729488, 42.368244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250782, -0.082505, -0.964521,
		0.293973, 0.955799, -0.005324,
		0.922328, -0.282208, 0.263951,
		38.961197, 40.644825, 42.447430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890327, 41.288662, 41.807068>,  <38.315567, 40.842373, 42.262665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890327, 41.288662, 41.807068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.049145, 40.951473, 41.952259>,  <39.144436, 40.749161, 42.039375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.049145, 40.951473, 41.952259>,  <38.890327, 41.288662, 41.807068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049145, 40.951473, 41.952259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288570, -0.260778, -0.921261,
		0.871256, 0.470523, 0.139717,
		0.397040, -0.842973, 0.362983,
		39.168255, 40.698582, 42.061153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663605, 41.403286, 41.765266>,  <38.890327, 41.288662, 41.807068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663605, 41.403286, 41.765266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.588779, 41.010483, 41.775597>,  <39.543884, 40.774799, 41.781796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.588779, 41.010483, 41.775597>,  <39.663605, 41.403286, 41.765266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588779, 41.010483, 41.775597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315938, -0.085033, -0.944961,
		0.930156, -0.168610, 0.326161,
		-0.187064, -0.982008, 0.025823,
		39.532661, 40.715881, 41.783344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324642, 41.081703, 41.541214>,  <39.663605, 41.403286, 41.765266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324642, 41.081703, 41.541214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027672, 40.814556, 41.520184>,  <39.849491, 40.654270, 41.507565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.027672, 40.814556, 41.520184>,  <40.324642, 41.081703, 41.541214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027672, 40.814556, 41.520184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286667, -0.245774, -0.925968,
		0.605499, -0.702533, 0.373924,
		-0.742424, -0.667864, -0.052577,
		39.804943, 40.614197, 41.504410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557632, 40.406994, 41.431183>,  <40.324642, 41.081703, 41.541214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557632, 40.406994, 41.431183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.184448, 40.412880, 41.287312>,  <39.960537, 40.416412, 41.200989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.184448, 40.412880, 41.287312>,  <40.557632, 40.406994, 41.431183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184448, 40.412880, 41.287312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335685, -0.325297, -0.884023,
		-0.130012, -0.945497, 0.298549,
		-0.932959, 0.014715, -0.359682,
		39.904560, 40.417294, 41.179405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609825, 39.742249, 41.172085>,  <40.557632, 40.406994, 41.431183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609825, 39.742249, 41.172085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284256, 39.920040, 41.022442>,  <40.088913, 40.026714, 40.932655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284256, 39.920040, 41.022442>,  <40.609825, 39.742249, 41.172085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284256, 39.920040, 41.022442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180984, -0.417909, -0.890279,
		-0.552058, -0.792330, 0.259703,
		-0.813927, 0.444483, -0.374109,
		40.040077, 40.053387, 40.910210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215641, 39.229355, 40.800621>,  <40.609825, 39.742249, 41.172085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215641, 39.229355, 40.800621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118748, 39.588364, 40.653225>,  <40.060612, 39.803768, 40.564789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118748, 39.588364, 40.653225>,  <40.215641, 39.229355, 40.800621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118748, 39.588364, 40.653225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143027, -0.342617, -0.928524,
		-0.959619, -0.277620, -0.045377,
		-0.242230, 0.897519, -0.368489,
		40.046078, 39.857620, 40.542679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794277, 39.123302, 40.149475>,  <40.215641, 39.229355, 40.800621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794277, 39.123302, 40.149475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927692, 39.499016, 40.117222>,  <40.007744, 39.724442, 40.097870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.927692, 39.499016, 40.117222>,  <39.794277, 39.123302, 40.149475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927692, 39.499016, 40.117222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156173, -0.139399, -0.977844,
		-0.929710, 0.313558, -0.193185,
		0.333541, 0.939281, -0.080631,
		40.027756, 39.780800, 40.093033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384556, 39.435406, 39.775753>,  <39.794277, 39.123302, 40.149475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384556, 39.435406, 39.775753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.733047, 39.627937, 39.737217>,  <39.942142, 39.743454, 39.714096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.733047, 39.627937, 39.737217>,  <39.384556, 39.435406, 39.775753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733047, 39.627937, 39.737217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044722, -0.117618, -0.992051,
		-0.488830, 0.868615, -0.080946,
		0.871232, 0.481325, -0.096341,
		39.994415, 39.772335, 39.708313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296455, 40.000530, 39.211979>,  <39.384556, 39.435406, 39.775753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296455, 40.000530, 39.211979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.694271, 39.982224, 39.249481>,  <39.932961, 39.971237, 39.271984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.694271, 39.982224, 39.249481>,  <39.296455, 40.000530, 39.211979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694271, 39.982224, 39.249481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100904, 0.193492, -0.975899,
		0.026524, 0.980034, 0.197055,
		0.994543, -0.045769, 0.093757,
		39.992634, 39.968494, 39.277607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491570, 40.548450, 38.897686>,  <39.296455, 40.000530, 39.211979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491570, 40.548450, 38.897686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.804924, 40.299854, 38.900551>,  <39.992939, 40.150696, 38.902267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.804924, 40.299854, 38.900551>,  <39.491570, 40.548450, 38.897686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804924, 40.299854, 38.900551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117432, 0.136694, -0.983628,
		0.610336, 0.771405, 0.180067,
		0.783390, -0.621489, 0.007158,
		40.039940, 40.113407, 38.902699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993824, 40.828136, 38.487991>,  <39.491570, 40.548450, 38.897686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993824, 40.828136, 38.487991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118011, 40.447960, 38.494614>,  <40.192524, 40.219852, 38.498589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118011, 40.447960, 38.494614>,  <39.993824, 40.828136, 38.487991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118011, 40.447960, 38.494614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272516, 0.072302, -0.959431,
		0.910685, 0.302382, 0.281458,
		0.310464, -0.950441, 0.016560,
		40.211151, 40.162827, 38.499580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735359, 40.844276, 38.223862>,  <39.993824, 40.828136, 38.487991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735359, 40.844276, 38.223862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.581364, 40.482365, 38.151028>,  <40.488968, 40.265217, 38.107327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.581364, 40.482365, 38.151028>,  <40.735359, 40.844276, 38.223862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581364, 40.482365, 38.151028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282696, 0.072200, -0.956488,
		0.878560, -0.419709, 0.227983,
		-0.384986, -0.904783, -0.182082,
		40.465866, 40.210930, 38.096401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.487284, 42.451984, 31.199284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693623, 42.328323, 30.879702>,  <26.817425, 42.254128, 30.687952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693623, 42.328323, 30.879702>,  <26.487284, 42.451984, 31.199284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693623, 42.328323, 30.879702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212425, -0.949650, 0.230305,
		-0.829926, 0.050916, -0.555544,
		0.515846, -0.309148, -0.798955,
		26.848377, 42.235580, 30.640015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125515, 41.901447, 30.796757>,  <26.487284, 42.451984, 31.199284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125515, 41.901447, 30.796757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.515903, 41.873669, 30.714140>,  <26.750135, 41.857002, 30.664570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.515903, 41.873669, 30.714140>,  <26.125515, 41.901447, 30.796757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515903, 41.873669, 30.714140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072575, -0.997334, -0.007580,
		-0.205465, 0.022388, -0.978408,
		0.975970, -0.069450, -0.206542,
		26.808695, 41.852833, 30.652178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134970, 41.440701, 30.258186>,  <26.125515, 41.901447, 30.796757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134970, 41.440701, 30.258186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.490057, 41.430351, 30.442051>,  <26.703110, 41.424141, 30.552370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.490057, 41.430351, 30.442051>,  <26.134970, 41.440701, 30.258186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490057, 41.430351, 30.442051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034285, -0.999362, 0.009962,
		0.459110, -0.024603, -0.888039,
		0.887718, -0.025873, 0.459660,
		26.756372, 41.422588, 30.579948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504168, 40.857700, 29.973007>,  <26.134970, 41.440701, 30.258186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504168, 40.857700, 29.973007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705288, 40.927395, 30.311670>,  <26.825960, 40.969212, 30.514868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705288, 40.927395, 30.311670>,  <26.504168, 40.857700, 29.973007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705288, 40.927395, 30.311670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130714, -0.983536, 0.124784,
		0.854462, 0.047928, -0.517299,
		0.502801, 0.174241, 0.846659,
		26.856129, 40.979668, 30.565668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045977, 40.419369, 29.924932>,  <26.504168, 40.857700, 29.973007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045977, 40.419369, 29.924932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020033, 40.485733, 30.318535>,  <27.004467, 40.525551, 30.554697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020033, 40.485733, 30.318535>,  <27.045977, 40.419369, 29.924932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020033, 40.485733, 30.318535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234364, -0.955968, 0.176630,
		0.969983, 0.242072, 0.023122,
		-0.064861, 0.165909, 0.984006,
		27.000574, 40.535507, 30.613737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514931, 39.945686, 30.205141>,  <27.045977, 40.419369, 29.924932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514931, 39.945686, 30.205141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309412, 40.060448, 30.528547>,  <27.186100, 40.129303, 30.722591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309412, 40.060448, 30.528547>,  <27.514931, 39.945686, 30.205141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309412, 40.060448, 30.528547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264300, -0.843654, 0.467326,
		0.816185, 0.453802, 0.357640,
		-0.513798, 0.286900, 0.808517,
		27.155273, 40.146519, 30.771103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995319, 39.849953, 30.776400>,  <27.514931, 39.945686, 30.205141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995319, 39.849953, 30.776400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627817, 39.836456, 30.933754>,  <27.407316, 39.828358, 31.028168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.627817, 39.836456, 30.933754>,  <27.995319, 39.849953, 30.776400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627817, 39.836456, 30.933754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237674, -0.842866, 0.482792,
		0.315282, 0.537065, 0.782405,
		-0.918754, -0.033741, 0.393387,
		27.352192, 39.826332, 31.051769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105425, 39.556492, 31.384579>,  <27.995319, 39.849953, 30.776400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105425, 39.556492, 31.384579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715876, 39.496399, 31.316463>,  <27.482145, 39.460342, 31.275595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715876, 39.496399, 31.316463>,  <28.105425, 39.556492, 31.384579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715876, 39.496399, 31.316463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009776, -0.776918, 0.629526,
		-0.226875, 0.611414, 0.758089,
		-0.973875, -0.150235, -0.170286,
		27.423714, 39.451328, 31.265377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874893, 39.364933, 32.090240>,  <28.105425, 39.556492, 31.384579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874893, 39.364933, 32.090240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616869, 39.237194, 31.812561>,  <27.462053, 39.160549, 31.645954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616869, 39.237194, 31.812561>,  <27.874893, 39.364933, 32.090240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616869, 39.237194, 31.812561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087310, -0.871728, 0.482148,
		-0.759126, 0.371626, 0.534437,
		-0.645062, -0.319349, -0.694198,
		27.423351, 39.141388, 31.604301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454201, 39.157280, 32.483894>,  <27.874893, 39.364933, 32.090240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454201, 39.157280, 32.483894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364992, 38.991184, 32.131115>,  <27.311468, 38.891525, 31.919447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.364992, 38.991184, 32.131115>,  <27.454201, 39.157280, 32.483894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364992, 38.991184, 32.131115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273836, -0.841619, 0.465501,
		-0.935562, 0.345326, 0.073990,
		-0.223021, -0.415244, -0.881949,
		27.298086, 38.866611, 31.866529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741821, 38.984436, 32.495651>,  <27.454201, 39.157280, 32.483894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741821, 38.984436, 32.495651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915377, 38.750065, 32.221882>,  <27.019510, 38.609444, 32.057621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915377, 38.750065, 32.221882>,  <26.741821, 38.984436, 32.495651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915377, 38.750065, 32.221882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417886, -0.803873, 0.423273,
		-0.798184, 0.102343, -0.593656,
		0.433905, -0.585930, -0.684406,
		27.045544, 38.574287, 32.016556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226784, 38.421936, 32.529583>,  <26.741821, 38.984436, 32.495651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226784, 38.421936, 32.529583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.540232, 38.283897, 32.322956>,  <26.728300, 38.201073, 32.198978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.540232, 38.283897, 32.322956>,  <26.226784, 38.421936, 32.529583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540232, 38.283897, 32.322956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193804, -0.925816, 0.324505,
		-0.590235, -0.154176, -0.792371,
		0.783622, -0.345099, -0.516569,
		26.775318, 38.180367, 32.167984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051966, 37.870911, 32.018574>,  <26.226784, 38.421936, 32.529583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051966, 37.870911, 32.018574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439224, 37.798752, 32.088028>,  <26.671579, 37.755455, 32.129700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.439224, 37.798752, 32.088028>,  <26.051966, 37.870911, 32.018574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439224, 37.798752, 32.088028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224939, -0.931245, 0.286679,
		0.109977, -0.316604, -0.942161,
		0.968147, -0.180401, 0.173632,
		26.729668, 37.744633, 32.140118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161551, 37.190250, 31.834349>,  <26.051966, 37.870911, 32.018574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161551, 37.190250, 31.834349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.437782, 37.297993, 32.102840>,  <26.603521, 37.362637, 32.263935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.437782, 37.297993, 32.102840>,  <26.161551, 37.190250, 31.834349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437782, 37.297993, 32.102840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343859, -0.694192, 0.632344,
		0.636286, -0.667492, -0.386775,
		0.690580, 0.269355, 0.671228,
		26.644957, 37.378799, 32.304207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504658, 36.515102, 32.048977>,  <26.161551, 37.190250, 31.834349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504658, 36.515102, 32.048977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569830, 36.781063, 32.340553>,  <26.608934, 36.940639, 32.515499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.569830, 36.781063, 32.340553>,  <26.504658, 36.515102, 32.048977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569830, 36.781063, 32.340553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213431, -0.697568, 0.683993,
		0.963276, -0.267023, 0.028255,
		0.162932, 0.664904, 0.728942,
		26.618710, 36.980534, 32.559235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584818, 36.036022, 32.532528>,  <26.504658, 36.515102, 32.048977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584818, 36.036022, 32.532528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594519, 36.343182, 32.788574>,  <26.600340, 36.527477, 32.942200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594519, 36.343182, 32.788574>,  <26.584818, 36.036022, 32.532528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594519, 36.343182, 32.788574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223806, -0.619879, 0.752104,
		0.974332, -0.161501, 0.156827,
		0.024251, 0.767898, 0.640113,
		26.601793, 36.573551, 32.980610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046278, 35.891720, 33.095253>,  <26.584818, 36.036022, 32.532528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046278, 35.891720, 33.095253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782036, 36.158390, 33.233322>,  <26.623491, 36.318394, 33.316166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782036, 36.158390, 33.233322>,  <27.046278, 35.891720, 33.095253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782036, 36.158390, 33.233322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187005, -0.591420, 0.784379,
		0.727069, 0.453616, 0.515367,
		-0.660605, 0.666674, 0.345175,
		26.583855, 36.358391, 33.336876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118847, 35.881989, 33.826115>,  <27.046278, 35.891720, 33.095253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118847, 35.881989, 33.826115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.756899, 36.041248, 33.765869>,  <26.539730, 36.136803, 33.729721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.756899, 36.041248, 33.765869>,  <27.118847, 35.881989, 33.826115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756899, 36.041248, 33.765869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272914, -0.271062, 0.923062,
		0.326691, 0.876357, 0.353937,
		-0.904871, 0.398150, -0.150617,
		26.485437, 36.160694, 33.720684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417061, 35.834770, 34.484131>,  <27.118847, 35.881989, 33.826115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417061, 35.834770, 34.484131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697346, 35.730450, 34.749756>,  <27.865517, 35.667858, 34.909130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697346, 35.730450, 34.749756>,  <27.417061, 35.834770, 34.484131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697346, 35.730450, 34.749756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012005, 0.926349, 0.376476,
		-0.713343, -0.271774, 0.645973,
		0.700712, -0.260801, 0.664067,
		27.907560, 35.652210, 34.948975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237246, 36.038181, 35.201782>,  <27.417061, 35.834770, 34.484131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237246, 36.038181, 35.201782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635622, 36.003860, 35.212662>,  <27.874647, 35.983269, 35.219189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635622, 36.003860, 35.212662>,  <27.237246, 36.038181, 35.201782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635622, 36.003860, 35.212662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067325, 0.910643, 0.407673,
		-0.059748, -0.404187, 0.912723,
		0.995941, -0.085806, 0.027197,
		27.934404, 35.978119, 35.220821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506577, 36.314415, 35.811695>,  <27.237246, 36.038181, 35.201782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506577, 36.314415, 35.811695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808784, 36.318981, 35.549686>,  <27.990108, 36.321720, 35.392479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808784, 36.318981, 35.549686>,  <27.506577, 36.314415, 35.811695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808784, 36.318981, 35.549686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102621, 0.985444, 0.135534,
		0.647038, -0.169619, 0.743352,
		0.755520, 0.011412, -0.655026,
		28.035440, 36.322403, 35.353180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192587, 36.636902, 36.150227>,  <27.506577, 36.314415, 35.811695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192587, 36.636902, 36.150227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193447, 36.659500, 35.750866>,  <28.193964, 36.673058, 35.511250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193447, 36.659500, 35.750866>,  <28.192587, 36.636902, 36.150227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193447, 36.659500, 35.750866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412216, 0.909581, 0.052358,
		0.911084, -0.411669, -0.021332,
		0.002151, 0.056496, -0.998401,
		28.194092, 36.676449, 35.451347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746367, 37.081722, 36.101807>,  <28.192587, 36.636902, 36.150227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746367, 37.081722, 36.101807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530207, 37.079639, 35.765247>,  <28.400511, 37.078388, 35.563313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.530207, 37.079639, 35.765247>,  <28.746367, 37.081722, 36.101807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530207, 37.079639, 35.765247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246698, 0.955054, -0.164354,
		0.804432, -0.296387, -0.514825,
		-0.540398, -0.005206, -0.841393,
		28.368088, 37.078079, 35.512829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164761, 37.621113, 35.617832>,  <28.746367, 37.081722, 36.101807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164761, 37.621113, 35.617832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.824871, 37.569286, 35.413406>,  <28.620937, 37.538193, 35.290752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.824871, 37.569286, 35.413406>,  <29.164761, 37.621113, 35.617832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824871, 37.569286, 35.413406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078034, 0.927754, -0.364942,
		0.521424, -0.349980, -0.778223,
		-0.849722, -0.129562, -0.511063,
		28.569954, 37.530418, 35.260086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279295, 37.827084, 34.875797>,  <29.164761, 37.621113, 35.617832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279295, 37.827084, 34.875797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.886860, 37.867588, 34.941780>,  <28.651398, 37.891891, 34.981369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.886860, 37.867588, 34.941780>,  <29.279295, 37.827084, 34.875797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886860, 37.867588, 34.941780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008651, 0.828448, -0.560000,
		-0.193365, -0.550836, -0.811905,
		-0.981089, 0.101260, 0.164958,
		28.592533, 37.897964, 34.991268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970871, 38.020649, 34.213230>,  <29.279295, 37.827084, 34.875797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970871, 38.020649, 34.213230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.727930, 38.145374, 34.505501>,  <28.582165, 38.220211, 34.680862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.727930, 38.145374, 34.505501>,  <28.970871, 38.020649, 34.213230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727930, 38.145374, 34.505501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051467, 0.902375, -0.427868,
		-0.792763, -0.297473, -0.532012,
		-0.607354, 0.311817, 0.730679,
		28.545723, 38.238918, 34.724705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470531, 38.278065, 33.902561>,  <28.970871, 38.020649, 34.213230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470531, 38.278065, 33.902561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.463610, 38.431873, 34.271744>,  <28.459457, 38.524158, 34.493252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.463610, 38.431873, 34.271744>,  <28.470531, 38.278065, 33.902561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463610, 38.431873, 34.271744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038065, 0.922678, -0.383688,
		-0.999125, 0.028493, -0.030601,
		-0.017303, 0.384517, 0.922956,
		28.458418, 38.547230, 34.548630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996544, 38.813129, 33.817284>,  <28.470531, 38.278065, 33.902561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996544, 38.813129, 33.817284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193819, 38.894779, 34.155537>,  <28.312183, 38.943768, 34.358490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193819, 38.894779, 34.155537>,  <27.996544, 38.813129, 33.817284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193819, 38.894779, 34.155537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123326, 0.978669, -0.164307,
		-0.861137, -0.023255, 0.507841,
		0.493188, 0.204121, 0.845636,
		28.341776, 38.956017, 34.409229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542278, 39.279083, 34.196098>,  <27.996544, 38.813129, 33.817284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542278, 39.279083, 34.196098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.907993, 39.336205, 34.347725>,  <28.127422, 39.370476, 34.438702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.907993, 39.336205, 34.347725>,  <27.542278, 39.279083, 34.196098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907993, 39.336205, 34.347725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165812, 0.985743, 0.028586,
		-0.369578, -0.088989, 0.924929,
		0.914286, 0.142800, 0.379065,
		28.182280, 39.379044, 34.461445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420195, 39.713188, 34.709198>,  <27.542278, 39.279083, 34.196098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420195, 39.713188, 34.709198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808722, 39.747276, 34.620403>,  <28.041838, 39.767727, 34.567127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.808722, 39.747276, 34.620403>,  <27.420195, 39.713188, 34.709198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808722, 39.747276, 34.620403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091311, 0.995672, -0.017311,
		0.219554, 0.037084, 0.974895,
		0.971318, 0.085219, -0.221990,
		28.100117, 39.772842, 34.553806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734392, 40.217575, 35.109501>,  <27.420195, 39.713188, 34.709198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734392, 40.217575, 35.109501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023117, 40.207924, 34.832832>,  <28.196352, 40.202133, 34.666832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023117, 40.207924, 34.832832>,  <27.734392, 40.217575, 35.109501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023117, 40.207924, 34.832832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068256, 0.992038, -0.105838,
		0.688714, 0.123606, 0.714419,
		0.721813, -0.024128, -0.691668,
		28.239660, 40.200684, 34.625332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003132, 40.794945, 35.070015>,  <27.734392, 40.217575, 35.109501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003132, 40.794945, 35.070015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164896, 40.682514, 34.721889>,  <28.261953, 40.615055, 34.513012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164896, 40.682514, 34.721889>,  <28.003132, 40.794945, 35.070015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164896, 40.682514, 34.721889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014835, 0.953495, -0.301043,
		0.914458, 0.108834, 0.389772,
		0.404410, -0.281073, -0.870316,
		28.286219, 40.598190, 34.460796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529053, 41.396313, 34.871181>,  <28.003132, 40.794945, 35.070015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529053, 41.396313, 34.871181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476765, 41.201538, 34.525742>,  <28.445393, 41.084675, 34.318478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476765, 41.201538, 34.525742>,  <28.529053, 41.396313, 34.871181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476765, 41.201538, 34.525742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041019, 0.867671, -0.495443,
		0.990571, -0.100187, -0.093446,
		-0.130718, -0.486938, -0.863600,
		28.437550, 41.055458, 34.266663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923456, 41.759102, 34.395329>,  <28.529053, 41.396313, 34.871181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923456, 41.759102, 34.395329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674788, 41.559925, 34.153473>,  <28.525587, 41.440418, 34.008362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.674788, 41.559925, 34.153473>,  <28.923456, 41.759102, 34.395329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674788, 41.559925, 34.153473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139475, 0.829964, -0.540098,
		0.770760, -0.251432, -0.585416,
		-0.621672, -0.497937, -0.604635,
		28.488287, 41.410545, 33.972080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108536, 41.962086, 33.780933>,  <28.923456, 41.759102, 34.395329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108536, 41.962086, 33.780933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.736029, 41.824772, 33.732109>,  <28.512526, 41.742382, 33.702812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.736029, 41.824772, 33.732109>,  <29.108536, 41.962086, 33.780933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736029, 41.824772, 33.732109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195644, 0.753799, -0.627304,
		0.307355, -0.560306, -0.769149,
		-0.931266, -0.343284, -0.122063,
		28.456648, 41.721786, 33.695492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961975, 42.224777, 33.165901>,  <29.108536, 41.962086, 33.780933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961975, 42.224777, 33.165901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615658, 42.108887, 33.329098>,  <28.407867, 42.039352, 33.427017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615658, 42.108887, 33.329098>,  <28.961975, 42.224777, 33.165901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615658, 42.108887, 33.329098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488494, 0.666173, -0.563549,
		-0.108516, -0.687218, -0.718300,
		-0.865793, -0.289731, 0.407992,
		28.355919, 42.021969, 33.451496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500290, 42.132534, 32.656414>,  <28.961975, 42.224777, 33.165901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500290, 42.132534, 32.656414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271986, 42.192787, 32.979286>,  <28.135004, 42.228939, 33.173012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271986, 42.192787, 32.979286>,  <28.500290, 42.132534, 32.656414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271986, 42.192787, 32.979286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564335, 0.642108, -0.518867,
		-0.596457, -0.751670, -0.281481,
		-0.570758, 0.150632, 0.807183,
		28.100758, 42.237976, 33.221439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885077, 42.268803, 32.343021>,  <28.500290, 42.132534, 32.656414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885077, 42.268803, 32.343021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887499, 42.412197, 32.716427>,  <27.888952, 42.498234, 32.940472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887499, 42.412197, 32.716427>,  <27.885077, 42.268803, 32.343021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887499, 42.412197, 32.716427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551163, 0.780126, -0.296010,
		-0.834375, -0.512726, 0.202312,
		0.006057, 0.358490, 0.933514,
		27.889317, 42.519745, 32.996483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255217, 42.536171, 32.315208>,  <27.885077, 42.268803, 32.343021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255217, 42.536171, 32.315208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471060, 42.703529, 32.607449>,  <27.600565, 42.803944, 32.782791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471060, 42.703529, 32.607449>,  <27.255217, 42.536171, 32.315208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471060, 42.703529, 32.607449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385868, 0.894172, -0.227073,
		-0.748284, -0.159383, 0.643947,
		0.539608, 0.418394, 0.730596,
		27.632942, 42.829048, 32.826626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843229, 43.149258, 32.604324>,  <27.255217, 42.536171, 32.315208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843229, 43.149258, 32.604324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.216343, 43.207645, 32.736149>,  <27.440210, 43.242680, 32.815243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.216343, 43.207645, 32.736149>,  <26.843229, 43.149258, 32.604324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216343, 43.207645, 32.736149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069356, 0.969929, -0.233298,
		-0.353706, 0.194759, 0.914856,
		0.932782, 0.145970, 0.329562,
		27.496178, 43.251438, 32.835018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840668, 43.726860, 33.134266>,  <26.843229, 43.149258, 32.604324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840668, 43.726860, 33.134266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204243, 43.713402, 32.968037>,  <27.422388, 43.705326, 32.868301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.204243, 43.713402, 32.968037>,  <26.840668, 43.726860, 33.134266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.204243, 43.713402, 32.968037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069631, 0.970492, -0.230861,
		0.411074, 0.238775, 0.879775,
		0.908939, -0.033642, -0.415570,
		27.476925, 43.703308, 32.843365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284267, 44.155651, 33.438744>,  <26.840668, 43.726860, 33.134266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284267, 44.155651, 33.438744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376478, 44.158306, 33.049526>,  <27.431805, 44.159901, 32.815994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.376478, 44.158306, 33.049526>,  <27.284267, 44.155651, 33.438744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376478, 44.158306, 33.049526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084520, 0.996334, -0.013225,
		0.969389, 0.085290, 0.230241,
		0.230525, 0.006640, -0.973044,
		27.445637, 44.160297, 32.757614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.907406, 38.263248, 43.686050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741615, 37.913849, 43.788200>,  <39.642143, 37.704208, 43.849491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.741615, 37.913849, 43.788200>,  <39.907406, 38.263248, 43.686050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741615, 37.913849, 43.788200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109057, 0.230922, 0.966841,
		-0.903503, 0.428581, -0.000450,
		-0.414474, -0.873495, 0.255378,
		39.617271, 37.651802, 43.864815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551796, 38.457935, 44.201031>,  <39.907406, 38.263248, 43.686050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551796, 38.457935, 44.201031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551323, 38.062923, 44.264000>,  <39.551041, 37.825916, 44.301781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551323, 38.062923, 44.264000>,  <39.551796, 38.457935, 44.201031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551323, 38.062923, 44.264000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064361, 0.157024, 0.985495,
		-0.997926, 0.011295, 0.063374,
		-0.001180, -0.987530, 0.157425,
		39.550968, 37.766663, 44.311226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069889, 38.234016, 44.649521>,  <39.551796, 38.457935, 44.201031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069889, 38.234016, 44.649521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.331783, 37.933212, 44.679962>,  <39.488922, 37.752728, 44.698227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.331783, 37.933212, 44.679962>,  <39.069889, 38.234016, 44.649521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331783, 37.933212, 44.679962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003373, 0.097783, 0.995202,
		-0.755848, -0.651853, 0.061486,
		0.654738, -0.752015, 0.076108,
		39.528206, 37.707607, 44.702793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876728, 37.986366, 45.289188>,  <39.069889, 38.234016, 44.649521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876728, 37.986366, 45.289188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.242317, 37.845161, 45.209160>,  <39.461670, 37.760437, 45.161144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.242317, 37.845161, 45.209160>,  <38.876728, 37.986366, 45.289188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242317, 37.845161, 45.209160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220660, 0.018620, 0.975173,
		-0.340525, -0.935433, 0.094915,
		0.913976, -0.353014, -0.200072,
		39.516510, 37.739258, 45.149139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072742, 37.334091, 45.682362>,  <38.876728, 37.986366, 45.289188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072742, 37.334091, 45.682362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.416473, 37.506630, 45.572456>,  <39.622711, 37.610153, 45.506512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.416473, 37.506630, 45.572456>,  <39.072742, 37.334091, 45.682362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416473, 37.506630, 45.572456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365150, -0.141319, 0.920160,
		0.358084, -0.891047, -0.278947,
		0.859327, 0.431352, -0.274762,
		39.674271, 37.636036, 45.490028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487061, 36.998642, 46.128849>,  <39.072742, 37.334091, 45.682362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487061, 36.998642, 46.128849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690140, 37.329861, 46.033707>,  <39.811989, 37.528591, 45.976620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690140, 37.329861, 46.033707>,  <39.487061, 36.998642, 46.128849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690140, 37.329861, 46.033707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498737, -0.057362, 0.864854,
		0.702496, -0.557715, -0.442100,
		0.507701, 0.828048, -0.237857,
		39.842449, 37.578274, 45.962349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077118, 36.842258, 46.512699>,  <39.487061, 36.998642, 46.128849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077118, 36.842258, 46.512699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.094185, 37.232704, 46.427490>,  <40.104424, 37.466972, 46.376366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.094185, 37.232704, 46.427490>,  <40.077118, 36.842258, 46.512699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094185, 37.232704, 46.427490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326985, 0.187830, 0.926175,
		0.944066, -0.109174, -0.311161,
		0.042669, 0.976115, -0.213022,
		40.106987, 37.525539, 46.363583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798260, 37.125320, 46.749630>,  <40.077118, 36.842258, 46.512699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798260, 37.125320, 46.749630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559681, 37.445969, 46.733318>,  <40.416534, 37.638355, 46.723534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.559681, 37.445969, 46.733318>,  <40.798260, 37.125320, 46.749630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559681, 37.445969, 46.733318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329815, 0.291080, 0.898050,
		0.731762, 0.522189, -0.437999,
		-0.596445, 0.801618, -0.040775,
		40.380749, 37.686455, 46.721085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203884, 37.755497, 47.027573>,  <40.798260, 37.125320, 46.749630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203884, 37.755497, 47.027573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809105, 37.811508, 47.059376>,  <40.572235, 37.845116, 47.078457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809105, 37.811508, 47.059376>,  <41.203884, 37.755497, 47.027573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809105, 37.811508, 47.059376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122907, 0.336124, 0.933764,
		0.104027, 0.931350, -0.348948,
		-0.986951, 0.140025, 0.079504,
		40.513020, 37.853516, 47.083225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158867, 38.516521, 47.335835>,  <41.203884, 37.755497, 47.027573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158867, 38.516521, 47.335835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.824001, 38.318497, 47.428852>,  <40.623081, 38.199684, 47.484661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.824001, 38.318497, 47.428852>,  <41.158867, 38.516521, 47.335835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824001, 38.318497, 47.428852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077207, 0.527864, 0.845813,
		-0.541479, 0.690128, -0.480129,
		-0.837162, -0.495059, 0.232544,
		40.572853, 38.169979, 47.498615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695396, 39.010872, 47.797806>,  <41.158867, 38.516521, 47.335835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695396, 39.010872, 47.797806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.586601, 38.629776, 47.851940>,  <40.521324, 38.401119, 47.884422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.586601, 38.629776, 47.851940>,  <40.695396, 39.010872, 47.797806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586601, 38.629776, 47.851940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016577, 0.145259, 0.989255,
		-0.962159, 0.266817, -0.055302,
		-0.271983, -0.952737, 0.135339,
		40.505005, 38.343956, 47.892540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397434, 38.728611, 48.465881>,  <40.695396, 39.010872, 47.797806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397434, 38.728611, 48.465881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.289604, 38.690487, 48.849182>,  <40.224907, 38.667614, 49.079163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.289604, 38.690487, 48.849182>,  <40.397434, 38.728611, 48.465881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289604, 38.690487, 48.849182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190277, 0.980743, 0.044020,
		-0.943994, -0.170467, -0.282517,
		-0.269572, -0.095311, 0.958252,
		40.208733, 38.661892, 49.136658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710709, 39.098785, 48.687618>,  <40.397434, 38.728611, 48.465881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710709, 39.098785, 48.687618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.975948, 39.115055, 48.986588>,  <40.135094, 39.124817, 49.165970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.975948, 39.115055, 48.986588>,  <39.710709, 39.098785, 48.687618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975948, 39.115055, 48.986588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027146, 0.999173, -0.030286,
		-0.748037, -0.000207, 0.663657,
		0.663102, 0.040670, 0.747424,
		40.174877, 39.127254, 49.210815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666660, 39.865181, 48.600262>,  <39.710709, 39.098785, 48.687618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666660, 39.865181, 48.600262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290611, 39.869297, 48.736534>,  <39.064983, 39.871769, 48.818298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.290611, 39.869297, 48.736534>,  <39.666660, 39.865181, 48.600262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290611, 39.869297, 48.736534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333665, -0.231798, -0.913749,
		0.069565, -0.972710, 0.221352,
		-0.940121, 0.010293, 0.340684,
		39.008575, 39.872383, 48.838741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233158, 39.475193, 48.143803>,  <39.666660, 39.865181, 48.600262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233158, 39.475193, 48.143803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944038, 39.667324, 48.342537>,  <38.770569, 39.782604, 48.461777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944038, 39.667324, 48.342537>,  <39.233158, 39.475193, 48.143803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944038, 39.667324, 48.342537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490908, 0.149139, -0.858351,
		-0.486391, -0.864314, 0.128001,
		-0.722795, 0.480331, 0.496838,
		38.727200, 39.811424, 48.491589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493645, 39.187347, 47.975368>,  <39.233158, 39.475193, 48.143803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493645, 39.187347, 47.975368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531578, 39.569805, 48.086220>,  <38.554337, 39.799278, 48.152729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531578, 39.569805, 48.086220>,  <38.493645, 39.187347, 47.975368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531578, 39.569805, 48.086220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309092, 0.292902, -0.904804,
		-0.946292, 0.000148, 0.323312,
		0.094833, 0.956143, 0.277125,
		38.560028, 39.856647, 48.169357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920193, 39.488079, 47.768127>,  <38.493645, 39.187347, 47.975368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920193, 39.488079, 47.768127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154362, 39.810295, 47.804764>,  <38.294865, 40.003624, 47.826744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154362, 39.810295, 47.804764>,  <37.920193, 39.488079, 47.768127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154362, 39.810295, 47.804764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364202, 0.362234, -0.857988,
		-0.724320, 0.468927, 0.505439,
		0.585421, 0.805539, 0.091589,
		38.329987, 40.051956, 47.832241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696941, 39.821815, 47.166210>,  <37.920193, 39.488079, 47.768127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696941, 39.821815, 47.166210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010090, 40.052082, 47.260632>,  <38.197979, 40.190243, 47.317284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010090, 40.052082, 47.260632>,  <37.696941, 39.821815, 47.166210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010090, 40.052082, 47.260632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059833, 0.447291, -0.892385,
		-0.619304, 0.684496, 0.384614,
		0.782868, 0.575670, 0.236054,
		38.244949, 40.224785, 47.331448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643845, 40.536037, 46.859802>,  <37.696941, 39.821815, 47.166210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643845, 40.536037, 46.859802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035591, 40.470497, 46.907131>,  <38.270638, 40.431171, 46.935528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035591, 40.470497, 46.907131>,  <37.643845, 40.536037, 46.859802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035591, 40.470497, 46.907131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160478, 0.274556, -0.948085,
		0.122863, 0.947507, 0.295186,
		0.979363, -0.163855, 0.118321,
		38.329399, 40.421341, 46.942627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896072, 41.111866, 46.542747>,  <37.643845, 40.536037, 46.859802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896072, 41.111866, 46.542747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192520, 40.843761, 46.558205>,  <38.370388, 40.682899, 46.567478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192520, 40.843761, 46.558205>,  <37.896072, 41.111866, 46.542747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192520, 40.843761, 46.558205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256294, 0.229255, -0.939018,
		0.620527, 0.705829, 0.341689,
		0.741120, -0.670260, 0.038641,
		38.414856, 40.642685, 46.569798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352962, 41.461838, 46.167366>,  <37.896072, 41.111866, 46.542747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352962, 41.461838, 46.167366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.459660, 41.076378, 46.161243>,  <38.523678, 40.845104, 46.157570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.459660, 41.076378, 46.161243>,  <38.352962, 41.461838, 46.167366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459660, 41.076378, 46.161243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248886, 0.084219, -0.964864,
		0.931076, 0.253563, 0.262303,
		0.266745, -0.963646, -0.015306,
		38.539684, 40.787285, 46.156651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936825, 41.525879, 45.889870>,  <38.352962, 41.461838, 46.167366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936825, 41.525879, 45.889870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828281, 41.144241, 45.839169>,  <38.763157, 40.915257, 45.808746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.828281, 41.144241, 45.839169>,  <38.936825, 41.525879, 45.889870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828281, 41.144241, 45.839169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257616, 0.054889, -0.964687,
		0.927361, -0.294430, 0.230895,
		-0.271359, -0.954096, -0.126752,
		38.746872, 40.858013, 45.801144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483406, 41.270432, 45.535896>,  <38.936825, 41.525879, 45.889870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483406, 41.270432, 45.535896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205238, 41.003445, 45.429405>,  <39.038338, 40.843250, 45.365509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.205238, 41.003445, 45.429405>,  <39.483406, 41.270432, 45.535896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205238, 41.003445, 45.429405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341997, 0.018426, -0.939520,
		0.632007, -0.744409, 0.215459,
		-0.695417, -0.667470, -0.266231,
		38.996613, 40.803204, 45.349537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800499, 40.788639, 45.136387>,  <39.483406, 41.270432, 45.535896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800499, 40.788639, 45.136387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.423649, 40.708179, 45.029095>,  <39.197540, 40.659904, 44.964722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.423649, 40.708179, 45.029095>,  <39.800499, 40.788639, 45.136387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423649, 40.708179, 45.029095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306422, -0.191941, -0.932344,
		0.136054, -0.960572, 0.242467,
		-0.942123, -0.201147, -0.268226,
		39.141010, 40.647835, 44.948627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842041, 40.139484, 44.726807>,  <39.800499, 40.788639, 45.136387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842041, 40.139484, 44.726807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.505295, 40.330368, 44.625977>,  <39.303249, 40.444897, 44.565479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.505295, 40.330368, 44.625977>,  <39.842041, 40.139484, 44.726807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505295, 40.330368, 44.625977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201771, -0.154898, -0.967107,
		-0.500554, -0.865033, 0.034117,
		-0.841863, 0.477206, -0.252073,
		39.252735, 40.473530, 44.550354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488861, 39.780579, 44.124187>,  <39.842041, 40.139484, 44.726807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488861, 39.780579, 44.124187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.301537, 40.133869, 44.114513>,  <39.189140, 40.345844, 44.108707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.301537, 40.133869, 44.114513>,  <39.488861, 39.780579, 44.124187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301537, 40.133869, 44.114513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004786, -0.024841, -0.999680,
		-0.883549, -0.468281, 0.007406,
		-0.468315, 0.883230, -0.024190,
		39.161041, 40.398838, 44.107258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815853, 39.683029, 43.739372>,  <39.488861, 39.780579, 44.124187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815853, 39.683029, 43.739372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.941467, 40.062752, 43.733673>,  <39.016834, 40.290585, 43.730255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.941467, 40.062752, 43.733673>,  <38.815853, 39.683029, 43.739372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941467, 40.062752, 43.733673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006721, -0.017227, -0.999829,
		-0.949388, 0.313885, -0.011790,
		0.314035, 0.949305, -0.014246,
		39.035679, 40.347542, 43.729401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324577, 40.044987, 43.369724>,  <38.815853, 39.683029, 43.739372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324577, 40.044987, 43.369724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632427, 40.297436, 43.330997>,  <38.817135, 40.448906, 43.307762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.632427, 40.297436, 43.330997>,  <38.324577, 40.044987, 43.369724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632427, 40.297436, 43.330997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002408, -0.154497, -0.987990,
		-0.638496, 0.760145, -0.120424,
		0.769621, 0.631118, -0.096815,
		38.863312, 40.486771, 43.301952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662971, 40.262299, 43.685894>,  <38.324577, 40.044987, 43.369724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662971, 40.262299, 43.685894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282898, 40.327602, 43.579693>,  <37.054852, 40.366787, 43.515972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282898, 40.327602, 43.579693>,  <37.662971, 40.262299, 43.685894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282898, 40.327602, 43.579693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292174, -0.169947, 0.941144,
		0.108533, 0.971835, 0.209183,
		-0.950187, 0.163263, -0.265500,
		36.997841, 40.376583, 43.500042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326427, 40.702183, 44.264729>,  <37.662971, 40.262299, 43.685894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326427, 40.702183, 44.264729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.042145, 40.494026, 44.075375>,  <36.871574, 40.369133, 43.961761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.042145, 40.494026, 44.075375>,  <37.326427, 40.702183, 44.264729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042145, 40.494026, 44.075375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351735, -0.319898, 0.879743,
		-0.609246, 0.791742, 0.044313,
		-0.710705, -0.520394, -0.473380,
		36.828934, 40.337910, 43.933361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648197, 40.868832, 44.574894>,  <37.326427, 40.702183, 44.264729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648197, 40.868832, 44.574894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.567787, 40.525249, 44.386517>,  <36.519543, 40.319099, 44.273491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.567787, 40.525249, 44.386517>,  <36.648197, 40.868832, 44.574894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567787, 40.525249, 44.386517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541230, -0.303327, 0.784259,
		-0.816492, 0.412546, -0.403915,
		-0.201025, -0.858952, -0.470947,
		36.507481, 40.267563, 44.245232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878773, 40.800694, 44.543232>,  <36.648197, 40.868832, 44.574894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878773, 40.800694, 44.543232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022041, 40.428314, 44.514786>,  <36.108002, 40.204887, 44.497719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022041, 40.428314, 44.514786>,  <35.878773, 40.800694, 44.543232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022041, 40.428314, 44.514786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497078, -0.254610, 0.829510,
		-0.790333, -0.261759, -0.553946,
		0.358172, -0.930944, -0.071112,
		36.129494, 40.149033, 44.493454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334068, 40.458733, 44.805431>,  <35.878773, 40.800694, 44.543232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334068, 40.458733, 44.805431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660393, 40.235012, 44.864254>,  <35.856190, 40.100780, 44.899548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660393, 40.235012, 44.864254>,  <35.334068, 40.458733, 44.805431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660393, 40.235012, 44.864254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288256, -0.172824, 0.941828,
		-0.501352, -0.810748, -0.302215,
		0.815815, -0.559303, 0.147058,
		35.905136, 40.067223, 44.908371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167370, 40.066059, 45.325241>,  <35.334068, 40.458733, 44.805431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167370, 40.066059, 45.325241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560429, 39.992287, 45.333103>,  <35.796265, 39.948025, 45.337822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560429, 39.992287, 45.333103>,  <35.167370, 40.066059, 45.325241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560429, 39.992287, 45.333103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057059, -0.199756, 0.978183,
		-0.176468, -0.962334, -0.206813,
		0.982651, -0.184419, 0.019659,
		35.855225, 39.936958, 45.339001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234318, 39.412693, 45.755306>,  <35.167370, 40.066059, 45.325241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234318, 39.412693, 45.755306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599564, 39.574535, 45.735233>,  <35.818710, 39.671638, 45.723190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.599564, 39.574535, 45.735233>,  <35.234318, 39.412693, 45.755306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599564, 39.574535, 45.735233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102879, -0.109560, 0.988642,
		0.394509, -0.907906, -0.141666,
		0.913115, 0.404603, -0.050182,
		35.873497, 39.695915, 45.720181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135342, 38.588074, 45.800766>,  <35.234318, 39.412693, 45.755306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135342, 38.588074, 45.800766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774540, 38.447651, 45.901279>,  <34.558060, 38.363400, 45.961586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774540, 38.447651, 45.901279>,  <35.135342, 38.588074, 45.800766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774540, 38.447651, 45.901279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373986, 0.344599, -0.861038,
		0.215679, -0.870639, -0.442121,
		-0.902007, -0.351055, 0.251284,
		34.503937, 38.342335, 45.976665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902718, 37.984074, 45.374454>,  <35.135342, 38.588074, 45.800766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902718, 37.984074, 45.374454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549484, 38.117538, 45.506409>,  <34.337543, 38.197617, 45.585583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.549484, 38.117538, 45.506409>,  <34.902718, 37.984074, 45.374454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549484, 38.117538, 45.506409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226468, 0.312655, -0.922474,
		-0.410938, -0.889334, -0.200537,
		-0.883087, 0.333664, 0.329888,
		34.284557, 38.217636, 45.605373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477879, 37.706715, 44.903362>,  <34.902718, 37.984074, 45.374454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477879, 37.706715, 44.903362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277134, 38.004803, 45.078991>,  <34.156689, 38.183655, 45.184368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277134, 38.004803, 45.078991>,  <34.477879, 37.706715, 44.903362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277134, 38.004803, 45.078991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229015, 0.375031, -0.898278,
		-0.834080, -0.551365, -0.017547,
		-0.501860, 0.745217, 0.439076,
		34.126575, 38.228367, 45.210712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883705, 37.787262, 44.564304>,  <34.477879, 37.706715, 44.903362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883705, 37.787262, 44.564304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872402, 38.146252, 44.740368>,  <33.865620, 38.361645, 44.846004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.872402, 38.146252, 44.740368>,  <33.883705, 37.787262, 44.564304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872402, 38.146252, 44.740368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407876, 0.391660, -0.824767,
		-0.912600, -0.202832, 0.354993,
		-0.028253, 0.897475, 0.440159,
		33.863926, 38.415493, 44.872417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259251, 38.061893, 44.346241>,  <33.883705, 37.787262, 44.564304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259251, 38.061893, 44.346241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466084, 38.383022, 44.464966>,  <33.590183, 38.575699, 44.536201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466084, 38.383022, 44.464966>,  <33.259251, 38.061893, 44.346241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466084, 38.383022, 44.464966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335462, 0.509114, -0.792634,
		-0.787457, 0.310289, 0.532571,
		0.517085, 0.802822, 0.296815,
		33.621208, 38.623871, 44.554008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830860, 38.681351, 44.200684>,  <33.259251, 38.061893, 44.346241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830860, 38.681351, 44.200684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206436, 38.818420, 44.213139>,  <33.431782, 38.900661, 44.220612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206436, 38.818420, 44.213139>,  <32.830860, 38.681351, 44.200684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206436, 38.818420, 44.213139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097625, 0.352094, -0.930859,
		-0.329944, 0.870980, 0.364048,
		0.938939, 0.342671, 0.031142,
		33.488117, 38.921223, 44.222481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744049, 39.329826, 43.924858>,  <32.830860, 38.681351, 44.200684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744049, 39.329826, 43.924858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136257, 39.259880, 43.889088>,  <33.371582, 39.217911, 43.867626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136257, 39.259880, 43.889088>,  <32.744049, 39.329826, 43.924858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136257, 39.259880, 43.889088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026536, 0.333177, -0.942491,
		0.194605, 0.926507, 0.322047,
		0.980523, -0.174868, -0.089423,
		33.430412, 39.207420, 43.862259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.349876, 34.805565, 47.941677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.646809, 35.071133, 47.905548>,  <38.824966, 35.230473, 47.883873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.646809, 35.071133, 47.905548>,  <38.349876, 34.805565, 47.941677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646809, 35.071133, 47.905548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049310, -0.188565, -0.980822,
		-0.668217, 0.723641, -0.172715,
		0.742331, 0.663918, -0.090320,
		38.869507, 35.270309, 47.878452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128082, 35.206425, 47.417156>,  <38.349876, 34.805565, 47.941677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128082, 35.206425, 47.417156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.526688, 35.233116, 47.437176>,  <38.765850, 35.249130, 47.449188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.526688, 35.233116, 47.437176>,  <38.128082, 35.206425, 47.417156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526688, 35.233116, 47.437176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063195, -0.212313, -0.975156,
		-0.054443, 0.974921, -0.215790,
		0.996515, 0.066727, 0.050051,
		38.825642, 35.253136, 47.452190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301319, 35.475281, 46.825756>,  <38.128082, 35.206425, 47.417156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301319, 35.475281, 46.825756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.642857, 35.304810, 46.945309>,  <38.847778, 35.202526, 47.017040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.642857, 35.304810, 46.945309>,  <38.301319, 35.475281, 46.825756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642857, 35.304810, 46.945309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143975, -0.358426, -0.922389,
		0.500226, 0.830606, -0.244680,
		0.853841, -0.426175, 0.298880,
		38.899010, 35.176956, 47.034973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747761, 35.685677, 46.250332>,  <38.301319, 35.475281, 46.825756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747761, 35.685677, 46.250332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.919323, 35.366943, 46.420555>,  <39.022259, 35.175701, 46.522690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.919323, 35.366943, 46.420555>,  <38.747761, 35.685677, 46.250332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919323, 35.366943, 46.420555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136610, -0.408455, -0.902498,
		0.892962, 0.445218, -0.066331,
		0.428901, -0.796835, 0.425556,
		39.047993, 35.127892, 46.548222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288452, 35.515026, 45.852543>,  <38.747761, 35.685677, 46.250332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288452, 35.515026, 45.852543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.210304, 35.169453, 46.038208>,  <39.163418, 34.962109, 46.149605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.210304, 35.169453, 46.038208>,  <39.288452, 35.515026, 45.852543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210304, 35.169453, 46.038208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191363, -0.497763, -0.845938,
		0.961879, -0.076445, 0.262572,
		-0.195366, -0.863937, 0.464160,
		39.151695, 34.910271, 46.177456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837776, 35.115944, 45.759800>,  <39.288452, 35.515026, 45.852543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837776, 35.115944, 45.759800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.560352, 34.845509, 45.859303>,  <39.393898, 34.683247, 45.919003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.560352, 34.845509, 45.859303>,  <39.837776, 35.115944, 45.759800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560352, 34.845509, 45.859303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393646, -0.644859, -0.655133,
		0.603345, -0.356448, 0.713386,
		-0.693555, -0.676093, 0.248758,
		39.352287, 34.642681, 45.933929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152569, 34.454254, 45.513855>,  <39.837776, 35.115944, 45.759800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152569, 34.454254, 45.513855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.759583, 34.396172, 45.560619>,  <39.523788, 34.361320, 45.588676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.759583, 34.396172, 45.560619>,  <40.152569, 34.454254, 45.513855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759583, 34.396172, 45.560619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013700, -0.569185, -0.822095,
		0.185919, -0.809285, 0.557217,
		-0.982469, -0.145209, 0.116910,
		39.464840, 34.352608, 45.595692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951733, 33.712116, 45.378559>,  <40.152569, 34.454254, 45.513855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951733, 33.712116, 45.378559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.627167, 33.938030, 45.318382>,  <39.432426, 34.073578, 45.282276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.627167, 33.938030, 45.318382>,  <39.951733, 33.712116, 45.378559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627167, 33.938030, 45.318382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131535, -0.427248, -0.894516,
		-0.569484, -0.706031, 0.420962,
		-0.811410, 0.564784, -0.150443,
		39.383743, 34.107464, 45.273251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664387, 33.399204, 44.860222>,  <39.951733, 33.712116, 45.378559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664387, 33.399204, 44.860222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.442112, 33.730949, 44.837021>,  <39.308746, 33.929996, 44.823101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.442112, 33.730949, 44.837021>,  <39.664387, 33.399204, 44.860222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442112, 33.730949, 44.837021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395436, -0.325030, -0.859061,
		-0.731330, -0.454432, 0.508576,
		-0.555687, 0.829366, -0.058005,
		39.275406, 33.979759, 44.819618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159748, 33.115936, 44.444122>,  <39.664387, 33.399204, 44.860222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159748, 33.115936, 44.444122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.123497, 33.514217, 44.451683>,  <39.101746, 33.753185, 44.456219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.123497, 33.514217, 44.451683>,  <39.159748, 33.115936, 44.444122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123497, 33.514217, 44.451683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490234, -0.028083, -0.871138,
		-0.866867, -0.088211, 0.490674,
		-0.090623, 0.995706, 0.018899,
		39.096310, 33.812927, 44.457352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461555, 33.273010, 44.249790>,  <39.159748, 33.115936, 44.444122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461555, 33.273010, 44.249790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.682510, 33.594296, 44.160595>,  <38.815083, 33.787067, 44.107079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.682510, 33.594296, 44.160595>,  <38.461555, 33.273010, 44.249790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682510, 33.594296, 44.160595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359429, -0.011861, -0.933097,
		-0.752118, 0.595577, 0.282146,
		0.552384, 0.803211, -0.222988,
		38.848225, 33.835258, 44.093697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000179, 33.899021, 44.014690>,  <38.461555, 33.273010, 44.249790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000179, 33.899021, 44.014690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.373127, 33.929798, 43.873402>,  <38.596897, 33.948265, 43.788628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.373127, 33.929798, 43.873402>,  <38.000179, 33.899021, 44.014690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373127, 33.929798, 43.873402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357556, 0.052261, -0.932428,
		-0.053288, 0.995664, 0.076239,
		0.932370, 0.076947, -0.353221,
		38.652840, 33.952881, 43.767437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380871, 34.334503, 43.910728>,  <38.000179, 33.899021, 44.014690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380871, 34.334503, 43.910728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107124, 34.607201, 43.807297>,  <36.942875, 34.770821, 43.745239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107124, 34.607201, 43.807297>,  <37.380871, 34.334503, 43.910728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107124, 34.607201, 43.807297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525544, -0.215387, 0.823051,
		0.505419, 0.699163, 0.505691,
		-0.684365, 0.681748, -0.258580,
		36.901814, 34.811726, 43.729721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323639, 34.674122, 44.544666>,  <37.380871, 34.334503, 43.910728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323639, 34.674122, 44.544666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.990135, 34.756252, 44.339653>,  <36.790035, 34.805531, 44.216644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.990135, 34.756252, 44.339653>,  <37.323639, 34.674122, 44.544666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990135, 34.756252, 44.339653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548681, -0.204477, 0.810641,
		0.061644, 0.957095, 0.283142,
		-0.833756, 0.205325, -0.512535,
		36.740009, 34.817848, 44.185894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996208, 35.189342, 44.856178>,  <37.323639, 34.674122, 44.544666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996208, 35.189342, 44.856178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.687511, 35.030937, 44.657143>,  <36.502293, 34.935894, 44.537724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.687511, 35.030937, 44.657143>,  <36.996208, 35.189342, 44.856178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687511, 35.030937, 44.657143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538245, -0.009957, 0.842729,
		-0.338684, 0.918192, -0.205466,
		-0.771741, -0.396011, -0.497585,
		36.455990, 34.912132, 44.507866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371555, 35.611881, 45.083378>,  <36.996208, 35.189342, 44.856178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371555, 35.611881, 45.083378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234608, 35.259167, 44.953617>,  <36.152439, 35.047539, 44.875763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234608, 35.259167, 44.953617>,  <36.371555, 35.611881, 45.083378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234608, 35.259167, 44.953617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489754, -0.127163, 0.862537,
		-0.801826, 0.454181, -0.388323,
		-0.342367, -0.881788, -0.324400,
		36.131897, 34.994629, 44.856297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704880, 35.513699, 45.490231>,  <36.371555, 35.611881, 45.083378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704880, 35.513699, 45.490231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.786015, 35.150230, 45.344254>,  <35.834694, 34.932152, 45.256668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.786015, 35.150230, 45.344254>,  <35.704880, 35.513699, 45.490231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786015, 35.150230, 45.344254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342232, -0.414972, 0.843016,
		-0.917462, -0.046096, -0.395144,
		0.202833, -0.908666, -0.364945,
		35.846863, 34.877632, 45.234772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063164, 35.146095, 45.454220>,  <35.704880, 35.513699, 45.490231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063164, 35.146095, 45.454220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.368309, 34.889404, 45.485790>,  <35.551395, 34.735390, 45.504734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.368309, 34.889404, 45.485790>,  <35.063164, 35.146095, 45.454220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368309, 34.889404, 45.485790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345413, -0.301306, 0.888766,
		-0.546562, -0.705268, -0.451516,
		0.762863, -0.641725, 0.078927,
		35.597168, 34.696888, 45.509468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753475, 34.469082, 45.460358>,  <35.063164, 35.146095, 45.454220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753475, 34.469082, 45.460358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116657, 34.427181, 45.622662>,  <35.334568, 34.402039, 45.720043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.116657, 34.427181, 45.622662>,  <34.753475, 34.469082, 45.460358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116657, 34.427181, 45.622662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412413, -0.051488, 0.909541,
		-0.074394, -0.993164, -0.089954,
		0.907955, -0.104763, 0.405763,
		35.389042, 34.395756, 45.744392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691254, 33.728504, 45.868633>,  <34.753475, 34.469082, 45.460358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691254, 33.728504, 45.868633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.012424, 33.911304, 46.021709>,  <35.205128, 34.020985, 46.113556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.012424, 33.911304, 46.021709>,  <34.691254, 33.728504, 45.868633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012424, 33.911304, 46.021709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368276, -0.124484, 0.921345,
		0.468693, -0.880713, 0.068350,
		0.802932, 0.457000, 0.382690,
		35.253304, 34.048405, 46.136517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876549, 33.401619, 46.447964>,  <34.691254, 33.728504, 45.868633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876549, 33.401619, 46.447964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.071980, 33.744427, 46.513454>,  <35.189240, 33.950111, 46.552750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.071980, 33.744427, 46.513454>,  <34.876549, 33.401619, 46.447964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071980, 33.744427, 46.513454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227637, -0.055943, 0.972138,
		0.842302, -0.512234, 0.167758,
		0.488578, 0.857022, 0.163724,
		35.218552, 34.001534, 46.562572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298382, 33.291039, 47.027729>,  <34.876549, 33.401619, 46.447964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298382, 33.291039, 47.027729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291653, 33.687241, 46.973141>,  <35.287617, 33.924961, 46.940388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291653, 33.687241, 46.973141>,  <35.298382, 33.291039, 47.027729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291653, 33.687241, 46.973141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001853, 0.136523, 0.990635,
		0.999857, 0.016413, -0.004132,
		-0.016823, 0.990501, -0.136473,
		35.286606, 33.984390, 46.932198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815838, 33.682804, 47.458549>,  <35.298382, 33.291039, 47.027729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815838, 33.682804, 47.458549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.580528, 33.994843, 47.373329>,  <35.439342, 34.182064, 47.322197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.580528, 33.994843, 47.373329>,  <35.815838, 33.682804, 47.458549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580528, 33.994843, 47.373329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047691, 0.296469, 0.953851,
		0.807257, 0.550962, -0.211607,
		-0.588271, 0.780094, -0.213051,
		35.404049, 34.228870, 47.309414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052822, 34.311157, 47.930302>,  <35.815838, 33.682804, 47.458549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052822, 34.311157, 47.930302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.669682, 34.372414, 47.833092>,  <35.439796, 34.409168, 47.774765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.669682, 34.372414, 47.833092>,  <36.052822, 34.311157, 47.930302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669682, 34.372414, 47.833092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172400, 0.370250, 0.912794,
		0.229768, 0.916222, -0.328244,
		-0.957855, 0.153141, -0.243028,
		35.382324, 34.418358, 47.760185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903976, 35.016521, 48.034637>,  <36.052822, 34.311157, 47.930302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903976, 35.016521, 48.034637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.552494, 34.828865, 48.069927>,  <35.341606, 34.716270, 48.091103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.552494, 34.828865, 48.069927>,  <35.903976, 35.016521, 48.034637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552494, 34.828865, 48.069927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203493, 0.535307, 0.819779,
		-0.431823, 0.702388, -0.565844,
		-0.878703, -0.469145, 0.088227,
		35.288883, 34.688122, 48.096394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739342, 35.859161, 47.758183>,  <35.903976, 35.016521, 48.034637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739342, 35.859161, 47.758183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.497902, 36.058811, 48.006870>,  <35.353039, 36.178600, 48.156082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.497902, 36.058811, 48.006870>,  <35.739342, 35.859161, 47.758183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497902, 36.058811, 48.006870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077512, 0.739367, -0.668826,
		-0.793511, -0.451894, -0.407593,
		-0.603599, 0.499128, 0.621723,
		35.316822, 36.208549, 48.193386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136703, 35.933739, 47.446114>,  <35.739342, 35.859161, 47.758183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136703, 35.933739, 47.446114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.172321, 36.223915, 47.719112>,  <35.193691, 36.398022, 47.882912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.172321, 36.223915, 47.719112>,  <35.136703, 35.933739, 47.446114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172321, 36.223915, 47.719112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414761, 0.649992, -0.636776,
		-0.905563, -0.226375, 0.358761,
		0.089041, 0.725442, 0.682500,
		35.199032, 36.441547, 47.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483765, 36.213390, 47.533939>,  <35.136703, 35.933739, 47.446114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483765, 36.213390, 47.533939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.731426, 36.500187, 47.662048>,  <34.880024, 36.672264, 47.738914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.731426, 36.500187, 47.662048>,  <34.483765, 36.213390, 47.533939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731426, 36.500187, 47.662048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520884, 0.680194, -0.515767,
		-0.587648, 0.152514, 0.794613,
		0.619153, 0.716990, 0.320273,
		34.917171, 36.715282, 47.758129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071808, 36.767864, 47.536419>,  <34.483765, 36.213390, 47.533939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071808, 36.767864, 47.536419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.425800, 36.952953, 47.557209>,  <34.638195, 37.064007, 47.569683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.425800, 36.952953, 47.557209>,  <34.071808, 36.767864, 47.536419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425800, 36.952953, 47.557209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357657, 0.746992, -0.560432,
		-0.298149, 0.477381, 0.826568,
		0.884980, 0.462720, 0.051976,
		34.691296, 37.091770, 47.572803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940228, 37.496735, 47.662868>,  <34.071808, 36.767864, 47.536419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940228, 37.496735, 47.662868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.297699, 37.458279, 47.487556>,  <34.512180, 37.435204, 47.382370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.297699, 37.458279, 47.487556>,  <33.940228, 37.496735, 47.662868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297699, 37.458279, 47.487556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256575, 0.691843, -0.674924,
		0.368110, 0.715619, 0.593620,
		0.893680, -0.096139, -0.438284,
		34.565804, 37.429436, 47.356071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164188, 38.270222, 47.618435>,  <33.940228, 37.496735, 47.662868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164188, 38.270222, 47.618435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378078, 38.041088, 47.369942>,  <34.506413, 37.903606, 47.220844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378078, 38.041088, 47.369942>,  <34.164188, 38.270222, 47.618435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378078, 38.041088, 47.369942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128269, 0.671625, -0.729703,
		0.835235, 0.469874, 0.285657,
		0.534723, -0.572833, -0.621235,
		34.538494, 37.869240, 47.183571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535488, 38.799698, 47.184471>,  <34.164188, 38.270222, 47.618435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535488, 38.799698, 47.184471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.562794, 38.446785, 46.998173>,  <34.579178, 38.235039, 46.886395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.562794, 38.446785, 46.998173>,  <34.535488, 38.799698, 47.184471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562794, 38.446785, 46.998173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161369, 0.450926, -0.877853,
		0.984530, 0.135083, -0.111591,
		0.068264, -0.882280, -0.465749,
		34.583271, 38.182102, 46.858448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061081, 38.790718, 46.608517>,  <34.535488, 38.799698, 47.184471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061081, 38.790718, 46.608517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.767166, 38.527515, 46.542648>,  <34.590816, 38.369595, 46.503128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.767166, 38.527515, 46.542648>,  <35.061081, 38.790718, 46.608517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767166, 38.527515, 46.542648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107813, 0.352976, -0.929400,
		0.669677, -0.665156, -0.330303,
		-0.734784, -0.658009, -0.164668,
		34.546730, 38.330112, 46.493248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731400, 38.878246, 46.200336>,  <35.061081, 38.790718, 46.608517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731400, 38.878246, 46.200336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.894936, 39.239838, 46.150269>,  <35.993057, 39.456795, 46.120228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.894936, 39.239838, 46.150269>,  <35.731400, 38.878246, 46.200336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894936, 39.239838, 46.150269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172525, 0.058127, 0.983289,
		0.896151, -0.423601, -0.132195,
		0.408838, 0.903982, -0.125172,
		36.017586, 39.511032, 46.112717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282169, 38.909889, 46.735771>,  <35.731400, 38.878246, 46.200336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282169, 38.909889, 46.735771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.200390, 39.295059, 46.665367>,  <36.151321, 39.526161, 46.623127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.200390, 39.295059, 46.665367>,  <36.282169, 38.909889, 46.735771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200390, 39.295059, 46.665367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122620, 0.203580, 0.971349,
		0.971168, 0.177005, -0.159695,
		-0.204444, 0.962925, -0.176006,
		36.139057, 39.583939, 46.612564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795738, 39.325542, 47.061966>,  <36.282169, 38.909889, 46.735771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795738, 39.325542, 47.061966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.497349, 39.588810, 47.021294>,  <36.318317, 39.746773, 46.996891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.497349, 39.588810, 47.021294>,  <36.795738, 39.325542, 47.061966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497349, 39.588810, 47.021294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213534, 0.380996, 0.899580,
		0.630819, 0.649347, -0.424754,
		-0.745969, 0.658172, -0.101682,
		36.273560, 39.786263, 46.990788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950665, 39.769306, 47.514072>,  <36.795738, 39.325542, 47.061966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950665, 39.769306, 47.514072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.600468, 39.932018, 47.409733>,  <36.390350, 40.029648, 47.347130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.600468, 39.932018, 47.409733>,  <36.950665, 39.769306, 47.514072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600468, 39.932018, 47.409733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153790, 0.746275, 0.647628,
		0.458106, 0.526878, -0.715918,
		-0.875493, 0.406784, -0.260844,
		36.337818, 40.054054, 47.331478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003952, 40.482944, 47.251163>,  <36.950665, 39.769306, 47.514072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003952, 40.482944, 47.251163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.643959, 40.407055, 47.408157>,  <36.427963, 40.361519, 47.502354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.643959, 40.407055, 47.408157>,  <37.003952, 40.482944, 47.251163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643959, 40.407055, 47.408157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152536, 0.706355, 0.691228,
		-0.408378, 0.681958, -0.606763,
		-0.899978, -0.189729, 0.392483,
		36.373966, 40.350136, 47.525902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804073, 41.080173, 47.412357>,  <37.003952, 40.482944, 47.251163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804073, 41.080173, 47.412357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.571598, 40.863377, 47.655159>,  <36.432114, 40.733299, 47.800842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.571598, 40.863377, 47.655159>,  <36.804073, 41.080173, 47.412357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571598, 40.863377, 47.655159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104990, 0.689747, 0.716398,
		-0.806965, 0.480094, -0.343971,
		-0.581192, -0.541994, 0.607008,
		36.397240, 40.700779, 47.837261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454819, 41.556530, 47.858887>,  <36.804073, 41.080173, 47.412357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454819, 41.556530, 47.858887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.407551, 41.213379, 48.058918>,  <36.379189, 41.007488, 48.178936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.407551, 41.213379, 48.058918>,  <36.454819, 41.556530, 47.858887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407551, 41.213379, 48.058918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148723, 0.482639, 0.863100,
		-0.981793, 0.176368, 0.070551,
		-0.118172, -0.857877, 0.500081,
		36.372101, 40.956017, 48.208942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044411, 41.777931, 48.468456>,  <36.454819, 41.556530, 47.858887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044411, 41.777931, 48.468456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.189209, 41.426258, 48.592388>,  <36.276089, 41.215252, 48.666748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.189209, 41.426258, 48.592388>,  <36.044411, 41.777931, 48.468456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189209, 41.426258, 48.592388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228512, 0.405924, 0.884877,
		-0.903739, -0.249519, 0.347846,
		0.361993, -0.879185, 0.309832,
		36.297806, 41.162502, 48.685337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653618, 41.550869, 49.085934>,  <36.044411, 41.777931, 48.468456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653618, 41.550869, 49.085934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.017685, 41.385193, 49.088406>,  <36.236126, 41.285786, 49.089890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.017685, 41.385193, 49.088406>,  <35.653618, 41.550869, 49.085934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017685, 41.385193, 49.088406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149314, 0.341951, 0.927779,
		-0.386390, -0.843514, 0.373078,
		0.910169, -0.414191, 0.006178,
		36.290737, 41.260937, 49.090260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.222702, 41.248386, 33.654652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578461, 41.072075, 33.703136>,  <37.791916, 40.966290, 33.732227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578461, 41.072075, 33.703136>,  <37.222702, 41.248386, 33.654652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578461, 41.072075, 33.703136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187170, -0.109198, 0.976239,
		-0.417069, -0.890949, -0.179621,
		0.889394, -0.440779, 0.121216,
		37.845280, 40.939842, 33.739502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231853, 40.657341, 34.114826>,  <37.222702, 41.248386, 33.654652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231853, 40.657341, 34.114826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595627, 40.819775, 34.150642>,  <37.813892, 40.917236, 34.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595627, 40.819775, 34.150642>,  <37.231853, 40.657341, 34.114826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595627, 40.819775, 34.150642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141742, 0.100277, 0.984812,
		0.390937, -0.908317, 0.148755,
		0.909438, 0.406084, 0.089545,
		37.868458, 40.941601, 34.177505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568283, 40.291832, 34.607014>,  <37.231853, 40.657341, 34.114826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568283, 40.291832, 34.607014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742470, 40.651844, 34.614128>,  <37.846981, 40.867851, 34.618397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742470, 40.651844, 34.614128>,  <37.568283, 40.291832, 34.607014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742470, 40.651844, 34.614128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306199, 0.129516, 0.943116,
		0.846528, -0.416142, 0.331988,
		0.435468, 0.900029, 0.017783,
		37.873112, 40.921852, 34.619465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990540, 40.324108, 35.218887>,  <37.568283, 40.291832, 34.607014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990540, 40.324108, 35.218887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928452, 40.707417, 35.122860>,  <37.891201, 40.937401, 35.065243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928452, 40.707417, 35.122860>,  <37.990540, 40.324108, 35.218887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928452, 40.707417, 35.122860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202147, 0.207063, 0.957215,
		0.966977, 0.197104, 0.161572,
		-0.155216, 0.958267, -0.240069,
		37.881886, 40.994896, 35.050838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282345, 40.690750, 35.777390>,  <37.990540, 40.324108, 35.218887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282345, 40.690750, 35.777390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033287, 40.944778, 35.594524>,  <37.883854, 41.097195, 35.484806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033287, 40.944778, 35.594524>,  <38.282345, 40.690750, 35.777390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033287, 40.944778, 35.594524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330769, 0.315859, 0.889284,
		0.709159, 0.704921, 0.013395,
		-0.622644, 0.635074, -0.457160,
		37.846493, 41.135300, 35.457375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431110, 41.376328, 36.019695>,  <38.282345, 40.690750, 35.777390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431110, 41.376328, 36.019695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059479, 41.383968, 35.871941>,  <37.836498, 41.388554, 35.783287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059479, 41.383968, 35.871941>,  <38.431110, 41.376328, 36.019695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059479, 41.383968, 35.871941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335751, 0.375421, 0.863904,
		0.155180, 0.926658, -0.342382,
		-0.929081, 0.019106, -0.369384,
		37.780754, 41.389702, 35.761124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158165, 42.052197, 36.220047>,  <38.431110, 41.376328, 36.019695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158165, 42.052197, 36.220047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839237, 41.816082, 36.169697>,  <37.647881, 41.674412, 36.139488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839237, 41.816082, 36.169697>,  <38.158165, 42.052197, 36.220047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839237, 41.816082, 36.169697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398095, 0.357578, 0.844783,
		-0.453655, 0.723671, -0.520094,
		-0.797319, -0.590287, -0.125873,
		37.600040, 41.638996, 36.131935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592239, 42.430122, 36.377075>,  <38.158165, 42.052197, 36.220047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592239, 42.430122, 36.377075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409927, 42.074554, 36.395298>,  <37.300541, 41.861214, 36.406231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409927, 42.074554, 36.395298>,  <37.592239, 42.430122, 36.377075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409927, 42.074554, 36.395298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476021, 0.286687, 0.831393,
		-0.752106, 0.357248, -0.553814,
		-0.455785, -0.888923, 0.045561,
		37.273193, 41.807877, 36.408966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831226, 42.498112, 36.590698>,  <37.592239, 42.430122, 36.377075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831226, 42.498112, 36.590698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879036, 42.107803, 36.663998>,  <36.907722, 41.873619, 36.707977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879036, 42.107803, 36.663998>,  <36.831226, 42.498112, 36.590698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879036, 42.107803, 36.663998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493464, 0.101771, 0.863791,
		-0.861514, -0.193670, -0.469346,
		0.119525, -0.975774, 0.183246,
		36.914894, 41.815071, 36.718971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170620, 42.252186, 36.871258>,  <36.831226, 42.498112, 36.590698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170620, 42.252186, 36.871258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443390, 41.989006, 36.999062>,  <36.607052, 41.831100, 37.075745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443390, 41.989006, 36.999062>,  <36.170620, 42.252186, 36.871258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443390, 41.989006, 36.999062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368208, 0.068642, 0.927206,
		-0.631985, -0.749929, -0.195453,
		0.681922, -0.657948, 0.319511,
		36.647968, 41.791622, 37.094913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835384, 41.774544, 37.307541>,  <36.170620, 42.252186, 36.871258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835384, 41.774544, 37.307541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221336, 41.719406, 37.396992>,  <36.452908, 41.686325, 37.450661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221336, 41.719406, 37.396992>,  <35.835384, 41.774544, 37.307541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221336, 41.719406, 37.396992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227675, -0.014141, 0.973635,
		-0.131049, -0.990353, -0.045028,
		0.964878, -0.137846, 0.223625,
		36.510799, 41.678055, 37.464081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757305, 41.459297, 37.874950>,  <35.835384, 41.774544, 37.307541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757305, 41.459297, 37.874950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135818, 41.588619, 37.876610>,  <36.362926, 41.666214, 37.877605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135818, 41.588619, 37.876610>,  <35.757305, 41.459297, 37.874950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135818, 41.588619, 37.876610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097188, 0.272171, 0.957328,
		0.308390, -0.906306, 0.288973,
		0.946283, 0.323315, 0.004147,
		36.419704, 41.685612, 37.877853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280369, 40.917957, 37.602295>,  <35.757305, 41.459297, 37.874950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280369, 40.917957, 37.602295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960449, 40.692364, 37.684509>,  <34.768497, 40.557007, 37.733837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960449, 40.692364, 37.684509>,  <35.280369, 40.917957, 37.602295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960449, 40.692364, 37.684509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126317, -0.176601, -0.976143,
		0.586829, -0.806679, 0.070004,
		-0.799798, -0.563986, 0.205532,
		34.720509, 40.523167, 37.746170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463459, 40.317654, 37.373283>,  <35.280369, 40.917957, 37.602295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463459, 40.317654, 37.373283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064014, 40.337109, 37.365101>,  <34.824348, 40.348782, 37.360191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064014, 40.337109, 37.365101>,  <35.463459, 40.317654, 37.373283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064014, 40.337109, 37.365101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015132, -0.107376, -0.994103,
		-0.050550, -0.993028, 0.106490,
		-0.998607, 0.048640, -0.020454,
		34.764431, 40.351700, 37.358963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149639, 39.734467, 37.023800>,  <35.463459, 40.317654, 37.373283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149639, 39.734467, 37.023800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839832, 39.987453, 37.019722>,  <34.653946, 40.139244, 37.017273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839832, 39.987453, 37.019722>,  <35.149639, 39.734467, 37.023800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839832, 39.987453, 37.019722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203628, -0.264562, -0.942625,
		-0.598879, -0.728004, 0.333696,
		-0.774519, 0.632469, -0.010199,
		34.607475, 40.177193, 37.016663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732292, 39.177704, 36.798351>,  <35.149639, 39.734467, 37.023800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732292, 39.177704, 36.798351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586487, 39.545441, 36.739098>,  <34.499004, 39.766083, 36.703545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586487, 39.545441, 36.739098>,  <34.732292, 39.177704, 36.798351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586487, 39.545441, 36.739098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271375, -0.257049, -0.927514,
		-0.890777, -0.297893, 0.343184,
		-0.364515, 0.919340, -0.148133,
		34.477131, 39.821243, 36.694656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170734, 39.101685, 36.444218>,  <34.732292, 39.177704, 36.798351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170734, 39.101685, 36.444218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225544, 39.484955, 36.343712>,  <34.258430, 39.714916, 36.283409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225544, 39.484955, 36.343712>,  <34.170734, 39.101685, 36.444218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225544, 39.484955, 36.343712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360831, -0.187947, -0.913497,
		-0.922511, 0.215831, 0.319986,
		0.137021, 0.958171, -0.251262,
		34.266651, 39.772408, 36.268333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519527, 39.283985, 36.114658>,  <34.170734, 39.101685, 36.444218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519527, 39.283985, 36.114658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782509, 39.558086, 35.989319>,  <33.940296, 39.722546, 35.914116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782509, 39.558086, 35.989319>,  <33.519527, 39.283985, 36.114658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782509, 39.558086, 35.989319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345228, -0.095706, -0.933626,
		-0.669758, 0.721991, 0.173646,
		0.657451, 0.685251, -0.313351,
		33.979744, 39.763660, 35.895313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090054, 39.803909, 35.684391>,  <33.519527, 39.283985, 36.114658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090054, 39.803909, 35.684391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468864, 39.817131, 35.556614>,  <33.696152, 39.825066, 35.479946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468864, 39.817131, 35.556614>,  <33.090054, 39.803909, 35.684391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468864, 39.817131, 35.556614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314484, -0.106175, -0.943306,
		-0.065100, 0.993798, -0.090155,
		0.947028, 0.033057, -0.319446,
		33.752972, 39.827049, 35.460781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117794, 40.213032, 35.133995>,  <33.090054, 39.803909, 35.684391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117794, 40.213032, 35.133995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457462, 40.019306, 35.049763>,  <33.661263, 39.903069, 34.999222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457462, 40.019306, 35.049763>,  <33.117794, 40.213032, 35.133995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457462, 40.019306, 35.049763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248224, -0.014075, -0.968600,
		0.466147, 0.874778, -0.132171,
		0.849171, -0.484318, -0.210580,
		33.712215, 39.874012, 34.986588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189789, 40.422222, 34.522011>,  <33.117794, 40.213032, 35.133995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189789, 40.422222, 34.522011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432583, 40.109531, 34.579239>,  <33.578259, 39.921917, 34.613575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432583, 40.109531, 34.579239>,  <33.189789, 40.422222, 34.522011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432583, 40.109531, 34.579239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119023, -0.267416, -0.956202,
		0.785747, 0.563375, -0.255362,
		0.606988, -0.781727, 0.143067,
		33.614677, 39.875011, 34.622158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701298, 40.347607, 33.924778>,  <33.189789, 40.422222, 34.522011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701298, 40.347607, 33.924778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666962, 39.983471, 34.086723>,  <33.646362, 39.764988, 34.183891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666962, 39.983471, 34.086723>,  <33.701298, 40.347607, 33.924778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666962, 39.983471, 34.086723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074100, -0.399401, -0.913777,
		0.993550, -0.108435, -0.033173,
		-0.085836, -0.910341, 0.404860,
		33.641212, 39.710369, 34.208179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263264, 40.028004, 33.494316>,  <33.701298, 40.347607, 33.924778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263264, 40.028004, 33.494316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038231, 39.741913, 33.660183>,  <33.903210, 39.570259, 33.759701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038231, 39.741913, 33.660183>,  <34.263264, 40.028004, 33.494316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038231, 39.741913, 33.660183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164815, -0.588523, -0.791503,
		0.810145, -0.376944, 0.448974,
		-0.562584, -0.715230, 0.414663,
		33.869457, 39.527344, 33.784580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622280, 39.301483, 33.523861>,  <34.263264, 40.028004, 33.494316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622280, 39.301483, 33.523861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232380, 39.219963, 33.560364>,  <33.998440, 39.171051, 33.582268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.232380, 39.219963, 33.560364>,  <34.622280, 39.301483, 33.523861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232380, 39.219963, 33.560364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077216, -0.691113, -0.718610,
		0.209521, -0.693419, 0.689399,
		-0.974751, -0.203796, 0.091259,
		33.939953, 39.158825, 33.587742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545284, 38.566849, 33.525242>,  <34.622280, 39.301483, 33.523861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545284, 38.566849, 33.525242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176083, 38.668591, 33.409752>,  <33.954559, 38.729637, 33.340458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176083, 38.668591, 33.409752>,  <34.545284, 38.566849, 33.525242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176083, 38.668591, 33.409752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035520, -0.690825, -0.722149,
		-0.383137, -0.676805, 0.628602,
		-0.923008, 0.254355, -0.288721,
		33.899181, 38.744896, 33.323135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008698, 38.165154, 33.659466>,  <34.545284, 38.566849, 33.525242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008698, 38.165154, 33.659466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996380, 38.341747, 33.300770>,  <33.988991, 38.447704, 33.085552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996380, 38.341747, 33.300770>,  <34.008698, 38.165154, 33.659466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996380, 38.341747, 33.300770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187627, -0.878664, -0.439029,
		-0.981758, -0.181770, -0.055779,
		-0.030791, 0.441486, -0.896740,
		33.987141, 38.474194, 33.031750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411491, 37.532928, 33.335018>,  <34.008698, 38.165154, 33.659466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411491, 37.532928, 33.335018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469185, 37.391403, 33.704670>,  <34.503803, 37.306488, 33.926460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469185, 37.391403, 33.704670>,  <34.411491, 37.532928, 33.335018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469185, 37.391403, 33.704670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988589, 0.092528, -0.118872,
		-0.043449, 0.930726, 0.363126,
		0.144237, -0.353817, 0.924126,
		34.512455, 37.285259, 33.981907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920506, 37.078548, 32.957516>,  <34.411491, 37.532928, 33.335018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920506, 37.078548, 32.957516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057793, 36.726852, 33.089664>,  <35.140163, 36.515835, 33.168953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057793, 36.726852, 33.089664>,  <34.920506, 37.078548, 32.957516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057793, 36.726852, 33.089664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176553, 0.285078, 0.942104,
		-0.922515, -0.381672, -0.057389,
		0.343214, -0.879237, 0.330374,
		35.160755, 36.463081, 33.188778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648861, 36.862183, 33.620197>,  <34.920506, 37.078548, 32.957516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648861, 36.862183, 33.620197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986092, 36.648022, 33.640450>,  <35.188431, 36.519524, 33.652603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986092, 36.648022, 33.640450>,  <34.648861, 36.862183, 33.620197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986092, 36.648022, 33.640450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063745, -0.006003, 0.997948,
		-0.533999, -0.844577, -0.039190,
		0.843079, -0.535401, 0.050633,
		35.239014, 36.487400, 33.655640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573257, 36.427937, 34.281704>,  <34.648861, 36.862183, 33.620197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573257, 36.427937, 34.281704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962788, 36.449593, 34.193398>,  <35.196507, 36.462585, 34.140415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962788, 36.449593, 34.193398>,  <34.573257, 36.427937, 34.281704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962788, 36.449593, 34.193398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222845, -0.035858, 0.974194,
		0.044832, -0.997889, -0.046986,
		0.973823, 0.054146, -0.220766,
		35.254936, 36.465836, 34.127167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920879, 35.798176, 34.408123>,  <34.573257, 36.427937, 34.281704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920879, 35.798176, 34.408123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183254, 36.096542, 34.454346>,  <35.340679, 36.275562, 34.482079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183254, 36.096542, 34.454346>,  <34.920879, 35.798176, 34.408123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183254, 36.096542, 34.454346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155040, -0.282970, 0.946515,
		0.738719, -0.602941, -0.301258,
		0.655940, 0.745915, 0.115556,
		35.380035, 36.320316, 34.489014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284653, 35.637726, 34.973164>,  <34.920879, 35.798176, 34.408123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284653, 35.637726, 34.973164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443680, 36.001766, 34.926422>,  <35.539097, 36.220192, 34.898376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443680, 36.001766, 34.926422>,  <35.284653, 35.637726, 34.973164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443680, 36.001766, 34.926422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212868, 0.032392, 0.976544,
		0.892541, -0.413112, -0.180854,
		0.397564, 0.910104, -0.116850,
		35.562950, 36.274796, 34.891369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889771, 35.658997, 35.450497>,  <35.284653, 35.637726, 34.973164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889771, 35.658997, 35.450497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812885, 36.044968, 35.378979>,  <35.766754, 36.276550, 35.336067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812885, 36.044968, 35.378979>,  <35.889771, 35.658997, 35.450497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812885, 36.044968, 35.378979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171819, 0.212466, 0.961944,
		0.966195, 0.154177, -0.206632,
		-0.192212, 0.964929, -0.178793,
		35.755222, 36.334446, 35.325340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384266, 35.977230, 35.756451>,  <35.889771, 35.658997, 35.450497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384266, 35.977230, 35.756451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094929, 36.252121, 35.729626>,  <35.921326, 36.417057, 35.713531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094929, 36.252121, 35.729626>,  <36.384266, 35.977230, 35.756451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094929, 36.252121, 35.729626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144265, 0.245391, 0.958630,
		0.675253, 0.683741, -0.276644,
		-0.723340, 0.687227, -0.067061,
		35.877926, 36.458290, 35.709507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709450, 36.538925, 35.978462>,  <36.384266, 35.977230, 35.756451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709450, 36.538925, 35.978462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319084, 36.609287, 36.030087>,  <36.084866, 36.651505, 36.061062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319084, 36.609287, 36.030087>,  <36.709450, 36.538925, 35.978462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319084, 36.609287, 36.030087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179953, 0.314566, 0.932022,
		0.123352, 0.932794, -0.338643,
		-0.975911, 0.175907, 0.129056,
		36.026310, 36.662060, 36.068802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778599, 37.164871, 36.278893>,  <36.709450, 36.538925, 35.978462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778599, 37.164871, 36.278893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411926, 37.024128, 36.354679>,  <36.191925, 36.939682, 36.400150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411926, 37.024128, 36.354679>,  <36.778599, 37.164871, 36.278893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411926, 37.024128, 36.354679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037216, 0.396875, 0.917118,
		-0.397889, 0.847753, -0.350712,
		-0.916678, -0.351859, 0.189462,
		36.136921, 36.918571, 36.411518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354507, 37.676952, 36.619701>,  <36.778599, 37.164871, 36.278893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354507, 37.676952, 36.619701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191605, 37.332554, 36.741573>,  <36.093864, 37.125916, 36.814697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191605, 37.332554, 36.741573>,  <36.354507, 37.676952, 36.619701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191605, 37.332554, 36.741573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027310, 0.321966, 0.946357,
		-0.912906, 0.393731, -0.107609,
		-0.407256, -0.860996, 0.304677,
		36.069427, 37.074257, 36.832977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095722, 37.874352, 37.153519>,  <36.354507, 37.676952, 36.619701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095722, 37.874352, 37.153519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111557, 37.482033, 37.229908>,  <36.121059, 37.246643, 37.275742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111557, 37.482033, 37.229908>,  <36.095722, 37.874352, 37.153519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111557, 37.482033, 37.229908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209001, 0.195023, 0.958272,
		-0.977114, 0.001979, 0.212707,
		0.039587, -0.980797, 0.190974,
		36.123432, 37.187794, 37.287201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721741, 37.670658, 37.829895>,  <36.095722, 37.874352, 37.153519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721741, 37.670658, 37.829895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976524, 37.365879, 37.783043>,  <36.129395, 37.183010, 37.754932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976524, 37.365879, 37.783043>,  <35.721741, 37.670658, 37.829895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976524, 37.365879, 37.783043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253510, 0.063539, 0.965244,
		-0.728025, -0.644512, 0.233633,
		0.636956, -0.761950, -0.117132,
		36.167610, 37.137295, 37.747902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670986, 37.447796, 38.446842>,  <35.721741, 37.670658, 37.829895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670986, 37.447796, 38.446842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951496, 37.213848, 38.283798>,  <36.119801, 37.073479, 38.185970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951496, 37.213848, 38.283798>,  <35.670986, 37.447796, 38.446842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951496, 37.213848, 38.283798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405877, -0.142495, 0.902751,
		-0.586072, -0.798515, 0.137456,
		0.701273, -0.584867, -0.407611,
		36.161877, 37.038387, 38.161514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634354, 36.857674, 38.855759>,  <35.670986, 37.447796, 38.446842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634354, 36.857674, 38.855759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997070, 36.901035, 38.692795>,  <36.214699, 36.927052, 38.595016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997070, 36.901035, 38.692795>,  <35.634354, 36.857674, 38.855759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997070, 36.901035, 38.692795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419612, -0.138683, 0.897047,
		0.040739, -0.984386, -0.171243,
		0.906789, 0.108401, -0.407411,
		36.269108, 36.933556, 38.570572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950466, 36.207390, 38.918056>,  <35.634354, 36.857674, 38.855759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950466, 36.207390, 38.918056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221256, 36.500107, 38.886616>,  <36.383732, 36.675739, 38.867752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221256, 36.500107, 38.886616>,  <35.950466, 36.207390, 38.918056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221256, 36.500107, 38.886616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448644, -0.325643, 0.832271,
		0.583457, -0.598691, -0.548769,
		0.676976, 0.731796, -0.078600,
		36.424351, 36.719646, 38.863037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653450, 35.867222, 38.962589>,  <35.950466, 36.207390, 38.918056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653450, 35.867222, 38.962589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693390, 36.252823, 39.061157>,  <36.717354, 36.484184, 39.120296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693390, 36.252823, 39.061157>,  <36.653450, 35.867222, 38.962589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693390, 36.252823, 39.061157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652045, -0.250465, 0.715615,
		0.751576, 0.089222, -0.653584,
		0.099851, 0.964006, 0.246420,
		36.723347, 36.542023, 39.135082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406654, 36.028023, 39.108051>,  <36.653450, 35.867222, 38.962589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406654, 36.028023, 39.108051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172653, 36.296062, 39.290802>,  <37.032253, 36.456886, 39.400452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172653, 36.296062, 39.290802>,  <37.406654, 36.028023, 39.108051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172653, 36.296062, 39.290802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480181, -0.167815, 0.860967,
		0.653607, 0.723051, -0.223599,
		-0.584999, 0.670102, 0.456880,
		36.997154, 36.497093, 39.427868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815193, 36.192162, 39.658875>,  <37.406654, 36.028023, 39.108051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815193, 36.192162, 39.658875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482330, 36.349850, 39.814873>,  <37.282612, 36.444462, 39.908474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482330, 36.349850, 39.814873>,  <37.815193, 36.192162, 39.658875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482330, 36.349850, 39.814873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384745, -0.096027, 0.918014,
		0.399350, 0.913985, -0.071764,
		-0.832161, 0.394220, 0.389999,
		37.232681, 36.468117, 39.931873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023746, 36.476837, 40.393536>,  <37.815193, 36.192162, 39.658875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023746, 36.476837, 40.393536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625725, 36.515804, 40.385738>,  <37.386913, 36.539185, 40.381058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625725, 36.515804, 40.385738>,  <38.023746, 36.476837, 40.393536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625725, 36.515804, 40.385738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027714, -0.083716, 0.996104,
		0.095409, 0.991716, 0.086002,
		-0.995052, 0.097420, -0.019498,
		37.327209, 36.545029, 40.379890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715530, 37.064034, 40.960648>,  <38.023746, 36.476837, 40.393536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715530, 37.064034, 40.960648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435516, 36.784531, 40.901737>,  <37.267509, 36.616829, 40.866390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435516, 36.784531, 40.901737>,  <37.715530, 37.064034, 40.960648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435516, 36.784531, 40.901737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116295, -0.091931, 0.988951,
		-0.704579, 0.709424, -0.016907,
		-0.700032, -0.698760, -0.147275,
		37.225506, 36.574902, 40.857555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116199, 37.248234, 41.413895>,  <37.715530, 37.064034, 40.960648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116199, 37.248234, 41.413895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086300, 36.857750, 41.332481>,  <37.068359, 36.623459, 41.283634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086300, 36.857750, 41.332481>,  <37.116199, 37.248234, 41.413895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086300, 36.857750, 41.332481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312662, -0.170873, 0.934368,
		-0.946919, 0.133477, -0.292452,
		-0.074744, -0.976210, -0.203537,
		37.063877, 36.564888, 41.271420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851257, 36.970837, 42.010025>,  <37.116199, 37.248234, 41.413895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851257, 36.970837, 42.010025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918716, 36.624020, 41.822491>,  <36.959190, 36.415932, 41.709972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918716, 36.624020, 41.822491>,  <36.851257, 36.970837, 42.010025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918716, 36.624020, 41.822491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336614, -0.497710, 0.799360,
		-0.926418, 0.023006, -0.375794,
		0.168647, -0.867038, -0.468832,
		36.969311, 36.363907, 41.681843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269096, 36.453098, 42.145386>,  <36.851257, 36.970837, 42.010025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269096, 36.453098, 42.145386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572929, 36.215717, 42.038921>,  <36.755230, 36.073288, 41.975044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572929, 36.215717, 42.038921>,  <36.269096, 36.453098, 42.145386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572929, 36.215717, 42.038921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269073, -0.659281, 0.702102,
		-0.592138, -0.461692, -0.660464,
		0.759587, -0.593455, -0.266156,
		36.800804, 36.037682, 41.959072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078369, 35.687309, 42.074104>,  <36.269096, 36.453098, 42.145386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078369, 35.687309, 42.074104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468094, 35.703377, 42.162739>,  <36.701927, 35.713017, 42.215919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468094, 35.703377, 42.162739>,  <36.078369, 35.687309, 42.074104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468094, 35.703377, 42.162739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150962, -0.613643, 0.775018,
		0.167111, -0.788561, -0.591815,
		0.974312, 0.040172, 0.221589,
		36.760387, 35.715427, 42.229214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210224, 35.003017, 42.260990>,  <36.078369, 35.687309, 42.074104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210224, 35.003017, 42.260990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512550, 35.201286, 42.432133>,  <36.693947, 35.320248, 42.534817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512550, 35.201286, 42.432133>,  <36.210224, 35.003017, 42.260990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512550, 35.201286, 42.432133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098450, -0.559968, 0.822644,
		0.647347, -0.663885, -0.374431,
		0.755811, 0.495673, 0.427853,
		36.739292, 35.349987, 42.560490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704788, 34.499130, 42.561447>,  <36.210224, 35.003017, 42.260990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704788, 34.499130, 42.561447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797581, 34.835068, 42.757751>,  <36.853256, 35.036633, 42.875534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797581, 34.835068, 42.757751>,  <36.704788, 34.499130, 42.561447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797581, 34.835068, 42.757751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161008, -0.464410, 0.870862,
		0.959303, -0.281039, 0.027488,
		0.231980, 0.839846, 0.490759,
		36.867176, 35.087021, 42.904980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147060, 34.257755, 42.997597>,  <36.704788, 34.499130, 42.561447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147060, 34.257755, 42.997597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025463, 34.610744, 43.141171>,  <36.952503, 34.822536, 43.227314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025463, 34.610744, 43.141171>,  <37.147060, 34.257755, 42.997597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025463, 34.610744, 43.141171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389948, -0.459020, 0.798274,
		0.869212, 0.102702, 0.483656,
		-0.303992, 0.882470, 0.358937,
		36.934265, 34.875484, 43.248852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902058, 34.362881, 43.210716>,  <37.147060, 34.257755, 42.997597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902058, 34.362881, 43.210716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284130, 34.249504, 43.244858>,  <38.513374, 34.181480, 43.265343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284130, 34.249504, 43.244858>,  <37.902058, 34.362881, 43.210716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284130, 34.249504, 43.244858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119446, 0.105224, -0.987249,
		0.270841, 0.953201, 0.134363,
		0.955185, -0.283437, 0.085357,
		38.570686, 34.164474, 43.270466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290211, 34.847675, 42.778446>,  <37.902058, 34.362881, 43.210716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290211, 34.847675, 42.778446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547329, 34.544647, 42.823883>,  <38.701599, 34.362831, 42.851143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547329, 34.544647, 42.823883>,  <38.290211, 34.847675, 42.778446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547329, 34.544647, 42.823883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295907, 0.108782, -0.949002,
		0.706582, 0.643622, 0.294095,
		0.642792, -0.757573, 0.113588,
		38.740166, 34.317375, 42.857960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897316, 35.093357, 42.528992>,  <38.290211, 34.847675, 42.778446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897316, 35.093357, 42.528992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906002, 34.693710, 42.514633>,  <38.911213, 34.453922, 42.506016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906002, 34.693710, 42.514633>,  <38.897316, 35.093357, 42.528992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906002, 34.693710, 42.514633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151923, 0.038790, -0.987631,
		0.988154, 0.015995, 0.152631,
		0.021718, -0.999119, -0.035900,
		38.912518, 34.393974, 42.503864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541473, 34.931126, 42.175102>,  <38.897316, 35.093357, 42.528992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541473, 34.931126, 42.175102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306171, 34.609238, 42.143131>,  <39.164989, 34.416107, 42.123947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306171, 34.609238, 42.143131>,  <39.541473, 34.931126, 42.175102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306171, 34.609238, 42.143131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055678, 0.058299, -0.996745,
		0.806758, -0.590789, 0.010511,
		-0.588253, -0.804717, -0.079927,
		39.129696, 34.367821, 42.119152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843204, 34.600918, 41.658661>,  <39.541473, 34.931126, 42.175102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843204, 34.600918, 41.658661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470360, 34.458649, 41.685963>,  <39.246651, 34.373287, 41.702343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470360, 34.458649, 41.685963>,  <39.843204, 34.600918, 41.658661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470360, 34.458649, 41.685963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085661, 0.033405, -0.995764,
		0.351888, -0.934013, -0.061605,
		-0.932114, -0.355675, 0.068254,
		39.190727, 34.351948, 41.706440>
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
