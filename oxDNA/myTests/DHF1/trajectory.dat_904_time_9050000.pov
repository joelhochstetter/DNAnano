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
	<1.363969, 1.645988, 0.596416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.741318, 1.712082, 0.481352>,  <1.967727, 1.751738, 0.412313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.741318, 1.712082, 0.481352>,  <1.363969, 1.645988, 0.596416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.741318, 1.712082, 0.481352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253277, 0.201273, 0.946224,
		0.214263, -0.965496, 0.148020,
		0.943367, 0.165251, -0.287663,
		2.024329, 1.761652, 0.395054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.660833, 1.572602, 1.165497>,  <1.363969, 1.645988, 0.596416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.660833, 1.572602, 1.165497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.971474, 1.714890, 0.957514>,  <2.157858, 1.800262, 0.832724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.971474, 1.714890, 0.957514>,  <1.660833, 1.572602, 1.165497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.971474, 1.714890, 0.957514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480267, 0.199857, 0.854050,
		0.407719, -0.912973, -0.015631,
		0.776600, 0.355720, -0.519957,
		2.204454, 1.821605, 0.801527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.356234, 1.173066, 1.333684>,  <1.660833, 1.572602, 1.165497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.356234, 1.173066, 1.333684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.375351, 1.567097, 1.267548>,  <2.386821, 1.803515, 1.227866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.375351, 1.567097, 1.267548>,  <2.356234, 1.173066, 1.333684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.375351, 1.567097, 1.267548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364614, 0.136902, 0.921040,
		0.929932, -0.104304, -0.352630,
		0.047792, 0.985078, -0.165340,
		2.389689, 1.862620, 1.217945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.098856, 1.582077, 1.276215>,  <2.356234, 1.173066, 1.333684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.098856, 1.582077, 1.276215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.787445, 1.782265, 1.427700>,  <2.600598, 1.902377, 1.518591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.787445, 1.782265, 1.427700>,  <3.098856, 1.582077, 1.276215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.787445, 1.782265, 1.427700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424503, -0.024544, 0.905094,
		0.462267, 0.865406, -0.193343,
		-0.778528, 0.500470, 0.378713,
		2.553887, 1.932406, 1.541314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.382588, 2.027280, 1.886068>,  <3.098856, 1.582077, 1.276215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.382588, 2.027280, 1.886068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.985878, 2.010181, 1.934326>,  <2.747852, 1.999922, 1.963281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.985878, 2.010181, 1.934326>,  <3.382588, 2.027280, 1.886068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.985878, 2.010181, 1.934326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127059, -0.215010, 0.968311,
		-0.015452, 0.975676, 0.218672,
		-0.991775, -0.042746, 0.120646,
		2.688345, 1.997357, 1.970520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.177851, 2.421200, 2.527971>,  <3.382588, 2.027280, 1.886068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.177851, 2.421200, 2.527971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.901733, 2.139229, 2.462769>,  <2.736063, 1.970046, 2.423647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.901733, 2.139229, 2.462769>,  <3.177851, 2.421200, 2.527971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.901733, 2.139229, 2.462769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007282, -0.218513, 0.975807,
		-0.723493, 0.674780, 0.145705,
		-0.690293, -0.704929, -0.163006,
		2.694645, 1.927750, 2.413867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.758238, 2.597277, 2.928614>,  <3.177851, 2.421200, 2.527971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.758238, 2.597277, 2.928614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.680023, 2.209385, 2.870117>,  <2.633094, 1.976650, 2.835019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.680023, 2.209385, 2.870117>,  <2.758238, 2.597277, 2.928614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.680023, 2.209385, 2.870117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143977, -0.119119, 0.982386,
		-0.970070, 0.213149, -0.116327,
		-0.195538, -0.969731, -0.146242,
		2.621362, 1.918466, 2.826245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.016676, 2.330386, 3.046585>,  <2.758238, 2.597277, 2.928614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.016676, 2.330386, 3.046585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.262886, 2.021442, 3.109311>,  <2.410612, 1.836076, 3.146947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.262886, 2.021442, 3.109311>,  <2.016676, 2.330386, 3.046585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.262886, 2.021442, 3.109311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277561, -0.026215, 0.960350,
		-0.737624, -0.634645, -0.230513,
		0.615524, -0.772359, 0.156816,
		2.447543, 1.789735, 3.156356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.303543, 1.169712, 4.372890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.200333, 0.885803, 4.110701>,  <3.138406, 0.715458, 3.953387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.200333, 0.885803, 4.110701>,  <3.303543, 1.169712, 4.372890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.200333, 0.885803, 4.110701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780334, 0.553128, -0.291769,
		0.569651, 0.436205, -0.696580,
		-0.258026, -0.709771, -0.655475,
		3.122925, 0.672872, 3.914058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.430620, 1.552243, 3.718122>,  <3.303543, 1.169712, 4.372890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.430620, 1.552243, 3.718122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.198380, 1.227112, 3.699293>,  <3.059035, 1.032033, 3.687995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.198380, 1.227112, 3.699293>,  <3.430620, 1.552243, 3.718122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.198380, 1.227112, 3.699293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636279, 0.489049, -0.596641,
		0.507990, -0.316454, -0.801126,
		-0.580599, -0.812827, -0.047079,
		3.024199, 0.983264, 3.685171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.295727, 1.201937, 3.023771>,  <3.430620, 1.552243, 3.718122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.295727, 1.201937, 3.023771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.955017, 1.144035, 3.225176>,  <2.750591, 1.109294, 3.346019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.955017, 1.144035, 3.225176>,  <3.295727, 1.201937, 3.023771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.955017, 1.144035, 3.225176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502388, 0.498295, -0.706617,
		-0.148613, -0.854838, -0.497158,
		-0.851775, -0.144754, 0.503513,
		2.699485, 1.100609, 3.376230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.842448, 0.709763, 2.660012>,  <3.295727, 1.201937, 3.023771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.842448, 0.709763, 2.660012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.683098, 1.005104, 2.877684>,  <2.587488, 1.182309, 3.008287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.683098, 1.005104, 2.877684>,  <2.842448, 0.709763, 2.660012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.683098, 1.005104, 2.877684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412821, 0.385469, -0.825223,
		-0.819070, -0.553398, 0.151246,
		-0.398376, 0.738353, 0.544180,
		2.563585, 1.226610, 3.040938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.039199, 0.741796, 2.579644>,  <2.842448, 0.709763, 2.660012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.039199, 0.741796, 2.579644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.219879, 1.089691, 2.659164>,  <2.328288, 1.298428, 2.706877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.219879, 1.089691, 2.659164>,  <2.039199, 0.741796, 2.579644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.219879, 1.089691, 2.659164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480465, 0.424897, -0.767213,
		-0.751744, 0.251035, 0.609805,
		0.451702, 0.869738, 0.198800,
		2.355390, 1.350613, 2.718804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.506552, 1.315349, 2.515149>,  <2.039199, 0.741796, 2.579644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.506552, 1.315349, 2.515149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.865364, 1.481232, 2.454016>,  <2.080651, 1.580761, 2.417336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.865364, 1.481232, 2.454016>,  <1.506552, 1.315349, 2.515149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.865364, 1.481232, 2.454016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343890, 0.437685, -0.830766,
		-0.277630, 0.797779, 0.535229,
		0.897029, 0.414706, -0.152834,
		2.134473, 1.605644, 2.408166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.348029, 1.910212, 2.123533>,  <1.506552, 1.315349, 2.515149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.348029, 1.910212, 2.123533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.745445, 1.916466, 2.078579>,  <1.983895, 1.920218, 2.051606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.745445, 1.916466, 2.078579>,  <1.348029, 1.910212, 2.123533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.745445, 1.916466, 2.078579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101560, 0.564240, -0.819341,
		0.050602, 0.825463, 0.562183,
		0.993542, 0.015635, -0.112385,
		2.043508, 1.921156, 2.044863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.556172, 2.624359, 2.103511>,  <1.348029, 1.910212, 2.123533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.556172, 2.624359, 2.103511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846771, 2.406792, 1.935534>,  <2.021131, 2.276251, 1.834747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846771, 2.406792, 1.935534>,  <1.556172, 2.624359, 2.103511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.846771, 2.406792, 1.935534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028770, 0.586511, -0.809430,
		0.686566, 0.600131, 0.410451,
		0.726498, -0.543918, -0.419944,
		2.064721, 2.243616, 1.809550>
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
