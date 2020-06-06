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
	<24.358566, 34.338982, 34.615807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425209, 34.674217, 34.823593>,  <24.465195, 34.875359, 34.948265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.425209, 34.674217, 34.823593>,  <24.358566, 34.338982, 34.615807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.425209, 34.674217, 34.823593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390130, 0.427813, -0.815337,
		-0.905560, 0.338504, -0.255686,
		0.166609, 0.838088, 0.519471,
		24.475191, 34.925644, 34.979435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018770, 33.918327, 34.716858>,  <24.358566, 34.338982, 34.615807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018770, 33.918327, 34.716858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166245, 33.776360, 35.060509>,  <25.254728, 33.691177, 35.266701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166245, 33.776360, 35.060509>,  <25.018770, 33.918327, 34.716858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166245, 33.776360, 35.060509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224242, 0.930901, 0.288337,
		-0.902102, 0.086348, 0.422795,
		0.368683, -0.354918, 0.859131,
		25.276850, 33.669884, 35.318249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.577066, 34.015152, 35.245102>,  <25.018770, 33.918327, 34.716858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.577066, 34.015152, 35.245102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968157, 34.031120, 35.327522>,  <25.202810, 34.040703, 35.376976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968157, 34.031120, 35.327522>,  <24.577066, 34.015152, 35.245102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968157, 34.031120, 35.327522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096161, 0.957849, 0.270700,
		-0.186558, -0.284485, 0.940353,
		0.977727, 0.039924, 0.206051,
		25.261475, 34.043098, 35.389339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.604967, 34.228836, 35.974613>,  <24.577066, 34.015152, 35.245102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.604967, 34.228836, 35.974613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986431, 34.309353, 35.885155>,  <25.215309, 34.357662, 35.831478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986431, 34.309353, 35.885155>,  <24.604967, 34.228836, 35.974613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986431, 34.309353, 35.885155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119278, 0.935288, 0.333180,
		0.276239, -0.291064, 0.915955,
		0.953659, 0.201290, -0.223646,
		25.272530, 34.369740, 35.818062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.973858, 34.430382, 36.572697>,  <24.604967, 34.228836, 35.974613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.973858, 34.430382, 36.572697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151119, 34.606434, 36.260311>,  <25.257477, 34.712067, 36.072880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151119, 34.606434, 36.260311>,  <24.973858, 34.430382, 36.572697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151119, 34.606434, 36.260311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003307, 0.871970, 0.489547,
		0.896441, -0.214360, 0.387869,
		0.443150, 0.440133, -0.780961,
		25.284065, 34.738472, 36.026024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608786, 34.762241, 36.788429>,  <24.973858, 34.430382, 36.572697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608786, 34.762241, 36.788429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506132, 34.946564, 36.448593>,  <25.444540, 35.057156, 36.244694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506132, 34.946564, 36.448593>,  <25.608786, 34.762241, 36.788429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506132, 34.946564, 36.448593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014791, 0.877051, 0.480169,
		0.966396, 0.135793, -0.218263,
		-0.256632, 0.460805, -0.849587,
		25.429142, 35.084805, 36.193718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939980, 35.468830, 36.744873>,  <25.608786, 34.762241, 36.788429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939980, 35.468830, 36.744873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622570, 35.515327, 36.505939>,  <25.432125, 35.543224, 36.362579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622570, 35.515327, 36.505939>,  <25.939980, 35.468830, 36.744873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622570, 35.515327, 36.505939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087076, 0.949798, 0.300503,
		0.602276, 0.290470, -0.743566,
		-0.793525, 0.116240, -0.597333,
		25.384512, 35.550198, 36.326740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017351, 35.998268, 36.297871>,  <25.939980, 35.468830, 36.744873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017351, 35.998268, 36.297871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625431, 35.957226, 36.366528>,  <25.390278, 35.932602, 36.407722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625431, 35.957226, 36.366528>,  <26.017351, 35.998268, 36.297871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625431, 35.957226, 36.366528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046363, 0.951502, 0.304128,
		-0.194525, 0.290027, -0.937040,
		-0.979801, -0.102604, 0.171644,
		25.331491, 35.926445, 36.418022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701609, 36.530651, 35.921768>,  <26.017351, 35.998268, 36.297871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701609, 36.530651, 35.921768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452400, 36.402943, 36.207401>,  <25.302876, 36.326317, 36.378780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.452400, 36.402943, 36.207401>,  <25.701609, 36.530651, 35.921768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452400, 36.402943, 36.207401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182832, 0.947057, 0.263925,
		-0.760537, 0.033875, -0.648410,
		-0.623022, -0.319275, 0.714078,
		25.265493, 36.307159, 36.421623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097677, 36.851826, 35.884060>,  <25.701609, 36.530651, 35.921768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097677, 36.851826, 35.884060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098967, 36.723648, 36.262966>,  <25.099741, 36.646740, 36.490311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098967, 36.723648, 36.262966>,  <25.097677, 36.851826, 35.884060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098967, 36.723648, 36.262966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131480, 0.938907, 0.318067,
		-0.991314, -0.125571, -0.039104,
		0.003225, -0.320445, 0.947262,
		25.099934, 36.627514, 36.547146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499260, 37.267719, 36.278477>,  <25.097677, 36.851826, 35.884060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499260, 37.267719, 36.278477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785894, 37.119106, 36.514603>,  <24.957874, 37.029938, 36.656277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.785894, 37.119106, 36.514603>,  <24.499260, 37.267719, 36.278477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785894, 37.119106, 36.514603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209942, 0.921967, 0.325424,
		-0.665155, -0.109262, 0.738668,
		0.716584, -0.371535, 0.590313,
		25.000870, 37.007645, 36.691696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430094, 37.625443, 36.835079>,  <24.499260, 37.267719, 36.278477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430094, 37.625443, 36.835079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801357, 37.490982, 36.898983>,  <25.024115, 37.410305, 36.937325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.801357, 37.490982, 36.898983>,  <24.430094, 37.625443, 36.835079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.801357, 37.490982, 36.898983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227252, 0.851800, 0.472009,
		-0.294749, -0.401794, 0.866997,
		0.928159, -0.336151, 0.159759,
		25.079805, 37.390137, 36.946911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945192, 38.163593, 36.804577>,  <24.430094, 37.625443, 36.835079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945192, 38.163593, 36.804577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046070, 38.161453, 37.191643>,  <25.106596, 38.160168, 37.423882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046070, 38.161453, 37.191643>,  <24.945192, 38.163593, 36.804577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046070, 38.161453, 37.191643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623871, -0.763515, -0.166819,
		0.739718, 0.645768, -0.189215,
		0.252195, -0.005353, 0.967662,
		25.121729, 38.159847, 37.481941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671490, 38.267483, 36.849506>,  <24.945192, 38.163593, 36.804577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671490, 38.267483, 36.849506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508749, 38.051296, 37.144089>,  <25.411104, 37.921585, 37.320839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508749, 38.051296, 37.144089>,  <25.671490, 38.267483, 36.849506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508749, 38.051296, 37.144089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514093, -0.801877, -0.304468,
		0.755102, 0.254734, 0.604095,
		-0.406852, -0.540466, 0.736456,
		25.386694, 37.889156, 37.365025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996466, 37.662441, 36.927284>,  <25.671490, 38.267483, 36.849506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996466, 37.662441, 36.927284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653875, 37.589840, 37.120571>,  <25.448320, 37.546280, 37.236546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653875, 37.589840, 37.120571>,  <25.996466, 37.662441, 36.927284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653875, 37.589840, 37.120571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068312, -0.967761, -0.242429,
		0.511644, -0.174625, 0.841265,
		-0.856478, -0.181506, 0.483220,
		25.396933, 37.535389, 37.265537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090607, 36.975391, 37.297768>,  <25.996466, 37.662441, 36.927284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090607, 36.975391, 37.297768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704264, 37.079021, 37.298771>,  <25.472458, 37.141197, 37.299374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704264, 37.079021, 37.298771>,  <26.090607, 36.975391, 37.297768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704264, 37.079021, 37.298771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258604, -0.963435, -0.070120,
		-0.015749, -0.068375, 0.997536,
		-0.965855, 0.259071, 0.002508,
		25.414507, 37.156742, 37.299522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617966, 36.518082, 37.752151>,  <26.090607, 36.975391, 37.297768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617966, 36.518082, 37.752151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425203, 36.666481, 37.434631>,  <25.309546, 36.755520, 37.244118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425203, 36.666481, 37.434631>,  <25.617966, 36.518082, 37.752151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425203, 36.666481, 37.434631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362556, -0.909176, -0.204822,
		-0.797698, 0.189093, 0.572645,
		-0.481905, 0.371002, -0.793804,
		25.280632, 36.777782, 37.196491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055662, 36.285213, 37.827259>,  <25.617966, 36.518082, 37.752151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055662, 36.285213, 37.827259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050140, 36.376354, 37.437820>,  <25.046827, 36.431038, 37.204159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.050140, 36.376354, 37.437820>,  <25.055662, 36.285213, 37.827259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050140, 36.376354, 37.437820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099271, -0.969191, -0.225416,
		-0.994965, 0.093538, 0.036000,
		-0.013806, 0.227855, -0.973597,
		25.046000, 36.444710, 37.145741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528688, 35.941330, 37.447426>,  <25.055662, 36.285213, 37.827259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528688, 35.941330, 37.447426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733419, 36.051888, 37.122063>,  <24.856258, 36.118221, 36.926846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733419, 36.051888, 37.122063>,  <24.528688, 35.941330, 37.447426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733419, 36.051888, 37.122063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222340, -0.871952, -0.436192,
		-0.829819, 0.404108, -0.384834,
		0.511826, 0.276397, -0.813412,
		24.886967, 36.134808, 36.878040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.087626, 35.888454, 36.820213>,  <24.528688, 35.941330, 37.447426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.087626, 35.888454, 36.820213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474552, 35.861305, 36.722485>,  <24.706707, 35.845016, 36.663849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474552, 35.861305, 36.722485>,  <24.087626, 35.888454, 36.820213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474552, 35.861305, 36.722485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148570, -0.932510, -0.329167,
		-0.205492, 0.354708, -0.912116,
		0.967316, -0.067872, -0.244323,
		24.764748, 35.840942, 36.649189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.257336, 35.595730, 36.244537>,  <24.087626, 35.888454, 36.820213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.257336, 35.595730, 36.244537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609764, 35.781818, 36.210400>,  <24.821220, 35.893471, 36.189919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609764, 35.781818, 36.210400>,  <24.257336, 35.595730, 36.244537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609764, 35.781818, 36.210400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328056, -0.731040, -0.598298,
		-0.340731, 0.499146, -0.796716,
		0.881069, 0.465226, -0.085340,
		24.874084, 35.921387, 36.184799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.377371, 35.684830, 35.546440>,  <24.257336, 35.595730, 36.244537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.377371, 35.684830, 35.546440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709108, 35.655682, 35.768028>,  <24.908150, 35.638191, 35.900982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709108, 35.655682, 35.768028>,  <24.377371, 35.684830, 35.546440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709108, 35.655682, 35.768028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280191, -0.803545, -0.525174,
		0.483409, 0.590766, -0.645996,
		0.829342, -0.072872, 0.553969,
		24.957911, 35.633820, 35.934219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016537, 35.598278, 35.090393>,  <24.377371, 35.684830, 35.546440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016537, 35.598278, 35.090393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100758, 35.423046, 35.439964>,  <25.151289, 35.317905, 35.649708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.100758, 35.423046, 35.439964>,  <25.016537, 35.598278, 35.090393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.100758, 35.423046, 35.439964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073902, -0.884280, -0.461072,
		0.974786, 0.161664, -0.153811,
		0.210550, -0.438079, 0.873931,
		25.163923, 35.291622, 35.702145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493946, 35.185040, 34.955212>,  <25.016537, 35.598278, 35.090393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493946, 35.185040, 34.955212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349318, 35.029999, 35.294395>,  <25.262541, 34.936974, 35.497906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349318, 35.029999, 35.294395>,  <25.493946, 35.185040, 34.955212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349318, 35.029999, 35.294395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116169, -0.921132, -0.371511,
		0.925079, -0.035820, 0.378080,
		-0.361570, -0.387598, 0.847959,
		25.240847, 34.913719, 35.548782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165680, 35.309486, 35.192898>,  <25.493946, 35.185040, 34.955212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165680, 35.309486, 35.192898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917078, 35.123390, 35.445019>,  <25.767918, 35.011730, 35.596291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917078, 35.123390, 35.445019>,  <26.165680, 35.309486, 35.192898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917078, 35.123390, 35.445019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163860, -0.863966, -0.476143,
		0.766082, -0.192644, 0.613194,
		-0.621505, -0.465243, 0.630302,
		25.730627, 34.983818, 35.634109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432135, 34.633942, 35.299507>,  <26.165680, 35.309486, 35.192898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432135, 34.633942, 35.299507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068913, 34.552734, 35.446053>,  <25.850979, 34.504009, 35.533978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068913, 34.552734, 35.446053>,  <26.432135, 34.633942, 35.299507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068913, 34.552734, 35.446053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010814, -0.885749, -0.464039,
		0.418713, -0.417411, 0.806503,
		-0.908054, -0.203021, 0.366360,
		25.796495, 34.491829, 35.555962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422703, 34.133888, 35.857105>,  <26.432135, 34.633942, 35.299507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422703, 34.133888, 35.857105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060423, 34.094971, 35.692062>,  <25.843056, 34.071621, 35.593037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060423, 34.094971, 35.692062>,  <26.422703, 34.133888, 35.857105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060423, 34.094971, 35.692062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295438, -0.842878, -0.449749,
		-0.304018, -0.529236, 0.792138,
		-0.905698, -0.097296, -0.412606,
		25.788713, 34.065781, 35.568279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989456, 33.501072, 36.155693>,  <26.422703, 34.133888, 35.857105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989456, 33.501072, 36.155693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909992, 33.599106, 35.776123>,  <25.862314, 33.657925, 35.548382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909992, 33.599106, 35.776123>,  <25.989456, 33.501072, 36.155693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909992, 33.599106, 35.776123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376351, -0.874918, -0.304760,
		-0.904927, -0.417674, 0.081574,
		-0.198661, 0.245085, -0.948930,
		25.850393, 33.672630, 35.491444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565536, 32.982483, 35.766613>,  <25.989456, 33.501072, 36.155693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565536, 32.982483, 35.766613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814064, 33.172981, 35.517727>,  <25.963181, 33.287281, 35.368393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814064, 33.172981, 35.517727>,  <25.565536, 32.982483, 35.766613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814064, 33.172981, 35.517727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431502, -0.870795, -0.235631,
		-0.654042, -0.122086, -0.746541,
		0.621317, 0.476247, -0.622217,
		26.000460, 33.315857, 35.331062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611364, 32.768936, 35.109875>,  <25.565536, 32.982483, 35.766613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611364, 32.768936, 35.109875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984846, 32.898407, 35.171104>,  <26.208935, 32.976089, 35.207844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984846, 32.898407, 35.171104>,  <25.611364, 32.768936, 35.109875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984846, 32.898407, 35.171104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346085, -0.925457, -0.154123,
		0.091778, 0.196881, -0.976122,
		0.933703, 0.323676, 0.153074,
		26.264957, 32.995510, 35.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938271, 32.225708, 34.873962>,  <25.611364, 32.768936, 35.109875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938271, 32.225708, 34.873962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217390, 32.437355, 35.067089>,  <26.384861, 32.564342, 35.182964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217390, 32.437355, 35.067089>,  <25.938271, 32.225708, 34.873962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217390, 32.437355, 35.067089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558245, -0.824071, 0.096277,
		0.448820, 0.202350, -0.870411,
		0.697799, 0.529114, 0.482821,
		26.426729, 32.596088, 35.211937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478128, 32.026794, 34.602734>,  <25.938271, 32.225708, 34.873962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478128, 32.026794, 34.602734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558670, 32.137577, 34.978554>,  <26.606995, 32.204044, 35.204044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.558670, 32.137577, 34.978554>,  <26.478128, 32.026794, 34.602734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558670, 32.137577, 34.978554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525964, -0.839754, 0.134816,
		0.826329, 0.467023, -0.314754,
		0.201354, 0.276952, 0.939550,
		26.619076, 32.220661, 35.260418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154818, 31.753929, 34.695984>,  <26.478128, 32.026794, 34.602734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154818, 31.753929, 34.695984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040583, 31.832783, 35.071129>,  <26.972042, 31.880095, 35.296215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.040583, 31.832783, 35.071129>,  <27.154818, 31.753929, 34.695984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040583, 31.832783, 35.071129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377802, -0.876205, 0.299217,
		0.880741, 0.439778, 0.175756,
		-0.285587, 0.197132, 0.937859,
		26.954906, 31.891922, 35.352486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682005, 31.504944, 35.039215>,  <27.154818, 31.753929, 34.695984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682005, 31.504944, 35.039215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380541, 31.507576, 35.302109>,  <27.199663, 31.509155, 35.459846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380541, 31.507576, 35.302109>,  <27.682005, 31.504944, 35.039215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380541, 31.507576, 35.302109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418248, -0.766562, 0.487289,
		0.507018, 0.642136, 0.574974,
		-0.753659, 0.006582, 0.657233,
		27.154444, 31.509550, 35.499279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253342, 31.009762, 34.982727>,  <27.682005, 31.504944, 35.039215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253342, 31.009762, 34.982727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899614, 30.830635, 35.035549>,  <27.687378, 30.723158, 35.067242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899614, 30.830635, 35.035549>,  <28.253342, 31.009762, 34.982727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899614, 30.830635, 35.035549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128950, 0.037571, 0.990939,
		-0.448722, 0.893335, 0.024521,
		-0.884319, -0.447818, 0.132055,
		27.634319, 30.696289, 35.075165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583853, 31.029156, 35.666222>,  <28.253342, 31.009762, 34.982727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583853, 31.029156, 35.666222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975864, 31.026690, 35.586720>,  <29.211071, 31.025209, 35.539017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.975864, 31.026690, 35.586720>,  <28.583853, 31.029156, 35.666222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975864, 31.026690, 35.586720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187766, 0.300388, -0.935153,
		0.065471, 0.953797, 0.293231,
		0.980029, -0.006167, -0.198758,
		29.269873, 31.024839, 35.527092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989902, 31.275280, 35.772320>,  <28.583853, 31.029156, 35.666222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989902, 31.275280, 35.772320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593466, 31.224567, 35.788658>,  <27.355604, 31.194139, 35.798462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593466, 31.224567, 35.788658>,  <27.989902, 31.275280, 35.772320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593466, 31.224567, 35.788658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131584, -0.884335, 0.447925,
		-0.020667, 0.449308, 0.893137,
		-0.991089, -0.126780, 0.040845,
		27.296139, 31.186533, 35.800911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801558, 31.062096, 36.461784>,  <27.989902, 31.275280, 35.772320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801558, 31.062096, 36.461784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509687, 30.930338, 36.222095>,  <27.334564, 30.851282, 36.078281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509687, 30.930338, 36.222095>,  <27.801558, 31.062096, 36.461784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509687, 30.930338, 36.222095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036430, -0.893808, 0.446968,
		-0.682821, 0.304313, 0.664191,
		-0.729677, -0.329396, -0.599224,
		27.290785, 30.831520, 36.042328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331610, 30.742270, 36.890511>,  <27.801558, 31.062096, 36.461784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331610, 30.742270, 36.890511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265718, 30.570202, 36.535473>,  <27.226183, 30.466961, 36.322453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265718, 30.570202, 36.535473>,  <27.331610, 30.742270, 36.890511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265718, 30.570202, 36.535473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236443, -0.890869, 0.387874,
		-0.957579, -0.145971, 0.248463,
		-0.164730, -0.430168, -0.887592,
		27.216299, 30.441151, 36.269196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974512, 30.147486, 37.047832>,  <27.331610, 30.742270, 36.890511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974512, 30.147486, 37.047832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113394, 30.087311, 36.677574>,  <27.196724, 30.051207, 36.455421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113394, 30.087311, 36.677574>,  <26.974512, 30.147486, 37.047832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113394, 30.087311, 36.677574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203009, -0.951587, 0.230801,
		-0.915552, -0.268050, -0.299857,
		0.347206, -0.150437, -0.925644,
		27.217556, 30.042179, 36.399879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462387, 29.815428, 36.526787>,  <26.974512, 30.147486, 37.047832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462387, 29.815428, 36.526787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858294, 29.760298, 36.541557>,  <27.095839, 29.727221, 36.550419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858294, 29.760298, 36.541557>,  <26.462387, 29.815428, 36.526787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858294, 29.760298, 36.541557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140849, -0.985135, 0.098338,
		0.022823, -0.102533, -0.994468,
		0.989768, -0.137825, 0.036925,
		27.155224, 29.718950, 36.552635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606724, 29.144661, 36.197289>,  <26.462387, 29.815428, 36.526787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606724, 29.144661, 36.197289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902594, 29.243649, 36.447613>,  <27.080116, 29.303041, 36.597809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902594, 29.243649, 36.447613>,  <26.606724, 29.144661, 36.197289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902594, 29.243649, 36.447613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018366, -0.922165, 0.386361,
		0.672715, -0.297274, -0.677556,
		0.739674, 0.247467, 0.625814,
		27.124496, 29.317888, 36.635357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978788, 29.152409, 35.586651>,  <26.606724, 29.144661, 36.197289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978788, 29.152409, 35.586651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673983, 29.185286, 35.329720>,  <26.491100, 29.205011, 35.175560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673983, 29.185286, 35.329720>,  <26.978788, 29.152409, 35.586651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673983, 29.185286, 35.329720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236305, -0.888216, -0.393996,
		-0.602906, -0.452014, 0.657409,
		-0.762014, 0.082193, -0.642324,
		26.445379, 29.209944, 35.137024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844831, 29.842653, 35.197071>,  <26.978788, 29.152409, 35.586651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844831, 29.842653, 35.197071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936310, 30.053061, 35.524731>,  <26.991196, 30.179304, 35.721325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.936310, 30.053061, 35.524731>,  <26.844831, 29.842653, 35.197071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936310, 30.053061, 35.524731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114631, 0.850145, -0.513920,
		-0.966726, 0.023631, 0.254721,
		0.228695, 0.526019, 0.819148,
		27.004919, 30.210867, 35.770473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267742, 30.350750, 35.318260>,  <26.844831, 29.842653, 35.197071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267742, 30.350750, 35.318260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581915, 30.496977, 35.518044>,  <26.770418, 30.584713, 35.637913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581915, 30.496977, 35.518044>,  <26.267742, 30.350750, 35.318260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581915, 30.496977, 35.518044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203183, 0.914510, -0.349840,
		-0.584647, 0.173295, 0.792563,
		0.785433, 0.365568, 0.499455,
		26.817545, 30.606647, 35.667881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993757, 30.843948, 35.832523>,  <26.267742, 30.350750, 35.318260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993757, 30.843948, 35.832523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381966, 30.940042, 35.824776>,  <26.614891, 30.997700, 35.820126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381966, 30.940042, 35.824776>,  <25.993757, 30.843948, 35.832523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381966, 30.940042, 35.824776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240187, 0.970714, 0.004890,
		0.019979, -0.000093, 0.999800,
		0.970521, 0.240236, -0.019372,
		26.673122, 31.012114, 35.818966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082354, 31.431175, 36.238892>,  <25.993757, 30.843948, 35.832523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082354, 31.431175, 36.238892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409008, 31.474363, 36.012104>,  <26.605000, 31.500277, 35.876034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409008, 31.474363, 36.012104>,  <26.082354, 31.431175, 36.238892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409008, 31.474363, 36.012104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188006, 0.978530, -0.084453,
		0.545675, 0.175560, 0.819400,
		0.816635, 0.107969, -0.566966,
		26.653999, 31.506754, 35.842014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430811, 31.995304, 36.541656>,  <26.082354, 31.431175, 36.238892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430811, 31.995304, 36.541656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577322, 31.982700, 36.169666>,  <26.665228, 31.975138, 35.946472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577322, 31.982700, 36.169666>,  <26.430811, 31.995304, 36.541656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577322, 31.982700, 36.169666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207507, 0.971493, -0.114643,
		0.907074, 0.234967, 0.349296,
		0.366276, -0.031509, -0.929973,
		26.687204, 31.973248, 35.890675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938238, 32.597870, 36.443157>,  <26.430811, 31.995304, 36.541656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938238, 32.597870, 36.443157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825052, 32.465221, 36.083164>,  <26.757141, 32.385632, 35.867168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.825052, 32.465221, 36.083164>,  <26.938238, 32.597870, 36.443157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.825052, 32.465221, 36.083164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131654, 0.942874, -0.306032,
		0.950052, 0.031890, -0.310458,
		-0.282963, -0.331619, -0.899978,
		26.740164, 32.365734, 35.813171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026348, 33.348549, 36.610989>,  <26.938238, 32.597870, 36.443157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026348, 33.348549, 36.610989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704077, 33.171429, 36.768372>,  <26.510714, 33.065155, 36.862801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.704077, 33.171429, 36.768372>,  <27.026348, 33.348549, 36.610989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704077, 33.171429, 36.768372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285049, 0.292445, 0.912810,
		-0.519258, 0.847587, -0.109396,
		-0.805678, -0.442801, 0.393458,
		26.462374, 33.038589, 36.886410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605782, 33.851692, 37.069870>,  <27.026348, 33.348549, 36.610989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605782, 33.851692, 37.069870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612539, 33.464035, 37.168236>,  <26.616594, 33.231441, 37.227257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612539, 33.464035, 37.168236>,  <26.605782, 33.851692, 37.069870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612539, 33.464035, 37.168236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384793, 0.233311, 0.893029,
		-0.922849, 0.079540, 0.376861,
		0.016894, -0.969144, 0.245917,
		26.617607, 33.173290, 37.242012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294724, 33.758118, 37.827576>,  <26.605782, 33.851692, 37.069870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294724, 33.758118, 37.827576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520170, 33.439030, 37.741814>,  <26.655439, 33.247578, 37.690357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520170, 33.439030, 37.741814>,  <26.294724, 33.758118, 37.827576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520170, 33.439030, 37.741814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395150, 0.032441, 0.918043,
		-0.725390, -0.602149, 0.333505,
		0.563618, -0.797725, -0.214407,
		26.689255, 33.199711, 37.677490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581305, 33.590042, 38.381081>,  <26.294724, 33.758118, 37.827576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581305, 33.590042, 38.381081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817739, 33.353016, 38.162182>,  <26.959600, 33.210800, 38.030842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817739, 33.353016, 38.162182>,  <26.581305, 33.590042, 38.381081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817739, 33.353016, 38.162182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606941, -0.120108, 0.785619,
		-0.531263, -0.796514, 0.288660,
		0.591086, -0.592570, -0.547246,
		26.995066, 33.175243, 37.998009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841873, 33.212181, 38.853691>,  <26.581305, 33.590042, 38.381081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841873, 33.212181, 38.853691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090033, 33.175919, 38.542080>,  <27.238928, 33.154163, 38.355114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090033, 33.175919, 38.542080>,  <26.841873, 33.212181, 38.853691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090033, 33.175919, 38.542080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778219, -0.052167, 0.625822,
		-0.097371, -0.994516, 0.038183,
		0.620398, -0.090652, -0.779031,
		27.276152, 33.148724, 38.308372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235594, 32.593689, 38.891052>,  <26.841873, 33.212181, 38.853691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235594, 32.593689, 38.891052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417326, 32.896214, 38.702763>,  <27.526365, 33.077728, 38.589790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417326, 32.896214, 38.702763>,  <27.235594, 32.593689, 38.891052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417326, 32.896214, 38.702763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769075, -0.066336, 0.635707,
		0.449566, -0.650842, -0.611797,
		0.454329, 0.756310, -0.470723,
		27.553625, 33.123108, 38.561546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877445, 31.896341, 38.667931>,  <27.235594, 32.593689, 38.891052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877445, 31.896341, 38.667931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209751, 31.727510, 38.522778>,  <27.409134, 31.626213, 38.435688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209751, 31.727510, 38.522778>,  <26.877445, 31.896341, 38.667931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209751, 31.727510, 38.522778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500275, 0.280352, 0.819224,
		-0.244040, -0.862122, 0.444061,
		0.830764, -0.422076, -0.362881,
		27.458981, 31.600887, 38.413914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128531, 31.483740, 39.190807>,  <26.877445, 31.896341, 38.667931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128531, 31.483740, 39.190807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426882, 31.557856, 38.934891>,  <27.605892, 31.602325, 38.781342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426882, 31.557856, 38.934891>,  <27.128531, 31.483740, 39.190807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426882, 31.557856, 38.934891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527920, 0.421257, 0.737457,
		0.406147, -0.887815, 0.216399,
		0.745885, 0.185275, -0.639788,
		27.650646, 31.613441, 38.742954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789461, 31.240446, 39.370907>,  <27.128531, 31.483740, 39.190807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789461, 31.240446, 39.370907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864262, 31.553263, 39.133102>,  <27.909142, 31.740953, 38.990421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864262, 31.553263, 39.133102>,  <27.789461, 31.240446, 39.370907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864262, 31.553263, 39.133102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560816, 0.411886, 0.718216,
		0.806545, -0.467719, -0.361557,
		0.187003, 0.782041, -0.594509,
		27.920362, 31.787874, 38.954750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564884, 31.355019, 39.303802>,  <27.789461, 31.240446, 39.370907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564884, 31.355019, 39.303802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353289, 31.693178, 39.274212>,  <28.226332, 31.896074, 39.256458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353289, 31.693178, 39.274212>,  <28.564884, 31.355019, 39.303802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353289, 31.693178, 39.274212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547178, 0.406410, 0.731728,
		0.648666, 0.346599, -0.677570,
		-0.528988, 0.845399, -0.073973,
		28.194592, 31.946798, 39.252022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956083, 32.005581, 39.086887>,  <28.564884, 31.355019, 39.303802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956083, 32.005581, 39.086887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662989, 32.093662, 39.344448>,  <28.487131, 32.146511, 39.498985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.662989, 32.093662, 39.344448>,  <28.956083, 32.005581, 39.086887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662989, 32.093662, 39.344448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673190, 0.372985, 0.638512,
		-0.099560, 0.901328, -0.421540,
		-0.732737, 0.220206, 0.643899,
		28.443167, 32.159725, 39.537617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222454, 32.601440, 39.327854>,  <28.956083, 32.005581, 39.086887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222454, 32.601440, 39.327854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940645, 32.455215, 39.571171>,  <28.771561, 32.367481, 39.717159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.940645, 32.455215, 39.571171>,  <29.222454, 32.601440, 39.327854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940645, 32.455215, 39.571171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610010, 0.126096, 0.782296,
		-0.362680, 0.922207, 0.134158,
		-0.704522, -0.365560, 0.608288,
		28.729288, 32.345547, 39.753658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216776, 33.435986, 39.517010>,  <29.222454, 32.601440, 39.327854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216776, 33.435986, 39.517010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575424, 33.424141, 39.340286>,  <29.790613, 33.417034, 39.234253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575424, 33.424141, 39.340286>,  <29.216776, 33.435986, 39.517010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575424, 33.424141, 39.340286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291373, -0.790757, -0.538336,
		-0.333422, 0.611414, -0.717637,
		0.896622, -0.029607, -0.441805,
		29.844410, 33.415260, 39.207745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569693, 33.985313, 39.292618>,  <29.216776, 33.435986, 39.517010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569693, 33.985313, 39.292618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641451, 33.643333, 39.487297>,  <29.684505, 33.438145, 39.604107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641451, 33.643333, 39.487297>,  <29.569693, 33.985313, 39.292618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641451, 33.643333, 39.487297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978893, 0.204367, -0.001819,
		-0.097910, 0.476754, 0.873567,
		0.179395, -0.854950, 0.486701,
		29.695269, 33.386848, 39.633308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869337, 34.181828, 39.883759>,  <29.569693, 33.985313, 39.292618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869337, 34.181828, 39.883759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995384, 33.821915, 39.763031>,  <30.071012, 33.605968, 39.690594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995384, 33.821915, 39.763031>,  <29.869337, 34.181828, 39.883759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995384, 33.821915, 39.763031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931412, 0.354237, -0.083594,
		0.182133, -0.254778, 0.949692,
		0.315118, -0.899780, -0.301821,
		30.089920, 33.551979, 39.672485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537178, 33.797237, 40.329998>,  <29.869337, 34.181828, 39.883759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537178, 33.797237, 40.329998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497272, 33.732128, 39.937355>,  <30.473330, 33.693062, 39.701771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497272, 33.732128, 39.937355>,  <30.537178, 33.797237, 40.329998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497272, 33.732128, 39.937355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958371, 0.249529, -0.138780,
		0.267529, -0.954590, 0.131100,
		-0.099765, -0.162770, -0.981607,
		30.467342, 33.683296, 39.642872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097216, 33.301903, 40.171055>,  <30.537178, 33.797237, 40.329998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097216, 33.301903, 40.171055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984264, 33.553833, 39.881618>,  <30.916494, 33.704990, 39.707958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984264, 33.553833, 39.881618>,  <31.097216, 33.301903, 40.171055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984264, 33.553833, 39.881618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957931, 0.225467, -0.177577,
		0.051302, -0.743290, -0.666999,
		-0.282378, 0.629829, -0.723587,
		30.899551, 33.742783, 39.664543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421883, 33.260849, 39.383614>,  <31.097216, 33.301903, 40.171055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421883, 33.260849, 39.383614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315634, 33.642479, 39.439014>,  <31.251884, 33.871456, 39.472256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315634, 33.642479, 39.439014>,  <31.421883, 33.260849, 39.383614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315634, 33.642479, 39.439014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943633, 0.286720, -0.165375,
		-0.197493, 0.086772, -0.976456,
		-0.265620, 0.954077, 0.138506,
		31.235949, 33.928703, 39.480568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765591, 33.226559, 38.721828>,  <31.421883, 33.260849, 39.383614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765591, 33.226559, 38.721828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059925, 33.497128, 38.734444>,  <32.236526, 33.659470, 38.742012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059925, 33.497128, 38.734444>,  <31.765591, 33.226559, 38.721828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059925, 33.497128, 38.734444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020450, 0.068748, -0.997424,
		-0.676853, 0.733294, 0.064420,
		0.735834, 0.676427, 0.031537,
		32.280674, 33.700054, 38.743904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508018, 33.856430, 38.465137>,  <31.765591, 33.226559, 38.721828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508018, 33.856430, 38.465137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905560, 33.852219, 38.421047>,  <32.144085, 33.849693, 38.394592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905560, 33.852219, 38.421047>,  <31.508018, 33.856430, 38.465137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905560, 33.852219, 38.421047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107547, 0.144967, -0.983574,
		0.026330, 0.989381, 0.142943,
		0.993851, -0.010524, -0.110222,
		32.203716, 33.849060, 38.387981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643339, 34.388012, 38.112873>,  <31.508018, 33.856430, 38.465137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643339, 34.388012, 38.112873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954060, 34.143166, 38.053684>,  <32.140491, 33.996258, 38.018169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954060, 34.143166, 38.053684>,  <31.643339, 34.388012, 38.112873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954060, 34.143166, 38.053684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085651, 0.130097, -0.987795,
		0.623893, 0.779995, 0.048631,
		0.776802, -0.612113, -0.147974,
		32.187099, 33.959530, 38.009293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108746, 34.776283, 37.671257>,  <31.643339, 34.388012, 38.112873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108746, 34.776283, 37.671257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208694, 34.389645, 37.648426>,  <32.268661, 34.157661, 37.634727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208694, 34.389645, 37.648426>,  <32.108746, 34.776283, 37.671257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208694, 34.389645, 37.648426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119116, 0.089183, -0.988867,
		0.960925, 0.240290, 0.137422,
		0.249870, -0.966595, -0.057076,
		32.283657, 34.099667, 37.631302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662594, 34.685120, 37.219215>,  <32.108746, 34.776283, 37.671257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662594, 34.685120, 37.219215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498363, 34.320461, 37.226387>,  <32.399826, 34.101665, 37.230690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498363, 34.320461, 37.226387>,  <32.662594, 34.685120, 37.219215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498363, 34.320461, 37.226387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040070, -0.037685, -0.998486,
		0.910943, -0.409240, 0.052002,
		-0.410580, -0.911648, 0.017931,
		32.375191, 34.046967, 37.231766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088264, 34.284145, 36.759567>,  <32.662594, 34.685120, 37.219215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088264, 34.284145, 36.759567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738914, 34.093426, 36.799324>,  <32.529305, 33.978992, 36.823177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738914, 34.093426, 36.799324>,  <33.088264, 34.284145, 36.759567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738914, 34.093426, 36.799324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046182, -0.122079, -0.991445,
		0.484856, -0.870493, 0.084601,
		-0.873374, -0.476801, 0.099392,
		32.476902, 33.950386, 36.829140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090691, 33.702148, 36.302891>,  <33.088264, 34.284145, 36.759567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090691, 33.702148, 36.302891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703396, 33.778893, 36.367023>,  <32.471020, 33.824940, 36.405502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703396, 33.778893, 36.367023>,  <33.090691, 33.702148, 36.302891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703396, 33.778893, 36.367023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170651, -0.038434, -0.984582,
		-0.182745, -0.980668, 0.069955,
		-0.968236, 0.191866, 0.160329,
		32.412926, 33.836452, 36.415123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751751, 33.244869, 35.941444>,  <33.090691, 33.702148, 36.302891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751751, 33.244869, 35.941444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486519, 33.538445, 36.000298>,  <32.327377, 33.714592, 36.035610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486519, 33.538445, 36.000298>,  <32.751751, 33.244869, 35.941444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486519, 33.538445, 36.000298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152949, 0.059564, -0.986437,
		-0.732752, -0.676594, 0.072761,
		-0.663084, 0.733943, 0.147130,
		32.287594, 33.758629, 36.044437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133396, 33.009315, 35.613659>,  <32.751751, 33.244869, 35.941444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133396, 33.009315, 35.613659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118401, 33.405655, 35.665543>,  <32.109406, 33.643459, 35.696671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118401, 33.405655, 35.665543>,  <32.133396, 33.009315, 35.613659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118401, 33.405655, 35.665543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409733, 0.103145, -0.906356,
		-0.911435, -0.087119, 0.402115,
		-0.037484, 0.990844, 0.129705,
		32.107155, 33.702908, 35.704453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607836, 33.178394, 35.229923>,  <32.133396, 33.009315, 35.613659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607836, 33.178394, 35.229923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774206, 33.536007, 35.296513>,  <31.874029, 33.750576, 35.336468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774206, 33.536007, 35.296513>,  <31.607836, 33.178394, 35.229923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774206, 33.536007, 35.296513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420604, 0.351421, -0.836418,
		-0.806286, 0.277869, 0.522198,
		0.415926, 0.894031, 0.166473,
		31.898985, 33.804214, 35.346455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115103, 33.693275, 35.031979>,  <31.607836, 33.178394, 35.229923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115103, 33.693275, 35.031979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469687, 33.878399, 35.031250>,  <31.682436, 33.989471, 35.030815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469687, 33.878399, 35.031250>,  <31.115103, 33.693275, 35.031979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469687, 33.878399, 35.031250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184095, 0.349004, -0.918861,
		-0.424619, 0.814866, 0.394578,
		0.886458, 0.462806, -0.001819,
		31.735624, 34.017242, 35.030704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885277, 34.466980, 35.001038>,  <31.115103, 33.693275, 35.031979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885277, 34.466980, 35.001038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268272, 34.447414, 34.887321>,  <31.498070, 34.435677, 34.819092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268272, 34.447414, 34.887321>,  <30.885277, 34.466980, 35.001038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268272, 34.447414, 34.887321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171891, 0.694701, -0.698459,
		0.231662, 0.717634, 0.656761,
		0.957490, -0.048915, -0.284290,
		31.555519, 34.432739, 34.802032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126245, 35.134922, 34.842957>,  <30.885277, 34.466980, 35.001038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126245, 35.134922, 34.842957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381582, 34.928806, 34.614223>,  <31.534784, 34.805138, 34.476982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381582, 34.928806, 34.614223>,  <31.126245, 35.134922, 34.842957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381582, 34.928806, 34.614223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075854, 0.697155, -0.712896,
		0.766005, 0.498449, 0.405938,
		0.638344, -0.515290, -0.571833,
		31.573086, 34.774220, 34.442673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579536, 35.638851, 34.532372>,  <31.126245, 35.134922, 34.842957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579536, 35.638851, 34.532372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627075, 35.323658, 34.290726>,  <31.655598, 35.134541, 34.145737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627075, 35.323658, 34.290726>,  <31.579536, 35.638851, 34.532372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627075, 35.323658, 34.290726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173810, 0.582522, -0.794013,
		0.977582, 0.199366, -0.067730,
		0.118845, -0.787985, -0.604115,
		31.662729, 35.087261, 34.109489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977882, 35.782013, 33.955513>,  <31.579536, 35.638851, 34.532372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977882, 35.782013, 33.955513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750006, 35.470066, 33.851776>,  <31.613279, 35.282898, 33.789536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750006, 35.470066, 33.851776>,  <31.977882, 35.782013, 33.955513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750006, 35.470066, 33.851776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289782, 0.485898, -0.824579,
		0.769075, -0.394604, -0.502804,
		-0.569693, -0.779866, -0.259343,
		31.579098, 35.236107, 33.773972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147377, 35.616749, 33.306179>,  <31.977882, 35.782013, 33.955513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147377, 35.616749, 33.306179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789722, 35.442326, 33.346912>,  <31.575129, 35.337669, 33.371353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789722, 35.442326, 33.346912>,  <32.147377, 35.616749, 33.306179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789722, 35.442326, 33.346912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284403, 0.377352, -0.881317,
		0.345871, -0.816985, -0.461420,
		-0.894141, -0.436051, 0.101838,
		31.521481, 35.311508, 33.377460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003681, 35.316650, 32.651527>,  <32.147377, 35.616749, 33.306179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003681, 35.316650, 32.651527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659592, 35.368114, 32.848892>,  <31.453136, 35.398994, 32.967312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659592, 35.368114, 32.848892>,  <32.003681, 35.316650, 32.651527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659592, 35.368114, 32.848892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410977, 0.397844, -0.820255,
		-0.301838, -0.908386, -0.289358,
		-0.860228, 0.128665, 0.493410,
		31.401524, 35.406715, 32.996914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452335, 35.225895, 32.145805>,  <32.003681, 35.316650, 32.651527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452335, 35.225895, 32.145805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253229, 35.397736, 32.447182>,  <31.133764, 35.500839, 32.628006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.253229, 35.397736, 32.447182>,  <31.452335, 35.225895, 32.145805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253229, 35.397736, 32.447182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463705, 0.602298, -0.649780,
		-0.732943, -0.672812, -0.100594,
		-0.497768, 0.429605, 0.753436,
		31.103899, 35.526619, 32.673214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761808, 35.178535, 31.939068>,  <31.452335, 35.225895, 32.145805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761808, 35.178535, 31.939068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767075, 35.469440, 32.213562>,  <30.770233, 35.643982, 32.378258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767075, 35.469440, 32.213562>,  <30.761808, 35.178535, 31.939068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767075, 35.469440, 32.213562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335107, 0.649817, -0.682232,
		-0.942088, -0.220982, 0.252264,
		0.013164, 0.727258, 0.686238,
		30.771025, 35.687618, 32.419434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190872, 35.503860, 31.845762>,  <30.761808, 35.178535, 31.939068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190872, 35.503860, 31.845762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390776, 35.775768, 32.060482>,  <30.510717, 35.938911, 32.189316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390776, 35.775768, 32.060482>,  <30.190872, 35.503860, 31.845762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390776, 35.775768, 32.060482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253429, 0.707380, -0.659839,
		-0.828260, 0.193720, 0.525793,
		0.499759, 0.679769, 0.536801,
		30.540703, 35.979698, 32.221523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756287, 36.141392, 32.055748>,  <30.190872, 35.503860, 31.845762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756287, 36.141392, 32.055748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127420, 36.288300, 32.081787>,  <30.350100, 36.376446, 32.097408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127420, 36.288300, 32.081787>,  <29.756287, 36.141392, 32.055748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127420, 36.288300, 32.081787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323212, 0.878759, -0.351165,
		-0.186176, 0.304783, 0.934048,
		0.927832, 0.367274, 0.065094,
		30.405769, 36.398483, 32.101315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626772, 36.729996, 32.328739>,  <29.756287, 36.141392, 32.055748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626772, 36.729996, 32.328739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001192, 36.777878, 32.196388>,  <30.225843, 36.806606, 32.116978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001192, 36.777878, 32.196388>,  <29.626772, 36.729996, 32.328739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001192, 36.777878, 32.196388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262810, 0.863125, -0.431215,
		0.233967, 0.490596, 0.839390,
		0.936051, 0.119710, -0.330876,
		30.282007, 36.813789, 32.097126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801153, 37.306763, 32.611603>,  <29.626772, 36.729996, 32.328739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801153, 37.306763, 32.611603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051886, 37.262535, 32.303097>,  <30.202326, 37.235996, 32.117992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051886, 37.262535, 32.303097>,  <29.801153, 37.306763, 32.611603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051886, 37.262535, 32.303097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319280, 0.866501, -0.383713,
		0.710734, 0.486774, 0.507846,
		0.626831, -0.110573, -0.771270,
		30.239935, 37.229362, 32.071716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196823, 37.997547, 32.610905>,  <29.801153, 37.306763, 32.611603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196823, 37.997547, 32.610905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234173, 37.804920, 32.262337>,  <30.256582, 37.689342, 32.053196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234173, 37.804920, 32.262337>,  <30.196823, 37.997547, 32.610905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234173, 37.804920, 32.262337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199522, 0.848438, -0.490250,
		0.975435, 0.219643, -0.016862,
		0.093373, -0.481571, -0.871419,
		30.262184, 37.660450, 32.000912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564062, 38.429714, 32.270535>,  <30.196823, 37.997547, 32.610905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564062, 38.429714, 32.270535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428740, 38.190910, 31.979568>,  <30.347546, 38.047626, 31.804989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428740, 38.190910, 31.979568>,  <30.564062, 38.429714, 32.270535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428740, 38.190910, 31.979568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158679, 0.798114, -0.581236,
		0.927562, -0.081209, -0.364738,
		-0.338304, -0.597009, -0.727414,
		30.327248, 38.011806, 31.761345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900423, 38.778118, 31.711658>,  <30.564062, 38.429714, 32.270535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900423, 38.778118, 31.711658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597435, 38.550140, 31.584286>,  <30.415642, 38.413353, 31.507862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597435, 38.550140, 31.584286>,  <30.900423, 38.778118, 31.711658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597435, 38.550140, 31.584286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281642, 0.725286, -0.628203,
		0.588996, -0.386161, -0.709903,
		-0.757470, -0.569948, -0.318432,
		30.370193, 38.379154, 31.488756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927771, 38.818203, 30.952379>,  <30.900423, 38.778118, 31.711658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927771, 38.818203, 30.952379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562044, 38.709576, 31.072565>,  <30.342609, 38.644398, 31.144676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562044, 38.709576, 31.072565>,  <30.927771, 38.818203, 30.952379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562044, 38.709576, 31.072565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404064, 0.662206, -0.631043,
		-0.027600, -0.698380, -0.715195,
		-0.914315, -0.271567, 0.300467,
		30.287750, 38.628105, 31.162704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695599, 38.502029, 30.434425>,  <30.927771, 38.818203, 30.952379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695599, 38.502029, 30.434425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392923, 38.640865, 30.656040>,  <30.211319, 38.724167, 30.789009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392923, 38.640865, 30.656040>,  <30.695599, 38.502029, 30.434425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392923, 38.640865, 30.656040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234057, 0.647449, -0.725277,
		-0.610444, -0.678484, -0.408678,
		-0.756687, 0.347087, 0.554035,
		30.165916, 38.744991, 30.822250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140848, 38.553043, 30.013416>,  <30.695599, 38.502029, 30.434425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140848, 38.553043, 30.013416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035599, 38.786995, 30.320318>,  <29.972448, 38.927364, 30.504459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035599, 38.786995, 30.320318>,  <30.140848, 38.553043, 30.013416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035599, 38.786995, 30.320318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326211, 0.694503, -0.641289,
		-0.907939, -0.419026, 0.008053,
		-0.263124, 0.584878, 0.767257,
		29.956661, 38.962460, 30.550495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443390, 38.658646, 29.921562>,  <30.140848, 38.553043, 30.013416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443390, 38.658646, 29.921562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587036, 38.956959, 30.146006>,  <29.673223, 39.135948, 30.280672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587036, 38.956959, 30.146006>,  <29.443390, 38.658646, 29.921562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587036, 38.956959, 30.146006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357543, 0.665280, -0.655412,
		-0.862090, 0.034749, 0.505563,
		0.359116, 0.745785, 0.561107,
		29.694771, 39.180695, 30.314339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859142, 39.226837, 30.024736>,  <29.443390, 38.658646, 29.921562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859142, 39.226837, 30.024736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200670, 39.422882, 30.094915>,  <29.405586, 39.540508, 30.137022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200670, 39.422882, 30.094915>,  <28.859142, 39.226837, 30.024736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200670, 39.422882, 30.094915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350681, 0.790603, -0.501966,
		-0.384731, 0.367061, 0.846905,
		0.853818, 0.490115, 0.175448,
		29.456816, 39.569916, 30.147551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621714, 39.836731, 29.952961>,  <28.859142, 39.226837, 30.024736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621714, 39.836731, 29.952961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013401, 39.913486, 29.979216>,  <29.248413, 39.959541, 29.994968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013401, 39.913486, 29.979216>,  <28.621714, 39.836731, 29.952961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013401, 39.913486, 29.979216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137961, 0.867499, -0.477924,
		-0.148649, 0.458937, 0.875946,
		0.979219, 0.191889, 0.065638,
		29.307167, 39.971054, 29.998907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616186, 40.535480, 30.087690>,  <28.621714, 39.836731, 29.952961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616186, 40.535480, 30.087690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971777, 40.441727, 29.930317>,  <29.185131, 40.385475, 29.835894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971777, 40.441727, 29.930317>,  <28.616186, 40.535480, 30.087690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971777, 40.441727, 29.930317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080345, 0.765957, -0.637851,
		0.450852, 0.598644, 0.662086,
		0.888975, -0.234381, -0.393432,
		29.238470, 40.371414, 29.812288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041498, 41.187435, 30.104870>,  <28.616186, 40.535480, 30.087690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041498, 41.187435, 30.104870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168797, 40.930016, 29.826427>,  <29.245176, 40.775562, 29.659363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168797, 40.930016, 29.826427>,  <29.041498, 41.187435, 30.104870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168797, 40.930016, 29.826427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054946, 0.745570, -0.664159,
		0.946415, 0.173117, 0.272635,
		0.318245, -0.643550, -0.696106,
		29.264271, 40.736950, 29.617596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517385, 41.605682, 29.751408>,  <29.041498, 41.187435, 30.104870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517385, 41.605682, 29.751408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467031, 41.317730, 29.478373>,  <29.436819, 41.144958, 29.314550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467031, 41.317730, 29.478373>,  <29.517385, 41.605682, 29.751408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467031, 41.317730, 29.478373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165757, 0.663128, -0.729922,
		0.978099, -0.205028, 0.035848,
		-0.125883, -0.719879, -0.682590,
		29.429266, 41.101765, 29.273596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920816, 41.816734, 29.172266>,  <29.517385, 41.605682, 29.751408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920816, 41.816734, 29.172266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726826, 41.513515, 28.997833>,  <29.610432, 41.331585, 28.893173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726826, 41.513515, 28.997833>,  <29.920816, 41.816734, 29.172266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726826, 41.513515, 28.997833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086354, 0.454704, -0.886447,
		0.870254, -0.467562, -0.155060,
		-0.484975, -0.758044, -0.436084,
		29.581333, 41.286102, 28.867008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363127, 41.656116, 28.654312>,  <29.920816, 41.816734, 29.172266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363127, 41.656116, 28.654312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994774, 41.553009, 28.537327>,  <29.773762, 41.491146, 28.467136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994774, 41.553009, 28.537327>,  <30.363127, 41.656116, 28.654312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994774, 41.553009, 28.537327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090772, 0.587806, -0.803893,
		0.379130, -0.766837, -0.517901,
		-0.920880, -0.257769, -0.292463,
		29.718510, 41.475677, 28.449589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435879, 41.556980, 27.895451>,  <30.363127, 41.656116, 28.654312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435879, 41.556980, 27.895451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047482, 41.618614, 27.968586>,  <29.814444, 41.655594, 28.012468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047482, 41.618614, 27.968586>,  <30.435879, 41.556980, 27.895451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047482, 41.618614, 27.968586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030341, 0.679092, -0.733426,
		-0.237175, -0.717699, -0.654719,
		-0.970993, 0.154086, 0.182839,
		29.756184, 41.664841, 28.023438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092291, 41.473770, 27.272436>,  <30.435879, 41.556980, 27.895451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092291, 41.473770, 27.272436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855358, 41.686630, 27.514414>,  <29.713198, 41.814346, 27.659601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855358, 41.686630, 27.514414>,  <30.092291, 41.473770, 27.272436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855358, 41.686630, 27.514414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118304, 0.685255, -0.718630,
		-0.796960, -0.497237, -0.342945,
		-0.592334, 0.532148, 0.604946,
		29.677658, 41.846275, 27.695898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585741, 41.756458, 26.808842>,  <30.092291, 41.473770, 27.272436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585741, 41.756458, 26.808842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542706, 41.995125, 27.126938>,  <29.516884, 42.138325, 27.317797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542706, 41.995125, 27.126938>,  <29.585741, 41.756458, 26.808842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542706, 41.995125, 27.126938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161295, 0.778812, -0.606165,
		-0.981024, -0.193486, 0.012447,
		-0.107591, 0.596670, 0.795242,
		29.510427, 42.174126, 27.365511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940029, 42.137775, 26.702036>,  <29.585741, 41.756458, 26.808842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940029, 42.137775, 26.702036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145332, 42.351097, 26.971004>,  <29.268515, 42.479092, 27.132385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145332, 42.351097, 26.971004>,  <28.940029, 42.137775, 26.702036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145332, 42.351097, 26.971004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140785, 0.825198, -0.547017,
		-0.846608, 0.186094, 0.498622,
		0.513258, 0.533308, 0.672420,
		29.299311, 42.511089, 27.172731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537283, 42.688511, 26.834352>,  <28.940029, 42.137775, 26.702036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537283, 42.688511, 26.834352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888813, 42.822651, 26.970119>,  <29.099731, 42.903133, 27.051579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888813, 42.822651, 26.970119>,  <28.537283, 42.688511, 26.834352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888813, 42.822651, 26.970119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179440, 0.891424, -0.416130,
		-0.442112, 0.304801, 0.843583,
		0.878827, 0.335349, 0.339416,
		29.152462, 42.923256, 27.071945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426805, 43.251019, 27.252621>,  <28.537283, 42.688511, 26.834352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426805, 43.251019, 27.252621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792276, 43.292747, 27.095493>,  <29.011559, 43.317783, 27.001217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792276, 43.292747, 27.095493>,  <28.426805, 43.251019, 27.252621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792276, 43.292747, 27.095493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247511, 0.909431, -0.334175,
		0.322381, 0.402556, 0.856749,
		0.913679, 0.104323, -0.392821,
		29.066380, 43.324043, 26.977648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793783, 43.877533, 27.524487>,  <28.426805, 43.251019, 27.252621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793783, 43.877533, 27.524487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962833, 43.763817, 27.180262>,  <29.064262, 43.695587, 26.973726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962833, 43.763817, 27.180262>,  <28.793783, 43.877533, 27.524487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962833, 43.763817, 27.180262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305405, 0.849322, -0.430557,
		0.853297, 0.444784, 0.272121,
		0.422623, -0.284286, -0.860564,
		29.089621, 43.678532, 26.922092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427378, 44.326443, 27.442183>,  <28.793783, 43.877533, 27.524487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427378, 44.326443, 27.442183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244272, 44.183418, 27.116581>,  <29.134409, 44.097603, 26.921221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244272, 44.183418, 27.116581>,  <29.427378, 44.326443, 27.442183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244272, 44.183418, 27.116581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250444, 0.930346, -0.267831,
		0.853071, 0.081260, -0.515428,
		-0.457763, -0.357564, -0.814003,
		29.106943, 44.076149, 26.872379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554512, 44.768295, 26.880842>,  <29.427378, 44.326443, 27.442183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554512, 44.768295, 26.880842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216326, 44.577118, 26.785542>,  <29.013414, 44.462414, 26.728361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216326, 44.577118, 26.785542>,  <29.554512, 44.768295, 26.880842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216326, 44.577118, 26.785542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415000, 0.868789, -0.270149,
		0.336105, -0.129527, -0.932875,
		-0.845463, -0.477941, -0.238250,
		28.962687, 44.433735, 26.714066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136581, 44.675194, 26.427389>,  <29.554512, 44.768295, 26.880842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136581, 44.675194, 26.427389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485447, 44.769043, 26.255678>,  <30.694767, 44.825352, 26.152651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485447, 44.769043, 26.255678>,  <30.136581, 44.675194, 26.427389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485447, 44.769043, 26.255678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487548, 0.489231, -0.723153,
		0.040345, 0.840002, 0.541082,
		0.872164, 0.234628, -0.429279,
		30.747095, 44.839432, 26.126894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096573, 45.331345, 26.365488>,  <30.136581, 44.675194, 26.427389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096573, 45.331345, 26.365488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341066, 45.191128, 26.081654>,  <30.487762, 45.106998, 25.911352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341066, 45.191128, 26.081654>,  <30.096573, 45.331345, 26.365488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341066, 45.191128, 26.081654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492872, 0.532907, -0.687814,
		0.619249, 0.770152, 0.152961,
		0.611235, -0.350537, -0.709588,
		30.524437, 45.085968, 25.868776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417927, 45.921482, 25.934160>,  <30.096573, 45.331345, 26.365488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417927, 45.921482, 25.934160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391621, 45.581772, 25.724623>,  <30.375837, 45.377945, 25.598900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391621, 45.581772, 25.724623>,  <30.417927, 45.921482, 25.934160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391621, 45.581772, 25.724623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458652, 0.491964, -0.740006,
		0.886179, 0.191594, -0.421876,
		-0.065767, -0.849272, -0.523843,
		30.371891, 45.326992, 25.567471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807131, 45.981663, 25.304581>,  <30.417927, 45.921482, 25.934160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807131, 45.981663, 25.304581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497793, 45.730453, 25.269890>,  <30.312191, 45.579727, 25.249075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497793, 45.730453, 25.269890>,  <30.807131, 45.981663, 25.304581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497793, 45.730453, 25.269890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286746, 0.468491, -0.835639,
		0.565436, -0.621366, -0.542389,
		-0.773342, -0.628029, -0.086727,
		30.265791, 45.542046, 25.243872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688429, 45.360809, 24.873611>,  <30.807131, 45.981663, 25.304581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688429, 45.360809, 24.873611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851267, 45.493942, 24.533379>,  <30.948971, 45.573822, 24.329239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851267, 45.493942, 24.533379>,  <30.688429, 45.360809, 24.873611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851267, 45.493942, 24.533379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875757, 0.406772, -0.259974,
		0.259466, 0.850739, 0.457077,
		0.407096, 0.332835, -0.850585,
		30.973396, 45.593792, 24.278204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319548, 45.062355, 24.861088>,  <30.688429, 45.360809, 24.873611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319548, 45.062355, 24.861088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108597, 45.063076, 25.200939>,  <30.982027, 45.063507, 25.404850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108597, 45.063076, 25.200939>,  <31.319548, 45.062355, 24.861088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108597, 45.063076, 25.200939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802460, -0.327512, 0.498793,
		0.279162, 0.944845, 0.171277,
		-0.527378, 0.001801, 0.849629,
		30.950384, 45.063618, 25.455828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813202, 45.106400, 25.511724>,  <31.319548, 45.062355, 24.861088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813202, 45.106400, 25.511724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458220, 45.049412, 25.687052>,  <31.245230, 45.015221, 25.792248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458220, 45.049412, 25.687052>,  <31.813202, 45.106400, 25.511724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458220, 45.049412, 25.687052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458286, -0.171772, 0.872049,
		-0.048947, 0.974781, 0.217730,
		-0.887456, -0.142467, 0.438320,
		31.191982, 45.006672, 25.818548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743849, 45.588554, 25.993345>,  <31.813202, 45.106400, 25.511724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743849, 45.588554, 25.993345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520140, 45.270042, 26.085562>,  <31.385914, 45.078934, 26.140892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520140, 45.270042, 26.085562>,  <31.743849, 45.588554, 25.993345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520140, 45.270042, 26.085562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413150, -0.026633, 0.910273,
		-0.718694, 0.604340, 0.343879,
		-0.559273, -0.796282, 0.230542,
		31.352358, 45.031158, 26.154724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368868, 45.790936, 26.655769>,  <31.743849, 45.588554, 25.993345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368868, 45.790936, 26.655769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378998, 45.391563, 26.635794>,  <31.385075, 45.151939, 26.623808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378998, 45.391563, 26.635794>,  <31.368868, 45.790936, 26.655769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378998, 45.391563, 26.635794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247048, -0.042156, 0.968086,
		-0.968672, -0.036852, 0.245593,
		0.025323, -0.998431, -0.049939,
		31.386595, 45.092033, 26.620811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958925, 45.568718, 27.279219>,  <31.368868, 45.790936, 26.655769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958925, 45.568718, 27.279219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156092, 45.236504, 27.175497>,  <31.274391, 45.037174, 27.113264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156092, 45.236504, 27.175497>,  <30.958925, 45.568718, 27.279219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156092, 45.236504, 27.175497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286891, -0.126215, 0.949612,
		-0.821418, -0.542471, 0.176061,
		0.492916, -0.830539, -0.259306,
		31.303967, 44.987343, 27.097706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742281, 45.042900, 27.844126>,  <30.958925, 45.568718, 27.279219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742281, 45.042900, 27.844126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079002, 44.912144, 27.672308>,  <31.281034, 44.833691, 27.569218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079002, 44.912144, 27.672308>,  <30.742281, 45.042900, 27.844126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079002, 44.912144, 27.672308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188180, -0.568119, 0.801142,
		-0.505916, -0.755237, -0.416732,
		0.841806, -0.326890, -0.429541,
		31.331543, 44.814075, 27.543446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764219, 44.260464, 28.022110>,  <30.742281, 45.042900, 27.844126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764219, 44.260464, 28.022110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130459, 44.350670, 27.888948>,  <31.350203, 44.404793, 27.809052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130459, 44.350670, 27.888948>,  <30.764219, 44.260464, 28.022110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130459, 44.350670, 27.888948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401597, -0.554030, 0.729226,
		-0.019989, -0.801370, -0.597834,
		0.915598, 0.225512, -0.332902,
		31.405138, 44.418324, 27.789078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071047, 43.599884, 27.873640>,  <30.764219, 44.260464, 28.022110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071047, 43.599884, 27.873640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349239, 43.882072, 27.928223>,  <31.516155, 44.051384, 27.960972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349239, 43.882072, 27.928223>,  <31.071047, 43.599884, 27.873640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349239, 43.882072, 27.928223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439122, -0.567610, 0.696413,
		0.568750, -0.424422, -0.704549,
		0.695482, 0.705468, 0.136455,
		31.557884, 44.093712, 27.969158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616966, 43.237957, 27.985186>,  <31.071047, 43.599884, 27.873640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616966, 43.237957, 27.985186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705500, 43.598465, 28.134172>,  <31.758619, 43.814770, 28.223564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705500, 43.598465, 28.134172>,  <31.616966, 43.237957, 27.985186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705500, 43.598465, 28.134172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452711, -0.433249, 0.779326,
		0.863750, -0.003871, -0.503905,
		0.221333, 0.901266, 0.372466,
		31.771900, 43.868843, 28.245913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285732, 43.213951, 28.060484>,  <31.616966, 43.237957, 27.985186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285732, 43.213951, 28.060484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171585, 43.496899, 28.319155>,  <32.103096, 43.666668, 28.474358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171585, 43.496899, 28.319155>,  <32.285732, 43.213951, 28.060484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171585, 43.496899, 28.319155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209668, -0.612316, 0.762304,
		0.935203, 0.353124, 0.026422,
		-0.285367, 0.707370, 0.646679,
		32.085976, 43.709110, 28.513159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857872, 43.244179, 28.575686>,  <32.285732, 43.213951, 28.060484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857872, 43.244179, 28.575686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531982, 43.391632, 28.754725>,  <32.336449, 43.480103, 28.862148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531982, 43.391632, 28.754725>,  <32.857872, 43.244179, 28.575686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531982, 43.391632, 28.754725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154161, -0.606428, 0.780051,
		0.558987, 0.704525, 0.437240,
		-0.814719, 0.368633, 0.447596,
		32.287567, 43.502220, 28.889004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006451, 43.231796, 29.184362>,  <32.857872, 43.244179, 28.575686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006451, 43.231796, 29.184362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619057, 43.293190, 29.262825>,  <32.386620, 43.330025, 29.309902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619057, 43.293190, 29.262825>,  <33.006451, 43.231796, 29.184362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619057, 43.293190, 29.262825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081305, -0.549597, 0.831464,
		0.235421, 0.821210, 0.519799,
		-0.968487, 0.153482, 0.196155,
		32.328510, 43.339233, 29.321671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972038, 43.652378, 29.787121>,  <33.006451, 43.231796, 29.184362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972038, 43.652378, 29.787121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643681, 43.429482, 29.737131>,  <32.446667, 43.295742, 29.707138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643681, 43.429482, 29.737131>,  <32.972038, 43.652378, 29.787121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643681, 43.429482, 29.737131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312641, -0.621634, 0.718211,
		-0.477906, 0.550501, 0.684511,
		-0.820891, -0.557243, -0.124973,
		32.397411, 43.262310, 29.699638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782841, 43.674950, 30.450504>,  <32.972038, 43.652378, 29.787121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782841, 43.674950, 30.450504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587582, 43.374771, 30.272272>,  <32.470425, 43.194664, 30.165333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587582, 43.374771, 30.272272>,  <32.782841, 43.674950, 30.450504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587582, 43.374771, 30.272272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065974, -0.540811, 0.838552,
		-0.870261, 0.379944, 0.313508,
		-0.488152, -0.750443, -0.445581,
		32.441135, 43.149639, 30.138597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674080, 43.263676, 31.032330>,  <32.782841, 43.674950, 30.450504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674080, 43.263676, 31.032330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573246, 43.006611, 30.742933>,  <32.512745, 42.852371, 30.569296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573246, 43.006611, 30.742933>,  <32.674080, 43.263676, 31.032330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573246, 43.006611, 30.742933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023742, -0.751518, 0.659285,
		-0.967415, 0.149016, 0.204702,
		-0.252082, -0.642662, -0.723492,
		32.497620, 42.813812, 30.525887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119373, 42.891911, 31.336575>,  <32.674080, 43.263676, 31.032330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119373, 42.891911, 31.336575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299580, 42.674625, 31.053181>,  <32.407703, 42.544254, 30.883144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299580, 42.674625, 31.053181>,  <32.119373, 42.891911, 31.336575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299580, 42.674625, 31.053181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008039, -0.791083, 0.611656,
		-0.892733, -0.281255, -0.352027,
		0.450514, -0.543216, -0.708487,
		32.434734, 42.511662, 30.840635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683277, 42.211849, 31.343273>,  <32.119373, 42.891911, 31.336575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683277, 42.211849, 31.343273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034840, 42.137466, 31.167570>,  <32.245777, 42.092834, 31.062149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034840, 42.137466, 31.167570>,  <31.683277, 42.211849, 31.343273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034840, 42.137466, 31.167570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059568, -0.870877, 0.487877,
		-0.473263, -0.454964, -0.754341,
		0.878905, -0.185960, -0.439256,
		32.298512, 42.081680, 31.035793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833149, 41.551163, 31.415590>,  <31.683277, 42.211849, 31.343273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833149, 41.551163, 31.415590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206738, 41.671768, 31.338867>,  <32.430889, 41.744133, 31.292833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206738, 41.671768, 31.338867>,  <31.833149, 41.551163, 31.415590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206738, 41.671768, 31.338867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356942, -0.761456, 0.541088,
		0.017092, -0.573824, -0.818800,
		0.933970, 0.301513, -0.191807,
		32.486927, 41.762222, 31.281324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228813, 40.959160, 31.140434>,  <31.833149, 41.551163, 31.415590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228813, 40.959160, 31.140434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488571, 41.222782, 31.292189>,  <32.644424, 41.380955, 31.383242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488571, 41.222782, 31.292189>,  <32.228813, 40.959160, 31.140434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488571, 41.222782, 31.292189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387941, -0.716209, 0.580126,
		0.654054, -0.229552, -0.720777,
		0.649396, 0.659053, 0.379386,
		32.683392, 41.420498, 31.406004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866768, 40.583832, 31.241032>,  <32.228813, 40.959160, 31.140434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866768, 40.583832, 31.241032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905632, 40.914326, 31.462984>,  <32.928951, 41.112621, 31.596155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905632, 40.914326, 31.462984>,  <32.866768, 40.583832, 31.241032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905632, 40.914326, 31.462984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580835, -0.499802, 0.642517,
		0.808202, 0.259869, -0.528467,
		0.097159, 0.826236, 0.554882,
		32.934780, 41.162197, 31.629448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640072, 40.651279, 31.380972>,  <32.866768, 40.583832, 31.241032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640072, 40.651279, 31.380972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417202, 40.833530, 31.658667>,  <33.283482, 40.942883, 31.825283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417202, 40.833530, 31.658667>,  <33.640072, 40.651279, 31.380972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417202, 40.833530, 31.658667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367998, -0.613973, 0.698294,
		0.744404, 0.644547, 0.174419,
		-0.557172, 0.455626, 0.694236,
		33.250050, 40.970219, 31.866938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948235, 40.362038, 31.934305>,  <33.640072, 40.651279, 31.380972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948235, 40.362038, 31.934305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628128, 40.554070, 32.078030>,  <33.436066, 40.669289, 32.164265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628128, 40.554070, 32.078030>,  <33.948235, 40.362038, 31.934305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628128, 40.554070, 32.078030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007919, -0.590690, 0.806860,
		0.599597, 0.648546, 0.468906,
		-0.800263, 0.480077, 0.359312,
		33.388050, 40.698093, 32.185822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123764, 40.688046, 32.620701>,  <33.948235, 40.362038, 31.934305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123764, 40.688046, 32.620701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732597, 40.606697, 32.601452>,  <33.497898, 40.557888, 32.589905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732597, 40.606697, 32.601452>,  <34.123764, 40.688046, 32.620701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732597, 40.606697, 32.601452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082894, -0.588819, 0.804003,
		-0.191848, 0.782260, 0.592675,
		-0.977918, -0.203375, -0.048120,
		33.439220, 40.545685, 32.587017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867382, 40.758675, 33.286980>,  <34.123764, 40.688046, 32.620701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867382, 40.758675, 33.286980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582447, 40.544113, 33.105938>,  <33.411488, 40.415379, 32.997311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582447, 40.544113, 33.105938>,  <33.867382, 40.758675, 33.286980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582447, 40.544113, 33.105938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010431, -0.652906, 0.757367,
		-0.701763, 0.534777, 0.470682,
		-0.712334, -0.536402, -0.452608,
		33.368748, 40.383194, 32.970154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298328, 40.708374, 33.764763>,  <33.867382, 40.758675, 33.286980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298328, 40.708374, 33.764763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220108, 40.399376, 33.523098>,  <33.173176, 40.213978, 33.378098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220108, 40.399376, 33.523098>,  <33.298328, 40.708374, 33.764763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220108, 40.399376, 33.523098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003312, -0.615534, 0.788103,
		-0.980688, 0.156113, 0.117808,
		-0.195548, -0.772493, -0.604165,
		33.161442, 40.167629, 33.341850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647697, 40.392776, 33.968678>,  <33.298328, 40.708374, 33.764763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647697, 40.392776, 33.968678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845619, 40.107174, 33.770538>,  <32.964371, 39.935814, 33.651653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845619, 40.107174, 33.770538>,  <32.647697, 40.392776, 33.968678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845619, 40.107174, 33.770538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285224, -0.671875, 0.683543,
		-0.820862, -0.196936, -0.536098,
		0.494805, -0.714003, -0.495346,
		32.994061, 39.892975, 33.621933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175114, 39.833027, 34.019398>,  <32.647697, 40.392776, 33.968678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175114, 39.833027, 34.019398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548164, 39.710629, 33.942905>,  <32.771996, 39.637192, 33.897011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548164, 39.710629, 33.942905>,  <32.175114, 39.833027, 34.019398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548164, 39.710629, 33.942905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135032, -0.787433, 0.601428,
		-0.334616, -0.535087, -0.775702,
		0.932630, -0.305992, -0.191233,
		32.827953, 39.618832, 33.885536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065800, 39.151268, 33.936913>,  <32.175114, 39.833027, 34.019398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065800, 39.151268, 33.936913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458870, 39.182014, 34.004379>,  <32.694710, 39.200462, 34.044857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458870, 39.182014, 34.004379>,  <32.065800, 39.151268, 33.936913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458870, 39.182014, 34.004379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037962, -0.807208, 0.589045,
		0.181424, -0.585241, -0.790303,
		0.982672, 0.076866, 0.168664,
		32.753670, 39.205074, 34.054977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284683, 38.508858, 33.974476>,  <32.065800, 39.151268, 33.936913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284683, 38.508858, 33.974476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588264, 38.688778, 34.162807>,  <32.770412, 38.796730, 34.275806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588264, 38.688778, 34.162807>,  <32.284683, 38.508858, 33.974476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588264, 38.688778, 34.162807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078224, -0.780814, 0.619847,
		0.646433, -0.433603, -0.627784,
		0.758950, 0.449797, 0.470826,
		32.815948, 38.823715, 34.304054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764038, 37.948795, 34.118637>,  <32.284683, 38.508858, 33.974476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764038, 37.948795, 34.118637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861229, 38.244404, 34.369968>,  <32.919544, 38.421768, 34.520767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861229, 38.244404, 34.369968>,  <32.764038, 37.948795, 34.118637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861229, 38.244404, 34.369968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156541, -0.669128, 0.726472,
		0.957316, -0.078159, -0.278274,
		0.242981, 0.739025, 0.628332,
		32.934124, 38.466110, 34.558468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448284, 37.838177, 34.379921>,  <32.764038, 37.948795, 34.118637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448284, 37.838177, 34.379921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273628, 38.070004, 34.655151>,  <33.168835, 38.209099, 34.820290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273628, 38.070004, 34.655151>,  <33.448284, 37.838177, 34.379921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273628, 38.070004, 34.655151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251126, -0.655918, 0.711834,
		0.863876, 0.483609, 0.140856,
		-0.436639, 0.579564, 0.688079,
		33.142635, 38.243874, 34.861576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027279, 37.990242, 34.907230>,  <33.448284, 37.838177, 34.379921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027279, 37.990242, 34.907230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667927, 38.061905, 35.067642>,  <33.452316, 38.104904, 35.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667927, 38.061905, 35.067642>,  <34.027279, 37.990242, 34.907230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667927, 38.061905, 35.067642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218607, -0.609530, 0.762026,
		0.380960, 0.772254, 0.508423,
		-0.898376, 0.179157, 0.401027,
		33.398415, 38.115650, 35.187950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172867, 37.931728, 35.681198>,  <34.027279, 37.990242, 34.907230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172867, 37.931728, 35.681198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776306, 37.928360, 35.628963>,  <33.538368, 37.926338, 35.597622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776306, 37.928360, 35.628963>,  <34.172867, 37.931728, 35.681198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776306, 37.928360, 35.628963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084568, -0.720261, 0.688529,
		-0.099854, 0.693652, 0.713356,
		-0.991402, -0.008426, -0.130582,
		33.478886, 37.925831, 35.589790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881248, 38.164310, 36.291687>,  <34.172867, 37.931728, 35.681198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881248, 38.164310, 36.291687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634556, 37.898766, 36.122490>,  <33.486542, 37.739437, 36.020969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634556, 37.898766, 36.122490>,  <33.881248, 38.164310, 36.291687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634556, 37.898766, 36.122490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125125, -0.613202, 0.779953,
		-0.777166, 0.428094, 0.461246,
		-0.616730, -0.663867, -0.422995,
		33.449535, 37.699604, 35.995590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513027, 37.839081, 36.965179>,  <33.881248, 38.164310, 36.291687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513027, 37.839081, 36.965179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420483, 37.608326, 36.651829>,  <33.364956, 37.469872, 36.463818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420483, 37.608326, 36.651829>,  <33.513027, 37.839081, 36.965179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420483, 37.608326, 36.651829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006916, -0.806176, 0.591636,
		-0.972842, 0.131466, 0.190511,
		-0.231366, -0.576886, -0.783373,
		33.351074, 37.435261, 36.416817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012951, 37.351421, 37.141739>,  <33.513027, 37.839081, 36.965179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012951, 37.351421, 37.141739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141273, 37.187664, 36.800098>,  <33.218266, 37.089409, 36.595116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141273, 37.187664, 36.800098>,  <33.012951, 37.351421, 37.141739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141273, 37.187664, 36.800098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094236, -0.911082, 0.401308,
		-0.942446, -0.048254, -0.330857,
		0.320803, -0.409390, -0.854099,
		33.237514, 37.064846, 36.543869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525536, 36.738205, 37.016907>,  <33.012951, 37.351421, 37.141739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525536, 36.738205, 37.016907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889179, 36.689808, 36.857471>,  <33.107365, 36.660770, 36.761810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889179, 36.689808, 36.857471>,  <32.525536, 36.738205, 37.016907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889179, 36.689808, 36.857471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074077, -0.894671, 0.440541,
		-0.409910, -0.430028, -0.804394,
		0.909113, -0.120995, -0.398590,
		33.161915, 36.653511, 36.737896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586323, 36.088200, 36.857548>,  <32.525536, 36.738205, 37.016907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586323, 36.088200, 36.857548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968445, 36.206276, 36.851116>,  <33.197716, 36.277122, 36.847256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968445, 36.206276, 36.851116>,  <32.586323, 36.088200, 36.857548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968445, 36.206276, 36.851116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271432, -0.854255, 0.443366,
		0.117139, -0.427914, -0.896196,
		0.955303, 0.295192, -0.016083,
		33.255035, 36.294834, 36.846291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754250, 35.440697, 36.675999>,  <32.586323, 36.088200, 36.857548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754250, 35.440697, 36.675999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090580, 35.622776, 36.793175>,  <33.292377, 35.732025, 36.863480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090580, 35.622776, 36.793175>,  <32.754250, 35.440697, 36.675999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090580, 35.622776, 36.793175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421417, -0.890105, 0.173554,
		0.339746, -0.022480, -0.940248,
		0.840821, 0.455201, 0.292937,
		33.342827, 35.759335, 36.881054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323975, 34.997471, 36.402573>,  <32.754250, 35.440697, 36.675999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323975, 34.997471, 36.402573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448212, 35.195972, 36.726860>,  <33.522755, 35.315075, 36.921432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448212, 35.195972, 36.726860>,  <33.323975, 34.997471, 36.402573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448212, 35.195972, 36.726860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335741, -0.855200, 0.394856,
		0.889274, 0.149550, -0.432234,
		0.310596, 0.496254, 0.810717,
		33.541389, 35.344849, 36.970074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062843, 34.836720, 36.567032>,  <33.323975, 34.997471, 36.402573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062843, 34.836720, 36.567032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925426, 34.972271, 36.917377>,  <33.842976, 35.053600, 37.127586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925426, 34.972271, 36.917377>,  <34.062843, 34.836720, 36.567032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925426, 34.972271, 36.917377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170009, -0.894780, 0.412875,
		0.923620, 0.290746, 0.249785,
		-0.343544, 0.338874, 0.875866,
		33.822365, 35.073933, 37.180138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160019, 35.587635, 36.738022>,  <34.062843, 34.836720, 36.567032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160019, 35.587635, 36.738022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329884, 35.327225, 36.486362>,  <34.431801, 35.170979, 36.335365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329884, 35.327225, 36.486362>,  <34.160019, 35.587635, 36.738022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329884, 35.327225, 36.486362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176826, 0.741183, -0.647596,
		0.887916, 0.163759, 0.429870,
		0.424662, -0.651023, -0.629152,
		34.457283, 35.131916, 36.297619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731449, 35.841530, 36.605331>,  <34.160019, 35.587635, 36.738022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731449, 35.841530, 36.605331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734898, 35.600700, 36.285973>,  <34.736969, 35.456203, 36.094357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734898, 35.600700, 36.285973>,  <34.731449, 35.841530, 36.605331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734898, 35.600700, 36.285973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511194, 0.688862, -0.513955,
		0.859422, -0.403701, 0.313718,
		0.008624, -0.602075, -0.798393,
		34.737484, 35.420078, 36.046455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408638, 35.788570, 36.328945>,  <34.731449, 35.841530, 36.605331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408638, 35.788570, 36.328945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178761, 35.696239, 36.014889>,  <35.040833, 35.640842, 35.826454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178761, 35.696239, 36.014889>,  <35.408638, 35.788570, 36.328945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178761, 35.696239, 36.014889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571979, 0.572859, -0.587089,
		0.585291, -0.786480, -0.197190,
		-0.574695, -0.230830, -0.785139,
		35.006351, 35.626991, 35.779346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926968, 35.700558, 35.769260>,  <35.408638, 35.788570, 36.328945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926968, 35.700558, 35.769260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569214, 35.743069, 35.595463>,  <35.354561, 35.768574, 35.491184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569214, 35.743069, 35.595463>,  <35.926968, 35.700558, 35.769260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569214, 35.743069, 35.595463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401966, 0.617094, -0.676475,
		0.196231, -0.779679, -0.594637,
		-0.894381, 0.106279, -0.434497,
		35.300900, 35.774952, 35.465115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038338, 35.459656, 35.040661>,  <35.926968, 35.700558, 35.769260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038338, 35.459656, 35.040661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734348, 35.713612, 35.096313>,  <35.551956, 35.865986, 35.129707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734348, 35.713612, 35.096313>,  <36.038338, 35.459656, 35.040661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734348, 35.713612, 35.096313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423442, 0.646048, -0.635073,
		-0.493087, -0.423724, -0.759818,
		-0.759975, 0.634885, 0.139135,
		35.506355, 35.904076, 35.138054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871735, 35.568508, 34.404629>,  <36.038338, 35.459656, 35.040661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871735, 35.568508, 34.404629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687450, 35.885715, 34.564060>,  <35.576878, 36.076038, 34.659718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687450, 35.885715, 34.564060>,  <35.871735, 35.568508, 34.404629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687450, 35.885715, 34.564060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365107, 0.578656, -0.729283,
		-0.808975, -0.190466, -0.556132,
		-0.460713, 0.793019, 0.398578,
		35.549236, 36.123623, 34.683632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729622, 35.972633, 33.801331>,  <35.871735, 35.568508, 34.404629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729622, 35.972633, 33.801331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612053, 36.234909, 34.079521>,  <35.541512, 36.392273, 34.246437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612053, 36.234909, 34.079521>,  <35.729622, 35.972633, 33.801331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612053, 36.234909, 34.079521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177907, 0.752429, -0.634192,
		-0.939127, -0.062671, -0.337805,
		-0.293920, 0.655685, 0.695477,
		35.523876, 36.431614, 34.288166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090721, 36.396233, 33.540474>,  <35.729622, 35.972633, 33.801331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090721, 36.396233, 33.540474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267448, 36.624954, 33.816975>,  <35.373486, 36.762188, 33.982876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267448, 36.624954, 33.816975>,  <35.090721, 36.396233, 33.540474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267448, 36.624954, 33.816975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051314, 0.753172, -0.655819,
		-0.895634, 0.325226, 0.303426,
		0.441821, 0.571804, 0.691255,
		35.399994, 36.796497, 34.024353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867058, 37.091434, 33.333385>,  <35.090721, 36.396233, 33.540474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867058, 37.091434, 33.333385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195740, 37.107964, 33.560753>,  <35.392948, 37.117882, 33.697174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195740, 37.107964, 33.560753>,  <34.867058, 37.091434, 33.333385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195740, 37.107964, 33.560753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350389, 0.749976, -0.561037,
		-0.449482, 0.660173, 0.601779,
		0.821702, 0.041319, 0.568418,
		35.442249, 37.120358, 33.731277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816849, 37.755199, 33.607090>,  <34.867058, 37.091434, 33.333385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816849, 37.755199, 33.607090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195026, 37.627083, 33.583263>,  <35.421932, 37.550213, 33.568966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195026, 37.627083, 33.583263>,  <34.816849, 37.755199, 33.607090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195026, 37.627083, 33.583263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250397, 0.831395, -0.496068,
		0.208409, 0.454090, 0.866238,
		0.945445, -0.320289, -0.059567,
		35.478661, 37.530994, 33.565392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236744, 38.412678, 33.678200>,  <34.816849, 37.755199, 33.607090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236744, 38.412678, 33.678200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489910, 38.131428, 33.548561>,  <35.641811, 37.962677, 33.470779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489910, 38.131428, 33.548561>,  <35.236744, 38.412678, 33.678200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489910, 38.131428, 33.548561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434313, 0.668981, -0.603188,
		0.640927, 0.241009, 0.728785,
		0.632917, -0.703120, -0.324095,
		35.679787, 37.920490, 33.451332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936928, 38.669559, 33.698769>,  <35.236744, 38.412678, 33.678200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936928, 38.669559, 33.698769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938961, 38.378719, 33.424164>,  <35.940182, 38.204216, 33.259403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938961, 38.378719, 33.424164>,  <35.936928, 38.669559, 33.698769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938961, 38.378719, 33.424164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401229, 0.630315, -0.664619,
		0.915964, -0.272072, 0.294937,
		0.005079, -0.727104, -0.686508,
		35.940483, 38.160587, 33.218212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542416, 38.810146, 33.364872>,  <35.936928, 38.669559, 33.698769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542416, 38.810146, 33.364872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301388, 38.592518, 33.131329>,  <36.156769, 38.461941, 32.991203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301388, 38.592518, 33.131329>,  <36.542416, 38.810146, 33.364872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301388, 38.592518, 33.131329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176729, 0.622459, -0.762438,
		0.778250, -0.562609, -0.278923,
		-0.602573, -0.544073, -0.583858,
		36.120617, 38.429295, 32.956173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803188, 38.856003, 32.685841>,  <36.542416, 38.810146, 33.364872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803188, 38.856003, 32.685841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424732, 38.743286, 32.622066>,  <36.197659, 38.675655, 32.583801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424732, 38.743286, 32.622066>,  <36.803188, 38.856003, 32.685841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424732, 38.743286, 32.622066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088319, 0.698395, -0.710243,
		0.311492, -0.657905, -0.685664,
		-0.946136, -0.281792, -0.159439,
		36.140892, 38.658749, 32.574234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793037, 38.848351, 32.028126>,  <36.803188, 38.856003, 32.685841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793037, 38.848351, 32.028126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403465, 38.848866, 32.118858>,  <36.169720, 38.849174, 32.173298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403465, 38.848866, 32.118858>,  <36.793037, 38.848351, 32.028126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403465, 38.848866, 32.118858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182024, 0.592291, -0.784894,
		-0.135361, -0.805723, -0.576617,
		-0.973932, 0.001286, 0.226834,
		36.111286, 38.849251, 32.186909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476082, 38.759418, 31.342617>,  <36.793037, 38.848351, 32.028126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476082, 38.759418, 31.342617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155807, 38.878189, 31.550745>,  <35.963642, 38.949451, 31.675623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155807, 38.878189, 31.550745>,  <36.476082, 38.759418, 31.342617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155807, 38.878189, 31.550745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347207, 0.477788, -0.806949,
		-0.488211, -0.826771, -0.279462,
		-0.800686, 0.296930, 0.520322,
		35.915600, 38.967266, 31.706842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801338, 38.539791, 30.942644>,  <36.476082, 38.759418, 31.342617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801338, 38.539791, 30.942644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728466, 38.848122, 31.186819>,  <35.684742, 39.033119, 31.333324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728466, 38.848122, 31.186819>,  <35.801338, 38.539791, 30.942644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728466, 38.848122, 31.186819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555140, 0.431775, -0.710908,
		-0.811559, -0.468394, 0.349255,
		-0.182185, 0.770829, 0.610435,
		35.673809, 39.079369, 31.369949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074955, 38.611366, 30.967083>,  <35.801338, 38.539791, 30.942644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074955, 38.611366, 30.967083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194130, 38.970238, 31.097504>,  <35.265633, 39.185558, 31.175756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.194130, 38.970238, 31.097504>,  <35.074955, 38.611366, 30.967083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194130, 38.970238, 31.097504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537315, 0.439931, -0.719551,
		-0.789004, 0.039187, 0.613137,
		0.297935, 0.897176, 0.326051,
		35.283512, 39.239391, 31.195318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462326, 39.027790, 30.864414>,  <35.074955, 38.611366, 30.967083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462326, 39.027790, 30.864414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766071, 39.283787, 30.911356>,  <34.948318, 39.437386, 30.939520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766071, 39.283787, 30.911356>,  <34.462326, 39.027790, 30.864414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766071, 39.283787, 30.911356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438672, 0.636769, -0.634108,
		-0.480551, 0.430040, 0.764288,
		0.759366, 0.639993, 0.117353,
		34.993881, 39.475784, 30.946562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204388, 39.715134, 31.079344>,  <34.462326, 39.027790, 30.864414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204388, 39.715134, 31.079344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547516, 39.771877, 30.881750>,  <34.753391, 39.805923, 30.763195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547516, 39.771877, 30.881750>,  <34.204388, 39.715134, 31.079344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547516, 39.771877, 30.881750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484009, 0.546242, -0.683634,
		0.172855, 0.825528, 0.537239,
		0.857821, 0.141859, -0.493983,
		34.804863, 39.814434, 30.733555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191372, 40.367832, 30.982847>,  <34.204388, 39.715134, 31.079344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191372, 40.367832, 30.982847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423054, 40.207916, 30.698679>,  <34.562061, 40.111965, 30.528177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423054, 40.207916, 30.698679>,  <34.191372, 40.367832, 30.982847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423054, 40.207916, 30.698679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528586, 0.479253, -0.700652,
		0.620583, 0.781336, 0.066261,
		0.579200, -0.399788, -0.710420,
		34.596813, 40.087978, 30.485554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200516, 40.913368, 30.527805>,  <34.191372, 40.367832, 30.982847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200516, 40.913368, 30.527805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358734, 40.623547, 30.302040>,  <34.453663, 40.449654, 30.166580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358734, 40.623547, 30.302040>,  <34.200516, 40.913368, 30.527805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358734, 40.623547, 30.302040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400646, 0.416862, -0.815910,
		0.826455, 0.548858, -0.125404,
		0.395543, -0.724556, -0.564415,
		34.477398, 40.406181, 30.132715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637089, 41.241772, 30.022678>,  <34.200516, 40.913368, 30.527805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637089, 41.241772, 30.022678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531384, 40.888763, 29.867077>,  <34.467960, 40.676960, 29.773716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531384, 40.888763, 29.867077>,  <34.637089, 41.241772, 30.022678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531384, 40.888763, 29.867077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256740, 0.453160, -0.853657,
		0.929651, -0.125715, -0.346331,
		-0.264261, -0.882520, -0.389004,
		34.452106, 40.624008, 29.750376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706638, 41.388016, 29.421457>,  <34.637089, 41.241772, 30.022678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706638, 41.388016, 29.421457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484894, 41.055824, 29.399628>,  <34.351845, 40.856510, 29.386530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484894, 41.055824, 29.399628>,  <34.706638, 41.388016, 29.421457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484894, 41.055824, 29.399628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505500, 0.388074, -0.770629,
		0.661173, -0.399621, -0.634944,
		-0.554365, -0.830482, -0.054576,
		34.318584, 40.806679, 29.383255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728462, 41.078453, 28.785667>,  <34.706638, 41.388016, 29.421457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728462, 41.078453, 28.785667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381943, 40.934566, 28.924307>,  <34.174030, 40.848232, 29.007490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381943, 40.934566, 28.924307>,  <34.728462, 41.078453, 28.785667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381943, 40.934566, 28.924307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455121, 0.282394, -0.844463,
		0.205889, -0.889302, -0.408352,
		-0.866299, -0.359716, 0.346598,
		34.122055, 40.826653, 29.028286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496021, 40.862762, 28.197069>,  <34.728462, 41.078453, 28.785667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496021, 40.862762, 28.197069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176147, 40.863590, 28.437237>,  <33.984222, 40.864086, 28.581337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176147, 40.863590, 28.437237>,  <34.496021, 40.862762, 28.197069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176147, 40.863590, 28.437237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600035, 0.033230, -0.799283,
		-0.021611, -0.999445, -0.025328,
		-0.799682, 0.002076, 0.600420,
		33.936241, 40.864212, 28.617363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950562, 40.358059, 27.885756>,  <34.496021, 40.862762, 28.197069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950562, 40.358059, 27.885756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766617, 40.598480, 28.147215>,  <33.656250, 40.742733, 28.304090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766617, 40.598480, 28.147215>,  <33.950562, 40.358059, 27.885756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766617, 40.598480, 28.147215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796706, 0.045810, -0.602628,
		-0.392158, -0.797892, 0.457800,
		-0.459860, 0.601058, 0.653650,
		33.628658, 40.778797, 28.343309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276482, 40.102303, 27.844809>,  <33.950562, 40.358059, 27.885756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276482, 40.102303, 27.844809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245682, 40.452057, 28.036442>,  <33.227203, 40.661911, 28.151423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245682, 40.452057, 28.036442>,  <33.276482, 40.102303, 27.844809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245682, 40.452057, 28.036442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698348, 0.295653, -0.651843,
		-0.711604, -0.384759, 0.587860,
		-0.077000, 0.874385, 0.479084,
		33.222584, 40.714371, 28.180166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661709, 40.126797, 28.227684>,  <33.276482, 40.102303, 27.844809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661709, 40.126797, 28.227684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758175, 40.505848, 28.143930>,  <32.816055, 40.733276, 28.093678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758175, 40.505848, 28.143930>,  <32.661709, 40.126797, 28.227684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758175, 40.505848, 28.143930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876866, 0.120319, -0.465435,
		-0.415866, 0.295851, 0.859958,
		0.241169, 0.947626, -0.209385,
		32.830524, 40.790134, 28.081116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020752, 40.502274, 28.296509>,  <32.661709, 40.126797, 28.227684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020752, 40.502274, 28.296509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254639, 40.739605, 28.075218>,  <32.394970, 40.882004, 27.942444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254639, 40.739605, 28.075218>,  <32.020752, 40.502274, 28.296509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254639, 40.739605, 28.075218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795857, 0.287400, -0.532929,
		-0.157205, 0.751905, 0.640254,
		0.584721, 0.593330, -0.553228,
		32.430054, 40.917603, 27.909250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618280, 41.084526, 28.167988>,  <32.020752, 40.502274, 28.296509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618280, 41.084526, 28.167988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898115, 41.145748, 27.888802>,  <32.066017, 41.182480, 27.721291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898115, 41.145748, 27.888802>,  <31.618280, 41.084526, 28.167988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898115, 41.145748, 27.888802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663262, 0.502476, -0.554618,
		0.265825, 0.850936, 0.453038,
		0.699586, 0.153051, -0.697965,
		32.107990, 41.191662, 27.679413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456900, 41.780853, 27.926729>,  <31.618280, 41.084526, 28.167988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456900, 41.780853, 27.926729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694952, 41.650898, 27.632717>,  <31.837784, 41.572926, 27.456310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694952, 41.650898, 27.632717>,  <31.456900, 41.780853, 27.926729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694952, 41.650898, 27.632717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528516, 0.530776, -0.662532,
		0.605386, 0.782766, 0.144169,
		0.595129, -0.324892, -0.735029,
		31.873491, 41.553429, 27.412209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614042, 42.401112, 27.486931>,  <31.456900, 41.780853, 27.926729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614042, 42.401112, 27.486931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712467, 42.089596, 27.256126>,  <31.771523, 41.902687, 27.117643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712467, 42.089596, 27.256126>,  <31.614042, 42.401112, 27.486931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712467, 42.089596, 27.256126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341825, 0.487339, -0.803528,
		0.906978, 0.394954, -0.146293,
		0.246062, -0.778789, -0.577011,
		31.786285, 41.855961, 27.083023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039425, 42.665504, 26.916433>,  <31.614042, 42.401112, 27.486931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039425, 42.665504, 26.916433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848328, 42.325222, 26.828741>,  <31.733669, 42.121052, 26.776125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848328, 42.325222, 26.828741>,  <32.039425, 42.665504, 26.916433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848328, 42.325222, 26.828741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425434, 0.442372, -0.789502,
		0.768617, -0.283908, -0.573258,
		-0.477739, -0.850708, -0.219230,
		31.705006, 42.070011, 26.762972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289261, 42.395714, 26.235964>,  <32.039425, 42.665504, 26.916433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289261, 42.395714, 26.235964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952082, 42.180607, 26.242182>,  <31.749775, 42.051540, 26.245913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952082, 42.180607, 26.242182>,  <32.289261, 42.395714, 26.235964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952082, 42.180607, 26.242182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240803, 0.351298, -0.904767,
		0.481098, -0.766414, -0.425622,
		-0.842946, -0.537772, 0.015546,
		31.699198, 42.019276, 26.246845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274784, 42.104233, 25.567968>,  <32.289261, 42.395714, 26.235964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274784, 42.104233, 25.567968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909288, 42.110718, 25.730360>,  <31.689991, 42.114609, 25.827795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909288, 42.110718, 25.730360>,  <32.274784, 42.104233, 25.567968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909288, 42.110718, 25.730360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393141, 0.216974, -0.893511,
		-0.102571, -0.976043, -0.191885,
		-0.913739, 0.016211, 0.405978,
		31.635166, 42.115582, 25.852154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904137, 41.821377, 25.120266>,  <32.274784, 42.104233, 25.567968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904137, 41.821377, 25.120266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653378, 42.066288, 25.312981>,  <31.502922, 42.213234, 25.428610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653378, 42.066288, 25.312981>,  <31.904137, 41.821377, 25.120266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653378, 42.066288, 25.312981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422774, 0.252082, -0.870469,
		-0.654416, -0.749383, 0.100824,
		-0.626899, 0.612274, 0.481787,
		31.465307, 42.249969, 25.457516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271538, 41.626598, 24.837502>,  <31.904137, 41.821377, 25.120266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271538, 41.626598, 24.837502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226152, 41.984962, 25.009304>,  <31.198921, 42.199982, 25.112385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226152, 41.984962, 25.009304>,  <31.271538, 41.626598, 24.837502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226152, 41.984962, 25.009304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276913, 0.386651, -0.879671,
		-0.954172, -0.218747, 0.204218,
		-0.113465, 0.895908, 0.429506,
		31.192114, 42.253735, 25.138155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229218, 41.353676, 24.088448>,  <31.271538, 41.626598, 24.837502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229218, 41.353676, 24.088448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402952, 41.224689, 23.752028>,  <31.507193, 41.147297, 23.550175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402952, 41.224689, 23.752028>,  <31.229218, 41.353676, 24.088448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402952, 41.224689, 23.752028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746050, -0.394426, 0.536505,
		-0.504739, -0.860489, 0.069266,
		0.434336, -0.322470, -0.841050,
		31.533253, 41.127949, 23.499712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287479, 40.664494, 24.270870>,  <31.229218, 41.353676, 24.088448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287479, 40.664494, 24.270870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513308, 40.722149, 23.945789>,  <31.648804, 40.756744, 23.750740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513308, 40.722149, 23.945789>,  <31.287479, 40.664494, 24.270870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513308, 40.722149, 23.945789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683321, -0.633909, 0.362258,
		-0.462963, -0.759856, -0.456380,
		0.564568, 0.144142, -0.812702,
		31.682678, 40.765392, 23.701979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525421, 39.955875, 24.054382>,  <31.287479, 40.664494, 24.270870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525421, 39.955875, 24.054382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785547, 40.217937, 23.900570>,  <31.941622, 40.375175, 23.808283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785547, 40.217937, 23.900570>,  <31.525421, 39.955875, 24.054382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785547, 40.217937, 23.900570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747067, -0.459739, 0.480136,
		0.137778, -0.599510, -0.788419,
		0.650313, 0.655154, -0.384532,
		31.980640, 40.414482, 23.785210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004665, 39.551037, 23.742657>,  <31.525421, 39.955875, 24.054382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004665, 39.551037, 23.742657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192551, 39.899624, 23.799109>,  <32.305283, 40.108776, 23.832979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192551, 39.899624, 23.799109>,  <32.004665, 39.551037, 23.742657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192551, 39.899624, 23.799109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721865, -0.471160, 0.506872,
		0.508217, -0.136208, -0.850390,
		0.469710, 0.871468, 0.141128,
		32.333462, 40.161064, 23.841446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719372, 39.369141, 23.799061>,  <32.004665, 39.551037, 23.742657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719372, 39.369141, 23.799061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693817, 39.743397, 23.937910>,  <32.678486, 39.967949, 24.021219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693817, 39.743397, 23.937910>,  <32.719372, 39.369141, 23.799061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693817, 39.743397, 23.937910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667803, -0.218398, 0.711576,
		0.741591, 0.277267, -0.610872,
		-0.063884, 0.935641, 0.347122,
		32.674652, 40.024090, 24.042048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418530, 39.692570, 23.806923>,  <32.719372, 39.369141, 23.799061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418530, 39.692570, 23.806923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207283, 39.863197, 24.100624>,  <33.080536, 39.965572, 24.276846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207283, 39.863197, 24.100624>,  <33.418530, 39.692570, 23.806923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207283, 39.863197, 24.100624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694294, -0.280942, 0.662592,
		0.488924, 0.859716, -0.147793,
		-0.528119, 0.426568, 0.734255,
		33.048847, 39.991169, 24.320900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902695, 39.974758, 24.267958>,  <33.418530, 39.692570, 23.806923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902695, 39.974758, 24.267958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567448, 39.983589, 24.485975>,  <33.366299, 39.988888, 24.616785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567448, 39.983589, 24.485975>,  <33.902695, 39.974758, 24.267958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567448, 39.983589, 24.485975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537565, -0.136274, 0.832138,
		0.092648, 0.990425, 0.102344,
		-0.838117, 0.022079, 0.545044,
		33.316013, 39.990211, 24.649488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992165, 40.529415, 24.929762>,  <33.902695, 39.974758, 24.267958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992165, 40.529415, 24.929762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692024, 40.287533, 25.036568>,  <33.511940, 40.142403, 25.100651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692024, 40.287533, 25.036568>,  <33.992165, 40.529415, 24.929762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692024, 40.287533, 25.036568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361466, -0.037153, 0.931645,
		-0.553454, 0.795579, 0.246460,
		-0.750354, -0.604710, 0.267012,
		33.466919, 40.106121, 25.116671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843636, 40.746387, 25.596895>,  <33.992165, 40.529415, 24.929762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843636, 40.746387, 25.596895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674046, 40.384121, 25.598122>,  <33.572292, 40.166759, 25.598858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674046, 40.384121, 25.598122>,  <33.843636, 40.746387, 25.596895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674046, 40.384121, 25.598122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425628, -0.196257, 0.883360,
		-0.799430, 0.375825, 0.468686,
		-0.423972, -0.905670, 0.003068,
		33.546856, 40.112419, 25.599043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413696, 40.660446, 26.162174>,  <33.843636, 40.746387, 25.596895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413696, 40.660446, 26.162174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509163, 40.280872, 26.079653>,  <33.566444, 40.053127, 26.030140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509163, 40.280872, 26.079653>,  <33.413696, 40.660446, 26.162174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509163, 40.280872, 26.079653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139761, -0.176666, 0.974297,
		-0.960991, -0.261366, 0.090460,
		0.238667, -0.948934, -0.206304,
		33.580765, 39.996193, 26.017761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242287, 40.272392, 26.733820>,  <33.413696, 40.660446, 26.162174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242287, 40.272392, 26.733820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482399, 40.002251, 26.562441>,  <33.626465, 39.840168, 26.459614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482399, 40.002251, 26.562441>,  <33.242287, 40.272392, 26.733820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482399, 40.002251, 26.562441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252597, -0.348191, 0.902750,
		-0.758853, -0.650128, -0.038421,
		0.600281, -0.675350, -0.428446,
		33.662483, 39.799644, 26.433907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221275, 39.715034, 27.186335>,  <33.242287, 40.272392, 26.733820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221275, 39.715034, 27.186335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521587, 39.589359, 26.953915>,  <33.701775, 39.513954, 26.814463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521587, 39.589359, 26.953915>,  <33.221275, 39.715034, 27.186335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521587, 39.589359, 26.953915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415379, -0.459399, 0.785120,
		-0.513607, -0.830807, -0.214401,
		0.750778, -0.314185, -0.581050,
		33.746822, 39.495106, 26.779600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279678, 38.981693, 27.137491>,  <33.221275, 39.715034, 27.186335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279678, 38.981693, 27.137491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648224, 39.116016, 27.059195>,  <33.869350, 39.196609, 27.012217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648224, 39.116016, 27.059195>,  <33.279678, 38.981693, 27.137491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648224, 39.116016, 27.059195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363412, -0.565591, 0.740297,
		0.137887, -0.753221, -0.643153,
		0.921368, 0.335807, -0.195742,
		33.924633, 39.216759, 27.000473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655487, 38.405483, 27.160158>,  <33.279678, 38.981693, 27.137491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655487, 38.405483, 27.160158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914101, 38.704151, 27.222738>,  <34.069271, 38.883350, 27.260286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914101, 38.704151, 27.222738>,  <33.655487, 38.405483, 27.160158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914101, 38.704151, 27.222738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515886, -0.578998, 0.631366,
		0.562006, -0.327490, -0.759539,
		0.646537, 0.746667, 0.156453,
		34.108063, 38.928150, 27.269674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213593, 38.031849, 27.162590>,  <33.655487, 38.405483, 27.160158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213593, 38.031849, 27.162590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321529, 38.378353, 27.330772>,  <34.386292, 38.586254, 27.431683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321529, 38.378353, 27.330772>,  <34.213593, 38.031849, 27.162590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321529, 38.378353, 27.330772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615858, -0.490931, 0.616203,
		0.740205, 0.092664, -0.665965,
		0.269843, 0.866256, 0.420458,
		34.402481, 38.638229, 27.456909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957657, 38.040409, 27.163418>,  <34.213593, 38.031849, 27.162590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957657, 38.040409, 27.163418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845711, 38.298691, 27.447598>,  <34.778542, 38.453659, 27.618105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845711, 38.298691, 27.447598>,  <34.957657, 38.040409, 27.163418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845711, 38.298691, 27.447598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686822, -0.382390, 0.618105,
		0.670783, 0.660939, -0.336468,
		-0.279868, 0.645707, 0.710448,
		34.761749, 38.492405, 27.660732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597233, 38.406334, 27.412306>,  <34.957657, 38.040409, 27.163418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597233, 38.406334, 27.412306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312428, 38.423691, 27.692636>,  <35.141544, 38.434105, 27.860836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312428, 38.423691, 27.692636>,  <35.597233, 38.406334, 27.412306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312428, 38.423691, 27.692636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604515, -0.469883, 0.643251,
		0.357216, 0.881662, 0.308333,
		-0.712010, 0.043388, 0.700828,
		35.098824, 38.436707, 27.902885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857834, 38.752613, 28.070686>,  <35.597233, 38.406334, 27.412306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857834, 38.752613, 28.070686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531158, 38.555595, 28.190969>,  <35.335155, 38.437386, 28.263140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531158, 38.555595, 28.190969>,  <35.857834, 38.752613, 28.070686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531158, 38.555595, 28.190969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483825, -0.300385, 0.821999,
		-0.314544, 0.816804, 0.483626,
		-0.816686, -0.492545, 0.300706,
		35.286152, 38.407833, 28.281181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800426, 38.867920, 28.786783>,  <35.857834, 38.752613, 28.070686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800426, 38.867920, 28.786783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564434, 38.546837, 28.751955>,  <35.422840, 38.354187, 28.731058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564434, 38.546837, 28.751955>,  <35.800426, 38.867920, 28.786783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564434, 38.546837, 28.751955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298562, -0.317083, 0.900177,
		-0.750190, 0.505089, 0.426731,
		-0.589979, -0.802710, -0.087072,
		35.387440, 38.306023, 28.725834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494617, 38.835876, 29.462894>,  <35.800426, 38.867920, 28.786783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494617, 38.835876, 29.462894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494415, 38.484623, 29.271528>,  <35.494293, 38.273872, 29.156710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494415, 38.484623, 29.271528>,  <35.494617, 38.835876, 29.462894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494415, 38.484623, 29.271528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233434, -0.465301, 0.853817,
		-0.972373, -0.111245, 0.205222,
		-0.000507, -0.878134, -0.478414,
		35.494263, 38.221184, 29.128004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141357, 38.381390, 29.941732>,  <35.494617, 38.835876, 29.462894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141357, 38.381390, 29.941732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329433, 38.136993, 29.686983>,  <35.442280, 37.990356, 29.534134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329433, 38.136993, 29.686983>,  <35.141357, 38.381390, 29.941732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329433, 38.136993, 29.686983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111628, -0.674652, 0.729647,
		-0.875476, -0.414168, -0.249013,
		0.470193, -0.610991, -0.636874,
		35.470490, 37.953697, 29.495920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926353, 37.772301, 30.113241>,  <35.141357, 38.381390, 29.941732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926353, 37.772301, 30.113241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267441, 37.693226, 29.919834>,  <35.472092, 37.645782, 29.803789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267441, 37.693226, 29.919834>,  <34.926353, 37.772301, 30.113241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267441, 37.693226, 29.919834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272438, -0.621464, 0.734547,
		-0.445697, -0.758092, -0.476078,
		0.852721, -0.197684, -0.483518,
		35.523258, 37.633919, 29.774778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055607, 36.996628, 30.126854>,  <34.926353, 37.772301, 30.113241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055607, 36.996628, 30.126854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416012, 37.163589, 30.079609>,  <35.632256, 37.263767, 30.051262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416012, 37.163589, 30.079609>,  <35.055607, 36.996628, 30.126854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416012, 37.163589, 30.079609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335963, -0.499215, 0.798695,
		0.274415, -0.759315, -0.590031,
		0.901013, 0.417402, -0.118110,
		35.686317, 37.288811, 30.044176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483959, 36.524345, 30.272568>,  <35.055607, 36.996628, 30.126854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483959, 36.524345, 30.272568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743073, 36.829060, 30.275799>,  <35.898540, 37.011887, 30.277737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743073, 36.829060, 30.275799>,  <35.483959, 36.524345, 30.272568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743073, 36.829060, 30.275799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527388, -0.456066, 0.716845,
		0.549764, -0.460099, -0.697186,
		0.647782, 0.761783, 0.008078,
		35.937408, 37.057594, 30.278223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121403, 36.237637, 30.132233>,  <35.483959, 36.524345, 30.272568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121403, 36.237637, 30.132233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177719, 36.577549, 30.335426>,  <36.211510, 36.781498, 30.457342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177719, 36.577549, 30.335426>,  <36.121403, 36.237637, 30.132233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177719, 36.577549, 30.335426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585077, -0.485325, 0.649726,
		0.798663, 0.205735, -0.565517,
		0.140789, 0.849784, 0.507982,
		36.219955, 36.832485, 30.487822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903534, 36.260628, 30.298937>,  <36.121403, 36.237637, 30.132233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903534, 36.260628, 30.298937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743355, 36.520260, 30.557652>,  <36.647247, 36.676041, 30.712879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743355, 36.520260, 30.557652>,  <36.903534, 36.260628, 30.298937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743355, 36.520260, 30.557652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653907, -0.292042, 0.697938,
		0.641909, 0.702426, -0.307492,
		-0.400449, 0.649084, 0.646785,
		36.623219, 36.714985, 30.751686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493931, 36.628967, 30.562624>,  <36.903534, 36.260628, 30.298937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493931, 36.628967, 30.562624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192806, 36.659325, 30.824160>,  <37.012131, 36.677540, 30.981081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192806, 36.659325, 30.824160>,  <37.493931, 36.628967, 30.562624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192806, 36.659325, 30.824160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480889, -0.614860, 0.625055,
		0.449460, 0.784976, 0.426378,
		-0.752816, 0.075896, 0.653841,
		36.966961, 36.682095, 31.020311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837440, 36.852058, 31.170649>,  <37.493931, 36.628967, 30.562624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837440, 36.852058, 31.170649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489769, 36.683041, 31.273401>,  <37.281166, 36.581631, 31.335052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489769, 36.683041, 31.273401>,  <37.837440, 36.852058, 31.170649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489769, 36.683041, 31.273401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474121, -0.564482, 0.675699,
		-0.140508, 0.709095, 0.690972,
		-0.869176, -0.422545, 0.256883,
		37.229015, 36.556278, 31.350466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968365, 36.797585, 31.822124>,  <37.837440, 36.852058, 31.170649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968365, 36.797585, 31.822124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647747, 36.561161, 31.785946>,  <37.455376, 36.419308, 31.764238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647747, 36.561161, 31.785946>,  <37.968365, 36.797585, 31.822124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647747, 36.561161, 31.785946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376748, -0.616685, 0.691203,
		-0.464318, 0.519953, 0.716978,
		-0.801543, -0.591058, -0.090446,
		37.407284, 36.383842, 31.758812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716393, 36.678810, 32.473282>,  <37.968365, 36.797585, 31.822124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716393, 36.678810, 32.473282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586246, 36.367378, 32.258640>,  <37.508160, 36.180519, 32.129856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586246, 36.367378, 32.258640>,  <37.716393, 36.678810, 32.473282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586246, 36.367378, 32.258640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265422, -0.619868, 0.738454,
		-0.907574, 0.097836, 0.408334,
		-0.325361, -0.778583, -0.536608,
		37.488640, 36.133804, 32.097656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408409, 36.267273, 32.924229>,  <37.716393, 36.678810, 32.473282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408409, 36.267273, 32.924229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446400, 36.005669, 32.624027>,  <37.469193, 35.848705, 32.443905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446400, 36.005669, 32.624027>,  <37.408409, 36.267273, 32.924229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446400, 36.005669, 32.624027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176254, -0.730953, 0.659274,
		-0.979752, -0.194894, 0.045849,
		0.094975, -0.654006, -0.750504,
		37.474892, 35.809467, 32.398876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982388, 35.776020, 33.050678>,  <37.408409, 36.267273, 32.924229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982388, 35.776020, 33.050678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249802, 35.620876, 32.796867>,  <37.410248, 35.527790, 32.644581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249802, 35.620876, 32.796867>,  <36.982388, 35.776020, 33.050678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249802, 35.620876, 32.796867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198044, -0.729562, 0.654612,
		-0.716828, -0.563295, -0.410922,
		0.668533, -0.387864, -0.634528,
		37.450363, 35.504517, 32.606510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719440, 34.984673, 32.845833>,  <36.982388, 35.776020, 33.050678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719440, 34.984673, 32.845833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112320, 35.047165, 32.804119>,  <37.348049, 35.084660, 32.779091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112320, 35.047165, 32.804119>,  <36.719440, 34.984673, 32.845833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112320, 35.047165, 32.804119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187733, -0.834540, 0.517976,
		-0.006104, -0.528334, -0.849015,
		0.982201, 0.156226, -0.104280,
		37.406979, 35.094032, 32.772835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002281, 34.391132, 32.577534>,  <36.719440, 34.984673, 32.845833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002281, 34.391132, 32.577534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327271, 34.566257, 32.731522>,  <37.522266, 34.671333, 32.823914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327271, 34.566257, 32.731522>,  <37.002281, 34.391132, 32.577534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327271, 34.566257, 32.731522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301112, -0.880573, 0.365955,
		0.499215, -0.181410, -0.847275,
		0.812475, 0.437815, 0.384971,
		37.571014, 34.697601, 32.847012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551163, 34.045170, 32.322021>,  <37.002281, 34.391132, 32.577534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551163, 34.045170, 32.322021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690834, 34.236519, 32.644321>,  <37.774635, 34.351330, 32.837700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690834, 34.236519, 32.644321>,  <37.551163, 34.045170, 32.322021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690834, 34.236519, 32.644321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336725, -0.866495, 0.368513,
		0.874466, 0.142639, -0.463642,
		0.349179, 0.478372, 0.805751,
		37.795589, 34.380032, 32.886047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135754, 33.655209, 32.321701>,  <37.551163, 34.045170, 32.322021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135754, 33.655209, 32.321701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090408, 33.856945, 32.664116>,  <38.063202, 33.977985, 32.869564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090408, 33.856945, 32.664116>,  <38.135754, 33.655209, 32.321701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090408, 33.856945, 32.664116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533801, -0.695759, 0.480599,
		0.837977, 0.511432, -0.190345,
		-0.113360, 0.504337, 0.856034,
		38.056400, 34.008247, 32.920925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764843, 33.582581, 32.730320>,  <38.135754, 33.655209, 32.321701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764843, 33.582581, 32.730320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497581, 33.670425, 33.014671>,  <38.337223, 33.723133, 33.185280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497581, 33.670425, 33.014671>,  <38.764843, 33.582581, 32.730320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497581, 33.670425, 33.014671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377692, -0.723075, 0.578369,
		0.641031, 0.654931, 0.400180,
		-0.668153, 0.219608, 0.710876,
		38.297134, 33.736309, 33.227936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160336, 33.645172, 33.307671>,  <38.764843, 33.582581, 32.730320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160336, 33.645172, 33.307671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784271, 33.550129, 33.405365>,  <38.558632, 33.493103, 33.463982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784271, 33.550129, 33.405365>,  <39.160336, 33.645172, 33.307671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784271, 33.550129, 33.405365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340703, -0.666669, 0.662929,
		0.005310, 0.706468, 0.707725,
		-0.940156, -0.237604, 0.244235,
		38.502224, 33.478848, 33.478634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195400, 33.564285, 33.980217>,  <39.160336, 33.645172, 33.307671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195400, 33.564285, 33.980217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846649, 33.385143, 33.900959>,  <38.637398, 33.277657, 33.853405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846649, 33.385143, 33.900959>,  <39.195400, 33.564285, 33.980217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846649, 33.385143, 33.900959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145550, -0.623280, 0.768334,
		-0.467603, 0.641050, 0.608607,
		-0.871873, -0.447858, -0.198143,
		38.585087, 33.250786, 33.841515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846149, 33.427608, 34.625793>,  <39.195400, 33.564285, 33.980217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846149, 33.427608, 34.625793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691181, 33.160755, 34.371284>,  <38.598202, 33.000645, 34.218578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691181, 33.160755, 34.371284>,  <38.846149, 33.427608, 34.625793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691181, 33.160755, 34.371284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077736, -0.711355, 0.698520,
		-0.918620, 0.221160, 0.327454,
		-0.387421, -0.667130, -0.636273,
		38.574955, 32.960617, 34.180401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257195, 33.229710, 34.912048>,  <38.846149, 33.427608, 34.625793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257195, 33.229710, 34.912048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345985, 32.926716, 34.666466>,  <38.399261, 32.744919, 34.519115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345985, 32.926716, 34.666466>,  <38.257195, 33.229710, 34.912048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345985, 32.926716, 34.666466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170435, -0.650112, 0.740477,
		-0.960040, -0.059733, -0.273415,
		0.221981, -0.757487, -0.613953,
		38.412579, 32.699471, 34.482281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679390, 32.798271, 35.028397>,  <38.257195, 33.229710, 34.912048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679390, 32.798271, 35.028397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969749, 32.579540, 34.861519>,  <38.143967, 32.448299, 34.761395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969749, 32.579540, 34.861519>,  <37.679390, 32.798271, 35.028397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969749, 32.579540, 34.861519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112251, -0.692613, 0.712522,
		-0.678567, -0.470398, -0.564156,
		0.725911, -0.546821, -0.417182,
		38.187519, 32.415493, 34.736362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355694, 32.162079, 35.121235>,  <37.679390, 32.798271, 35.028397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355694, 32.162079, 35.121235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745220, 32.106003, 35.049644>,  <37.978935, 32.072357, 35.006691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745220, 32.106003, 35.049644>,  <37.355694, 32.162079, 35.121235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745220, 32.106003, 35.049644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019156, -0.733840, 0.679053,
		-0.226533, -0.664700, -0.711939,
		0.973815, -0.140189, -0.178972,
		38.037365, 32.063946, 34.995953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413673, 31.415670, 35.211018>,  <37.355694, 32.162079, 35.121235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413673, 31.415670, 35.211018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769272, 31.591873, 35.261028>,  <37.982632, 31.697596, 35.291035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769272, 31.591873, 35.261028>,  <37.413673, 31.415670, 35.211018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769272, 31.591873, 35.261028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196955, -0.614341, 0.764064,
		0.413384, -0.654628, -0.632910,
		0.889001, 0.440507, 0.125027,
		38.035973, 31.724026, 35.298538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866745, 30.923805, 35.323025>,  <37.413673, 31.415670, 35.211018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866745, 30.923805, 35.323025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040455, 31.240139, 35.495525>,  <38.144680, 31.429939, 35.599026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040455, 31.240139, 35.495525>,  <37.866745, 30.923805, 35.323025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040455, 31.240139, 35.495525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178522, -0.544824, 0.819327,
		0.882912, -0.278826, -0.377786,
		0.434277, 0.790837, 0.431255,
		38.170738, 31.477390, 35.624901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254898, 30.607958, 35.840073>,  <37.866745, 30.923805, 35.323025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254898, 30.607958, 35.840073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284931, 30.989477, 35.956436>,  <38.302952, 31.218390, 36.026253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284931, 30.989477, 35.956436>,  <38.254898, 30.607958, 35.840073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284931, 30.989477, 35.956436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167947, -0.299662, 0.939147,
		0.982932, -0.021660, -0.182688,
		0.075087, 0.953800, 0.290910,
		38.307457, 31.275618, 36.043709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960197, 30.716608, 36.218277>,  <38.254898, 30.607958, 35.840073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960197, 30.716608, 36.218277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679104, 30.976217, 36.334846>,  <38.510448, 31.131983, 36.404789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679104, 30.976217, 36.334846>,  <38.960197, 30.716608, 36.218277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679104, 30.976217, 36.334846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069187, -0.345341, 0.935923,
		0.708079, 0.677870, 0.197780,
		-0.702736, 0.649024, 0.291429,
		38.468285, 31.170925, 36.422276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354153, 31.170301, 36.720596>,  <38.960197, 30.716608, 36.218277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354153, 31.170301, 36.720596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964935, 31.226803, 36.793510>,  <38.731403, 31.260704, 36.837257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964935, 31.226803, 36.793510>,  <39.354153, 31.170301, 36.720596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964935, 31.226803, 36.793510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138021, -0.276515, 0.951046,
		0.184740, 0.950572, 0.249567,
		-0.973047, 0.141251, 0.182283,
		38.673019, 31.269178, 36.848194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189308, 31.612152, 37.353073>,  <39.354153, 31.170301, 36.720596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189308, 31.612152, 37.353073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871719, 31.379023, 37.283886>,  <38.681164, 31.239145, 37.242374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871719, 31.379023, 37.283886>,  <39.189308, 31.612152, 37.353073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871719, 31.379023, 37.283886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138804, -0.450780, 0.881777,
		-0.591893, 0.676100, 0.438806,
		-0.793975, -0.582826, -0.172968,
		38.633526, 31.204174, 37.231995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879883, 31.544310, 38.045101>,  <39.189308, 31.612152, 37.353073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879883, 31.544310, 38.045101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726326, 31.244572, 37.829285>,  <38.634193, 31.064730, 37.699795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726326, 31.244572, 37.829285>,  <38.879883, 31.544310, 38.045101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726326, 31.244572, 37.829285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186403, -0.509396, 0.840101,
		-0.904367, 0.423082, 0.055874,
		-0.383893, -0.749345, -0.539544,
		38.611156, 31.019768, 37.667419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313297, 31.277061, 38.390152>,  <38.879883, 31.544310, 38.045101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313297, 31.277061, 38.390152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353241, 30.955242, 38.155979>,  <38.377205, 30.762150, 38.015476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353241, 30.955242, 38.155979>,  <38.313297, 31.277061, 38.390152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353241, 30.955242, 38.155979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226747, -0.591291, 0.773926,
		-0.968821, 0.055464, -0.241473,
		0.099856, -0.804549, -0.585431,
		38.383198, 30.713877, 37.980350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985119, 30.695847, 38.853916>,  <38.313297, 31.277061, 38.390152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985119, 30.695847, 38.853916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100727, 30.498060, 38.526020>,  <38.170094, 30.379389, 38.329285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100727, 30.498060, 38.526020>,  <37.985119, 30.695847, 38.853916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100727, 30.498060, 38.526020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091269, -0.866614, 0.490562,
		-0.952961, -0.066968, -0.295601,
		0.289024, -0.494465, -0.819737,
		38.187435, 30.349720, 38.280098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467220, 30.172712, 38.425533>,  <37.985119, 30.695847, 38.853916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467220, 30.172712, 38.425533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855366, 30.076056, 38.425587>,  <38.088253, 30.018061, 38.425617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855366, 30.076056, 38.425587>,  <37.467220, 30.172712, 38.425533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855366, 30.076056, 38.425587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204944, -0.822699, 0.530249,
		-0.128021, -0.514563, -0.847842,
		0.970365, -0.241643, 0.000134,
		38.146477, 30.003563, 38.425629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565189, 29.387192, 38.227837>,  <37.467220, 30.172712, 38.425533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565189, 29.387192, 38.227837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900421, 29.499849, 38.414722>,  <38.101562, 29.567444, 38.526855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900421, 29.499849, 38.414722>,  <37.565189, 29.387192, 38.227837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900421, 29.499849, 38.414722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050104, -0.813071, 0.580004,
		0.543236, -0.509502, -0.667310,
		0.838084, 0.281644, 0.467218,
		38.151848, 29.584343, 38.554886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002758, 28.752192, 38.405815>,  <37.565189, 29.387192, 38.227837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002758, 28.752192, 38.405815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161930, 29.031128, 38.644264>,  <38.257431, 29.198490, 38.787334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161930, 29.031128, 38.644264>,  <38.002758, 28.752192, 38.405815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161930, 29.031128, 38.644264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010493, -0.646286, 0.763023,
		0.917357, -0.309882, -0.249857,
		0.397927, 0.697343, 0.596126,
		38.281307, 29.240332, 38.823101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475990, 28.412222, 38.703636>,  <38.002758, 28.752192, 38.405815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475990, 28.412222, 38.703636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429527, 28.724409, 38.949360>,  <38.401649, 28.911722, 39.096794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429527, 28.724409, 38.949360>,  <38.475990, 28.412222, 38.703636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429527, 28.724409, 38.949360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022971, -0.620441, 0.783916,
		0.992965, 0.076948, 0.089998,
		-0.116159, 0.780469, 0.614309,
		38.394680, 28.958549, 39.133652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074375, 28.354982, 39.119377>,  <38.475990, 28.412222, 38.703636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074375, 28.354982, 39.119377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807888, 28.573519, 39.322422>,  <38.647995, 28.704641, 39.444248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807888, 28.573519, 39.322422>,  <39.074375, 28.354982, 39.119377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807888, 28.573519, 39.322422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119503, -0.593656, 0.795796,
		0.736121, 0.590834, 0.330215,
		-0.666217, 0.546340, 0.507609,
		38.608025, 28.737421, 39.474705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240143, 28.350218, 39.792614>,  <39.074375, 28.354982, 39.119377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240143, 28.350218, 39.792614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875629, 28.497587, 39.866177>,  <38.656921, 28.586008, 39.910313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875629, 28.497587, 39.866177>,  <39.240143, 28.350218, 39.792614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875629, 28.497587, 39.866177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100716, -0.632482, 0.767999,
		0.399267, 0.681345, 0.613478,
		-0.911286, 0.368424, 0.183907,
		38.602245, 28.608114, 39.921349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091850, 28.784943, 40.500717>,  <39.240143, 28.350218, 39.792614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091850, 28.784943, 40.500717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753574, 28.600660, 40.392967>,  <38.550610, 28.490091, 40.328320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753574, 28.600660, 40.392967>,  <39.091850, 28.784943, 40.500717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753574, 28.600660, 40.392967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115823, -0.334275, 0.935332,
		-0.520959, 0.822198, 0.229332,
		-0.845687, -0.460707, -0.269373,
		38.499866, 28.462448, 40.312157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810650, 28.759392, 41.171604>,  <39.091850, 28.784943, 40.500717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810650, 28.759392, 41.171604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645111, 28.501875, 40.914154>,  <38.545788, 28.347364, 40.759682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645111, 28.501875, 40.914154>,  <38.810650, 28.759392, 41.171604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645111, 28.501875, 40.914154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307644, -0.566513, 0.764472,
		-0.856786, 0.514386, 0.036393,
		-0.413851, -0.643794, -0.643628,
		38.520954, 28.308737, 40.721066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154594, 28.675200, 41.320232>,  <38.810650, 28.759392, 41.171604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154594, 28.675200, 41.320232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248653, 28.314777, 41.174461>,  <38.305088, 28.098524, 41.086998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248653, 28.314777, 41.174461>,  <38.154594, 28.675200, 41.320232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248653, 28.314777, 41.174461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364247, -0.429311, 0.826448,
		-0.901126, -0.061600, -0.429159,
		0.235152, -0.901054, -0.364426,
		38.319199, 28.044462, 41.065132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983829, 28.236713, 41.878437>,  <38.154594, 28.675200, 41.320232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983829, 28.236713, 41.878437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935463, 27.839802, 41.867420>,  <37.906445, 27.601654, 41.860809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935463, 27.839802, 41.867420>,  <37.983829, 28.236713, 41.878437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935463, 27.839802, 41.867420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485590, -0.034927, -0.873489,
		0.865784, -0.118988, 0.486065,
		-0.120912, -0.992281, -0.027540,
		37.899189, 27.542118, 41.859158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536930, 27.929211, 41.605274>,  <37.983829, 28.236713, 41.878437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536930, 27.929211, 41.605274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247513, 27.657272, 41.557453>,  <38.073860, 27.494110, 41.528759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247513, 27.657272, 41.557453>,  <38.536930, 27.929211, 41.605274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247513, 27.657272, 41.557453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084408, 0.084758, -0.992820,
		0.685096, -0.728442, -0.003942,
		-0.723546, -0.679844, -0.119554,
		38.030449, 27.453320, 41.521587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727345, 27.345743, 41.100433>,  <38.536930, 27.929211, 41.605274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727345, 27.345743, 41.100433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340946, 27.449036, 41.105568>,  <38.109108, 27.511011, 41.108650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340946, 27.449036, 41.105568>,  <38.727345, 27.345743, 41.100433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340946, 27.449036, 41.105568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072535, 0.318324, -0.945203,
		-0.248169, -0.912133, -0.326231,
		-0.965998, 0.258233, 0.012837,
		38.051147, 27.526506, 41.109421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382504, 27.254482, 40.494659>,  <38.727345, 27.345743, 41.100433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382504, 27.254482, 40.494659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185299, 27.567085, 40.647594>,  <38.066975, 27.754646, 40.739357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185299, 27.567085, 40.647594>,  <38.382504, 27.254482, 40.494659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185299, 27.567085, 40.647594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119618, 0.496178, -0.859941,
		-0.861758, -0.378230, -0.338106,
		-0.493016, 0.781505, 0.382342,
		38.037395, 27.801537, 40.762299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853897, 27.454082, 39.994656>,  <38.382504, 27.254482, 40.494659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853897, 27.454082, 39.994656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967487, 27.757767, 40.228909>,  <38.035641, 27.939978, 40.369461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967487, 27.757767, 40.228909>,  <37.853897, 27.454082, 39.994656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967487, 27.757767, 40.228909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036358, 0.601807, -0.797814,
		-0.958143, 0.247849, 0.143292,
		0.283971, 0.759210, 0.585629,
		38.052677, 27.985529, 40.404598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384781, 28.149921, 39.867310>,  <37.853897, 27.454082, 39.994656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384781, 28.149921, 39.867310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739429, 28.244278, 40.026432>,  <37.952221, 28.300892, 40.121906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739429, 28.244278, 40.026432>,  <37.384781, 28.149921, 39.867310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739429, 28.244278, 40.026432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114629, 0.721227, -0.683148,
		-0.448061, 0.651296, 0.612417,
		0.886624, 0.235892, 0.397811,
		38.005417, 28.315046, 40.145775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351353, 28.919983, 40.009289>,  <37.384781, 28.149921, 39.867310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351353, 28.919983, 40.009289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738392, 28.822462, 39.982986>,  <37.970615, 28.763950, 39.967205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738392, 28.822462, 39.982986>,  <37.351353, 28.919983, 40.009289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738392, 28.822462, 39.982986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158478, 0.789052, -0.593533,
		0.196589, 0.563878, 0.802119,
		0.967594, -0.243801, -0.065756,
		38.028671, 28.749321, 39.963261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621117, 29.470554, 40.088924>,  <37.351353, 28.919983, 40.009289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621117, 29.470554, 40.088924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906754, 29.257812, 39.906845>,  <38.078136, 29.130167, 39.797600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906754, 29.257812, 39.906845>,  <37.621117, 29.470554, 40.088924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906754, 29.257812, 39.906845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106219, 0.725021, -0.680486,
		0.691946, 0.437580, 0.574225,
		0.714093, -0.531853, -0.455196,
		38.120983, 29.098257, 39.770287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161957, 29.882500, 40.026405>,  <37.621117, 29.470554, 40.088924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161957, 29.882500, 40.026405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268570, 29.608088, 39.755608>,  <38.332539, 29.443439, 39.593128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268570, 29.608088, 39.755608>,  <38.161957, 29.882500, 40.026405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268570, 29.608088, 39.755608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108940, 0.719345, -0.686057,
		0.957650, 0.109102, 0.266463,
		0.266529, -0.686031, -0.676996,
		38.348530, 29.402279, 39.552509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716164, 30.200275, 39.626507>,  <38.161957, 29.882500, 40.026405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716164, 30.200275, 39.626507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579872, 29.905958, 39.392410>,  <38.498096, 29.729366, 39.251953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579872, 29.905958, 39.392410>,  <38.716164, 30.200275, 39.626507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579872, 29.905958, 39.392410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055731, 0.605589, -0.793824,
		0.938508, -0.303096, -0.165335,
		-0.340730, -0.735796, -0.585242,
		38.477654, 29.685219, 39.216839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232605, 29.986597, 39.186203>,  <38.716164, 30.200275, 39.626507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232605, 29.986597, 39.186203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917858, 29.852322, 38.979069>,  <38.729012, 29.771757, 38.854786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917858, 29.852322, 38.979069>,  <39.232605, 29.986597, 39.186203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917858, 29.852322, 38.979069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188995, 0.667715, -0.720026,
		0.587472, -0.664432, -0.461959,
		-0.786866, -0.335687, -0.517838,
		38.681797, 29.751616, 38.823715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395107, 29.913235, 38.365669>,  <39.232605, 29.986597, 39.186203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395107, 29.913235, 38.365669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003544, 29.968388, 38.425964>,  <38.768604, 30.001478, 38.462143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003544, 29.968388, 38.425964>,  <39.395107, 29.913235, 38.365669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003544, 29.968388, 38.425964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005075, 0.721244, -0.692662,
		-0.204226, -0.678819, -0.705334,
		-0.978911, 0.137880, 0.150741,
		38.709869, 30.009752, 38.471188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315937, 29.997110, 37.684017>,  <39.395107, 29.913235, 38.365669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315937, 29.997110, 37.684017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973221, 30.069399, 37.877197>,  <38.767590, 30.112772, 37.993107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973221, 30.069399, 37.877197>,  <39.315937, 29.997110, 37.684017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973221, 30.069399, 37.877197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319077, 0.549938, -0.771854,
		-0.405086, -0.815419, -0.413519,
		-0.856794, 0.180723, 0.482953,
		38.716183, 30.123615, 38.022083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008522, 30.099112, 37.123028>,  <39.315937, 29.997110, 37.684017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008522, 30.099112, 37.123028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778625, 30.255238, 37.410728>,  <38.640686, 30.348913, 37.583351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778625, 30.255238, 37.410728>,  <39.008522, 30.099112, 37.123028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778625, 30.255238, 37.410728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311025, 0.708777, -0.633165,
		-0.756925, -0.587612, -0.285966,
		-0.574741, 0.390316, 0.719253,
		38.606201, 30.372332, 37.626503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209862, 30.024637, 36.929062>,  <39.008522, 30.099112, 37.123028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209862, 30.024637, 36.929062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314568, 30.326120, 37.170197>,  <38.377392, 30.507010, 37.314877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314568, 30.326120, 37.170197>,  <38.209862, 30.024637, 36.929062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314568, 30.326120, 37.170197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294907, 0.657201, -0.693626,
		-0.918972, 0.003788, 0.394305,
		0.261765, 0.753706, 0.602832,
		38.393097, 30.552233, 37.351048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610405, 30.461531, 36.967922>,  <38.209862, 30.024637, 36.929062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610405, 30.461531, 36.967922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950451, 30.657717, 37.044601>,  <38.154480, 30.775429, 37.090611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950451, 30.657717, 37.044601>,  <37.610405, 30.461531, 36.967922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950451, 30.657717, 37.044601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200087, 0.637583, -0.743945,
		-0.487105, 0.594081, 0.640154,
		0.850114, 0.490465, 0.191702,
		38.205486, 30.804857, 37.102112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419106, 31.086771, 37.312511>,  <37.610405, 30.461531, 36.967922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419106, 31.086771, 37.312511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802887, 31.199459, 37.308796>,  <38.033154, 31.267073, 37.306568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802887, 31.199459, 37.308796>,  <37.419106, 31.086771, 37.312511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802887, 31.199459, 37.308796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111582, 0.349347, -0.930326,
		-0.258848, 0.893639, 0.366617,
		0.959452, 0.281720, -0.009286,
		38.090721, 31.283976, 37.306011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467537, 31.723167, 37.088722>,  <37.419106, 31.086771, 37.312511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467537, 31.723167, 37.088722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819637, 31.554377, 37.001915>,  <38.030899, 31.453102, 36.949833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819637, 31.554377, 37.001915>,  <37.467537, 31.723167, 37.088722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819637, 31.554377, 37.001915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133083, 0.219441, -0.966506,
		0.455463, 0.879649, 0.137006,
		0.880251, -0.421975, -0.217014,
		38.083714, 31.427784, 36.936810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683369, 32.187145, 36.609619>,  <37.467537, 31.723167, 37.088722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683369, 32.187145, 36.609619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920090, 31.868046, 36.563385>,  <38.062122, 31.676586, 36.535645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920090, 31.868046, 36.563385>,  <37.683369, 32.187145, 36.609619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920090, 31.868046, 36.563385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183337, 0.272845, -0.944428,
		0.784955, 0.537727, 0.307728,
		0.591806, -0.797751, -0.115586,
		38.097630, 31.628721, 36.528709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288452, 32.534073, 36.429562>,  <37.683369, 32.187145, 36.609619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288452, 32.534073, 36.429562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283367, 32.146595, 36.330387>,  <38.280315, 31.914108, 36.270882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283367, 32.146595, 36.330387>,  <38.288452, 32.534073, 36.429562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283367, 32.146595, 36.330387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247447, 0.237196, -0.939419,
		0.968818, -0.073295, 0.236684,
		-0.012715, -0.968693, -0.247936,
		38.279552, 31.855988, 36.256008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837975, 32.474045, 36.056938>,  <38.288452, 32.534073, 36.429562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837975, 32.474045, 36.056938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600891, 32.177967, 35.929939>,  <38.458641, 32.000320, 35.853741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600891, 32.177967, 35.929939>,  <38.837975, 32.474045, 36.056938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600891, 32.177967, 35.929939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199757, 0.246792, -0.948256,
		0.780253, -0.625462, 0.001584,
		-0.592708, -0.740196, -0.317501,
		38.423080, 31.955908, 35.834690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138878, 32.181576, 35.383373>,  <38.837975, 32.474045, 36.056938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138878, 32.181576, 35.383373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743443, 32.130196, 35.414860>,  <38.506184, 32.099365, 35.433754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743443, 32.130196, 35.414860>,  <39.138878, 32.181576, 35.383373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743443, 32.130196, 35.414860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095916, 0.133712, -0.986368,
		0.116155, -0.982663, -0.144505,
		-0.988589, -0.128431, 0.078721,
		38.446865, 32.091660, 35.438477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276318, 31.864244, 34.708279>,  <39.138878, 32.181576, 35.383373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276318, 31.864244, 34.708279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887672, 31.918264, 34.785980>,  <38.654488, 31.950676, 34.832603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887672, 31.918264, 34.785980>,  <39.276318, 31.864244, 34.708279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887672, 31.918264, 34.785980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121845, 0.418187, -0.900152,
		-0.202802, -0.898265, -0.389860,
		-0.971610, 0.135050, 0.194258,
		38.596191, 31.958780, 34.844257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969170, 31.539095, 34.136456>,  <39.276318, 31.864244, 34.708279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969170, 31.539095, 34.136456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734779, 31.807457, 34.318233>,  <38.594147, 31.968473, 34.427299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734779, 31.807457, 34.318233>,  <38.969170, 31.539095, 34.136456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734779, 31.807457, 34.318233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054176, 0.527127, -0.848058,
		-0.808519, -0.521558, -0.272534,
		-0.585971, 0.670906, 0.454449,
		38.558987, 32.008728, 34.454567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549519, 31.739006, 33.606052>,  <38.969170, 31.539095, 34.136456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549519, 31.739006, 33.606052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489643, 32.018341, 33.886028>,  <38.453720, 32.185944, 34.054016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489643, 32.018341, 33.886028>,  <38.549519, 31.739006, 33.606052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489643, 32.018341, 33.886028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090187, 0.695323, -0.713017,
		-0.984612, -0.169855, -0.041099,
		-0.149686, 0.698338, 0.699941,
		38.444736, 32.227844, 34.096012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055614, 31.156790, 33.306259>,  <38.549519, 31.739006, 33.606052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055614, 31.156790, 33.306259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014038, 31.217928, 32.913151>,  <38.989094, 31.254612, 32.677288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014038, 31.217928, 32.913151>,  <39.055614, 31.156790, 33.306259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014038, 31.217928, 32.913151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026141, 0.987360, 0.156325,
		0.994240, 0.041939, -0.098631,
		-0.103941, 0.152846, -0.982769,
		38.982857, 31.263783, 32.618320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638420, 31.484682, 32.827919>,  <39.055614, 31.156790, 33.306259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638420, 31.484682, 32.827919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274002, 31.599007, 32.709049>,  <39.055351, 31.667601, 32.637726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274002, 31.599007, 32.709049>,  <39.638420, 31.484682, 32.827919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274002, 31.599007, 32.709049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174635, 0.920396, 0.349820,
		0.373499, 0.266805, -0.888433,
		-0.911044, 0.285810, -0.297174,
		39.000690, 31.684750, 32.619896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673500, 32.273842, 32.743507>,  <39.638420, 31.484682, 32.827919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673500, 32.273842, 32.743507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282070, 32.191971, 32.752483>,  <39.047215, 32.142849, 32.757870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282070, 32.191971, 32.752483>,  <39.673500, 32.273842, 32.743507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282070, 32.191971, 32.752483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173551, 0.878530, 0.445045,
		-0.110807, 0.431614, -0.895227,
		-0.978571, -0.204682, 0.022440,
		38.988499, 32.130566, 32.759216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131168, 32.837860, 32.579956>,  <39.673500, 32.273842, 32.743507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131168, 32.837860, 32.579956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075516, 32.703583, 32.952614>,  <40.042122, 32.623016, 33.176208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075516, 32.703583, 32.952614>,  <40.131168, 32.837860, 32.579956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075516, 32.703583, 32.952614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590488, 0.727115, 0.350182,
		-0.794963, 0.598845, 0.097055,
		-0.139134, -0.335691, 0.931640,
		40.033775, 32.602875, 33.232105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118198, 33.482918, 33.064510>,  <40.131168, 32.837860, 32.579956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118198, 33.482918, 33.064510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249527, 33.175167, 33.283695>,  <40.328323, 32.990517, 33.415207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249527, 33.175167, 33.283695>,  <40.118198, 33.482918, 33.064510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249527, 33.175167, 33.283695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729648, 0.574990, 0.370134,
		-0.599847, 0.278298, 0.750156,
		0.328325, -0.769374, 0.547966,
		40.348026, 32.944355, 33.448086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246006, 33.626694, 33.793045>,  <40.118198, 33.482918, 33.064510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246006, 33.626694, 33.793045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485256, 33.327217, 33.678707>,  <40.628807, 33.147530, 33.610104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485256, 33.327217, 33.678707>,  <40.246006, 33.626694, 33.793045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485256, 33.327217, 33.678707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788297, 0.485409, 0.378109,
		-0.144338, -0.451483, 0.880528,
		0.598126, -0.748693, -0.285840,
		40.664696, 33.102608, 33.592957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683125, 33.500954, 34.380001>,  <40.246006, 33.626694, 33.793045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683125, 33.500954, 34.380001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852787, 33.455467, 34.020634>,  <40.954586, 33.428177, 33.805012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852787, 33.455467, 34.020634>,  <40.683125, 33.500954, 34.380001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852787, 33.455467, 34.020634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545839, 0.823721, 0.153438,
		0.722598, -0.555475, 0.411460,
		0.424159, -0.113717, -0.898419,
		40.980034, 33.421352, 33.751106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350857, 33.651428, 34.444050>,  <40.683125, 33.500954, 34.380001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350857, 33.651428, 34.444050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210026, 33.727581, 34.077488>,  <41.125526, 33.773273, 33.857552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210026, 33.727581, 34.077488>,  <41.350857, 33.651428, 34.444050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210026, 33.727581, 34.077488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313691, 0.946470, 0.076108,
		0.881840, -0.260672, -0.392949,
		-0.352075, 0.190380, -0.916405,
		41.104404, 33.784695, 33.802567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789455, 34.256649, 34.170101>,  <41.350857, 33.651428, 34.444050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789455, 34.256649, 34.170101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459045, 34.206165, 33.950371>,  <41.260799, 34.175877, 33.818531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459045, 34.206165, 33.950371>,  <41.789455, 34.256649, 34.170101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459045, 34.206165, 33.950371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146132, 0.989236, -0.007536,
		0.544367, 0.074050, -0.835572,
		-0.826021, -0.126206, -0.549329,
		41.211239, 34.168304, 33.785572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977558, 34.509575, 34.803295>,  <41.789455, 34.256649, 34.170101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977558, 34.509575, 34.803295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912914, 34.780724, 34.516418>,  <41.874130, 34.943413, 34.344292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912914, 34.780724, 34.516418>,  <41.977558, 34.509575, 34.803295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912914, 34.780724, 34.516418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814316, 0.502136, 0.291116,
		0.557470, -0.536978, -0.633153,
		-0.161606, 0.677875, -0.717195,
		41.864433, 34.984085, 34.301258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837486, 34.457802, 34.828556>,  <41.977558, 34.509575, 34.803295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837486, 34.457802, 34.828556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069973, 34.184612, 34.651588>,  <43.209465, 34.020699, 34.545406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069973, 34.184612, 34.651588>,  <42.837486, 34.457802, 34.828556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069973, 34.184612, 34.651588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696627, 0.136592, 0.704310,
		-0.420598, -0.717554, 0.555170,
		0.581212, -0.682978, -0.442417,
		43.244335, 33.979717, 34.518864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027519, 33.887089, 35.246471>,  <42.837486, 34.457802, 34.828556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027519, 33.887089, 35.246471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305027, 33.989864, 34.977352>,  <43.471531, 34.051529, 34.815880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305027, 33.989864, 34.977352>,  <43.027519, 33.887089, 35.246471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305027, 33.989864, 34.977352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638329, 0.213197, 0.739650,
		0.333487, -0.942617, -0.016104,
		0.693774, 0.256944, -0.672799,
		43.513161, 34.066948, 34.775513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644890, 33.902878, 35.602715>,  <43.027519, 33.887089, 35.246471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644890, 33.902878, 35.602715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725620, 34.098213, 35.263119>,  <43.774059, 34.215416, 35.059361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725620, 34.098213, 35.263119>,  <43.644890, 33.902878, 35.602715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725620, 34.098213, 35.263119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760984, 0.467514, 0.449814,
		0.616580, -0.736854, -0.277265,
		0.201822, 0.488341, -0.848994,
		43.786167, 34.244717, 35.008419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374672, 33.791965, 35.495182>,  <43.644890, 33.902878, 35.602715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374672, 33.791965, 35.495182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244961, 34.138378, 35.342953>,  <44.167133, 34.346226, 35.251614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.244961, 34.138378, 35.342953>,  <44.374672, 33.791965, 35.495182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.244961, 34.138378, 35.342953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897847, 0.408453, 0.164426,
		0.297844, -0.288377, -0.910015,
		-0.324282, 0.866028, -0.380573,
		44.147675, 34.398186, 35.228779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837139, 33.994366, 34.845631>,  <44.374672, 33.791965, 35.495182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837139, 33.994366, 34.845631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671310, 34.289604, 35.058552>,  <44.571815, 34.466747, 35.186302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671310, 34.289604, 35.058552>,  <44.837139, 33.994366, 34.845631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671310, 34.289604, 35.058552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888853, 0.453847, 0.062947,
		-0.195122, 0.499232, -0.844212,
		-0.414569, 0.738099, 0.532300,
		44.546940, 34.511032, 35.218243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578899, 34.064568, 35.007191>,  <44.837139, 33.994366, 34.845631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578899, 34.064568, 35.007191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653904, 34.385235, 34.780151>,  <45.698906, 34.577633, 34.643929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653904, 34.385235, 34.780151>,  <45.578899, 34.064568, 35.007191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653904, 34.385235, 34.780151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927954, -0.334056, -0.165253,
		-0.322088, -0.495719, -0.806549,
		0.187514, 0.801666, -0.567600,
		45.710159, 34.625736, 34.609871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156940, 33.875095, 34.679615>,  <45.578899, 34.064568, 35.007191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156940, 33.875095, 34.679615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132988, 34.259808, 34.572739>,  <46.118618, 34.490635, 34.508614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.132988, 34.259808, 34.572739>,  <46.156940, 33.875095, 34.679615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.132988, 34.259808, 34.572739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975625, -0.000222, -0.219444,
		-0.211117, -0.273818, -0.938325,
		-0.059879, 0.961782, -0.267190,
		46.115025, 34.548344, 34.492580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.531071, 33.999813, 34.021866>,  <46.156940, 33.875095, 34.679615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.531071, 33.999813, 34.021866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523006, 34.344227, 34.225124>,  <46.518166, 34.550873, 34.347080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523006, 34.344227, 34.225124>,  <46.531071, 33.999813, 34.021866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523006, 34.344227, 34.225124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999047, 0.037025, -0.023093,
		-0.038698, 0.507201, -0.860959,
		-0.020165, 0.861032, 0.508151,
		46.516956, 34.602535, 34.377571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216915, 34.282631, 34.191010>,  <46.531071, 33.999813, 34.021866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216915, 34.282631, 34.191010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.075611, 34.548798, 34.454048>,  <46.990829, 34.708496, 34.611870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.075611, 34.548798, 34.454048>,  <47.216915, 34.282631, 34.191010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.075611, 34.548798, 34.454048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923119, 0.133841, 0.360468,
		0.151848, 0.734378, -0.661537,
		-0.353261, 0.665414, 0.657595,
		46.969631, 34.748421, 34.651325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.685051, 34.853249, 34.183754>,  <47.216915, 34.282631, 34.191010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.685051, 34.853249, 34.183754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494984, 34.806351, 34.532574>,  <47.380943, 34.778214, 34.741863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.494984, 34.806351, 34.532574>,  <47.685051, 34.853249, 34.183754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.494984, 34.806351, 34.532574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873330, 0.057983, 0.483665,
		-0.107270, 0.991409, 0.074839,
		-0.475171, -0.117242, 0.872047,
		47.352432, 34.771179, 34.794189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.007435, 35.310539, 34.592945>,  <47.685051, 34.853249, 34.183754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.007435, 35.310539, 34.592945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811489, 35.078842, 34.853565>,  <47.693924, 34.939823, 35.009937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811489, 35.078842, 34.853565>,  <48.007435, 35.310539, 34.592945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.811489, 35.078842, 34.853565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801404, -0.004977, 0.598103,
		-0.343203, 0.815141, 0.466644,
		-0.489861, -0.579241, 0.651549,
		47.664532, 34.905071, 35.049030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.309225, 36.019451, 29.161936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.083418, 36.112377, 29.478758>,  <30.947933, 36.168133, 29.668852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.083418, 36.112377, 29.478758>,  <31.309225, 36.019451, 29.161936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083418, 36.112377, 29.478758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423290, -0.742318, 0.519413,
		0.708622, 0.628487, 0.320716,
		-0.564517, 0.232312, 0.792055,
		30.914062, 36.182072, 29.716375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815413, 36.212837, 29.758919>,  <31.309225, 36.019451, 29.161936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815413, 36.212837, 29.758919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.455681, 36.059887, 29.843765>,  <31.239841, 35.968117, 29.894672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.455681, 36.059887, 29.843765>,  <31.815413, 36.212837, 29.758919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455681, 36.059887, 29.843765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437238, -0.780434, 0.446929,
		-0.005354, 0.494682, 0.869058,
		-0.899330, -0.382378, 0.212115,
		31.185883, 35.945175, 29.907400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925352, 35.788280, 30.269972>,  <31.815413, 36.212837, 29.758919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925352, 35.788280, 30.269972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.559433, 35.656845, 30.176018>,  <31.339882, 35.577984, 30.119646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.559433, 35.656845, 30.176018>,  <31.925352, 35.788280, 30.269972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559433, 35.656845, 30.176018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188399, -0.861524, 0.471469,
		-0.357279, 0.387047, 0.850027,
		-0.914799, -0.328590, -0.234885,
		31.284994, 35.558270, 30.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518028, 35.663410, 30.928837>,  <31.925352, 35.788280, 30.269972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518028, 35.663410, 30.928837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.335308, 35.446426, 30.646822>,  <31.225676, 35.316238, 30.477613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.335308, 35.446426, 30.646822>,  <31.518028, 35.663410, 30.928837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335308, 35.446426, 30.646822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023992, -0.784756, 0.619340,
		-0.889247, 0.299828, 0.345461,
		-0.456798, -0.542458, -0.705035,
		31.198269, 35.283688, 30.435310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994747, 35.320171, 31.253517>,  <31.518028, 35.663410, 30.928837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994747, 35.320171, 31.253517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.046656, 35.099857, 30.923719>,  <31.077801, 34.967670, 30.725840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.046656, 35.099857, 30.923719>,  <30.994747, 35.320171, 31.253517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046656, 35.099857, 30.923719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048925, -0.826958, 0.560130,
		-0.990336, -0.113028, -0.080368,
		0.129772, -0.550785, -0.824497,
		31.085587, 34.934620, 30.676371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497522, 34.896484, 31.271807>,  <30.994747, 35.320171, 31.253517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497522, 34.896484, 31.271807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.777596, 34.715721, 31.050713>,  <30.945641, 34.607262, 30.918056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.777596, 34.715721, 31.050713>,  <30.497522, 34.896484, 31.271807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777596, 34.715721, 31.050713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053992, -0.805479, 0.590159,
		-0.711918, -0.383377, -0.588383,
		0.700184, -0.451913, -0.552736,
		30.987650, 34.580147, 30.884892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175797, 34.251545, 31.106028>,  <30.497522, 34.896484, 31.271807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175797, 34.251545, 31.106028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.569696, 34.209480, 31.050589>,  <30.806036, 34.184242, 31.017326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.569696, 34.209480, 31.050589>,  <30.175797, 34.251545, 31.106028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569696, 34.209480, 31.050589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016221, -0.737674, 0.674962,
		-0.173217, -0.666917, -0.724719,
		0.984750, -0.105159, -0.138596,
		30.865122, 34.177933, 31.009010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242464, 33.567711, 31.125771>,  <30.175797, 34.251545, 31.106028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242464, 33.567711, 31.125771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.610582, 33.700321, 31.208857>,  <30.831453, 33.779888, 31.258709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.610582, 33.700321, 31.208857>,  <30.242464, 33.567711, 31.125771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610582, 33.700321, 31.208857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101531, -0.715136, 0.691571,
		0.377820, -0.615360, -0.691797,
		0.920295, 0.331529, 0.207715,
		30.886671, 33.799778, 31.271172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697189, 32.916454, 31.352327>,  <30.242464, 33.567711, 31.125771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697189, 32.916454, 31.352327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.874168, 33.251736, 31.479862>,  <30.980356, 33.452904, 31.556383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.874168, 33.251736, 31.479862>,  <30.697189, 32.916454, 31.352327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874168, 33.251736, 31.479862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369034, -0.494206, 0.787131,
		0.817346, -0.230602, -0.527985,
		0.442447, 0.838203, 0.318838,
		31.006903, 33.503197, 31.575514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444672, 32.698574, 31.326000>,  <30.697189, 32.916454, 31.352327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444672, 32.698574, 31.326000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.402964, 33.019047, 31.561705>,  <31.377939, 33.211330, 31.703127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.402964, 33.019047, 31.561705>,  <31.444672, 32.698574, 31.326000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402964, 33.019047, 31.561705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773985, -0.306705, 0.553967,
		0.624560, 0.513842, -0.588126,
		-0.104270, 0.801186, 0.589261,
		31.371683, 33.259403, 31.738483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080997, 32.963005, 31.286516>,  <31.444672, 32.698574, 31.326000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080997, 32.963005, 31.286516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.911524, 33.111679, 31.616930>,  <31.809839, 33.200886, 31.815178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.911524, 33.111679, 31.616930>,  <32.080997, 32.963005, 31.286516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911524, 33.111679, 31.616930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808458, -0.256105, 0.529911,
		0.408514, 0.892333, -0.191987,
		-0.423688, 0.371689, 0.826036,
		31.784418, 33.223186, 31.864740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614166, 33.342808, 31.610477>,  <32.080997, 32.963005, 31.286516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614166, 33.342808, 31.610477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.331112, 33.246918, 31.876345>,  <32.161278, 33.189384, 32.035866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.331112, 33.246918, 31.876345>,  <32.614166, 33.342808, 31.610477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331112, 33.246918, 31.876345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674071, -0.511082, 0.533313,
		0.211850, 0.825424, 0.523253,
		-0.707635, -0.239728, 0.664668,
		32.118820, 33.174999, 32.075745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762943, 33.616329, 32.265976>,  <32.614166, 33.342808, 31.610477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762943, 33.616329, 32.265976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.521362, 33.312874, 32.363712>,  <32.376411, 33.130798, 32.422356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.521362, 33.312874, 32.363712>,  <32.762943, 33.616329, 32.265976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521362, 33.312874, 32.363712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688602, -0.342303, 0.639262,
		-0.401332, 0.554340, 0.729137,
		-0.603954, -0.758641, 0.244342,
		32.340176, 33.085281, 32.437016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019627, 33.465004, 32.922501>,  <32.762943, 33.616329, 32.265976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019627, 33.465004, 32.922501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811344, 33.144901, 32.803535>,  <32.686375, 32.952839, 32.732159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811344, 33.144901, 32.803535>,  <33.019627, 33.465004, 32.922501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811344, 33.144901, 32.803535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584496, -0.588077, 0.559043,
		-0.622279, 0.117261, 0.773962,
		-0.520704, -0.800259, -0.297410,
		32.655132, 32.904823, 32.714314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730507, 33.135246, 33.408558>,  <33.019627, 33.465004, 32.922501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730507, 33.135246, 33.408558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.743858, 32.826118, 33.155060>,  <32.751869, 32.640640, 33.002960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.743858, 32.826118, 33.155060>,  <32.730507, 33.135246, 33.408558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743858, 32.826118, 33.155060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592366, -0.495421, 0.635343,
		-0.804978, -0.396611, 0.441260,
		0.033374, -0.772824, -0.633742,
		32.753872, 32.594273, 32.964935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686962, 32.559982, 33.810650>,  <32.730507, 33.135246, 33.408558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686962, 32.559982, 33.810650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.836651, 32.414860, 33.469280>,  <32.926464, 32.327785, 33.264458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.836651, 32.414860, 33.469280>,  <32.686962, 32.559982, 33.810650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836651, 32.414860, 33.469280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663033, -0.538734, 0.519762,
		-0.648339, -0.760355, 0.038944,
		0.374223, -0.362804, -0.853423,
		32.948917, 32.306019, 33.213253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817116, 31.763306, 33.893524>,  <32.686962, 32.559982, 33.810650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817116, 31.763306, 33.893524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.039650, 31.861237, 33.575893>,  <33.173172, 31.919994, 33.385315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.039650, 31.861237, 33.575893>,  <32.817116, 31.763306, 33.893524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039650, 31.861237, 33.575893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750145, -0.559050, 0.353195,
		-0.357455, -0.792164, -0.494674,
		0.556336, 0.244826, -0.794072,
		33.206551, 31.934685, 33.337673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126419, 31.128538, 33.658447>,  <32.817116, 31.763306, 33.893524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126419, 31.128538, 33.658447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.365013, 31.420031, 33.523895>,  <33.508171, 31.594925, 33.443165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.365013, 31.420031, 33.523895>,  <33.126419, 31.128538, 33.658447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365013, 31.420031, 33.523895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796937, -0.487951, 0.356082,
		0.095350, -0.480474, -0.871810,
		0.596489, 0.728730, -0.336382,
		33.543961, 31.638649, 33.422981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669273, 30.863907, 33.270981>,  <33.126419, 31.128538, 33.658447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669273, 30.863907, 33.270981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.821659, 31.225338, 33.349377>,  <33.913090, 31.442196, 33.396416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.821659, 31.225338, 33.349377>,  <33.669273, 30.863907, 33.270981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821659, 31.225338, 33.349377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890316, -0.415689, 0.185848,
		0.249400, 0.103692, -0.962833,
		0.380969, 0.903577, 0.195991,
		33.935951, 31.496410, 33.408173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289413, 30.965105, 32.902664>,  <33.669273, 30.863907, 33.270981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289413, 30.965105, 32.902664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.320663, 31.219158, 33.210041>,  <34.339413, 31.371590, 33.394466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.320663, 31.219158, 33.210041>,  <34.289413, 30.965105, 32.902664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320663, 31.219158, 33.210041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901441, -0.374210, 0.217650,
		0.425795, 0.675700, -0.601771,
		0.078122, 0.635135, 0.768440,
		34.344101, 31.409698, 33.440575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930031, 31.123894, 32.873543>,  <34.289413, 30.965105, 32.902664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930031, 31.123894, 32.873543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823082, 31.254236, 33.236271>,  <34.758915, 31.332441, 33.453907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823082, 31.254236, 33.236271>,  <34.930031, 31.123894, 32.873543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823082, 31.254236, 33.236271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867408, -0.328468, 0.373780,
		0.419662, 0.886524, -0.194829,
		-0.267370, 0.325857, 0.906824,
		34.742870, 31.351994, 33.508320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371387, 31.611969, 33.113735>,  <34.930031, 31.123894, 32.873543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371387, 31.611969, 33.113735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224865, 31.432505, 33.439808>,  <35.136951, 31.324825, 33.635452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.224865, 31.432505, 33.439808>,  <35.371387, 31.611969, 33.113735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224865, 31.432505, 33.439808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928576, -0.120045, 0.351191,
		-0.059708, 0.885602, 0.460591,
		-0.366307, -0.448663, 0.815181,
		35.114971, 31.297905, 33.684361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911419, 32.166389, 32.796986>,  <35.371387, 31.611969, 33.113735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911419, 32.166389, 32.796986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253193, 32.088760, 32.604206>,  <36.458260, 32.042183, 32.488541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253193, 32.088760, 32.604206>,  <35.911419, 32.166389, 32.796986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253193, 32.088760, 32.604206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452219, 0.178910, -0.873779,
		0.255804, 0.964534, 0.065103,
		0.854437, -0.194076, -0.481946,
		36.509525, 32.030537, 32.459621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049477, 32.761169, 32.440315>,  <35.911419, 32.166389, 32.796986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049477, 32.761169, 32.440315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.240704, 32.459152, 32.260822>,  <36.355442, 32.277943, 32.153126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.240704, 32.459152, 32.260822>,  <36.049477, 32.761169, 32.440315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240704, 32.459152, 32.260822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441840, 0.234809, -0.865819,
		0.759096, 0.612190, -0.221352,
		0.478070, -0.755042, -0.448733,
		36.384125, 32.232639, 32.126202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309612, 33.013737, 31.832058>,  <36.049477, 32.761169, 32.440315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309612, 33.013737, 31.832058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283691, 32.618313, 31.777567>,  <36.268139, 32.381058, 31.744873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.283691, 32.618313, 31.777567>,  <36.309612, 33.013737, 31.832058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283691, 32.618313, 31.777567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415789, 0.150846, -0.896864,
		0.907150, -0.001477, -0.420806,
		-0.064801, -0.988556, -0.136226,
		36.264252, 32.321747, 31.736700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358437, 32.998135, 31.168505>,  <36.309612, 33.013737, 31.832058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358437, 32.998135, 31.168505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.219391, 32.633942, 31.258118>,  <36.135963, 32.415424, 31.311886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.219391, 32.633942, 31.258118>,  <36.358437, 32.998135, 31.168505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219391, 32.633942, 31.258118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506454, -0.018760, -0.862063,
		0.789095, -0.413124, -0.454596,
		-0.347611, -0.910482, 0.224032,
		36.115108, 32.360798, 31.325327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449177, 32.477318, 30.591209>,  <36.358437, 32.998135, 31.168505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449177, 32.477318, 30.591209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142639, 32.339844, 30.808315>,  <35.958717, 32.257359, 30.938580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142639, 32.339844, 30.808315>,  <36.449177, 32.477318, 30.591209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142639, 32.339844, 30.808315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492582, -0.228005, -0.839867,
		0.412404, -0.910985, 0.005437,
		-0.766347, -0.343686, 0.542765,
		35.912735, 32.236736, 30.971144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239956, 32.006485, 30.130518>,  <36.449177, 32.477318, 30.591209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239956, 32.006485, 30.130518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.932259, 32.045998, 30.383028>,  <35.747639, 32.069706, 30.534534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.932259, 32.045998, 30.383028>,  <36.239956, 32.006485, 30.130518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932259, 32.045998, 30.383028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637804, -0.178027, -0.749341,
		0.038365, -0.979055, 0.199948,
		-0.769243, 0.098779, 0.631275,
		35.701485, 32.075630, 30.572411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871407, 31.433538, 30.004911>,  <36.239956, 32.006485, 30.130518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871407, 31.433538, 30.004911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622364, 31.699602, 30.169800>,  <35.472939, 31.859240, 30.268732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622364, 31.699602, 30.169800>,  <35.871407, 31.433538, 30.004911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622364, 31.699602, 30.169800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697320, -0.232539, -0.677990,
		-0.355117, -0.709567, 0.608610,
		-0.622605, 0.665162, 0.412217,
		35.435581, 31.899149, 30.293467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209335, 31.111774, 30.086109>,  <35.871407, 31.433538, 30.004911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209335, 31.111774, 30.086109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112606, 31.499613, 30.101103>,  <35.054569, 31.732315, 30.110098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.112606, 31.499613, 30.101103>,  <35.209335, 31.111774, 30.086109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112606, 31.499613, 30.101103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735513, -0.157974, -0.658836,
		-0.632883, -0.186891, 0.751352,
		-0.241825, 0.969595, 0.037482,
		35.040058, 31.790491, 30.112347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454258, 31.169725, 30.082697>,  <35.209335, 31.111774, 30.086109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454258, 31.169725, 30.082697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586807, 31.524981, 29.955324>,  <34.666336, 31.738134, 29.878901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.586807, 31.524981, 29.955324>,  <34.454258, 31.169725, 30.082697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586807, 31.524981, 29.955324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756160, 0.048147, -0.652614,
		-0.564280, 0.457047, 0.687529,
		0.331377, 0.888138, -0.318433,
		34.686222, 31.791422, 29.859795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990089, 31.597548, 30.086838>,  <34.454258, 31.169725, 30.082697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990089, 31.597548, 30.086838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214565, 31.823851, 29.845182>,  <34.349251, 31.959633, 29.700190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214565, 31.823851, 29.845182>,  <33.990089, 31.597548, 30.086838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214565, 31.823851, 29.845182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819862, 0.279845, -0.499512,
		-0.113539, 0.775631, 0.620890,
		0.561191, 0.565759, -0.604137,
		34.382923, 31.993578, 29.663940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685131, 32.280109, 30.020290>,  <33.990089, 31.597548, 30.086838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685131, 32.280109, 30.020290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916786, 32.222031, 29.699411>,  <34.055779, 32.187183, 29.506884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.916786, 32.222031, 29.699411>,  <33.685131, 32.280109, 30.020290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916786, 32.222031, 29.699411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602937, 0.586012, -0.541348,
		0.548700, 0.797188, 0.251834,
		0.579133, -0.145197, -0.802198,
		34.090527, 32.178471, 29.458752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886665, 33.046040, 29.835157>,  <33.685131, 32.280109, 30.020290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886665, 33.046040, 29.835157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.967339, 32.786678, 29.541517>,  <34.015743, 32.631062, 29.365334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.967339, 32.786678, 29.541517>,  <33.886665, 33.046040, 29.835157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967339, 32.786678, 29.541517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465573, 0.595947, -0.654285,
		0.861723, 0.473734, -0.181686,
		0.201681, -0.648400, -0.734099,
		34.027843, 32.592159, 29.321287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402256, 33.455826, 29.361961>,  <33.886665, 33.046040, 29.835157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402256, 33.455826, 29.361961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177486, 33.174305, 29.188108>,  <34.042625, 33.005390, 29.083797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.177486, 33.174305, 29.188108>,  <34.402256, 33.455826, 29.361961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177486, 33.174305, 29.188108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471239, 0.704200, -0.531071,
		0.679836, -0.093606, -0.727365,
		-0.561922, -0.703804, -0.434630,
		34.008911, 32.963165, 29.057718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416714, 33.523567, 28.630524>,  <34.402256, 33.455826, 29.361961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416714, 33.523567, 28.630524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084232, 33.319759, 28.719509>,  <33.884743, 33.197475, 28.772902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084232, 33.319759, 28.719509>,  <34.416714, 33.523567, 28.630524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084232, 33.319759, 28.719509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513413, 0.549911, -0.658790,
		0.213331, -0.661805, -0.718682,
		-0.831202, -0.509522, 0.222466,
		33.834873, 33.166904, 28.786249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127102, 33.456902, 28.003315>,  <34.416714, 33.523567, 28.630524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127102, 33.456902, 28.003315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.826820, 33.396439, 28.260563>,  <33.646652, 33.360161, 28.414911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.826820, 33.396439, 28.260563>,  <34.127102, 33.456902, 28.003315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826820, 33.396439, 28.260563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641561, 0.399084, -0.655081,
		-0.157640, -0.904370, -0.396567,
		-0.750699, -0.151155, 0.643120,
		33.601612, 33.351093, 28.453499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578598, 33.242199, 27.582170>,  <34.127102, 33.456902, 28.003315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578598, 33.242199, 27.582170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.396866, 33.352142, 27.921118>,  <33.287827, 33.418106, 28.124487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.396866, 33.352142, 27.921118>,  <33.578598, 33.242199, 27.582170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396866, 33.352142, 27.921118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611523, 0.595461, -0.521024,
		-0.647782, -0.754905, -0.102458,
		-0.454334, 0.274855, 0.847370,
		33.260567, 33.434597, 28.175329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796535, 33.232304, 27.545490>,  <33.578598, 33.242199, 27.582170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796535, 33.232304, 27.545490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.827682, 33.468853, 27.866543>,  <32.846371, 33.610783, 28.059175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.827682, 33.468853, 27.866543>,  <32.796535, 33.232304, 27.545490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827682, 33.468853, 27.866543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676618, 0.622623, -0.393101,
		-0.732205, -0.512467, 0.448613,
		0.077866, 0.591370, 0.802632,
		32.851044, 33.646263, 28.107332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154629, 33.445930, 27.685209>,  <32.796535, 33.232304, 27.545490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154629, 33.445930, 27.685209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.374409, 33.729218, 27.862539>,  <32.506275, 33.899189, 27.968937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.374409, 33.729218, 27.862539>,  <32.154629, 33.445930, 27.685209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374409, 33.729218, 27.862539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654497, 0.694638, -0.298516,
		-0.519364, -0.126135, 0.845193,
		0.549450, 0.708215, 0.443325,
		32.539246, 33.941681, 27.995537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.617950, 33.810555, 27.977760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937645, 34.050961, 27.977428>,  <32.129459, 34.195206, 27.977228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937645, 34.050961, 27.977428>,  <31.617950, 33.810555, 27.977760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937645, 34.050961, 27.977428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578248, 0.768577, -0.273714,
		-0.163869, 0.219242, 0.961811,
		0.799235, 0.601019, -0.000831,
		32.177414, 34.231266, 27.977179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357067, 34.434132, 28.111895>,  <31.617950, 33.810555, 27.977760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357067, 34.434132, 28.111895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709335, 34.536015, 27.952124>,  <31.920696, 34.597145, 27.856262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709335, 34.536015, 27.952124>,  <31.357067, 34.434132, 28.111895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709335, 34.536015, 27.952124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391086, 0.866719, -0.309597,
		0.267333, 0.428864, 0.862907,
		0.880673, 0.254706, -0.399425,
		31.973537, 34.612427, 27.832296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596027, 35.077431, 28.444195>,  <31.357067, 34.434132, 28.111895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596027, 35.077431, 28.444195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738384, 35.019329, 28.074926>,  <31.823799, 34.984467, 27.853365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738384, 35.019329, 28.074926>,  <31.596027, 35.077431, 28.444195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738384, 35.019329, 28.074926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175401, 0.959908, -0.218656,
		0.917919, 0.239744, 0.316147,
		0.355893, -0.145256, -0.923169,
		31.845152, 34.975754, 27.797976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953310, 35.728920, 28.384056>,  <31.596027, 35.077431, 28.444195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953310, 35.728920, 28.384056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.924295, 35.584969, 28.011986>,  <31.906887, 35.498596, 27.788744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.924295, 35.584969, 28.011986>,  <31.953310, 35.728920, 28.384056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924295, 35.584969, 28.011986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141717, 0.926888, -0.347556,
		0.987246, 0.106612, -0.118232,
		-0.072534, -0.359879, -0.930175,
		31.902534, 35.477005, 27.732933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370693, 36.142624, 27.864141>,  <31.953310, 35.728920, 28.384056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370693, 36.142624, 27.864141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088219, 35.963150, 27.645058>,  <31.918734, 35.855465, 27.513607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088219, 35.963150, 27.645058>,  <32.370693, 36.142624, 27.864141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088219, 35.963150, 27.645058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204804, 0.869951, -0.448599,
		0.677758, -0.204622, -0.706239,
		-0.706186, -0.448682, -0.547709,
		31.876364, 35.828545, 27.480745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393867, 36.466911, 27.215275>,  <32.370693, 36.142624, 27.864141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393867, 36.466911, 27.215275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041592, 36.277462, 27.218422>,  <31.830225, 36.163792, 27.220310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041592, 36.277462, 27.218422>,  <32.393867, 36.466911, 27.215275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041592, 36.277462, 27.218422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404646, 0.743593, -0.532289,
		0.246252, -0.471968, -0.846526,
		-0.880694, -0.473620, 0.007869,
		31.777384, 36.135376, 27.220783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165791, 36.694801, 26.632259>,  <32.393867, 36.466911, 27.215275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165791, 36.694801, 26.632259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.821375, 36.554657, 26.779692>,  <31.614725, 36.470570, 26.868151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.821375, 36.554657, 26.779692>,  <32.165791, 36.694801, 26.632259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821375, 36.554657, 26.779692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508525, 0.596816, -0.620655,
		-0.002522, -0.721844, -0.692051,
		-0.861044, -0.350360, 0.368581,
		31.563063, 36.449551, 26.890266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787247, 36.664745, 26.058741>,  <32.165791, 36.694801, 26.632259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787247, 36.664745, 26.058741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521952, 36.645298, 26.357471>,  <31.362774, 36.633629, 26.536711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521952, 36.645298, 26.357471>,  <31.787247, 36.664745, 26.058741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521952, 36.645298, 26.357471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601315, 0.628724, -0.493079,
		-0.445574, -0.776107, -0.446230,
		-0.663238, -0.048621, 0.746828,
		31.322981, 36.630711, 26.581520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188377, 36.627285, 25.695671>,  <31.787247, 36.664745, 26.058741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188377, 36.627285, 25.695671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107325, 36.746635, 26.068747>,  <31.058693, 36.818245, 26.292593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.107325, 36.746635, 26.068747>,  <31.188377, 36.627285, 25.695671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107325, 36.746635, 26.068747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581663, 0.729548, -0.359761,
		-0.787787, -0.615410, 0.025725,
		-0.202633, 0.298379, 0.932690,
		31.046535, 36.836147, 26.348553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404963, 36.626118, 25.794975>,  <31.188377, 36.627285, 25.695671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404963, 36.626118, 25.794975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.588087, 36.858246, 26.064386>,  <30.697962, 36.997520, 26.226032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.588087, 36.858246, 26.064386>,  <30.404963, 36.626118, 25.794975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588087, 36.858246, 26.064386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532746, 0.785573, -0.314734,
		-0.711750, -0.214730, 0.668807,
		0.457814, 0.580316, 0.673528,
		30.725431, 37.032341, 26.266445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835346, 37.106232, 26.033827>,  <30.404963, 36.626118, 25.794975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835346, 37.106232, 26.033827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.191376, 37.268860, 26.116257>,  <30.404993, 37.366436, 26.165714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.191376, 37.268860, 26.116257>,  <29.835346, 37.106232, 26.033827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191376, 37.268860, 26.116257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271739, 0.836276, -0.476235,
		-0.365960, 0.367886, 0.854829,
		0.890074, 0.406574, 0.206074,
		30.458397, 37.390831, 26.178080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629761, 37.757973, 26.157078>,  <29.835346, 37.106232, 26.033827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629761, 37.757973, 26.157078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023375, 37.804630, 26.103304>,  <30.259542, 37.832626, 26.071039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023375, 37.804630, 26.103304>,  <29.629761, 37.757973, 26.157078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023375, 37.804630, 26.103304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161382, 0.903286, -0.397531,
		0.075061, 0.412879, 0.907688,
		0.984033, 0.116646, -0.134432,
		30.318584, 37.839622, 26.062975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792664, 38.477627, 26.359537>,  <29.629761, 37.757973, 26.157078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792664, 38.477627, 26.359537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122856, 38.393684, 26.149950>,  <30.320972, 38.343319, 26.024199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.122856, 38.393684, 26.149950>,  <29.792664, 38.477627, 26.359537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122856, 38.393684, 26.149950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073906, 0.880132, -0.468941,
		0.559569, 0.425826, 0.711024,
		0.825482, -0.209856, -0.523966,
		30.370501, 38.330727, 25.992760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158957, 39.152065, 26.305725>,  <29.792664, 38.477627, 26.359537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158957, 39.152065, 26.305725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.292017, 38.919468, 26.008753>,  <30.371853, 38.779907, 25.830568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.292017, 38.919468, 26.008753>,  <30.158957, 39.152065, 26.305725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292017, 38.919468, 26.008753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180423, 0.733482, -0.655326,
		0.925630, 0.351946, 0.139078,
		0.332651, -0.581496, -0.742432,
		30.391811, 38.745018, 25.786024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532122, 39.602692, 25.882849>,  <30.158957, 39.152065, 26.305725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532122, 39.602692, 25.882849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.453562, 39.284504, 25.653532>,  <30.406425, 39.093594, 25.515942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.453562, 39.284504, 25.653532>,  <30.532122, 39.602692, 25.882849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453562, 39.284504, 25.653532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005591, 0.585578, -0.810596,
		0.980508, -0.155994, -0.119453,
		-0.196397, -0.795464, -0.573292,
		30.394642, 39.045864, 25.481544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959974, 39.651608, 25.343271>,  <30.532122, 39.602692, 25.882849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959974, 39.651608, 25.343271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656626, 39.418179, 25.227121>,  <30.474617, 39.278122, 25.157431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656626, 39.418179, 25.227121>,  <30.959974, 39.651608, 25.343271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656626, 39.418179, 25.227121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159374, 0.597971, -0.785513,
		0.632042, -0.549429, -0.546489,
		-0.758368, -0.583573, -0.290378,
		30.429113, 39.243107, 25.140009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055475, 39.524967, 24.617048>,  <30.959974, 39.651608, 25.343271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055475, 39.524967, 24.617048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668591, 39.433521, 24.661295>,  <30.436459, 39.378654, 24.687843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668591, 39.433521, 24.661295>,  <31.055475, 39.524967, 24.617048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668591, 39.433521, 24.661295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205282, 0.447299, -0.870507,
		0.149530, -0.864674, -0.479563,
		-0.967212, -0.228612, 0.110618,
		30.378428, 39.364937, 24.694481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833990, 39.295326, 23.926010>,  <31.055475, 39.524967, 24.617048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833990, 39.295326, 23.926010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.510466, 39.411774, 24.130390>,  <30.316351, 39.481644, 24.253017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.510466, 39.411774, 24.130390>,  <30.833990, 39.295326, 23.926010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510466, 39.411774, 24.130390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386930, 0.390844, -0.835181,
		-0.442841, -0.873207, -0.203476,
		-0.808812, 0.291121, 0.510951,
		30.267822, 39.499111, 24.283676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309071, 39.245415, 23.484253>,  <30.833990, 39.295326, 23.926010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309071, 39.245415, 23.484253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.156757, 39.489902, 23.761789>,  <30.065369, 39.636597, 23.928310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.156757, 39.489902, 23.761789>,  <30.309071, 39.245415, 23.484253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156757, 39.489902, 23.761789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365178, 0.589966, -0.720129,
		-0.849499, -0.527589, -0.001446,
		-0.380785, 0.611220, 0.693839,
		30.042522, 39.673267, 23.969940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684048, 39.400517, 23.175905>,  <30.309071, 39.245415, 23.484253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684048, 39.400517, 23.175905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763279, 39.678581, 23.452314>,  <29.810818, 39.845421, 23.618160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763279, 39.678581, 23.452314>,  <29.684048, 39.400517, 23.175905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763279, 39.678581, 23.452314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410087, 0.699098, -0.585739,
		-0.890278, -0.167358, 0.423552,
		0.198076, 0.695164, 0.691024,
		29.822702, 39.887131, 23.659622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142624, 39.940624, 23.043730>,  <29.684048, 39.400517, 23.175905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142624, 39.940624, 23.043730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.404831, 40.129356, 23.279585>,  <29.562155, 40.242596, 23.421099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.404831, 40.129356, 23.279585>,  <29.142624, 39.940624, 23.043730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404831, 40.129356, 23.279585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268193, 0.875345, -0.402298,
		-0.705955, 0.105576, 0.700344,
		0.655515, 0.471832, 0.589640,
		29.601486, 40.270905, 23.456476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713125, 40.402790, 23.459812>,  <29.142624, 39.940624, 23.043730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713125, 40.402790, 23.459812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.095459, 40.520271, 23.455484>,  <29.324860, 40.590759, 23.452888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.095459, 40.520271, 23.455484>,  <28.713125, 40.402790, 23.459812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095459, 40.520271, 23.455484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273916, 0.876895, -0.394999,
		-0.106526, 0.380518, 0.918618,
		0.955836, 0.293701, -0.010818,
		29.382210, 40.608383, 23.452238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022821, 41.030006, 23.954100>,  <28.713125, 40.402790, 23.459812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022821, 41.030006, 23.954100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.229992, 41.003803, 23.612934>,  <29.354294, 40.988083, 23.408236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.229992, 41.003803, 23.612934>,  <29.022821, 41.030006, 23.954100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229992, 41.003803, 23.612934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166850, 0.970178, -0.175828,
		0.838995, 0.233374, 0.491551,
		0.517927, -0.065504, -0.852913,
		29.385370, 40.984154, 23.357059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521317, 41.496693, 24.251503>,  <29.022821, 41.030006, 23.954100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521317, 41.496693, 24.251503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472931, 41.750874, 24.556545>,  <28.443899, 41.903381, 24.739571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.472931, 41.750874, 24.556545>,  <28.521317, 41.496693, 24.251503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472931, 41.750874, 24.556545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001248, -0.768147, 0.640272,
		0.992656, 0.078401, 0.092125,
		-0.120964, 0.635455, 0.762604,
		28.436642, 41.941509, 24.785326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977198, 41.290550, 24.769377>,  <28.521317, 41.496693, 24.251503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977198, 41.290550, 24.769377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.682377, 41.492558, 24.949024>,  <28.505484, 41.613762, 25.056812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.682377, 41.492558, 24.949024>,  <28.977198, 41.290550, 24.769377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682377, 41.492558, 24.949024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053405, -0.618940, 0.783620,
		0.673721, 0.601556, 0.429222,
		-0.737054, 0.505019, 0.449119,
		28.461260, 41.644062, 25.083759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133141, 41.173481, 25.401550>,  <28.977198, 41.290550, 24.769377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133141, 41.173481, 25.401550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754021, 41.295609, 25.438330>,  <28.526548, 41.368885, 25.460398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.754021, 41.295609, 25.438330>,  <29.133141, 41.173481, 25.401550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754021, 41.295609, 25.438330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169697, -0.727120, 0.665207,
		0.269960, 0.614879, 0.740976,
		-0.947800, 0.305321, 0.091950,
		28.469681, 41.387203, 25.465914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114719, 41.136803, 26.149210>,  <29.133141, 41.173481, 25.401550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114719, 41.136803, 26.149210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745230, 41.157787, 25.997429>,  <28.523537, 41.170380, 25.906361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.745230, 41.157787, 25.997429>,  <29.114719, 41.136803, 26.149210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745230, 41.157787, 25.997429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349102, -0.523056, 0.777522,
		-0.157681, 0.850682, 0.501474,
		-0.923723, 0.052465, -0.379451,
		28.468113, 41.173527, 25.883595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563339, 41.336285, 26.664333>,  <29.114719, 41.136803, 26.149210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563339, 41.336285, 26.664333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.387083, 41.122028, 26.376186>,  <28.281330, 40.993473, 26.203299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.387083, 41.122028, 26.376186>,  <28.563339, 41.336285, 26.664333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387083, 41.122028, 26.376186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214975, -0.716156, 0.664008,
		-0.871563, 0.447450, 0.200418,
		-0.440641, -0.535639, -0.720365,
		28.254890, 40.961338, 26.160076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902536, 41.207653, 26.983732>,  <28.563339, 41.336285, 26.664333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902536, 41.207653, 26.983732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.999287, 40.945084, 26.697906>,  <28.057337, 40.787540, 26.526411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.999287, 40.945084, 26.697906>,  <27.902536, 41.207653, 26.983732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999287, 40.945084, 26.697906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020711, -0.739754, 0.672559,
		-0.970086, -0.147876, -0.192523,
		0.241875, -0.656428, -0.714563,
		28.071850, 40.748154, 26.483538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485714, 40.684204, 27.233360>,  <27.902536, 41.207653, 26.983732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485714, 40.684204, 27.233360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.717031, 40.544575, 26.938410>,  <27.855822, 40.460796, 26.761440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.717031, 40.544575, 26.938410>,  <27.485714, 40.684204, 27.233360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717031, 40.544575, 26.938410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106408, -0.863844, 0.492393,
		-0.808859, -0.363211, -0.462412,
		0.578294, -0.349072, -0.737377,
		27.890520, 40.439854, 26.717197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242352, 40.038548, 27.080547>,  <27.485714, 40.684204, 27.233360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242352, 40.038548, 27.080547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.617794, 40.035332, 26.942587>,  <27.843060, 40.033401, 26.859812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.617794, 40.035332, 26.942587>,  <27.242352, 40.038548, 27.080547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617794, 40.035332, 26.942587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184593, -0.832877, 0.521768,
		-0.291454, -0.553400, -0.780258,
		0.938605, -0.008041, -0.344899,
		27.899376, 40.032921, 26.839117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366289, 39.381840, 26.842791>,  <27.242352, 40.038548, 27.080547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366289, 39.381840, 26.842791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.727795, 39.536648, 26.915920>,  <27.944698, 39.629532, 26.959799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.727795, 39.536648, 26.915920>,  <27.366289, 39.381840, 26.842791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727795, 39.536648, 26.915920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213195, -0.777402, 0.591772,
		0.371155, -0.495846, -0.785099,
		0.903766, 0.387018, 0.182825,
		27.998924, 39.652752, 26.970768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811920, 38.783905, 26.792459>,  <27.366289, 39.381840, 26.842791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811920, 38.783905, 26.792459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.022305, 39.058243, 26.993650>,  <28.148535, 39.222847, 27.114365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.022305, 39.058243, 26.993650>,  <27.811920, 38.783905, 26.792459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022305, 39.058243, 26.993650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406605, -0.722188, 0.559568,
		0.747019, -0.089798, -0.658710,
		0.525960, 0.685843, 0.502976,
		28.180092, 39.263996, 27.144543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484398, 38.501545, 26.775686>,  <27.811920, 38.783905, 26.792459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484398, 38.501545, 26.775686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.516685, 38.787685, 27.053322>,  <28.536058, 38.959370, 27.219904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.516685, 38.787685, 27.053322>,  <28.484398, 38.501545, 26.775686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516685, 38.787685, 27.053322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546774, -0.614013, 0.569234,
		0.833381, 0.333563, -0.440696,
		0.080718, 0.715349, 0.694090,
		28.540901, 39.002289, 27.261549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161093, 38.664780, 26.916220>,  <28.484398, 38.501545, 26.775686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161093, 38.664780, 26.916220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.972448, 38.767128, 27.253767>,  <28.859261, 38.828537, 27.456295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.972448, 38.767128, 27.253767>,  <29.161093, 38.664780, 26.916220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972448, 38.767128, 27.253767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668825, -0.519873, 0.531418,
		0.574679, 0.815022, 0.074045,
		-0.471612, 0.255872, 0.843867,
		28.830965, 38.843891, 27.506927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662970, 38.815071, 27.339451>,  <29.161093, 38.664780, 26.916220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662970, 38.815071, 27.339451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.369442, 38.736767, 27.599663>,  <29.193325, 38.689785, 27.755789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.369442, 38.736767, 27.599663>,  <29.662970, 38.815071, 27.339451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369442, 38.736767, 27.599663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634579, -0.539384, 0.553511,
		0.242527, 0.818989, 0.520037,
		-0.733819, -0.195763, 0.650528,
		29.149296, 38.678040, 27.794821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954300, 38.823448, 27.942072>,  <29.662970, 38.815071, 27.339451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954300, 38.823448, 27.942072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.622646, 38.616154, 28.025948>,  <29.423655, 38.491779, 28.076273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.622646, 38.616154, 28.025948>,  <29.954300, 38.823448, 27.942072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622646, 38.616154, 28.025948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553006, -0.705290, 0.443566,
		-0.081979, 0.483735, 0.871366,
		-0.829135, -0.518234, 0.209689,
		29.373905, 38.460682, 28.088854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990847, 38.708439, 28.680239>,  <29.954300, 38.823448, 27.942072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990847, 38.708439, 28.680239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742207, 38.440388, 28.517982>,  <29.593021, 38.279556, 28.420630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742207, 38.440388, 28.517982>,  <29.990847, 38.708439, 28.680239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742207, 38.440388, 28.517982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321179, -0.690341, 0.648285,
		-0.714462, 0.272693, 0.644347,
		-0.621602, -0.670125, -0.405639,
		29.555725, 38.239349, 28.396290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743519, 38.371342, 29.307756>,  <29.990847, 38.708439, 28.680239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743519, 38.371342, 29.307756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669966, 38.116570, 29.008287>,  <29.625834, 37.963707, 28.828606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.669966, 38.116570, 29.008287>,  <29.743519, 38.371342, 29.307756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669966, 38.116570, 29.008287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323507, -0.758441, 0.565783,
		-0.928186, -0.138162, 0.345517,
		-0.183884, -0.636929, -0.748671,
		29.614801, 37.925491, 28.783686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361124, 37.792786, 29.615772>,  <29.743519, 38.371342, 29.307756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361124, 37.792786, 29.615772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.477259, 37.637527, 29.265905>,  <29.546940, 37.544373, 29.055984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.477259, 37.637527, 29.265905>,  <29.361124, 37.792786, 29.615772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477259, 37.637527, 29.265905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127724, -0.890145, 0.437410,
		-0.948362, -0.238712, -0.208867,
		0.290337, -0.388146, -0.874670,
		29.564360, 37.521084, 29.003504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124504, 37.109959, 29.580698>,  <29.361124, 37.792786, 29.615772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124504, 37.109959, 29.580698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.429981, 37.122238, 29.322758>,  <29.613268, 37.129604, 29.167994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.429981, 37.122238, 29.322758>,  <29.124504, 37.109959, 29.580698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429981, 37.122238, 29.322758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306806, -0.896118, 0.320689,
		-0.568016, -0.442752, -0.693778,
		0.763693, 0.030699, -0.644849,
		29.659090, 37.131447, 29.129303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190779, 36.408459, 29.299065>,  <29.124504, 37.109959, 29.580698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190779, 36.408459, 29.299065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.545799, 36.571648, 29.213449>,  <29.758812, 36.669559, 29.162081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.545799, 36.571648, 29.213449>,  <29.190779, 36.408459, 29.299065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545799, 36.571648, 29.213449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448965, -0.870139, 0.203196,
		-0.103345, -0.276443, -0.955458,
		0.887553, 0.407968, -0.214038,
		29.812065, 36.694038, 29.149239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432547, 35.934597, 28.936468>,  <29.190779, 36.408459, 29.299065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432547, 35.934597, 28.936468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744169, 36.153934, 29.058052>,  <29.931143, 36.285538, 29.131002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744169, 36.153934, 29.058052>,  <29.432547, 35.934597, 28.936468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744169, 36.153934, 29.058052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476447, -0.832933, 0.281462,
		0.407514, -0.074455, -0.910159,
		0.779057, 0.548342, 0.303958,
		29.977886, 36.318436, 29.149240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056583, 35.558872, 28.627462>,  <29.432547, 35.934597, 28.936468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056583, 35.558872, 28.627462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172747, 35.804115, 28.921335>,  <30.242445, 35.951260, 29.097660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.172747, 35.804115, 28.921335>,  <30.056583, 35.558872, 28.627462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172747, 35.804115, 28.921335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559515, -0.731646, 0.389407,
		0.776277, 0.297980, -0.555520,
		0.290408, 0.613109, 0.734684,
		30.259869, 35.988049, 29.141741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.238403, 31.828047, 28.343105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.135414, 32.070206, 28.644356>,  <34.073620, 32.215500, 28.825106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.135414, 32.070206, 28.644356>,  <34.238403, 31.828047, 28.343105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135414, 32.070206, 28.644356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836287, -0.250842, 0.487546,
		0.484075, 0.755362, -0.441701,
		-0.257477, 0.605398, 0.753126,
		34.058170, 32.251823, 28.870295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923931, 32.061115, 28.476728>,  <34.238403, 31.828047, 28.343105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923931, 32.061115, 28.476728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.665184, 32.137417, 28.772070>,  <34.509933, 32.183197, 28.949276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.665184, 32.137417, 28.772070>,  <34.923931, 32.061115, 28.476728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665184, 32.137417, 28.772070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717181, -0.176971, 0.674042,
		0.259247, 0.965553, -0.022331,
		-0.646871, 0.190758, 0.738355,
		34.471123, 32.194645, 28.993576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129932, 32.659252, 28.900888>,  <34.923931, 32.061115, 28.476728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129932, 32.659252, 28.900888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.893555, 32.434002, 29.131948>,  <34.751728, 32.298851, 29.270584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.893555, 32.434002, 29.131948>,  <35.129932, 32.659252, 28.900888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893555, 32.434002, 29.131948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670392, 0.055503, 0.739928,
		-0.448731, 0.824507, 0.344714,
		-0.590944, -0.563122, 0.577649,
		34.716270, 32.265064, 29.305243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034248, 32.946484, 29.510715>,  <35.129932, 32.659252, 28.900888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034248, 32.946484, 29.510715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.924999, 32.575043, 29.611189>,  <34.859451, 32.352177, 29.671473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.924999, 32.575043, 29.611189>,  <35.034248, 32.946484, 29.510715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924999, 32.575043, 29.611189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291597, 0.168910, 0.941510,
		-0.916720, 0.330393, 0.224645,
		-0.273124, -0.928606, 0.251185,
		34.843063, 32.296459, 29.686544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694828, 33.020943, 30.109459>,  <35.034248, 32.946484, 29.510715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694828, 33.020943, 30.109459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845505, 32.650665, 30.095652>,  <34.935913, 32.428497, 30.087368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.845505, 32.650665, 30.095652>,  <34.694828, 33.020943, 30.109459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845505, 32.650665, 30.095652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519876, 0.180421, 0.834971,
		-0.766700, -0.332474, 0.549210,
		0.376695, -0.925694, -0.034516,
		34.958515, 32.372955, 30.085297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460804, 32.623760, 30.780565>,  <34.694828, 33.020943, 30.109459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460804, 32.623760, 30.780565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.782333, 32.430080, 30.642334>,  <34.975250, 32.313873, 30.559395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.782333, 32.430080, 30.642334>,  <34.460804, 32.623760, 30.780565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782333, 32.430080, 30.642334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435372, 0.082982, 0.896418,
		-0.405369, -0.871014, 0.277510,
		0.803821, -0.484200, -0.345577,
		35.023479, 32.284821, 30.538660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748295, 32.364841, 31.394655>,  <34.460804, 32.623760, 30.780565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748295, 32.364841, 31.394655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.041534, 32.270306, 31.139559>,  <35.217476, 32.213585, 30.986502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.041534, 32.270306, 31.139559>,  <34.748295, 32.364841, 31.394655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041534, 32.270306, 31.139559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654056, -0.012137, 0.756348,
		-0.186493, -0.971596, 0.145680,
		0.733096, -0.236337, -0.637742,
		35.261463, 32.199406, 30.948236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939899, 31.820356, 31.741653>,  <34.748295, 32.364841, 31.394655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939899, 31.820356, 31.741653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.236610, 31.954025, 31.509069>,  <35.414639, 32.034225, 31.369518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.236610, 31.954025, 31.509069>,  <34.939899, 31.820356, 31.741653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236610, 31.954025, 31.509069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655504, -0.178069, 0.733898,
		0.141708, -0.925538, -0.351138,
		0.741777, 0.334172, -0.581460,
		35.459145, 32.054276, 31.334631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520287, 31.336754, 31.815720>,  <34.939899, 31.820356, 31.741653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520287, 31.336754, 31.815720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700439, 31.652067, 31.648022>,  <35.808533, 31.841255, 31.547403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700439, 31.652067, 31.648022>,  <35.520287, 31.336754, 31.815720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700439, 31.652067, 31.648022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789873, -0.132878, 0.598702,
		0.416237, -0.600796, -0.682489,
		0.450385, 0.788281, -0.419244,
		35.835556, 31.888552, 31.522249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213833, 31.055801, 31.581463>,  <35.520287, 31.336754, 31.815720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213833, 31.055801, 31.581463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.216866, 31.451761, 31.638083>,  <36.218685, 31.689337, 31.672054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.216866, 31.451761, 31.638083>,  <36.213833, 31.055801, 31.581463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216866, 31.451761, 31.638083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770343, -0.096041, 0.630356,
		0.637585, 0.104262, -0.763292,
		0.007585, 0.989902, 0.141551,
		36.219143, 31.748732, 31.680548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989166, 31.209019, 31.605528>,  <36.213833, 31.055801, 31.581463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989166, 31.209019, 31.605528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.800434, 31.530210, 31.751184>,  <36.687195, 31.722925, 31.838579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.800434, 31.530210, 31.751184>,  <36.989166, 31.209019, 31.605528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800434, 31.530210, 31.751184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625505, 0.013779, 0.780099,
		0.621386, 0.595846, -0.508770,
		-0.471830, 0.802980, 0.364142,
		36.658886, 31.771105, 31.860428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507515, 31.644981, 31.779324>,  <36.989166, 31.209019, 31.605528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507515, 31.644981, 31.779324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194313, 31.754747, 32.002605>,  <37.006390, 31.820606, 32.136574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.194313, 31.754747, 32.002605>,  <37.507515, 31.644981, 31.779324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194313, 31.754747, 32.002605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553663, -0.101498, 0.826532,
		0.283468, 0.956240, -0.072458,
		-0.783009, 0.274413, 0.558206,
		36.959412, 31.837070, 32.170067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791927, 31.997787, 32.273174>,  <37.507515, 31.644981, 31.779324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791927, 31.997787, 32.273174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440575, 31.859554, 32.405247>,  <37.229763, 31.776615, 32.484489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440575, 31.859554, 32.405247>,  <37.791927, 31.997787, 32.273174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440575, 31.859554, 32.405247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437172, -0.301675, 0.847274,
		-0.193196, 0.888575, 0.416064,
		-0.878383, -0.345581, 0.330178,
		37.177059, 31.755880, 32.504299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610577, 32.426228, 32.740948>,  <37.791927, 31.997787, 32.273174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610577, 32.426228, 32.740948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516342, 32.041603, 32.797367>,  <37.459801, 31.810827, 32.831219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516342, 32.041603, 32.797367>,  <37.610577, 32.426228, 32.740948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516342, 32.041603, 32.797367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568671, -0.018698, 0.822352,
		-0.788107, 0.273942, 0.551219,
		-0.235584, -0.961564, 0.141047,
		37.445667, 31.753134, 32.839680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996372, 32.184753, 33.370510>,  <37.610577, 32.426228, 32.740948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996372, 32.184753, 33.370510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.157135, 32.427628, 33.644676>,  <38.253593, 32.573353, 33.809177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.157135, 32.427628, 33.644676>,  <37.996372, 32.184753, 33.370510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157135, 32.427628, 33.644676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190313, 0.787577, -0.586092,
		-0.895685, 0.105111, 0.432088,
		0.401907, 0.607186, 0.685417,
		38.277706, 32.609783, 33.850300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500481, 32.730282, 33.445576>,  <37.996372, 32.184753, 33.370510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500481, 32.730282, 33.445576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.840092, 32.899391, 33.572334>,  <38.043858, 33.000854, 33.648388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.840092, 32.899391, 33.572334>,  <37.500481, 32.730282, 33.445576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840092, 32.899391, 33.572334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266188, 0.860366, -0.434643,
		-0.456401, 0.284669, 0.843008,
		0.849024, 0.422770, 0.316896,
		38.094799, 33.026222, 33.667404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292194, 33.334721, 33.868900>,  <37.500481, 32.730282, 33.445576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292194, 33.334721, 33.868900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671814, 33.373875, 33.749088>,  <37.899586, 33.397366, 33.677200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671814, 33.373875, 33.749088>,  <37.292194, 33.334721, 33.868900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671814, 33.373875, 33.749088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235531, 0.851817, -0.467903,
		0.209345, 0.514613, 0.831473,
		0.949052, 0.097885, -0.299531,
		37.956528, 33.403240, 33.659229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444538, 33.983170, 33.882111>,  <37.292194, 33.334721, 33.868900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444538, 33.983170, 33.882111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821777, 33.972340, 33.749546>,  <38.048122, 33.965843, 33.670010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.821777, 33.972340, 33.749546>,  <37.444538, 33.983170, 33.882111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821777, 33.972340, 33.749546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113218, 0.910980, -0.396606,
		0.312644, 0.411560, 0.856080,
		0.943099, -0.027072, -0.331409,
		38.104706, 33.964218, 33.650124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917439, 34.511028, 34.198006>,  <37.444538, 33.983170, 33.882111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917439, 34.511028, 34.198006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959522, 34.391331, 33.818661>,  <37.984772, 34.319511, 33.591053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959522, 34.391331, 33.818661>,  <37.917439, 34.511028, 34.198006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959522, 34.391331, 33.818661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158195, 0.936473, -0.313040,
		0.981787, 0.182960, 0.051187,
		0.105209, -0.299241, -0.948360,
		37.991085, 34.301559, 33.534153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202831, 35.115009, 33.851311>,  <37.917439, 34.511028, 34.198006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202831, 35.115009, 33.851311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094154, 34.873589, 33.551468>,  <38.028946, 34.728737, 33.371563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.094154, 34.873589, 33.551468>,  <38.202831, 35.115009, 33.851311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094154, 34.873589, 33.551468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089804, 0.791408, -0.604656,
		0.958184, -0.096965, -0.269223,
		-0.271695, -0.603549, -0.749607,
		38.012646, 34.692524, 33.326588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699963, 35.169544, 33.221256>,  <38.202831, 35.115009, 33.851311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699963, 35.169544, 33.221256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338287, 35.033157, 33.118355>,  <38.121281, 34.951324, 33.056614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338287, 35.033157, 33.118355>,  <38.699963, 35.169544, 33.221256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338287, 35.033157, 33.118355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088646, 0.738984, -0.667865,
		0.417825, -0.581074, -0.698409,
		-0.904192, -0.340963, -0.257256,
		38.067028, 34.930870, 33.041180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653553, 35.209164, 32.445774>,  <38.699963, 35.169544, 33.221256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653553, 35.209164, 32.445774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.265678, 35.176903, 32.538040>,  <38.032955, 35.157547, 32.593399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.265678, 35.176903, 32.538040>,  <38.653553, 35.209164, 32.445774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265678, 35.176903, 32.538040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230465, 0.615586, -0.753618,
		-0.081215, -0.783932, -0.615512,
		-0.969685, -0.080649, 0.230663,
		37.974773, 35.152706, 32.607239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333908, 34.917953, 31.835518>,  <38.653553, 35.209164, 32.445774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333908, 34.917953, 31.835518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056320, 35.105499, 32.054089>,  <37.889767, 35.218025, 32.185230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056320, 35.105499, 32.054089>,  <38.333908, 34.917953, 31.835518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056320, 35.105499, 32.054089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324562, 0.473728, -0.818683,
		-0.642707, -0.745486, -0.176576,
		-0.693965, 0.468863, 0.546425,
		37.848129, 35.246159, 32.218018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727863, 34.913658, 31.532202>,  <38.333908, 34.917953, 31.835518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727863, 34.913658, 31.532202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.657448, 35.200043, 31.802435>,  <37.615200, 35.371872, 31.964575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.657448, 35.200043, 31.802435>,  <37.727863, 34.913658, 31.532202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657448, 35.200043, 31.802435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504811, 0.523526, -0.686357,
		-0.845089, -0.461867, 0.269264,
		-0.176039, 0.715960, 0.675582,
		37.604637, 35.414829, 32.005108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983974, 35.121845, 31.433332>,  <37.727863, 34.913658, 31.532202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983974, 35.121845, 31.433332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.150047, 35.430832, 31.625547>,  <37.249691, 35.616226, 31.740875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.150047, 35.430832, 31.625547>,  <36.983974, 35.121845, 31.433332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150047, 35.430832, 31.625547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524345, 0.634840, -0.567486,
		-0.743430, -0.016358, 0.668614,
		0.415180, 0.772471, 0.480536,
		37.274601, 35.662575, 31.769709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472912, 35.503906, 31.507528>,  <36.983974, 35.121845, 31.433332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472912, 35.503906, 31.507528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759743, 35.769833, 31.591253>,  <36.931843, 35.929390, 31.641489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.759743, 35.769833, 31.591253>,  <36.472912, 35.503906, 31.507528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759743, 35.769833, 31.591253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578991, 0.735371, -0.352134,
		-0.388028, 0.131318, 0.912244,
		0.717080, 0.664819, 0.209312,
		36.974865, 35.969280, 31.654047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100731, 36.122707, 31.792706>,  <36.472912, 35.503906, 31.507528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100731, 36.122707, 31.792706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.455883, 36.243641, 31.653984>,  <36.668972, 36.316200, 31.570751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.455883, 36.243641, 31.653984>,  <36.100731, 36.122707, 31.792706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455883, 36.243641, 31.653984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446813, 0.746347, -0.493280,
		0.109701, 0.592927, 0.797749,
		0.887876, 0.302331, -0.346802,
		36.722244, 36.334339, 31.549944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937450, 36.891575, 31.775469>,  <36.100731, 36.122707, 31.792706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937450, 36.891575, 31.775469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270981, 36.829498, 31.563562>,  <36.471100, 36.792252, 31.436419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.270981, 36.829498, 31.563562>,  <35.937450, 36.891575, 31.775469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270981, 36.829498, 31.563562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339296, 0.612917, -0.713590,
		0.435447, 0.774756, 0.458409,
		0.833825, -0.155194, -0.529765,
		36.521130, 36.782940, 31.404633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926170, 37.204037, 32.392757>,  <35.937450, 36.891575, 31.775469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926170, 37.204037, 32.392757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.987400, 37.510025, 32.643002>,  <36.024139, 37.693619, 32.793148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.987400, 37.510025, 32.643002>,  <35.926170, 37.204037, 32.392757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987400, 37.510025, 32.643002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085263, -0.620485, 0.779570,
		0.984529, -0.172676, -0.029758,
		0.153077, 0.764972, 0.625608,
		36.033321, 37.739517, 32.830685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381660, 36.949596, 32.884552>,  <35.926170, 37.204037, 32.392757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381660, 36.949596, 32.884552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180496, 37.252037, 33.052071>,  <36.059799, 37.433502, 33.152580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.180496, 37.252037, 33.052071>,  <36.381660, 36.949596, 32.884552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180496, 37.252037, 33.052071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175382, -0.563714, 0.807136,
		0.846358, 0.332468, 0.416104,
		-0.502910, 0.756103, 0.418795,
		36.029625, 37.478867, 33.177708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726746, 36.937737, 33.565575>,  <36.381660, 36.949596, 32.884552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726746, 36.937737, 33.565575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.369545, 37.117722, 33.561836>,  <36.155224, 37.225712, 33.559593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.369545, 37.117722, 33.561836>,  <36.726746, 36.937737, 33.565575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369545, 37.117722, 33.561836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255226, -0.489194, 0.833996,
		0.370694, 0.747142, 0.551692,
		-0.892998, 0.449964, -0.009349,
		36.101646, 37.252712, 33.559032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583546, 37.124699, 34.293461>,  <36.726746, 36.937737, 33.565575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583546, 37.124699, 34.293461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.226105, 37.121788, 34.113937>,  <36.011642, 37.120041, 34.006226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.226105, 37.121788, 34.113937>,  <36.583546, 37.124699, 34.293461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226105, 37.121788, 34.113937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350996, -0.611911, 0.708779,
		-0.279789, 0.790893, 0.544248,
		-0.893599, -0.007280, -0.448806,
		35.958023, 37.119602, 33.979294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178238, 37.298119, 34.891403>,  <36.583546, 37.124699, 34.293461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178238, 37.298119, 34.891403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.914879, 37.149731, 34.629444>,  <35.756863, 37.060699, 34.472271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.914879, 37.149731, 34.629444>,  <36.178238, 37.298119, 34.891403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914879, 37.149731, 34.629444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492300, -0.445916, 0.747529,
		-0.569339, 0.814580, 0.110964,
		-0.658402, -0.370969, -0.654895,
		35.717358, 37.038441, 34.432976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526745, 37.420570, 35.127903>,  <36.178238, 37.298119, 34.891403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526745, 37.420570, 35.127903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.502651, 37.089817, 34.904251>,  <35.488194, 36.891365, 34.770058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.502651, 37.089817, 34.904251>,  <35.526745, 37.420570, 35.127903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502651, 37.089817, 34.904251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590110, -0.422284, 0.688075,
		-0.805073, 0.371395, -0.462518,
		-0.060233, -0.826887, -0.559133,
		35.484581, 36.841751, 34.736511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866245, 37.155972, 35.063396>,  <35.526745, 37.420570, 35.127903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866245, 37.155972, 35.063396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067650, 36.827465, 34.956070>,  <35.188492, 36.630360, 34.891674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.067650, 36.827465, 34.956070>,  <34.866245, 37.155972, 35.063396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067650, 36.827465, 34.956070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481490, -0.524585, 0.702124,
		-0.717387, -0.224335, -0.659567,
		0.503510, -0.821270, -0.268316,
		35.218704, 36.581085, 34.875576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455929, 36.699059, 35.217484>,  <34.866245, 37.155972, 35.063396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455929, 36.699059, 35.217484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.764717, 36.453495, 35.151535>,  <34.949989, 36.306156, 35.111965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.764717, 36.453495, 35.151535>,  <34.455929, 36.699059, 35.217484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764717, 36.453495, 35.151535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465498, -0.722593, 0.511049,
		-0.432871, -0.317766, -0.843592,
		0.771968, -0.613908, -0.164870,
		34.996307, 36.269321, 35.102074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162010, 36.104492, 34.979443>,  <34.455929, 36.699059, 35.217484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162010, 36.104492, 34.979443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.513264, 35.994476, 35.136024>,  <34.724014, 35.928467, 35.229973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.513264, 35.994476, 35.136024>,  <34.162010, 36.104492, 34.979443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513264, 35.994476, 35.136024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442049, -0.779390, 0.444009,
		0.182976, -0.562941, -0.805988,
		0.878130, -0.275044, 0.391457,
		34.776703, 35.911964, 35.253460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192402, 35.384293, 34.787296>,  <34.162010, 36.104492, 34.979443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192402, 35.384293, 34.787296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.451363, 35.446648, 35.085712>,  <34.606739, 35.484062, 35.264763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.451363, 35.446648, 35.085712>,  <34.192402, 35.384293, 34.787296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451363, 35.446648, 35.085712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385354, -0.777570, 0.496878,
		0.657555, -0.609167, -0.443325,
		0.647398, 0.155888, 0.746039,
		34.645580, 35.493416, 35.309525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483280, 34.680534, 34.976280>,  <34.192402, 35.384293, 34.787296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483280, 34.680534, 34.976280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.578606, 34.887817, 35.304832>,  <34.635799, 35.012188, 35.501965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.578606, 34.887817, 35.304832>,  <34.483280, 34.680534, 34.976280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578606, 34.887817, 35.304832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314877, -0.758840, 0.570101,
		0.918728, -0.394495, -0.017668,
		0.238310, 0.518204, 0.821385,
		34.650097, 35.043278, 35.551247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882507, 34.256348, 35.455929>,  <34.483280, 34.680534, 34.976280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882507, 34.256348, 35.455929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.729733, 34.521294, 35.713737>,  <34.638069, 34.680260, 35.868423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.729733, 34.521294, 35.713737>,  <34.882507, 34.256348, 35.455929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729733, 34.521294, 35.713737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213720, -0.741784, 0.635673,
		0.899139, 0.105039, 0.424872,
		-0.381934, 0.662362, 0.644518,
		34.615154, 34.720001, 35.907093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.601345, 39.748817, 29.710119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288643, 39.852180, 29.937132>,  <35.101021, 39.914200, 30.073339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288643, 39.852180, 29.937132>,  <35.601345, 39.748817, 29.710119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288643, 39.852180, 29.937132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456125, -0.383643, 0.802974,
		0.425223, 0.886591, 0.182047,
		-0.781751, 0.258407, 0.567530,
		35.054119, 39.929703, 30.107391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952175, 40.023479, 30.240425>,  <35.601345, 39.748817, 29.710119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952175, 40.023479, 30.240425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588791, 39.978336, 30.401402>,  <35.370762, 39.951252, 30.497988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588791, 39.978336, 30.401402>,  <35.952175, 40.023479, 30.240425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588791, 39.978336, 30.401402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417967, -0.243668, 0.875174,
		-0.000706, 0.963270, 0.268533,
		-0.908462, -0.112856, 0.402443,
		35.316254, 39.944481, 30.522135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976650, 40.272701, 30.980646>,  <35.952175, 40.023479, 30.240425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976650, 40.272701, 30.980646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636238, 40.063046, 30.993513>,  <35.431992, 39.937252, 31.001234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636238, 40.063046, 30.993513>,  <35.976650, 40.272701, 30.980646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636238, 40.063046, 30.993513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302943, -0.439997, 0.845357,
		-0.428927, 0.729167, 0.533233,
		-0.851027, -0.524135, 0.032169,
		35.380928, 39.905804, 31.003164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555935, 40.394600, 31.618587>,  <35.976650, 40.272701, 30.980646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555935, 40.394600, 31.618587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446854, 40.035034, 31.481424>,  <35.381405, 39.819294, 31.399126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446854, 40.035034, 31.481424>,  <35.555935, 40.394600, 31.618587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446854, 40.035034, 31.481424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377442, -0.427800, 0.821295,
		-0.884970, 0.094542, 0.455950,
		-0.272702, -0.898915, -0.342906,
		35.365044, 39.765358, 31.378551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464016, 40.027992, 32.263317>,  <35.555935, 40.394600, 31.618587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464016, 40.027992, 32.263317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482544, 39.738132, 31.988295>,  <35.493660, 39.564217, 31.823280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482544, 39.738132, 31.988295>,  <35.464016, 40.027992, 32.263317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482544, 39.738132, 31.988295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267649, -0.654125, 0.707449,
		-0.962402, -0.216794, 0.163653,
		0.046321, -0.724652, -0.687557,
		35.496441, 39.520737, 31.782028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087936, 39.537975, 32.527176>,  <35.464016, 40.027992, 32.263317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087936, 39.537975, 32.527176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333290, 39.360775, 32.265640>,  <35.480503, 39.254456, 32.108719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333290, 39.360775, 32.265640>,  <35.087936, 39.537975, 32.527176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333290, 39.360775, 32.265640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066310, -0.796062, 0.601571,
		-0.786987, -0.412357, -0.458926,
		0.613396, -0.442997, -0.653834,
		35.517303, 39.227875, 32.069489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846119, 38.941891, 32.512089>,  <35.087936, 39.537975, 32.527176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846119, 38.941891, 32.512089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229237, 38.903984, 32.403542>,  <35.459106, 38.881241, 32.338413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229237, 38.903984, 32.403542>,  <34.846119, 38.941891, 32.512089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229237, 38.903984, 32.403542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114303, -0.740662, 0.662084,
		-0.263738, -0.665161, -0.698572,
		0.957798, -0.094767, -0.271371,
		35.516575, 38.875553, 32.322132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980103, 38.196590, 32.303497>,  <34.846119, 38.941891, 32.512089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980103, 38.196590, 32.303497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338261, 38.349369, 32.395042>,  <35.553158, 38.441036, 32.449970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338261, 38.349369, 32.395042>,  <34.980103, 38.196590, 32.303497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338261, 38.349369, 32.395042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188733, -0.791092, 0.581853,
		0.403288, -0.477796, -0.780429,
		0.895398, 0.381947, 0.228862,
		35.606880, 38.463955, 32.463699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503284, 37.765762, 32.046345>,  <34.980103, 38.196590, 32.303497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503284, 37.765762, 32.046345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654629, 37.976021, 32.351120>,  <35.745434, 38.102173, 32.533985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654629, 37.976021, 32.351120>,  <35.503284, 37.765762, 32.046345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654629, 37.976021, 32.351120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288338, -0.849101, 0.442593,
		0.879605, 0.052236, -0.472828,
		0.378359, 0.525641, 0.761935,
		35.768135, 38.133713, 32.579700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179443, 37.584927, 31.649181>,  <35.503284, 37.765762, 32.046345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179443, 37.584927, 31.649181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307560, 37.324226, 31.374189>,  <36.384430, 37.167805, 31.209194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307560, 37.324226, 31.374189>,  <36.179443, 37.584927, 31.649181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307560, 37.324226, 31.374189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400238, 0.564659, -0.721782,
		0.858615, 0.506340, -0.079998,
		0.320296, -0.651752, -0.687481,
		36.403648, 37.128700, 31.167946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549076, 37.940998, 31.112576>,  <36.179443, 37.584927, 31.649181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549076, 37.940998, 31.112576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469688, 37.601490, 30.916536>,  <36.422054, 37.397785, 30.798912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469688, 37.601490, 30.916536>,  <36.549076, 37.940998, 31.112576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469688, 37.601490, 30.916536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340184, 0.528617, -0.777714,
		0.919176, 0.012370, -0.393654,
		-0.198472, -0.848770, -0.490100,
		36.410149, 37.346859, 30.769506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738934, 38.047680, 30.396767>,  <36.549076, 37.940998, 31.112576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738934, 38.047680, 30.396767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488037, 37.737892, 30.363880>,  <36.337498, 37.552017, 30.344149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488037, 37.737892, 30.363880>,  <36.738934, 38.047680, 30.396767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488037, 37.737892, 30.363880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302067, 0.339219, -0.890891,
		0.717861, -0.533968, -0.446714,
		-0.627241, -0.774473, -0.082218,
		36.299866, 37.505550, 30.339214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861546, 37.792393, 29.769367>,  <36.738934, 38.047680, 30.396767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861546, 37.792393, 29.769367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491207, 37.670937, 29.859350>,  <36.269005, 37.598061, 29.913340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491207, 37.670937, 29.859350>,  <36.861546, 37.792393, 29.769367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491207, 37.670937, 29.859350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277762, 0.143168, -0.949922,
		0.256228, -0.941969, -0.216892,
		-0.925849, -0.303641, 0.224959,
		36.213451, 37.579845, 29.926838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623756, 37.488914, 29.139925>,  <36.861546, 37.792393, 29.769367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623756, 37.488914, 29.139925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288967, 37.556526, 29.348116>,  <36.088093, 37.597092, 29.473030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288967, 37.556526, 29.348116>,  <36.623756, 37.488914, 29.139925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288967, 37.556526, 29.348116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480227, 0.229174, -0.846676,
		-0.262394, -0.958597, -0.110641,
		-0.836977, 0.169030, 0.520478,
		36.037872, 37.607235, 29.504259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148659, 37.065865, 28.737951>,  <36.623756, 37.488914, 29.139925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148659, 37.065865, 28.737951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931271, 37.320259, 28.957098>,  <35.800838, 37.472897, 29.088587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931271, 37.320259, 28.957098>,  <36.148659, 37.065865, 28.737951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931271, 37.320259, 28.957098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531735, 0.244195, -0.810942,
		-0.649534, -0.732045, 0.205463,
		-0.543473, 0.635986, 0.547867,
		35.768230, 37.511055, 29.121458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419285, 37.040234, 28.498802>,  <36.148659, 37.065865, 28.737951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419285, 37.040234, 28.498802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425426, 37.385509, 28.700661>,  <35.429111, 37.592674, 28.821775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425426, 37.385509, 28.700661>,  <35.419285, 37.040234, 28.498802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425426, 37.385509, 28.700661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613113, 0.406814, -0.677196,
		-0.789846, -0.299007, 0.535479,
		0.015354, 0.863190, 0.504646,
		35.430031, 37.644466, 28.852055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696552, 37.274647, 28.460663>,  <35.419285, 37.040234, 28.498802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696552, 37.274647, 28.460663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908768, 37.599537, 28.557674>,  <35.036098, 37.794472, 28.615881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908768, 37.599537, 28.557674>,  <34.696552, 37.274647, 28.460663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908768, 37.599537, 28.557674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530136, 0.541194, -0.652737,
		-0.661422, 0.217731, 0.717714,
		0.530543, 0.812221, 0.242531,
		35.067932, 37.843204, 28.630434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153175, 37.863884, 28.683613>,  <34.696552, 37.274647, 28.460663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153175, 37.863884, 28.683613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497204, 38.031338, 28.566984>,  <34.703621, 38.131809, 28.497007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497204, 38.031338, 28.566984>,  <34.153175, 37.863884, 28.683613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497204, 38.031338, 28.566984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506434, 0.631588, -0.587045,
		-0.061606, 0.652564, 0.755225,
		0.860075, 0.418637, -0.291571,
		34.755226, 38.156929, 28.479513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194817, 38.647678, 28.830576>,  <34.153175, 37.863884, 28.683613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194817, 38.647678, 28.830576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455547, 38.570366, 28.537245>,  <34.611984, 38.523979, 28.361246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455547, 38.570366, 28.537245>,  <34.194817, 38.647678, 28.830576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455547, 38.570366, 28.537245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446429, 0.683886, -0.577063,
		0.613046, 0.703522, 0.359488,
		0.651825, -0.193280, -0.733326,
		34.651096, 38.512383, 28.317247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374775, 39.352947, 28.536358>,  <34.194817, 38.647678, 28.830576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374775, 39.352947, 28.536358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517208, 39.104576, 28.257029>,  <34.602669, 38.955555, 28.089430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517208, 39.104576, 28.257029>,  <34.374775, 39.352947, 28.536358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517208, 39.104576, 28.257029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388507, 0.581285, -0.714961,
		0.849863, 0.525890, -0.034248,
		0.356084, -0.620924, -0.698325,
		34.624035, 38.918297, 28.047531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713104, 39.768745, 28.017527>,  <34.374775, 39.352947, 28.536358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713104, 39.768745, 28.017527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626450, 39.422955, 27.836092>,  <34.574459, 39.215481, 27.727230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626450, 39.422955, 27.836092>,  <34.713104, 39.768745, 28.017527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626450, 39.422955, 27.836092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342456, 0.502390, -0.793932,
		0.914217, -0.016659, -0.404882,
		-0.216635, -0.864481, -0.453589,
		34.561459, 39.163609, 27.700016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914104, 39.886055, 27.419680>,  <34.713104, 39.768745, 28.017527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914104, 39.886055, 27.419680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679588, 39.570377, 27.346533>,  <34.538879, 39.380970, 27.302645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679588, 39.570377, 27.346533>,  <34.914104, 39.886055, 27.419680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679588, 39.570377, 27.346533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162028, 0.335411, -0.928034,
		0.793730, -0.514469, -0.324520,
		-0.586292, -0.789190, -0.182868,
		34.503700, 39.333622, 27.291672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090446, 39.748524, 26.771046>,  <34.914104, 39.886055, 27.419680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090446, 39.748524, 26.771046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740059, 39.567707, 26.838379>,  <34.529827, 39.459217, 26.878778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740059, 39.567707, 26.838379>,  <35.090446, 39.748524, 26.771046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740059, 39.567707, 26.838379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318854, 0.280776, -0.905261,
		0.361950, -0.846655, -0.390086,
		-0.875970, -0.452040, 0.168333,
		34.477268, 39.432095, 26.888880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.108315, 38.932976, 31.513939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.435101, 38.881969, 31.288975>,  <29.631172, 38.851368, 31.153996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.435101, 38.881969, 31.288975>,  <29.108315, 38.932976, 31.513939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435101, 38.881969, 31.288975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021411, -0.967869, 0.250542,
		-0.576288, -0.216726, -0.787986,
		0.816966, -0.127513, -0.562412,
		29.680191, 38.843716, 31.120251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020988, 38.195194, 31.252438>,  <29.108315, 38.932976, 31.513939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020988, 38.195194, 31.252438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.400610, 38.319805, 31.233490>,  <29.628384, 38.394573, 31.222122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.400610, 38.319805, 31.233490>,  <29.020988, 38.195194, 31.252438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400610, 38.319805, 31.233490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309380, -0.892669, 0.327758,
		0.059822, -0.325715, -0.943574,
		0.949055, 0.311530, -0.047368,
		29.685326, 38.413265, 31.219280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407757, 37.676285, 31.010170>,  <29.020988, 38.195194, 31.252438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407757, 37.676285, 31.010170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.715475, 37.893166, 31.145348>,  <29.900106, 38.023293, 31.226454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.715475, 37.893166, 31.145348>,  <29.407757, 37.676285, 31.010170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715475, 37.893166, 31.145348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485960, -0.839974, 0.241425,
		0.414764, -0.021500, -0.909675,
		0.769294, 0.542200, 0.337943,
		29.946264, 38.055824, 31.246731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898096, 37.171299, 30.835606>,  <29.407757, 37.676285, 31.010170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898096, 37.171299, 30.835606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.042898, 37.434597, 31.099625>,  <30.129780, 37.592575, 31.258036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.042898, 37.434597, 31.099625>,  <29.898096, 37.171299, 30.835606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042898, 37.434597, 31.099625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553646, -0.721482, 0.415859,
		0.749951, 0.214890, -0.625616,
		0.362007, 0.658244, 0.660049,
		30.151501, 37.632069, 31.297640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509602, 37.079601, 30.825640>,  <29.898096, 37.171299, 30.835606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509602, 37.079601, 30.825640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.459118, 37.268127, 31.174795>,  <30.428827, 37.381245, 31.384289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.459118, 37.268127, 31.174795>,  <30.509602, 37.079601, 30.825640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459118, 37.268127, 31.174795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452615, -0.755636, 0.473449,
		0.882729, 0.454836, -0.117957,
		-0.126209, 0.471316, 0.872887,
		30.421255, 37.409523, 31.436661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147932, 37.074329, 31.115049>,  <30.509602, 37.079601, 30.825640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147932, 37.074329, 31.115049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.882366, 37.138603, 31.407185>,  <30.723026, 37.177166, 31.582466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.882366, 37.138603, 31.407185>,  <31.147932, 37.074329, 31.115049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882366, 37.138603, 31.407185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481878, -0.654911, 0.582139,
		0.571847, 0.738426, 0.357376,
		-0.663916, 0.160683, 0.730340,
		30.683191, 37.186810, 31.626287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482304, 36.759018, 31.609690>,  <31.147932, 37.074329, 31.115049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482304, 36.759018, 31.609690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124355, 36.821373, 31.776979>,  <30.909586, 36.858784, 31.877354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.124355, 36.821373, 31.776979>,  <31.482304, 36.759018, 31.609690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124355, 36.821373, 31.776979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167838, -0.750724, 0.638940,
		0.413569, 0.641961, 0.645636,
		-0.894869, 0.155883, 0.418222,
		30.855894, 36.868137, 31.902447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665009, 36.733414, 32.271915>,  <31.482304, 36.759018, 31.609690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665009, 36.733414, 32.271915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284571, 36.636101, 32.195774>,  <31.056309, 36.577713, 32.150089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284571, 36.636101, 32.195774>,  <31.665009, 36.733414, 32.271915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284571, 36.636101, 32.195774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108463, -0.840001, 0.531633,
		-0.289235, 0.484986, 0.825307,
		-0.951094, -0.243282, -0.190355,
		30.999243, 36.563118, 32.138668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347883, 36.745125, 32.827644>,  <31.665009, 36.733414, 32.271915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347883, 36.745125, 32.827644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.091503, 36.505749, 32.635376>,  <30.937675, 36.362122, 32.520016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.091503, 36.505749, 32.635376>,  <31.347883, 36.745125, 32.827644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091503, 36.505749, 32.635376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176696, -0.724433, 0.666315,
		-0.746968, 0.342142, 0.570069,
		-0.640951, -0.598444, -0.480673,
		30.899218, 36.326214, 32.491173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754978, 36.663624, 33.260349>,  <31.347883, 36.745125, 32.827644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754978, 36.663624, 33.260349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.764246, 36.354004, 33.007271>,  <30.769806, 36.168232, 32.855423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.764246, 36.354004, 33.007271>,  <30.754978, 36.663624, 33.260349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764246, 36.354004, 33.007271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157572, -0.622132, 0.766892,
		-0.987236, -0.117464, 0.107555,
		0.023169, -0.774051, -0.632700,
		30.771196, 36.121788, 32.817459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519777, 36.118664, 33.641033>,  <30.754978, 36.663624, 33.260349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519777, 36.118664, 33.641033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.703159, 35.935158, 33.336571>,  <30.813189, 35.825054, 33.153893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.703159, 35.935158, 33.336571>,  <30.519777, 36.118664, 33.641033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703159, 35.935158, 33.336571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368748, -0.681067, 0.632593,
		-0.808606, -0.570690, -0.143072,
		0.458456, -0.458760, -0.761155,
		30.840696, 35.797531, 33.108223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262527, 35.434978, 33.615498>,  <30.519777, 36.118664, 33.641033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262527, 35.434978, 33.615498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.616730, 35.422260, 33.430084>,  <30.829252, 35.414631, 33.318836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.616730, 35.422260, 33.430084>,  <30.262527, 35.434978, 33.615498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616730, 35.422260, 33.430084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270710, -0.775522, 0.570335,
		-0.377615, -0.630520, -0.678124,
		0.885507, -0.031793, -0.463537,
		30.882381, 35.412724, 33.291023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374762, 34.704487, 33.539902>,  <30.262527, 35.434978, 33.615498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374762, 34.704487, 33.539902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.724451, 34.890907, 33.485451>,  <30.934265, 35.002758, 33.452782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.724451, 34.890907, 33.485451>,  <30.374762, 34.704487, 33.539902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724451, 34.890907, 33.485451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451323, -0.676689, 0.581721,
		0.178999, -0.569990, -0.801917,
		0.874224, 0.466051, -0.136123,
		30.986719, 35.030724, 33.444614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929499, 34.220676, 33.339611>,  <30.374762, 34.704487, 33.539902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929499, 34.220676, 33.339611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.121830, 34.543175, 33.477467>,  <31.237228, 34.736671, 33.560181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.121830, 34.543175, 33.477467>,  <30.929499, 34.220676, 33.339611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121830, 34.543175, 33.477467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545008, -0.582718, 0.602831,
		0.686856, -0.102028, -0.719597,
		0.480828, 0.806244, 0.344637,
		31.266079, 34.785049, 33.580856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310463, 34.279667, 32.602554>,  <30.929499, 34.220676, 33.339611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310463, 34.279667, 32.602554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.316240, 33.968952, 32.350716>,  <31.319708, 33.782524, 32.199612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.316240, 33.968952, 32.350716>,  <31.310463, 34.279667, 32.602554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316240, 33.968952, 32.350716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527197, 0.529111, -0.664909,
		0.849620, 0.341525, -0.401879,
		0.014445, -0.776789, -0.629595,
		31.320574, 33.735916, 32.161839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678314, 34.558704, 32.017441>,  <31.310463, 34.279667, 32.602554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678314, 34.558704, 32.017441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497070, 34.222984, 31.897259>,  <31.388323, 34.021553, 31.825151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.497070, 34.222984, 31.897259>,  <31.678314, 34.558704, 32.017441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497070, 34.222984, 31.897259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084812, 0.294919, -0.951751,
		0.887410, -0.456731, -0.062449,
		-0.453112, -0.839297, -0.300450,
		31.361137, 33.971195, 31.807123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126900, 34.268398, 31.533125>,  <31.678314, 34.558704, 32.017441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126900, 34.268398, 31.533125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.748188, 34.154552, 31.472973>,  <31.520962, 34.086246, 31.436882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.748188, 34.154552, 31.472973>,  <32.126900, 34.268398, 31.533125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748188, 34.154552, 31.472973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027528, 0.393871, -0.918754,
		0.320714, -0.873993, -0.365073,
		-0.946776, -0.284607, -0.150379,
		31.464155, 34.069168, 31.427858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157063, 34.165684, 30.787411>,  <32.126900, 34.268398, 31.533125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157063, 34.165684, 30.787411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.762062, 34.151306, 30.848806>,  <31.525063, 34.142677, 30.885643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.762062, 34.151306, 30.848806>,  <32.157063, 34.165684, 30.787411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762062, 34.151306, 30.848806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150016, 0.513444, -0.844908,
		-0.048435, -0.857370, -0.512417,
		-0.987496, -0.035947, 0.153488,
		31.465813, 34.140522, 30.894854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932297, 34.133667, 30.168547>,  <32.157063, 34.165684, 30.787411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932297, 34.133667, 30.168547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.613461, 34.256954, 30.376257>,  <31.422159, 34.330929, 30.500883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.613461, 34.256954, 30.376257>,  <31.932297, 34.133667, 30.168547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613461, 34.256954, 30.376257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175952, 0.704066, -0.687991,
		-0.577656, -0.639759, -0.506972,
		-0.797091, 0.308220, 0.519275,
		31.374332, 34.349419, 30.532040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405930, 34.232170, 29.651794>,  <31.932297, 34.133667, 30.168547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405930, 34.232170, 29.651794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.285639, 34.441433, 29.970762>,  <31.213465, 34.566990, 30.162142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.285639, 34.441433, 29.970762>,  <31.405930, 34.232170, 29.651794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285639, 34.441433, 29.970762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223706, 0.774101, -0.592219,
		-0.927103, -0.356483, -0.115759,
		-0.300725, 0.523152, 0.797418,
		31.195421, 34.598377, 30.209988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669971, 34.532848, 29.508453>,  <31.405930, 34.232170, 29.651794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669971, 34.532848, 29.508453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.830803, 34.750828, 29.802763>,  <30.927301, 34.881615, 29.979349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.830803, 34.750828, 29.802763>,  <30.669971, 34.532848, 29.508453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830803, 34.750828, 29.802763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345876, 0.834452, -0.429022,
		-0.847764, -0.081987, 0.523998,
		0.402077, 0.544948, 0.735776,
		30.951426, 34.914310, 30.023495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208155, 34.993916, 29.743378>,  <30.669971, 34.532848, 29.508453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208155, 34.993916, 29.743378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.532429, 35.189907, 29.871571>,  <30.726994, 35.307503, 29.948486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.532429, 35.189907, 29.871571>,  <30.208155, 34.993916, 29.743378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532429, 35.189907, 29.871571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441804, 0.871140, -0.214300,
		-0.384187, 0.032140, 0.922696,
		0.810684, 0.489982, 0.320481,
		30.775635, 35.336903, 29.967714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011848, 35.402325, 30.218649>,  <30.208155, 34.993916, 29.743378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011848, 35.402325, 30.218649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.350416, 35.553291, 30.068377>,  <30.553556, 35.643871, 29.978212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.350416, 35.553291, 30.068377>,  <30.011848, 35.402325, 30.218649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350416, 35.553291, 30.068377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444246, 0.889451, -0.107345,
		0.293636, 0.257753, 0.920512,
		0.846418, 0.377414, -0.375680,
		30.604342, 35.666515, 29.955673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034031, 36.123020, 30.412918>,  <30.011848, 35.402325, 30.218649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034031, 36.123020, 30.412918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.265673, 36.053482, 30.094316>,  <30.404657, 36.011761, 29.903156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.265673, 36.053482, 30.094316>,  <30.034031, 36.123020, 30.412918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265673, 36.053482, 30.094316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337682, 0.838099, -0.428440,
		0.742031, 0.517075, 0.426641,
		0.579103, -0.173847, -0.796503,
		30.439404, 36.001328, 29.855366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498600, 36.647739, 30.189922>,  <30.034031, 36.123020, 30.412918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498600, 36.647739, 30.189922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.459433, 36.437057, 29.852165>,  <30.435932, 36.310650, 29.649511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.459433, 36.437057, 29.852165>,  <30.498600, 36.647739, 30.189922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459433, 36.437057, 29.852165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251642, 0.834001, -0.491038,
		0.962855, 0.164404, -0.214202,
		-0.097916, -0.526700, -0.844393,
		30.430058, 36.279049, 29.598848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928568, 37.014927, 29.633768>,  <30.498600, 36.647739, 30.189922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928568, 37.014927, 29.633768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.642067, 36.797337, 29.458920>,  <30.470165, 36.666782, 29.354012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.642067, 36.797337, 29.458920>,  <30.928568, 37.014927, 29.633768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642067, 36.797337, 29.458920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252423, 0.785934, -0.564438,
		0.650586, -0.293942, -0.700240,
		-0.716254, -0.543972, -0.437120,
		30.427191, 36.634144, 29.327784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975176, 37.144108, 28.936958>,  <30.928568, 37.014927, 29.633768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975176, 37.144108, 28.936958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.609877, 36.997124, 29.007334>,  <30.390697, 36.908932, 29.049559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.609877, 36.997124, 29.007334>,  <30.975176, 37.144108, 28.936958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609877, 36.997124, 29.007334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398345, 0.714795, -0.574795,
		0.085453, -0.595014, -0.799160,
		-0.913247, -0.367459, 0.175940,
		30.335903, 36.886887, 29.060116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575169, 37.057011, 28.239262>,  <30.975176, 37.144108, 28.936958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575169, 37.057011, 28.239262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.291847, 37.110504, 28.516512>,  <30.121855, 37.142601, 28.682863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.291847, 37.110504, 28.516512>,  <30.575169, 37.057011, 28.239262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291847, 37.110504, 28.516512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425099, 0.703084, -0.570056,
		-0.563560, -0.698419, -0.441146,
		-0.708301, 0.133730, 0.693128,
		30.079357, 37.150623, 28.724451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443176, 36.686237, 27.577436>,  <30.575169, 37.057011, 28.239262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443176, 36.686237, 27.577436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.711981, 36.669189, 27.281712>,  <30.873264, 36.658962, 27.104277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.711981, 36.669189, 27.281712>,  <30.443176, 36.686237, 27.577436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711981, 36.669189, 27.281712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303705, -0.894663, 0.327630,
		-0.675399, -0.444704, -0.588282,
		0.672012, -0.042617, -0.739313,
		30.913584, 36.656403, 27.059917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421787, 36.037277, 27.291586>,  <30.443176, 36.686237, 27.577436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421787, 36.037277, 27.291586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.783319, 36.172035, 27.186062>,  <31.000238, 36.252892, 27.122747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.783319, 36.172035, 27.186062>,  <30.421787, 36.037277, 27.291586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783319, 36.172035, 27.186062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375534, -0.920058, 0.111660,
		-0.205103, -0.199991, -0.958090,
		0.903829, 0.336894, -0.263810,
		31.054468, 36.273102, 27.106918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658451, 35.489643, 26.927114>,  <30.421787, 36.037277, 27.291586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658451, 35.489643, 26.927114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.997858, 35.675259, 27.028849>,  <31.201502, 35.786629, 27.089890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.997858, 35.675259, 27.028849>,  <30.658451, 35.489643, 26.927114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997858, 35.675259, 27.028849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460674, -0.884269, 0.076466,
		0.260385, 0.052284, -0.964088,
		0.848516, 0.464041, 0.254337,
		31.252413, 35.814472, 27.105150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155291, 35.155121, 26.603230>,  <30.658451, 35.489643, 26.927114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155291, 35.155121, 26.603230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.353935, 35.355766, 26.886572>,  <31.473122, 35.476154, 27.056578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.353935, 35.355766, 26.886572>,  <31.155291, 35.155121, 26.603230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353935, 35.355766, 26.886572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530064, -0.821511, 0.210123,
		0.687320, 0.271124, -0.673857,
		0.496611, 0.501609, 0.708354,
		31.502918, 35.506248, 27.099077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781303, 34.931133, 26.553764>,  <31.155291, 35.155121, 26.603230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781303, 34.931133, 26.553764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.842112, 35.119656, 26.901274>,  <31.878597, 35.232769, 27.109779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.842112, 35.119656, 26.901274>,  <31.781303, 34.931133, 26.553764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842112, 35.119656, 26.901274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514450, -0.788266, 0.337608,
		0.843938, 0.395616, -0.362294,
		0.152021, 0.471302, 0.868772,
		31.887718, 35.261047, 27.161905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561600, 35.021992, 26.705381>,  <31.781303, 34.931133, 26.553764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561600, 35.021992, 26.705381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.371010, 35.005539, 27.056673>,  <32.256657, 34.995667, 27.267448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.371010, 35.005539, 27.056673>,  <32.561600, 35.021992, 26.705381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371010, 35.005539, 27.056673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548371, -0.794693, 0.260293,
		0.687215, 0.605617, 0.401204,
		-0.476471, -0.041131, 0.878227,
		32.228069, 34.993198, 27.320141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072639, 34.836483, 27.191607>,  <32.561600, 35.021992, 26.705381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072639, 34.836483, 27.191607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.748920, 34.795792, 27.423014>,  <32.554688, 34.771378, 27.561859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.748920, 34.795792, 27.423014>,  <33.072639, 34.836483, 27.191607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748920, 34.795792, 27.423014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518281, -0.587176, 0.621779,
		0.276440, 0.803042, 0.527925,
		-0.809299, -0.101729, 0.578520,
		32.506130, 34.765274, 27.596569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228428, 35.023369, 27.967478>,  <33.072639, 34.836483, 27.191607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228428, 35.023369, 27.967478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906715, 34.785767, 27.960703>,  <32.713688, 34.643204, 27.956638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906715, 34.785767, 27.960703>,  <33.228428, 35.023369, 27.967478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906715, 34.785767, 27.960703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440352, -0.614888, 0.654219,
		-0.399023, 0.518720, 0.756116,
		-0.804283, -0.594006, -0.016935,
		32.665432, 34.607563, 27.955622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283516, 34.820461, 28.597088>,  <33.228428, 35.023369, 27.967478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283516, 34.820461, 28.597088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.028027, 34.562962, 28.428509>,  <32.874733, 34.408463, 28.327360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.028027, 34.562962, 28.428509>,  <33.283516, 34.820461, 28.597088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028027, 34.562962, 28.428509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383851, -0.741306, 0.550567,
		-0.666848, 0.189888, 0.720594,
		-0.638727, -0.643746, -0.421450,
		32.836411, 34.369839, 28.302074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049648, 34.450127, 29.103731>,  <33.283516, 34.820461, 28.597088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049648, 34.450127, 29.103731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974041, 34.198650, 28.801996>,  <32.928677, 34.047764, 28.620955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.974041, 34.198650, 28.801996>,  <33.049648, 34.450127, 29.103731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974041, 34.198650, 28.801996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419889, -0.746161, 0.516659,
		-0.887675, -0.219083, 0.405013,
		-0.189014, -0.628686, -0.754339,
		32.917336, 34.010044, 28.575695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811573, 33.853386, 29.386572>,  <33.049648, 34.450127, 29.103731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811573, 33.853386, 29.386572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.928707, 33.720814, 29.027819>,  <32.998989, 33.641270, 28.812567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.928707, 33.720814, 29.027819>,  <32.811573, 33.853386, 29.386572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928707, 33.720814, 29.027819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386457, -0.816950, 0.428070,
		-0.874584, -0.471962, -0.111150,
		0.292837, -0.331429, -0.896884,
		33.016560, 33.621384, 28.758753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645874, 33.113907, 29.295441>,  <32.811573, 33.853386, 29.386572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645874, 33.113907, 29.295441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.932644, 33.194691, 29.028538>,  <33.104706, 33.243160, 28.868397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.932644, 33.194691, 29.028538>,  <32.645874, 33.113907, 29.295441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932644, 33.194691, 29.028538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532394, -0.776525, 0.336995,
		-0.450083, -0.596843, -0.664231,
		0.716926, 0.201957, -0.667256,
		33.147720, 33.255280, 28.828362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738277, 32.555817, 28.927881>,  <32.645874, 33.113907, 29.295441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738277, 32.555817, 28.927881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.082806, 32.754868, 28.886927>,  <33.289524, 32.874298, 28.862354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.082806, 32.754868, 28.886927>,  <32.738277, 32.555817, 28.927881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082806, 32.754868, 28.886927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507668, -0.850880, 0.135187,
		-0.019846, -0.168419, -0.985516,
		0.861324, 0.497632, -0.102388,
		33.341202, 32.904156, 28.856211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197861, 32.037460, 28.518133>,  <32.738277, 32.555817, 28.927881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197861, 32.037460, 28.518133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.413982, 32.314503, 28.709284>,  <33.543655, 32.480728, 28.823975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.413982, 32.314503, 28.709284>,  <33.197861, 32.037460, 28.518133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413982, 32.314503, 28.709284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620453, -0.711541, 0.329768,
		0.568431, 0.118328, -0.814177,
		0.540300, 0.692609, 0.477879,
		33.576073, 32.522285, 28.852648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.881664, 39.283478, 26.190374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527000, 39.350861, 26.362637>,  <34.314201, 39.391293, 26.465994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527000, 39.350861, 26.362637>,  <34.881664, 39.283478, 26.190374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527000, 39.350861, 26.362637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431181, 0.035361, -0.901572,
		-0.167110, -0.985073, 0.041286,
		-0.886655, 0.168463, 0.430654,
		34.261005, 39.401398, 26.491833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341705, 38.831486, 25.939461>,  <34.881664, 39.283478, 26.190374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341705, 38.831486, 25.939461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140636, 39.148273, 26.078085>,  <34.019997, 39.338345, 26.161261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.140636, 39.148273, 26.078085>,  <34.341705, 38.831486, 25.939461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140636, 39.148273, 26.078085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488467, 0.070552, -0.869726,
		-0.713246, -0.606472, 0.351386,
		-0.502673, 0.791968, 0.346563,
		33.989834, 39.385864, 26.182055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661217, 38.742382, 25.640656>,  <34.341705, 38.831486, 25.939461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661217, 38.742382, 25.640656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654102, 39.124882, 25.757463>,  <33.649834, 39.354382, 25.827547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654102, 39.124882, 25.757463>,  <33.661217, 38.742382, 25.640656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654102, 39.124882, 25.757463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500874, 0.244251, -0.830341,
		-0.865337, -0.161037, 0.474614,
		-0.017790, 0.956247, 0.292019,
		33.648766, 39.411755, 25.845070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987217, 38.946995, 25.606569>,  <33.661217, 38.742382, 25.640656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987217, 38.946995, 25.606569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181492, 39.296646, 25.606524>,  <33.298058, 39.506439, 25.606497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181492, 39.296646, 25.606524>,  <32.987217, 38.946995, 25.606569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181492, 39.296646, 25.606524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500064, 0.277743, -0.820241,
		-0.716967, 0.398438, 0.572019,
		0.485689, 0.874132, -0.000112,
		33.327198, 39.558887, 25.606489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445457, 39.392513, 25.400034>,  <32.987217, 38.946995, 25.606569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445457, 39.392513, 25.400034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781986, 39.590557, 25.313271>,  <32.983902, 39.709381, 25.261213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781986, 39.590557, 25.313271>,  <32.445457, 39.392513, 25.400034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781986, 39.590557, 25.313271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414858, 0.334199, -0.846288,
		-0.346512, 0.801986, 0.486568,
		0.841322, 0.495105, -0.216907,
		33.034382, 39.739090, 25.248199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311050, 40.169731, 25.426691>,  <32.445457, 39.392513, 25.400034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311050, 40.169731, 25.426691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615490, 40.092831, 25.178894>,  <32.798153, 40.046688, 25.030216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.615490, 40.092831, 25.178894>,  <32.311050, 40.169731, 25.426691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615490, 40.092831, 25.178894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488798, 0.457829, -0.742610,
		0.426391, 0.868004, 0.254479,
		0.761096, -0.192254, -0.619493,
		32.843819, 40.035156, 24.993046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420128, 40.783142, 25.120161>,  <32.311050, 40.169731, 25.426691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420128, 40.783142, 25.120161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594242, 40.520470, 24.873814>,  <32.698711, 40.362865, 24.726006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594242, 40.520470, 24.873814>,  <32.420128, 40.783142, 25.120161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594242, 40.520470, 24.873814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479711, 0.409699, -0.775902,
		0.761842, 0.633178, -0.136682,
		0.435285, -0.656683, -0.615868,
		32.724827, 40.323463, 24.689053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784981, 41.135151, 24.603790>,  <32.420128, 40.783142, 25.120161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784981, 41.135151, 24.603790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.696358, 40.782616, 24.436859>,  <32.643185, 40.571095, 24.336700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.696358, 40.782616, 24.436859>,  <32.784981, 41.135151, 24.603790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696358, 40.782616, 24.436859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465890, 0.471630, -0.748673,
		0.856656, 0.028555, -0.515098,
		-0.221557, -0.881334, -0.417328,
		32.629890, 40.518215, 24.311661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878326, 41.310192, 23.934963>,  <32.784981, 41.135151, 24.603790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878326, 41.310192, 23.934963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.703995, 40.950760, 23.914532>,  <32.599396, 40.735100, 23.902273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.703995, 40.950760, 23.914532>,  <32.878326, 41.310192, 23.934963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703995, 40.950760, 23.914532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479305, 0.279760, -0.831866,
		0.761786, -0.338071, -0.552621,
		-0.435831, -0.898578, -0.051078,
		32.573246, 40.681187, 23.899208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006355, 41.029732, 23.242979>,  <32.878326, 41.310192, 23.934963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006355, 41.029732, 23.242979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674789, 40.881836, 23.410879>,  <32.475849, 40.793098, 23.511620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.674789, 40.881836, 23.410879>,  <33.006355, 41.029732, 23.242979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674789, 40.881836, 23.410879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530611, 0.282215, -0.799254,
		0.177055, -0.885239, -0.430120,
		-0.828917, -0.369739, 0.419750,
		32.426113, 40.770912, 23.536804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491581, 40.911369, 22.682873>,  <33.006355, 41.029732, 23.242979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491581, 40.911369, 22.682873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.256401, 40.857407, 23.001902>,  <32.115295, 40.825027, 23.193319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.256401, 40.857407, 23.001902>,  <32.491581, 40.911369, 22.682873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256401, 40.857407, 23.001902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789733, 0.309105, -0.529882,
		-0.175047, -0.941410, -0.288280,
		-0.587945, -0.134911, 0.797571,
		32.080017, 40.816933, 23.241173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975975, 40.511398, 22.446651>,  <32.491581, 40.911369, 22.682873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975975, 40.511398, 22.446651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856377, 40.731255, 22.758677>,  <31.784616, 40.863167, 22.945892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856377, 40.731255, 22.758677>,  <31.975975, 40.511398, 22.446651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856377, 40.731255, 22.758677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657896, 0.473390, -0.585726,
		-0.691212, -0.688330, 0.220063,
		-0.298997, 0.549639, 0.780062,
		31.766678, 40.896145, 22.992695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172216, 40.400036, 22.450998>,  <31.975975, 40.511398, 22.446651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172216, 40.400036, 22.450998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277140, 40.732510, 22.647089>,  <31.340094, 40.931995, 22.764744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277140, 40.732510, 22.647089>,  <31.172216, 40.400036, 22.450998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277140, 40.732510, 22.647089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905777, 0.387285, -0.171987,
		-0.332811, -0.398922, 0.854458,
		0.262309, 0.831187, 0.490227,
		31.355833, 40.981865, 22.794157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838402, 40.562847, 23.039486>,  <31.172216, 40.400036, 22.450998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838402, 40.562847, 23.039486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.920647, 40.914497, 22.867502>,  <30.969994, 41.125488, 22.764313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.920647, 40.914497, 22.867502>,  <30.838402, 40.562847, 23.039486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920647, 40.914497, 22.867502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972362, 0.233181, 0.011779,
		0.110613, 0.415654, 0.902772,
		0.205613, 0.879124, -0.429959,
		30.982330, 41.178234, 22.738514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631580, 41.136738, 23.515167>,  <30.838402, 40.562847, 23.039486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631580, 41.136738, 23.515167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.258530, 40.992748, 23.505199>,  <30.034698, 40.906353, 23.499220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.258530, 40.992748, 23.505199>,  <30.631580, 41.136738, 23.515167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258530, 40.992748, 23.505199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290094, -0.789059, 0.541508,
		-0.214593, 0.497797, 0.840326,
		-0.932628, -0.359978, -0.024919,
		29.978741, 40.884754, 23.497725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533945, 40.884434, 24.165054>,  <30.631580, 41.136738, 23.515167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533945, 40.884434, 24.165054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233475, 40.712643, 23.964542>,  <30.053192, 40.609570, 23.844234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.233475, 40.712643, 23.964542>,  <30.533945, 40.884434, 24.165054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233475, 40.712643, 23.964542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068174, -0.805813, 0.588232,
		-0.656571, 0.407692, 0.634588,
		-0.751177, -0.429478, -0.501280,
		30.008121, 40.583797, 23.814157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008070, 40.755795, 24.610388>,  <30.533945, 40.884434, 24.165054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008070, 40.755795, 24.610388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970449, 40.498871, 24.306126>,  <29.947876, 40.344719, 24.123568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970449, 40.498871, 24.306126>,  <30.008070, 40.755795, 24.610388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970449, 40.498871, 24.306126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015048, -0.764872, 0.644006,
		-0.995453, 0.049125, 0.081605,
		-0.094054, -0.642306, -0.760655,
		29.942234, 40.306179, 24.077929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433376, 40.382656, 24.852613>,  <30.008070, 40.755795, 24.610388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433376, 40.382656, 24.852613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.630369, 40.169937, 24.577032>,  <29.748566, 40.042305, 24.411684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.630369, 40.169937, 24.577032>,  <29.433376, 40.382656, 24.852613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630369, 40.169937, 24.577032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063647, -0.767481, 0.637904,
		-0.867992, -0.358006, -0.344124,
		0.492482, -0.531793, -0.688954,
		29.778114, 40.010399, 24.370346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127832, 39.709778, 24.878649>,  <29.433376, 40.382656, 24.852613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127832, 39.709778, 24.878649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.486780, 39.657394, 24.710089>,  <29.702148, 39.625965, 24.608953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.486780, 39.657394, 24.710089>,  <29.127832, 39.709778, 24.878649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486780, 39.657394, 24.710089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219710, -0.695573, 0.684036,
		-0.382696, -0.706419, -0.595412,
		0.897369, -0.130960, -0.421401,
		29.755991, 39.618107, 24.583668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125074, 38.998299, 24.844217>,  <29.127832, 39.709778, 24.878649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125074, 38.998299, 24.844217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.502790, 39.117687, 24.788752>,  <29.729420, 39.189320, 24.755472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.502790, 39.117687, 24.788752>,  <29.125074, 38.998299, 24.844217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502790, 39.117687, 24.788752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312674, -0.682112, 0.661029,
		0.102717, -0.667560, -0.737437,
		0.944290, 0.298476, -0.138664,
		29.786077, 39.207230, 24.747152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531019, 38.431351, 24.658113>,  <29.125074, 38.998299, 24.844217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531019, 38.431351, 24.658113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.807796, 38.682934, 24.799889>,  <29.973864, 38.833885, 24.884953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.807796, 38.682934, 24.799889>,  <29.531019, 38.431351, 24.658113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807796, 38.682934, 24.799889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366242, -0.728885, 0.578440,
		0.622158, -0.270438, -0.734699,
		0.691943, 0.628959, 0.354436,
		30.015379, 38.871620, 24.906219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199120, 38.041988, 24.686853>,  <29.531019, 38.431351, 24.658113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199120, 38.041988, 24.686853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.285931, 38.344589, 24.933624>,  <30.338018, 38.526150, 25.081686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.285931, 38.344589, 24.933624>,  <30.199120, 38.041988, 24.686853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285931, 38.344589, 24.933624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465518, -0.635705, 0.615770,
		0.858016, 0.153550, -0.490133,
		0.217029, 0.756506, 0.616926,
		30.351040, 38.571541, 25.118702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941708, 38.139542, 24.792866>,  <30.199120, 38.041988, 24.686853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941708, 38.139542, 24.792866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.773935, 38.305145, 25.116018>,  <30.673271, 38.404507, 25.309910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.773935, 38.305145, 25.116018>,  <30.941708, 38.139542, 24.792866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773935, 38.305145, 25.116018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547033, -0.594948, 0.588891,
		0.724453, 0.688938, 0.023064,
		-0.419431, 0.414007, 0.807884,
		30.648106, 38.429348, 25.358383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373039, 38.063820, 25.287148>,  <30.941708, 38.139542, 24.792866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373039, 38.063820, 25.287148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.055429, 38.139156, 25.518335>,  <30.864862, 38.184357, 25.657049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.055429, 38.139156, 25.518335>,  <31.373039, 38.063820, 25.287148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055429, 38.139156, 25.518335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297854, -0.708291, 0.640005,
		0.529910, 0.680332, 0.506304,
		-0.794026, 0.188340, 0.577970,
		30.817221, 38.195660, 25.691727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599501, 37.959488, 25.900448>,  <31.373039, 38.063820, 25.287148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599501, 37.959488, 25.900448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206228, 37.926254, 25.965504>,  <30.970264, 37.906315, 26.004538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206228, 37.926254, 25.965504>,  <31.599501, 37.959488, 25.900448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206228, 37.926254, 25.965504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172880, -0.710518, 0.682112,
		0.058882, 0.698756, 0.712932,
		-0.983181, -0.083088, 0.162638,
		30.911274, 37.901329, 26.014296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560688, 37.971176, 26.504324>,  <31.599501, 37.959488, 25.900448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560688, 37.971176, 26.504324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226429, 37.779751, 26.396494>,  <31.025873, 37.664894, 26.331797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.226429, 37.779751, 26.396494>,  <31.560688, 37.971176, 26.504324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226429, 37.779751, 26.396494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164126, -0.685922, 0.708924,
		-0.524173, 0.548167, 0.651734,
		-0.835647, -0.478565, -0.269573,
		30.975735, 37.636181, 26.315622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165411, 37.782448, 27.164286>,  <31.560688, 37.971176, 26.504324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165411, 37.782448, 27.164286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066259, 37.542072, 26.860331>,  <31.006769, 37.397846, 26.677958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066259, 37.542072, 26.860331>,  <31.165411, 37.782448, 27.164286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066259, 37.542072, 26.860331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092240, -0.795442, 0.598968,
		-0.964390, 0.078380, 0.252604,
		-0.247879, -0.600939, -0.759887,
		30.991896, 37.361790, 26.632364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766977, 37.369381, 27.476458>,  <31.165411, 37.782448, 27.164286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766977, 37.369381, 27.476458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859459, 37.195095, 27.128504>,  <30.914948, 37.090523, 26.919731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859459, 37.195095, 27.128504>,  <30.766977, 37.369381, 27.476458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859459, 37.195095, 27.128504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004160, -0.894545, 0.446958,
		-0.972896, -0.099720, -0.208636,
		0.231205, -0.435712, -0.869885,
		30.928820, 37.064381, 26.867538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007534, 37.250366, 27.781687>,  <30.766977, 37.369381, 27.476458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007534, 37.250366, 27.781687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874371, 37.305634, 28.154799>,  <29.794472, 37.338795, 28.378666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874371, 37.305634, 28.154799>,  <30.007534, 37.250366, 27.781687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874371, 37.305634, 28.154799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590142, 0.741005, -0.320382,
		-0.735461, -0.657132, -0.165151,
		-0.332910, 0.138166, 0.932781,
		29.774498, 37.347084, 28.434633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334997, 37.094238, 27.812773>,  <30.007534, 37.250366, 27.781687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334997, 37.094238, 27.812773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.411549, 37.363361, 28.098625>,  <29.457479, 37.524837, 28.270136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.411549, 37.363361, 28.098625>,  <29.334997, 37.094238, 27.812773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411549, 37.363361, 28.098625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604140, 0.654572, -0.454477,
		-0.773556, -0.344760, 0.531744,
		0.191380, 0.672812, 0.714632,
		29.468962, 37.565205, 28.313015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701132, 37.320915, 27.995092>,  <29.334997, 37.094238, 27.812773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701132, 37.320915, 27.995092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.952745, 37.605991, 28.119280>,  <29.103714, 37.777039, 28.193792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.952745, 37.605991, 28.119280>,  <28.701132, 37.320915, 27.995092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952745, 37.605991, 28.119280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590315, 0.697779, -0.405751,
		-0.505812, 0.071958, 0.859637,
		0.629034, 0.712690, 0.310467,
		29.141455, 37.819798, 28.212420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269768, 37.804199, 28.168303>,  <28.701132, 37.320915, 27.995092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269768, 37.804199, 28.168303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.617563, 37.994717, 28.115946>,  <28.826241, 38.109028, 28.084532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.617563, 37.994717, 28.115946>,  <28.269768, 37.804199, 28.168303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617563, 37.994717, 28.115946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491877, 0.810615, -0.317742,
		-0.045237, 0.340656, 0.939099,
		0.869489, 0.476295, -0.130891,
		28.878410, 38.137604, 28.076679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075232, 38.468800, 28.487829>,  <28.269768, 37.804199, 28.168303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075232, 38.468800, 28.487829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.412355, 38.516888, 28.277985>,  <28.614630, 38.545742, 28.152079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.412355, 38.516888, 28.277985>,  <28.075232, 38.468800, 28.487829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412355, 38.516888, 28.277985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394291, 0.801385, -0.449796,
		0.366340, 0.585942, 0.722819,
		0.842810, 0.120223, -0.524611,
		28.665199, 38.552956, 28.120602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164171, 39.167530, 28.560923>,  <28.075232, 38.468800, 28.487829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164171, 39.167530, 28.560923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.382963, 39.058121, 28.244442>,  <28.514238, 38.992477, 28.054554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.382963, 39.058121, 28.244442>,  <28.164171, 39.167530, 28.560923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382963, 39.058121, 28.244442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443558, 0.706858, -0.551006,
		0.709979, 0.652333, 0.265315,
		0.546979, -0.273521, -0.791202,
		28.547056, 38.976063, 28.007082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655777, 39.759525, 28.349539>,  <28.164171, 39.167530, 28.560923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655777, 39.759525, 28.349539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.569872, 39.519203, 28.041536>,  <28.518330, 39.375008, 27.856735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.569872, 39.519203, 28.041536>,  <28.655777, 39.759525, 28.349539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569872, 39.519203, 28.041536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208786, 0.798418, -0.564745,
		0.954089, 0.039481, -0.296910,
		-0.214761, -0.600808, -0.770005,
		28.505444, 39.338963, 27.810535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207758, 40.118008, 28.490915>,  <28.655777, 39.759525, 28.349539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207758, 40.118008, 28.490915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.324219, 40.419418, 28.726690>,  <29.394094, 40.600266, 28.868155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.324219, 40.419418, 28.726690>,  <29.207758, 40.118008, 28.490915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324219, 40.419418, 28.726690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297166, -0.656884, 0.692962,
		0.909353, -0.026597, -0.415174,
		0.291152, 0.753523, 0.589436,
		29.411564, 40.645473, 28.903521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824999, 39.994724, 28.707752>,  <29.207758, 40.118008, 28.490915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824999, 39.994724, 28.707752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.654091, 40.209263, 28.998894>,  <29.551546, 40.337986, 29.173578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.654091, 40.209263, 28.998894>,  <29.824999, 39.994724, 28.707752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654091, 40.209263, 28.998894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416036, -0.598109, 0.684967,
		0.802718, 0.595478, 0.032412,
		-0.427268, 0.536351, 0.727853,
		29.525911, 40.370167, 29.217249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319580, 40.056900, 29.214897>,  <29.824999, 39.994724, 28.707752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319580, 40.056900, 29.214897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.973755, 40.140480, 29.397707>,  <29.766260, 40.190628, 29.507393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.973755, 40.140480, 29.397707>,  <30.319580, 40.056900, 29.214897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973755, 40.140480, 29.397707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286596, -0.542034, 0.789976,
		0.412790, 0.813965, 0.408736,
		-0.864562, 0.208952, 0.457026,
		29.714386, 40.203167, 29.534815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545073, 40.337673, 29.909964>,  <30.319580, 40.056900, 29.214897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545073, 40.337673, 29.909964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.168884, 40.203278, 29.930466>,  <29.943171, 40.122639, 29.942766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.168884, 40.203278, 29.930466>,  <30.545073, 40.337673, 29.909964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168884, 40.203278, 29.930466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237260, -0.541036, 0.806838,
		-0.243359, 0.770968, 0.588545,
		-0.940470, -0.335989, 0.051253,
		29.886744, 40.102482, 29.945841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410536, 40.302177, 30.588621>,  <30.545073, 40.337673, 29.909964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410536, 40.302177, 30.588621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.135790, 40.053783, 30.437574>,  <29.970943, 39.904747, 30.346947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.135790, 40.053783, 30.437574>,  <30.410536, 40.302177, 30.588621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135790, 40.053783, 30.437574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066096, -0.570792, 0.818430,
		-0.723774, 0.537191, 0.433101,
		-0.686864, -0.620985, -0.377618,
		29.929731, 39.867489, 30.324289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034451, 40.147961, 31.152721>,  <30.410536, 40.302177, 30.588621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034451, 40.147961, 31.152721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.948509, 39.863506, 30.884953>,  <29.896944, 39.692833, 30.724291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.948509, 39.863506, 30.884953>,  <30.034451, 40.147961, 31.152721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948509, 39.863506, 30.884953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028129, -0.689651, 0.723596,
		-0.976241, 0.136638, 0.168178,
		-0.214855, -0.711134, -0.669422,
		29.884052, 39.650166, 30.684126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547998, 39.688652, 31.511730>,  <30.034451, 40.147961, 31.152721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547998, 39.688652, 31.511730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690708, 39.456173, 31.219175>,  <29.776333, 39.316685, 31.043642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690708, 39.456173, 31.219175>,  <29.547998, 39.688652, 31.511730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690708, 39.456173, 31.219175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127360, -0.745339, 0.654408,
		-0.925469, -0.326624, -0.191895,
		0.356772, -0.581194, -0.731387,
		29.797739, 39.281815, 30.999760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.998268, 43.349159, 25.895739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.031939, 43.039421, 25.644880>,  <31.052141, 42.853580, 25.494366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.031939, 43.039421, 25.644880>,  <30.998268, 43.349159, 25.895739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031939, 43.039421, 25.644880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071232, -0.623092, 0.778898,
		-0.993902, -0.110236, 0.002710,
		0.084174, -0.774342, -0.627144,
		31.057190, 42.807117, 25.456738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597912, 42.829674, 26.193535>,  <30.998268, 43.349159, 25.895739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597912, 42.829674, 26.193535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.857721, 42.647354, 25.950106>,  <31.013607, 42.537960, 25.804049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.857721, 42.647354, 25.950106>,  <30.597912, 42.829674, 26.193535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857721, 42.647354, 25.950106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199918, -0.669855, 0.715071,
		-0.733590, -0.586119, -0.343961,
		0.649521, -0.455805, -0.608575,
		31.052578, 42.510612, 25.767534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450672, 42.128578, 26.339039>,  <30.597912, 42.829674, 26.193535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450672, 42.128578, 26.339039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.817263, 42.135235, 26.179142>,  <31.037216, 42.139229, 26.083204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.817263, 42.135235, 26.179142>,  <30.450672, 42.128578, 26.339039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817263, 42.135235, 26.179142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325010, -0.613631, 0.719601,
		-0.233320, -0.789418, -0.567787,
		0.916477, 0.016639, -0.399741,
		31.092205, 42.140228, 26.059219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587408, 41.412968, 26.300350>,  <30.450672, 42.128578, 26.339039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587408, 41.412968, 26.300350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.939844, 41.602009, 26.293083>,  <31.151306, 41.715431, 26.288723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.939844, 41.602009, 26.293083>,  <30.587408, 41.412968, 26.300350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939844, 41.602009, 26.293083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301841, -0.532335, 0.790893,
		0.364103, -0.702332, -0.611685,
		0.881091, 0.472598, -0.018168,
		31.204172, 41.743790, 26.287632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103701, 40.928402, 26.360901>,  <30.587408, 41.412968, 26.300350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103701, 40.928402, 26.360901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.274147, 41.272518, 26.472853>,  <31.376415, 41.478989, 26.540024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.274147, 41.272518, 26.472853>,  <31.103701, 40.928402, 26.360901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274147, 41.272518, 26.472853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582845, -0.497672, 0.642350,
		0.691893, -0.110589, -0.713480,
		0.426116, 0.860286, 0.279880,
		31.401981, 41.530605, 26.556816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813692, 40.830074, 26.334799>,  <31.103701, 40.928402, 26.360901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813692, 40.830074, 26.334799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.831709, 41.156666, 26.565046>,  <31.842518, 41.352619, 26.703194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.831709, 41.156666, 26.565046>,  <31.813692, 40.830074, 26.334799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831709, 41.156666, 26.565046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736041, -0.416706, 0.533480,
		0.675437, 0.399649, -0.619730,
		0.045040, 0.816478, 0.575617,
		31.845221, 41.401608, 26.737732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553059, 41.016506, 26.446526>,  <31.813692, 40.830074, 26.334799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553059, 41.016506, 26.446526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.336830, 41.166012, 26.748013>,  <32.207092, 41.255714, 26.928905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.336830, 41.166012, 26.748013>,  <32.553059, 41.016506, 26.446526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336830, 41.166012, 26.748013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726805, -0.243747, 0.642139,
		0.423721, 0.894925, -0.139888,
		-0.540569, 0.373760, 0.753717,
		32.174660, 41.278141, 26.974127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008209, 41.450420, 26.761475>,  <32.553059, 41.016506, 26.446526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008209, 41.450420, 26.761475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.743660, 41.384888, 27.054253>,  <32.584930, 41.345570, 27.229919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.743660, 41.384888, 27.054253>,  <33.008209, 41.450420, 26.761475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743660, 41.384888, 27.054253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749967, -0.129462, 0.648683,
		-0.011514, 0.977957, 0.208490,
		-0.661375, -0.163830, 0.731944,
		32.545246, 41.335739, 27.273836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209625, 41.817509, 27.310760>,  <33.008209, 41.450420, 26.761475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209625, 41.817509, 27.310760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970875, 41.559242, 27.501276>,  <32.827625, 41.404282, 27.615585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.970875, 41.559242, 27.501276>,  <33.209625, 41.817509, 27.310760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970875, 41.559242, 27.501276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705598, -0.139840, 0.694677,
		-0.381925, 0.750706, 0.539049,
		-0.596879, -0.645666, 0.476289,
		32.791813, 41.365543, 27.644163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171486, 42.037964, 28.020725>,  <33.209625, 41.817509, 27.310760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171486, 42.037964, 28.020725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.076031, 41.650200, 28.043690>,  <33.018757, 41.417542, 28.057468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.076031, 41.650200, 28.043690>,  <33.171486, 42.037964, 28.020725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076031, 41.650200, 28.043690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761949, -0.150262, 0.629965,
		-0.602068, 0.194078, 0.774499,
		-0.238640, -0.969410, 0.057410,
		33.004440, 41.359379, 28.060913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009418, 41.873035, 28.696411>,  <33.171486, 42.037964, 28.020725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009418, 41.873035, 28.696411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.095200, 41.511745, 28.547710>,  <33.146667, 41.294971, 28.458490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.095200, 41.511745, 28.547710>,  <33.009418, 41.873035, 28.696411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095200, 41.511745, 28.547710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556063, -0.200003, 0.806717,
		-0.802996, -0.379721, 0.459357,
		0.214455, -0.903222, -0.371751,
		33.159534, 41.240780, 28.436186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983128, 41.519413, 29.260015>,  <33.009418, 41.873035, 28.696411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983128, 41.519413, 29.260015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.172333, 41.307571, 28.978371>,  <33.285858, 41.180466, 28.809383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.172333, 41.307571, 28.978371>,  <32.983128, 41.519413, 29.260015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172333, 41.307571, 28.978371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731636, -0.209148, 0.648819,
		-0.490881, -0.822056, 0.288548,
		0.473016, -0.529605, -0.704112,
		33.314240, 41.148689, 28.767138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411228, 41.898605, 29.590197>,  <32.983128, 41.519413, 29.260015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411228, 41.898605, 29.590197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.433777, 42.184887, 29.868649>,  <32.447308, 42.356655, 30.035719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.433777, 42.184887, 29.868649>,  <32.411228, 41.898605, 29.590197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433777, 42.184887, 29.868649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499394, 0.623963, -0.601063,
		-0.864539, -0.313756, 0.392593,
		0.056376, 0.715701, 0.696128,
		32.450691, 42.399597, 30.077486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844496, 42.168133, 29.422091>,  <32.411228, 41.898605, 29.590197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844496, 42.168133, 29.422091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.020504, 42.446564, 29.649019>,  <32.126110, 42.613625, 29.785175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.020504, 42.446564, 29.649019>,  <31.844496, 42.168133, 29.422091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020504, 42.446564, 29.649019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429200, 0.717960, -0.548015,
		-0.788776, -0.002355, 0.614676,
		0.440022, 0.696080, 0.567321,
		32.152512, 42.655388, 29.819216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313204, 42.567642, 29.551159>,  <31.844496, 42.168133, 29.422091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313204, 42.567642, 29.551159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.654467, 42.774139, 29.581125>,  <31.859224, 42.898037, 29.599106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.654467, 42.774139, 29.581125>,  <31.313204, 42.567642, 29.551159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654467, 42.774139, 29.581125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321792, 0.633866, -0.703324,
		-0.410574, 0.575939, 0.706911,
		0.853158, 0.516245, 0.074917,
		31.910414, 42.929012, 29.603600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058418, 43.314922, 29.556868>,  <31.313204, 42.567642, 29.551159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058418, 43.314922, 29.556868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.439222, 43.313015, 29.434456>,  <31.667706, 43.311871, 29.361010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.439222, 43.313015, 29.434456>,  <31.058418, 43.314922, 29.556868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439222, 43.313015, 29.434456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158788, 0.847089, -0.507175,
		0.261654, 0.531430, 0.805680,
		0.952010, -0.004772, -0.306029,
		31.724825, 43.311584, 29.342648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211998, 43.974472, 29.443022>,  <31.058418, 43.314922, 29.556868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211998, 43.974472, 29.443022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.534649, 43.822048, 29.262291>,  <31.728239, 43.730595, 29.153852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.534649, 43.822048, 29.262291>,  <31.211998, 43.974472, 29.443022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534649, 43.822048, 29.262291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008515, 0.771848, -0.635750,
		0.590997, 0.508967, 0.625840,
		0.806629, -0.381055, -0.451826,
		31.776638, 43.707733, 29.126743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656195, 44.590645, 29.378586>,  <31.211998, 43.974472, 29.443022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656195, 44.590645, 29.378586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.785442, 44.309895, 29.124666>,  <31.862991, 44.141445, 28.972315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.785442, 44.309895, 29.124666>,  <31.656195, 44.590645, 29.378586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785442, 44.309895, 29.124666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139591, 0.698792, -0.701573,
		0.936006, 0.138081, 0.323769,
		0.323121, -0.701871, -0.634799,
		31.882380, 44.099335, 28.934227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900862, 45.029922, 28.823345>,  <31.656195, 44.590645, 29.378586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900862, 45.029922, 28.823345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.887184, 44.681862, 28.626707>,  <31.878977, 44.473026, 28.508724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.887184, 44.681862, 28.626707>,  <31.900862, 45.029922, 28.823345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887184, 44.681862, 28.626707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095600, 0.492475, -0.865060,
		0.994832, 0.017416, -0.100026,
		-0.034194, -0.870152, -0.491595,
		31.876926, 44.420815, 28.479229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449093, 45.116138, 28.209370>,  <31.900862, 45.029922, 28.823345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449093, 45.116138, 28.209370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200947, 44.811829, 28.133091>,  <32.052059, 44.629242, 28.087324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200947, 44.811829, 28.133091>,  <32.449093, 45.116138, 28.209370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200947, 44.811829, 28.133091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047505, 0.279140, -0.959075,
		0.782875, -0.585916, -0.209309,
		-0.620363, -0.760779, -0.190698,
		32.014839, 44.583595, 28.075882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573265, 44.854259, 27.573648>,  <32.449093, 45.116138, 28.209370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573265, 44.854259, 27.573648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.204651, 44.714245, 27.640881>,  <31.983482, 44.630234, 27.681219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.204651, 44.714245, 27.640881>,  <32.573265, 44.854259, 27.573648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204651, 44.714245, 27.640881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219312, 0.111988, -0.969206,
		0.320439, -0.930016, -0.179969,
		-0.921532, -0.350041, 0.168078,
		31.928192, 44.609234, 27.691303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450047, 44.478508, 26.976707>,  <32.573265, 44.854259, 27.573648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450047, 44.478508, 26.976707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094540, 44.546211, 27.147089>,  <31.881235, 44.586834, 27.249319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.094540, 44.546211, 27.147089>,  <32.450047, 44.478508, 26.976707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094540, 44.546211, 27.147089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412417, 0.110183, -0.904307,
		-0.199998, -0.979393, -0.028121,
		-0.888770, 0.169262, 0.425955,
		31.827908, 44.596989, 27.274876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961441, 43.946960, 26.732952>,  <32.450047, 44.478508, 26.976707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961441, 43.946960, 26.732952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.751745, 44.270500, 26.839489>,  <31.625929, 44.464622, 26.903412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.751745, 44.270500, 26.839489>,  <31.961441, 43.946960, 26.732952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751745, 44.270500, 26.839489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391996, 0.048448, -0.918691,
		-0.755985, -0.586018, 0.291666,
		-0.524238, 0.808849, 0.266343,
		31.594473, 44.513153, 26.919392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255529, 43.781693, 26.546604>,  <31.961441, 43.946960, 26.732952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255529, 43.781693, 26.546604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.281448, 44.179535, 26.578983>,  <31.296999, 44.418240, 26.598412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.281448, 44.179535, 26.578983>,  <31.255529, 43.781693, 26.546604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281448, 44.179535, 26.578983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471121, 0.102001, -0.876151,
		-0.879685, 0.018634, 0.475191,
		0.064797, 0.994610, 0.080950,
		31.300888, 44.477917, 26.603268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551065, 44.087433, 26.450199>,  <31.255529, 43.781693, 26.546604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551065, 44.087433, 26.450199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.822283, 44.370899, 26.372179>,  <30.985014, 44.540981, 26.325367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.822283, 44.370899, 26.372179>,  <30.551065, 44.087433, 26.450199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822283, 44.370899, 26.372179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513529, 0.266883, -0.815513,
		-0.525873, 0.653118, 0.544881,
		0.678045, 0.708668, -0.195049,
		31.025696, 44.583500, 26.313663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371710, 43.463352, 26.860209>,  <30.551065, 44.087433, 26.450199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371710, 43.463352, 26.860209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978407, 43.415710, 26.915369>,  <29.742424, 43.387123, 26.948465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.978407, 43.415710, 26.915369>,  <30.371710, 43.463352, 26.860209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978407, 43.415710, 26.915369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172158, -0.855201, 0.488869,
		0.059707, 0.504426, 0.861388,
		-0.983258, -0.119106, 0.137903,
		29.683430, 43.379978, 26.956739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345608, 43.272438, 27.459122>,  <30.371710, 43.463352, 26.860209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345608, 43.272438, 27.459122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.976830, 43.159294, 27.353289>,  <29.755562, 43.091408, 27.289789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.976830, 43.159294, 27.353289>,  <30.345608, 43.272438, 27.459122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976830, 43.159294, 27.353289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044108, -0.755355, 0.653830,
		-0.384795, 0.591127, 0.708874,
		-0.921948, -0.282858, -0.264583,
		29.700245, 43.074436, 27.273914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102070, 43.106609, 28.055307>,  <30.345608, 43.272438, 27.459122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102070, 43.106609, 28.055307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838768, 42.936359, 27.806940>,  <29.680786, 42.834209, 27.657919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838768, 42.936359, 27.806940>,  <30.102070, 43.106609, 28.055307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838768, 42.936359, 27.806940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157871, -0.728426, 0.666688,
		-0.736055, 0.536875, 0.412296,
		-0.658255, -0.425629, -0.620919,
		29.641291, 42.808670, 27.620665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530121, 42.865383, 28.428120>,  <30.102070, 43.106609, 28.055307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530121, 42.865383, 28.428120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509186, 42.654926, 28.088606>,  <29.496626, 42.528652, 27.884897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509186, 42.654926, 28.088606>,  <29.530121, 42.865383, 28.428120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509186, 42.654926, 28.088606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144104, -0.837075, 0.527768,
		-0.988178, 0.149934, -0.032011,
		-0.052335, -0.526141, -0.848785,
		29.493484, 42.497086, 27.833971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848557, 42.526962, 28.410830>,  <29.530121, 42.865383, 28.428120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848557, 42.526962, 28.410830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.105593, 42.318245, 28.186398>,  <29.259815, 42.193016, 28.051739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.105593, 42.318245, 28.186398>,  <28.848557, 42.526962, 28.410830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105593, 42.318245, 28.186398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119032, -0.791371, 0.599636,
		-0.756908, -0.318534, -0.570636,
		0.642589, -0.521794, -0.561079,
		29.298370, 42.161709, 28.018074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534571, 41.876183, 28.271875>,  <28.848557, 42.526962, 28.410830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534571, 41.876183, 28.271875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.925882, 41.810898, 28.220755>,  <29.160669, 41.771725, 28.190083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.925882, 41.810898, 28.220755>,  <28.534571, 41.876183, 28.271875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925882, 41.810898, 28.220755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064564, -0.825743, 0.560339,
		-0.196988, -0.539916, -0.818344,
		0.978278, -0.163215, -0.127803,
		29.219366, 41.761932, 28.182413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502609, 41.140144, 28.064835>,  <28.534571, 41.876183, 28.271875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502609, 41.140144, 28.064835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.863049, 41.248425, 28.200331>,  <29.079311, 41.313393, 28.281628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.863049, 41.248425, 28.200331>,  <28.502609, 41.140144, 28.064835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863049, 41.248425, 28.200331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033191, -0.735842, 0.676339,
		0.432346, -0.620690, -0.654080,
		0.901097, 0.270703, 0.338740,
		29.133377, 41.329636, 28.301952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607563, 40.530685, 28.431280>,  <28.502609, 41.140144, 28.064835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607563, 40.530685, 28.431280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918989, 40.752953, 28.547947>,  <29.105844, 40.886311, 28.617947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918989, 40.752953, 28.547947>,  <28.607563, 40.530685, 28.431280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918989, 40.752953, 28.547947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267125, -0.713991, 0.647195,
		0.567871, -0.425974, -0.704322,
		0.778567, 0.555665, 0.291667,
		29.152559, 40.919651, 28.635447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895065, 40.166248, 27.797747>,  <28.607563, 40.530685, 28.431280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895065, 40.166248, 27.797747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676395, 39.897236, 27.598209>,  <28.545195, 39.735828, 27.478487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.676395, 39.897236, 27.598209>,  <28.895065, 40.166248, 27.797747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676395, 39.897236, 27.598209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181850, 0.676881, -0.713276,
		0.817362, -0.299213, -0.492333,
		-0.546672, -0.672535, -0.498845,
		28.512394, 39.695477, 27.448557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176790, 40.135075, 27.194530>,  <28.895065, 40.166248, 27.797747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176790, 40.135075, 27.194530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813173, 39.989208, 27.113873>,  <28.595003, 39.901688, 27.065477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813173, 39.989208, 27.113873>,  <29.176790, 40.135075, 27.194530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813173, 39.989208, 27.113873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047254, 0.570990, -0.819596,
		0.414016, -0.735519, -0.536286,
		-0.909042, -0.364667, -0.201643,
		28.540461, 39.879807, 27.053379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157883, 39.996082, 26.472616>,  <29.176790, 40.135075, 27.194530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157883, 39.996082, 26.472616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.769358, 40.018131, 26.565147>,  <28.536243, 40.031361, 26.620667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.769358, 40.018131, 26.565147>,  <29.157883, 39.996082, 26.472616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769358, 40.018131, 26.565147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147047, 0.625271, -0.766429,
		-0.186894, -0.778458, -0.599228,
		-0.971312, 0.055126, 0.231329,
		28.477964, 40.034668, 26.634546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775806, 40.022404, 25.854280>,  <29.157883, 39.996082, 26.472616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775806, 40.022404, 25.854280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480062, 40.129444, 26.101419>,  <28.302616, 40.193668, 26.249702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480062, 40.129444, 26.101419>,  <28.775806, 40.022404, 25.854280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480062, 40.129444, 26.101419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304775, 0.685220, -0.661503,
		-0.600381, -0.677393, -0.425066,
		-0.739361, 0.267604, 0.617846,
		28.258255, 40.209724, 26.286774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043167, 39.928253, 25.528624>,  <28.775806, 40.022404, 25.854280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043167, 39.928253, 25.528624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.036636, 40.195889, 25.825827>,  <28.032719, 40.356468, 26.004148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.036636, 40.195889, 25.825827>,  <28.043167, 39.928253, 25.528624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036636, 40.195889, 25.825827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233735, 0.719961, -0.653471,
		-0.972163, -0.184335, 0.144634,
		-0.016327, 0.669086, 0.743005,
		28.031738, 40.396614, 26.048729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419138, 40.371479, 25.426479>,  <28.043167, 39.928253, 25.528624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419138, 40.371479, 25.426479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686213, 40.573425, 25.645313>,  <27.846458, 40.694592, 25.776613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686213, 40.573425, 25.645313>,  <27.419138, 40.371479, 25.426479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686213, 40.573425, 25.645313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144312, 0.808733, -0.570198,
		-0.730319, 0.301763, 0.612840,
		0.667688, 0.504867, 0.547085,
		27.886518, 40.724884, 25.809439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117544, 41.025169, 25.505478>,  <27.419138, 40.371479, 25.426479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117544, 41.025169, 25.505478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.510666, 41.045719, 25.576420>,  <27.746538, 41.058048, 25.618986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.510666, 41.045719, 25.576420>,  <27.117544, 41.025169, 25.505478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510666, 41.045719, 25.576420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043442, 0.869210, -0.492531,
		-0.179466, 0.491766, 0.852031,
		0.982804, 0.051379, 0.177357,
		27.805508, 41.061134, 25.629627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225849, 41.732395, 25.378105>,  <27.117544, 41.025169, 25.505478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225849, 41.732395, 25.378105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605381, 41.619457, 25.434681>,  <27.833099, 41.551693, 25.468626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605381, 41.619457, 25.434681>,  <27.225849, 41.732395, 25.378105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605381, 41.619457, 25.434681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313781, 0.792486, -0.522979,
		0.035570, 0.540599, 0.840528,
		0.948829, -0.282344, 0.141441,
		27.890030, 41.534756, 25.477114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552940, 42.279587, 25.671682>,  <27.225849, 41.732395, 25.378105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552940, 42.279587, 25.671682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.832872, 42.065609, 25.482340>,  <28.000832, 41.937222, 25.368734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.832872, 42.065609, 25.482340>,  <27.552940, 42.279587, 25.671682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832872, 42.065609, 25.482340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458320, 0.844567, -0.276858,
		0.547886, -0.023195, 0.836231,
		0.699831, -0.534948, -0.473357,
		28.042822, 41.905125, 25.340332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.680149, 31.026390, 34.810665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804729, 31.118029, 34.441772>,  <34.879478, 31.173012, 34.220436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.804729, 31.118029, 34.441772>,  <34.680149, 31.026390, 34.810665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804729, 31.118029, 34.441772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827325, 0.542804, -0.144556,
		0.467475, 0.808010, 0.358590,
		0.311447, 0.229094, -0.922235,
		34.898163, 31.186756, 34.165104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440971, 31.784748, 34.702919>,  <34.680149, 31.026390, 34.810665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440971, 31.784748, 34.702919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523502, 31.646275, 34.336838>,  <34.573021, 31.563190, 34.117191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523502, 31.646275, 34.336838>,  <34.440971, 31.784748, 34.702919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523502, 31.646275, 34.336838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798018, 0.481704, -0.362116,
		0.566213, 0.805058, -0.176872,
		0.206324, -0.346182, -0.915198,
		34.585400, 31.542419, 34.062279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421757, 32.339184, 34.310951>,  <34.440971, 31.784748, 34.702919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421757, 32.339184, 34.310951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420414, 32.069145, 34.015862>,  <34.419609, 31.907122, 33.838806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420414, 32.069145, 34.015862>,  <34.421757, 32.339184, 34.310951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420414, 32.069145, 34.015862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727939, 0.507465, -0.461070,
		0.685634, 0.535468, -0.493133,
		-0.003359, -0.675095, -0.737723,
		34.419407, 31.866617, 33.794544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490253, 32.634171, 33.669266>,  <34.421757, 32.339184, 34.310951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490253, 32.634171, 33.669266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323597, 32.284542, 33.569340>,  <34.223602, 32.074764, 33.509384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323597, 32.284542, 33.569340>,  <34.490253, 32.634171, 33.669266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323597, 32.284542, 33.569340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609185, 0.472424, -0.636953,
		0.674759, -0.113202, -0.729304,
		-0.416646, -0.874071, -0.249812,
		34.198605, 32.022320, 33.494396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289501, 32.579350, 33.000813>,  <34.490253, 32.634171, 33.669266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289501, 32.579350, 33.000813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070377, 32.267109, 33.121193>,  <33.938904, 32.079765, 33.193420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.070377, 32.267109, 33.121193>,  <34.289501, 32.579350, 33.000813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070377, 32.267109, 33.121193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758336, 0.311388, -0.572681,
		0.353324, -0.541938, -0.762539,
		-0.547804, -0.780603, 0.300950,
		33.906036, 32.032928, 33.211479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911304, 32.303783, 32.319489>,  <34.289501, 32.579350, 33.000813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911304, 32.303783, 32.319489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705956, 32.202526, 32.647480>,  <33.582748, 32.141773, 32.844276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705956, 32.202526, 32.647480>,  <33.911304, 32.303783, 32.319489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705956, 32.202526, 32.647480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854773, 0.235751, -0.462369,
		-0.076266, -0.938264, -0.337407,
		-0.513368, -0.253143, 0.819983,
		33.551945, 32.126583, 32.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401157, 31.912144, 32.034733>,  <33.911304, 32.303783, 32.319489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401157, 31.912144, 32.034733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270802, 32.032200, 32.393333>,  <33.192589, 32.104233, 32.608494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270802, 32.032200, 32.393333>,  <33.401157, 31.912144, 32.034733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270802, 32.032200, 32.393333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858972, 0.302114, -0.413393,
		-0.394920, -0.904789, 0.159355,
		-0.325891, 0.300139, 0.896500,
		33.173035, 32.122242, 32.662285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691914, 31.697647, 32.014267>,  <33.401157, 31.912144, 32.034733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691914, 31.697647, 32.014267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714935, 31.953651, 32.320751>,  <32.728748, 32.107254, 32.504642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714935, 31.953651, 32.320751>,  <32.691914, 31.697647, 32.014267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714935, 31.953651, 32.320751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789733, 0.498698, -0.357242,
		-0.610745, -0.584538, 0.534141,
		0.057553, 0.640012, 0.766206,
		32.732201, 32.145657, 32.550613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993963, 31.894915, 32.201996>,  <32.691914, 31.697647, 32.014267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993963, 31.894915, 32.201996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196850, 32.205265, 32.352062>,  <32.318581, 32.391476, 32.442104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196850, 32.205265, 32.352062>,  <31.993963, 31.894915, 32.201996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196850, 32.205265, 32.352062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614441, 0.630811, -0.473857,
		-0.604313, 0.009829, 0.796686,
		0.507216, 0.775874, 0.375168,
		32.349014, 32.438026, 32.464611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492199, 32.164471, 32.834938>,  <31.993963, 31.894915, 32.201996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492199, 32.164471, 32.834938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740152, 32.450108, 32.704823>,  <31.888926, 32.621490, 32.626755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740152, 32.450108, 32.704823>,  <31.492199, 32.164471, 32.834938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740152, 32.450108, 32.704823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772986, 0.627037, -0.096530,
		0.135035, 0.311279, 0.940676,
		0.619886, 0.714094, -0.325286,
		31.926119, 32.664337, 32.607235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170240, 32.829277, 32.961338>,  <31.492199, 32.164471, 32.834938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170240, 32.829277, 32.961338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448067, 32.931412, 32.692303>,  <31.614763, 32.992691, 32.530880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.448067, 32.931412, 32.692303>,  <31.170240, 32.829277, 32.961338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448067, 32.931412, 32.692303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632537, 0.662137, -0.401835,
		0.342745, 0.704540, 0.621408,
		0.694567, 0.255337, -0.672592,
		31.656437, 33.008011, 32.490524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295845, 33.628521, 32.993092>,  <31.170240, 32.829277, 32.961338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295845, 33.628521, 32.993092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444727, 33.533016, 32.634323>,  <31.534056, 33.475716, 32.419064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.444727, 33.533016, 32.634323>,  <31.295845, 33.628521, 32.993092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444727, 33.533016, 32.634323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533629, 0.735616, -0.417265,
		0.759411, 0.633928, 0.146390,
		0.372202, -0.238757, -0.896917,
		31.556387, 33.461388, 32.365250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780756, 34.016239, 33.418705>,  <31.295845, 33.628521, 32.993092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780756, 34.016239, 33.418705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.743937, 34.350124, 33.635883>,  <31.721844, 34.550453, 33.766190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.743937, 34.350124, 33.635883>,  <31.780756, 34.016239, 33.418705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743937, 34.350124, 33.635883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493733, -0.435251, 0.752851,
		0.864728, 0.337370, -0.372057,
		-0.092051, 0.834708, 0.542945,
		31.716322, 34.600536, 33.798767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395470, 34.082703, 33.773849>,  <31.780756, 34.016239, 33.418705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395470, 34.082703, 33.773849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130142, 34.296078, 33.983784>,  <31.970945, 34.424103, 34.109745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130142, 34.296078, 33.983784>,  <32.395470, 34.082703, 33.773849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130142, 34.296078, 33.983784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311330, -0.441041, 0.841758,
		0.680502, 0.721749, 0.126475,
		-0.663319, 0.533442, 0.524831,
		31.931147, 34.456112, 34.141232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808849, 34.363052, 34.358120>,  <32.395470, 34.082703, 33.773849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808849, 34.363052, 34.358120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431862, 34.379757, 34.490795>,  <32.205669, 34.389778, 34.570400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431862, 34.379757, 34.490795>,  <32.808849, 34.363052, 34.358120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431862, 34.379757, 34.490795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309731, -0.264306, 0.913350,
		0.125809, 0.963534, 0.236165,
		-0.942464, 0.041760, 0.331688,
		32.149124, 34.392284, 34.590302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823044, 34.773262, 34.965935>,  <32.808849, 34.363052, 34.358120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823044, 34.773262, 34.965935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490715, 34.551723, 34.987827>,  <32.291317, 34.418800, 35.000961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490715, 34.551723, 34.987827>,  <32.823044, 34.773262, 34.965935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490715, 34.551723, 34.987827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212285, -0.224467, 0.951078,
		-0.514464, 0.801792, 0.304065,
		-0.830820, -0.553844, 0.054728,
		32.241470, 34.385571, 35.004246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509850, 35.026199, 35.472946>,  <32.823044, 34.773262, 34.965935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509850, 35.026199, 35.472946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331615, 34.670723, 35.429714>,  <32.224674, 34.457436, 35.403774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331615, 34.670723, 35.429714>,  <32.509850, 35.026199, 35.472946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331615, 34.670723, 35.429714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032420, -0.104624, 0.993983,
		-0.894654, 0.446405, 0.017807,
		-0.445582, -0.888694, -0.108075,
		32.197941, 34.404114, 35.397293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894848, 34.983349, 35.857300>,  <32.509850, 35.026199, 35.472946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894848, 34.983349, 35.857300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988972, 34.598171, 35.804573>,  <32.045448, 34.367065, 35.772938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988972, 34.598171, 35.804573>,  <31.894848, 34.983349, 35.857300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988972, 34.598171, 35.804573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063567, -0.150582, 0.986552,
		-0.969839, -0.223768, -0.096645,
		0.235312, -0.962940, -0.131816,
		32.059566, 34.309288, 35.765030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423817, 34.705944, 36.243645>,  <31.894848, 34.983349, 35.857300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423817, 34.705944, 36.243645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698603, 34.419800, 36.192505>,  <31.863474, 34.248116, 36.161823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698603, 34.419800, 36.192505>,  <31.423817, 34.705944, 36.243645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698603, 34.419800, 36.192505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249224, -0.397185, 0.883251,
		-0.682618, -0.574899, -0.451136,
		0.686964, -0.715357, -0.127847,
		31.904692, 34.205193, 36.154152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236416, 34.133373, 36.741230>,  <31.423817, 34.705944, 36.243645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236416, 34.133373, 36.741230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.603029, 34.012199, 36.636772>,  <31.822998, 33.939495, 36.574097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.603029, 34.012199, 36.636772>,  <31.236416, 34.133373, 36.741230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603029, 34.012199, 36.636772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104447, -0.448995, 0.887409,
		-0.386077, -0.840617, -0.379879,
		0.916534, -0.302931, -0.261147,
		31.877989, 33.921318, 36.558426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312326, 33.381168, 36.835114>,  <31.236416, 34.133373, 36.741230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312326, 33.381168, 36.835114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674715, 33.550400, 36.829082>,  <31.892147, 33.651939, 36.825462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674715, 33.550400, 36.829082>,  <31.312326, 33.381168, 36.835114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674715, 33.550400, 36.829082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189935, -0.374381, 0.907614,
		0.378344, -0.825134, -0.419535,
		0.905969, 0.423075, -0.015077,
		31.946507, 33.677322, 36.824558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822874, 32.886566, 37.285820>,  <31.312326, 33.381168, 36.835114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822874, 32.886566, 37.285820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014908, 33.237263, 37.274212>,  <32.130127, 33.447681, 37.267246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014908, 33.237263, 37.274212>,  <31.822874, 32.886566, 37.285820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014908, 33.237263, 37.274212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295296, -0.130365, 0.946470,
		0.826027, -0.462955, -0.321484,
		0.480084, 0.876742, -0.029024,
		32.158932, 33.500286, 37.265503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506210, 32.796585, 37.576672>,  <31.822874, 32.886566, 37.285820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506210, 32.796585, 37.576672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439285, 33.189552, 37.609818>,  <32.399132, 33.425331, 37.629704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.439285, 33.189552, 37.609818>,  <32.506210, 32.796585, 37.576672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439285, 33.189552, 37.609818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428789, -0.003174, 0.903399,
		0.887776, 0.186682, -0.420718,
		-0.167313, 0.982415, 0.082865,
		32.389091, 33.484276, 37.634678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196346, 33.182278, 37.809170>,  <32.506210, 32.796585, 37.576672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196346, 33.182278, 37.809170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900990, 33.440899, 37.885853>,  <32.723774, 33.596069, 37.931862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.900990, 33.440899, 37.885853>,  <33.196346, 33.182278, 37.809170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900990, 33.440899, 37.885853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242465, -0.010731, 0.970101,
		0.629277, 0.762795, -0.148843,
		-0.738391, 0.646551, 0.191704,
		32.679474, 33.634865, 37.943363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474220, 33.748322, 38.226501>,  <33.196346, 33.182278, 37.809170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474220, 33.748322, 38.226501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.079777, 33.789272, 38.278812>,  <32.843109, 33.813843, 38.310200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.079777, 33.789272, 38.278812>,  <33.474220, 33.748322, 38.226501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079777, 33.789272, 38.278812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155955, 0.299986, 0.941109,
		0.057119, 0.948434, -0.311787,
		-0.986111, 0.102379, 0.130778,
		32.783943, 33.819984, 38.318047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386185, 34.417095, 38.660889>,  <33.474220, 33.748322, 38.226501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386185, 34.417095, 38.660889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034538, 34.227215, 38.677917>,  <32.823551, 34.113289, 38.688133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034538, 34.227215, 38.677917>,  <33.386185, 34.417095, 38.660889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034538, 34.227215, 38.677917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146864, 0.354793, 0.923338,
		-0.453412, 0.805471, -0.381621,
		-0.879118, -0.474699, 0.042572,
		32.770802, 34.084805, 38.690689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769100, 34.990410, 38.776241>,  <33.386185, 34.417095, 38.660889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769100, 34.990410, 38.776241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662872, 34.633953, 38.923393>,  <32.599136, 34.420078, 39.011684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662872, 34.633953, 38.923393>,  <32.769100, 34.990410, 38.776241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662872, 34.633953, 38.923393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002276, 0.382158, 0.924094,
		-0.964088, 0.244576, -0.103519,
		-0.265572, -0.891144, 0.367877,
		32.583202, 34.366611, 39.033756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059372, 34.993443, 38.157181>,  <32.769100, 34.990410, 38.776241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059372, 34.993443, 38.157181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411251, 35.010078, 37.967693>,  <33.622379, 35.020058, 37.854000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.411251, 35.010078, 37.967693>,  <33.059372, 34.993443, 38.157181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411251, 35.010078, 37.967693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270969, 0.862464, -0.427471,
		0.390788, 0.504407, 0.769973,
		0.879694, 0.041588, -0.473719,
		33.675159, 35.022556, 37.825577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351299, 35.657093, 38.245598>,  <33.059372, 34.993443, 38.157181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351299, 35.657093, 38.245598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531754, 35.496017, 37.927021>,  <33.640026, 35.399372, 37.735874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.531754, 35.496017, 37.927021>,  <33.351299, 35.657093, 38.245598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531754, 35.496017, 37.927021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165428, 0.839220, -0.518018,
		0.876989, 0.365451, 0.311987,
		0.451136, -0.402685, -0.796443,
		33.667095, 35.375214, 37.688087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987949, 36.127151, 37.924046>,  <33.351299, 35.657093, 38.245598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987949, 36.127151, 37.924046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864285, 35.876286, 37.638084>,  <33.790085, 35.725765, 37.466507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864285, 35.876286, 37.638084>,  <33.987949, 36.127151, 37.924046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864285, 35.876286, 37.638084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059604, 0.763027, -0.643612,
		0.949140, -0.156369, -0.273281,
		-0.309162, -0.627167, -0.714899,
		33.771538, 35.688137, 37.423615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362255, 36.356083, 37.387627>,  <33.987949, 36.127151, 37.924046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362255, 36.356083, 37.387627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059639, 36.163113, 37.211033>,  <33.878067, 36.047329, 37.105076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059639, 36.163113, 37.211033>,  <34.362255, 36.356083, 37.387627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059639, 36.163113, 37.211033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087455, 0.743680, -0.662791,
		0.648069, -0.462820, -0.604817,
		-0.756543, -0.482429, -0.441480,
		33.832676, 36.018383, 37.078590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516075, 36.563976, 36.744141>,  <34.362255, 36.356083, 37.387627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516075, 36.563976, 36.744141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129372, 36.463512, 36.763329>,  <33.897350, 36.403236, 36.774841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129372, 36.463512, 36.763329>,  <34.516075, 36.563976, 36.744141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129372, 36.463512, 36.763329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197203, 0.612951, -0.765116,
		0.162763, -0.749140, -0.642104,
		-0.966757, -0.251157, 0.047967,
		33.839344, 36.388165, 36.777718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296692, 36.530712, 36.097176>,  <34.516075, 36.563976, 36.744141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296692, 36.530712, 36.097176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943810, 36.554733, 36.283985>,  <33.732082, 36.569145, 36.396072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943810, 36.554733, 36.283985>,  <34.296692, 36.530712, 36.097176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943810, 36.554733, 36.283985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293869, 0.704747, -0.645734,
		-0.367913, -0.706913, -0.604081,
		-0.882202, 0.060053, 0.467026,
		33.679150, 36.572750, 36.424091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773697, 36.519260, 35.509426>,  <34.296692, 36.530712, 36.097176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773697, 36.519260, 35.509426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615578, 36.690369, 35.834572>,  <33.520706, 36.793034, 36.029659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.615578, 36.690369, 35.834572>,  <33.773697, 36.519260, 35.509426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615578, 36.690369, 35.834572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374044, 0.733283, -0.567791,
		-0.838944, -0.528496, -0.129864,
		-0.395302, 0.427770, 0.812865,
		33.496986, 36.818699, 36.078430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202847, 36.649231, 35.294647>,  <33.773697, 36.519260, 35.509426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202847, 36.649231, 35.294647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247208, 36.886566, 35.613560>,  <33.273823, 37.028965, 35.804905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247208, 36.886566, 35.613560>,  <33.202847, 36.649231, 35.294647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247208, 36.886566, 35.613560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388961, 0.764149, -0.514574,
		-0.914554, -0.253042, 0.315531,
		0.110904, 0.593335, 0.797279,
		33.280479, 37.064568, 35.852745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534466, 36.997952, 35.437527>,  <33.202847, 36.649231, 35.294647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534466, 36.997952, 35.437527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832050, 37.217064, 35.590603>,  <33.010601, 37.348534, 35.682449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832050, 37.217064, 35.590603>,  <32.534466, 36.997952, 35.437527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832050, 37.217064, 35.590603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412854, 0.827122, -0.381341,
		-0.525428, 0.125705, 0.841501,
		0.743960, 0.547784, 0.382695,
		33.055237, 37.381401, 35.705410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201721, 37.691544, 35.439129>,  <32.534466, 36.997952, 35.437527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201721, 37.691544, 35.439129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.588291, 37.771290, 35.503983>,  <32.820232, 37.819138, 35.542892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.588291, 37.771290, 35.503983>,  <32.201721, 37.691544, 35.439129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588291, 37.771290, 35.503983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085799, 0.845080, -0.527710,
		-0.242219, 0.496079, 0.833808,
		0.966420, 0.199362, 0.162132,
		32.878216, 37.831097, 35.552624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191151, 38.459751, 35.568794>,  <32.201721, 37.691544, 35.439129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191151, 38.459751, 35.568794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567963, 38.350403, 35.490974>,  <32.794048, 38.284794, 35.444283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567963, 38.350403, 35.490974>,  <32.191151, 38.459751, 35.568794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567963, 38.350403, 35.490974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050130, 0.687998, -0.723979,
		0.331766, 0.672256, 0.661818,
		0.942029, -0.273369, -0.194554,
		32.850571, 38.268391, 35.432610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670635, 39.026237, 35.765244>,  <32.191151, 38.459751, 35.568794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670635, 39.026237, 35.765244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831249, 38.791351, 35.484116>,  <32.927616, 38.650421, 35.315441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831249, 38.791351, 35.484116>,  <32.670635, 39.026237, 35.765244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831249, 38.791351, 35.484116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034382, 0.776523, -0.629150,
		0.915197, 0.228463, 0.331992,
		0.401537, -0.587211, -0.702817,
		32.951710, 38.615189, 35.273270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275150, 39.356606, 35.441025>,  <32.670635, 39.026237, 35.765244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275150, 39.356606, 35.441025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211029, 39.070156, 35.169296>,  <33.172558, 38.898289, 35.006260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211029, 39.070156, 35.169296>,  <33.275150, 39.356606, 35.441025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211029, 39.070156, 35.169296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179697, 0.655546, -0.733463,
		0.970573, -0.239646, 0.023600,
		-0.160300, -0.716121, -0.679319,
		33.162937, 38.855320, 34.965500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739765, 39.500759, 34.861305>,  <33.275150, 39.356606, 35.441025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739765, 39.500759, 34.861305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459763, 39.279736, 34.680340>,  <33.291763, 39.147121, 34.571762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.459763, 39.279736, 34.680340>,  <33.739765, 39.500759, 34.861305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459763, 39.279736, 34.680340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106818, 0.545370, -0.831361,
		0.706107, -0.630280, -0.322738,
		-0.700002, -0.552556, -0.452415,
		33.249763, 39.113968, 34.544617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042679, 39.263229, 34.233692>,  <33.739765, 39.500759, 34.861305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042679, 39.263229, 34.233692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644310, 39.255928, 34.198353>,  <33.405289, 39.251549, 34.177151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.644310, 39.255928, 34.198353>,  <34.042679, 39.263229, 34.233692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644310, 39.255928, 34.198353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064194, 0.544694, -0.836174,
		0.063380, -0.838436, -0.541302,
		-0.995923, -0.018248, -0.088345,
		33.345531, 39.250454, 34.171848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914658, 39.060226, 33.541069>,  <34.042679, 39.263229, 34.233692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914658, 39.060226, 33.541069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580082, 39.252285, 33.646774>,  <33.379337, 39.367519, 33.710197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.580082, 39.252285, 33.646774>,  <33.914658, 39.060226, 33.541069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580082, 39.252285, 33.646774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035570, 0.433602, -0.900402,
		-0.546906, -0.762530, -0.345602,
		-0.836438, 0.480143, 0.264263,
		33.329151, 39.396328, 33.726051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467407, 38.928841, 32.965229>,  <33.914658, 39.060226, 33.541069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467407, 38.928841, 32.965229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358665, 39.258705, 33.163631>,  <33.293419, 39.456623, 33.282673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358665, 39.258705, 33.163631>,  <33.467407, 38.928841, 32.965229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358665, 39.258705, 33.163631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154219, 0.471424, -0.868318,
		-0.949900, -0.312551, -0.000980,
		-0.271856, 0.824664, 0.496008,
		33.277107, 39.506104, 33.312435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905499, 39.153015, 32.555546>,  <33.467407, 38.928841, 32.965229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905499, 39.153015, 32.555546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016186, 39.462681, 32.783264>,  <33.082600, 39.648479, 32.919895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016186, 39.462681, 32.783264>,  <32.905499, 39.153015, 32.555546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016186, 39.462681, 32.783264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275388, 0.631468, -0.724851,
		-0.920645, 0.043803, 0.387935,
		0.276719, 0.774163, 0.569296,
		33.099201, 39.694931, 32.954052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405266, 39.662273, 32.436142>,  <32.905499, 39.153015, 32.555546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405266, 39.662273, 32.436142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705528, 39.868088, 32.601921>,  <32.885685, 39.991577, 32.701389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705528, 39.868088, 32.601921>,  <32.405266, 39.662273, 32.436142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705528, 39.868088, 32.601921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307455, 0.827282, -0.470187,
		-0.584794, 0.225525, 0.779201,
		0.750658, 0.514532, 0.414450,
		32.930725, 40.022446, 32.726257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175850, 40.340897, 32.650497>,  <32.405266, 39.662273, 32.436142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175850, 40.340897, 32.650497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567604, 40.417774, 32.625637>,  <32.802658, 40.463902, 32.610722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567604, 40.417774, 32.625637>,  <32.175850, 40.340897, 32.650497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567604, 40.417774, 32.625637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195308, 0.822547, -0.534108,
		-0.051534, 0.535236, 0.843129,
		0.979387, 0.192195, -0.062147,
		32.861420, 40.475433, 32.606995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244453, 41.117634, 32.632725>,  <32.175850, 40.340897, 32.650497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244453, 41.117634, 32.632725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592754, 40.988190, 32.484634>,  <32.801735, 40.910522, 32.395782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592754, 40.988190, 32.484634>,  <32.244453, 41.117634, 32.632725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592754, 40.988190, 32.484634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012645, 0.767404, -0.641039,
		0.491553, 0.553507, 0.672313,
		0.870756, -0.323606, -0.370221,
		32.853981, 40.891109, 32.373569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664101, 41.652161, 32.794853>,  <32.244453, 41.117634, 32.632725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664101, 41.652161, 32.794853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803040, 41.422867, 32.498005>,  <32.886402, 41.285290, 32.319897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803040, 41.422867, 32.498005>,  <32.664101, 41.652161, 32.794853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803040, 41.422867, 32.498005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016636, 0.787509, -0.616079,
		0.937589, 0.226339, 0.264003,
		0.347347, -0.573237, -0.742125,
		32.907242, 41.250896, 32.275368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217106, 42.099880, 32.444241>,  <32.664101, 41.652161, 32.794853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217106, 42.099880, 32.444241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126892, 41.824398, 32.168613>,  <33.072765, 41.659107, 32.003235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126892, 41.824398, 32.168613>,  <33.217106, 42.099880, 32.444241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126892, 41.824398, 32.168613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310461, 0.721225, -0.619232,
		0.923444, 0.074272, -0.376476,
		-0.225532, -0.688707, -0.689070,
		33.059231, 41.617786, 31.961893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529625, 42.257690, 31.807293>,  <33.217106, 42.099880, 32.444241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529625, 42.257690, 31.807293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262035, 41.994961, 31.668125>,  <33.101479, 41.837322, 31.584625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262035, 41.994961, 31.668125>,  <33.529625, 42.257690, 31.807293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262035, 41.994961, 31.668125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313687, 0.673845, -0.668979,
		0.673845, -0.338395, -0.656826,
		0.668979, 0.656826, 0.347917,
		33.061340, 41.797913, 31.563749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676510, 42.252441, 31.046543>,  <33.529625, 42.257690, 31.807293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676510, 42.252441, 31.046543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.323540, 42.069786, 31.091806>,  <33.111759, 41.960194, 31.118963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.323540, 42.069786, 31.091806>,  <33.676510, 42.252441, 31.046543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323540, 42.069786, 31.091806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345322, 0.465358, -0.814981,
		0.319494, -0.758236, -0.568332,
		-0.882427, -0.456639, 0.113157,
		33.058811, 41.932793, 31.125753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536823, 41.902603, 30.503698>,  <33.676510, 42.252441, 31.046543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536823, 41.902603, 30.503698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166542, 41.951553, 30.646860>,  <32.944374, 41.980923, 30.732758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.166542, 41.951553, 30.646860>,  <33.536823, 41.902603, 30.503698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166542, 41.951553, 30.646860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256443, 0.492497, -0.831675,
		-0.278047, -0.861667, -0.424523,
		-0.925704, 0.122379, 0.357906,
		32.888832, 41.988266, 30.754232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009113, 41.697716, 29.984024>,  <33.536823, 41.902603, 30.503698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009113, 41.697716, 29.984024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832619, 41.959877, 30.229218>,  <32.726723, 42.117176, 30.376333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832619, 41.959877, 30.229218>,  <33.009113, 41.697716, 29.984024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832619, 41.959877, 30.229218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264128, 0.557969, -0.786706,
		-0.857640, -0.509031, -0.073086,
		-0.441237, 0.655407, 0.612986,
		32.700249, 42.156498, 30.413113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033569, 40.885952, 29.611683>,  <33.009113, 41.697716, 29.984024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033569, 40.885952, 29.611683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258015, 40.846966, 29.282890>,  <33.392681, 40.823574, 29.085615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.258015, 40.846966, 29.282890>,  <33.033569, 40.885952, 29.611683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258015, 40.846966, 29.282890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662906, -0.541770, 0.516761,
		-0.495692, -0.834857, -0.239382,
		0.561111, -0.097467, -0.821982,
		33.426350, 40.817726, 29.036295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126869, 40.140358, 29.427616>,  <33.033569, 40.885952, 29.611683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126869, 40.140358, 29.427616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.440842, 40.355309, 29.304258>,  <33.629227, 40.484280, 29.230244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.440842, 40.355309, 29.304258>,  <33.126869, 40.140358, 29.427616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440842, 40.355309, 29.304258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616847, -0.631099, 0.470334,
		0.058118, -0.559413, -0.826849,
		0.784935, 0.537374, -0.308394,
		33.676323, 40.516521, 29.211740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591694, 39.691692, 29.253670>,  <33.126869, 40.140358, 29.427616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591694, 39.691692, 29.253670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823807, 40.015011, 29.293539>,  <33.963074, 40.209003, 29.317461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823807, 40.015011, 29.293539>,  <33.591694, 39.691692, 29.253670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823807, 40.015011, 29.293539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712816, -0.563264, 0.417884,
		0.393917, -0.171440, -0.903016,
		0.580278, 0.808296, 0.099675,
		33.997890, 40.257500, 29.323441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310886, 39.445156, 29.238653>,  <33.591694, 39.691692, 29.253670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310886, 39.445156, 29.238653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353977, 39.809525, 29.397957>,  <34.379829, 40.028145, 29.493540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353977, 39.809525, 29.397957>,  <34.310886, 39.445156, 29.238653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353977, 39.809525, 29.397957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706872, -0.351867, 0.613614,
		0.699091, 0.215417, -0.681812,
		0.107724, 0.910926, 0.398259,
		34.386295, 40.082802, 29.517435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014732, 39.562725, 29.320845>,  <34.310886, 39.445156, 29.238653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014732, 39.562725, 29.320845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858036, 39.831394, 29.572369>,  <34.764019, 39.992596, 29.723284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858036, 39.831394, 29.572369>,  <35.014732, 39.562725, 29.320845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858036, 39.831394, 29.572369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548373, -0.378339, 0.745752,
		0.738802, 0.636962, -0.220116,
		-0.391737, 0.671669, 0.628810,
		34.740517, 40.032894, 29.761011>
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
