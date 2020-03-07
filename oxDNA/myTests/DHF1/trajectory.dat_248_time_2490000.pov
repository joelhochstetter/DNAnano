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
	<0.221903, 2.160460, 4.243036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.617462, 2.106529, 4.218040>,  <0.854797, 2.074171, 4.203043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.617462, 2.106529, 4.218040>,  <0.221903, 2.160460, 4.243036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.617462, 2.106529, 4.218040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080656, -0.133785, -0.987723,
		0.124811, 0.981796, -0.143174,
		0.988897, -0.134827, -0.062490,
		0.914131, 2.066081, 4.199294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.422998, 2.646222, 3.706246>,  <0.221903, 2.160460, 4.243036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.422998, 2.646222, 3.706246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.642620, 2.319107, 3.775253>,  <0.774393, 2.122838, 3.816658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.642620, 2.319107, 3.775253>,  <0.422998, 2.646222, 3.706246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.642620, 2.319107, 3.775253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005790, -0.202688, -0.979226,
		0.835766, 0.538648, -0.106551,
		0.549055, -0.817788, 0.172518,
		0.807337, 2.073771, 3.827009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.233306, 2.601490, 3.604455>,  <0.422998, 2.646222, 3.706246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.233306, 2.601490, 3.604455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.027378, 2.267471, 3.526833>,  <0.903822, 2.067060, 3.480259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.027378, 2.267471, 3.526833>,  <1.233306, 2.601490, 3.604455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.027378, 2.267471, 3.526833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414642, -0.044413, -0.908900,
		0.750356, -0.548383, 0.369110,
		-0.514819, -0.835047, -0.194057,
		0.872932, 2.016957, 3.468615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.673565, 1.903942, 3.412421>,  <1.233306, 2.601490, 3.604455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.673565, 1.903942, 3.412421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.306599, 1.900764, 3.253281>,  <1.086419, 1.898858, 3.157796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.306599, 1.900764, 3.253281>,  <1.673565, 1.903942, 3.412421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.306599, 1.900764, 3.253281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393516, -0.166634, -0.904090,
		-0.059111, -0.985987, 0.156000,
		-0.917415, -0.007947, -0.397851,
		1.031374, 1.898381, 3.133925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.631205, 1.281293, 2.984925>,  <1.673565, 1.903942, 3.412421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.631205, 1.281293, 2.984925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.416546, 1.592316, 2.853828>,  <1.287750, 1.778929, 2.775171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.416546, 1.592316, 2.853828>,  <1.631205, 1.281293, 2.984925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.416546, 1.592316, 2.853828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553164, 0.030878, -0.832500,
		-0.637196, -0.628054, -0.446688,
		-0.536648, 0.777557, -0.327741,
		1.255551, 1.825583, 2.755506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.386903, 1.133795, 2.284431>,  <1.631205, 1.281293, 2.984925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.386903, 1.133795, 2.284431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.397228, 1.531799, 2.322975>,  <1.403424, 1.770602, 2.346102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.397228, 1.531799, 2.322975>,  <1.386903, 1.133795, 2.284431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.397228, 1.531799, 2.322975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551413, 0.066231, -0.831599,
		-0.833833, 0.074602, -0.546952,
		0.025814, 0.995012, 0.096362,
		1.404972, 1.830303, 2.351884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.344462, 1.479439, 1.596314>,  <1.386903, 1.133795, 2.284431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.344462, 1.479439, 1.596314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.517918, 1.754204, 1.829590>,  <1.621991, 1.919063, 1.969555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.517918, 1.754204, 1.829590>,  <1.344462, 1.479439, 1.596314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.517918, 1.754204, 1.829590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571155, 0.291052, -0.767509,
		-0.696949, 0.665914, -0.266121,
		0.433640, 0.686912, 0.583189,
		1.648010, 1.960277, 2.004546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.402466, 2.070972, 1.167475>,  <1.344462, 1.479439, 1.596314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.402466, 2.070972, 1.167475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.670467, 2.118286, 1.460625>,  <1.831268, 2.146675, 1.636514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.670467, 2.118286, 1.460625>,  <1.402466, 2.070972, 1.167475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.670467, 2.118286, 1.460625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701504, 0.222101, -0.677173,
		-0.242872, 0.967822, 0.065831,
		0.670004, 0.118286, 0.732873,
		1.871468, 2.153772, 1.680487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.349717, 2.217306, 0.607383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.478045, 2.140457, 0.978363>,  <3.555041, 2.094347, 1.200951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.478045, 2.140457, 0.978363>,  <3.349717, 2.217306, 0.607383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.478045, 2.140457, 0.978363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920408, 0.167764, 0.353135,
		-0.223439, -0.966925, -0.123011,
		0.320818, -0.192124, 0.927450,
		3.574290, 2.082820, 1.256598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.919498, 1.675249, 0.975452>,  <3.349717, 2.217306, 0.607383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.919498, 1.675249, 0.975452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.060173, 1.951111, 1.228653>,  <3.144578, 2.116628, 1.380573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.060173, 1.951111, 1.228653>,  <2.919498, 1.675249, 0.975452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.060173, 1.951111, 1.228653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921457, 0.135835, 0.363958,
		0.165022, -0.711284, 0.683259,
		0.351688, 0.689655, 0.633002,
		3.165679, 2.158007, 1.418554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659451, 1.518842, 1.673794>,  <2.919498, 1.675249, 0.975452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659451, 1.518842, 1.673794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.746561, 1.908615, 1.651688>,  <2.798827, 2.142479, 1.638424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.746561, 1.908615, 1.651688>,  <2.659451, 1.518842, 1.673794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.746561, 1.908615, 1.651688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869071, 0.219373, 0.443386,
		0.444174, -0.048529, 0.894625,
		0.217774, 0.974433, -0.055265,
		2.811893, 2.200945, 1.635108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.699515, 1.735158, 2.356433>,  <2.659451, 1.518842, 1.673794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.699515, 1.735158, 2.356433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.596245, 2.014954, 2.089882>,  <2.534283, 2.182831, 1.929951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.596245, 2.014954, 2.089882>,  <2.699515, 1.735158, 2.356433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.596245, 2.014954, 2.089882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873993, 0.124821, 0.469634,
		0.411682, 0.703658, 0.579123,
		-0.258175, 0.699489, -0.666379,
		2.518792, 2.224800, 1.889968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.531826, 2.480218, 2.791874>,  <2.699515, 1.735158, 2.356433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.531826, 2.480218, 2.791874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.335249, 2.398621, 2.453201>,  <2.217303, 2.349662, 2.249997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.335249, 2.398621, 2.453201>,  <2.531826, 2.480218, 2.791874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.335249, 2.398621, 2.453201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843155, -0.132037, 0.521206,
		-0.218117, 0.970027, -0.107110,
		-0.491442, -0.203994, -0.846683,
		2.187816, 2.337422, 2.199197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.036761, 2.876176, 2.830352>,  <2.531826, 2.480218, 2.791874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.036761, 2.876176, 2.830352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.917595, 2.600052, 2.566620>,  <1.846095, 2.434377, 2.408381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.917595, 2.600052, 2.566620>,  <2.036761, 2.876176, 2.830352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.917595, 2.600052, 2.566620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876200, -0.076364, 0.475859,
		-0.378840, 0.719472, -0.582101,
		-0.297915, -0.690311, -0.659331,
		1.828220, 2.392959, 2.368821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.474579, 3.152254, 2.548217>,  <2.036761, 2.876176, 2.830352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.474579, 3.152254, 2.548217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.466894, 2.753204, 2.521759>,  <1.462283, 2.513774, 2.505884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.466894, 2.753204, 2.521759>,  <1.474579, 3.152254, 2.548217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.466894, 2.753204, 2.521759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877482, -0.014885, 0.479379,
		-0.479226, 0.067251, -0.875112,
		-0.019213, -0.997625, -0.066145,
		1.461130, 2.453917, 2.501916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.861359, 3.097160, 2.658735>,  <1.474579, 3.152254, 2.548217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.861359, 3.097160, 2.658735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.956465, 2.709534, 2.685211>,  <1.013528, 2.476958, 2.701097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.956465, 2.709534, 2.685211>,  <0.861359, 3.097160, 2.658735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.956465, 2.709534, 2.685211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863635, -0.179725, 0.470992,
		-0.444526, -0.169149, -0.879651,
		0.237763, -0.969066, 0.066190,
		1.027794, 2.418814, 2.705068>
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
