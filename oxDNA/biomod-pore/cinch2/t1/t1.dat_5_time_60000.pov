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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.739647, 32.583546, 23.607395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955746, 32.832825, 23.381207>,  <43.085403, 32.982391, 23.245493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955746, 32.832825, 23.381207>,  <42.739647, 32.583546, 23.607395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955746, 32.832825, 23.381207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840930, 0.424720, -0.335334,
		0.031188, 0.656686, 0.753519,
		0.540244, 0.623199, -0.565473,
		43.117821, 33.019783, 23.211565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612419, 33.314785, 23.606539>,  <42.739647, 32.583546, 23.607395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612419, 33.314785, 23.606539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749073, 33.238338, 23.238461>,  <42.831066, 33.192471, 23.017614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.749073, 33.238338, 23.238461>,  <42.612419, 33.314785, 23.606539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.749073, 33.238338, 23.238461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832927, 0.391958, -0.390643,
		0.435335, 0.899914, -0.025275,
		0.341638, -0.191112, -0.920195,
		42.851566, 33.181004, 22.962402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071514, 33.796593, 23.275497>,  <42.612419, 33.314785, 23.606539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071514, 33.796593, 23.275497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764992, 33.585083, 23.129528>,  <42.581078, 33.458179, 23.041946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764992, 33.585083, 23.129528>,  <43.071514, 33.796593, 23.275497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764992, 33.585083, 23.129528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519378, 0.844197, -0.132582,
		0.378172, 0.087934, -0.921549,
		-0.766311, -0.528771, -0.364923,
		42.535099, 33.426453, 23.020052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895161, 34.002041, 22.561003>,  <43.071514, 33.796593, 23.275497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895161, 34.002041, 22.561003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574192, 33.868286, 22.758713>,  <42.381611, 33.788033, 22.877338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574192, 33.868286, 22.758713>,  <42.895161, 34.002041, 22.561003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574192, 33.868286, 22.758713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451519, 0.881763, -0.136472,
		-0.390198, -0.332682, -0.858527,
		-0.802419, -0.334390, 0.494274,
		42.333466, 33.767971, 22.906996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244591, 33.993073, 22.111233>,  <42.895161, 34.002041, 22.561003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244591, 33.993073, 22.111233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117092, 34.030987, 22.488468>,  <42.040592, 34.053738, 22.714809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117092, 34.030987, 22.488468>,  <42.244591, 33.993073, 22.111233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117092, 34.030987, 22.488468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547963, 0.793435, -0.264948,
		-0.773394, -0.601229, -0.200962,
		-0.318745, 0.094790, 0.943089,
		42.021469, 34.059425, 22.771395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504303, 34.199894, 22.142191>,  <42.244591, 33.993073, 22.111233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504303, 34.199894, 22.142191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679440, 34.328995, 22.477840>,  <41.784523, 34.406456, 22.679230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679440, 34.328995, 22.477840>,  <41.504303, 34.199894, 22.142191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679440, 34.328995, 22.477840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456567, 0.883854, -0.101724,
		-0.774495, -0.338578, 0.534343,
		0.437840, 0.322749, 0.839124,
		41.810791, 34.425819, 22.729578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732681, 34.036423, 22.001894>,  <41.504303, 34.199894, 22.142191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732681, 34.036423, 22.001894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402756, 34.219006, 21.868435>,  <40.204800, 34.328556, 21.788359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402756, 34.219006, 21.868435>,  <40.732681, 34.036423, 22.001894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402756, 34.219006, 21.868435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232496, -0.811732, -0.535759,
		-0.515385, -0.364332, 0.775655,
		-0.824818, 0.456459, -0.333649,
		40.155312, 34.355942, 21.768341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216492, 33.493496, 21.906933>,  <40.732681, 34.036423, 22.001894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216492, 33.493496, 21.906933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119129, 33.803764, 21.674007>,  <40.060711, 33.989925, 21.534252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119129, 33.803764, 21.674007>,  <40.216492, 33.493496, 21.906933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119129, 33.803764, 21.674007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156191, -0.623881, -0.765752,
		-0.957266, -0.095436, 0.273009,
		-0.243406, 0.775670, -0.582314,
		40.046108, 34.036465, 21.499313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619160, 33.225601, 21.562737>,  <40.216492, 33.493496, 21.906933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619160, 33.225601, 21.562737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795425, 33.526440, 21.366711>,  <39.901184, 33.706944, 21.249094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795425, 33.526440, 21.366711>,  <39.619160, 33.225601, 21.562737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795425, 33.526440, 21.366711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031978, -0.558736, -0.828729,
		-0.897101, 0.349522, -0.270266,
		0.440666, 0.752096, -0.490066,
		39.927624, 33.752068, 21.219690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227108, 33.385540, 21.083763>,  <39.619160, 33.225601, 21.562737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227108, 33.385540, 21.083763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579735, 33.521118, 20.952339>,  <39.791309, 33.602467, 20.873484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579735, 33.521118, 20.952339>,  <39.227108, 33.385540, 21.083763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579735, 33.521118, 20.952339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091130, -0.560730, -0.822968,
		-0.463177, 0.755444, -0.463434,
		0.881568, 0.338947, -0.328561,
		39.844204, 33.622803, 20.853771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040344, 33.607357, 20.373901>,  <39.227108, 33.385540, 21.083763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040344, 33.607357, 20.373901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439709, 33.587452, 20.384491>,  <39.679329, 33.575508, 20.390844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439709, 33.587452, 20.384491>,  <39.040344, 33.607357, 20.373901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439709, 33.587452, 20.384491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005022, -0.389260, -0.921114,
		0.056147, 0.919782, -0.388391,
		0.998410, -0.049767, 0.026475,
		39.739231, 33.572521, 20.392433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216770, 33.847614, 19.687832>,  <39.040344, 33.607357, 20.373901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216770, 33.847614, 19.687832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515526, 33.642784, 19.857502>,  <39.694778, 33.519886, 19.959305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515526, 33.642784, 19.857502>,  <39.216770, 33.847614, 19.687832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515526, 33.642784, 19.857502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030901, -0.663952, -0.747136,
		0.664226, 0.544923, -0.511725,
		0.746893, -0.512080, 0.424176,
		39.739594, 33.489159, 19.984755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751411, 33.905212, 19.218258>,  <39.216770, 33.847614, 19.687832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751411, 33.905212, 19.218258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796383, 33.578197, 19.444176>,  <39.823368, 33.381989, 19.579727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.796383, 33.578197, 19.444176>,  <39.751411, 33.905212, 19.218258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796383, 33.578197, 19.444176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213227, -0.535307, -0.817301,
		0.970512, 0.212321, 0.114135,
		0.112433, -0.817537, 0.564794,
		39.830112, 33.332935, 19.613613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446293, 33.675869, 18.896099>,  <39.751411, 33.905212, 19.218258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446293, 33.675869, 18.896099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244488, 33.394001, 19.095661>,  <40.123405, 33.224880, 19.215399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244488, 33.394001, 19.095661>,  <40.446293, 33.675869, 18.896099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244488, 33.394001, 19.095661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004264, -0.575792, -0.817585,
		0.863396, -0.414606, 0.287487,
		-0.504508, -0.704674, 0.498904,
		40.093136, 33.182598, 19.245333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767864, 33.146599, 18.675514>,  <40.446293, 33.675869, 18.896099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767864, 33.146599, 18.675514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428604, 32.993591, 18.822109>,  <40.225048, 32.901787, 18.910067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428604, 32.993591, 18.822109>,  <40.767864, 33.146599, 18.675514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428604, 32.993591, 18.822109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013212, -0.706870, -0.707220,
		0.529587, -0.594989, 0.604588,
		-0.848153, -0.382523, 0.366488,
		40.174160, 32.878834, 18.932056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855873, 32.383884, 18.789331>,  <40.767864, 33.146599, 18.675514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855873, 32.383884, 18.789331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471577, 32.473797, 18.724270>,  <40.241001, 32.527744, 18.685232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471577, 32.473797, 18.724270>,  <40.855873, 32.383884, 18.789331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471577, 32.473797, 18.724270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014833, -0.627007, -0.778873,
		-0.277059, -0.745880, 0.605724,
		-0.960738, 0.224778, -0.162655,
		40.183353, 32.541229, 18.675474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508110, 31.809532, 18.467291>,  <40.855873, 32.383884, 18.789331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508110, 31.809532, 18.467291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202332, 32.061172, 18.410931>,  <40.018864, 32.212154, 18.377115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202332, 32.061172, 18.410931>,  <40.508110, 31.809532, 18.467291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202332, 32.061172, 18.410931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208361, -0.447923, -0.869454,
		-0.610086, -0.635294, 0.473494,
		-0.764448, 0.629099, -0.140900,
		39.972996, 32.249901, 18.368660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955585, 31.407911, 18.196402>,  <40.508110, 31.809532, 18.467291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955585, 31.407911, 18.196402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858051, 31.778538, 18.081848>,  <39.799530, 32.000916, 18.013115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858051, 31.778538, 18.081848>,  <39.955585, 31.407911, 18.196402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858051, 31.778538, 18.081848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268395, -0.348237, -0.898162,
		-0.931938, -0.142141, 0.333599,
		-0.243837, 0.926568, -0.286385,
		39.784901, 32.056507, 17.995934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289513, 31.285849, 17.891222>,  <39.955585, 31.407911, 18.196402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289513, 31.285849, 17.891222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431313, 31.630203, 17.745235>,  <39.516392, 31.836817, 17.657642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431313, 31.630203, 17.745235>,  <39.289513, 31.285849, 17.891222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431313, 31.630203, 17.745235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091436, -0.356531, -0.929798,
		-0.930575, 0.362983, -0.047674,
		0.354499, 0.860888, -0.364968,
		39.537663, 31.888470, 17.635744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002281, 31.257679, 17.255522>,  <39.289513, 31.285849, 17.891222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002281, 31.257679, 17.255522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270123, 31.552307, 17.217377>,  <39.430828, 31.729084, 17.194489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270123, 31.552307, 17.217377>,  <39.002281, 31.257679, 17.255522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270123, 31.552307, 17.217377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071681, -0.063710, -0.995391,
		-0.739249, 0.673356, 0.010138,
		0.669606, 0.736568, -0.095364,
		39.471004, 31.773277, 17.188766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742531, 31.782955, 16.802073>,  <39.002281, 31.257679, 17.255522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742531, 31.782955, 16.802073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136227, 31.844601, 16.767361>,  <39.372444, 31.881588, 16.746534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136227, 31.844601, 16.767361>,  <38.742531, 31.782955, 16.802073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136227, 31.844601, 16.767361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121436, 0.232134, -0.965073,
		-0.128585, 0.960397, 0.247190,
		0.984235, 0.154112, -0.086778,
		39.431496, 31.890835, 16.741327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900192, 32.334641, 16.372688>,  <38.742531, 31.782955, 16.802073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900192, 32.334641, 16.372688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246815, 32.135017, 16.374916>,  <39.454788, 32.015244, 16.376253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246815, 32.135017, 16.374916>,  <38.900192, 32.334641, 16.372688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246815, 32.135017, 16.374916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079431, 0.126890, -0.988731,
		0.492724, 0.857230, 0.149597,
		0.866553, -0.499054, 0.005569,
		39.506779, 31.985302, 16.376587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385841, 32.806969, 16.007307>,  <38.900192, 32.334641, 16.372688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385841, 32.806969, 16.007307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539692, 32.438385, 15.985492>,  <39.632004, 32.217236, 15.972403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539692, 32.438385, 15.985492>,  <39.385841, 32.806969, 16.007307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539692, 32.438385, 15.985492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066708, 0.086675, -0.994001,
		0.920657, 0.378684, 0.094807,
		0.384630, -0.921459, -0.054536,
		39.655083, 32.161949, 15.969131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065216, 32.843342, 15.645325>,  <39.385841, 32.806969, 16.007307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065216, 32.843342, 15.645325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946297, 32.464638, 15.595923>,  <39.874947, 32.237415, 15.566283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946297, 32.464638, 15.595923>,  <40.065216, 32.843342, 15.645325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946297, 32.464638, 15.595923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119023, 0.091593, -0.988658,
		0.947338, -0.308621, 0.085457,
		-0.297294, -0.946765, -0.123502,
		39.857109, 32.180607, 15.558872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508961, 32.535423, 15.069350>,  <40.065216, 32.843342, 15.645325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508961, 32.535423, 15.069350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209961, 32.271744, 15.102105>,  <40.030563, 32.113537, 15.121758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209961, 32.271744, 15.102105>,  <40.508961, 32.535423, 15.069350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209961, 32.271744, 15.102105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055387, -0.060995, -0.996600,
		0.661951, -0.749492, 0.009082,
		-0.747498, -0.659198, 0.081887,
		39.985710, 32.073986, 15.126672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641239, 31.938715, 14.722724>,  <40.508961, 32.535423, 15.069350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641239, 31.938715, 14.722724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242256, 31.915508, 14.739308>,  <40.002869, 31.901585, 14.749259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242256, 31.915508, 14.739308>,  <40.641239, 31.938715, 14.722724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242256, 31.915508, 14.739308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039501, -0.034556, -0.998622,
		0.059373, -0.997717, 0.032177,
		-0.997454, -0.058020, 0.041462,
		39.943020, 31.898104, 14.751747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469143, 31.400278, 14.170999>,  <40.641239, 31.938715, 14.722724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469143, 31.400278, 14.170999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173294, 31.661602, 14.235684>,  <39.995785, 31.818396, 14.274496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173294, 31.661602, 14.235684>,  <40.469143, 31.400278, 14.170999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173294, 31.661602, 14.235684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333625, -0.147212, -0.931141,
		-0.584518, -0.742640, 0.326841,
		-0.739617, 0.653310, 0.161715,
		39.951408, 31.857595, 14.284199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775261, 31.146742, 13.900428>,  <40.469143, 31.400278, 14.170999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775261, 31.146742, 13.900428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786053, 31.546574, 13.904763>,  <39.792530, 31.786472, 13.907365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786053, 31.546574, 13.904763>,  <39.775261, 31.146742, 13.900428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786053, 31.546574, 13.904763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142778, 0.014585, -0.989647,
		-0.989387, 0.025156, 0.143111,
		0.026982, 0.999577, 0.010838,
		39.794147, 31.846447, 13.908014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272381, 31.504856, 13.524424>,  <39.775261, 31.146742, 13.900428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272381, 31.504856, 13.524424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570454, 31.760506, 13.448287>,  <39.749298, 31.913895, 13.402605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570454, 31.760506, 13.448287>,  <39.272381, 31.504856, 13.524424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570454, 31.760506, 13.448287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067056, -0.212167, -0.974930,
		-0.663483, 0.739262, -0.115246,
		0.745180, 0.639122, -0.190341,
		39.794006, 31.952242, 13.391185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789886, 31.266802, 13.002492>,  <39.272381, 31.504856, 13.524424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789886, 31.266802, 13.002492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768383, 30.892723, 12.862485>,  <39.755482, 30.668276, 12.778481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768383, 30.892723, 12.862485>,  <39.789886, 31.266802, 13.002492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768383, 30.892723, 12.862485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994676, 0.081013, -0.063690,
		0.087919, 0.344730, -0.934575,
		-0.053757, -0.935199, -0.350018,
		39.752254, 30.612164, 12.757480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443970, 31.120596, 12.189655>,  <39.789886, 31.266802, 13.002492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443970, 31.120596, 12.189655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396542, 30.869560, 12.497441>,  <39.368084, 30.718939, 12.682113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396542, 30.869560, 12.497441>,  <39.443970, 31.120596, 12.189655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396542, 30.869560, 12.497441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984769, 0.173567, -0.010186,
		-0.127161, -0.758953, -0.638609,
		-0.118572, -0.627587, 0.769464,
		39.360970, 30.681284, 12.728281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777145, 31.619719, 11.793731>,  <39.443970, 31.120596, 12.189655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777145, 31.619719, 11.793731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526989, 31.898117, 11.652604>,  <39.376896, 32.065155, 11.567928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526989, 31.898117, 11.652604>,  <39.777145, 31.619719, 11.793731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526989, 31.898117, 11.652604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032351, 0.428633, 0.902899,
		0.779642, 0.576078, -0.245546,
		-0.625390, 0.695994, -0.352817,
		39.339371, 32.106915, 11.546759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970398, 32.368843, 12.037045>,  <39.777145, 31.619719, 11.793731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970398, 32.368843, 12.037045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585468, 32.304981, 11.949012>,  <39.354511, 32.266663, 11.896193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585468, 32.304981, 11.949012>,  <39.970398, 32.368843, 12.037045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585468, 32.304981, 11.949012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260627, 0.311066, 0.913954,
		-0.077457, 0.936882, -0.340958,
		-0.962328, -0.159655, -0.220082,
		39.296768, 32.257084, 11.882987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586292, 33.058735, 12.207747>,  <39.970398, 32.368843, 12.037045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586292, 33.058735, 12.207747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399998, 32.704769, 12.206187>,  <39.288223, 32.492390, 12.205252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399998, 32.704769, 12.206187>,  <39.586292, 33.058735, 12.207747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399998, 32.704769, 12.206187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537896, 0.279593, 0.795296,
		-0.702681, 0.372493, -0.606209,
		-0.465734, -0.884916, -0.003898,
		39.260277, 32.439293, 12.205018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833675, 33.141834, 12.226151>,  <39.586292, 33.058735, 12.207747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833675, 33.141834, 12.226151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919479, 32.782307, 12.379048>,  <38.970963, 32.566589, 12.470786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919479, 32.782307, 12.379048>,  <38.833675, 33.141834, 12.226151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919479, 32.782307, 12.379048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388263, 0.280631, 0.877780,
		-0.896234, -0.336705, -0.288780,
		0.214512, -0.898819, 0.382241,
		38.983833, 32.512661, 12.493721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369328, 32.891659, 12.698725>,  <38.833675, 33.141834, 12.226151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369328, 32.891659, 12.698725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709690, 32.729191, 12.831986>,  <38.913906, 32.631710, 12.911943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709690, 32.729191, 12.831986>,  <38.369328, 32.891659, 12.698725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709690, 32.729191, 12.831986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148538, 0.422285, 0.894210,
		-0.503887, -0.810371, 0.298992,
		0.850902, -0.406170, 0.333155,
		38.964962, 32.607342, 12.931932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403526, 32.462074, 13.417064>,  <38.369328, 32.891659, 12.698725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403526, 32.462074, 13.417064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768627, 32.616760, 13.364409>,  <38.987690, 32.709572, 13.332817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768627, 32.616760, 13.364409>,  <38.403526, 32.462074, 13.417064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768627, 32.616760, 13.364409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031465, 0.387832, 0.921193,
		0.407301, -0.836678, 0.366163,
		0.912752, 0.386724, -0.131638,
		39.042454, 32.732777, 13.324919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871819, 32.192532, 13.862271>,  <38.403526, 32.462074, 13.417064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871819, 32.192532, 13.862271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992771, 32.563374, 13.773685>,  <39.065342, 32.785877, 13.720532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992771, 32.563374, 13.773685>,  <38.871819, 32.192532, 13.862271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992771, 32.563374, 13.773685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001517, 0.231875, 0.972744,
		0.953185, -0.294477, 0.068709,
		0.302383, 0.927101, -0.221466,
		39.083485, 32.841503, 13.707245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029572, 32.373680, 14.513949>,  <38.871819, 32.192532, 13.862271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029572, 32.373680, 14.513949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030651, 32.722084, 14.317447>,  <39.031300, 32.931126, 14.199545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030651, 32.722084, 14.317447>,  <39.029572, 32.373680, 14.513949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030651, 32.722084, 14.317447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055190, 0.490639, 0.869613,
		0.998472, 0.024769, 0.049393,
		0.002694, 0.871011, -0.491256,
		39.031460, 32.983387, 14.170070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492855, 32.784107, 14.980049>,  <39.029572, 32.373680, 14.513949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492855, 32.784107, 14.980049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287926, 33.031837, 14.742072>,  <39.164967, 33.180477, 14.599286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287926, 33.031837, 14.742072>,  <39.492855, 32.784107, 14.980049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287926, 33.031837, 14.742072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131410, 0.628073, 0.766978,
		0.848680, 0.471121, -0.240390,
		-0.512322, 0.619329, -0.594943,
		39.134228, 33.217636, 14.563589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760189, 33.379093, 15.175156>,  <39.492855, 32.784107, 14.980049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760189, 33.379093, 15.175156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425140, 33.471653, 14.977231>,  <39.224110, 33.527191, 14.858477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425140, 33.471653, 14.977231>,  <39.760189, 33.379093, 15.175156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425140, 33.471653, 14.977231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335154, 0.497583, 0.800052,
		0.431345, 0.835981, -0.339231,
		-0.837624, 0.231404, -0.494812,
		39.173855, 33.541073, 14.828788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607506, 34.105076, 15.290113>,  <39.760189, 33.379093, 15.175156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607506, 34.105076, 15.290113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262211, 33.923557, 15.201665>,  <39.055035, 33.814648, 15.148596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262211, 33.923557, 15.201665>,  <39.607506, 34.105076, 15.290113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262211, 33.923557, 15.201665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426844, 0.422314, 0.799660,
		-0.269500, 0.784678, -0.558256,
		-0.863235, -0.453796, -0.221121,
		39.003239, 33.787418, 15.135328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124783, 34.624702, 15.481145>,  <39.607506, 34.105076, 15.290113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124783, 34.624702, 15.481145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918182, 34.282562, 15.465177>,  <38.794220, 34.077278, 15.455596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918182, 34.282562, 15.465177>,  <39.124783, 34.624702, 15.481145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918182, 34.282562, 15.465177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595222, 0.325128, 0.734848,
		-0.615576, 0.403314, -0.677055,
		-0.516505, -0.855353, -0.039921,
		38.763229, 34.025955, 15.453200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487221, 34.812843, 15.603497>,  <39.124783, 34.624702, 15.481145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487221, 34.812843, 15.603497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455402, 34.424732, 15.694909>,  <38.436310, 34.191864, 15.749757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455402, 34.424732, 15.694909>,  <38.487221, 34.812843, 15.603497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455402, 34.424732, 15.694909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388581, 0.241305, 0.889256,
		-0.917974, -0.018063, -0.396229,
		-0.079549, -0.970281, 0.228531,
		38.431538, 34.133648, 15.763469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774849, 34.588749, 15.790112>,  <38.487221, 34.812843, 15.603497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774849, 34.588749, 15.790112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011909, 34.324200, 15.974004>,  <38.154144, 34.165470, 16.084339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011909, 34.324200, 15.974004>,  <37.774849, 34.588749, 15.790112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011909, 34.324200, 15.974004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352832, 0.299922, 0.886316,
		-0.724067, -0.687485, -0.055603,
		0.592652, -0.661371, 0.459731,
		38.189705, 34.125790, 16.111923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345711, 34.316776, 16.405621>,  <37.774849, 34.588749, 15.790112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345711, 34.316776, 16.405621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713440, 34.186459, 16.493904>,  <37.934078, 34.108269, 16.546875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713440, 34.186459, 16.493904>,  <37.345711, 34.316776, 16.405621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713440, 34.186459, 16.493904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207104, 0.076340, 0.975336,
		-0.334607, -0.942354, 0.002708,
		0.919319, -0.325793, 0.220710,
		37.989235, 34.088722, 16.560118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343586, 33.786072, 17.031096>,  <37.345711, 34.316776, 16.405621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343586, 33.786072, 17.031096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707134, 33.952831, 17.026154>,  <37.925262, 34.052887, 17.023188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707134, 33.952831, 17.026154>,  <37.343586, 33.786072, 17.031096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707134, 33.952831, 17.026154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048364, 0.134765, 0.989697,
		0.414272, -0.898906, 0.142646,
		0.908867, 0.416903, -0.012355,
		37.979794, 34.077900, 17.022448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615295, 33.579758, 17.665649>,  <37.343586, 33.786072, 17.031096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615295, 33.579758, 17.665649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874413, 33.862202, 17.551266>,  <38.029884, 34.031670, 17.482635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874413, 33.862202, 17.551266>,  <37.615295, 33.579758, 17.665649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874413, 33.862202, 17.551266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115349, 0.280127, 0.953008,
		0.753032, -0.650338, 0.100016,
		0.647794, 0.706108, -0.285960,
		38.068752, 34.074036, 17.465477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124157, 33.466125, 18.102951>,  <37.615295, 33.579758, 17.665649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124157, 33.466125, 18.102951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153763, 33.843250, 17.972946>,  <38.171524, 34.069523, 17.894943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153763, 33.843250, 17.972946>,  <38.124157, 33.466125, 18.102951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153763, 33.843250, 17.972946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010534, 0.325151, 0.945603,
		0.997202, -0.073409, 0.014133,
		0.074011, 0.942809, -0.325015,
		38.175964, 34.126091, 17.875443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710003, 33.831337, 18.525110>,  <38.124157, 33.466125, 18.102951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710003, 33.831337, 18.525110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493176, 34.133694, 18.378254>,  <38.363079, 34.315105, 18.290140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493176, 34.133694, 18.378254>,  <38.710003, 33.831337, 18.525110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493176, 34.133694, 18.378254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071566, 0.393786, 0.916412,
		0.837281, 0.523034, -0.159363,
		-0.542070, 0.755889, -0.367141,
		38.330555, 34.360462, 18.268112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840435, 34.405399, 18.895069>,  <38.710003, 33.831337, 18.525110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840435, 34.405399, 18.895069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497860, 34.544014, 18.742008>,  <38.292316, 34.627182, 18.650171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497860, 34.544014, 18.742008>,  <38.840435, 34.405399, 18.895069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497860, 34.544014, 18.742008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168097, 0.513629, 0.841385,
		0.488114, 0.784917, -0.381640,
		-0.856439, 0.346540, -0.382652,
		38.240929, 34.647976, 18.627213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835365, 35.153545, 19.051268>,  <38.840435, 34.405399, 18.895069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835365, 35.153545, 19.051268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456623, 35.032913, 19.006531>,  <38.229378, 34.960533, 18.979689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456623, 35.032913, 19.006531>,  <38.835365, 35.153545, 19.051268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456623, 35.032913, 19.006531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185154, 0.226709, 0.956201,
		-0.263016, 0.926095, -0.270500,
		-0.946858, -0.301580, -0.111843,
		38.172565, 34.942440, 18.972979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542892, 35.334133, 19.629372>,  <38.835365, 35.153545, 19.051268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542892, 35.334133, 19.629372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212379, 35.146500, 19.504658>,  <38.014072, 35.033920, 19.429829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212379, 35.146500, 19.504658>,  <38.542892, 35.334133, 19.629372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212379, 35.146500, 19.504658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394267, 0.086372, 0.914928,
		-0.402251, 0.878918, -0.256313,
		-0.826285, -0.469087, -0.311786,
		37.964493, 35.005775, 19.411121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996967, 35.662491, 19.996763>,  <38.542892, 35.334133, 19.629372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996967, 35.662491, 19.996763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875145, 35.298813, 19.883194>,  <37.802052, 35.080605, 19.815052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875145, 35.298813, 19.883194>,  <37.996967, 35.662491, 19.996763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875145, 35.298813, 19.883194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393140, -0.151516, 0.906909,
		-0.867575, 0.387827, -0.311295,
		-0.304557, -0.909194, -0.283921,
		37.783779, 35.026054, 19.798018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224487, 35.454369, 20.096554>,  <37.996967, 35.662491, 19.996763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224487, 35.454369, 20.096554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387024, 35.089302, 20.079041>,  <37.484547, 34.870262, 20.068533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387024, 35.089302, 20.079041>,  <37.224487, 35.454369, 20.096554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387024, 35.089302, 20.079041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381555, -0.213026, 0.899464,
		-0.830240, -0.348788, -0.434796,
		0.406345, -0.912670, -0.043781,
		37.508926, 34.815502, 20.065907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713745, 35.118183, 20.253191>,  <37.224487, 35.454369, 20.096554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713745, 35.118183, 20.253191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026165, 34.881325, 20.332516>,  <37.213615, 34.739212, 20.380112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026165, 34.881325, 20.332516>,  <36.713745, 35.118183, 20.253191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026165, 34.881325, 20.332516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386899, -0.209582, 0.897989,
		-0.490176, -0.778100, -0.392794,
		0.781048, -0.592144, 0.198314,
		37.260479, 34.703682, 20.392010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418098, 34.701504, 20.718088>,  <36.713745, 35.118183, 20.253191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418098, 34.701504, 20.718088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787754, 34.581436, 20.812634>,  <37.009548, 34.509396, 20.869360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787754, 34.581436, 20.812634>,  <36.418098, 34.701504, 20.718088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787754, 34.581436, 20.812634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199024, 0.149863, 0.968468,
		-0.326122, -0.942042, 0.078754,
		0.924140, -0.300165, 0.236363,
		37.064995, 34.491386, 20.883543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474045, 34.172493, 21.288958>,  <36.418098, 34.701504, 20.718088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474045, 34.172493, 21.288958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819172, 34.374180, 21.303455>,  <37.026249, 34.495193, 21.312155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819172, 34.374180, 21.303455>,  <36.474045, 34.172493, 21.288958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819172, 34.374180, 21.303455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110120, 0.117488, 0.986950,
		0.493381, -0.855546, 0.156895,
		0.862814, 0.504220, 0.036246,
		37.078018, 34.525444, 21.314329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673618, 34.017284, 21.957003>,  <36.474045, 34.172493, 21.288958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673618, 34.017284, 21.957003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925724, 34.295120, 21.818264>,  <37.076988, 34.461823, 21.735022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925724, 34.295120, 21.818264>,  <36.673618, 34.017284, 21.957003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925724, 34.295120, 21.818264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107768, 0.364152, 0.925084,
		0.768861, -0.620429, 0.154658,
		0.630268, 0.694594, -0.346844,
		37.114803, 34.503498, 21.714211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300987, 33.662354, 22.547491>,  <36.673618, 34.017284, 21.957003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300987, 33.662354, 22.547491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916435, 33.699604, 22.443901>,  <35.685703, 33.721954, 22.381746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916435, 33.699604, 22.443901>,  <36.300987, 33.662354, 22.547491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916435, 33.699604, 22.443901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274542, -0.258963, 0.926048,
		0.019177, 0.961387, 0.274530,
		-0.961384, 0.093129, -0.258975,
		35.628021, 33.727543, 22.366209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928711, 33.963776, 23.119253>,  <36.300987, 33.662354, 22.547491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928711, 33.963776, 23.119253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640102, 33.798855, 22.896751>,  <35.466938, 33.699902, 22.763250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640102, 33.798855, 22.896751>,  <35.928711, 33.963776, 23.119253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640102, 33.798855, 22.896751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494748, -0.255031, 0.830773,
		-0.484387, 0.874626, -0.019973,
		-0.721522, -0.412298, -0.556253,
		35.423645, 33.675167, 22.729876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219990, 34.201641, 23.141726>,  <35.928711, 33.963776, 23.119253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219990, 34.201641, 23.141726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196415, 33.814037, 23.045765>,  <35.182270, 33.581474, 22.988188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196415, 33.814037, 23.045765>,  <35.219990, 34.201641, 23.141726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196415, 33.814037, 23.045765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354201, -0.204383, 0.912562,
		-0.933310, 0.138760, -0.331176,
		-0.058940, -0.969006, -0.239901,
		35.178734, 33.523335, 22.973795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600330, 33.930023, 23.513062>,  <35.219990, 34.201641, 23.141726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600330, 33.930023, 23.513062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820114, 33.618740, 23.391407>,  <34.951984, 33.431973, 23.318415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820114, 33.618740, 23.391407>,  <34.600330, 33.930023, 23.513062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820114, 33.618740, 23.391407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240576, -0.495943, 0.834364,
		-0.800139, -0.385278, -0.459716,
		0.549455, -0.778204, -0.304135,
		34.984951, 33.385281, 23.300167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168827, 33.359886, 23.137728>,  <34.600330, 33.930023, 23.513062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168827, 33.359886, 23.137728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487232, 33.259186, 23.357906>,  <34.678276, 33.198765, 23.490013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487232, 33.259186, 23.357906>,  <34.168827, 33.359886, 23.137728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487232, 33.259186, 23.357906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603630, -0.262998, 0.752637,
		-0.044707, -0.931373, -0.361311,
		0.796010, -0.251747, 0.550447,
		34.726036, 33.183662, 23.523041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231449, 32.634537, 23.347942>,  <34.168827, 33.359886, 23.137728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231449, 32.634537, 23.347942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387486, 32.905224, 23.597702>,  <34.481106, 33.067638, 23.747559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387486, 32.905224, 23.597702>,  <34.231449, 32.634537, 23.347942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387486, 32.905224, 23.597702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589135, -0.337718, 0.734075,
		0.707636, -0.654213, 0.266940,
		0.390091, 0.676722, 0.624401,
		34.504513, 33.108242, 23.785023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498718, 32.365166, 23.863760>,  <34.231449, 32.634537, 23.347942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498718, 32.365166, 23.863760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451221, 32.732086, 24.015789>,  <34.422722, 32.952240, 24.107006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451221, 32.732086, 24.015789>,  <34.498718, 32.365166, 23.863760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451221, 32.732086, 24.015789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464784, -0.389606, 0.795099,
		0.877425, -0.082237, 0.472611,
		-0.118745, 0.917302, 0.380073,
		34.415596, 33.007278, 24.129810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831642, 32.388340, 24.539806>,  <34.498718, 32.365166, 23.863760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831642, 32.388340, 24.539806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554115, 32.675510, 24.517208>,  <34.387600, 32.847813, 24.503649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554115, 32.675510, 24.517208>,  <34.831642, 32.388340, 24.539806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554115, 32.675510, 24.517208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436924, -0.357291, 0.825494,
		0.572461, 0.597429, 0.561576,
		-0.693820, 0.717929, -0.056496,
		34.345970, 32.890888, 24.500259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889843, 32.583099, 25.238775>,  <34.831642, 32.388340, 24.539806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889843, 32.583099, 25.238775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543381, 32.706852, 25.081772>,  <34.335503, 32.781105, 24.987570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543381, 32.706852, 25.081772>,  <34.889843, 32.583099, 25.238775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543381, 32.706852, 25.081772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464290, -0.207439, 0.861048,
		0.184974, 0.928036, 0.323318,
		-0.866152, 0.309385, -0.392507,
		34.283535, 32.799667, 24.964020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539196, 33.058552, 25.743376>,  <34.889843, 32.583099, 25.238775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539196, 33.058552, 25.743376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230408, 32.932072, 25.522804>,  <34.045135, 32.856182, 25.390461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230408, 32.932072, 25.522804>,  <34.539196, 33.058552, 25.743376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230408, 32.932072, 25.522804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518715, -0.188049, 0.834010,
		-0.367409, 0.929869, -0.018848,
		-0.771975, -0.316199, -0.551428,
		33.998814, 32.837212, 25.357376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005508, 33.353451, 26.015017>,  <34.539196, 33.058552, 25.743376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005508, 33.353451, 26.015017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860607, 33.044830, 25.805836>,  <33.773666, 32.859657, 25.680326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860607, 33.044830, 25.805836>,  <34.005508, 33.353451, 26.015017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860607, 33.044830, 25.805836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523177, -0.296024, 0.799159,
		-0.771398, 0.563098, -0.296420,
		-0.362258, -0.771550, -0.522952,
		33.751930, 32.813366, 25.648951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399651, 33.266041, 26.325598>,  <34.005508, 33.353451, 26.015017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399651, 33.266041, 26.325598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444695, 32.929184, 26.114651>,  <33.471722, 32.727070, 25.988083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444695, 32.929184, 26.114651>,  <33.399651, 33.266041, 26.325598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444695, 32.929184, 26.114651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504629, -0.505676, 0.699744,
		-0.855960, 0.187326, -0.481914,
		0.112612, -0.842140, -0.527369,
		33.478477, 32.676540, 25.956440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710056, 32.890545, 26.356533>,  <33.399651, 33.266041, 26.325598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710056, 32.890545, 26.356533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990627, 32.617043, 26.276058>,  <33.158970, 32.452942, 26.227774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990627, 32.617043, 26.276058>,  <32.710056, 32.890545, 26.356533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990627, 32.617043, 26.276058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308711, -0.545873, 0.778922,
		-0.642420, -0.484245, -0.593972,
		0.701423, -0.683761, -0.201188,
		33.201054, 32.411915, 26.215702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361633, 32.223763, 26.640686>,  <32.710056, 32.890545, 26.356533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361633, 32.223763, 26.640686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728203, 32.094398, 26.546387>,  <32.948143, 32.016781, 26.489807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728203, 32.094398, 26.546387>,  <32.361633, 32.223763, 26.640686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728203, 32.094398, 26.546387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086428, -0.735078, 0.672451,
		-0.390771, -0.595874, -0.701593,
		0.916421, -0.323411, -0.235747,
		33.003128, 31.997375, 26.475662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344933, 31.523861, 26.479151>,  <32.361633, 32.223763, 26.640686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344933, 31.523861, 26.479151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712757, 31.617172, 26.605633>,  <32.933453, 31.673159, 26.681522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712757, 31.617172, 26.605633>,  <32.344933, 31.523861, 26.479151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712757, 31.617172, 26.605633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078189, -0.679992, 0.729039,
		0.385086, -0.695121, -0.607055,
		0.919563, 0.233278, 0.316206,
		32.988625, 31.687155, 26.700495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565907, 30.883596, 26.793287>,  <32.344933, 31.523861, 26.479151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565907, 30.883596, 26.793287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783863, 31.172802, 26.963154>,  <32.914639, 31.346325, 27.065073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783863, 31.172802, 26.963154>,  <32.565907, 30.883596, 26.793287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783863, 31.172802, 26.963154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139337, -0.421338, 0.896136,
		0.826846, -0.547472, -0.128843,
		0.544896, 0.723013, 0.424665,
		32.947330, 31.389706, 27.090553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952412, 30.515625, 27.336880>,  <32.565907, 30.883596, 26.793287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952412, 30.515625, 27.336880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003880, 30.894741, 27.453594>,  <33.034760, 31.122211, 27.523623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003880, 30.894741, 27.453594>,  <32.952412, 30.515625, 27.336880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003880, 30.894741, 27.453594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109226, -0.305985, 0.945750,
		0.985654, -0.089816, -0.142893,
		0.128666, 0.947790, 0.291786,
		33.042480, 31.179077, 27.541130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618011, 30.589148, 27.704109>,  <32.952412, 30.515625, 27.336880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618011, 30.589148, 27.704109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370358, 30.888618, 27.798893>,  <33.221764, 31.068300, 27.855764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370358, 30.888618, 27.798893>,  <33.618011, 30.589148, 27.704109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370358, 30.888618, 27.798893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085740, -0.235501, 0.968085,
		0.780587, 0.619695, 0.081616,
		-0.619138, 0.748677, 0.236962,
		33.184616, 31.113222, 27.869982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981392, 31.029915, 28.138758>,  <33.618011, 30.589148, 27.704109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981392, 31.029915, 28.138758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594643, 31.111164, 28.200592>,  <33.362595, 31.159914, 28.237692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594643, 31.111164, 28.200592>,  <33.981392, 31.029915, 28.138758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594643, 31.111164, 28.200592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126594, -0.144296, 0.981403,
		0.221652, 0.968462, 0.113802,
		-0.966874, 0.203123, 0.154585,
		33.304581, 31.172100, 28.246967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020729, 31.578705, 28.669424>,  <33.981392, 31.029915, 28.138758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020729, 31.578705, 28.669424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677280, 31.373707, 28.665089>,  <33.471210, 31.250708, 28.662487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677280, 31.373707, 28.665089>,  <34.020729, 31.578705, 28.669424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677280, 31.373707, 28.665089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001177, -0.023113, 0.999732,
		-0.512608, 0.858379, 0.020449,
		-0.858622, -0.512495, -0.010838,
		33.419693, 31.219959, 28.661837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680920, 31.849817, 29.319849>,  <34.020729, 31.578705, 28.669424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680920, 31.849817, 29.319849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496380, 31.512253, 29.210327>,  <33.385654, 31.309713, 29.144615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496380, 31.512253, 29.210327>,  <33.680920, 31.849817, 29.319849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496380, 31.512253, 29.210327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003543, -0.306854, 0.951750,
		-0.887211, 0.440059, 0.138578,
		-0.461349, -0.843912, -0.273804,
		33.357975, 31.259079, 29.128185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231411, 31.730444, 29.819483>,  <33.680920, 31.849817, 29.319849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231411, 31.730444, 29.819483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264057, 31.374607, 29.639721>,  <33.283646, 31.161104, 29.531864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264057, 31.374607, 29.639721>,  <33.231411, 31.730444, 29.819483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264057, 31.374607, 29.639721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003228, -0.451140, 0.892447,
		-0.996659, -0.071386, -0.039691,
		0.081614, -0.889593, -0.449403,
		33.288540, 31.107729, 29.504900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705814, 31.332781, 30.102106>,  <33.231411, 31.730444, 29.819483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705814, 31.332781, 30.102106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963272, 31.069527, 29.945858>,  <33.117748, 30.911575, 29.852110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963272, 31.069527, 29.945858>,  <32.705814, 31.332781, 30.102106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963272, 31.069527, 29.945858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004268, -0.513474, 0.858095,
		-0.765314, -0.550640, -0.333303,
		0.643643, -0.658134, -0.390619,
		33.156364, 30.872087, 29.828672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486206, 30.746042, 30.201639>,  <32.705814, 31.332781, 30.102106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486206, 30.746042, 30.201639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881294, 30.700272, 30.159103>,  <33.118347, 30.672810, 30.133583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881294, 30.700272, 30.159103>,  <32.486206, 30.746042, 30.201639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881294, 30.700272, 30.159103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063624, -0.327025, 0.942872,
		-0.142662, -0.938063, -0.315731,
		0.987725, -0.114424, -0.106337,
		33.177612, 30.665943, 30.127203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591301, 30.112160, 30.467699>,  <32.486206, 30.746042, 30.201639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591301, 30.112160, 30.467699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975853, 30.222031, 30.474689>,  <33.206585, 30.287952, 30.478884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975853, 30.222031, 30.474689>,  <32.591301, 30.112160, 30.467699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975853, 30.222031, 30.474689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074159, -0.319669, 0.944623,
		0.265052, -0.906844, -0.327692,
		0.961378, 0.274675, 0.017478,
		33.264267, 30.304434, 30.479933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942146, 29.640289, 30.892197>,  <32.591301, 30.112160, 30.467699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942146, 29.640289, 30.892197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167336, 29.970627, 30.905109>,  <33.302448, 30.168829, 30.912857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167336, 29.970627, 30.905109>,  <32.942146, 29.640289, 30.892197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167336, 29.970627, 30.905109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079519, -0.093005, 0.992485,
		0.822641, -0.556175, -0.118030,
		0.562972, 0.825845, 0.032283,
		33.336227, 30.218380, 30.914795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427380, 29.566856, 31.286257>,  <32.942146, 29.640289, 30.892197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427380, 29.566856, 31.286257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438408, 29.966686, 31.282398>,  <33.445026, 30.206583, 31.280083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438408, 29.966686, 31.282398>,  <33.427380, 29.566856, 31.286257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438408, 29.966686, 31.282398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091741, 0.007077, 0.995758,
		0.995401, -0.028340, -0.091507,
		0.027572, 0.999573, -0.009645,
		33.446678, 30.266558, 31.279505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791527, 29.626617, 31.790031>,  <33.427380, 29.566856, 31.286257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791527, 29.626617, 31.790031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672001, 30.004498, 31.735996>,  <33.600285, 30.231226, 31.703575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672001, 30.004498, 31.735996>,  <33.791527, 29.626617, 31.790031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672001, 30.004498, 31.735996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173824, 0.193065, 0.965666,
		0.938347, 0.265072, -0.221903,
		-0.298813, 0.944702, -0.135086,
		33.582355, 30.287909, 31.695471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241943, 30.029343, 32.239506>,  <33.791527, 29.626617, 31.790031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241943, 30.029343, 32.239506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917217, 30.257687, 32.190380>,  <33.722382, 30.394693, 32.160904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917217, 30.257687, 32.190380>,  <34.241943, 30.029343, 32.239506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917217, 30.257687, 32.190380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061048, 0.292144, 0.954424,
		0.580720, 0.767314, -0.272015,
		-0.811811, 0.570860, -0.122811,
		33.673676, 30.428944, 32.153538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414524, 30.631973, 32.633595>,  <34.241943, 30.029343, 32.239506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414524, 30.631973, 32.633595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017155, 30.620739, 32.589203>,  <33.778732, 30.613998, 32.562569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017155, 30.620739, 32.589203>,  <34.414524, 30.631973, 32.633595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017155, 30.620739, 32.589203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114323, 0.294199, 0.948882,
		0.006000, 0.955331, -0.295476,
		-0.993426, -0.028087, -0.110981,
		33.719128, 30.612312, 32.555908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125278, 31.311596, 32.707584>,  <34.414524, 30.631973, 32.633595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125278, 31.311596, 32.707584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881767, 31.019962, 32.832687>,  <33.735661, 30.844982, 32.907749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881767, 31.019962, 32.832687>,  <34.125278, 31.311596, 32.707584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881767, 31.019962, 32.832687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057878, 0.434000, 0.899052,
		-0.791223, 0.529225, -0.306410,
		-0.608782, -0.729085, 0.312760,
		33.699131, 30.801237, 32.926514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535366, 31.643110, 33.044170>,  <34.125278, 31.311596, 32.707584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535366, 31.643110, 33.044170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515671, 31.263443, 33.168530>,  <33.503853, 31.035643, 33.243145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515671, 31.263443, 33.168530>,  <33.535366, 31.643110, 33.044170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515671, 31.263443, 33.168530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201695, 0.314308, 0.927647,
		-0.978210, -0.017028, -0.206920,
		-0.049241, -0.949168, 0.310894,
		33.500900, 30.978693, 33.261799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050838, 31.663578, 33.619789>,  <33.535366, 31.643110, 33.044170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050838, 31.663578, 33.619789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181797, 31.289310, 33.672455>,  <33.260372, 31.064749, 33.704052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181797, 31.289310, 33.672455>,  <33.050838, 31.663578, 33.619789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181797, 31.289310, 33.672455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230335, 0.056105, 0.971493,
		-0.916384, -0.348387, -0.197149,
		0.327394, -0.935670, 0.131660,
		33.280014, 31.008610, 33.711952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511585, 31.298462, 33.972958>,  <33.050838, 31.663578, 33.619789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511585, 31.298462, 33.972958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863312, 31.126484, 34.054890>,  <33.074348, 31.023296, 34.104050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863312, 31.126484, 34.054890>,  <32.511585, 31.298462, 33.972958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863312, 31.126484, 34.054890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204308, 0.047964, 0.977731,
		-0.430195, -0.901580, -0.045666,
		0.879312, -0.429945, 0.204833,
		33.127106, 30.997501, 34.116341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298916, 30.645451, 34.378994>,  <32.511585, 31.298462, 33.972958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298916, 30.645451, 34.378994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678703, 30.742596, 34.458527>,  <32.906574, 30.800882, 34.506245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678703, 30.742596, 34.458527>,  <32.298916, 30.645451, 34.378994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678703, 30.742596, 34.458527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213165, 0.033981, 0.976425,
		0.230380, -0.969466, 0.084034,
		0.949466, 0.242862, 0.198828,
		32.963543, 30.815454, 34.518173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552448, 30.080576, 34.820881>,  <32.298916, 30.645451, 34.378994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552448, 30.080576, 34.820881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781448, 30.404675, 34.871059>,  <32.918850, 30.599134, 34.901165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781448, 30.404675, 34.871059>,  <32.552448, 30.080576, 34.820881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781448, 30.404675, 34.871059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071294, -0.103228, 0.992099,
		0.816797, -0.576924, -0.001333,
		0.572503, 0.810248, 0.125448,
		32.953201, 30.647749, 34.908695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962807, 29.893248, 35.493271>,  <32.552448, 30.080576, 34.820881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962807, 29.893248, 35.493271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031967, 30.284634, 35.448170>,  <33.073463, 30.519464, 35.421108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031967, 30.284634, 35.448170>,  <32.962807, 29.893248, 35.493271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031967, 30.284634, 35.448170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006402, 0.115592, 0.993276,
		0.984919, -0.171015, 0.026250,
		0.172900, 0.978464, -0.112754,
		33.083836, 30.578173, 35.414345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412502, 29.981501, 36.044853>,  <32.962807, 29.893248, 35.493271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412502, 29.981501, 36.044853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285545, 30.346790, 35.942654>,  <33.209370, 30.565964, 35.881332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285545, 30.346790, 35.942654>,  <33.412502, 29.981501, 36.044853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285545, 30.346790, 35.942654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005348, 0.267706, 0.963485,
		0.948278, 0.307172, -0.080085,
		-0.317395, 0.913224, -0.255503,
		33.190327, 30.620758, 35.866001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797928, 30.441978, 36.376381>,  <33.412502, 29.981501, 36.044853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797928, 30.441978, 36.376381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448277, 30.622547, 36.304691>,  <33.238487, 30.730888, 36.261677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448277, 30.622547, 36.304691>,  <33.797928, 30.441978, 36.376381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448277, 30.622547, 36.304691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035309, 0.308958, 0.950420,
		0.484412, 0.837116, -0.254130,
		-0.874127, 0.451422, -0.179221,
		33.186039, 30.757975, 36.250927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937912, 31.050295, 36.664387>,  <33.797928, 30.441978, 36.376381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937912, 31.050295, 36.664387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539814, 31.057957, 36.626171>,  <33.300957, 31.062553, 36.603241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539814, 31.057957, 36.626171>,  <33.937912, 31.050295, 36.664387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539814, 31.057957, 36.626171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087975, 0.244926, 0.965542,
		0.041893, 0.969353, -0.242075,
		-0.995241, 0.019153, -0.095540,
		33.241241, 31.063704, 36.597507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738384, 31.695457, 36.817421>,  <33.937912, 31.050295, 36.664387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738384, 31.695457, 36.817421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422195, 31.460857, 36.888042>,  <33.232483, 31.320097, 36.930416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422195, 31.460857, 36.888042>,  <33.738384, 31.695457, 36.817421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422195, 31.460857, 36.888042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097879, 0.405505, 0.908837,
		-0.604627, 0.701129, -0.377946,
		-0.790472, -0.586501, 0.176554,
		33.185055, 31.284906, 36.941010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172779, 32.128033, 37.164803>,  <33.738384, 31.695457, 36.817421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172779, 32.128033, 37.164803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078236, 31.752083, 37.263405>,  <33.021507, 31.526512, 37.322567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078236, 31.752083, 37.263405>,  <33.172779, 32.128033, 37.164803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078236, 31.752083, 37.263405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177342, 0.291157, 0.940095,
		-0.955345, 0.178486, -0.235498,
		-0.236361, -0.939878, 0.246502,
		33.007328, 31.470119, 37.337357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603199, 32.196880, 37.647724>,  <33.172779, 32.128033, 37.164803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603199, 32.196880, 37.647724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751991, 31.835175, 37.731571>,  <32.841267, 31.618151, 37.781879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751991, 31.835175, 37.731571>,  <32.603199, 32.196880, 37.647724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751991, 31.835175, 37.731571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022371, 0.234486, 0.971862,
		-0.927972, -0.356822, 0.107453,
		0.371978, -0.904264, 0.209614,
		32.863586, 31.563896, 37.794456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335472, 32.058220, 38.316380>,  <32.603199, 32.196880, 37.647724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335472, 32.058220, 38.316380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610424, 31.769894, 38.280773>,  <32.775394, 31.596897, 38.259411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610424, 31.769894, 38.280773>,  <32.335472, 32.058220, 38.316380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610424, 31.769894, 38.280773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208691, 0.078633, 0.974815,
		-0.695667, -0.688648, 0.204479,
		0.687383, -0.720820, -0.089012,
		32.816639, 31.553648, 38.254070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197514, 31.424938, 38.943447>,  <32.335472, 32.058220, 38.316380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197514, 31.424938, 38.943447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581692, 31.426109, 38.832062>,  <32.812199, 31.426811, 38.765232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581692, 31.426109, 38.832062>,  <32.197514, 31.424938, 38.943447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581692, 31.426109, 38.832062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274175, 0.165132, 0.947396,
		0.048754, -0.986267, 0.157798,
		0.960443, 0.002925, -0.278461,
		32.869823, 31.426987, 38.748524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570297, 30.897144, 39.401073>,  <32.197514, 31.424938, 38.943447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570297, 30.897144, 39.401073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814728, 31.175121, 39.249474>,  <32.961388, 31.341908, 39.158516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814728, 31.175121, 39.249474>,  <32.570297, 30.897144, 39.401073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814728, 31.175121, 39.249474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445158, 0.094201, 0.890483,
		0.654538, -0.712866, -0.251796,
		0.611076, 0.694944, -0.378996,
		32.998051, 31.383604, 39.135777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207691, 30.570944, 39.591351>,  <32.570297, 30.897144, 39.401073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207691, 30.570944, 39.591351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232899, 30.965202, 39.528702>,  <33.248024, 31.201757, 39.491112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232899, 30.965202, 39.528702>,  <33.207691, 30.570944, 39.591351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232899, 30.965202, 39.528702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272346, 0.133995, 0.952824,
		0.960134, -0.102701, -0.259992,
		0.063019, 0.985646, -0.156623,
		33.251804, 31.260897, 39.481716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867100, 30.831690, 39.714157>,  <33.207691, 30.570944, 39.591351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867100, 30.831690, 39.714157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622463, 31.136101, 39.800686>,  <33.475681, 31.318747, 39.852604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622463, 31.136101, 39.800686>,  <33.867100, 30.831690, 39.714157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622463, 31.136101, 39.800686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366912, 0.030578, 0.929753,
		0.700951, 0.648000, -0.297931,
		-0.611590, 0.761026, 0.216325,
		33.438988, 31.364408, 39.865585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383076, 31.329029, 40.001766>,  <33.867100, 30.831690, 39.714157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383076, 31.329029, 40.001766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010944, 31.336803, 40.148254>,  <33.787666, 31.341469, 40.236149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010944, 31.336803, 40.148254>,  <34.383076, 31.329029, 40.001766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010944, 31.336803, 40.148254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366227, -0.003345, 0.930520,
		0.019311, 0.999806, -0.004007,
		-0.930325, 0.019437, 0.366220,
		33.731846, 31.342634, 40.258121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342327, 31.928486, 40.567665>,  <34.383076, 31.329029, 40.001766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342327, 31.928486, 40.567665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081657, 31.628666, 40.614140>,  <33.925255, 31.448774, 40.642025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081657, 31.628666, 40.614140>,  <34.342327, 31.928486, 40.567665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081657, 31.628666, 40.614140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331483, -0.143658, 0.932460,
		-0.682234, 0.646172, 0.342081,
		-0.651672, -0.749550, 0.116187,
		33.886154, 31.403801, 40.648994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854763, 32.076294, 41.128643>,  <34.342327, 31.928486, 40.567665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854763, 32.076294, 41.128643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946854, 31.688255, 41.097900>,  <34.002106, 31.455431, 41.079453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946854, 31.688255, 41.097900>,  <33.854763, 32.076294, 41.128643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946854, 31.688255, 41.097900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324094, 0.001961, 0.946023,
		-0.917584, -0.242707, 0.314854,
		0.230224, -0.970098, -0.076860,
		34.015923, 31.397226, 41.074841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674656, 31.955975, 41.937305>,  <33.854763, 32.076294, 41.128643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674656, 31.955975, 41.937305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324169, 32.119122, 42.039982>,  <33.113876, 32.217010, 42.101585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324169, 32.119122, 42.039982>,  <33.674656, 31.955975, 41.937305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324169, 32.119122, 42.039982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246733, 0.837207, -0.488064,
		-0.413967, -0.364317, -0.834209,
		-0.876216, 0.407869, 0.256687,
		33.061306, 32.241482, 42.116989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177299, 32.315533, 41.402199>,  <33.674656, 31.955975, 41.937305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177299, 32.315533, 41.402199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178188, 32.483608, 41.765171>,  <33.178722, 32.584454, 41.982956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178188, 32.483608, 41.765171>,  <33.177299, 32.315533, 41.402199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178188, 32.483608, 41.765171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283674, 0.869892, -0.403506,
		-0.958918, 0.258313, -0.117263,
		0.002225, 0.420193, 0.907432,
		33.178856, 32.609665, 42.037399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735977, 32.889542, 41.335789>,  <33.177299, 32.315533, 41.402199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735977, 32.889542, 41.335789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018425, 32.936752, 41.615063>,  <33.187893, 32.965080, 41.782627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018425, 32.936752, 41.615063>,  <32.735977, 32.889542, 41.335789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018425, 32.936752, 41.615063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278882, 0.859959, -0.427429,
		-0.650859, 0.496528, 0.574319,
		0.706121, 0.118029, 0.698185,
		33.230263, 32.972160, 41.824516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674778, 33.592720, 41.702805>,  <32.735977, 32.889542, 41.335789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674778, 33.592720, 41.702805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044434, 33.442776, 41.673271>,  <33.266228, 33.352810, 41.655552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044434, 33.442776, 41.673271>,  <32.674778, 33.592720, 41.702805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044434, 33.442776, 41.673271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226775, 0.693721, -0.683612,
		0.307479, 0.615007, 0.726102,
		0.924137, -0.374858, -0.073837,
		33.321674, 33.330318, 41.651119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161610, 34.077412, 41.767078>,  <32.674778, 33.592720, 41.702805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161610, 34.077412, 41.767078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317921, 33.813606, 41.510223>,  <33.411705, 33.655323, 41.356110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317921, 33.813606, 41.510223>,  <33.161610, 34.077412, 41.767078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317921, 33.813606, 41.510223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005890, 0.699385, -0.714721,
		0.920468, 0.275512, 0.277185,
		0.390773, -0.659511, -0.642139,
		33.435154, 33.615753, 41.317581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978333, 34.450096, 41.033638>,  <33.161610, 34.077412, 41.767078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978333, 34.450096, 41.033638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171574, 34.118942, 40.919640>,  <33.287518, 33.920250, 40.851242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171574, 34.118942, 40.919640>,  <32.978333, 34.450096, 41.033638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171574, 34.118942, 40.919640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101988, 0.270073, -0.957423,
		0.869601, 0.491604, 0.046040,
		0.483107, -0.827881, -0.284993,
		33.316505, 33.870579, 40.834141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366234, 34.725742, 40.503292>,  <32.978333, 34.450096, 41.033638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366234, 34.725742, 40.503292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383667, 34.328079, 40.463795>,  <33.394127, 34.089481, 40.440098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383667, 34.328079, 40.463795>,  <33.366234, 34.725742, 40.503292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383667, 34.328079, 40.463795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131459, 0.103683, -0.985884,
		0.990363, 0.029987, 0.135210,
		0.043582, -0.994158, -0.098742,
		33.396740, 34.029831, 40.434174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013474, 34.614429, 40.042099>,  <33.366234, 34.725742, 40.503292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013474, 34.614429, 40.042099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755653, 34.310040, 40.012505>,  <33.600964, 34.127407, 39.994747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755653, 34.310040, 40.012505>,  <34.013474, 34.614429, 40.042099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755653, 34.310040, 40.012505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067469, 0.039782, -0.996928,
		0.761582, -0.647559, 0.025702,
		-0.644547, -0.760976, -0.073987,
		33.562290, 34.081745, 39.990307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277828, 34.178837, 39.492722>,  <34.013474, 34.614429, 40.042099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277828, 34.178837, 39.492722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894241, 34.071327, 39.528805>,  <33.664089, 34.006821, 39.550453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894241, 34.071327, 39.528805>,  <34.277828, 34.178837, 39.492722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894241, 34.071327, 39.528805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108280, 0.053176, -0.992697,
		0.262018, -0.961733, -0.080098,
		-0.958969, -0.268777, 0.090204,
		33.606552, 33.990696, 39.555866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229877, 33.762653, 38.807560>,  <34.277828, 34.178837, 39.492722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229877, 33.762653, 38.807560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883347, 33.862232, 38.980762>,  <33.675426, 33.921982, 39.084682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883347, 33.862232, 38.980762>,  <34.229877, 33.762653, 38.807560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883347, 33.862232, 38.980762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342863, 0.333996, -0.878004,
		-0.363201, -0.909104, -0.203995,
		-0.866331, 0.248950, 0.433006,
		33.623447, 33.936916, 39.110664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679905, 33.330376, 38.468079>,  <34.229877, 33.762653, 38.807560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679905, 33.330376, 38.468079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494534, 33.650642, 38.619953>,  <33.383312, 33.842804, 38.711079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494534, 33.650642, 38.619953>,  <33.679905, 33.330376, 38.468079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494534, 33.650642, 38.619953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402477, 0.191546, -0.895166,
		-0.789459, -0.567662, 0.233483,
		-0.463429, 0.800668, 0.379689,
		33.355503, 33.890842, 38.733860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056541, 33.367188, 38.019489>,  <33.679905, 33.330376, 38.468079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056541, 33.367188, 38.019489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091076, 33.722591, 38.199753>,  <33.111797, 33.935833, 38.307911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091076, 33.722591, 38.199753>,  <33.056541, 33.367188, 38.019489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091076, 33.722591, 38.199753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318341, 0.453235, -0.832609,
		-0.944037, -0.071582, 0.321978,
		0.086332, 0.888513, 0.450658,
		33.116974, 33.989143, 38.334949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381813, 33.750153, 37.937889>,  <33.056541, 33.367188, 38.019489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381813, 33.750153, 37.937889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674339, 34.011501, 38.016155>,  <32.849854, 34.168312, 38.063114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674339, 34.011501, 38.016155>,  <32.381813, 33.750153, 37.937889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674339, 34.011501, 38.016155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282972, 0.551691, -0.784579,
		-0.620571, 0.518404, 0.588345,
		0.731313, 0.653372, 0.195670,
		32.893734, 34.207512, 38.074856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170475, 34.531216, 37.847069>,  <32.381813, 33.750153, 37.937889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170475, 34.531216, 37.847069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568256, 34.524895, 37.805481>,  <32.806927, 34.521103, 37.780529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568256, 34.524895, 37.805481>,  <32.170475, 34.531216, 37.847069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568256, 34.524895, 37.805481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076565, 0.568978, -0.818781,
		0.072095, 0.822201, 0.564613,
		0.994455, -0.015801, -0.103972,
		32.866592, 34.520153, 37.774288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334824, 35.182709, 37.501881>,  <32.170475, 34.531216, 37.847069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334824, 35.182709, 37.501881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666946, 34.968922, 37.438713>,  <32.866219, 34.840649, 37.400814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666946, 34.968922, 37.438713>,  <32.334824, 35.182709, 37.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666946, 34.968922, 37.438713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162251, 0.502903, -0.848978,
		0.533169, 0.679288, 0.504281,
		0.830304, -0.534469, -0.157918,
		32.916039, 34.808582, 37.391338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865059, 35.662739, 37.327618>,  <32.334824, 35.182709, 37.501881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865059, 35.662739, 37.327618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982044, 35.307316, 37.186237>,  <33.052235, 35.094063, 37.101410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982044, 35.307316, 37.186237>,  <32.865059, 35.662739, 37.327618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982044, 35.307316, 37.186237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255697, 0.428813, -0.866451,
		0.921457, 0.163033, 0.352615,
		0.292466, -0.888560, -0.353446,
		33.069782, 35.040749, 37.080204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363930, 35.846416, 36.787659>,  <32.865059, 35.662739, 37.327618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363930, 35.846416, 36.787659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259132, 35.467743, 36.712669>,  <33.196255, 35.240540, 36.667675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259132, 35.467743, 36.712669>,  <33.363930, 35.846416, 36.787659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259132, 35.467743, 36.712669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137317, 0.155711, -0.978212,
		0.955251, -0.282028, 0.089201,
		-0.261993, -0.946686, -0.187470,
		33.180534, 35.183739, 36.656429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948166, 35.553875, 36.393456>,  <33.363930, 35.846416, 36.787659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948166, 35.553875, 36.393456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641178, 35.310570, 36.312454>,  <33.456985, 35.164589, 36.263855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641178, 35.310570, 36.312454>,  <33.948166, 35.553875, 36.393456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641178, 35.310570, 36.312454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284517, -0.040107, -0.957832,
		0.574489, -0.792724, 0.203841,
		-0.767471, -0.608260, -0.202502,
		33.410938, 35.128090, 36.251705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218605, 35.116806, 35.913670>,  <33.948166, 35.553875, 36.393456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218605, 35.116806, 35.913670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825031, 35.071453, 35.858501>,  <33.588886, 35.044243, 35.825401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825031, 35.071453, 35.858501>,  <34.218605, 35.116806, 35.913670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825031, 35.071453, 35.858501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140165, -0.012066, -0.990055,
		0.110589, -0.993478, 0.027764,
		-0.983933, -0.113380, -0.137917,
		33.529850, 35.037437, 35.817127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198399, 34.736584, 35.337723>,  <34.218605, 35.116806, 35.913670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198399, 34.736584, 35.337723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825638, 34.881588, 35.342720>,  <33.601982, 34.968590, 35.345718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825638, 34.881588, 35.342720>,  <34.198399, 34.736584, 35.337723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825638, 34.881588, 35.342720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038390, -0.064313, -0.997191,
		-0.360684, -0.929760, 0.073850,
		-0.931897, 0.362506, 0.012497,
		33.546070, 34.990341, 35.346470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744751, 34.287098, 34.963894>,  <34.198399, 34.736584, 35.337723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744751, 34.287098, 34.963894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563091, 34.642170, 34.933506>,  <33.454098, 34.855213, 34.915276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563091, 34.642170, 34.933506>,  <33.744751, 34.287098, 34.963894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563091, 34.642170, 34.933506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124406, -0.147615, -0.981190,
		-0.882198, -0.436154, 0.177472,
		-0.454147, 0.887682, -0.075966,
		33.426846, 34.908474, 34.910717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128162, 34.098892, 34.712608>,  <33.744751, 34.287098, 34.963894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128162, 34.098892, 34.712608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225891, 34.476250, 34.622875>,  <33.284527, 34.702663, 34.569035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225891, 34.476250, 34.622875>,  <33.128162, 34.098892, 34.712608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225891, 34.476250, 34.622875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210598, -0.174196, -0.961927,
		-0.946549, 0.282262, 0.156117,
		0.244320, 0.943390, -0.224329,
		33.299187, 34.759266, 34.555576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828251, 34.136410, 34.050579>,  <33.128162, 34.098892, 34.712608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828251, 34.136410, 34.050579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046021, 34.471531, 34.067028>,  <33.176682, 34.672604, 34.076897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046021, 34.471531, 34.067028>,  <32.828251, 34.136410, 34.050579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046021, 34.471531, 34.067028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079436, -0.002691, -0.996836,
		-0.835041, 0.545967, -0.068017,
		0.544423, 0.837802, 0.041122,
		33.209347, 34.722870, 34.079365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523464, 34.544605, 33.487133>,  <32.828251, 34.136410, 34.050579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523464, 34.544605, 33.487133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901466, 34.650757, 33.563599>,  <33.128265, 34.714447, 33.609478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901466, 34.650757, 33.563599>,  <32.523464, 34.544605, 33.487133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901466, 34.650757, 33.563599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166876, 0.111457, -0.979658,
		-0.281287, 0.957680, 0.061042,
		0.945003, 0.265379, 0.191165,
		33.184967, 34.730370, 33.620949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726166, 35.089245, 33.044701>,  <32.523464, 34.544605, 33.487133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726166, 35.089245, 33.044701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089512, 34.956142, 33.146011>,  <33.307518, 34.876282, 33.206799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089512, 34.956142, 33.146011>,  <32.726166, 35.089245, 33.044701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089512, 34.956142, 33.146011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286174, 0.052988, -0.956711,
		0.304934, 0.941522, 0.143359,
		0.908361, -0.332760, 0.253281,
		33.362019, 34.856316, 33.221996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184513, 35.539955, 32.744560>,  <32.726166, 35.089245, 33.044701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184513, 35.539955, 32.744560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392853, 35.204117, 32.806274>,  <33.517857, 35.002613, 32.843304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392853, 35.204117, 32.806274>,  <33.184513, 35.539955, 32.744560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392853, 35.204117, 32.806274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372129, 0.060654, -0.926197,
		0.768269, 0.539822, 0.344028,
		0.520848, -0.839591, 0.154284,
		33.549107, 34.952240, 32.852558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591637, 35.565964, 32.277557>,  <33.184513, 35.539955, 32.744560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591637, 35.565964, 32.277557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695023, 35.187080, 32.353447>,  <33.757053, 34.959751, 32.398979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695023, 35.187080, 32.353447>,  <33.591637, 35.565964, 32.277557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695023, 35.187080, 32.353447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240722, -0.127048, -0.962243,
		0.935546, 0.294380, 0.195175,
		0.258468, -0.947206, 0.189723,
		33.772564, 34.902920, 32.410362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276684, 35.498791, 32.095387>,  <33.591637, 35.565964, 32.277557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276684, 35.498791, 32.095387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133652, 35.125896, 32.117569>,  <34.047832, 34.902161, 32.130878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133652, 35.125896, 32.117569>,  <34.276684, 35.498791, 32.095387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133652, 35.125896, 32.117569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178298, -0.126444, -0.975818,
		0.916704, -0.339044, 0.211430,
		-0.357579, -0.932235, 0.055461,
		34.026379, 34.846226, 32.134209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718449, 34.929100, 31.741930>,  <34.276684, 35.498791, 32.095387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718449, 34.929100, 31.741930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356033, 34.759830, 31.742912>,  <34.138584, 34.658268, 31.743502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356033, 34.759830, 31.742912>,  <34.718449, 34.929100, 31.741930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356033, 34.759830, 31.742912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129817, -0.283455, -0.950158,
		0.402783, -0.860566, 0.311758,
		-0.906043, -0.423179, 0.002454,
		34.084221, 34.632877, 31.743649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809212, 34.289169, 31.359772>,  <34.718449, 34.929100, 31.741930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809212, 34.289169, 31.359772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418369, 34.372295, 31.341499>,  <34.183865, 34.422169, 31.330536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418369, 34.372295, 31.341499>,  <34.809212, 34.289169, 31.359772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418369, 34.372295, 31.341499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005092, -0.191788, -0.981423,
		-0.212727, -0.959180, 0.186337,
		-0.977099, 0.207827, -0.045682,
		34.125240, 34.434639, 31.327795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553368, 33.833302, 30.773788>,  <34.809212, 34.289169, 31.359772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553368, 33.833302, 30.773788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254963, 34.088093, 30.851486>,  <34.075920, 34.240967, 30.898104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254963, 34.088093, 30.851486>,  <34.553368, 33.833302, 30.773788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254963, 34.088093, 30.851486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196284, 0.068403, -0.978158,
		-0.636351, -0.767842, 0.073999,
		-0.746009, 0.636977, 0.194244,
		34.031158, 34.279186, 30.909760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923653, 33.503582, 30.344179>,  <34.553368, 33.833302, 30.773788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923653, 33.503582, 30.344179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904312, 33.900093, 30.393227>,  <33.892708, 34.138000, 30.422655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904312, 33.900093, 30.393227>,  <33.923653, 33.503582, 30.344179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904312, 33.900093, 30.393227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114495, 0.116455, -0.986575,
		-0.992247, -0.061738, 0.107865,
		-0.048348, 0.991275, 0.122621,
		33.889809, 34.197475, 30.430014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373787, 33.679531, 29.940779>,  <33.923653, 33.503582, 30.344179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373787, 33.679531, 29.940779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539165, 34.037090, 30.010059>,  <33.638393, 34.251625, 30.051628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539165, 34.037090, 30.010059>,  <33.373787, 33.679531, 29.940779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539165, 34.037090, 30.010059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139990, 0.250367, -0.957977,
		-0.899701, 0.371830, 0.228651,
		0.413451, 0.893901, 0.173203,
		33.663200, 34.305260, 30.062021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873543, 34.216019, 29.588291>,  <33.373787, 33.679531, 29.940779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873543, 34.216019, 29.588291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243015, 34.366146, 29.619122>,  <33.464699, 34.456223, 29.637621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243015, 34.366146, 29.619122>,  <32.873543, 34.216019, 29.588291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243015, 34.366146, 29.619122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088879, 0.405561, -0.909737,
		-0.372705, 0.833458, 0.407968,
		0.923684, 0.375323, 0.077077,
		33.520119, 34.478745, 29.642244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794312, 34.901264, 29.317974>,  <32.873543, 34.216019, 29.588291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794312, 34.901264, 29.317974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182411, 34.808308, 29.290806>,  <33.415272, 34.752533, 29.274506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182411, 34.808308, 29.290806>,  <32.794312, 34.901264, 29.317974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182411, 34.808308, 29.290806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044700, 0.447653, -0.893089,
		0.237950, 0.863482, 0.444723,
		0.970248, -0.232390, -0.067921,
		33.473484, 34.738590, 29.270430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986755, 35.373524, 28.872738>,  <32.794312, 34.901264, 29.317974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986755, 35.373524, 28.872738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310043, 35.138165, 28.882183>,  <33.504017, 34.996948, 28.887850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310043, 35.138165, 28.882183>,  <32.986755, 35.373524, 28.872738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310043, 35.138165, 28.882183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211646, 0.252826, -0.944079,
		0.549527, 0.768025, 0.328873,
		0.808224, -0.588401, 0.023615,
		33.552509, 34.961643, 28.889267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482529, 35.744961, 28.793600>,  <32.986755, 35.373524, 28.872738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482529, 35.744961, 28.793600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605953, 35.380009, 28.686012>,  <33.680008, 35.161037, 28.621460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605953, 35.380009, 28.686012>,  <33.482529, 35.744961, 28.793600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605953, 35.380009, 28.686012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306778, 0.363113, -0.879794,
		0.900377, 0.188954, 0.391941,
		0.308559, -0.912385, -0.268971,
		33.698521, 35.106293, 28.605320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078152, 35.861759, 28.441580>,  <33.482529, 35.744961, 28.793600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078152, 35.861759, 28.441580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961227, 35.495640, 28.330738>,  <33.891071, 35.275970, 28.264233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961227, 35.495640, 28.330738>,  <34.078152, 35.861759, 28.441580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961227, 35.495640, 28.330738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178985, 0.232280, -0.956039,
		0.939424, -0.329059, 0.095926,
		-0.292311, -0.915295, -0.277106,
		33.873535, 35.221050, 28.247606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461205, 35.731560, 27.858036>,  <34.078152, 35.861759, 28.441580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461205, 35.731560, 27.858036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199505, 35.430840, 27.825165>,  <34.042484, 35.250408, 27.805441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199505, 35.430840, 27.825165>,  <34.461205, 35.731560, 27.858036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199505, 35.430840, 27.825165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037615, 0.076182, -0.996384,
		0.755340, -0.654978, -0.021564,
		-0.654252, -0.751798, -0.082181,
		34.003231, 35.205299, 27.800510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763554, 35.312180, 27.376558>,  <34.461205, 35.731560, 27.858036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763554, 35.312180, 27.376558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372799, 35.227295, 27.386784>,  <34.138344, 35.176365, 27.392918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372799, 35.227295, 27.386784>,  <34.763554, 35.312180, 27.376558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372799, 35.227295, 27.386784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061300, 0.163586, -0.984623,
		0.204771, -0.963433, -0.172814,
		-0.976888, -0.212216, 0.025561,
		34.079731, 35.163631, 27.394453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634342, 34.789616, 26.840647>,  <34.763554, 35.312180, 27.376558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634342, 34.789616, 26.840647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282211, 34.967319, 26.907177>,  <34.070934, 35.073940, 26.947094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282211, 34.967319, 26.907177>,  <34.634342, 34.789616, 26.840647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282211, 34.967319, 26.907177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070920, 0.223425, -0.972138,
		-0.469040, -0.867593, -0.165181,
		-0.880325, 0.444256, 0.166325,
		34.018112, 35.100597, 26.957075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192364, 34.533230, 26.295931>,  <34.634342, 34.789616, 26.840647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192364, 34.533230, 26.295931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022324, 34.867092, 26.436012>,  <33.920300, 35.067410, 26.520061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022324, 34.867092, 26.436012>,  <34.192364, 34.533230, 26.295931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022324, 34.867092, 26.436012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344956, 0.208314, -0.915211,
		-0.836837, -0.509861, 0.199365,
		-0.425100, 0.834654, 0.350205,
		33.894794, 35.117489, 26.541073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604950, 34.645084, 25.781315>,  <34.192364, 34.533230, 26.295931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604950, 34.645084, 25.781315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638199, 34.981476, 25.995171>,  <33.658150, 35.183311, 26.123484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638199, 34.981476, 25.995171>,  <33.604950, 34.645084, 25.781315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638199, 34.981476, 25.995171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234190, 0.537958, -0.809788,
		-0.968631, -0.057897, 0.241665,
		0.083122, 0.840981, 0.534642,
		33.663136, 35.233768, 26.155563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058071, 35.072403, 25.594557>,  <33.604950, 34.645084, 25.781315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058071, 35.072403, 25.594557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346245, 35.334911, 25.684250>,  <33.519150, 35.492416, 25.738066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346245, 35.334911, 25.684250>,  <33.058071, 35.072403, 25.594557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346245, 35.334911, 25.684250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366992, 0.635101, -0.679679,
		-0.588467, 0.407371, 0.698395,
		0.720433, 0.656273, 0.224234,
		33.562374, 35.531792, 25.751520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768841, 35.731606, 25.379992>,  <33.058071, 35.072403, 25.594557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768841, 35.731606, 25.379992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164803, 35.780731, 25.408306>,  <33.402378, 35.810207, 25.425295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164803, 35.780731, 25.408306>,  <32.768841, 35.731606, 25.379992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164803, 35.780731, 25.408306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016185, 0.594039, -0.804273,
		-0.140825, 0.795006, 0.590029,
		0.989902, 0.122811, 0.070788,
		33.461773, 35.817574, 25.429543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898510, 36.499138, 25.275795>,  <32.768841, 35.731606, 25.379992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898510, 36.499138, 25.275795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228848, 36.285461, 25.203545>,  <33.427052, 36.157257, 25.160194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228848, 36.285461, 25.203545>,  <32.898510, 36.499138, 25.275795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228848, 36.285461, 25.203545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170786, 0.542216, -0.822699,
		0.537414, 0.648572, 0.539017,
		0.825844, -0.534187, -0.180627,
		33.476601, 36.125206, 25.149357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960590, 36.402546, 25.993141>,  <32.898510, 36.499138, 25.275795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960590, 36.402546, 25.993141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641197, 36.522926, 25.784584>,  <32.449562, 36.595154, 25.659451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641197, 36.522926, 25.784584>,  <32.960590, 36.402546, 25.993141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641197, 36.522926, 25.784584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251462, 0.620172, 0.743070,
		0.546980, 0.724441, -0.419521,
		-0.798486, 0.300951, -0.521391,
		32.401649, 36.613213, 25.628166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978085, 37.264786, 25.874043>,  <32.960590, 36.402546, 25.993141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978085, 37.264786, 25.874043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608021, 37.116619, 25.840908>,  <32.385983, 37.027718, 25.821028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608021, 37.116619, 25.840908>,  <32.978085, 37.264786, 25.874043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608021, 37.116619, 25.840908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262806, 0.467662, 0.843935,
		-0.273872, 0.802547, -0.530012,
		-0.925163, -0.370421, -0.082834,
		32.330471, 37.005493, 25.816057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543243, 37.779709, 26.092140>,  <32.978085, 37.264786, 25.874043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543243, 37.779709, 26.092140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298504, 37.463333, 26.088932>,  <32.151661, 37.273510, 26.087008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298504, 37.463333, 26.088932>,  <32.543243, 37.779709, 26.092140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298504, 37.463333, 26.088932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305132, 0.226661, 0.924943,
		-0.729753, 0.568369, -0.380022,
		-0.611845, -0.790937, -0.008020,
		32.114952, 37.226051, 26.086525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874704, 38.032356, 26.440508>,  <32.543243, 37.779709, 26.092140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874704, 38.032356, 26.440508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877638, 37.633945, 26.476025>,  <31.879398, 37.394901, 26.497335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877638, 37.633945, 26.476025>,  <31.874704, 38.032356, 26.440508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877638, 37.633945, 26.476025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498249, 0.073347, 0.863926,
		-0.867003, -0.050577, -0.495729,
		0.007335, -0.996023, 0.088792,
		31.879839, 37.335140, 26.502663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133524, 37.857452, 26.415192>,  <31.874704, 38.032356, 26.440508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133524, 37.857452, 26.415192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352444, 37.579720, 26.602108>,  <31.483795, 37.413078, 26.714258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352444, 37.579720, 26.602108>,  <31.133524, 37.857452, 26.415192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352444, 37.579720, 26.602108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542768, 0.130548, 0.829674,
		-0.637077, -0.707711, -0.305415,
		0.547298, -0.694336, 0.467292,
		31.516634, 37.371418, 26.742296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601259, 37.445068, 26.835421>,  <31.133524, 37.857452, 26.415192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601259, 37.445068, 26.835421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962282, 37.358994, 26.984596>,  <31.178896, 37.307346, 27.074100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962282, 37.358994, 26.984596>,  <30.601259, 37.445068, 26.835421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962282, 37.358994, 26.984596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376725, 0.024728, 0.925995,
		-0.208487, -0.976259, -0.058749,
		0.902558, -0.215190, 0.372937,
		31.233049, 37.294437, 27.096478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531595, 36.960083, 27.325121>,  <30.601259, 37.445068, 26.835421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531595, 36.960083, 27.325121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902674, 37.065292, 27.431099>,  <31.125320, 37.128418, 27.494686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902674, 37.065292, 27.431099>,  <30.531595, 36.960083, 27.325121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902674, 37.065292, 27.431099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259440, -0.056118, 0.964127,
		0.268458, -0.963156, 0.016179,
		0.927697, 0.263025, 0.264947,
		31.180983, 37.144199, 27.510582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747524, 36.521992, 27.884190>,  <30.531595, 36.960083, 27.325121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747524, 36.521992, 27.884190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972948, 36.851875, 27.903191>,  <31.108202, 37.049805, 27.914591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972948, 36.851875, 27.903191>,  <30.747524, 36.521992, 27.884190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972948, 36.851875, 27.903191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091196, 0.004961, 0.995821,
		0.821026, -0.565536, 0.078006,
		0.563560, 0.824708, 0.047501,
		31.142015, 37.099289, 27.917440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341782, 36.374855, 28.307133>,  <30.747524, 36.521992, 27.884190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341782, 36.374855, 28.307133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284582, 36.770744, 28.307274>,  <31.250261, 37.008278, 28.307358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284582, 36.770744, 28.307274>,  <31.341782, 36.374855, 28.307133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284582, 36.770744, 28.307274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079421, 0.011119, 0.996779,
		0.986531, 0.142568, -0.080194,
		-0.143000, 0.989723, 0.000353,
		31.241682, 37.067661, 28.307381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837242, 36.576717, 28.740450>,  <31.341782, 36.374855, 28.307133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837242, 36.576717, 28.740450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573862, 36.876728, 28.715454>,  <31.415834, 37.056736, 28.700457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573862, 36.876728, 28.715454>,  <31.837242, 36.576717, 28.740450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573862, 36.876728, 28.715454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020271, 0.065324, 0.997658,
		0.752352, 0.658174, -0.027809,
		-0.658449, 0.750026, -0.062489,
		31.376328, 37.101734, 28.696707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187515, 37.151249, 29.173754>,  <31.837242, 36.576717, 28.740450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187515, 37.151249, 29.173754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790579, 37.194981, 29.150776>,  <31.552416, 37.221218, 29.136990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790579, 37.194981, 29.150776>,  <32.187515, 37.151249, 29.173754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790579, 37.194981, 29.150776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034960, 0.197451, 0.979689,
		0.118451, 0.974197, -0.192117,
		-0.992344, 0.109329, -0.057446,
		31.492876, 37.227779, 29.133543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048676, 37.614021, 29.729586>,  <32.187515, 37.151249, 29.173754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048676, 37.614021, 29.729586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680948, 37.488522, 29.634583>,  <31.460312, 37.413223, 29.577579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680948, 37.488522, 29.634583>,  <32.048676, 37.614021, 29.729586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680948, 37.488522, 29.634583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317298, 0.234040, 0.918992,
		-0.232747, 0.920210, -0.314710,
		-0.919321, -0.313749, -0.237509,
		31.405151, 37.394398, 29.563330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539244, 38.109985, 30.088213>,  <32.048676, 37.614021, 29.729586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539244, 38.109985, 30.088213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348875, 37.763340, 30.028229>,  <31.234653, 37.555355, 29.992239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348875, 37.763340, 30.028229>,  <31.539244, 38.109985, 30.088213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348875, 37.763340, 30.028229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285054, -0.009309, 0.958466,
		-0.832011, 0.498902, -0.242600,
		-0.475922, -0.866609, -0.149959,
		31.206099, 37.503357, 29.983240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885284, 38.174313, 30.423115>,  <31.539244, 38.109985, 30.088213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885284, 38.174313, 30.423115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942928, 37.778919, 30.404644>,  <30.977514, 37.541683, 30.393560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942928, 37.778919, 30.404644>,  <30.885284, 38.174313, 30.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942928, 37.778919, 30.404644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190419, -0.073494, 0.978948,
		-0.971068, -0.132282, -0.198817,
		0.144109, -0.988484, -0.046179,
		30.986160, 37.482372, 30.390791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518433, 37.952305, 31.013969>,  <30.885284, 38.174313, 30.423115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518433, 37.952305, 31.013969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713278, 37.619987, 30.906258>,  <30.830185, 37.420597, 30.841631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713278, 37.619987, 30.906258>,  <30.518433, 37.952305, 31.013969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713278, 37.619987, 30.906258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134200, -0.233466, 0.963060,
		-0.862968, -0.505254, -0.002232,
		0.487111, -0.830790, -0.269278,
		30.859411, 37.370750, 30.825474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289263, 37.554050, 31.415037>,  <30.518433, 37.952305, 31.013969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289263, 37.554050, 31.415037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635380, 37.384743, 31.307625>,  <30.843050, 37.283157, 31.243177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635380, 37.384743, 31.307625>,  <30.289263, 37.554050, 31.415037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635380, 37.384743, 31.307625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122406, -0.341070, 0.932034,
		-0.486089, -0.839354, -0.243315,
		0.865294, -0.423269, -0.268532,
		30.894968, 37.257763, 31.227066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336203, 36.841991, 31.678654>,  <30.289263, 37.554050, 31.415037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336203, 36.841991, 31.678654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711693, 36.963303, 31.613148>,  <30.936987, 37.036091, 31.573845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711693, 36.963303, 31.613148>,  <30.336203, 36.841991, 31.678654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711693, 36.963303, 31.613148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265993, -0.335281, 0.903789,
		0.219194, -0.891968, -0.395407,
		0.938724, 0.303281, -0.163765,
		30.993309, 37.054287, 31.564018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765686, 36.232498, 31.906145>,  <30.336203, 36.841991, 31.678654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765686, 36.232498, 31.906145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030592, 36.532162, 31.911274>,  <31.189535, 36.711960, 31.914352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030592, 36.532162, 31.911274>,  <30.765686, 36.232498, 31.906145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030592, 36.532162, 31.911274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299561, -0.280427, 0.911934,
		0.686780, -0.600101, -0.410136,
		0.662266, 0.749159, 0.012825,
		31.229271, 36.756908, 31.915121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485777, 36.022766, 32.185280>,  <30.765686, 36.232498, 31.906145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485777, 36.022766, 32.185280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476305, 36.415287, 32.261692>,  <31.470623, 36.650799, 32.307541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476305, 36.415287, 32.261692>,  <31.485777, 36.022766, 32.185280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476305, 36.415287, 32.261692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349444, -0.170906, 0.921239,
		0.936658, 0.088567, -0.338862,
		-0.023678, 0.981299, 0.191030,
		31.469202, 36.709675, 32.319000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219486, 36.317280, 32.518295>,  <31.485777, 36.022766, 32.185280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219486, 36.317280, 32.518295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978922, 36.622822, 32.611958>,  <31.834583, 36.806149, 32.668156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978922, 36.622822, 32.611958>,  <32.219486, 36.317280, 32.518295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978922, 36.622822, 32.611958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275964, -0.076427, 0.958125,
		0.749768, 0.640841, -0.164834,
		-0.601408, 0.763860, 0.234151,
		31.798500, 36.851978, 32.682201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548851, 36.687645, 32.991570>,  <32.219486, 36.317280, 32.518295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548851, 36.687645, 32.991570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165157, 36.783901, 33.050842>,  <31.934940, 36.841656, 33.086407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165157, 36.783901, 33.050842>,  <32.548851, 36.687645, 32.991570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165157, 36.783901, 33.050842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099746, -0.202303, 0.974230,
		0.264416, 0.949297, 0.170054,
		-0.959237, 0.240640, 0.148181,
		31.877386, 36.856094, 33.095295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580162, 36.838406, 33.647442>,  <32.548851, 36.687645, 32.991570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580162, 36.838406, 33.647442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202732, 36.747417, 33.551170>,  <31.976274, 36.692825, 33.493408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202732, 36.747417, 33.551170>,  <32.580162, 36.838406, 33.647442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202732, 36.747417, 33.551170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112363, -0.463735, 0.878820,
		-0.311518, 0.856274, 0.412008,
		-0.943573, -0.227474, -0.240676,
		31.919661, 36.679176, 33.478966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062069, 37.167564, 34.097965>,  <32.580162, 36.838406, 33.647442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062069, 37.167564, 34.097965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851416, 36.869980, 33.933437>,  <31.725025, 36.691429, 33.834721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851416, 36.869980, 33.933437>,  <32.062069, 37.167564, 34.097965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851416, 36.869980, 33.933437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194327, -0.365684, 0.910226,
		-0.827586, 0.559282, 0.048008,
		-0.526629, -0.743962, -0.411319,
		31.693426, 36.646790, 33.810043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478163, 37.095879, 34.563843>,  <32.062069, 37.167564, 34.097965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478163, 37.095879, 34.563843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483984, 36.747616, 34.367172>,  <31.487476, 36.538658, 34.249168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483984, 36.747616, 34.367172>,  <31.478163, 37.095879, 34.563843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483984, 36.747616, 34.367172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311840, -0.471157, 0.825086,
		-0.950023, 0.141319, -0.278361,
		0.014551, -0.870655, -0.491679,
		31.488350, 36.486420, 34.219669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708031, 36.735691, 34.683167>,  <31.478163, 37.095879, 34.563843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708031, 36.735691, 34.683167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963537, 36.443211, 34.587402>,  <31.116840, 36.267723, 34.529945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963537, 36.443211, 34.587402>,  <30.708031, 36.735691, 34.683167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963537, 36.443211, 34.587402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306116, -0.526999, 0.792821,
		-0.705884, -0.433139, -0.560462,
		0.638765, -0.731206, -0.239409,
		31.155167, 36.223850, 34.515579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263533, 36.131840, 34.818317>,  <30.708031, 36.735691, 34.683167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263533, 36.131840, 34.818317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647253, 36.019035, 34.812466>,  <30.877485, 35.951351, 34.808956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647253, 36.019035, 34.812466>,  <30.263533, 36.131840, 34.818317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647253, 36.019035, 34.812466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161373, -0.589976, 0.791130,
		-0.231737, -0.756571, -0.611473,
		0.959300, -0.282009, -0.014629,
		30.935043, 35.934433, 34.808075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293118, 35.446095, 35.077518>,  <30.263533, 36.131840, 34.818317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293118, 35.446095, 35.077518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645590, 35.620506, 35.150616>,  <30.857073, 35.725155, 35.194473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645590, 35.620506, 35.150616>,  <30.293118, 35.446095, 35.077518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645590, 35.620506, 35.150616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015783, -0.413446, 0.910392,
		0.472512, -0.799337, -0.371203,
		0.881183, 0.436030, 0.182742,
		30.909945, 35.751316, 35.205437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666451, 34.928738, 35.217796>,  <30.293118, 35.446095, 35.077518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666451, 34.928738, 35.217796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808819, 35.256054, 35.398338>,  <30.894239, 35.452442, 35.506664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808819, 35.256054, 35.398338>,  <30.666451, 34.928738, 35.217796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808819, 35.256054, 35.398338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098167, -0.513045, 0.852730,
		0.929345, -0.259198, -0.262934,
		0.355923, 0.818291, 0.451351,
		30.915596, 35.501541, 35.533745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157623, 34.666885, 35.647770>,  <30.666451, 34.928738, 35.217796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157623, 34.666885, 35.647770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119102, 35.025925, 35.819836>,  <31.095989, 35.241348, 35.923077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119102, 35.025925, 35.819836>,  <31.157623, 34.666885, 35.647770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119102, 35.025925, 35.819836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114507, -0.419316, 0.900590,
		0.988744, 0.135985, -0.062401,
		-0.096301, 0.897598, 0.430168,
		31.090212, 35.295204, 35.948887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568508, 34.592331, 36.136101>,  <31.157623, 34.666885, 35.647770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568508, 34.592331, 36.136101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342966, 34.901249, 36.253147>,  <31.207642, 35.086601, 36.323376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342966, 34.901249, 36.253147>,  <31.568508, 34.592331, 36.136101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342966, 34.901249, 36.253147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012119, -0.346537, 0.937958,
		0.825786, 0.532417, 0.186037,
		-0.563854, 0.772298, 0.292618,
		31.173809, 35.132938, 36.340931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854525, 34.867046, 36.865063>,  <31.568508, 34.592331, 36.136101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854525, 34.867046, 36.865063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463469, 34.937527, 36.819153>,  <31.228834, 34.979813, 36.791607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463469, 34.937527, 36.819153>,  <31.854525, 34.867046, 36.865063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463469, 34.937527, 36.819153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184803, -0.459469, 0.868755,
		0.100336, 0.870541, 0.481757,
		-0.977640, 0.176197, -0.114778,
		31.170176, 34.990387, 36.784721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582489, 35.089527, 37.474644>,  <31.854525, 34.867046, 36.865063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582489, 35.089527, 37.474644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226654, 35.002403, 37.314045>,  <31.013153, 34.950130, 37.217686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226654, 35.002403, 37.314045>,  <31.582489, 35.089527, 37.474644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226654, 35.002403, 37.314045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306782, -0.366319, 0.878462,
		-0.338408, 0.904639, 0.259054,
		-0.889587, -0.217806, -0.401492,
		30.959778, 34.937061, 37.193596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045897, 35.322952, 37.956829>,  <31.582489, 35.089527, 37.474644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045897, 35.322952, 37.956829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868221, 35.034325, 37.744400>,  <30.761616, 34.861149, 37.616943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868221, 35.034325, 37.744400>,  <31.045897, 35.322952, 37.956829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868221, 35.034325, 37.744400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298934, -0.439424, 0.847080,
		-0.844591, 0.535019, -0.020514,
		-0.444189, -0.721569, -0.531069,
		30.734964, 34.817856, 37.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432907, 35.182289, 38.332169>,  <31.045897, 35.322952, 37.956829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432907, 35.182289, 38.332169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438910, 34.871021, 38.081017>,  <30.442511, 34.684261, 37.930325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438910, 34.871021, 38.081017>,  <30.432907, 35.182289, 38.332169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438910, 34.871021, 38.081017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362129, -0.589548, 0.722009,
		-0.932007, 0.216537, -0.290644,
		0.015007, -0.778168, -0.627877,
		30.443411, 34.637569, 37.892654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730801, 35.014202, 38.483479>,  <30.432907, 35.182289, 38.332169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730801, 35.014202, 38.483479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882133, 34.698772, 38.289562>,  <29.972933, 34.509514, 38.173214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882133, 34.698772, 38.289562>,  <29.730801, 35.014202, 38.483479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882133, 34.698772, 38.289562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589560, -0.609029, 0.530568,
		-0.713642, 0.085084, -0.695324,
		0.378329, -0.788571, -0.484791,
		29.995632, 34.462200, 38.144127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182377, 34.572243, 38.208168>,  <29.730801, 35.014202, 38.483479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182377, 34.572243, 38.208168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512804, 34.351711, 38.254890>,  <29.711061, 34.219391, 38.282925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512804, 34.351711, 38.254890>,  <29.182377, 34.572243, 38.208168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512804, 34.351711, 38.254890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538001, -0.709752, 0.454761,
		-0.167821, -0.438506, -0.882921,
		0.826070, -0.551330, 0.116805,
		29.760626, 34.186314, 38.289932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040522, 33.933414, 38.074539>,  <29.182377, 34.572243, 38.208168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040522, 33.933414, 38.074539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365276, 33.910198, 38.306908>,  <29.560129, 33.896271, 38.446327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365276, 33.910198, 38.306908>,  <29.040522, 33.933414, 38.074539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365276, 33.910198, 38.306908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475853, -0.642268, 0.600879,
		0.338233, -0.764279, -0.549068,
		0.811888, -0.058039, 0.580921,
		29.608843, 33.892788, 38.481186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151060, 33.267136, 38.223206>,  <29.040522, 33.933414, 38.074539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151060, 33.267136, 38.223206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341827, 33.459305, 38.517616>,  <29.456287, 33.574608, 38.694263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341827, 33.459305, 38.517616>,  <29.151060, 33.267136, 38.223206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341827, 33.459305, 38.517616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264643, -0.720052, 0.641474,
		0.838160, -0.500716, -0.216266,
		0.476919, 0.480425, 0.736030,
		29.484903, 33.603432, 38.738426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681452, 32.917339, 38.599457>,  <29.151060, 33.267136, 38.223206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681452, 32.917339, 38.599457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471691, 32.589989, 38.505428>,  <28.345835, 32.393578, 38.449013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471691, 32.589989, 38.505428>,  <28.681452, 32.917339, 38.599457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471691, 32.589989, 38.505428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420796, -0.009082, -0.907110,
		0.740226, -0.574605, 0.349134,
		-0.524401, -0.818380, -0.235069,
		28.314371, 32.344475, 38.434906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076468, 32.518478, 38.179829>,  <28.681452, 32.917339, 38.599457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076468, 32.518478, 38.179829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709723, 32.373047, 38.113888>,  <28.489676, 32.285789, 38.074322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709723, 32.373047, 38.113888>,  <29.076468, 32.518478, 38.179829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709723, 32.373047, 38.113888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131253, 0.115446, -0.984604,
		0.377014, -0.924382, -0.058127,
		-0.916860, -0.363580, -0.164853,
		28.434664, 32.263973, 38.064430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196085, 31.981859, 37.753567>,  <29.076468, 32.518478, 38.179829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196085, 31.981859, 37.753567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827259, 32.124752, 37.693993>,  <28.605963, 32.210487, 37.658249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827259, 32.124752, 37.693993>,  <29.196085, 31.981859, 37.753567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827259, 32.124752, 37.693993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184553, 0.067578, -0.980496,
		-0.340198, -0.931568, -0.128240,
		-0.922066, 0.357230, -0.148934,
		28.550640, 32.231922, 37.649311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025940, 31.719597, 37.177711>,  <29.196085, 31.981859, 37.753567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025940, 31.719597, 37.177711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754204, 32.011631, 37.207298>,  <28.591162, 32.186852, 37.225048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754204, 32.011631, 37.207298>,  <29.025940, 31.719597, 37.177711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754204, 32.011631, 37.207298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043374, 0.140564, -0.989121,
		-0.732541, -0.668741, -0.127157,
		-0.679339, 0.730087, 0.073962,
		28.550402, 32.230656, 37.229488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385555, 31.611227, 36.747925>,  <29.025940, 31.719597, 37.177711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385555, 31.611227, 36.747925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451992, 32.000633, 36.810768>,  <28.491854, 32.234276, 36.848476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.451992, 32.000633, 36.810768>,  <28.385555, 31.611227, 36.747925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451992, 32.000633, 36.810768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184089, 0.125913, -0.974811,
		-0.968774, 0.190833, -0.158300,
		0.166094, 0.973513, 0.157111,
		28.501820, 32.292686, 36.857903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175365, 31.869659, 36.089962>,  <28.385555, 31.611227, 36.747925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175365, 31.869659, 36.089962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343431, 32.197186, 36.246426>,  <28.444271, 32.393700, 36.340305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343431, 32.197186, 36.246426>,  <28.175365, 31.869659, 36.089962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343431, 32.197186, 36.246426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198490, 0.337687, -0.920092,
		-0.885474, 0.464230, -0.020643,
		0.420164, 0.818815, 0.391158,
		28.469481, 32.442829, 36.363773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999636, 32.401459, 35.642593>,  <28.175365, 31.869659, 36.089962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999636, 32.401459, 35.642593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283979, 32.603168, 35.838711>,  <28.454586, 32.724194, 35.956383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283979, 32.603168, 35.838711>,  <27.999636, 32.401459, 35.642593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283979, 32.603168, 35.838711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194552, 0.528921, -0.826070,
		-0.675891, 0.682608, 0.277882,
		0.710860, 0.504270, 0.490296,
		28.497238, 32.754448, 35.985798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908546, 33.124065, 35.421852>,  <27.999636, 32.401459, 35.642593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908546, 33.124065, 35.421852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282616, 33.061283, 35.548859>,  <28.507057, 33.023613, 35.625061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.282616, 33.061283, 35.548859>,  <27.908546, 33.124065, 35.421852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282616, 33.061283, 35.548859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351334, 0.524730, -0.775386,
		-0.044910, 0.836674, 0.545857,
		0.935172, -0.156955, 0.317518,
		28.563168, 33.014198, 35.644115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243887, 33.803188, 35.259174>,  <27.908546, 33.124065, 35.421852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243887, 33.803188, 35.259174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537659, 33.541950, 35.333019>,  <28.713923, 33.385208, 35.377327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537659, 33.541950, 35.333019>,  <28.243887, 33.803188, 35.259174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537659, 33.541950, 35.333019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504455, 0.343330, -0.792243,
		0.454024, 0.674977, 0.581608,
		0.734429, -0.653093, 0.184616,
		28.757988, 33.346024, 35.388405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915440, 34.130833, 35.199894>,  <28.243887, 33.803188, 35.259174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915440, 34.130833, 35.199894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990154, 33.740189, 35.157276>,  <29.034983, 33.505802, 35.131706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990154, 33.740189, 35.157276>,  <28.915440, 34.130833, 35.199894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990154, 33.740189, 35.157276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652289, 0.204388, -0.729894,
		0.734595, 0.066836, 0.675206,
		0.186787, -0.976606, -0.106546,
		29.046190, 33.447208, 35.125313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677740, 34.015705, 35.239006>,  <28.915440, 34.130833, 35.199894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677740, 34.015705, 35.239006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501844, 33.730045, 35.021156>,  <29.396307, 33.558647, 34.890446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501844, 33.730045, 35.021156>,  <29.677740, 34.015705, 35.239006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501844, 33.730045, 35.021156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594705, 0.222875, -0.772433,
		0.673019, -0.663559, 0.326704,
		-0.439740, -0.714154, -0.544621,
		29.369923, 33.515800, 34.857769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204401, 33.755047, 34.831059>,  <29.677740, 34.015705, 35.239006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204401, 33.755047, 34.831059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867952, 33.617931, 34.663723>,  <29.666082, 33.535664, 34.563320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867952, 33.617931, 34.663723>,  <30.204401, 33.755047, 34.831059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867952, 33.617931, 34.663723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394653, 0.139895, -0.908118,
		0.369817, -0.928938, 0.017614,
		-0.841121, -0.342788, -0.418343,
		29.615616, 33.515095, 34.538219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479576, 33.465477, 34.232391>,  <30.204401, 33.755047, 34.831059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479576, 33.465477, 34.232391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084558, 33.491848, 34.175240>,  <29.847548, 33.507671, 34.140949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084558, 33.491848, 34.175240>,  <30.479576, 33.465477, 34.232391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084558, 33.491848, 34.175240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153500, 0.203838, -0.966896,
		-0.034623, -0.976782, -0.211418,
		-0.987542, 0.065930, -0.142878,
		29.788296, 33.511627, 34.132378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308193, 33.139923, 33.570652>,  <30.479576, 33.465477, 34.232391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308193, 33.139923, 33.570652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979507, 33.362293, 33.620819>,  <29.782295, 33.495716, 33.650917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979507, 33.362293, 33.620819>,  <30.308193, 33.139923, 33.570652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979507, 33.362293, 33.620819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072367, 0.116499, -0.990551,
		-0.565284, -0.823027, -0.055499,
		-0.821716, 0.555927, 0.125415,
		29.732992, 33.529072, 33.658443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704918, 32.856892, 33.132961>,  <30.308193, 33.139923, 33.570652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704918, 32.856892, 33.132961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659916, 33.249001, 33.197956>,  <29.632915, 33.484268, 33.236954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659916, 33.249001, 33.197956>,  <29.704918, 32.856892, 33.132961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659916, 33.249001, 33.197956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026612, 0.166436, -0.985693,
		-0.993295, -0.106570, -0.044811,
		-0.112503, 0.980276, 0.162484,
		29.626165, 33.543083, 33.246700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095770, 33.008183, 32.745075>,  <29.704918, 32.856892, 33.132961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095770, 33.008183, 32.745075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311686, 33.341373, 32.793690>,  <29.441235, 33.541290, 32.822857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311686, 33.341373, 32.793690>,  <29.095770, 33.008183, 32.745075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311686, 33.341373, 32.793690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046000, 0.173347, -0.983786,
		-0.840541, 0.525448, 0.131888,
		0.539791, 0.832979, 0.121535,
		29.473623, 33.591267, 32.830151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737230, 33.548206, 32.358608>,  <29.095770, 33.008183, 32.745075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737230, 33.548206, 32.358608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100811, 33.708767, 32.403652>,  <29.318960, 33.805103, 32.430679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100811, 33.708767, 32.403652>,  <28.737230, 33.548206, 32.358608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100811, 33.708767, 32.403652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021971, 0.315863, -0.948551,
		-0.416318, 0.859714, 0.295923,
		0.908953, 0.401401, 0.112611,
		29.373497, 33.829185, 32.437435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638350, 34.218609, 32.081539>,  <28.737230, 33.548206, 32.358608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638350, 34.218609, 32.081539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037636, 34.207912, 32.102905>,  <29.277206, 34.201496, 32.115726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037636, 34.207912, 32.102905>,  <28.638350, 34.218609, 32.081539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037636, 34.207912, 32.102905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059451, 0.532527, -0.844323,
		-0.005869, 0.845991, 0.533165,
		0.998214, -0.026742, 0.053420,
		29.337101, 34.199890, 32.118931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926661, 34.937576, 31.941092>,  <28.638350, 34.218609, 32.081539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926661, 34.937576, 31.941092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220772, 34.675308, 31.872440>,  <29.397238, 34.517948, 31.831249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220772, 34.675308, 31.872440>,  <28.926661, 34.937576, 31.941092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220772, 34.675308, 31.872440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280507, 0.524913, -0.803606,
		0.616994, 0.542731, 0.569879,
		0.735279, -0.655675, -0.171628,
		29.441355, 34.478607, 31.820951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512066, 35.376038, 31.844034>,  <28.926661, 34.937576, 31.941092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512066, 35.376038, 31.844034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607031, 35.017918, 31.693268>,  <29.664011, 34.803043, 31.602808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607031, 35.017918, 31.693268>,  <29.512066, 35.376038, 31.844034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607031, 35.017918, 31.693268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280382, 0.434655, -0.855840,
		0.930065, 0.097508, 0.354220,
		0.237415, -0.895303, -0.376918,
		29.678255, 34.749329, 31.580193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199377, 35.471878, 31.481552>,  <29.512066, 35.376038, 31.844034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199377, 35.471878, 31.481552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007986, 35.147232, 31.347481>,  <29.893150, 34.952446, 31.267038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007986, 35.147232, 31.347481>,  <30.199377, 35.471878, 31.481552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007986, 35.147232, 31.347481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261480, 0.232698, -0.936739,
		0.838264, -0.535852, 0.100880,
		-0.478479, -0.811612, -0.335177,
		29.864443, 34.903748, 31.246927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566429, 35.304775, 30.850605>,  <30.199377, 35.471878, 31.481552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566429, 35.304775, 30.850605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204258, 35.135403, 30.838612>,  <29.986956, 35.033779, 30.831415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204258, 35.135403, 30.838612>,  <30.566429, 35.304775, 30.850605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204258, 35.135403, 30.838612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116490, 0.315769, -0.941658,
		0.408197, -0.849113, -0.335233,
		-0.905431, -0.423434, -0.029982,
		29.932629, 35.008373, 30.829617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566221, 35.054272, 30.219084>,  <30.566429, 35.304775, 30.850605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566221, 35.054272, 30.219084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177809, 35.041225, 30.313770>,  <29.944761, 35.033398, 30.370583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177809, 35.041225, 30.313770>,  <30.566221, 35.054272, 30.219084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177809, 35.041225, 30.313770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228017, 0.422737, -0.877098,
		-0.071458, -0.905665, -0.417929,
		-0.971031, -0.032620, 0.236715,
		29.886499, 35.031441, 30.384785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233624, 34.585060, 29.804779>,  <30.566221, 35.054272, 30.219084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233624, 34.585060, 29.804779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946728, 34.836632, 29.924793>,  <29.774590, 34.987576, 29.996801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946728, 34.836632, 29.924793>,  <30.233624, 34.585060, 29.804779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946728, 34.836632, 29.924793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077973, 0.355434, -0.931443,
		-0.692451, -0.691462, -0.205892,
		-0.717239, 0.628925, 0.300036,
		29.731556, 35.025311, 30.014805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780935, 34.499947, 29.336660>,  <30.233624, 34.585060, 29.804779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780935, 34.499947, 29.336660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693584, 34.846069, 29.517128>,  <29.641174, 35.053741, 29.625408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693584, 34.846069, 29.517128>,  <29.780935, 34.499947, 29.336660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693584, 34.846069, 29.517128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219367, 0.406967, -0.886711,
		-0.950889, -0.292610, 0.100947,
		-0.218378, 0.865308, 0.451169,
		29.628071, 35.105663, 29.652479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113916, 34.589371, 29.126650>,  <29.780935, 34.499947, 29.336660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113916, 34.589371, 29.126650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268499, 34.935520, 29.254257>,  <29.361250, 35.143211, 29.330822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268499, 34.935520, 29.254257>,  <29.113916, 34.589371, 29.126650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268499, 34.935520, 29.254257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258053, 0.433529, -0.863401,
		-0.885470, 0.251346, 0.390855,
		0.386460, 0.865377, 0.319016,
		29.384438, 35.195133, 29.349962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586365, 35.035301, 28.997252>,  <29.113916, 34.589371, 29.126650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586365, 35.035301, 28.997252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916285, 35.261288, 29.006390>,  <29.114237, 35.396881, 29.011873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916285, 35.261288, 29.006390>,  <28.586365, 35.035301, 28.997252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916285, 35.261288, 29.006390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302758, 0.475398, -0.826035,
		-0.477543, 0.674395, 0.563156,
		0.824797, 0.564967, 0.022845,
		29.163723, 35.430779, 29.013243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299225, 35.779278, 28.973526>,  <28.586365, 35.035301, 28.997252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299225, 35.779278, 28.973526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676250, 35.754436, 28.842243>,  <28.902466, 35.739532, 28.763474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676250, 35.754436, 28.842243>,  <28.299225, 35.779278, 28.973526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676250, 35.754436, 28.842243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272091, 0.427208, -0.862241,
		0.193761, 0.902018, 0.385772,
		0.942562, -0.062104, -0.328207,
		28.959019, 35.735806, 28.743782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294838, 36.336601, 28.594778>,  <28.299225, 35.779278, 28.973526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294838, 36.336601, 28.594778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629379, 36.156139, 28.470215>,  <28.830105, 36.047863, 28.395477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629379, 36.156139, 28.470215>,  <28.294838, 36.336601, 28.594778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629379, 36.156139, 28.470215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182177, 0.307038, -0.934098,
		0.517035, 0.837967, 0.174603,
		0.836353, -0.451153, -0.311408,
		28.880285, 36.020794, 28.376793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659430, 36.814949, 28.319571>,  <28.294838, 36.336601, 28.594778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659430, 36.814949, 28.319571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794010, 36.479576, 28.148067>,  <28.874758, 36.278351, 28.045166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794010, 36.479576, 28.148067>,  <28.659430, 36.814949, 28.319571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794010, 36.479576, 28.148067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151105, 0.401335, -0.903381,
		0.929499, 0.368732, 0.008339,
		0.336452, -0.838432, -0.428757,
		28.894945, 36.228046, 28.019440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168812, 37.025200, 27.798796>,  <28.659430, 36.814949, 28.319571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168812, 37.025200, 27.798796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067535, 36.653728, 27.690384>,  <29.006769, 36.430847, 27.625338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067535, 36.653728, 27.690384>,  <29.168812, 37.025200, 27.798796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067535, 36.653728, 27.690384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055469, 0.265761, -0.962442,
		0.965825, -0.258714, -0.015775,
		-0.253189, -0.928676, -0.271029,
		28.991579, 36.375126, 27.609076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556574, 36.911331, 27.137096>,  <29.168812, 37.025200, 27.798796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556574, 36.911331, 27.137096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336742, 36.578979, 27.102215>,  <29.204844, 36.379570, 27.081285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336742, 36.578979, 27.102215>,  <29.556574, 36.911331, 27.137096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336742, 36.578979, 27.102215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006135, 0.100365, -0.994932,
		0.835419, -0.547329, -0.050061,
		-0.549580, -0.830878, -0.087204,
		29.171869, 36.329716, 27.076054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844410, 36.439472, 26.604094>,  <29.556574, 36.911331, 27.137096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844410, 36.439472, 26.604094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471001, 36.302479, 26.646500>,  <29.246956, 36.220284, 26.671944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471001, 36.302479, 26.646500>,  <29.844410, 36.439472, 26.604094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471001, 36.302479, 26.646500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079979, -0.089319, -0.992787,
		0.349488, -0.935267, 0.055989,
		-0.933521, -0.342489, 0.106017,
		29.190945, 36.199734, 26.678305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750935, 35.828941, 26.179367>,  <29.844410, 36.439472, 26.604094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750935, 35.828941, 26.179367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383696, 35.973991, 26.243366>,  <29.163353, 36.061020, 26.281767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383696, 35.973991, 26.243366>,  <29.750935, 35.828941, 26.179367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383696, 35.973991, 26.243366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168547, 0.008168, -0.985660,
		-0.358731, -0.931900, 0.053620,
		-0.918098, 0.362624, 0.159999,
		29.108267, 36.082779, 26.291367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260113, 35.423531, 25.827509>,  <29.750935, 35.828941, 26.179367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260113, 35.423531, 25.827509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072607, 35.774796, 25.865646>,  <28.960104, 35.985554, 25.888529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072607, 35.774796, 25.865646>,  <29.260113, 35.423531, 25.827509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072607, 35.774796, 25.865646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297473, -0.055311, -0.953127,
		-0.831727, -0.475154, 0.287157,
		-0.468765, 0.878163, 0.095342,
		28.931978, 36.038246, 25.894249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688829, 35.365623, 25.384293>,  <29.260113, 35.423531, 25.827509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688829, 35.365623, 25.384293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694241, 35.759426, 25.454224>,  <28.697487, 35.995708, 25.496183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694241, 35.759426, 25.454224>,  <28.688829, 35.365623, 25.384293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694241, 35.759426, 25.454224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413702, 0.164690, -0.895393,
		-0.910312, -0.060213, 0.409520,
		0.013530, 0.984506, 0.174829,
		28.698299, 36.054779, 25.506672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002373, 35.640842, 25.194651>,  <28.688829, 35.365623, 25.384293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002373, 35.640842, 25.194651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271332, 35.936829, 25.201942>,  <28.432707, 36.114422, 25.206318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271332, 35.936829, 25.201942>,  <28.002373, 35.640842, 25.194651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271332, 35.936829, 25.201942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249560, 0.249821, -0.935580,
		-0.696853, 0.624530, 0.352644,
		0.672396, 0.739967, 0.018231,
		28.473051, 36.158817, 25.207411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612631, 36.093578, 25.010267>,  <28.002373, 35.640842, 25.194651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612631, 36.093578, 25.010267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992992, 36.186352, 24.928303>,  <28.221209, 36.242016, 24.879124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992992, 36.186352, 24.928303>,  <27.612631, 36.093578, 25.010267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992992, 36.186352, 24.928303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253675, 0.204832, -0.945353,
		-0.177286, 0.950921, 0.253611,
		0.950904, 0.231933, -0.204911,
		28.278263, 36.255932, 24.866829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573017, 36.700180, 24.760889>,  <27.612631, 36.093578, 25.010267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573017, 36.700180, 24.760889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929163, 36.574806, 24.628819>,  <28.142851, 36.499584, 24.549576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929163, 36.574806, 24.628819>,  <27.573017, 36.700180, 24.760889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929163, 36.574806, 24.628819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254782, 0.257980, -0.931951,
		0.377281, 0.913897, 0.149840,
		0.890362, -0.313430, -0.330176,
		28.196272, 36.480778, 24.529766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808811, 37.220337, 24.311790>,  <27.573017, 36.700180, 24.760889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808811, 37.220337, 24.311790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017469, 36.897953, 24.199844>,  <28.142664, 36.704525, 24.132677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017469, 36.897953, 24.199844>,  <27.808811, 37.220337, 24.311790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017469, 36.897953, 24.199844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156919, 0.231799, -0.960024,
		0.838608, 0.544706, -0.005553,
		0.521644, -0.805956, -0.279863,
		28.173962, 36.656166, 24.115885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384123, 37.461472, 23.936476>,  <27.808811, 37.220337, 24.311790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384123, 37.461472, 23.936476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226852, 37.116184, 23.809814>,  <28.132490, 36.909012, 23.733818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226852, 37.116184, 23.809814>,  <28.384123, 37.461472, 23.936476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226852, 37.116184, 23.809814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149313, 0.399760, -0.904377,
		0.907258, -0.308300, -0.286066,
		-0.393178, -0.863217, -0.316652,
		28.108898, 36.857220, 23.714819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922861, 37.972202, 24.382627>,  <28.384123, 37.461472, 23.936476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922861, 37.972202, 24.382627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926556, 38.255352, 24.665138>,  <27.928772, 38.425243, 24.834644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926556, 38.255352, 24.665138>,  <27.922861, 37.972202, 24.382627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926556, 38.255352, 24.665138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854007, 0.373006, -0.362681,
		-0.520179, -0.599817, 0.607975,
		0.009236, 0.707874, 0.706278,
		27.929327, 38.467712, 24.877022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200432, 38.023705, 24.874348>,  <27.922861, 37.972202, 24.382627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200432, 38.023705, 24.874348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411232, 38.356956, 24.807213>,  <27.537712, 38.556908, 24.766932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411232, 38.356956, 24.807213>,  <27.200432, 38.023705, 24.874348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411232, 38.356956, 24.807213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790125, 0.407570, -0.457810,
		-0.313010, 0.373877, 0.873064,
		0.526999, 0.833128, -0.167836,
		27.569332, 38.606895, 24.756863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791208, 38.582500, 24.957918>,  <27.200432, 38.023705, 24.874348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791208, 38.582500, 24.957918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073696, 38.748367, 24.728378>,  <27.243189, 38.847889, 24.590654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.073696, 38.748367, 24.728378>,  <26.791208, 38.582500, 24.957918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.073696, 38.748367, 24.728378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707849, 0.429846, -0.560520,
		0.014236, 0.802049, 0.597089,
		0.706220, 0.414669, -0.573849,
		27.285563, 38.872768, 24.556223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429609, 38.265152, 24.393209>,  <26.791208, 38.582500, 24.957918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429609, 38.265152, 24.393209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303446, 38.622356, 24.264801>,  <26.227747, 38.836678, 24.187756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303446, 38.622356, 24.264801>,  <26.429609, 38.265152, 24.393209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303446, 38.622356, 24.264801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526499, -0.446125, -0.723721,
		-0.789504, -0.059249, 0.610879,
		-0.315408, 0.893007, -0.321023,
		26.208824, 38.890259, 24.168493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641760, 38.238758, 24.232143>,  <26.429609, 38.265152, 24.393209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641760, 38.238758, 24.232143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799541, 38.537209, 24.017590>,  <25.894211, 38.716278, 23.888857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799541, 38.537209, 24.017590>,  <25.641760, 38.238758, 24.232143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799541, 38.537209, 24.017590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473710, -0.335069, -0.814449,
		-0.787404, 0.575353, 0.221277,
		0.394453, 0.746122, -0.536385,
		25.917877, 38.761044, 23.856674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088001, 38.568790, 23.782625>,  <25.641760, 38.238758, 24.232143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088001, 38.568790, 23.782625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444668, 38.672127, 23.633926>,  <25.658667, 38.734127, 23.544706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444668, 38.672127, 23.633926>,  <25.088001, 38.568790, 23.782625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444668, 38.672127, 23.633926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357856, -0.100705, -0.928331,
		-0.277262, 0.960791, 0.002654,
		0.891664, 0.258340, -0.371746,
		25.712168, 38.749630, 23.522402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466564, 38.692162, 23.343819>,  <25.088001, 38.568790, 23.782625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466564, 38.692162, 23.343819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.085917, 38.583847, 23.285721>,  <23.857529, 38.518856, 23.250862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.085917, 38.583847, 23.285721>,  <24.466564, 38.692162, 23.343819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.085917, 38.583847, 23.285721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046094, 0.341536, -0.938738,
		0.303805, -0.900015, -0.312530,
		-0.951619, -0.270788, -0.145246,
		23.800430, 38.502609, 23.242147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.412230, 38.288929, 22.718525>,  <24.466564, 38.692162, 23.343819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.412230, 38.288929, 22.718525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.042942, 38.431438, 22.776123>,  <23.821369, 38.516945, 22.810682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.042942, 38.431438, 22.776123>,  <24.412230, 38.288929, 22.718525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.042942, 38.431438, 22.776123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008040, 0.392549, -0.919696,
		-0.384188, -0.847924, -0.365274,
		-0.923220, 0.356273, 0.143996,
		23.765976, 38.538319, 22.819323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.071520, 38.153549, 22.083057>,  <24.412230, 38.288929, 22.718525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.071520, 38.153549, 22.083057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.851795, 38.431767, 22.268303>,  <23.719959, 38.598698, 22.379450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.851795, 38.431767, 22.268303>,  <24.071520, 38.153549, 22.083057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.851795, 38.431767, 22.268303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100160, 0.605027, -0.789880,
		-0.829592, -0.387506, -0.402016,
		-0.549314, 0.695544, 0.463113,
		23.687000, 38.640430, 22.407236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.580214, 38.308289, 21.632561>,  <24.071520, 38.153549, 22.083057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.580214, 38.308289, 21.632561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569706, 38.622990, 21.879246>,  <23.563402, 38.811810, 22.027256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.569706, 38.622990, 21.879246>,  <23.580214, 38.308289, 21.632561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.569706, 38.622990, 21.879246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042683, 0.617244, -0.785613,
		-0.998743, 0.005687, -0.049794,
		-0.026267, 0.786751, 0.616711,
		23.561827, 38.859016, 22.064259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.137138, 38.619831, 21.338001>,  <23.580214, 38.308289, 21.632561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.137138, 38.619831, 21.338001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.321318, 38.883781, 21.575504>,  <23.431826, 39.042152, 21.718006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.321318, 38.883781, 21.575504>,  <23.137138, 38.619831, 21.338001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.321318, 38.883781, 21.575504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055806, 0.689078, -0.722535,
		-0.885930, 0.299555, 0.354110,
		0.460449, 0.659877, 0.593758,
		23.459452, 39.081745, 21.753632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.772509, 39.184505, 21.246450>,  <23.137138, 38.619831, 21.338001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.772509, 39.184505, 21.246450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.113827, 39.322327, 21.402996>,  <23.318619, 39.405018, 21.496923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.113827, 39.322327, 21.402996>,  <22.772509, 39.184505, 21.246450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.113827, 39.322327, 21.402996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043352, 0.701091, -0.711752,
		-0.519619, 0.624303, 0.583302,
		0.853297, 0.344553, 0.391366,
		23.369816, 39.425694, 21.520405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.710701, 40.044407, 21.438377>,  <22.772509, 39.184505, 21.246450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.710701, 40.044407, 21.438377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.089582, 39.931492, 21.377556>,  <23.316912, 39.863743, 21.341063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.089582, 39.931492, 21.377556>,  <22.710701, 40.044407, 21.438377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.089582, 39.931492, 21.377556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138925, 0.788730, -0.598836,
		0.288973, 0.546096, 0.786304,
		0.947203, -0.282285, -0.152056,
		23.373743, 39.846806, 21.331940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.140713, 40.641788, 21.396696>,  <22.710701, 40.044407, 21.438377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.140713, 40.641788, 21.396696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.380789, 40.368427, 21.230450>,  <23.524834, 40.204411, 21.130701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.380789, 40.368427, 21.230450>,  <23.140713, 40.641788, 21.396696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.380789, 40.368427, 21.230450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186187, 0.624706, -0.758338,
		0.777887, 0.377764, 0.502182,
		0.600189, -0.683401, -0.415616,
		23.560846, 40.163406, 21.105764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639269, 41.053020, 21.027601>,  <23.140713, 40.641788, 21.396696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639269, 41.053020, 21.027601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710733, 40.698608, 20.856476>,  <23.753613, 40.485962, 20.753799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.710733, 40.698608, 20.856476>,  <23.639269, 41.053020, 21.027601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.710733, 40.698608, 20.856476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240396, 0.460944, -0.854249,
		0.954091, 0.049778, 0.295353,
		0.178664, -0.886032, -0.427816,
		23.764332, 40.432800, 20.728130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357363, 41.119598, 20.746073>,  <23.639269, 41.053020, 21.027601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357363, 41.119598, 20.746073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186695, 40.830162, 20.529049>,  <24.084295, 40.656502, 20.398834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186695, 40.830162, 20.529049>,  <24.357363, 41.119598, 20.746073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186695, 40.830162, 20.529049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363459, 0.412147, -0.835483,
		0.828161, -0.553674, 0.087144,
		-0.426669, -0.723588, -0.542561,
		24.058695, 40.613087, 20.366280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896328, 40.852062, 20.393909>,  <24.357363, 41.119598, 20.746073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896328, 40.852062, 20.393909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561039, 40.757175, 20.197498>,  <24.359865, 40.700245, 20.079653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561039, 40.757175, 20.197498>,  <24.896328, 40.852062, 20.393909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561039, 40.757175, 20.197498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396865, 0.352179, -0.847625,
		0.374011, -0.905369, -0.201056,
		-0.838221, -0.237229, -0.491028,
		24.309572, 40.686008, 20.050190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211452, 40.735561, 19.758396>,  <24.896328, 40.852062, 20.393909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211452, 40.735561, 19.758396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826294, 40.801876, 19.673214>,  <24.595200, 40.841663, 19.622105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826294, 40.801876, 19.673214>,  <25.211452, 40.735561, 19.758396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826294, 40.801876, 19.673214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268780, 0.518061, -0.812017,
		-0.024296, -0.839124, -0.543397,
		-0.962895, 0.165784, -0.212953,
		24.537426, 40.851612, 19.609327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125210, 40.650131, 19.004726>,  <25.211452, 40.735561, 19.758396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125210, 40.650131, 19.004726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798439, 40.845490, 19.127430>,  <24.602377, 40.962704, 19.201052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798439, 40.845490, 19.127430>,  <25.125210, 40.650131, 19.004726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798439, 40.845490, 19.127430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039840, 0.482825, -0.874810,
		-0.575364, -0.726877, -0.374975,
		-0.816927, 0.488395, 0.306759,
		24.553360, 40.992008, 19.219458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671717, 40.677307, 18.374062>,  <25.125210, 40.650131, 19.004726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671717, 40.677307, 18.374062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561632, 40.980808, 18.610214>,  <24.495583, 41.162910, 18.751905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561632, 40.980808, 18.610214>,  <24.671717, 40.677307, 18.374062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561632, 40.980808, 18.610214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114225, 0.583938, -0.803722,
		-0.954574, -0.288628, -0.074036,
		-0.275209, 0.758755, 0.590381,
		24.479069, 41.208435, 18.787329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.969416, 40.815861, 18.116789>,  <24.671717, 40.677307, 18.374062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.969416, 40.815861, 18.116789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112970, 41.135937, 18.308994>,  <24.199104, 41.327984, 18.424316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112970, 41.135937, 18.308994>,  <23.969416, 40.815861, 18.116789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.112970, 41.135937, 18.308994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177426, 0.563908, -0.806553,
		-0.916362, 0.204207, 0.344354,
		0.358888, 0.800192, 0.480512,
		24.220636, 41.375996, 18.453148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550039, 41.348930, 17.890219>,  <23.969416, 40.815861, 18.116789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550039, 41.348930, 17.890219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875046, 41.524544, 18.043617>,  <24.070049, 41.629910, 18.135656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.875046, 41.524544, 18.043617>,  <23.550039, 41.348930, 17.890219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.875046, 41.524544, 18.043617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019145, 0.677609, -0.735173,
		-0.582622, 0.589999, 0.558975,
		0.812518, 0.439030, 0.383494,
		24.118801, 41.656254, 18.158665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.448488, 42.134331, 17.836931>,  <23.550039, 41.348930, 17.890219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.448488, 42.134331, 17.836931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.844889, 42.123455, 17.889355>,  <24.082729, 42.116928, 17.920809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.844889, 42.123455, 17.889355>,  <23.448488, 42.134331, 17.836931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.844889, 42.123455, 17.889355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120416, 0.608647, -0.784250,
		-0.058445, 0.792975, 0.606445,
		0.991001, -0.027190, 0.131060,
		24.142189, 42.115299, 17.928673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.796213, 42.891743, 17.831964>,  <23.448488, 42.134331, 17.836931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.796213, 42.891743, 17.831964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098064, 42.637054, 17.768555>,  <24.279175, 42.484241, 17.730509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098064, 42.637054, 17.768555>,  <23.796213, 42.891743, 17.831964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.098064, 42.637054, 17.768555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363110, 0.606465, -0.707355,
		0.546525, 0.476227, 0.688853,
		0.754627, -0.636717, -0.158526,
		24.324453, 42.446041, 17.720997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.374668, 43.288071, 17.719398>,  <23.796213, 42.891743, 17.831964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.374668, 43.288071, 17.719398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441732, 42.954201, 17.509560>,  <24.481970, 42.753880, 17.383657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441732, 42.954201, 17.509560>,  <24.374668, 43.288071, 17.719398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.441732, 42.954201, 17.509560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321708, 0.549320, -0.771201,
		0.931877, -0.039468, 0.360621,
		0.167659, -0.834679, -0.524596,
		24.492029, 42.703796, 17.352180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872030, 43.486435, 17.171463>,  <24.374668, 43.288071, 17.719398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872030, 43.486435, 17.171463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771151, 43.131069, 17.018044>,  <24.710623, 42.917850, 16.925993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771151, 43.131069, 17.018044>,  <24.872030, 43.486435, 17.171463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.771151, 43.131069, 17.018044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041211, 0.386139, -0.921519,
		0.966798, -0.248211, -0.060771,
		-0.252197, -0.888419, -0.383548,
		24.695492, 42.864544, 16.902979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388708, 43.201607, 16.630402>,  <24.872030, 43.486435, 17.171463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388708, 43.201607, 16.630402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013615, 43.073383, 16.576889>,  <24.788559, 42.996449, 16.544783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013615, 43.073383, 16.576889>,  <25.388708, 43.201607, 16.630402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013615, 43.073383, 16.576889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060309, 0.529552, -0.846131,
		0.342074, -0.785379, -0.515912,
		-0.937735, -0.320554, -0.133780,
		24.732294, 42.977219, 16.536755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230150, 43.139282, 15.848038>,  <25.388708, 43.201607, 16.630402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230150, 43.139282, 15.848038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880119, 43.137691, 16.041626>,  <24.670101, 43.136738, 16.157778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880119, 43.137691, 16.041626>,  <25.230150, 43.139282, 15.848038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880119, 43.137691, 16.041626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445573, 0.397041, -0.802386,
		-0.188965, -0.917792, -0.349213,
		-0.875076, -0.003977, 0.483970,
		24.617596, 43.136497, 16.186817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717752, 42.670883, 15.397416>,  <25.230150, 43.139282, 15.848038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717752, 42.670883, 15.397416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577221, 42.965614, 15.628469>,  <24.492903, 43.142452, 15.767100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577221, 42.965614, 15.628469>,  <24.717752, 42.670883, 15.397416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577221, 42.965614, 15.628469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433387, 0.418894, -0.797937,
		-0.829906, -0.530675, 0.172161,
		-0.351328, 0.736825, 0.577631,
		24.471823, 43.186661, 15.801758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.891315, 42.655830, 15.433015>,  <24.717752, 42.670883, 15.397416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.891315, 42.655830, 15.433015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053284, 43.013432, 15.509744>,  <24.150465, 43.227993, 15.555781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053284, 43.013432, 15.509744>,  <23.891315, 42.655830, 15.433015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.053284, 43.013432, 15.509744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550374, 0.405838, -0.729646,
		-0.730156, 0.189875, 0.656369,
		0.404921, 0.894004, 0.191823,
		24.174761, 43.281631, 15.567290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.669941, 42.085178, 15.034080>,  <23.891315, 42.655830, 15.433015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.669941, 42.085178, 15.034080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.771544, 41.894455, 14.697476>,  <23.832504, 41.780022, 14.495514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.771544, 41.894455, 14.697476>,  <23.669941, 42.085178, 15.034080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.771544, 41.894455, 14.697476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500638, 0.809235, -0.307407,
		0.827552, -0.343209, 0.444257,
		0.254004, -0.476808, -0.841508,
		23.847744, 41.751411, 14.445024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.367348, 42.572239, 14.510506>,  <23.669941, 42.085178, 15.034080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.367348, 42.572239, 14.510506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.180454, 42.859741, 14.304559>,  <23.068317, 43.032242, 14.180990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.180454, 42.859741, 14.304559>,  <23.367348, 42.572239, 14.510506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.180454, 42.859741, 14.304559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854224, -0.517173, 0.053222,
		-0.228023, 0.464680, 0.855615,
		-0.467233, 0.718752, -0.514869,
		23.040285, 43.075367, 14.150098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.787292, 42.712353, 14.922000>,  <23.367348, 42.572239, 14.510506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.787292, 42.712353, 14.922000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734364, 42.790085, 14.533212>,  <22.702606, 42.836723, 14.299939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.734364, 42.790085, 14.533212>,  <22.787292, 42.712353, 14.922000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734364, 42.790085, 14.533212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832287, -0.554339, 0.002478,
		-0.538319, 0.809287, 0.235089,
		-0.132325, 0.194327, -0.971970,
		22.694666, 42.848385, 14.241620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230745, 42.413673, 15.174256>,  <22.787292, 42.712353, 14.922000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230745, 42.413673, 15.174256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910864, 42.635677, 15.082658>,  <21.718935, 42.768879, 15.027699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910864, 42.635677, 15.082658>,  <22.230745, 42.413673, 15.174256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.910864, 42.635677, 15.082658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186825, 0.132440, 0.973425,
		0.570588, 0.821233, -0.002223,
		-0.799704, 0.555009, -0.228995,
		21.670952, 42.802181, 15.013959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.220245, 43.101646, 15.453279>,  <22.230745, 42.413673, 15.174256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.220245, 43.101646, 15.453279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.848713, 42.954788, 15.433351>,  <21.625793, 42.866673, 15.421393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.848713, 42.954788, 15.433351>,  <22.220245, 43.101646, 15.453279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.848713, 42.954788, 15.433351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107439, 0.138204, 0.984559,
		-0.354587, 0.919841, -0.167813,
		-0.928830, -0.367141, -0.049821,
		21.570065, 42.844646, 15.418405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.265894, 43.297783, 16.236712>,  <22.220245, 43.101646, 15.453279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.265894, 43.297783, 16.236712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.199404, 42.927895, 16.373684>,  <22.159510, 42.705963, 16.455868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.199404, 42.927895, 16.373684>,  <22.265894, 43.297783, 16.236712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.199404, 42.927895, 16.373684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390552, 0.380605, 0.838218,
		-0.905449, 0.005595, -0.424418,
		-0.166226, -0.924721, 0.342433,
		22.149536, 42.650478, 16.476414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.626461, 43.347744, 16.541424>,  <22.265894, 43.297783, 16.236712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.626461, 43.347744, 16.541424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.777311, 43.012432, 16.698936>,  <21.867821, 42.811245, 16.793444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.777311, 43.012432, 16.698936>,  <21.626461, 43.347744, 16.541424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777311, 43.012432, 16.698936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481218, 0.185925, 0.856657,
		-0.791332, -0.512562, -0.333278,
		0.377125, -0.838279, 0.393782,
		21.890450, 42.760948, 16.817072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.108374, 42.916584, 16.861803>,  <21.626461, 43.347744, 16.541424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.108374, 42.916584, 16.861803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.439701, 42.795296, 17.050247>,  <21.638498, 42.722523, 17.163313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.439701, 42.795296, 17.050247>,  <21.108374, 42.916584, 16.861803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.439701, 42.795296, 17.050247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483798, 0.036935, 0.874400,
		-0.282536, -0.952204, -0.116104,
		0.828319, -0.303220, 0.471110,
		21.688196, 42.704330, 17.191580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.854347, 42.523384, 17.328419>,  <21.108374, 42.916584, 16.861803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.854347, 42.523384, 17.328419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.223728, 42.576042, 17.472588>,  <21.445356, 42.607635, 17.559090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.223728, 42.576042, 17.472588>,  <20.854347, 42.523384, 17.328419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.223728, 42.576042, 17.472588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341924, -0.143949, 0.928637,
		0.174131, -0.980790, -0.087918,
		0.923453, 0.131643, 0.360422,
		21.500765, 42.615536, 17.580713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034796, 41.969761, 17.782200>,  <20.854347, 42.523384, 17.328419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034796, 41.969761, 17.782200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.300383, 42.247280, 17.893764>,  <21.459734, 42.413792, 17.960703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.300383, 42.247280, 17.893764>,  <21.034796, 41.969761, 17.782200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.300383, 42.247280, 17.893764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027865, -0.349781, 0.936417,
		0.747242, -0.629522, -0.212911,
		0.663967, 0.693798, 0.278913,
		21.499573, 42.455418, 17.977438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.470724, 41.705013, 18.291132>,  <21.034796, 41.969761, 17.782200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.470724, 41.705013, 18.291132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.568037, 42.087017, 18.358982>,  <21.626425, 42.316219, 18.399693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.568037, 42.087017, 18.358982>,  <21.470724, 41.705013, 18.291132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.568037, 42.087017, 18.358982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023016, -0.169149, 0.985322,
		0.969683, -0.243614, -0.019170,
		0.243281, 0.955009, 0.169628,
		21.641022, 42.373520, 18.409870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.183649, 41.778896, 18.698736>,  <21.470724, 41.705013, 18.291132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.183649, 41.778896, 18.698736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.950718, 42.095310, 18.773735>,  <21.810959, 42.285160, 18.818735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.950718, 42.095310, 18.773735>,  <22.183649, 41.778896, 18.698736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.950718, 42.095310, 18.773735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254136, -0.396210, 0.882288,
		0.772211, 0.466131, 0.431755,
		-0.582328, 0.791037, 0.187497,
		21.776020, 42.332623, 18.829985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269711, 42.025337, 19.353767>,  <22.183649, 41.778896, 18.698736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269711, 42.025337, 19.353767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.903301, 42.154106, 19.258045>,  <21.683455, 42.231365, 19.200611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.903301, 42.154106, 19.258045>,  <22.269711, 42.025337, 19.353767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.903301, 42.154106, 19.258045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344644, -0.326402, 0.880160,
		0.205232, 0.888723, 0.409940,
		-0.916024, 0.321920, -0.239305,
		21.628494, 42.250683, 19.186255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.076256, 42.335606, 19.963221>,  <22.269711, 42.025337, 19.353767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.076256, 42.335606, 19.963221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.726540, 42.280346, 19.777088>,  <21.516710, 42.247192, 19.665409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.726540, 42.280346, 19.777088>,  <22.076256, 42.335606, 19.963221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.726540, 42.280346, 19.777088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353919, -0.474666, 0.805875,
		-0.332206, 0.869257, 0.366102,
		-0.874289, -0.138146, -0.465333,
		21.464252, 42.238903, 19.637487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.601839, 42.251759, 20.545149>,  <22.076256, 42.335606, 19.963221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.601839, 42.251759, 20.545149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391174, 42.117863, 20.232590>,  <21.264776, 42.037525, 20.045055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.391174, 42.117863, 20.232590>,  <21.601839, 42.251759, 20.545149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.391174, 42.117863, 20.232590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497278, -0.624205, 0.602564,
		-0.689452, 0.705917, 0.162286,
		-0.526660, -0.334737, -0.781396,
		21.233177, 42.017441, 19.998171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938589, 42.349361, 20.704988>,  <21.601839, 42.251759, 20.545149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.938589, 42.349361, 20.704988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.964418, 42.061581, 20.428375>,  <20.979916, 41.888912, 20.262407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.964418, 42.061581, 20.428375>,  <20.938589, 42.349361, 20.704988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.964418, 42.061581, 20.428375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313044, -0.672604, 0.670527,
		-0.947541, 0.173183, -0.268653,
		0.064573, -0.719452, -0.691533,
		20.983789, 41.845745, 20.220915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296680, 41.984573, 20.765274>,  <20.938589, 42.349361, 20.704988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296680, 41.984573, 20.765274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.527330, 41.724266, 20.567688>,  <20.665720, 41.568081, 20.449137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.527330, 41.724266, 20.567688>,  <20.296680, 41.984573, 20.765274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527330, 41.724266, 20.567688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184115, -0.692553, 0.697476,
		-0.795994, -0.311235, -0.519160,
		0.576624, -0.650772, -0.493964,
		20.700317, 41.529034, 20.419498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863937, 41.455475, 20.753080>,  <20.296680, 41.984573, 20.765274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863937, 41.455475, 20.753080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.217302, 41.296932, 20.653095>,  <20.429321, 41.201805, 20.593103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.217302, 41.296932, 20.653095>,  <19.863937, 41.455475, 20.753080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217302, 41.296932, 20.653095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141923, -0.734689, 0.663393,
		-0.446589, -0.550574, -0.705285,
		0.883412, -0.396360, -0.249965,
		20.482327, 41.178024, 20.578106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728653, 40.674355, 20.707783>,  <19.863937, 41.455475, 20.753080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728653, 40.674355, 20.707783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.119650, 40.741444, 20.758972>,  <20.354248, 40.781696, 20.789686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.119650, 40.741444, 20.758972>,  <19.728653, 40.674355, 20.707783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.119650, 40.741444, 20.758972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033769, -0.723174, 0.689840,
		0.208249, -0.669992, -0.712561,
		0.977493, 0.167721, 0.127975,
		20.412897, 40.791759, 20.797365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943266, 40.046261, 20.750710>,  <19.728653, 40.674355, 20.707783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943266, 40.046261, 20.750710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239506, 40.252342, 20.923256>,  <20.417250, 40.375992, 21.026783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239506, 40.252342, 20.923256>,  <19.943266, 40.046261, 20.750710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239506, 40.252342, 20.923256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039178, -0.673980, 0.737710,
		0.670802, -0.529449, -0.519335,
		0.740601, 0.515204, 0.431364,
		20.461687, 40.406902, 21.052666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283810, 39.571213, 20.996996>,  <19.943266, 40.046261, 20.750710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283810, 39.571213, 20.996996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419437, 39.880764, 21.210964>,  <20.500814, 40.066494, 21.339346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419437, 39.880764, 21.210964>,  <20.283810, 39.571213, 20.996996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419437, 39.880764, 21.210964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043724, -0.580952, 0.812762,
		0.939745, -0.252195, -0.230820,
		0.339070, 0.773881, 0.534920,
		20.521158, 40.112930, 21.371441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.835699, 39.437836, 21.226679>,  <20.283810, 39.571213, 20.996996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.835699, 39.437836, 21.226679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.743532, 39.734756, 21.478359>,  <20.688232, 39.912910, 21.629368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.743532, 39.734756, 21.478359>,  <20.835699, 39.437836, 21.226679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.743532, 39.734756, 21.478359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178807, -0.603290, 0.777219,
		0.956523, 0.291590, 0.006279,
		-0.230418, 0.742305, 0.629199,
		20.674406, 39.957447, 21.667118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.348557, 39.406544, 21.830175>,  <20.835699, 39.437836, 21.226679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.348557, 39.406544, 21.830175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.015253, 39.589348, 21.954643>,  <20.815271, 39.699028, 22.029324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.015253, 39.589348, 21.954643>,  <21.348557, 39.406544, 21.830175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.015253, 39.589348, 21.954643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080621, -0.456362, 0.886134,
		0.546976, 0.763465, 0.343422,
		-0.833257, 0.457007, 0.311170,
		20.765276, 39.726448, 22.047995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621149, 39.818226, 22.317799>,  <21.348557, 39.406544, 21.830175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621149, 39.818226, 22.317799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.233189, 39.743835, 22.380672>,  <21.000412, 39.699200, 22.418396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.233189, 39.743835, 22.380672>,  <21.621149, 39.818226, 22.317799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.233189, 39.743835, 22.380672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208033, -0.297384, 0.931818,
		-0.126552, 0.936470, 0.327122,
		-0.969900, -0.185976, 0.157183,
		20.942219, 39.688042, 22.427828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.522984, 39.928398, 23.008495>,  <21.621149, 39.818226, 22.317799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.522984, 39.928398, 23.008495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209187, 39.687698, 22.948536>,  <21.020908, 39.543278, 22.912560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.209187, 39.687698, 22.948536>,  <21.522984, 39.928398, 23.008495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209187, 39.687698, 22.948536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229993, -0.506800, 0.830817,
		-0.575912, 0.617294, 0.535979,
		-0.784492, -0.601749, -0.149899,
		20.973839, 39.507175, 22.903566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.287191, 39.838730, 23.668936>,  <21.522984, 39.928398, 23.008495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.287191, 39.838730, 23.668936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107393, 39.537857, 23.476200>,  <20.999514, 39.357334, 23.360559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107393, 39.537857, 23.476200>,  <21.287191, 39.838730, 23.668936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107393, 39.537857, 23.476200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153888, -0.596544, 0.787689,
		-0.879927, 0.279914, 0.383896,
		-0.449496, -0.752186, -0.481840,
		20.972544, 39.312202, 23.331648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.921083, 39.578636, 24.150255>,  <21.287191, 39.838730, 23.668936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.921083, 39.578636, 24.150255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.937353, 39.286625, 23.877373>,  <20.947115, 39.111420, 23.713644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.937353, 39.286625, 23.877373>,  <20.921083, 39.578636, 24.150255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.937353, 39.286625, 23.877373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194094, -0.663992, 0.722109,
		-0.980140, -0.161782, 0.114688,
		0.040672, -0.730028, -0.682206,
		20.949554, 39.067616, 23.672710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.496510, 39.127422, 24.376215>,  <20.921083, 39.578636, 24.150255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.496510, 39.127422, 24.376215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.737856, 38.915176, 24.138092>,  <20.882664, 38.787827, 23.995218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.737856, 38.915176, 24.138092>,  <20.496510, 39.127422, 24.376215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.737856, 38.915176, 24.138092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181927, -0.635230, 0.750591,
		-0.776435, -0.561184, -0.286743,
		0.603367, -0.530618, -0.595309,
		20.918867, 38.755993, 23.959499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.851498, 39.303822, 24.149595>,  <20.496510, 39.127422, 24.376215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.851498, 39.303822, 24.149595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.515245, 39.232212, 24.354061>,  <19.313494, 39.189247, 24.476742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.515245, 39.232212, 24.354061>,  <19.851498, 39.303822, 24.149595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.515245, 39.232212, 24.354061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278395, -0.666743, -0.691340,
		0.464583, -0.723467, 0.510645,
		-0.840631, -0.179024, 0.511167,
		19.263056, 39.178505, 24.507412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.694626, 38.559162, 24.179638>,  <19.851498, 39.303822, 24.149595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.694626, 38.559162, 24.179638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362299, 38.781273, 24.194675>,  <19.162903, 38.914539, 24.203697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362299, 38.781273, 24.194675>,  <19.694626, 38.559162, 24.179638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.362299, 38.781273, 24.194675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445422, -0.622917, -0.643097,
		-0.333676, -0.551042, 0.764862,
		-0.830818, 0.555273, 0.037594,
		19.113054, 38.947853, 24.205954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.023201, 38.089066, 24.276012>,  <19.694626, 38.559162, 24.179638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.023201, 38.089066, 24.276012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987186, 38.426086, 24.063599>,  <18.965578, 38.628300, 23.936150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987186, 38.426086, 24.063599>,  <19.023201, 38.089066, 24.276012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987186, 38.426086, 24.063599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383395, -0.521433, -0.762309,
		-0.919185, 0.134961, 0.369979,
		-0.090037, 0.842552, -0.531037,
		18.960175, 38.678852, 23.904287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319939, 38.139507, 23.949448>,  <19.023201, 38.089066, 24.276012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319939, 38.139507, 23.949448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586597, 38.345901, 23.734287>,  <18.746593, 38.469738, 23.605190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.586597, 38.345901, 23.734287>,  <18.319939, 38.139507, 23.949448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586597, 38.345901, 23.734287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229024, -0.544946, -0.806586,
		-0.709315, 0.660901, -0.245114,
		0.666648, 0.515987, -0.537901,
		18.786592, 38.500698, 23.572916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.173559, 37.563725, 23.565733>,  <18.319939, 38.139507, 23.949448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.173559, 37.563725, 23.565733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.249847, 37.829235, 23.276451>,  <18.295620, 37.988541, 23.102882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.249847, 37.829235, 23.276451>,  <18.173559, 37.563725, 23.565733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.249847, 37.829235, 23.276451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012687, 0.735000, 0.677948,
		0.981562, -0.138474, 0.131758,
		0.190720, 0.663777, -0.723205,
		18.307064, 38.028370, 23.059490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.983883, 29.522196, 31.951965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.372456, 29.616821, 31.944363>,  <30.605598, 29.673597, 31.939800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.372456, 29.616821, 31.944363>,  <29.983883, 29.522196, 31.951965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372456, 29.616821, 31.944363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043576, 0.099070, -0.994126,
		-0.233293, 0.966552, 0.106549,
		0.971430, 0.236565, -0.019006,
		30.663885, 29.687790, 31.938662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976528, 30.011497, 31.500214>,  <29.983883, 29.522196, 31.951965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976528, 30.011497, 31.500214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.347485, 29.862728, 31.516315>,  <30.570059, 29.773466, 31.525976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.347485, 29.862728, 31.516315>,  <29.976528, 30.011497, 31.500214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347485, 29.862728, 31.516315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102983, 0.150370, -0.983252,
		0.359643, 0.916003, 0.177753,
		0.927390, -0.371925, 0.040253,
		30.625702, 29.751150, 31.528391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336578, 30.483683, 31.053196>,  <29.976528, 30.011497, 31.500214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336578, 30.483683, 31.053196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.558666, 30.152328, 31.082890>,  <30.691919, 29.953516, 31.100706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.558666, 30.152328, 31.082890>,  <30.336578, 30.483683, 31.053196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558666, 30.152328, 31.082890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187268, 0.037551, -0.981591,
		0.810348, 0.558898, 0.175979,
		0.555218, -0.828386, 0.074234,
		30.725231, 29.903812, 31.105160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982807, 30.653204, 30.745222>,  <30.336578, 30.483683, 31.053196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982807, 30.653204, 30.745222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.970953, 30.254387, 30.716866>,  <30.963840, 30.015097, 30.699852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.970953, 30.254387, 30.716866>,  <30.982807, 30.653204, 30.745222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970953, 30.254387, 30.716866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043331, 0.069577, -0.996635,
		0.998621, -0.032608, 0.041141,
		-0.029636, -0.997044, -0.070894,
		30.962063, 29.955275, 30.695597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473242, 30.472950, 30.261253>,  <30.982807, 30.653204, 30.745222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473242, 30.472950, 30.261253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.239180, 30.148899, 30.275612>,  <31.098742, 29.954470, 30.284227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.239180, 30.148899, 30.275612>,  <31.473242, 30.472950, 30.261253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239180, 30.148899, 30.275612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168719, -0.164927, -0.971768,
		0.793175, -0.562579, 0.233192,
		-0.585156, -0.810125, 0.035898,
		31.063633, 29.905861, 30.286381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865879, 29.991590, 29.819355>,  <31.473242, 30.472950, 30.261253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865879, 29.991590, 29.819355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.487711, 29.861324, 29.823750>,  <31.260811, 29.783165, 29.826387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.487711, 29.861324, 29.823750>,  <31.865879, 29.991590, 29.819355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487711, 29.861324, 29.823750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021297, 0.028105, -0.999378,
		0.325156, -0.945067, -0.033507,
		-0.945421, -0.325667, 0.010988,
		31.204084, 29.763624, 29.827045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839643, 29.322229, 29.408604>,  <31.865879, 29.991590, 29.819355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839643, 29.322229, 29.408604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.487064, 29.507004, 29.447918>,  <31.275517, 29.617868, 29.471506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.487064, 29.507004, 29.447918>,  <31.839643, 29.322229, 29.408604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487064, 29.507004, 29.447918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051643, 0.112582, -0.992299,
		-0.469445, -0.879738, -0.075380,
		-0.881450, 0.461937, 0.098283,
		31.222630, 29.645584, 29.477404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595474, 29.130396, 28.773537>,  <31.839643, 29.322229, 29.408604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595474, 29.130396, 28.773537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.344589, 29.401760, 28.926567>,  <31.194057, 29.564579, 29.018385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.344589, 29.401760, 28.926567>,  <31.595474, 29.130396, 28.773537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344589, 29.401760, 28.926567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183893, 0.348327, -0.919158,
		-0.756828, -0.646860, -0.093719,
		-0.627212, 0.678410, 0.382577,
		31.156425, 29.605284, 29.041340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073481, 29.309942, 28.232456>,  <31.595474, 29.130396, 28.773537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073481, 29.309942, 28.232456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.050148, 29.640739, 28.456127>,  <31.036148, 29.839218, 28.590330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.050148, 29.640739, 28.456127>,  <31.073481, 29.309942, 28.232456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050148, 29.640739, 28.456127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314254, 0.516444, -0.796574,
		-0.947545, -0.222190, 0.229761,
		-0.058332, 0.826993, 0.559178,
		31.032648, 29.888838, 28.623880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396158, 29.566378, 28.120783>,  <31.073481, 29.309942, 28.232456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396158, 29.566378, 28.120783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.627451, 29.865307, 28.251724>,  <30.766226, 30.044664, 28.330288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.627451, 29.865307, 28.251724>,  <30.396158, 29.566378, 28.120783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627451, 29.865307, 28.251724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319301, 0.576508, -0.752121,
		-0.750797, 0.330375, 0.571975,
		0.578230, 0.747322, 0.327352,
		30.800920, 30.089504, 28.349930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044596, 30.115993, 28.005547>,  <30.396158, 29.566378, 28.120783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044596, 30.115993, 28.005547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412582, 30.269997, 28.035034>,  <30.633373, 30.362398, 28.052727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.412582, 30.269997, 28.035034>,  <30.044596, 30.115993, 28.005547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412582, 30.269997, 28.035034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178014, 0.577868, -0.796479,
		-0.349249, 0.719610, 0.600155,
		0.919965, 0.385006, 0.073719,
		30.688572, 30.385498, 28.057150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869265, 30.810301, 28.070835>,  <30.044596, 30.115993, 28.005547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869265, 30.810301, 28.070835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.242815, 30.782860, 27.930454>,  <30.466946, 30.766396, 27.846226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.242815, 30.782860, 27.930454>,  <29.869265, 30.810301, 28.070835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242815, 30.782860, 27.930454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197864, 0.718369, -0.666930,
		0.297866, 0.692272, 0.657294,
		0.933877, -0.068602, -0.350953,
		30.522978, 30.762280, 27.825169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142941, 31.481026, 27.945900>,  <29.869265, 30.810301, 28.070835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142941, 31.481026, 27.945900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.381048, 31.283417, 27.692413>,  <30.523912, 31.164852, 27.540321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.381048, 31.283417, 27.692413>,  <30.142941, 31.481026, 27.945900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381048, 31.283417, 27.692413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108620, 0.731958, -0.672636,
		0.796152, 0.469234, 0.382050,
		0.595268, -0.494022, -0.633718,
		30.559629, 31.135210, 27.502298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566847, 31.985931, 27.735765>,  <30.142941, 31.481026, 27.945900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566847, 31.985931, 27.735765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.620104, 31.692333, 27.469376>,  <30.652058, 31.516174, 27.309542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.620104, 31.692333, 27.469376>,  <30.566847, 31.985931, 27.735765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620104, 31.692333, 27.469376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013950, 0.673277, -0.739258,
		0.990999, 0.089137, 0.099882,
		0.133143, -0.733997, -0.665973,
		30.660048, 31.472134, 27.269583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080254, 32.299732, 27.321772>,  <30.566847, 31.985931, 27.735765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080254, 32.299732, 27.321772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.941498, 32.007801, 27.086136>,  <30.858244, 31.832644, 26.944756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.941498, 32.007801, 27.086136>,  <31.080254, 32.299732, 27.321772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941498, 32.007801, 27.086136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000536, 0.628242, -0.778018,
		0.937906, -0.269570, -0.218321,
		-0.346888, -0.729825, -0.589087,
		30.837431, 31.788853, 26.909410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480972, 32.180241, 26.715662>,  <31.080254, 32.299732, 27.321772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480972, 32.180241, 26.715662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.138891, 32.011265, 26.595547>,  <30.933643, 31.909878, 26.523478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.138891, 32.011265, 26.595547>,  <31.480972, 32.180241, 26.715662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138891, 32.011265, 26.595547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086816, 0.454430, -0.886542,
		0.510971, -0.784242, -0.351956,
		-0.855202, -0.422442, -0.300285,
		30.882330, 31.884531, 26.505461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506699, 31.985312, 25.953951>,  <31.480972, 32.180241, 26.715662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506699, 31.985312, 25.953951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.110893, 31.974983, 26.010792>,  <30.873409, 31.968786, 26.044895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.110893, 31.974983, 26.010792>,  <31.506699, 31.985312, 25.953951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110893, 31.974983, 26.010792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133517, 0.538669, -0.831871,
		-0.055067, -0.842122, -0.536469,
		-0.989516, -0.025819, 0.142100,
		30.814039, 31.967237, 26.053421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220018, 31.955929, 25.253704>,  <31.506699, 31.985312, 25.953951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220018, 31.955929, 25.253704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.949318, 32.119377, 25.498665>,  <30.786898, 32.217445, 25.645641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.949318, 32.119377, 25.498665>,  <31.220018, 31.955929, 25.253704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949318, 32.119377, 25.498665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260852, 0.644775, -0.718486,
		-0.688450, -0.645983, -0.329763,
		-0.676752, 0.408622, 0.612401,
		30.746292, 32.241962, 25.682384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680698, 31.941050, 24.869591>,  <31.220018, 31.955929, 25.253704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680698, 31.941050, 24.869591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.598846, 32.224529, 25.139664>,  <30.549734, 32.394615, 25.301708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.598846, 32.224529, 25.139664>,  <30.680698, 31.941050, 24.869591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598846, 32.224529, 25.139664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339630, 0.595521, -0.728016,
		-0.918029, -0.378288, 0.118833,
		-0.204632, 0.708699, 0.675183,
		30.537457, 32.437138, 25.342218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011486, 32.175011, 24.688984>,  <30.680698, 31.941050, 24.869591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011486, 32.175011, 24.688984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.141096, 32.473942, 24.921021>,  <30.218863, 32.653301, 25.060242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.141096, 32.473942, 24.921021>,  <30.011486, 32.175011, 24.688984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141096, 32.473942, 24.921021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323367, 0.663730, -0.674459,
		-0.889068, 0.030960, 0.456728,
		0.324025, 0.747331, 0.580090,
		30.238304, 32.698139, 25.095047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472240, 32.657955, 24.882523>,  <30.011486, 32.175011, 24.688984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472240, 32.657955, 24.882523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.817499, 32.858982, 24.902130>,  <30.024654, 32.979599, 24.913895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.817499, 32.858982, 24.902130>,  <29.472240, 32.657955, 24.882523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817499, 32.858982, 24.902130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368602, 0.693446, -0.619084,
		-0.345125, 0.516291, 0.783794,
		0.863146, 0.502569, 0.049020,
		30.076443, 33.009754, 24.916836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260614, 33.288383, 25.076559>,  <29.472240, 32.657955, 24.882523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260614, 33.288383, 25.076559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.617989, 33.318962, 24.899502>,  <29.832413, 33.337311, 24.793268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.617989, 33.318962, 24.899502>,  <29.260614, 33.288383, 25.076559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617989, 33.318962, 24.899502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391177, 0.616810, -0.683027,
		0.220810, 0.783391, 0.580983,
		0.893434, 0.076448, -0.442642,
		29.886019, 33.341896, 24.766708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225807, 33.999382, 25.167871>,  <29.260614, 33.288383, 25.076559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225807, 33.999382, 25.167871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.893333, 34.091209, 24.965317>,  <28.693850, 34.146305, 24.843784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.893333, 34.091209, 24.965317>,  <29.225807, 33.999382, 25.167871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893333, 34.091209, 24.965317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553755, -0.260129, 0.791005,
		0.049864, 0.937886, 0.343340,
		-0.831186, 0.229569, -0.506388,
		28.643978, 34.160080, 24.813400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868504, 34.355690, 25.688835>,  <29.225807, 33.999382, 25.167871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868504, 34.355690, 25.688835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.606598, 34.201546, 25.428749>,  <28.449453, 34.109058, 25.272697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.606598, 34.201546, 25.428749>,  <28.868504, 34.355690, 25.688835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606598, 34.201546, 25.428749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559818, -0.330735, 0.759749,
		-0.507824, 0.861460, 0.000825,
		-0.654766, -0.385357, -0.650216,
		28.410168, 34.085938, 25.233685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273817, 34.412674, 25.965803>,  <28.868504, 34.355690, 25.688835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273817, 34.412674, 25.965803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158709, 34.134243, 25.702694>,  <28.089643, 33.967186, 25.544828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158709, 34.134243, 25.702694>,  <28.273817, 34.412674, 25.965803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158709, 34.134243, 25.702694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617655, -0.390002, 0.682936,
		-0.731909, 0.602805, -0.317704,
		-0.287772, -0.696078, -0.657771,
		28.072376, 33.925419, 25.505363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495934, 34.428120, 25.951710>,  <28.273817, 34.412674, 25.965803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495934, 34.428120, 25.951710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.620855, 34.068993, 25.827526>,  <27.695808, 33.853516, 25.753016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.620855, 34.068993, 25.827526>,  <27.495934, 34.428120, 25.951710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620855, 34.068993, 25.827526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549104, -0.437285, 0.712226,
		-0.775211, -0.051956, -0.629563,
		0.312303, -0.897821, -0.310459,
		27.714546, 33.799644, 25.734388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938538, 33.889484, 26.054874>,  <27.495934, 34.428120, 25.951710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938538, 33.889484, 26.054874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.274446, 33.675610, 26.017155>,  <27.475992, 33.547283, 25.994522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.274446, 33.675610, 26.017155>,  <26.938538, 33.889484, 26.054874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274446, 33.675610, 26.017155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233320, -0.512224, 0.826552,
		-0.490249, -0.672114, -0.554905,
		0.839772, -0.534686, -0.094299,
		27.526379, 33.515202, 25.988865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773516, 33.173817, 26.062492>,  <26.938538, 33.889484, 26.054874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773516, 33.173817, 26.062492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.161091, 33.185650, 26.160702>,  <27.393637, 33.192749, 26.219627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.161091, 33.185650, 26.160702>,  <26.773516, 33.173817, 26.062492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161091, 33.185650, 26.160702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151473, -0.713802, 0.683771,
		0.195483, -0.699723, -0.687150,
		0.968939, 0.029581, 0.245525,
		27.451773, 33.194523, 26.234360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011194, 32.514828, 26.112335>,  <26.773516, 33.173817, 26.062492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011194, 32.514828, 26.112335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.331617, 32.664200, 26.299461>,  <27.523872, 32.753822, 26.411737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.331617, 32.664200, 26.299461>,  <27.011194, 32.514828, 26.112335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331617, 32.664200, 26.299461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150330, -0.630981, 0.761094,
		0.579400, -0.680009, -0.449315,
		0.801059, 0.373433, 0.467816,
		27.571936, 32.776230, 26.439806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491449, 31.938984, 26.216333>,  <27.011194, 32.514828, 26.112335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491449, 31.938984, 26.216333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.556578, 32.230354, 26.482533>,  <27.595654, 32.405174, 26.642252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.556578, 32.230354, 26.482533>,  <27.491449, 31.938984, 26.216333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556578, 32.230354, 26.482533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208567, -0.633847, 0.744807,
		0.964360, -0.260070, 0.048722,
		0.162819, 0.728424, 0.665498,
		27.605423, 32.448883, 26.682182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915808, 31.670437, 26.724407>,  <27.491449, 31.938984, 26.216333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915808, 31.670437, 26.724407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.775343, 31.992939, 26.914833>,  <27.691065, 32.186440, 27.029089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.775343, 31.992939, 26.914833>,  <27.915808, 31.670437, 26.724407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775343, 31.992939, 26.914833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086075, -0.534090, 0.841035,
		0.932350, 0.254362, 0.256951,
		-0.351162, 0.806255, 0.476064,
		27.669994, 32.234818, 27.057652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308220, 31.754702, 27.302519>,  <27.915808, 31.670437, 26.724407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308220, 31.754702, 27.302519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.974142, 31.962318, 27.375229>,  <27.773695, 32.086887, 27.418856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.974142, 31.962318, 27.375229>,  <28.308220, 31.754702, 27.302519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974142, 31.962318, 27.375229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017111, -0.354898, 0.934749,
		0.549686, 0.777588, 0.305290,
		-0.835196, 0.519042, 0.181777,
		27.723583, 32.118031, 27.429762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464880, 32.004055, 27.953871>,  <28.308220, 31.754702, 27.302519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464880, 32.004055, 27.953871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.068308, 32.031994, 27.909718>,  <27.830364, 32.048759, 27.883226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.068308, 32.031994, 27.909718>,  <28.464880, 32.004055, 27.953871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068308, 32.031994, 27.909718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124925, -0.260072, 0.957474,
		0.038171, 0.963059, 0.266569,
		-0.991432, 0.069849, -0.110383,
		27.770878, 32.052948, 27.876602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213932, 32.416000, 28.609184>,  <28.464880, 32.004055, 27.953871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213932, 32.416000, 28.609184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.923210, 32.199593, 28.439926>,  <27.748777, 32.069748, 28.338371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.923210, 32.199593, 28.439926>,  <28.213932, 32.416000, 28.609184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923210, 32.199593, 28.439926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064670, -0.559433, 0.826349,
		-0.683795, 0.627958, 0.371610,
		-0.726803, -0.541021, -0.423147,
		27.705170, 32.037285, 28.312983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737858, 32.416050, 29.159264>,  <28.213932, 32.416000, 28.609184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737858, 32.416050, 29.159264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.583801, 32.120422, 28.938194>,  <27.491367, 31.943047, 28.805553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.583801, 32.120422, 28.938194>,  <27.737858, 32.416050, 29.159264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583801, 32.120422, 28.938194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058165, -0.617120, 0.784717,
		-0.921024, 0.270079, 0.280665,
		-0.385139, -0.739067, -0.552673,
		27.468260, 31.898703, 28.772392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085058, 32.184219, 29.435875>,  <27.737858, 32.416050, 29.159264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085058, 32.184219, 29.435875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.238857, 31.869316, 29.243053>,  <27.331137, 31.680372, 29.127359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.238857, 31.869316, 29.243053>,  <27.085058, 32.184219, 29.435875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238857, 31.869316, 29.243053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179787, -0.576064, 0.797388,
		-0.905448, -0.219928, -0.363036,
		0.384500, -0.787263, -0.482056,
		27.354208, 31.633137, 29.098436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680464, 31.584175, 29.668449>,  <27.085058, 32.184219, 29.435875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680464, 31.584175, 29.668449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.013365, 31.424305, 29.514767>,  <27.213104, 31.328382, 29.422556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.013365, 31.424305, 29.514767>,  <26.680464, 31.584175, 29.668449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013365, 31.424305, 29.514767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029921, -0.724391, 0.688740,
		-0.553590, -0.561709, -0.614834,
		0.832252, -0.399676, -0.384209,
		27.263041, 31.304401, 29.399504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600233, 30.893530, 29.736944>,  <26.680464, 31.584175, 29.668449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600233, 30.893530, 29.736944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.996733, 30.921246, 29.691994>,  <27.234632, 30.937876, 29.665024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.996733, 30.921246, 29.691994>,  <26.600233, 30.893530, 29.736944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996733, 30.921246, 29.691994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125062, -0.765514, 0.631148,
		-0.042293, -0.639678, -0.767479,
		0.991247, 0.069289, -0.112376,
		27.294107, 30.942032, 29.658281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793634, 30.240437, 29.775381>,  <26.600233, 30.893530, 29.736944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793634, 30.240437, 29.775381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.148687, 30.423626, 29.794853>,  <27.361719, 30.533539, 29.806536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.148687, 30.423626, 29.794853>,  <26.793634, 30.240437, 29.775381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148687, 30.423626, 29.794853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326875, -0.700925, 0.633922,
		0.324438, -0.546778, -0.771864,
		0.887633, 0.457972, 0.048678,
		27.414978, 30.561018, 29.809456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262119, 29.660427, 29.878653>,  <26.793634, 30.240437, 29.775381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262119, 29.660427, 29.878653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.471735, 29.981335, 29.993015>,  <27.597506, 30.173880, 30.061634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.471735, 29.981335, 29.993015>,  <27.262119, 29.660427, 29.878653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471735, 29.981335, 29.993015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464974, -0.550746, 0.693165,
		0.713568, -0.230307, -0.661649,
		0.524041, 0.802270, 0.285908,
		27.628948, 30.222015, 30.078787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.070599, 29.420183, 30.106014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.993578, 29.764061, 30.295265>,  <27.947365, 29.970387, 30.408815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.993578, 29.764061, 30.295265>,  <28.070599, 29.420183, 30.106014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993578, 29.764061, 30.295265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467932, -0.343361, 0.814336,
		0.862533, 0.378194, -0.336163,
		-0.192552, 0.859693, 0.473130,
		27.935812, 30.021969, 30.437204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700701, 29.638079, 30.445480>,  <28.070599, 29.420183, 30.106014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700701, 29.638079, 30.445480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.404053, 29.829845, 30.633167>,  <28.226065, 29.944904, 30.745779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.404053, 29.829845, 30.633167>,  <28.700701, 29.638079, 30.445480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404053, 29.829845, 30.633167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352431, -0.316701, 0.880620,
		0.570784, 0.818450, 0.065910,
		-0.741618, 0.479415, 0.469216,
		28.181568, 29.973671, 30.773932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957235, 29.897755, 31.115189>,  <28.700701, 29.638079, 30.445480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957235, 29.897755, 31.115189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.565891, 29.943027, 31.184475>,  <28.331085, 29.970192, 31.226048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.565891, 29.943027, 31.184475>,  <28.957235, 29.897755, 31.115189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565891, 29.943027, 31.184475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156993, -0.139273, 0.977730,
		0.134786, 0.983764, 0.118491,
		-0.978359, 0.113183, 0.173216,
		28.272383, 29.976982, 31.236441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907751, 30.391726, 31.700882>,  <28.957235, 29.897755, 31.115189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907751, 30.391726, 31.700882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.564747, 30.186108, 31.692558>,  <28.358944, 30.062737, 31.687565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.564747, 30.186108, 31.692558>,  <28.907751, 30.391726, 31.700882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564747, 30.186108, 31.692558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039247, -0.105694, 0.993624,
		-0.512968, 0.851226, 0.110809,
		-0.857510, -0.514046, -0.020809,
		28.307493, 30.031895, 31.686316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313063, 30.762590, 32.146877>,  <28.907751, 30.391726, 31.700882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313063, 30.762590, 32.146877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.258160, 30.366863, 32.127224>,  <28.225218, 30.129427, 32.115433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.258160, 30.366863, 32.127224>,  <28.313063, 30.762590, 32.146877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258160, 30.366863, 32.127224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091847, -0.036678, 0.995097,
		-0.986268, 0.141099, -0.085832,
		-0.137259, -0.989316, -0.049134,
		28.216982, 30.070068, 32.112484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782745, 30.592657, 32.679771>,  <28.313063, 30.762590, 32.146877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782745, 30.592657, 32.679771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949366, 30.234352, 32.617683>,  <28.049337, 30.019369, 32.580433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949366, 30.234352, 32.617683>,  <27.782745, 30.592657, 32.679771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949366, 30.234352, 32.617683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072417, -0.137499, 0.987851,
		-0.906225, -0.422729, 0.007594,
		0.416549, -0.895765, -0.155218,
		28.074329, 29.965622, 32.571117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357649, 30.146955, 33.046642>,  <27.782745, 30.592657, 32.679771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357649, 30.146955, 33.046642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.702898, 29.949524, 33.003933>,  <27.910048, 29.831064, 32.978310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.702898, 29.949524, 33.003933>,  <27.357649, 30.146955, 33.046642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702898, 29.949524, 33.003933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012543, -0.190407, 0.981625,
		-0.504839, -0.848602, -0.158154,
		0.863123, -0.493579, -0.106769,
		27.961834, 29.801451, 32.971901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298071, 29.419861, 33.326023>,  <27.357649, 30.146955, 33.046642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298071, 29.419861, 33.326023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.690157, 29.495880, 33.348164>,  <27.925407, 29.541492, 33.361446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.690157, 29.495880, 33.348164>,  <27.298071, 29.419861, 33.326023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690157, 29.495880, 33.348164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054983, -0.007194, 0.998461,
		0.190157, -0.981748, 0.003398,
		0.980213, 0.190051, 0.055348,
		27.984221, 29.552895, 33.364769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389008, 29.203218, 33.952930>,  <27.298071, 29.419861, 33.326023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389008, 29.203218, 33.952930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.752279, 29.345745, 33.865067>,  <27.970242, 29.431261, 33.812347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.752279, 29.345745, 33.865067>,  <27.389008, 29.203218, 33.952930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752279, 29.345745, 33.865067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167949, 0.170500, 0.970939,
		0.383416, -0.918677, 0.095001,
		0.908177, 0.356318, -0.219663,
		28.024733, 29.452641, 33.799168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933298, 28.647909, 34.195381>,  <27.389008, 29.203218, 33.952930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933298, 28.647909, 34.195381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.042805, 29.032627, 34.195908>,  <28.108509, 29.263458, 34.196224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.042805, 29.032627, 34.195908>,  <27.933298, 28.647909, 34.195381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042805, 29.032627, 34.195908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189477, -0.055274, 0.980328,
		0.942948, -0.268130, -0.197370,
		0.273765, 0.961796, 0.001316,
		28.124935, 29.321165, 34.196304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324705, 28.671497, 34.798611>,  <27.933298, 28.647909, 34.195381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324705, 28.671497, 34.798611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.286257, 29.059658, 34.709991>,  <28.263187, 29.292555, 34.656818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.286257, 29.059658, 34.709991>,  <28.324705, 28.671497, 34.798611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286257, 29.059658, 34.709991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065665, 0.228279, 0.971379,
		0.993201, 0.078819, -0.085664,
		-0.096119, 0.970400, -0.221552,
		28.257421, 29.350779, 34.643524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923332, 28.960291, 35.049084>,  <28.324705, 28.671497, 34.798611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923332, 28.960291, 35.049084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.637815, 29.239670, 35.028416>,  <28.466505, 29.407297, 35.016014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.637815, 29.239670, 35.028416>,  <28.923332, 28.960291, 35.049084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637815, 29.239670, 35.028416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110032, 0.184694, 0.976617,
		0.691659, 0.691417, -0.208685,
		-0.713793, 0.698448, -0.051667,
		28.423677, 29.449203, 35.012917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125044, 29.523352, 35.463150>,  <28.923332, 28.960291, 35.049084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125044, 29.523352, 35.463150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730648, 29.576412, 35.422695>,  <28.494011, 29.608248, 35.398422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730648, 29.576412, 35.422695>,  <29.125044, 29.523352, 35.463150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730648, 29.576412, 35.422695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074600, 0.191634, 0.978627,
		0.149197, 0.972461, -0.179054,
		-0.985990, 0.132650, -0.101136,
		28.434851, 29.616207, 35.392353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982824, 29.965275, 35.997986>,  <29.125044, 29.523352, 35.463150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982824, 29.965275, 35.997986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.616690, 29.826218, 35.916698>,  <28.397009, 29.742783, 35.867928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.616690, 29.826218, 35.916698>,  <28.982824, 29.965275, 35.997986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616690, 29.826218, 35.916698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222927, 0.017198, 0.974684,
		-0.335349, 0.937469, -0.093241,
		-0.915339, -0.347645, -0.203220,
		28.342089, 29.721924, 35.855732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465939, 30.441139, 36.277649>,  <28.982824, 29.965275, 35.997986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465939, 30.441139, 36.277649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.262932, 30.098618, 36.239349>,  <28.141129, 29.893105, 36.216370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.262932, 30.098618, 36.239349>,  <28.465939, 30.441139, 36.277649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262932, 30.098618, 36.239349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170734, -0.008978, 0.985276,
		-0.844558, 0.516390, -0.141644,
		-0.507516, -0.856306, -0.095748,
		28.110678, 29.841726, 36.210625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884050, 30.554470, 36.734856>,  <28.465939, 30.441139, 36.277649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884050, 30.554470, 36.734856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.873569, 30.161449, 36.661205>,  <27.867281, 29.925636, 36.617016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.873569, 30.161449, 36.661205>,  <27.884050, 30.554470, 36.734856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873569, 30.161449, 36.661205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282334, -0.169414, 0.944239,
		-0.958958, 0.076728, -0.272969,
		-0.026204, -0.982554, -0.184124,
		27.865707, 29.866684, 36.605968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316359, 30.141060, 36.939251>,  <27.884050, 30.554470, 36.734856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316359, 30.141060, 36.939251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.596155, 29.855278, 36.945839>,  <27.764032, 29.683809, 36.949791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.596155, 29.855278, 36.945839>,  <27.316359, 30.141060, 36.939251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596155, 29.855278, 36.945839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317302, -0.289840, 0.902946,
		-0.640339, -0.636827, -0.429438,
		0.699489, -0.714453, 0.016471,
		27.806002, 29.640942, 36.950779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026707, 29.670120, 37.328114>,  <27.316359, 30.141060, 36.939251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026707, 29.670120, 37.328114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.408979, 29.552898, 37.339390>,  <27.638342, 29.482565, 37.346157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.408979, 29.552898, 37.339390>,  <27.026707, 29.670120, 37.328114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408979, 29.552898, 37.339390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126626, -0.322702, 0.937992,
		-0.265783, -0.899991, -0.345508,
		0.955681, -0.293053, 0.028194,
		27.695683, 29.464981, 37.347847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008535, 29.148474, 37.729401>,  <27.026707, 29.670120, 37.328114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008535, 29.148474, 37.729401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.399277, 29.232594, 37.745060>,  <27.633722, 29.283066, 37.754456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.399277, 29.232594, 37.745060>,  <27.008535, 29.148474, 37.729401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399277, 29.232594, 37.745060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010109, -0.228214, 0.973559,
		0.213674, -0.950628, -0.225057,
		0.976853, 0.210299, 0.039153,
		27.692333, 29.295683, 37.756805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343067, 28.609821, 38.015987>,  <27.008535, 29.148474, 37.729401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343067, 28.609821, 38.015987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.646048, 28.866158, 38.065933>,  <27.827835, 29.019958, 38.095901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.646048, 28.866158, 38.065933>,  <27.343067, 28.609821, 38.015987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646048, 28.866158, 38.065933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070294, -0.110090, 0.991433,
		0.649096, -0.759740, -0.038340,
		0.757451, 0.640840, 0.124864,
		27.873283, 29.058409, 38.103394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761940, 28.312618, 38.610569>,  <27.343067, 28.609821, 38.015987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761940, 28.312618, 38.610569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.922298, 28.677536, 38.577095>,  <28.018513, 28.896486, 38.557011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.922298, 28.677536, 38.577095>,  <27.761940, 28.312618, 38.610569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922298, 28.677536, 38.577095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078601, 0.056757, 0.995289,
		0.912747, -0.405583, -0.048954,
		0.400893, 0.912295, -0.083684,
		28.042566, 28.951225, 38.551991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335474, 28.336260, 38.983162>,  <27.761940, 28.312618, 38.610569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335474, 28.336260, 38.983162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.224131, 28.720135, 38.967583>,  <28.157324, 28.950460, 38.958237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.224131, 28.720135, 38.967583>,  <28.335474, 28.336260, 38.983162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224131, 28.720135, 38.967583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311289, 0.128504, 0.941587,
		0.908634, 0.249975, -0.334510,
		-0.278359, 0.959687, -0.038949,
		28.140623, 29.008041, 38.955898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994921, 28.699293, 39.279446>,  <28.335474, 28.336260, 38.983162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994921, 28.699293, 39.279446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.682783, 28.927013, 39.382954>,  <28.495501, 29.063644, 39.445057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.682783, 28.927013, 39.382954>,  <28.994921, 28.699293, 39.279446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682783, 28.927013, 39.382954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359315, 0.069519, 0.930623,
		0.511814, 0.819186, -0.258807,
		-0.780345, 0.569299, 0.258765,
		28.448679, 29.097803, 39.460583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187428, 29.252937, 39.875011>,  <28.994921, 28.699293, 39.279446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187428, 29.252937, 39.875011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799465, 29.155731, 39.881084>,  <28.566689, 29.097408, 39.884727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.799465, 29.155731, 39.881084>,  <29.187428, 29.252937, 39.875011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799465, 29.155731, 39.881084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038730, 0.215524, 0.975730,
		-0.240390, 0.945776, -0.218449,
		-0.969904, -0.243016, 0.015180,
		28.508493, 29.082827, 39.885639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843908, 29.196232, 39.718746>,  <29.187428, 29.252937, 39.875011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843908, 29.196232, 39.718746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222212, 29.237717, 39.841892>,  <30.449194, 29.262608, 39.915779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.222212, 29.237717, 39.841892>,  <29.843908, 29.196232, 39.718746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222212, 29.237717, 39.841892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276114, 0.242716, -0.929973,
		-0.171175, 0.964537, 0.200914,
		0.945759, 0.103713, 0.307869,
		30.505939, 29.268831, 39.934254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132246, 29.873665, 39.500240>,  <29.843908, 29.196232, 39.718746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132246, 29.873665, 39.500240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333401, 29.528233, 39.514862>,  <30.454094, 29.320974, 39.523636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333401, 29.528233, 39.514862>,  <30.132246, 29.873665, 39.500240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333401, 29.528233, 39.514862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246047, 0.102482, -0.963825,
		0.828593, 0.493687, 0.264018,
		0.502885, -0.863580, 0.036554,
		30.484266, 29.269159, 39.525829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756142, 30.011271, 39.274147>,  <30.132246, 29.873665, 39.500240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756142, 30.011271, 39.274147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.734587, 29.615742, 39.218536>,  <30.721653, 29.378426, 39.185169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.734587, 29.615742, 39.218536>,  <30.756142, 30.011271, 39.274147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734587, 29.615742, 39.218536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325405, 0.114242, -0.938648,
		0.944038, -0.095823, 0.315611,
		-0.053888, -0.988821, -0.139030,
		30.718420, 29.319096, 39.176826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293352, 29.924757, 38.938011>,  <30.756142, 30.011271, 39.274147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293352, 29.924757, 38.938011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.074318, 29.599934, 38.857304>,  <30.942898, 29.405039, 38.808880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.074318, 29.599934, 38.857304>,  <31.293352, 29.924757, 38.938011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074318, 29.599934, 38.857304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251445, 0.070297, -0.965315,
		0.798077, -0.579326, 0.165695,
		-0.547585, -0.812059, -0.201771,
		30.910042, 29.356316, 38.796772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771740, 29.612370, 38.442898>,  <31.293352, 29.924757, 38.938011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771740, 29.612370, 38.442898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.428537, 29.408871, 38.414616>,  <31.222616, 29.286772, 38.397648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.428537, 29.408871, 38.414616>,  <31.771740, 29.612370, 38.442898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428537, 29.408871, 38.414616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057189, 0.042173, -0.997472,
		0.510443, -0.859883, -0.007090,
		-0.858008, -0.508747, -0.070702,
		31.171135, 29.256247, 38.393406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857437, 28.997398, 38.090889>,  <31.771740, 29.612370, 38.442898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857437, 28.997398, 38.090889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482481, 29.095848, 37.992325>,  <31.257507, 29.154919, 37.933186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482481, 29.095848, 37.992325>,  <31.857437, 28.997398, 38.090889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482481, 29.095848, 37.992325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265007, 0.044989, -0.963196,
		-0.225981, -0.968193, -0.107397,
		-0.937392, 0.246125, -0.246411,
		31.201263, 29.169685, 37.918400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691679, 28.699678, 37.451206>,  <31.857437, 28.997398, 38.090889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691679, 28.699678, 37.451206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411983, 28.983982, 37.481899>,  <31.244165, 29.154564, 37.500317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411983, 28.983982, 37.481899>,  <31.691679, 28.699678, 37.451206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411983, 28.983982, 37.481899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099948, 0.203477, -0.973965,
		-0.707867, -0.673365, -0.213318,
		-0.699239, 0.710758, 0.076733,
		31.202211, 29.197210, 37.504921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294626, 28.561085, 36.884136>,  <31.691679, 28.699678, 37.451206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294626, 28.561085, 36.884136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165150, 28.927063, 36.980553>,  <31.087463, 29.146650, 37.038403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.165150, 28.927063, 36.980553>,  <31.294626, 28.561085, 36.884136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165150, 28.927063, 36.980553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223729, 0.173517, -0.959081,
		-0.919331, -0.364372, 0.148534,
		-0.323690, 0.914945, 0.241040,
		31.068043, 29.201546, 37.052864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607922, 28.741653, 36.508804>,  <31.294626, 28.561085, 36.884136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607922, 28.741653, 36.508804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757940, 29.098602, 36.609211>,  <30.847952, 29.312771, 36.669456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757940, 29.098602, 36.609211>,  <30.607922, 28.741653, 36.508804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757940, 29.098602, 36.609211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346811, 0.386191, -0.854739,
		-0.859687, 0.233512, 0.454324,
		0.375047, 0.892373, 0.251019,
		30.870455, 29.366314, 36.684517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107395, 29.223396, 36.405869>,  <30.607922, 28.741653, 36.508804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107395, 29.223396, 36.405869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455530, 29.417759, 36.373848>,  <30.664412, 29.534376, 36.354633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455530, 29.417759, 36.373848>,  <30.107395, 29.223396, 36.405869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455530, 29.417759, 36.373848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288290, 0.370931, -0.882779,
		-0.399253, 0.791395, 0.462916,
		0.870337, 0.485906, -0.080056,
		30.716631, 29.563530, 36.349831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876616, 29.766880, 36.098900>,  <30.107395, 29.223396, 36.405869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876616, 29.766880, 36.098900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.273840, 29.753105, 36.053917>,  <30.512175, 29.744841, 36.026928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.273840, 29.753105, 36.053917>,  <29.876616, 29.766880, 36.098900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273840, 29.753105, 36.053917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097224, 0.297650, -0.949712,
		0.066178, 0.954054, 0.292236,
		0.993060, -0.034438, -0.112454,
		30.571758, 29.742773, 36.020180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009235, 30.375809, 35.700485>,  <29.876616, 29.766880, 36.098900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009235, 30.375809, 35.700485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.341974, 30.155540, 35.672798>,  <30.541618, 30.023380, 35.656185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.341974, 30.155540, 35.672798>,  <30.009235, 30.375809, 35.700485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341974, 30.155540, 35.672798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060787, 0.214356, -0.974862,
		0.551664, 0.806730, 0.211786,
		0.831849, -0.550670, -0.069214,
		30.591528, 29.990339, 35.652035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413496, 30.818396, 35.187630>,  <30.009235, 30.375809, 35.700485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413496, 30.818396, 35.187630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.546732, 30.441315, 35.195225>,  <30.626673, 30.215065, 35.199783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.546732, 30.441315, 35.195225>,  <30.413496, 30.818396, 35.187630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546732, 30.441315, 35.195225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184480, 0.045408, -0.981787,
		0.924672, 0.330527, 0.189035,
		0.333090, -0.942704, 0.018988,
		30.646660, 30.158504, 35.200920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839777, 30.895506, 34.617413>,  <30.413496, 30.818396, 35.187630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839777, 30.895506, 34.617413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.779772, 30.501305, 34.649117>,  <30.743769, 30.264784, 34.668140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.779772, 30.501305, 34.649117>,  <30.839777, 30.895506, 34.617413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779772, 30.501305, 34.649117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257114, -0.116298, -0.959358,
		0.954666, -0.123538, 0.270833,
		-0.150015, -0.985501, 0.079262,
		30.734768, 30.205654, 34.672894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335274, 30.628838, 34.168526>,  <30.839777, 30.895506, 34.617413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335274, 30.628838, 34.168526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071089, 30.334198, 34.226780>,  <30.912579, 30.157413, 34.261734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071089, 30.334198, 34.226780>,  <31.335274, 30.628838, 34.168526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071089, 30.334198, 34.226780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221270, -0.376283, -0.899695,
		0.717515, -0.561989, 0.411509,
		-0.660463, -0.736599, 0.145637,
		30.872950, 30.113218, 34.270470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713873, 30.059019, 34.022163>,  <31.335274, 30.628838, 34.168526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713873, 30.059019, 34.022163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.327721, 29.965363, 33.976177>,  <31.096029, 29.909168, 33.948586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.327721, 29.965363, 33.976177>,  <31.713873, 30.059019, 34.022163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327721, 29.965363, 33.976177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187245, -0.315204, -0.930368,
		0.181598, -0.919687, 0.348134,
		-0.965381, -0.234139, -0.114967,
		31.038107, 29.895121, 33.941689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668650, 29.390587, 33.717251>,  <31.713873, 30.059019, 34.022163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668650, 29.390587, 33.717251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312099, 29.560329, 33.653538>,  <31.098169, 29.662176, 33.615311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.312099, 29.560329, 33.653538>,  <31.668650, 29.390587, 33.717251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312099, 29.560329, 33.653538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052738, -0.251919, -0.966310,
		-0.450186, -0.869746, 0.202174,
		-0.891376, 0.424357, -0.159279,
		31.044687, 29.687637, 33.605755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431643, 28.976986, 33.164612>,  <31.668650, 29.390587, 33.717251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431643, 28.976986, 33.164612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158453, 29.267532, 33.133793>,  <30.994539, 29.441860, 33.115299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.158453, 29.267532, 33.133793>,  <31.431643, 28.976986, 33.164612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158453, 29.267532, 33.133793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045176, -0.147286, -0.988062,
		-0.729045, -0.671339, 0.133407,
		-0.682973, 0.726368, -0.077049,
		30.953562, 29.485443, 33.110680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821003, 28.701561, 32.753880>,  <31.431643, 28.976986, 33.164612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821003, 28.701561, 32.753880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790134, 29.100197, 32.742214>,  <30.771614, 29.339378, 32.735214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790134, 29.100197, 32.742214>,  <30.821003, 28.701561, 32.753880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790134, 29.100197, 32.742214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173940, -0.042259, -0.983849,
		-0.981728, -0.070851, 0.176608,
		-0.077170, 0.996591, -0.029163,
		30.766983, 29.399174, 32.733467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206007, 28.933069, 32.414299>,  <30.821003, 28.701561, 32.753880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206007, 28.933069, 32.414299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.468889, 29.230640, 32.365879>,  <30.626617, 29.409184, 32.336826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.468889, 29.230640, 32.365879>,  <30.206007, 28.933069, 32.414299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468889, 29.230640, 32.365879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255241, 0.068560, -0.964444,
		-0.709179, 0.664732, 0.234939,
		0.657204, 0.743930, -0.121046,
		30.666050, 29.453819, 32.329567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.586823, 42.332077, 16.446644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.939026, 42.521675, 16.444378>,  <24.150349, 42.635433, 16.443018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.939026, 42.521675, 16.444378>,  <23.586823, 42.332077, 16.446644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.939026, 42.521675, 16.444378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220295, -0.398586, 0.890281,
		0.419729, -0.785150, -0.455377,
		0.880510, 0.473993, -0.005667,
		24.203178, 42.663872, 16.442678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150692, 41.833241, 16.337940>,  <23.586823, 42.332077, 16.446644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150692, 41.833241, 16.337940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297020, 42.159763, 16.516747>,  <24.384817, 42.355675, 16.624029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.297020, 42.159763, 16.516747>,  <24.150692, 41.833241, 16.337940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297020, 42.159763, 16.516747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135188, -0.521819, 0.842276,
		0.920815, -0.247690, -0.301246,
		0.365819, 0.816305, 0.447014,
		24.406765, 42.404655, 16.650850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.834642, 41.677006, 16.703178>,  <24.150692, 41.833241, 16.337940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.834642, 41.677006, 16.703178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.687189, 41.981201, 16.917007>,  <24.598717, 42.163719, 17.045305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.687189, 41.981201, 16.917007>,  <24.834642, 41.677006, 16.703178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687189, 41.981201, 16.917007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291959, -0.451253, 0.843286,
		0.882536, 0.466936, -0.055685,
		-0.368632, 0.760488, 0.534573,
		24.576599, 42.209347, 17.077379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.230572, 41.660412, 17.320448>,  <24.834642, 41.677006, 16.703178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.230572, 41.660412, 17.320448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.957663, 41.921993, 17.451202>,  <24.793917, 42.078941, 17.529655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.957663, 41.921993, 17.451202>,  <25.230572, 41.660412, 17.320448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957663, 41.921993, 17.451202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096779, -0.362394, 0.926987,
		0.724665, 0.664092, 0.183962,
		-0.682271, 0.653951, 0.326885,
		24.752981, 42.118179, 17.549269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403700, 41.899780, 18.072191>,  <25.230572, 41.660412, 17.320448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403700, 41.899780, 18.072191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.013969, 41.977634, 18.026924>,  <24.780130, 42.024345, 17.999763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.013969, 41.977634, 18.026924>,  <25.403700, 41.899780, 18.072191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013969, 41.977634, 18.026924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194823, -0.476951, 0.857066,
		0.112836, 0.857109, 0.502624,
		-0.974326, 0.194631, -0.113167,
		24.721672, 42.036022, 17.992973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128002, 42.268326, 18.701027>,  <25.403700, 41.899780, 18.072191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128002, 42.268326, 18.701027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.843639, 42.063877, 18.507793>,  <24.673021, 41.941208, 18.391853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.843639, 42.063877, 18.507793>,  <25.128002, 42.268326, 18.701027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843639, 42.063877, 18.507793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106192, -0.601004, 0.792160,
		-0.695222, 0.614452, 0.372981,
		-0.710907, -0.511120, -0.483082,
		24.630367, 41.910542, 18.362869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.636864, 42.412758, 19.226336>,  <25.128002, 42.268326, 18.701027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.636864, 42.412758, 19.226336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.469860, 42.130100, 18.997829>,  <24.369658, 41.960506, 18.860725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.469860, 42.130100, 18.997829>,  <24.636864, 42.412758, 19.226336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.469860, 42.130100, 18.997829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221512, -0.530567, 0.818188,
		-0.881260, 0.468143, 0.064987,
		-0.417509, -0.706641, -0.571266,
		24.344606, 41.918110, 18.826450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.884909, 42.154938, 19.469667>,  <24.636864, 42.412758, 19.226336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.884909, 42.154938, 19.469667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.061985, 41.868984, 19.253162>,  <24.168230, 41.697411, 19.123259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.061985, 41.868984, 19.253162>,  <23.884909, 42.154938, 19.469667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.061985, 41.868984, 19.253162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236955, -0.675445, 0.698303,
		-0.864800, -0.180876, -0.468407,
		0.442689, -0.714883, -0.541265,
		24.194792, 41.654518, 19.090782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.438332, 41.673691, 19.414555>,  <23.884909, 42.154938, 19.469667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.438332, 41.673691, 19.414555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.786823, 41.484280, 19.362812>,  <23.995918, 41.370632, 19.331766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.786823, 41.484280, 19.362812>,  <23.438332, 41.673691, 19.414555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.786823, 41.484280, 19.362812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222038, -0.615171, 0.756481,
		-0.437792, -0.630345, -0.641095,
		0.871227, -0.473529, -0.129356,
		24.048191, 41.342220, 19.324005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.270588, 40.976875, 19.219736>,  <23.438332, 41.673691, 19.414555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.270588, 40.976875, 19.219736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.643192, 40.943092, 19.361244>,  <23.866755, 40.922821, 19.446150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.643192, 40.943092, 19.361244>,  <23.270588, 40.976875, 19.219736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.643192, 40.943092, 19.361244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315707, -0.670727, 0.671159,
		0.180598, -0.736880, -0.651454,
		0.931512, -0.084459, 0.353771,
		23.922646, 40.917755, 19.467375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.381563, 40.310287, 19.209196>,  <23.270588, 40.976875, 19.219736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.381563, 40.310287, 19.209196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.640610, 40.449780, 19.480186>,  <23.796038, 40.533474, 19.642780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.640610, 40.449780, 19.480186>,  <23.381563, 40.310287, 19.209196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.640610, 40.449780, 19.480186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339919, -0.663516, 0.666484,
		0.681942, -0.661915, -0.311164,
		0.647619, 0.348733, 0.677477,
		23.834896, 40.554398, 19.683430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.447664, 39.736671, 19.608812>,  <23.381563, 40.310287, 19.209196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.447664, 39.736671, 19.608812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.634075, 40.004868, 19.839725>,  <23.745922, 40.165787, 19.978273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.634075, 40.004868, 19.839725>,  <23.447664, 39.736671, 19.608812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.634075, 40.004868, 19.839725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202365, -0.554397, 0.807275,
		0.861317, -0.493034, -0.122680,
		0.466027, 0.670493, 0.577284,
		23.773884, 40.206017, 20.012911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.844522, 39.369865, 20.073587>,  <23.447664, 39.736671, 19.608812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.844522, 39.369865, 20.073587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.862326, 39.692673, 20.309124>,  <23.873007, 39.886356, 20.450447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.862326, 39.692673, 20.309124>,  <23.844522, 39.369865, 20.073587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.862326, 39.692673, 20.309124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192708, -0.585293, 0.787589,
		0.980246, 0.078421, -0.181569,
		0.044508, 0.807021, 0.588843,
		23.875677, 39.934780, 20.485777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314877, 39.210354, 20.617165>,  <23.844522, 39.369865, 20.073587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314877, 39.210354, 20.617165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.098919, 39.512707, 20.765305>,  <23.969343, 39.694118, 20.854189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.098919, 39.512707, 20.765305>,  <24.314877, 39.210354, 20.617165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.098919, 39.512707, 20.765305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079089, -0.392487, 0.916351,
		0.838008, 0.524025, 0.152120,
		-0.539896, 0.755879, 0.370352,
		23.936951, 39.739471, 20.876410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.670481, 39.539104, 21.242636>,  <24.314877, 39.210354, 20.617165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.670481, 39.539104, 21.242636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279119, 39.620983, 21.254124>,  <24.044302, 39.670109, 21.261017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.279119, 39.620983, 21.254124>,  <24.670481, 39.539104, 21.242636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279119, 39.620983, 21.254124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061112, -0.419189, 0.905840,
		0.197461, 0.884522, 0.422646,
		-0.978404, 0.204697, 0.028718,
		23.985598, 39.682392, 21.262739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495871, 40.022018, 21.777658>,  <24.670481, 39.539104, 21.242636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495871, 40.022018, 21.777658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.185804, 39.780987, 21.701748>,  <23.999765, 39.636368, 21.656200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.185804, 39.780987, 21.701748>,  <24.495871, 40.022018, 21.777658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.185804, 39.780987, 21.701748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009549, -0.311538, 0.950186,
		-0.631685, 0.734740, 0.247248,
		-0.775166, -0.602579, -0.189779,
		23.953255, 39.600212, 21.644814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.048988, 40.072628, 22.412022>,  <24.495871, 40.022018, 21.777658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.048988, 40.072628, 22.412022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.879454, 39.764526, 22.221413>,  <23.777733, 39.579666, 22.107048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.879454, 39.764526, 22.221413>,  <24.048988, 40.072628, 22.412022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.879454, 39.764526, 22.221413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128240, -0.469780, 0.873419,
		-0.896614, 0.431297, 0.100334,
		-0.423838, -0.770253, -0.476521,
		23.752302, 39.533451, 22.078457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.575628, 39.885639, 22.837246>,  <24.048988, 40.072628, 22.412022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.575628, 39.885639, 22.837246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.587250, 39.566864, 22.595901>,  <23.594223, 39.375599, 22.451094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.587250, 39.566864, 22.595901>,  <23.575628, 39.885639, 22.837246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.587250, 39.566864, 22.595901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196613, -0.596382, 0.778249,
		-0.980051, 0.096019, -0.174014,
		0.029052, -0.796937, -0.603363,
		23.595966, 39.327782, 22.414892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956692, 39.538136, 23.022684>,  <23.575628, 39.885639, 22.837246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956692, 39.538136, 23.022684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.185064, 39.264946, 22.840439>,  <23.322088, 39.101032, 22.731091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.185064, 39.264946, 22.840439>,  <22.956692, 39.538136, 23.022684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.185064, 39.264946, 22.840439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128191, -0.622303, 0.772208,
		-0.810929, -0.382472, -0.442843,
		0.570931, -0.682974, -0.455614,
		23.356344, 39.060055, 22.703754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.561218, 38.995415, 23.029442>,  <22.956692, 39.538136, 23.022684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.561218, 38.995415, 23.029442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.931484, 38.857967, 22.966106>,  <23.153643, 38.775497, 22.928104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.931484, 38.857967, 22.966106>,  <22.561218, 38.995415, 23.029442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.931484, 38.857967, 22.966106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085310, -0.597288, 0.797477,
		-0.368604, -0.724687, -0.582202,
		0.925664, -0.343621, -0.158340,
		23.209183, 38.754883, 22.918604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.469452, 38.252483, 23.069431>,  <22.561218, 38.995415, 23.029442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.469452, 38.252483, 23.069431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.862640, 38.318222, 23.102306>,  <23.098555, 38.357666, 23.122032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.862640, 38.318222, 23.102306>,  <22.469452, 38.252483, 23.069431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.862640, 38.318222, 23.102306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028916, -0.580060, 0.814060,
		0.181463, -0.797822, -0.574935,
		0.982972, 0.164347, 0.082190,
		23.157532, 38.367527, 23.126963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.662678, 38.056568, 23.004662>,  <22.469452, 38.252483, 23.069431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.662678, 38.056568, 23.004662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455013, 38.263390, 23.276875>,  <21.330414, 38.387482, 23.440203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455013, 38.263390, 23.276875>,  <21.662678, 38.056568, 23.004662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455013, 38.263390, 23.276875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619431, 0.320991, -0.716429,
		-0.588878, -0.793485, 0.153635,
		-0.519160, 0.517055, 0.680534,
		21.299265, 38.418507, 23.481035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999348, 38.146919, 22.768085>,  <21.662678, 38.056568, 23.004662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999348, 38.146919, 22.768085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972706, 38.415676, 23.063145>,  <20.956720, 38.576931, 23.240181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972706, 38.415676, 23.063145>,  <20.999348, 38.146919, 22.768085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972706, 38.415676, 23.063145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568744, 0.581864, -0.581347,
		-0.819813, -0.458256, 0.343378,
		-0.066606, 0.671890, 0.737650,
		20.952724, 38.617245, 23.284439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.376522, 38.348431, 22.740982>,  <20.999348, 38.146919, 22.768085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.376522, 38.348431, 22.740982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.575119, 38.657158, 22.899872>,  <20.694277, 38.842396, 22.995207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.575119, 38.657158, 22.899872>,  <20.376522, 38.348431, 22.740982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.575119, 38.657158, 22.899872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571527, 0.635086, -0.519637,
		-0.653339, 0.030970, 0.756432,
		0.496492, 0.771820, 0.397226,
		20.724068, 38.888702, 23.019039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800619, 38.847206, 22.666599>,  <20.376522, 38.348431, 22.740982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800619, 38.847206, 22.666599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.152021, 39.020367, 22.747421>,  <20.362862, 39.124264, 22.795916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.152021, 39.020367, 22.747421>,  <19.800619, 38.847206, 22.666599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.152021, 39.020367, 22.747421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228937, 0.752702, -0.617274,
		-0.419307, 0.496020, 0.760359,
		0.878504, 0.432902, 0.202056,
		20.415573, 39.150238, 22.808039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.662508, 39.539215, 22.644590>,  <19.800619, 38.847206, 22.666599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.662508, 39.539215, 22.644590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.057180, 39.586193, 22.599579>,  <20.293983, 39.614380, 22.572573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.057180, 39.586193, 22.599579>,  <19.662508, 39.539215, 22.644590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.057180, 39.586193, 22.599579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162149, 0.655776, -0.737337,
		-0.012804, 0.745764, 0.666087,
		0.986683, 0.117446, -0.112529,
		20.353186, 39.621426, 22.565821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704456, 40.276192, 22.554665>,  <19.662508, 39.539215, 22.644590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704456, 40.276192, 22.554665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.031897, 40.107044, 22.399193>,  <20.228361, 40.005554, 22.305910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.031897, 40.107044, 22.399193>,  <19.704456, 40.276192, 22.554665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031897, 40.107044, 22.399193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004128, 0.681028, -0.732246,
		0.574349, 0.597812, 0.559235,
		0.818600, -0.422873, -0.388680,
		20.277477, 39.980183, 22.282589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.245901, 40.889946, 22.476345>,  <19.704456, 40.276192, 22.554665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.245901, 40.889946, 22.476345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.372643, 40.595963, 22.236530>,  <20.448687, 40.419575, 22.092642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.372643, 40.595963, 22.236530>,  <20.245901, 40.889946, 22.476345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372643, 40.595963, 22.236530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004483, 0.633259, -0.773927,
		0.948465, 0.242532, 0.203944,
		0.316852, -0.734957, -0.599536,
		20.467697, 40.375477, 22.056669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.781937, 41.150898, 22.070795>,  <20.245901, 40.889946, 22.476345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.781937, 41.150898, 22.070795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.722492, 40.817028, 21.858669>,  <20.686825, 40.616707, 21.731394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.722492, 40.817028, 21.858669>,  <20.781937, 41.150898, 22.070795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.722492, 40.817028, 21.858669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071696, 0.525763, -0.847604,
		0.986293, -0.163987, -0.018292,
		-0.148613, -0.834675, -0.530313,
		20.677908, 40.566628, 21.699575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.359327, 41.149986, 21.648842>,  <20.781937, 41.150898, 22.070795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.359327, 41.149986, 21.648842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.074257, 40.920223, 21.487770>,  <20.903215, 40.782364, 21.391127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.074257, 40.920223, 21.487770>,  <21.359327, 41.149986, 21.648842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.074257, 40.920223, 21.487770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150460, 0.435504, -0.887524,
		0.685169, -0.693103, -0.223947,
		-0.712675, -0.574408, -0.402678,
		20.860455, 40.747902, 21.366966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656197, 40.853207, 21.038231>,  <21.359327, 41.149986, 21.648842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656197, 40.853207, 21.038231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.264023, 40.839958, 20.960617>,  <21.028719, 40.832008, 20.914049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.264023, 40.839958, 20.960617>,  <21.656197, 40.853207, 21.038231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264023, 40.839958, 20.960617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161598, 0.427407, -0.889500,
		0.112396, -0.903453, -0.413692,
		-0.980435, -0.033125, -0.194035,
		20.969893, 40.830021, 20.902407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.663441, 40.713501, 20.324125>,  <21.656197, 40.853207, 21.038231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.663441, 40.713501, 20.324125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.300360, 40.861523, 20.403255>,  <21.082512, 40.950336, 20.450733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.300360, 40.861523, 20.403255>,  <21.663441, 40.713501, 20.324125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.300360, 40.861523, 20.403255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047954, 0.559842, -0.827210,
		-0.416864, -0.741375, -0.525916,
		-0.907703, 0.370054, 0.197826,
		21.028049, 40.972538, 20.462603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.280249, 40.638847, 19.690647>,  <21.663441, 40.713501, 20.324125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.280249, 40.638847, 19.690647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.095100, 40.919823, 19.906918>,  <20.984011, 41.088409, 20.036680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.095100, 40.919823, 19.906918>,  <21.280249, 40.638847, 19.690647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.095100, 40.919823, 19.906918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053108, 0.630830, -0.774101,
		-0.884834, -0.329594, -0.329297,
		-0.462870, 0.702439, 0.540676,
		20.956240, 41.130554, 20.069120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864407, 40.973873, 19.265865>,  <21.280249, 40.638847, 19.690647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864407, 40.973873, 19.265865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.920757, 41.238819, 19.560192>,  <20.954567, 41.397785, 19.736788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.920757, 41.238819, 19.560192>,  <20.864407, 40.973873, 19.265865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.920757, 41.238819, 19.560192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079204, 0.733308, -0.675268,
		-0.986854, 0.153408, 0.050843,
		0.140875, 0.662364, 0.735818,
		20.963020, 41.437527, 19.780937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.515167, 41.459148, 19.056759>,  <20.864407, 40.973873, 19.265865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.515167, 41.459148, 19.056759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.744320, 41.629105, 19.337124>,  <20.881811, 41.731079, 19.505342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.744320, 41.629105, 19.337124>,  <20.515167, 41.459148, 19.056759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744320, 41.629105, 19.337124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101390, 0.811844, -0.575004,
		-0.813345, 0.400473, 0.422009,
		0.572879, 0.424889, 0.700913,
		20.916183, 41.756573, 19.547398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.278755, 42.110321, 19.147768>,  <20.515167, 41.459148, 19.056759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.278755, 42.110321, 19.147768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.653288, 42.131271, 19.286644>,  <20.878008, 42.143841, 19.369970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.653288, 42.131271, 19.286644>,  <20.278755, 42.110321, 19.147768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653288, 42.131271, 19.286644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188455, 0.759348, -0.622796,
		-0.296260, 0.648573, 0.701130,
		0.936330, 0.052378, 0.347191,
		20.934187, 42.146984, 19.390800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485758, 42.817215, 19.004265>,  <20.278755, 42.110321, 19.147768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485758, 42.817215, 19.004265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.848423, 42.659256, 19.063622>,  <21.066023, 42.564480, 19.099236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.848423, 42.659256, 19.063622>,  <20.485758, 42.817215, 19.004265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848423, 42.659256, 19.063622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369570, 0.573916, -0.730779,
		0.203417, 0.717411, 0.666290,
		0.906664, -0.394894, 0.148390,
		21.120422, 42.540787, 19.108139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.979191, 43.347992, 18.875807>,  <20.485758, 42.817215, 19.004265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.979191, 43.347992, 18.875807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218071, 43.027443, 18.862240>,  <21.361399, 42.835114, 18.854099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218071, 43.027443, 18.862240>,  <20.979191, 43.347992, 18.875807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218071, 43.027443, 18.862240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333938, 0.286857, -0.897886,
		0.729273, 0.524890, 0.438921,
		0.597199, -0.801376, -0.033917,
		21.397230, 42.787029, 18.852064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.622515, 43.661854, 18.598442>,  <20.979191, 43.347992, 18.875807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.622515, 43.661854, 18.598442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.631432, 43.264931, 18.549725>,  <21.636782, 43.026779, 18.520494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.631432, 43.264931, 18.549725>,  <21.622515, 43.661854, 18.598442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.631432, 43.264931, 18.549725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412253, 0.120108, -0.903118,
		0.910797, -0.030080, 0.411758,
		0.022290, -0.992305, -0.121794,
		21.638119, 42.967239, 18.513186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.315542, 43.385628, 18.307161>,  <21.622515, 43.661854, 18.598442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.315542, 43.385628, 18.307161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.067875, 43.095272, 18.187351>,  <21.919275, 42.921059, 18.115465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.067875, 43.095272, 18.187351>,  <22.315542, 43.385628, 18.307161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067875, 43.095272, 18.187351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411355, 0.025084, -0.911130,
		0.668895, -0.687351, 0.283068,
		-0.619166, -0.725892, -0.299524,
		21.882126, 42.877506, 18.097494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.692282, 42.793800, 18.022617>,  <22.315542, 43.385628, 18.307161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.692282, 42.793800, 18.022617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.320826, 42.723553, 17.891907>,  <22.097952, 42.681404, 17.813480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.320826, 42.723553, 17.891907>,  <22.692282, 42.793800, 18.022617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.320826, 42.723553, 17.891907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356718, -0.180813, -0.916547,
		0.101883, -0.967710, 0.230559,
		-0.928640, -0.175625, -0.326778,
		22.042234, 42.670864, 17.793873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.744637, 42.170990, 17.647795>,  <22.692282, 42.793800, 18.022617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.744637, 42.170990, 17.647795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.439240, 42.404831, 17.538017>,  <22.256001, 42.545135, 17.472151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.439240, 42.404831, 17.538017>,  <22.744637, 42.170990, 17.647795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.439240, 42.404831, 17.538017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369309, 0.046601, -0.928137,
		-0.529801, -0.809981, -0.251478,
		-0.763493, 0.584601, -0.274444,
		22.210192, 42.580212, 17.455685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.628580, 31.368891, 27.894218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954325, 31.566162, 28.016590>,  <27.149771, 31.684525, 28.090014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954325, 31.566162, 28.016590>,  <26.628580, 31.368891, 27.894218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954325, 31.566162, 28.016590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024705, 0.556116, -0.830737,
		-0.579831, 0.668963, 0.465064,
		0.814362, 0.493177, 0.305927,
		27.198633, 31.714115, 28.108368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457554, 32.047916, 27.817780>,  <26.628580, 31.368891, 27.894218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457554, 32.047916, 27.817780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857178, 32.055931, 27.833172>,  <27.096952, 32.060741, 27.842407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857178, 32.055931, 27.833172>,  <26.457554, 32.047916, 27.817780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857178, 32.055931, 27.833172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009339, 0.766842, -0.641768,
		-0.042366, 0.641524, 0.765933,
		0.999059, 0.020036, 0.038479,
		27.156895, 32.061943, 27.844715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630941, 32.736397, 27.755154>,  <26.457554, 32.047916, 27.817780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630941, 32.736397, 27.755154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962185, 32.540192, 27.646614>,  <27.160931, 32.422470, 27.581490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962185, 32.540192, 27.646614>,  <26.630941, 32.736397, 27.755154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962185, 32.540192, 27.646614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273217, 0.775856, -0.568683,
		0.489475, 0.396794, 0.776511,
		0.828111, -0.490512, -0.271351,
		27.210619, 32.393040, 27.565208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140852, 33.222195, 27.669525>,  <26.630941, 32.736397, 27.755154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140852, 33.222195, 27.669525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320850, 32.923176, 27.474106>,  <27.428850, 32.743763, 27.356855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320850, 32.923176, 27.474106>,  <27.140852, 33.222195, 27.669525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320850, 32.923176, 27.474106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398241, 0.657638, -0.639465,
		0.799316, 0.093199, 0.593639,
		0.449997, -0.747546, -0.488546,
		27.455849, 32.698914, 27.327541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867090, 33.475441, 27.502371>,  <27.140852, 33.222195, 27.669525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867090, 33.475441, 27.502371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803234, 33.160362, 27.264362>,  <27.764921, 32.971313, 27.121557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803234, 33.160362, 27.264362>,  <27.867090, 33.475441, 27.502371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803234, 33.160362, 27.264362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420104, 0.491239, -0.763018,
		0.893324, -0.371780, 0.252493,
		-0.159641, -0.787696, -0.595021,
		27.755342, 32.924053, 27.085855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388479, 33.628155, 26.983244>,  <27.867090, 33.475441, 27.502371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388479, 33.628155, 26.983244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150732, 33.335957, 26.848724>,  <28.008083, 33.160637, 26.768013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150732, 33.335957, 26.848724>,  <28.388479, 33.628155, 26.983244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150732, 33.335957, 26.848724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154035, 0.307026, -0.939153,
		0.789304, -0.610004, -0.069963,
		-0.594367, -0.730500, -0.336299,
		27.972422, 33.116806, 26.747835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709414, 33.178810, 26.514553>,  <28.388479, 33.628155, 26.983244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709414, 33.178810, 26.514553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315050, 33.177010, 26.447662>,  <28.078432, 33.175930, 26.407528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315050, 33.177010, 26.447662>,  <28.709414, 33.178810, 26.514553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315050, 33.177010, 26.447662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164639, 0.150986, -0.974729,
		0.029637, -0.988526, -0.148117,
		-0.985909, -0.004502, -0.167224,
		28.019278, 33.175659, 26.397495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613672, 32.757244, 25.861286>,  <28.709414, 33.178810, 26.514553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613672, 32.757244, 25.861286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285288, 32.981377, 25.905193>,  <28.088257, 33.115856, 25.931538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285288, 32.981377, 25.905193>,  <28.613672, 32.757244, 25.861286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285288, 32.981377, 25.905193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107820, 0.340914, -0.933891,
		-0.560711, -0.754854, -0.340293,
		-0.820962, 0.560333, 0.109766,
		28.039000, 33.149475, 25.938124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227621, 32.690571, 25.161507>,  <28.613672, 32.757244, 25.861286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227621, 32.690571, 25.161507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104971, 33.030926, 25.332142>,  <28.031380, 33.235138, 25.434523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104971, 33.030926, 25.332142>,  <28.227621, 32.690571, 25.161507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104971, 33.030926, 25.332142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233711, 0.501761, -0.832836,
		-0.922691, -0.155671, -0.352714,
		-0.306627, 0.850883, 0.426588,
		28.012983, 33.286190, 25.460119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676073, 32.983574, 24.723305>,  <28.227621, 32.690571, 25.161507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676073, 32.983574, 24.723305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805998, 33.286556, 24.949848>,  <27.883953, 33.468346, 25.085773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805998, 33.286556, 24.949848>,  <27.676073, 32.983574, 24.723305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805998, 33.286556, 24.949848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180230, 0.538282, -0.823268,
		-0.928448, 0.369481, 0.038324,
		0.324810, 0.757454, 0.566358,
		27.903440, 33.513794, 25.119755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531866, 33.633987, 24.374849>,  <27.676073, 32.983574, 24.723305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531866, 33.633987, 24.374849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791399, 33.774857, 24.644661>,  <27.947119, 33.859379, 24.806547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791399, 33.774857, 24.644661>,  <27.531866, 33.633987, 24.374849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791399, 33.774857, 24.644661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464051, 0.519396, -0.717554,
		-0.603051, 0.778589, 0.173575,
		0.648834, 0.352174, 0.674528,
		27.986050, 33.880508, 24.847019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495777, 34.325058, 24.355539>,  <27.531866, 33.633987, 24.374849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495777, 34.325058, 24.355539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873703, 34.227516, 24.443043>,  <28.100458, 34.168991, 24.495544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873703, 34.227516, 24.443043>,  <27.495777, 34.325058, 24.355539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873703, 34.227516, 24.443043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327497, 0.686423, -0.649283,
		0.008173, 0.685096, 0.728407,
		0.944817, -0.243858, 0.218757,
		28.157148, 34.154358, 24.508669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782379, 34.782284, 23.877966>,  <27.495777, 34.325058, 24.355539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782379, 34.782284, 23.877966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100832, 34.582218, 24.014206>,  <28.291903, 34.462177, 24.095951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100832, 34.582218, 24.014206>,  <27.782379, 34.782284, 23.877966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100832, 34.582218, 24.014206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590461, 0.518936, -0.618111,
		0.132409, 0.693209, 0.708470,
		0.796130, -0.500167, 0.340601,
		28.339670, 34.432167, 24.116386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299885, 35.184433, 23.639927>,  <27.782379, 34.782284, 23.877966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299885, 35.184433, 23.639927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476974, 34.838329, 23.734013>,  <28.583229, 34.630669, 23.790464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476974, 34.838329, 23.734013>,  <28.299885, 35.184433, 23.639927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476974, 34.838329, 23.734013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743699, 0.207799, -0.635399,
		0.500906, 0.456236, 0.735488,
		0.442726, -0.865256, 0.235214,
		28.609793, 34.578751, 23.804577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888361, 35.673569, 23.763760>,  <28.299885, 35.184433, 23.639927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888361, 35.673569, 23.763760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665459, 35.989193, 23.867180>,  <28.531717, 36.178570, 23.929232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665459, 35.989193, 23.867180>,  <28.888361, 35.673569, 23.763760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665459, 35.989193, 23.867180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421513, 0.000544, 0.906822,
		0.715398, 0.614313, -0.332903,
		-0.557254, 0.789062, 0.258551,
		28.498283, 36.225910, 23.944746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364052, 36.106674, 24.130011>,  <28.888361, 35.673569, 23.763760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364052, 36.106674, 24.130011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011927, 36.243519, 24.261471>,  <28.800652, 36.325626, 24.340347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011927, 36.243519, 24.261471>,  <29.364052, 36.106674, 24.130011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011927, 36.243519, 24.261471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311680, -0.105188, 0.944347,
		0.357639, 0.933755, -0.014030,
		-0.880312, 0.342108, 0.328652,
		28.747833, 36.346149, 24.360067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549322, 36.531673, 24.663160>,  <29.364052, 36.106674, 24.130011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549322, 36.531673, 24.663160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158487, 36.475788, 24.727383>,  <28.923986, 36.442257, 24.765917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158487, 36.475788, 24.727383>,  <29.549322, 36.531673, 24.663160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158487, 36.475788, 24.727383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154976, 0.050018, 0.986651,
		-0.145881, 0.988927, -0.027220,
		-0.977088, -0.139715, 0.160557,
		28.865360, 36.433872, 24.775549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355928, 37.054432, 25.225710>,  <29.549322, 36.531673, 24.663160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355928, 37.054432, 25.225710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032631, 36.819168, 25.214302>,  <28.838652, 36.678009, 25.207457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032631, 36.819168, 25.214302>,  <29.355928, 37.054432, 25.225710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032631, 36.819168, 25.214302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063780, 0.039290, 0.997190,
		-0.585383, 0.807793, -0.069268,
		-0.808244, -0.588156, -0.028521,
		28.790157, 36.642723, 25.205746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835953, 37.340401, 25.695055>,  <29.355928, 37.054432, 25.225710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835953, 37.340401, 25.695055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803131, 36.945385, 25.641338>,  <28.783438, 36.708374, 25.609108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803131, 36.945385, 25.641338>,  <28.835953, 37.340401, 25.695055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803131, 36.945385, 25.641338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030621, -0.132186, 0.990752,
		-0.996158, 0.085405, -0.019393,
		-0.082052, -0.987539, -0.134293,
		28.778515, 36.649124, 25.601049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399807, 37.216595, 26.177160>,  <28.835953, 37.340401, 25.695055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399807, 37.216595, 26.177160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559055, 36.864395, 26.074226>,  <28.654604, 36.653076, 26.012466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559055, 36.864395, 26.074226>,  <28.399807, 37.216595, 26.177160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559055, 36.864395, 26.074226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016822, -0.273472, 0.961733,
		-0.917179, -0.387214, -0.094063,
		0.398120, -0.880499, -0.257337,
		28.678492, 36.600246, 25.997025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960634, 36.744881, 26.489609>,  <28.399807, 37.216595, 26.177160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960634, 36.744881, 26.489609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307283, 36.555519, 26.426548>,  <28.515272, 36.441902, 26.388712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307283, 36.555519, 26.426548>,  <27.960634, 36.744881, 26.489609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307283, 36.555519, 26.426548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005191, -0.307387, 0.951571,
		-0.498937, -0.825471, -0.263931,
		0.866623, -0.473404, -0.157651,
		28.567270, 36.413498, 26.379253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917582, 36.004356, 26.618452>,  <27.960634, 36.744881, 26.489609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917582, 36.004356, 26.618452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299404, 36.116306, 26.659428>,  <28.528498, 36.183475, 26.684013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299404, 36.116306, 26.659428>,  <27.917582, 36.004356, 26.618452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299404, 36.116306, 26.659428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052546, -0.496373, 0.866517,
		0.293368, -0.821755, -0.488522,
		0.954554, 0.279879, 0.102440,
		28.585770, 36.200272, 26.690159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196327, 35.419743, 26.878431>,  <27.917582, 36.004356, 26.618452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196327, 35.419743, 26.878431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439732, 35.722828, 26.972740>,  <28.585773, 35.904678, 27.029325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439732, 35.722828, 26.972740>,  <28.196327, 35.419743, 26.878431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439732, 35.722828, 26.972740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206651, -0.438170, 0.874816,
		0.766167, -0.483611, -0.423213,
		0.608509, 0.757712, 0.235773,
		28.622284, 35.950142, 27.043472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652805, 35.139034, 27.311720>,  <28.196327, 35.419743, 26.878431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652805, 35.139034, 27.311720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772285, 35.507862, 27.410168>,  <28.843973, 35.729156, 27.469236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772285, 35.507862, 27.410168>,  <28.652805, 35.139034, 27.311720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772285, 35.507862, 27.410168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232406, -0.320407, 0.918328,
		0.925617, -0.217106, -0.309999,
		0.298700, 0.922065, 0.246117,
		28.861895, 35.784481, 27.484003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366905, 35.054337, 27.566982>,  <28.652805, 35.139034, 27.311720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366905, 35.054337, 27.566982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222490, 35.400009, 27.707176>,  <29.135841, 35.607414, 27.791292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222490, 35.400009, 27.707176>,  <29.366905, 35.054337, 27.566982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222490, 35.400009, 27.707176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281034, -0.257535, 0.924498,
		0.889198, 0.432274, -0.149886,
		-0.361036, 0.864184, 0.350483,
		29.114180, 35.659264, 27.812321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871887, 35.272030, 27.964453>,  <29.366905, 35.054337, 27.566982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871887, 35.272030, 27.964453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578053, 35.510574, 28.093906>,  <29.401751, 35.653702, 28.171579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578053, 35.510574, 28.093906>,  <29.871887, 35.272030, 27.964453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578053, 35.510574, 28.093906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242599, -0.214599, 0.946093,
		0.633661, 0.773502, 0.012967,
		-0.734588, 0.596357, 0.323634,
		29.357676, 35.689480, 28.190996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204762, 35.756207, 28.414873>,  <29.871887, 35.272030, 27.964453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204762, 35.756207, 28.414873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816868, 35.782940, 28.508808>,  <29.584131, 35.798981, 28.565170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816868, 35.782940, 28.508808>,  <30.204762, 35.756207, 28.414873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816868, 35.782940, 28.508808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231604, -0.052733, 0.971380,
		0.077302, 0.996370, 0.035659,
		-0.969734, 0.066831, 0.234839,
		29.525948, 35.802990, 28.579260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159790, 36.247108, 28.970407>,  <30.204762, 35.756207, 28.414873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159790, 36.247108, 28.970407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859661, 35.983097, 28.985279>,  <29.679585, 35.824692, 28.994202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859661, 35.983097, 28.985279>,  <30.159790, 36.247108, 28.970407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859661, 35.983097, 28.985279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266652, -0.250709, 0.930614,
		-0.604908, 0.708173, 0.364110,
		-0.750322, -0.660027, 0.037179,
		29.634565, 35.785088, 28.996433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224724, 36.896744, 29.303684>,  <30.159790, 36.247108, 28.970407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224724, 36.896744, 29.303684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597963, 37.026974, 29.364777>,  <30.821907, 37.105110, 29.401432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597963, 37.026974, 29.364777>,  <30.224724, 36.896744, 29.303684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597963, 37.026974, 29.364777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065273, 0.264319, -0.962224,
		-0.353644, 0.907820, 0.225385,
		0.933100, 0.325573, 0.152731,
		30.877893, 37.124645, 29.410597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194139, 37.516762, 28.938076>,  <30.224724, 36.896744, 29.303684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194139, 37.516762, 28.938076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574133, 37.410694, 29.004063>,  <30.802130, 37.347054, 29.043655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574133, 37.410694, 29.004063>,  <30.194139, 37.516762, 28.938076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574133, 37.410694, 29.004063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214550, 0.170304, -0.961751,
		0.226936, 0.949041, 0.218679,
		0.949983, -0.265174, 0.164968,
		30.859127, 37.331142, 29.053553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442377, 37.992416, 28.513157>,  <30.194139, 37.516762, 28.938076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442377, 37.992416, 28.513157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735836, 37.732983, 28.594250>,  <30.911911, 37.577324, 28.642904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735836, 37.732983, 28.594250>,  <30.442377, 37.992416, 28.513157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735836, 37.732983, 28.594250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423479, 0.203063, -0.882854,
		0.531437, 0.733557, 0.423638,
		0.733648, -0.648583, 0.202731,
		30.955931, 37.538406, 28.655069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067390, 38.305252, 28.317909>,  <30.442377, 37.992416, 28.513157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067390, 38.305252, 28.317909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156717, 37.915730, 28.300797>,  <31.210314, 37.682014, 28.290529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156717, 37.915730, 28.300797>,  <31.067390, 38.305252, 28.317909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156717, 37.915730, 28.300797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338809, 0.118698, -0.933338,
		0.913969, 0.193934, 0.356441,
		0.223315, -0.973807, -0.042779,
		31.223711, 37.623589, 28.287962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811924, 38.206322, 27.998869>,  <31.067390, 38.305252, 28.317909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811924, 38.206322, 27.998869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600723, 37.867798, 27.970680>,  <31.474003, 37.664684, 27.953768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600723, 37.867798, 27.970680>,  <31.811924, 38.206322, 27.998869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600723, 37.867798, 27.970680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406003, -0.178672, -0.896235,
		0.745905, -0.501826, 0.437945,
		-0.528002, -0.846314, -0.070471,
		31.442322, 37.613903, 27.949539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307350, 37.612503, 27.910795>,  <31.811924, 38.206322, 27.998869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307350, 37.612503, 27.910795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965544, 37.464325, 27.765148>,  <31.760460, 37.375420, 27.677759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965544, 37.464325, 27.765148>,  <32.307350, 37.612503, 27.910795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965544, 37.464325, 27.765148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499136, -0.391565, -0.773007,
		0.143778, -0.842289, 0.519497,
		-0.854512, -0.370442, -0.364118,
		31.709190, 37.353191, 27.655912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336460, 36.888130, 27.634851>,  <32.307350, 37.612503, 27.910795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336460, 36.888130, 27.634851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992960, 37.001778, 27.464287>,  <31.786860, 37.069965, 27.361948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992960, 37.001778, 27.464287>,  <32.336460, 36.888130, 27.634851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992960, 37.001778, 27.464287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315348, -0.362862, -0.876862,
		-0.403868, -0.887470, 0.222008,
		-0.858747, 0.284126, -0.426411,
		31.735336, 37.087013, 27.336365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148769, 36.353436, 27.268297>,  <32.336460, 36.888130, 27.634851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148769, 36.353436, 27.268297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948736, 36.666527, 27.120106>,  <31.828716, 36.854382, 27.031191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948736, 36.666527, 27.120106>,  <32.148769, 36.353436, 27.268297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948736, 36.666527, 27.120106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309046, -0.238332, -0.920700,
		-0.808954, -0.574921, -0.122713,
		-0.500084, 0.782728, -0.370477,
		31.798712, 36.901344, 27.008963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690590, 36.043655, 26.751865>,  <32.148769, 36.353436, 27.268297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690590, 36.043655, 26.751865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731709, 36.427296, 26.646370>,  <31.756380, 36.657478, 26.583073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731709, 36.427296, 26.646370>,  <31.690590, 36.043655, 26.751865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731709, 36.427296, 26.646370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197039, -0.279521, -0.939704,
		-0.974991, 0.044632, -0.217714,
		0.102797, 0.959102, -0.263736,
		31.762548, 36.715027, 26.567249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341093, 36.169777, 26.085598>,  <31.690590, 36.043655, 26.751865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341093, 36.169777, 26.085598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560770, 36.504017, 26.090763>,  <31.692577, 36.704559, 26.093863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560770, 36.504017, 26.090763>,  <31.341093, 36.169777, 26.085598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560770, 36.504017, 26.090763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110513, -0.057304, -0.992221,
		-0.828355, 0.546349, -0.123815,
		0.549194, 0.835595, 0.012911,
		31.725529, 36.754696, 26.094637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163027, 36.617439, 25.464874>,  <31.341093, 36.169777, 26.085598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163027, 36.617439, 25.464874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524582, 36.732273, 25.591724>,  <31.741514, 36.801174, 25.667835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524582, 36.732273, 25.591724>,  <31.163027, 36.617439, 25.464874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524582, 36.732273, 25.591724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325731, 0.018627, -0.945279,
		-0.277282, 0.957724, -0.076676,
		0.903888, 0.287085, 0.317125,
		31.795748, 36.818398, 25.686861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372387, 37.005486, 24.927124>,  <31.163027, 36.617439, 25.464874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372387, 37.005486, 24.927124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696596, 36.878494, 25.124004>,  <31.891121, 36.802299, 25.242132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696596, 36.878494, 25.124004>,  <31.372387, 37.005486, 24.927124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696596, 36.878494, 25.124004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465873, -0.159877, -0.870288,
		0.354986, 0.934692, 0.018318,
		0.810523, -0.317474, 0.492202,
		31.939753, 36.783253, 25.271666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.653738, 37.162937, 33.299953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.042757, 37.087086, 33.246006>,  <31.276169, 37.041576, 33.213638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.042757, 37.087086, 33.246006>,  <30.653738, 37.162937, 33.299953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042757, 37.087086, 33.246006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079057, 0.275867, -0.957939,
		0.218856, 0.942306, 0.253303,
		0.972549, -0.189625, -0.134871,
		31.334522, 37.030197, 33.205544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971184, 37.782234, 32.906506>,  <30.653738, 37.162937, 33.299953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971184, 37.782234, 32.906506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.182699, 37.447834, 32.847878>,  <31.309608, 37.247192, 32.812702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.182699, 37.447834, 32.847878>,  <30.971184, 37.782234, 32.906506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182699, 37.447834, 32.847878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005957, 0.176337, -0.984312,
		0.848731, 0.519622, 0.098225,
		0.528791, -0.836001, -0.146567,
		31.341337, 37.197033, 32.803905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416996, 37.978619, 32.435387>,  <30.971184, 37.782234, 32.906506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416996, 37.978619, 32.435387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.439699, 37.581287, 32.395233>,  <31.453321, 37.342888, 32.371140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.439699, 37.581287, 32.395233>,  <31.416996, 37.978619, 32.435387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439699, 37.581287, 32.395233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096882, 0.105551, -0.989683,
		0.993676, 0.046449, 0.102227,
		0.056760, -0.993328, -0.100383,
		31.456728, 37.283287, 32.365120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851635, 37.878338, 31.981279>,  <31.416996, 37.978619, 32.435387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851635, 37.878338, 31.981279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.654902, 37.531219, 31.952911>,  <31.536861, 37.322948, 31.935890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.654902, 37.531219, 31.952911>,  <31.851635, 37.878338, 31.981279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654902, 37.531219, 31.952911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019289, 0.070575, -0.997320,
		0.870476, -0.491882, -0.017972,
		-0.491832, -0.867797, -0.070922,
		31.507351, 37.270882, 31.931635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220741, 37.407513, 31.450062>,  <31.851635, 37.878338, 31.981279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220741, 37.407513, 31.450062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.838346, 37.291573, 31.468277>,  <31.608910, 37.222008, 31.479206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.838346, 37.291573, 31.468277>,  <32.220741, 37.407513, 31.450062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838346, 37.291573, 31.468277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060787, 0.043820, -0.997188,
		0.287041, -0.956068, -0.059510,
		-0.955988, -0.289852, 0.045538,
		31.551550, 37.204617, 31.481939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140167, 36.993446, 30.803375>,  <32.220741, 37.407513, 31.450062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140167, 36.993446, 30.803375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.760611, 37.026234, 30.925282>,  <31.532877, 37.045906, 30.998425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.760611, 37.026234, 30.925282>,  <32.140167, 36.993446, 30.803375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760611, 37.026234, 30.925282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302898, 0.034636, -0.952393,
		-0.088624, -0.996033, -0.008037,
		-0.948893, 0.081971, 0.304766,
		31.475943, 37.050823, 31.016712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746836, 36.498901, 30.465342>,  <32.140167, 36.993446, 30.803375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746836, 36.498901, 30.465342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.458870, 36.752045, 30.579334>,  <31.286091, 36.903931, 30.647730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.458870, 36.752045, 30.579334>,  <31.746836, 36.498901, 30.465342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458870, 36.752045, 30.579334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324825, 0.055647, -0.944135,
		-0.613359, -0.772268, 0.165506,
		-0.719916, 0.632855, 0.284984,
		31.242895, 36.941902, 30.664829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174421, 36.192459, 30.271954>,  <31.746836, 36.498901, 30.465342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174421, 36.192459, 30.271954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.123043, 36.587803, 30.304573>,  <31.092216, 36.825008, 30.324144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.123043, 36.587803, 30.304573>,  <31.174421, 36.192459, 30.271954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123043, 36.587803, 30.304573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115763, 0.066725, -0.991033,
		-0.984937, -0.136735, 0.105845,
		-0.128446, 0.988358, 0.081549,
		31.084509, 36.884312, 30.329039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554903, 36.406342, 29.781490>,  <31.174421, 36.192459, 30.271954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554903, 36.406342, 29.781490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.767498, 36.740936, 29.834873>,  <30.895054, 36.941692, 29.866903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.767498, 36.740936, 29.834873>,  <30.554903, 36.406342, 29.781490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767498, 36.740936, 29.834873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039234, 0.133074, -0.990329,
		-0.846158, 0.531582, 0.037908,
		0.531486, 0.836488, 0.133458,
		30.926943, 36.991882, 29.874910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799736, 36.344379, 29.753948>,  <30.554903, 36.406342, 29.781490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799736, 36.344379, 29.753948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.651888, 35.998806, 29.617130>,  <29.563179, 35.791462, 29.535040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.651888, 35.998806, 29.617130>,  <29.799736, 36.344379, 29.753948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651888, 35.998806, 29.617130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215861, -0.437878, 0.872735,
		-0.903761, 0.248748, 0.348339,
		-0.369621, -0.863937, -0.342043,
		29.541002, 35.739624, 29.514517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375330, 36.211414, 30.239853>,  <29.799736, 36.344379, 29.753948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375330, 36.211414, 30.239853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.437296, 35.864708, 30.050232>,  <29.474476, 35.656685, 29.936459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.437296, 35.864708, 30.050232>,  <29.375330, 36.211414, 30.239853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437296, 35.864708, 30.050232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084934, -0.489753, 0.867714,
		-0.984270, -0.094159, -0.149487,
		0.154915, -0.866762, -0.474052,
		29.483770, 35.604679, 29.908016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853256, 35.755680, 30.577564>,  <29.375330, 36.211414, 30.239853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853256, 35.755680, 30.577564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.104950, 35.517773, 30.377441>,  <29.255966, 35.375027, 30.257368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.104950, 35.517773, 30.377441>,  <28.853256, 35.755680, 30.577564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104950, 35.517773, 30.377441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058656, -0.678225, 0.732510,
		-0.774999, -0.431574, -0.461650,
		0.629234, -0.594773, -0.500309,
		29.293720, 35.339340, 30.227348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597227, 35.080090, 30.714388>,  <28.853256, 35.755680, 30.577564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597227, 35.080090, 30.714388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.981525, 35.055443, 30.606186>,  <29.212105, 35.040653, 30.541265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.981525, 35.055443, 30.606186>,  <28.597227, 35.080090, 30.714388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981525, 35.055443, 30.606186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151567, -0.700079, 0.697794,
		-0.232374, -0.711402, -0.663257,
		0.960744, -0.061621, -0.270505,
		29.269749, 35.036957, 30.525034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855545, 34.372337, 30.587124>,  <28.597227, 35.080090, 30.714388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855545, 34.372337, 30.587124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.194576, 34.567989, 30.669453>,  <29.397995, 34.685379, 30.718849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.194576, 34.567989, 30.669453>,  <28.855545, 34.372337, 30.587124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194576, 34.567989, 30.669453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161253, -0.606901, 0.778247,
		0.505578, -0.626436, -0.593270,
		0.847578, 0.489131, 0.205821,
		29.448851, 34.714729, 30.731199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220976, 33.779335, 30.818422>,  <28.855545, 34.372337, 30.587124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220976, 33.779335, 30.818422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.377636, 34.124863, 30.945183>,  <29.471632, 34.332180, 31.021238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.377636, 34.124863, 30.945183>,  <29.220976, 33.779335, 30.818422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377636, 34.124863, 30.945183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333402, -0.454239, 0.826142,
		0.857585, -0.217904, -0.465902,
		0.391651, 0.863820, 0.316899,
		29.495131, 34.384010, 31.040253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731934, 33.538532, 31.075264>,  <29.220976, 33.779335, 30.818422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731934, 33.538532, 31.075264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.723049, 33.920025, 31.195198>,  <29.717718, 34.148922, 31.267159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.723049, 33.920025, 31.195198>,  <29.731934, 33.538532, 31.075264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723049, 33.920025, 31.195198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238079, -0.286235, 0.928110,
		0.970992, 0.091997, -0.220707,
		-0.022210, 0.953733, 0.299834,
		29.716387, 34.206146, 31.285149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271425, 33.531006, 31.610315>,  <29.731934, 33.538532, 31.075264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271425, 33.531006, 31.610315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035072, 33.852142, 31.642090>,  <29.893261, 34.044823, 31.661154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.035072, 33.852142, 31.642090>,  <30.271425, 33.531006, 31.610315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035072, 33.852142, 31.642090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017375, -0.085775, 0.996163,
		0.806571, 0.589995, 0.036734,
		-0.590882, 0.802838, 0.079435,
		29.857807, 34.092995, 31.665920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567684, 33.886761, 32.182053>,  <30.271425, 33.531006, 31.610315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567684, 33.886761, 32.182053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.193398, 34.024620, 32.151993>,  <29.968824, 34.107338, 32.133957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.193398, 34.024620, 32.151993>,  <30.567684, 33.886761, 32.182053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193398, 34.024620, 32.151993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058303, 0.058999, 0.996554,
		0.347897, 0.936875, -0.035112,
		-0.935718, 0.344651, -0.075148,
		29.912682, 34.128014, 32.129448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441729, 34.479755, 32.677876>,  <30.567684, 33.886761, 32.182053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441729, 34.479755, 32.677876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.104136, 34.280373, 32.598648>,  <29.901579, 34.160744, 32.551113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.104136, 34.280373, 32.598648>,  <30.441729, 34.479755, 32.677876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104136, 34.280373, 32.598648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185912, -0.074522, 0.979736,
		-0.503118, 0.863705, -0.029773,
		-0.843984, -0.498458, -0.198067,
		29.850941, 34.130836, 32.539227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863117, 34.851723, 32.986244>,  <30.441729, 34.479755, 32.677876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863117, 34.851723, 32.986244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.750690, 34.469955, 32.946053>,  <29.683235, 34.240894, 32.921936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.750690, 34.469955, 32.946053>,  <29.863117, 34.851723, 32.986244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750690, 34.469955, 32.946053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221474, -0.037366, 0.974450,
		-0.933784, 0.296137, -0.200875,
		-0.281065, -0.954414, -0.100479,
		29.666370, 34.183632, 32.915909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473269, 34.781830, 33.562889>,  <29.863117, 34.851723, 32.986244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473269, 34.781830, 33.562889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.496611, 34.399361, 33.448120>,  <29.510616, 34.169880, 33.379257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.496611, 34.399361, 33.448120>,  <29.473269, 34.781830, 33.562889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496611, 34.399361, 33.448120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298585, -0.290972, 0.908946,
		-0.952597, 0.032629, -0.302479,
		0.058355, -0.956175, -0.286922,
		29.514116, 34.112507, 33.362045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846035, 34.440422, 33.812634>,  <29.473269, 34.781830, 33.562889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846035, 34.440422, 33.812634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.117435, 34.148346, 33.780472>,  <29.280275, 33.973103, 33.761173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.117435, 34.148346, 33.780472>,  <28.846035, 34.440422, 33.812634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117435, 34.148346, 33.780472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240519, -0.324238, 0.914888,
		-0.694109, -0.601413, -0.395619,
		0.678500, -0.730187, -0.080405,
		29.320986, 33.929291, 33.756351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494997, 33.787601, 33.982555>,  <28.846035, 34.440422, 33.812634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494997, 33.787601, 33.982555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.886732, 33.722469, 34.030525>,  <29.121773, 33.683392, 34.059307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.886732, 33.722469, 34.030525>,  <28.494997, 33.787601, 33.982555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886732, 33.722469, 34.030525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190467, -0.543417, 0.817570,
		-0.067951, -0.823520, -0.563203,
		0.979339, -0.162826, 0.119927,
		29.180534, 33.673622, 34.066502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.821404, 29.849257, 33.883724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630741, 30.197533, 33.835228>,  <33.516342, 30.406498, 33.806129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630741, 30.197533, 33.835228>,  <33.821404, 29.849257, 33.883724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630741, 30.197533, 33.835228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104328, -0.192970, -0.975642,
		-0.872877, -0.452397, 0.182818,
		-0.476656, 0.870689, -0.121241,
		33.487743, 30.458740, 33.798855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158279, 29.784235, 33.606682>,  <33.821404, 29.849257, 33.883724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158279, 29.784235, 33.606682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.268444, 30.154591, 33.503242>,  <33.334545, 30.376804, 33.441181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.268444, 30.154591, 33.503242>,  <33.158279, 29.784235, 33.606682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268444, 30.154591, 33.503242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005376, -0.270478, -0.962711,
		-0.961310, 0.263756, -0.079471,
		0.275416, 0.925891, -0.258595,
		33.351070, 30.432358, 33.425663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650330, 30.052849, 33.115448>,  <33.158279, 29.784235, 33.606682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650330, 30.052849, 33.115448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977650, 30.276752, 33.063206>,  <33.174042, 30.411095, 33.031860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977650, 30.276752, 33.063206>,  <32.650330, 30.052849, 33.115448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977650, 30.276752, 33.063206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023040, -0.195097, -0.980513,
		-0.574333, 0.805361, -0.146750,
		0.818298, 0.559760, -0.130606,
		33.223141, 30.444681, 33.024025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434540, 30.418341, 32.523125>,  <32.650330, 30.052849, 33.115448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434540, 30.418341, 32.523125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826519, 30.497684, 32.530689>,  <33.061707, 30.545290, 32.535229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826519, 30.497684, 32.530689>,  <32.434540, 30.418341, 32.523125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826519, 30.497684, 32.530689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015903, 0.016731, -0.999734,
		-0.198622, 0.979987, 0.013242,
		0.979947, 0.198359, 0.018908,
		33.120502, 30.557192, 32.536362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534637, 30.882843, 31.939226>,  <32.434540, 30.418341, 32.523125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534637, 30.882843, 31.939226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902199, 30.752380, 32.027981>,  <33.122738, 30.674103, 32.081234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.902199, 30.752380, 32.027981>,  <32.534637, 30.882843, 31.939226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902199, 30.752380, 32.027981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270939, 0.113007, -0.955940,
		0.286712, 0.938537, 0.192211,
		0.918906, -0.326157, 0.221886,
		33.177872, 30.654533, 32.094547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973404, 31.426355, 31.743980>,  <32.534637, 30.882843, 31.939226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973404, 31.426355, 31.743980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169357, 31.077671, 31.739338>,  <33.286930, 30.868462, 31.736553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169357, 31.077671, 31.739338>,  <32.973404, 31.426355, 31.743980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169357, 31.077671, 31.739338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181663, 0.115093, -0.976602,
		0.852650, 0.476315, 0.214739,
		0.489885, -0.871710, -0.011605,
		33.316322, 30.816158, 31.735857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505489, 31.533642, 31.297173>,  <32.973404, 31.426355, 31.743980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505489, 31.533642, 31.297173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.471088, 31.135124, 31.297569>,  <33.450447, 30.896013, 31.297808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.471088, 31.135124, 31.297569>,  <33.505489, 31.533642, 31.297173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471088, 31.135124, 31.297569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205664, -0.018726, -0.978444,
		0.974836, -0.083947, 0.206512,
		-0.086005, -0.996294, 0.000990,
		33.445286, 30.836235, 31.297867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130306, 31.254583, 30.926306>,  <33.505489, 31.533642, 31.297173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130306, 31.254583, 30.926306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873108, 30.948345, 30.918118>,  <33.718788, 30.764603, 30.913204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873108, 30.948345, 30.918118>,  <34.130306, 31.254583, 30.926306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873108, 30.948345, 30.918118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276098, -0.206787, -0.938621,
		0.714368, -0.609185, 0.344342,
		-0.642999, -0.765593, -0.020473,
		33.680206, 30.718668, 30.911976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503033, 30.726305, 30.549490>,  <34.130306, 31.254583, 30.926306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503033, 30.726305, 30.549490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.117359, 30.622040, 30.529907>,  <33.885956, 30.559481, 30.518158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.117359, 30.622040, 30.529907>,  <34.503033, 30.726305, 30.549490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117359, 30.622040, 30.529907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073801, -0.086391, -0.993524,
		0.254744, -0.961557, 0.102534,
		-0.964188, -0.260661, -0.048957,
		33.828102, 30.543842, 30.515221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412216, 30.444571, 29.846186>,  <34.503033, 30.726305, 30.549490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412216, 30.444571, 29.846186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023739, 30.478710, 29.935184>,  <33.790653, 30.499195, 29.988585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023739, 30.478710, 29.935184>,  <34.412216, 30.444571, 29.846186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023739, 30.478710, 29.935184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190635, 0.282001, -0.940284,
		-0.142999, -0.955610, -0.257605,
		-0.971190, 0.085352, 0.222498,
		33.732384, 30.504314, 30.001934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065754, 30.151224, 29.275557>,  <34.412216, 30.444571, 29.846186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065754, 30.151224, 29.275557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.763794, 30.341312, 29.456352>,  <33.582619, 30.455364, 29.564829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.763794, 30.341312, 29.456352>,  <34.065754, 30.151224, 29.275557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763794, 30.341312, 29.456352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313410, 0.343994, -0.885122,
		-0.576109, -0.809836, -0.110742,
		-0.754899, 0.475219, 0.451989,
		33.537323, 30.483879, 29.591949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432991, 30.001276, 28.936298>,  <34.065754, 30.151224, 29.275557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432991, 30.001276, 28.936298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340778, 30.338467, 29.130718>,  <33.285450, 30.540781, 29.247370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340778, 30.338467, 29.130718>,  <33.432991, 30.001276, 28.936298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340778, 30.338467, 29.130718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356759, 0.391498, -0.848206,
		-0.905305, -0.368941, 0.210487,
		-0.230533, 0.842978, 0.486048,
		33.271618, 30.591360, 29.276533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706036, 30.175449, 28.774143>,  <33.432991, 30.001276, 28.936298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706036, 30.175449, 28.774143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927650, 30.493694, 28.872154>,  <33.060619, 30.684641, 28.930962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927650, 30.493694, 28.872154>,  <32.706036, 30.175449, 28.774143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927650, 30.493694, 28.872154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267475, 0.448851, -0.852637,
		-0.788350, 0.406856, 0.461489,
		0.554040, 0.795613, 0.245028,
		33.093864, 30.732378, 28.945663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208221, 30.675045, 28.676926>,  <32.706036, 30.175449, 28.774143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208221, 30.675045, 28.676926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575787, 30.832806, 28.679527>,  <32.796326, 30.927462, 28.681087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575787, 30.832806, 28.679527>,  <32.208221, 30.675045, 28.676926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575787, 30.832806, 28.679527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205403, 0.492513, -0.845719,
		-0.336755, 0.775808, 0.533590,
		0.918916, 0.394401, 0.006503,
		32.851460, 30.951126, 28.681479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684921, 30.941154, 28.938835>,  <32.208221, 30.675045, 28.676926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684921, 30.941154, 28.938835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434025, 30.694775, 28.748184>,  <31.283487, 30.546947, 28.633793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434025, 30.694775, 28.748184>,  <31.684921, 30.941154, 28.938835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434025, 30.694775, 28.748184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212227, -0.453650, 0.865541,
		-0.749351, 0.644058, 0.153828,
		-0.627242, -0.615947, -0.476629,
		31.245852, 30.509991, 28.605196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063715, 30.940723, 29.423742>,  <31.684921, 30.941154, 28.938835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063715, 30.940723, 29.423742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.054945, 30.619339, 29.185760>,  <31.049683, 30.426508, 29.042971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.054945, 30.619339, 29.185760>,  <31.063715, 30.940723, 29.423742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054945, 30.619339, 29.185760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442096, -0.525963, 0.726577,
		-0.896700, 0.278957, -0.343675,
		-0.021923, -0.803459, -0.594957,
		31.048368, 30.378302, 29.007273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396296, 30.683800, 29.423088>,  <31.063715, 30.940723, 29.423742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396296, 30.683800, 29.423088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630131, 30.373264, 29.328812>,  <30.770432, 30.186943, 29.272245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630131, 30.373264, 29.328812>,  <30.396296, 30.683800, 29.423088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630131, 30.373264, 29.328812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226083, -0.434869, 0.871651,
		-0.779194, -0.456272, -0.429737,
		0.584589, -0.776341, -0.235692,
		30.805508, 30.140362, 29.258104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021643, 30.021223, 29.591230>,  <30.396296, 30.683800, 29.423088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021643, 30.021223, 29.591230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.399340, 29.890888, 29.572330>,  <30.625957, 29.812687, 29.560991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.399340, 29.890888, 29.572330>,  <30.021643, 30.021223, 29.591230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399340, 29.890888, 29.572330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109490, -0.446091, 0.888265,
		-0.310508, -0.833566, -0.456895,
		0.944244, -0.325839, -0.047248,
		30.682613, 29.793137, 29.558157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975254, 29.319843, 29.868570>,  <30.021643, 30.021223, 29.591230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975254, 29.319843, 29.868570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342997, 29.477097, 29.874615>,  <30.563643, 29.571449, 29.878241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.342997, 29.477097, 29.874615>,  <29.975254, 29.319843, 29.868570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342997, 29.477097, 29.874615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177038, -0.447692, 0.876487,
		0.351343, -0.803129, -0.481188,
		0.919356, 0.393136, 0.015109,
		30.618803, 29.595037, 29.879147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386078, 28.799948, 30.109858>,  <29.975254, 29.319843, 29.868570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386078, 28.799948, 30.109858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581186, 29.139404, 30.191719>,  <30.698252, 29.343079, 30.240835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581186, 29.139404, 30.191719>,  <30.386078, 28.799948, 30.109858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581186, 29.139404, 30.191719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098176, -0.286273, 0.953105,
		0.867432, -0.444807, -0.222953,
		0.487773, 0.848643, 0.204653,
		30.727518, 29.393997, 30.253115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796267, 28.659363, 30.704491>,  <30.386078, 28.799948, 30.109858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796267, 28.659363, 30.704491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.827717, 29.058113, 30.701355>,  <30.846586, 29.297363, 30.699474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.827717, 29.058113, 30.701355>,  <30.796267, 28.659363, 30.704491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827717, 29.058113, 30.701355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124925, -0.002053, 0.992164,
		0.989046, -0.078988, -0.124696,
		0.078625, 0.996874, -0.007837,
		30.851305, 29.357176, 30.699003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459570, 28.801321, 31.160238>,  <30.796267, 28.659363, 30.704491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459570, 28.801321, 31.160238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.230217, 29.128757, 31.146713>,  <31.092606, 29.325218, 31.138597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.230217, 29.128757, 31.146713>,  <31.459570, 28.801321, 31.160238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230217, 29.128757, 31.146713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196115, 0.177206, 0.964436,
		0.795468, 0.546361, -0.262145,
		-0.573384, 0.818589, -0.033812,
		31.058203, 29.374334, 31.136570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800735, 29.231203, 31.521858>,  <31.459570, 28.801321, 31.160238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800735, 29.231203, 31.521858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443394, 29.410606, 31.510830>,  <31.228989, 29.518248, 31.504213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443394, 29.410606, 31.510830>,  <31.800735, 29.231203, 31.521858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443394, 29.410606, 31.510830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108058, 0.273978, 0.955646,
		0.436168, 0.850751, -0.293224,
		-0.893354, 0.448508, -0.027570,
		31.175388, 29.545158, 31.502560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928078, 29.674240, 32.039158>,  <31.800735, 29.231203, 31.521858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928078, 29.674240, 32.039158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535004, 29.701084, 31.970070>,  <31.299160, 29.717190, 31.928617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535004, 29.701084, 31.970070>,  <31.928078, 29.674240, 32.039158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535004, 29.701084, 31.970070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152185, 0.239448, 0.958908,
		0.105708, 0.968587, -0.225088,
		-0.982683, 0.067109, -0.172716,
		31.240198, 29.721216, 31.918255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566982, 30.382996, 32.217472>,  <31.928078, 29.674240, 32.039158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566982, 30.382996, 32.217472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277397, 30.108841, 32.248775>,  <31.103647, 29.944347, 32.267559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277397, 30.108841, 32.248775>,  <31.566982, 30.382996, 32.217472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277397, 30.108841, 32.248775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047393, 0.063766, 0.996839,
		-0.688211, 0.725381, -0.013682,
		-0.723961, -0.685387, 0.078262,
		31.060209, 29.903225, 32.272255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850121, 30.716555, 32.541222>,  <31.566982, 30.382996, 32.217472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850121, 30.716555, 32.541222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845720, 30.321236, 32.602077>,  <30.843081, 30.084044, 32.638592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845720, 30.321236, 32.602077>,  <30.850121, 30.716555, 32.541222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845720, 30.321236, 32.602077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210848, 0.151019, 0.965783,
		-0.977457, -0.021453, -0.210042,
		-0.011001, -0.988298, 0.152138,
		30.842421, 30.024746, 32.647720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337780, 30.606621, 33.060070>,  <30.850121, 30.716555, 32.541222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337780, 30.606621, 33.060070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514317, 30.247963, 33.074169>,  <30.620239, 30.032768, 33.082630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.514317, 30.247963, 33.074169>,  <30.337780, 30.606621, 33.060070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514317, 30.247963, 33.074169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236410, -0.078288, 0.968495,
		-0.865637, -0.435771, -0.246528,
		0.441342, -0.896646, 0.035252,
		30.646719, 29.978970, 33.084743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861866, 30.160433, 33.377720>,  <30.337780, 30.606621, 33.060070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861866, 30.160433, 33.377720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.219891, 29.996338, 33.447655>,  <30.434706, 29.897881, 33.489616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.219891, 29.996338, 33.447655>,  <29.861866, 30.160433, 33.377720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219891, 29.996338, 33.447655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217496, -0.059334, 0.974256,
		-0.389305, -0.910045, -0.142334,
		0.895063, -0.410240, 0.174832,
		30.488409, 29.873266, 33.500103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185101, 29.803188, 33.040428>,  <29.861866, 30.160433, 33.377720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185101, 29.803188, 33.040428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.823761, 29.702847, 33.179588>,  <28.606956, 29.642641, 33.263084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.823761, 29.702847, 33.179588>,  <29.185101, 29.803188, 33.040428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823761, 29.702847, 33.179588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354952, -0.018085, -0.934710,
		0.240769, -0.967856, -0.072704,
		-0.903349, -0.250855, 0.347896,
		28.552755, 29.627590, 33.283958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027880, 29.141129, 32.768253>,  <29.185101, 29.803188, 33.040428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027880, 29.141129, 32.768253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.710791, 29.375214, 32.836510>,  <28.520536, 29.515665, 32.877464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.710791, 29.375214, 32.836510>,  <29.027880, 29.141129, 32.768253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710791, 29.375214, 32.836510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234130, -0.033834, -0.971617,
		-0.562828, -0.810175, 0.163836,
		-0.792722, 0.585211, 0.170643,
		28.472975, 29.550777, 32.887703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605635, 28.836761, 32.321873>,  <29.027880, 29.141129, 32.768253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605635, 28.836761, 32.321873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.427620, 29.187183, 32.396141>,  <28.320812, 29.397436, 32.440701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.427620, 29.187183, 32.396141>,  <28.605635, 28.836761, 32.321873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427620, 29.187183, 32.396141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342218, 0.025220, -0.939282,
		-0.827545, -0.481552, 0.288578,
		-0.445035, 0.876055, 0.185666,
		28.294109, 29.449999, 32.451839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752348, 28.853779, 32.024216>,  <28.605635, 28.836761, 32.321873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752348, 28.853779, 32.024216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.910683, 29.220661, 32.042316>,  <28.005684, 29.440790, 32.053177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.910683, 29.220661, 32.042316>,  <27.752348, 28.853779, 32.024216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910683, 29.220661, 32.042316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344887, 0.194148, -0.918347,
		-0.851097, 0.347911, 0.393183,
		0.395838, 0.917205, 0.045248,
		28.029434, 29.495823, 32.055889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243679, 29.303782, 31.655539>,  <27.752348, 28.853779, 32.024216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243679, 29.303782, 31.655539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.573698, 29.529022, 31.674366>,  <27.771709, 29.664165, 31.685663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.573698, 29.529022, 31.674366>,  <27.243679, 29.303782, 31.655539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573698, 29.529022, 31.674366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233844, 0.416082, -0.878745,
		-0.514407, 0.713999, 0.474965,
		0.825047, 0.563100, 0.047071,
		27.821213, 29.697952, 31.688488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014959, 29.916384, 31.218903>,  <27.243679, 29.303782, 31.655539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014959, 29.916384, 31.218903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.413561, 29.938976, 31.243530>,  <27.652721, 29.952532, 31.258307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.413561, 29.938976, 31.243530>,  <27.014959, 29.916384, 31.218903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413561, 29.938976, 31.243530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010710, 0.644463, -0.764560,
		-0.082863, 0.762546, 0.641605,
		0.996503, 0.056483, 0.061569,
		27.712511, 29.955921, 31.262001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125002, 30.652119, 31.235432>,  <27.014959, 29.916384, 31.218903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125002, 30.652119, 31.235432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.453852, 30.459442, 31.114052>,  <27.651161, 30.343836, 31.041224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.453852, 30.459442, 31.114052>,  <27.125002, 30.652119, 31.235432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453852, 30.459442, 31.114052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025328, 0.563435, -0.825772,
		0.568742, 0.671203, 0.475414,
		0.822126, -0.481692, -0.303449,
		27.700489, 30.314934, 31.023018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579418, 31.143545, 30.926229>,  <27.125002, 30.652119, 31.235432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579418, 31.143545, 30.926229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.692413, 30.792095, 30.772236>,  <27.760210, 30.581224, 30.679840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.692413, 30.792095, 30.772236>,  <27.579418, 31.143545, 30.926229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692413, 30.792095, 30.772236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085517, 0.422800, -0.902179,
		0.955451, 0.221934, 0.194574,
		0.282490, -0.878627, -0.384985,
		27.777161, 30.528507, 30.656740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164682, 31.259792, 30.528687>,  <27.579418, 31.143545, 30.926229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164682, 31.259792, 30.528687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.015244, 30.924679, 30.369419>,  <27.925581, 30.723610, 30.273859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.015244, 30.924679, 30.369419>,  <28.164682, 31.259792, 30.528687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015244, 30.924679, 30.369419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140801, 0.475497, -0.868377,
		0.916842, -0.268360, -0.295606,
		-0.373597, -0.837786, -0.398170,
		27.903164, 30.673344, 30.249968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478348, 31.313232, 29.956324>,  <28.164682, 31.259792, 30.528687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478348, 31.313232, 29.956324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.170385, 31.063374, 29.904072>,  <27.985607, 30.913458, 29.872721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.170385, 31.063374, 29.904072>,  <28.478348, 31.313232, 29.956324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170385, 31.063374, 29.904072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255474, 0.489271, -0.833874,
		0.584789, -0.608632, -0.536273,
		-0.769906, -0.624645, -0.130631,
		27.939413, 30.875980, 29.864883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564087, 31.029366, 29.288939>,  <28.478348, 31.313232, 29.956324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564087, 31.029366, 29.288939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.177872, 30.996765, 29.387806>,  <27.946142, 30.977205, 29.447126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.177872, 30.996765, 29.387806>,  <28.564087, 31.029366, 29.288939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177872, 30.996765, 29.387806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246315, 0.592828, -0.766735,
		-0.084038, -0.801194, -0.592474,
		-0.965539, -0.081501, 0.247167,
		27.888210, 30.972315, 29.461956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289021, 30.995705, 28.665276>,  <28.564087, 31.029366, 29.288939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289021, 30.995705, 28.665276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.963604, 31.038094, 28.893982>,  <27.768354, 31.063526, 29.031206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.963604, 31.038094, 28.893982>,  <28.289021, 30.995705, 28.665276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963604, 31.038094, 28.893982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441094, 0.528256, -0.725521,
		-0.378923, -0.842446, -0.383016,
		-0.813543, 0.105970, 0.571767,
		27.719542, 31.069885, 29.065512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761271, 30.657381, 28.313515>,  <28.289021, 30.995705, 28.665276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761271, 30.657381, 28.313515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.617029, 30.950279, 28.544609>,  <27.530485, 31.126019, 28.683266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.617029, 30.950279, 28.544609>,  <27.761271, 30.657381, 28.313515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617029, 30.950279, 28.544609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227528, 0.531640, -0.815837,
		-0.904542, -0.425645, -0.025105,
		-0.360604, 0.732247, 0.577737,
		27.508848, 31.169952, 28.717930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139069, 30.844275, 28.047182>,  <27.761271, 30.657381, 28.313515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139069, 30.844275, 28.047182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.228752, 31.171616, 28.258854>,  <27.282562, 31.368019, 28.385857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.228752, 31.171616, 28.258854>,  <27.139069, 30.844275, 28.047182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228752, 31.171616, 28.258854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178542, 0.568307, -0.803212,
		-0.958046, 0.085607, 0.273530,
		0.224210, 0.818351, 0.529180,
		27.296015, 31.417120, 28.417608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.673374, 31.826023, 14.815210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072987, 31.830200, 14.798110>,  <39.312756, 31.832706, 14.787849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072987, 31.830200, 14.798110>,  <38.673374, 31.826023, 14.815210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072987, 31.830200, 14.798110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043833, -0.149274, 0.987824,
		0.003936, -0.988741, -0.149587,
		0.999031, 0.010445, -0.042751,
		39.372696, 31.833334, 14.785284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919910, 31.333529, 15.239058>,  <38.673374, 31.826023, 14.815210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919910, 31.333529, 15.239058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243858, 31.565174, 15.201659>,  <39.438225, 31.704163, 15.179219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243858, 31.565174, 15.201659>,  <38.919910, 31.333529, 15.239058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243858, 31.565174, 15.201659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162603, -0.068476, 0.984312,
		0.563629, -0.812364, -0.149622,
		0.809866, 0.579116, -0.093498,
		39.486816, 31.738909, 15.173610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510040, 30.937860, 15.508135>,  <38.919910, 31.333529, 15.239058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510040, 30.937860, 15.508135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.596832, 31.328308, 15.512364>,  <39.648907, 31.562576, 15.514902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.596832, 31.328308, 15.512364>,  <39.510040, 30.937860, 15.508135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596832, 31.328308, 15.512364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267933, -0.069967, 0.960894,
		0.938687, -0.205660, -0.276715,
		0.216978, 0.976119, 0.010574,
		39.661926, 31.621143, 15.515536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085629, 30.935896, 15.894646>,  <39.510040, 30.937860, 15.508135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085629, 30.935896, 15.894646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.973389, 31.318375, 15.928000>,  <39.906044, 31.547861, 15.948013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.973389, 31.318375, 15.928000>,  <40.085629, 30.935896, 15.894646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973389, 31.318375, 15.928000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153558, -0.041035, 0.987287,
		0.947461, 0.289840, -0.135317,
		-0.280602, 0.956195, 0.083386,
		39.889210, 31.605234, 15.953016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538948, 31.232447, 16.372204>,  <40.085629, 30.935896, 15.894646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538948, 31.232447, 16.372204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.236305, 31.493996, 16.372501>,  <40.054722, 31.650925, 16.372681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.236305, 31.493996, 16.372501>,  <40.538948, 31.232447, 16.372204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236305, 31.493996, 16.372501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084852, 0.097054, 0.991656,
		0.648344, 0.750354, -0.128914,
		-0.756605, 0.653872, 0.000744,
		40.009323, 31.690157, 16.372725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725792, 31.812653, 16.639891>,  <40.538948, 31.232447, 16.372204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725792, 31.812653, 16.639891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.329594, 31.858482, 16.670330>,  <40.091873, 31.885981, 16.688595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.329594, 31.858482, 16.670330>,  <40.725792, 31.812653, 16.639891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329594, 31.858482, 16.670330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103848, 0.260163, 0.959964,
		0.090190, 0.958743, -0.269589,
		-0.990496, 0.114576, 0.076100,
		40.032444, 31.892855, 16.693159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519886, 32.561237, 17.003218>,  <40.725792, 31.812653, 16.639891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519886, 32.561237, 17.003218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.184063, 32.351833, 17.061306>,  <39.982571, 32.226192, 17.096159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.184063, 32.351833, 17.061306>,  <40.519886, 32.561237, 17.003218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184063, 32.351833, 17.061306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058209, 0.352446, 0.934020,
		-0.540147, 0.775708, -0.326371,
		-0.839556, -0.523505, 0.145220,
		39.932198, 32.194782, 17.104872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049652, 33.024906, 17.273109>,  <40.519886, 32.561237, 17.003218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049652, 33.024906, 17.273109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.914249, 32.668186, 17.393177>,  <39.833008, 32.454155, 17.465218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.914249, 32.668186, 17.393177>,  <40.049652, 33.024906, 17.273109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914249, 32.668186, 17.393177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201372, 0.380269, 0.902688,
		-0.919165, 0.245117, -0.308307,
		-0.338504, -0.891803, 0.300170,
		39.812698, 32.400646, 17.483229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361790, 33.184921, 17.523827>,  <40.049652, 33.024906, 17.273109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361790, 33.184921, 17.523827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.536839, 32.858601, 17.675064>,  <39.641869, 32.662807, 17.765806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.536839, 32.858601, 17.675064>,  <39.361790, 33.184921, 17.523827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536839, 32.858601, 17.675064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219923, 0.310610, 0.924746,
		-0.871848, -0.487842, -0.043484,
		0.437623, -0.815801, 0.378092,
		39.668125, 32.613861, 17.788492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084160, 33.154560, 18.194359>,  <39.361790, 33.184921, 17.523827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084160, 33.154560, 18.194359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346001, 32.859863, 18.262131>,  <39.503105, 32.683044, 18.302794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346001, 32.859863, 18.262131>,  <39.084160, 33.154560, 18.194359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346001, 32.859863, 18.262131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061262, 0.275084, 0.959467,
		-0.753489, -0.617687, 0.225204,
		0.654600, -0.736744, 0.169432,
		39.542381, 32.638840, 18.312960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847733, 32.721176, 18.717098>,  <39.084160, 33.154560, 18.194359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847733, 32.721176, 18.717098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246464, 32.696526, 18.696983>,  <39.485703, 32.681736, 18.684914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.246464, 32.696526, 18.696983>,  <38.847733, 32.721176, 18.717098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246464, 32.696526, 18.696983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062164, 0.209144, 0.975907,
		-0.049627, -0.975941, 0.212312,
		0.996832, -0.061630, -0.050289,
		39.545513, 32.678036, 18.681896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049797, 32.408749, 19.286261>,  <38.847733, 32.721176, 18.717098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049797, 32.408749, 19.286261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.406784, 32.556377, 19.182503>,  <39.620975, 32.644955, 19.120249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.406784, 32.556377, 19.182503>,  <39.049797, 32.408749, 19.286261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406784, 32.556377, 19.182503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207060, 0.175715, 0.962419,
		0.400781, -0.912639, 0.080400,
		0.892469, 0.369072, -0.259394,
		39.674526, 32.667099, 19.104685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494610, 32.168491, 19.865450>,  <39.049797, 32.408749, 19.286261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494610, 32.168491, 19.865450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.686821, 32.470402, 19.686825>,  <39.802147, 32.651546, 19.579651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.686821, 32.470402, 19.686825>,  <39.494610, 32.168491, 19.865450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686821, 32.470402, 19.686825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172574, 0.417865, 0.891968,
		0.859834, -0.505677, 0.070540,
		0.480524, 0.754771, -0.446561,
		39.830978, 32.696835, 19.552856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210918, 32.258396, 20.180912>,  <39.494610, 32.168491, 19.865450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210918, 32.258396, 20.180912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.103828, 32.602734, 20.007812>,  <40.039574, 32.809338, 19.903954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.103828, 32.602734, 20.007812>,  <40.210918, 32.258396, 20.180912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103828, 32.602734, 20.007812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250145, 0.495846, 0.831604,
		0.930456, 0.114395, -0.348088,
		-0.267729, 0.860843, -0.432747,
		40.023510, 32.860985, 19.877989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708015, 32.827881, 20.527040>,  <40.210918, 32.258396, 20.180912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708015, 32.827881, 20.527040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.421284, 33.034229, 20.339409>,  <40.249245, 33.158039, 20.226830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.421284, 33.034229, 20.339409>,  <40.708015, 32.827881, 20.527040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421284, 33.034229, 20.339409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193743, 0.793632, 0.576725,
		0.669793, 0.322531, -0.668843,
		-0.716827, 0.515871, -0.469081,
		40.206234, 33.188992, 20.198685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007057, 33.464565, 20.461037>,  <40.708015, 32.827881, 20.527040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007057, 33.464565, 20.461037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613342, 33.517300, 20.414040>,  <40.377113, 33.548939, 20.385841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613342, 33.517300, 20.414040>,  <41.007057, 33.464565, 20.461037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613342, 33.517300, 20.414040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016423, 0.730784, 0.682411,
		0.175828, 0.669757, -0.721464,
		-0.984284, 0.131835, -0.117492,
		40.318058, 33.556850, 20.378792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966034, 34.184868, 20.419113>,  <41.007057, 33.464565, 20.461037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966034, 34.184868, 20.419113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.615170, 34.025547, 20.526398>,  <40.404652, 33.929955, 20.590769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.615170, 34.025547, 20.526398>,  <40.966034, 34.184868, 20.419113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615170, 34.025547, 20.526398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065885, 0.653098, 0.754402,
		-0.475650, 0.644063, -0.599116,
		-0.877164, -0.398304, 0.268211,
		40.352020, 33.906055, 20.606861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412880, 34.686485, 20.455420>,  <40.966034, 34.184868, 20.419113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412880, 34.686485, 20.455420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.282978, 34.405285, 20.708504>,  <40.205036, 34.236565, 20.860355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.282978, 34.405285, 20.708504>,  <40.412880, 34.686485, 20.455420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282978, 34.405285, 20.708504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206987, 0.705583, 0.677724,
		-0.922870, 0.089133, -0.374655,
		-0.324757, -0.703000, 0.632712,
		40.185551, 34.194386, 20.898317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903408, 35.050041, 20.670502>,  <40.412880, 34.686485, 20.455420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903408, 35.050041, 20.670502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.947815, 34.741226, 20.920822>,  <39.974461, 34.555935, 21.071014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.947815, 34.741226, 20.920822>,  <39.903408, 35.050041, 20.670502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947815, 34.741226, 20.920822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364034, 0.554336, 0.748459,
		-0.924745, -0.310905, -0.219508,
		0.111019, -0.772042, 0.625800,
		39.981121, 34.509613, 21.108562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195869, 34.955513, 21.073568>,  <39.903408, 35.050041, 20.670502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195869, 34.955513, 21.073568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493454, 34.803768, 21.293610>,  <39.672005, 34.712723, 21.425634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493454, 34.803768, 21.293610>,  <39.195869, 34.955513, 21.073568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493454, 34.803768, 21.293610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419861, 0.375058, 0.826467,
		-0.519846, -0.845825, 0.119750,
		0.743960, -0.379358, 0.550102,
		39.716640, 34.689960, 21.458639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956459, 34.364895, 21.504133>,  <39.195869, 34.955513, 21.073568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956459, 34.364895, 21.504133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263363, 34.561596, 21.668812>,  <39.447506, 34.679619, 21.767618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.263363, 34.561596, 21.668812>,  <38.956459, 34.364895, 21.504133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263363, 34.561596, 21.668812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482093, 0.018869, 0.875917,
		0.422970, -0.870528, 0.251550,
		0.767256, 0.491757, 0.411695,
		39.493542, 34.709122, 21.792320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360100, 34.567806, 21.052635>,  <38.956459, 34.364895, 21.504133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360100, 34.567806, 21.052635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969929, 34.527130, 20.974453>,  <37.735825, 34.502724, 20.927544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969929, 34.527130, 20.974453>,  <38.360100, 34.567806, 21.052635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969929, 34.527130, 20.974453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181871, 0.129118, -0.974808,
		0.124329, -0.986405, -0.107458,
		-0.975431, -0.101653, -0.195452,
		37.677299, 34.496624, 20.915817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362125, 34.045555, 20.693369>,  <38.360100, 34.567806, 21.052635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362125, 34.045555, 20.693369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.022518, 34.232979, 20.595695>,  <37.818752, 34.345432, 20.537092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.022518, 34.232979, 20.595695>,  <38.362125, 34.045555, 20.693369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022518, 34.232979, 20.595695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331864, 0.113286, -0.936500,
		-0.411141, -0.876140, -0.251679,
		-0.849017, 0.468556, -0.244183,
		37.767815, 34.373547, 20.522440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258034, 33.739075, 20.073404>,  <38.362125, 34.045555, 20.693369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258034, 33.739075, 20.073404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.022022, 34.061474, 20.054508>,  <37.880417, 34.254913, 20.043171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.022022, 34.061474, 20.054508>,  <38.258034, 33.739075, 20.073404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022022, 34.061474, 20.054508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184092, 0.077333, -0.979862,
		-0.786115, -0.586843, -0.194007,
		-0.590028, 0.805999, -0.047241,
		37.845013, 34.303272, 20.040337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697075, 33.710941, 19.490488>,  <38.258034, 33.739075, 20.073404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697075, 33.710941, 19.490488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.734238, 34.102348, 19.564102>,  <37.756535, 34.337193, 19.608271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.734238, 34.102348, 19.564102>,  <37.697075, 33.710941, 19.490488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734238, 34.102348, 19.564102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037335, 0.188130, -0.981434,
		-0.994975, 0.084311, 0.054011,
		0.092907, 0.978519, 0.184037,
		37.762112, 34.395905, 19.619314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146458, 34.074207, 19.024174>,  <37.697075, 33.710941, 19.490488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146458, 34.074207, 19.024174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397491, 34.367153, 19.129837>,  <37.548111, 34.542923, 19.193235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397491, 34.367153, 19.129837>,  <37.146458, 34.074207, 19.024174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397491, 34.367153, 19.129837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172784, 0.199816, -0.964479,
		-0.759136, 0.650931, -0.001141,
		0.627581, 0.732368, 0.264158,
		37.585766, 34.586864, 19.209084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915207, 34.699688, 18.723423>,  <37.146458, 34.074207, 19.024174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915207, 34.699688, 18.723423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.304092, 34.762028, 18.793301>,  <37.537422, 34.799431, 18.835228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.304092, 34.762028, 18.793301>,  <36.915207, 34.699688, 18.723423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304092, 34.762028, 18.793301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146133, 0.178989, -0.972938,
		-0.182904, 0.971428, 0.151240,
		0.972209, 0.155854, 0.174695,
		37.595757, 34.808784, 18.845709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162258, 35.139175, 18.103889>,  <36.915207, 34.699688, 18.723423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162258, 35.139175, 18.103889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.487061, 34.968407, 18.263077>,  <37.681942, 34.865944, 18.358589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.487061, 34.968407, 18.263077>,  <37.162258, 35.139175, 18.103889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487061, 34.968407, 18.263077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403893, -0.081188, -0.911196,
		0.421322, 0.900636, 0.106506,
		0.812009, -0.426924, 0.397967,
		37.730663, 34.840328, 18.382467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602852, 35.263638, 17.651955>,  <37.162258, 35.139175, 18.103889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602852, 35.263638, 17.651955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.823357, 34.994656, 17.849510>,  <37.955658, 34.833267, 17.968042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.823357, 34.994656, 17.849510>,  <37.602852, 35.263638, 17.651955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823357, 34.994656, 17.849510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499415, -0.208245, -0.840963,
		0.668356, 0.710242, 0.221035,
		0.551258, -0.672451, 0.493887,
		37.988735, 34.792919, 17.997677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308624, 35.336582, 17.474939>,  <37.602852, 35.263638, 17.651955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308624, 35.336582, 17.474939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.267105, 34.960361, 17.604305>,  <38.242195, 34.734631, 17.681925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.267105, 34.960361, 17.604305>,  <38.308624, 35.336582, 17.474939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267105, 34.960361, 17.604305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481624, -0.332035, -0.811043,
		0.870209, 0.071581, 0.487455,
		-0.103797, -0.940547, 0.323415,
		38.235966, 34.678196, 17.701330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901138, 34.991364, 17.260931>,  <38.308624, 35.336582, 17.474939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901138, 34.991364, 17.260931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657883, 34.682053, 17.332722>,  <38.511929, 34.496468, 17.375797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657883, 34.682053, 17.332722>,  <38.901138, 34.991364, 17.260931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657883, 34.682053, 17.332722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265016, -0.410886, -0.872318,
		0.748288, -0.482925, 0.454806,
		-0.608138, -0.773276, 0.179478,
		38.475441, 34.450069, 17.386566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175735, 34.511715, 16.912420>,  <38.901138, 34.991364, 17.260931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175735, 34.511715, 16.912420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.805786, 34.365059, 16.952774>,  <38.583817, 34.277065, 16.976986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.805786, 34.365059, 16.952774>,  <39.175735, 34.511715, 16.912420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805786, 34.365059, 16.952774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102457, -0.495747, -0.862402,
		0.366204, -0.787280, 0.496070,
		-0.924877, -0.366641, 0.100882,
		38.528324, 34.255066, 16.983038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259037, 33.888161, 16.769875>,  <39.175735, 34.511715, 16.912420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259037, 33.888161, 16.769875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.864994, 33.946796, 16.733944>,  <38.628567, 33.981979, 16.712385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.864994, 33.946796, 16.733944>,  <39.259037, 33.888161, 16.769875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864994, 33.946796, 16.733944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005270, -0.548000, -0.836462,
		-0.171841, -0.823534, 0.540614,
		-0.985110, 0.146588, -0.089828,
		38.569462, 33.990772, 16.706995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876625, 33.197472, 16.610966>,  <39.259037, 33.888161, 16.769875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876625, 33.197472, 16.610966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689308, 33.510143, 16.446198>,  <38.576916, 33.697746, 16.347338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689308, 33.510143, 16.446198>,  <38.876625, 33.197472, 16.610966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689308, 33.510143, 16.446198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111378, -0.410255, -0.905144,
		-0.876524, -0.469754, 0.105059,
		-0.468295, 0.781679, -0.411918,
		38.548820, 33.744648, 16.322622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489449, 32.901535, 16.055151>,  <38.876625, 33.197472, 16.610966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489449, 32.901535, 16.055151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.492821, 33.292492, 15.970637>,  <38.494843, 33.527065, 15.919929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.492821, 33.292492, 15.970637>,  <38.489449, 32.901535, 16.055151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492821, 33.292492, 15.970637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060036, -0.210416, -0.975767,
		-0.998161, 0.020911, 0.056905,
		0.008431, 0.977388, -0.211285,
		38.495350, 33.585709, 15.907252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027187, 32.937035, 15.510466>,  <38.489449, 32.901535, 16.055151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027187, 32.937035, 15.510466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243202, 33.272980, 15.488580>,  <38.372810, 33.474548, 15.475449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243202, 33.272980, 15.488580>,  <38.027187, 32.937035, 15.510466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243202, 33.272980, 15.488580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186039, -0.182520, -0.965441,
		-0.820824, 0.511193, -0.254814,
		0.540035, 0.839862, -0.054715,
		38.405212, 33.524937, 15.472165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886013, 33.224140, 14.871159>,  <38.027187, 32.937035, 15.510466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886013, 33.224140, 14.871159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.235909, 33.387348, 14.975728>,  <38.445847, 33.485275, 15.038469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.235909, 33.387348, 14.975728>,  <37.886013, 33.224140, 14.871159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235909, 33.387348, 14.975728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407458, -0.327289, -0.852561,
		-0.262304, 0.852290, -0.452546,
		0.874743, 0.408024, 0.261423,
		38.498333, 33.509754, 15.054155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960754, 33.676071, 14.303096>,  <37.886013, 33.224140, 14.871159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960754, 33.676071, 14.303096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.326015, 33.648521, 14.463801>,  <38.545170, 33.631992, 14.560225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.326015, 33.648521, 14.463801>,  <37.960754, 33.676071, 14.303096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326015, 33.648521, 14.463801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365974, -0.295510, -0.882461,
		0.179502, 0.952854, -0.244639,
		0.913150, -0.068872, 0.401764,
		38.599960, 33.627861, 14.584331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411274, 34.034164, 13.862123>,  <37.960754, 33.676071, 14.303096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411274, 34.034164, 13.862123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.640331, 33.778000, 14.066852>,  <38.777763, 33.624302, 14.189689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.640331, 33.778000, 14.066852>,  <38.411274, 34.034164, 13.862123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640331, 33.778000, 14.066852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496785, -0.225566, -0.838048,
		0.652142, 0.734165, 0.188977,
		0.572639, -0.640408, 0.511823,
		38.812122, 33.585876, 14.220399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939335, 34.113075, 13.488977>,  <38.411274, 34.034164, 13.862123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939335, 34.113075, 13.488977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.991749, 33.777878, 13.700866>,  <39.023197, 33.576759, 13.827998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.991749, 33.777878, 13.700866>,  <38.939335, 34.113075, 13.488977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991749, 33.777878, 13.700866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530658, -0.392046, -0.751467,
		0.837395, 0.379572, 0.393312,
		0.131039, -0.837989, 0.529720,
		39.031059, 33.526482, 13.859782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546726, 33.924042, 13.190528>,  <38.939335, 34.113075, 13.488977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546726, 33.924042, 13.190528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.414257, 33.598988, 13.382337>,  <39.334774, 33.403954, 13.497421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.414257, 33.598988, 13.382337>,  <39.546726, 33.924042, 13.190528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414257, 33.598988, 13.382337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465325, -0.582762, -0.666229,
		0.820850, 0.002494, 0.571139,
		-0.331176, -0.812639, 0.479521,
		39.314903, 33.355194, 13.526193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087376, 33.447147, 13.257243>,  <39.546726, 33.924042, 13.190528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087376, 33.447147, 13.257243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.755219, 33.224525, 13.267814>,  <39.555923, 33.090954, 13.274156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.755219, 33.224525, 13.267814>,  <40.087376, 33.447147, 13.257243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755219, 33.224525, 13.267814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312073, -0.503861, -0.805440,
		0.461587, -0.660583, 0.592087,
		-0.830390, -0.556555, 0.026425,
		39.506100, 33.057560, 13.275742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.403952, 33.038166, 34.100063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.771166, 33.169048, 34.189636>,  <28.991495, 33.247578, 34.243382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.771166, 33.169048, 34.189636>,  <28.403952, 33.038166, 34.100063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771166, 33.169048, 34.189636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106337, -0.340906, 0.934064,
		0.381971, -0.881317, -0.278170,
		0.918036, 0.327206, 0.223933,
		29.046577, 33.267212, 34.256817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863321, 32.442654, 34.302940>,  <28.403952, 33.038166, 34.100063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863321, 32.442654, 34.302940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.027037, 32.761948, 34.479713>,  <29.125267, 32.953526, 34.585777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.027037, 32.761948, 34.479713>,  <28.863321, 32.442654, 34.302940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027037, 32.761948, 34.479713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212582, -0.387603, 0.896980,
		0.887294, -0.461072, 0.011048,
		0.409290, 0.798234, 0.441933,
		29.149824, 33.001419, 34.612293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341103, 32.256039, 34.806530>,  <28.863321, 32.442654, 34.302940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341103, 32.256039, 34.806530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254852, 32.629890, 34.919647>,  <29.203102, 32.854202, 34.987518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254852, 32.629890, 34.919647>,  <29.341103, 32.256039, 34.806530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254852, 32.629890, 34.919647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235035, -0.330771, 0.913974,
		0.947768, 0.130610, 0.290993,
		-0.215626, 0.934629, 0.282797,
		29.190165, 32.910278, 35.004486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683243, 32.321041, 35.487011>,  <29.341103, 32.256039, 34.806530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683243, 32.321041, 35.487011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416700, 32.617844, 35.457634>,  <29.256775, 32.795925, 35.440006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416700, 32.617844, 35.457634>,  <29.683243, 32.321041, 35.487011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416700, 32.617844, 35.457634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316832, -0.192601, 0.928721,
		0.674974, 0.642127, 0.363433,
		-0.666354, 0.742009, -0.073445,
		29.216795, 32.840446, 35.435600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793219, 32.831306, 36.086117>,  <29.683243, 32.321041, 35.487011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793219, 32.831306, 36.086117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.417177, 32.887768, 35.962002>,  <29.191553, 32.921646, 35.887531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.417177, 32.887768, 35.962002>,  <29.793219, 32.831306, 36.086117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417177, 32.887768, 35.962002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319425, -0.046900, 0.946450,
		0.119044, 0.988876, 0.089180,
		-0.940104, 0.141155, -0.310289,
		29.135145, 32.930115, 35.868916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595417, 33.216415, 36.537247>,  <29.793219, 32.831306, 36.086117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595417, 33.216415, 36.537247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.248373, 33.090698, 36.383118>,  <29.040148, 33.015266, 36.290642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.248373, 33.090698, 36.383118>,  <29.595417, 33.216415, 36.537247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248373, 33.090698, 36.383118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334624, -0.204153, 0.919972,
		-0.367807, 0.927114, 0.071954,
		-0.867609, -0.314294, -0.385324,
		28.988091, 32.996410, 36.267521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021982, 33.542336, 36.825539>,  <29.595417, 33.216415, 36.537247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021982, 33.542336, 36.825539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.862530, 33.207211, 36.676323>,  <28.766859, 33.006134, 36.586792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.862530, 33.207211, 36.676323>,  <29.021982, 33.542336, 36.825539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862530, 33.207211, 36.676323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369869, -0.225344, 0.901341,
		-0.839221, 0.497278, -0.220053,
		-0.398630, -0.837815, -0.373042,
		28.742941, 32.955868, 36.564411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417627, 33.572414, 37.083675>,  <29.021982, 33.542336, 36.825539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417627, 33.572414, 37.083675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.466282, 33.184296, 37.000031>,  <28.495474, 32.951424, 36.949844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.466282, 33.184296, 37.000031>,  <28.417627, 33.572414, 37.083675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466282, 33.184296, 37.000031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485759, -0.241912, 0.839950,
		-0.865588, -0.000593, -0.500757,
		0.121637, -0.970298, -0.209108,
		28.502773, 32.893208, 36.937298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728062, 33.237469, 37.336933>,  <28.417627, 33.572414, 37.083675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728062, 33.237469, 37.336933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.966400, 32.920525, 37.284565>,  <28.109404, 32.730358, 37.253143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.966400, 32.920525, 37.284565>,  <27.728062, 33.237469, 37.336933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966400, 32.920525, 37.284565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331316, -0.391024, 0.858680,
		-0.731572, -0.468265, -0.495510,
		0.595845, -0.792356, -0.130919,
		28.145153, 32.682819, 37.245289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326420, 32.702427, 37.489975>,  <27.728062, 33.237469, 37.336933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326420, 32.702427, 37.489975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.692354, 32.548817, 37.539928>,  <27.911915, 32.456650, 37.569901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.692354, 32.548817, 37.539928>,  <27.326420, 32.702427, 37.489975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692354, 32.548817, 37.539928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206385, -0.178817, 0.961993,
		-0.347101, -0.905840, -0.242846,
		0.914836, -0.384028, 0.124885,
		27.966805, 32.433609, 37.577393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234980, 32.091270, 37.811615>,  <27.326420, 32.702427, 37.489975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234980, 32.091270, 37.811615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.612949, 32.173626, 37.913383>,  <27.839731, 32.223038, 37.974445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.612949, 32.173626, 37.913383>,  <27.234980, 32.091270, 37.811615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612949, 32.173626, 37.913383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221482, -0.170081, 0.960218,
		0.240972, -0.963681, -0.115112,
		0.944923, 0.205890, 0.254423,
		27.896425, 32.235394, 37.989712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522078, 31.566912, 38.222855>,  <27.234980, 32.091270, 37.811615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522078, 31.566912, 38.222855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.698992, 31.912060, 38.320702>,  <27.805141, 32.119148, 38.379410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.698992, 31.912060, 38.320702>,  <27.522078, 31.566912, 38.222855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698992, 31.912060, 38.320702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164415, -0.190120, 0.967896,
		0.881675, -0.468306, 0.057781,
		0.442286, 0.862869, 0.244621,
		27.831678, 32.170921, 38.394089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069176, 31.460859, 38.763603>,  <27.522078, 31.566912, 38.222855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069176, 31.460859, 38.763603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.908009, 31.825825, 38.792324>,  <27.811308, 32.044804, 38.809555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.908009, 31.825825, 38.792324>,  <28.069176, 31.460859, 38.763603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908009, 31.825825, 38.792324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166022, -0.150010, 0.974645,
		0.900052, 0.380782, 0.211923,
		-0.402918, 0.912416, 0.071798,
		27.787134, 32.099548, 38.813862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127573, 30.939394, 39.201511>,  <28.069176, 31.460859, 38.763603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127573, 30.939394, 39.201511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.295633, 30.633808, 39.397400>,  <28.396469, 30.450457, 39.514935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.295633, 30.633808, 39.397400>,  <28.127573, 30.939394, 39.201511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295633, 30.633808, 39.397400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822986, 0.093423, -0.560327,
		0.382318, 0.638459, 0.667984,
		0.420151, -0.763965, 0.489725,
		28.421679, 30.404619, 39.544319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839067, 30.203199, 38.874714>,  <28.127573, 30.939394, 39.201511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839067, 30.203199, 38.874714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.982677, 29.832180, 38.916195>,  <28.068844, 29.609568, 38.941086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.982677, 29.832180, 38.916195>,  <27.839067, 30.203199, 38.874714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982677, 29.832180, 38.916195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087058, -0.077348, -0.993196,
		0.929258, 0.365612, 0.052980,
		0.359026, -0.927548, 0.103706,
		28.090385, 29.553915, 38.947308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404442, 30.209930, 38.512833>,  <27.839067, 30.203199, 38.874714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404442, 30.209930, 38.512833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.311945, 29.821087, 38.528481>,  <28.256447, 29.587780, 38.537868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.311945, 29.821087, 38.528481>,  <28.404442, 30.209930, 38.512833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311945, 29.821087, 38.528481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170096, -0.079987, -0.982176,
		0.957911, -0.220468, 0.183849,
		-0.231244, -0.972109, 0.039119,
		28.242571, 29.529453, 38.540215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882015, 29.860996, 38.289871>,  <28.404442, 30.209930, 38.512833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882015, 29.860996, 38.289871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.565310, 29.623844, 38.231087>,  <28.375286, 29.481552, 38.195816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.565310, 29.623844, 38.231087>,  <28.882015, 29.860996, 38.289871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565310, 29.623844, 38.231087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182805, -0.000431, -0.983149,
		0.582829, -0.805289, 0.108724,
		-0.791766, -0.592883, -0.146960,
		28.327780, 29.445980, 38.187000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994692, 29.400274, 37.766079>,  <28.882015, 29.860996, 38.289871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994692, 29.400274, 37.766079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.594723, 29.396404, 37.762859>,  <28.354742, 29.394081, 37.760929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.594723, 29.396404, 37.762859>,  <28.994692, 29.400274, 37.766079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594723, 29.396404, 37.762859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008005, 0.004262, -0.999959,
		0.009765, -0.999944, -0.004184,
		-0.999920, -0.009732, -0.008046,
		28.294746, 29.393501, 37.760445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819010, 28.824245, 37.427818>,  <28.994692, 29.400274, 37.766079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819010, 28.824245, 37.427818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.501554, 29.067383, 37.417469>,  <28.311081, 29.213264, 37.411259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.501554, 29.067383, 37.417469>,  <28.819010, 28.824245, 37.427818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501554, 29.067383, 37.417469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063090, -0.124525, -0.990209,
		-0.605113, -0.784232, 0.137176,
		-0.793635, 0.607842, -0.025875,
		28.263464, 29.249735, 37.409706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605019, 28.601101, 36.742413>,  <28.819010, 28.824245, 37.427818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605019, 28.601101, 36.742413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.363029, 28.911217, 36.815010>,  <28.217836, 29.097286, 36.858566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.363029, 28.911217, 36.815010>,  <28.605019, 28.601101, 36.742413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363029, 28.911217, 36.815010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073435, 0.172634, -0.982245,
		-0.792853, -0.607558, -0.047506,
		-0.604972, 0.775287, 0.181489,
		28.181538, 29.143803, 36.869457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024532, 28.539085, 36.395889>,  <28.605019, 28.601101, 36.742413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024532, 28.539085, 36.395889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.993372, 28.932003, 36.464039>,  <27.974676, 29.167753, 36.504929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.993372, 28.932003, 36.464039>,  <28.024532, 28.539085, 36.395889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993372, 28.932003, 36.464039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277747, 0.142742, -0.949990,
		-0.957491, -0.121325, 0.261711,
		-0.077900, 0.982296, 0.170372,
		27.970001, 29.226692, 36.515152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487610, 28.748299, 35.954144>,  <28.024532, 28.539085, 36.395889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487610, 28.748299, 35.954144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.684223, 29.086197, 36.038807>,  <27.802191, 29.288937, 36.089607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.684223, 29.086197, 36.038807>,  <27.487610, 28.748299, 35.954144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684223, 29.086197, 36.038807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033089, 0.260989, -0.964774,
		-0.870230, 0.467215, 0.156237,
		0.491533, 0.844746, 0.211661,
		27.831682, 29.339621, 36.102306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206768, 29.266844, 35.489597>,  <27.487610, 28.748299, 35.954144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206768, 29.266844, 35.489597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.547710, 29.433357, 35.616215>,  <27.752275, 29.533266, 35.692184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.547710, 29.433357, 35.616215>,  <27.206768, 29.266844, 35.489597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547710, 29.433357, 35.616215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186164, 0.324108, -0.927522,
		-0.488707, 0.849506, 0.198757,
		0.852355, 0.416285, 0.316541,
		27.803417, 29.558243, 35.711178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213564, 30.060566, 35.310680>,  <27.206768, 29.266844, 35.489597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213564, 30.060566, 35.310680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.589285, 29.924931, 35.331585>,  <27.814718, 29.843550, 35.344128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.589285, 29.924931, 35.331585>,  <27.213564, 30.060566, 35.310680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589285, 29.924931, 35.331585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157779, 0.291647, -0.943423,
		0.304661, 0.894405, 0.327446,
		0.939302, -0.339088, 0.052265,
		27.871075, 29.823204, 35.347263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620323, 30.564667, 35.061241>,  <27.213564, 30.060566, 35.310680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620323, 30.564667, 35.061241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.853712, 30.241173, 35.031555>,  <27.993746, 30.047075, 35.013744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.853712, 30.241173, 35.031555>,  <27.620323, 30.564667, 35.061241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853712, 30.241173, 35.031555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190026, 0.224800, -0.955696,
		0.789590, 0.543517, 0.284845,
		0.583470, -0.808736, -0.074217,
		28.028753, 29.998552, 35.009289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057201, 30.647446, 34.400303>,  <27.620323, 30.564667, 35.061241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057201, 30.647446, 34.400303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.116901, 30.263107, 34.493687>,  <28.152721, 30.032505, 34.549717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.116901, 30.263107, 34.493687>,  <28.057201, 30.647446, 34.400303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116901, 30.263107, 34.493687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214817, -0.198957, -0.956174,
		0.965183, 0.192860, 0.176711,
		0.149250, -0.960844, 0.233460,
		28.161676, 29.974854, 34.563725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747047, 30.388376, 34.205536>,  <28.057201, 30.647446, 34.400303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747047, 30.388376, 34.205536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508734, 30.067333, 34.193806>,  <28.365746, 29.874706, 34.186768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508734, 30.067333, 34.193806>,  <28.747047, 30.388376, 34.205536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508734, 30.067333, 34.193806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032640, 0.012286, -0.999392,
		0.802481, -0.596379, 0.018877,
		-0.595785, -0.802609, -0.029325,
		28.329998, 29.826551, 34.185009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148167, 30.040430, 33.764828>,  <28.747047, 30.388376, 34.205536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148167, 30.040430, 33.764828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.802412, 29.840057, 33.747387>,  <28.594959, 29.719833, 33.736923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.802412, 29.840057, 33.747387>,  <29.148167, 30.040430, 33.764828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802412, 29.840057, 33.747387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061243, -0.018817, -0.997945,
		0.499081, -0.865283, 0.046943,
		-0.864388, -0.500931, -0.043601,
		28.543095, 29.689777, 33.734306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775593, 29.630461, 33.864025>,  <29.148167, 30.040430, 33.764828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775593, 29.630461, 33.864025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.168947, 29.696270, 33.894722>,  <30.404959, 29.735756, 33.913139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.168947, 29.696270, 33.894722>,  <29.775593, 29.630461, 33.864025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168947, 29.696270, 33.894722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055408, -0.130529, 0.989895,
		0.172876, -0.977699, -0.119245,
		0.983384, 0.164522, 0.076738,
		30.463963, 29.745626, 33.917744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000587, 29.073410, 34.355076>,  <29.775593, 29.630461, 33.864025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000587, 29.073410, 34.355076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.266962, 29.371784, 34.350803>,  <30.426786, 29.550808, 34.348240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.266962, 29.371784, 34.350803>,  <30.000587, 29.073410, 34.355076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266962, 29.371784, 34.350803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055959, -0.035674, 0.997796,
		0.743909, -0.665064, -0.065498,
		0.665934, 0.745934, -0.010679,
		30.466742, 29.595564, 34.347599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549284, 28.955242, 34.726830>,  <30.000587, 29.073410, 34.355076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549284, 28.955242, 34.726830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621660, 29.348629, 34.729599>,  <30.665087, 29.584661, 34.731262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621660, 29.348629, 34.729599>,  <30.549284, 28.955242, 34.726830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621660, 29.348629, 34.729599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186863, -0.041292, 0.981518,
		0.965579, -0.176303, -0.191245,
		0.180942, 0.983470, 0.006927,
		30.675943, 29.643669, 34.731678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004705, 28.901201, 35.290939>,  <30.549284, 28.955242, 34.726830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004705, 28.901201, 35.290939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.886009, 29.278866, 35.233662>,  <30.814791, 29.505465, 35.199295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.886009, 29.278866, 35.233662>,  <31.004705, 28.901201, 35.290939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886009, 29.278866, 35.233662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024778, 0.157510, 0.987207,
		0.954636, 0.289398, -0.070134,
		-0.296742, 0.944161, -0.143194,
		30.796986, 29.562115, 35.190704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637684, 29.207546, 35.569080>,  <31.004705, 28.901201, 35.290939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637684, 29.207546, 35.569080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317991, 29.447262, 35.587315>,  <31.126175, 29.591091, 35.598255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.317991, 29.447262, 35.587315>,  <31.637684, 29.207546, 35.569080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317991, 29.447262, 35.587315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174473, 0.158769, 0.971777,
		0.575141, 0.784629, -0.231454,
		-0.799232, 0.599291, 0.045582,
		31.078222, 29.627048, 35.600990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842958, 29.784863, 35.901115>,  <31.637684, 29.207546, 35.569080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842958, 29.784863, 35.901115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.445591, 29.776672, 35.946194>,  <31.207170, 29.771757, 35.973240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.445591, 29.776672, 35.946194>,  <31.842958, 29.784863, 35.901115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445591, 29.776672, 35.946194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108269, 0.153316, 0.982228,
		-0.037391, 0.987965, -0.150090,
		-0.993418, -0.020477, 0.112698,
		31.147566, 29.770529, 35.980003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688089, 30.393328, 36.369831>,  <31.842958, 29.784863, 35.901115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688089, 30.393328, 36.369831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.397478, 30.118557, 36.376675>,  <31.223112, 29.953695, 36.380783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.397478, 30.118557, 36.376675>,  <31.688089, 30.393328, 36.369831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397478, 30.118557, 36.376675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203544, -0.191357, 0.960183,
		-0.656300, 0.701082, 0.278845,
		-0.726526, -0.686926, 0.017114,
		31.179520, 29.912479, 36.381809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916779, 30.959251, 36.594833>,  <31.688089, 30.393328, 36.369831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916779, 30.959251, 36.594833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315842, 30.984459, 36.584171>,  <32.555279, 30.999584, 36.577774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.315842, 30.984459, 36.584171>,  <31.916779, 30.959251, 36.594833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315842, 30.984459, 36.584171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026573, -0.002181, -0.999645,
		-0.063056, 0.998010, -0.000502,
		0.997656, 0.063020, -0.026658,
		32.615139, 31.003365, 36.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125446, 31.454315, 36.083889>,  <31.916779, 30.959251, 36.594833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125446, 31.454315, 36.083889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453773, 31.230045, 36.127537>,  <32.650768, 31.095484, 36.153725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.453773, 31.230045, 36.127537>,  <32.125446, 31.454315, 36.083889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453773, 31.230045, 36.127537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141269, 0.014159, -0.989870,
		0.553449, 0.827916, 0.090827,
		0.820815, -0.560674, 0.109123,
		32.700020, 31.061844, 36.160275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635590, 31.728100, 35.594112>,  <32.125446, 31.454315, 36.083889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635590, 31.728100, 35.594112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795906, 31.371601, 35.679005>,  <32.892097, 31.157701, 35.729939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795906, 31.371601, 35.679005>,  <32.635590, 31.728100, 35.594112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795906, 31.371601, 35.679005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359326, -0.060173, -0.931270,
		0.842764, 0.449506, 0.296132,
		0.400792, -0.891248, 0.212231,
		32.916145, 31.104227, 35.742676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277626, 31.829857, 35.431526>,  <32.635590, 31.728100, 35.594112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277626, 31.829857, 35.431526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197891, 31.438713, 35.406048>,  <33.150051, 31.204027, 35.390759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197891, 31.438713, 35.406048>,  <33.277626, 31.829857, 35.431526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197891, 31.438713, 35.406048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421255, -0.026818, -0.906546,
		0.884765, -0.207540, 0.417274,
		-0.199335, -0.977859, -0.063699,
		33.138092, 31.145355, 35.386936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863438, 31.500513, 35.257553>,  <33.277626, 31.829857, 35.431526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863438, 31.500513, 35.257553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.569450, 31.256920, 35.138245>,  <33.393059, 31.110764, 35.066662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.569450, 31.256920, 35.138245>,  <33.863438, 31.500513, 35.257553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569450, 31.256920, 35.138245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357052, 0.026395, -0.933712,
		0.576488, -0.792744, 0.198039,
		-0.734967, -0.608983, -0.298267,
		33.348961, 31.074224, 35.048763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156704, 31.012812, 34.806839>,  <33.863438, 31.500513, 35.257553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156704, 31.012812, 34.806839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766285, 30.980518, 34.726028>,  <33.532032, 30.961142, 34.677544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766285, 30.980518, 34.726028>,  <34.156704, 31.012812, 34.806839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766285, 30.980518, 34.726028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215092, -0.218674, -0.951797,
		0.032666, -0.972452, 0.230801,
		-0.976047, -0.080735, -0.202024,
		33.473473, 30.956299, 34.665421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180599, 30.355450, 34.501362>,  <34.156704, 31.012812, 34.806839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180599, 30.355450, 34.501362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865395, 30.558899, 34.362598>,  <33.676273, 30.680969, 34.279343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865395, 30.558899, 34.362598>,  <34.180599, 30.355450, 34.501362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865395, 30.558899, 34.362598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187120, -0.338950, -0.922008,
		-0.586541, -0.791463, 0.171921,
		-0.788008, 0.508625, -0.346907,
		33.628994, 30.711487, 34.258526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.271650, 34.223339, 39.544529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012953, 34.050545, 39.293098>,  <29.857735, 33.946869, 39.142239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.012953, 34.050545, 39.293098>,  <30.271650, 34.223339, 39.544529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012953, 34.050545, 39.293098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578097, 0.259946, -0.773455,
		0.497521, -0.863604, 0.081614,
		-0.646744, -0.431991, -0.628575,
		29.818930, 33.920948, 39.104527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697550, 33.811329, 39.177219>,  <30.271650, 34.223339, 39.544529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697550, 33.811329, 39.177219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.364738, 33.817791, 38.955421>,  <30.165052, 33.821671, 38.822342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.364738, 33.817791, 38.955421>,  <30.697550, 33.811329, 39.177219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364738, 33.817791, 38.955421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542252, 0.234533, -0.806819,
		0.117011, -0.971974, -0.203900,
		-0.832028, 0.016158, -0.554498,
		30.115129, 33.822639, 38.789074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813599, 33.463028, 38.483650>,  <30.697550, 33.811329, 39.177219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813599, 33.463028, 38.483650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.497885, 33.701180, 38.423576>,  <30.308456, 33.844070, 38.387531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.497885, 33.701180, 38.423576>,  <30.813599, 33.463028, 38.483650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497885, 33.701180, 38.423576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459800, 0.410974, -0.787200,
		-0.406961, -0.690379, -0.598131,
		-0.789282, 0.595380, -0.150186,
		30.261101, 33.879795, 38.378521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617050, 33.368008, 37.729820>,  <30.813599, 33.463028, 38.483650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617050, 33.368008, 37.729820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.455954, 33.715588, 37.844864>,  <30.359297, 33.924137, 37.913891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.455954, 33.715588, 37.844864>,  <30.617050, 33.368008, 37.729820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455954, 33.715588, 37.844864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387419, 0.446515, -0.806555,
		-0.829281, -0.213407, -0.516479,
		-0.402740, 0.868955, 0.287608,
		30.335131, 33.976273, 37.931145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505899, 33.641922, 37.055237>,  <30.617050, 33.368008, 37.729820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505899, 33.641922, 37.055237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.454729, 33.938274, 37.318974>,  <30.424026, 34.116085, 37.477215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.454729, 33.938274, 37.318974>,  <30.505899, 33.641922, 37.055237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454729, 33.938274, 37.318974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194508, 0.670634, -0.715832,
		-0.972523, 0.036674, -0.229899,
		-0.127925, 0.740881, 0.659341,
		30.416351, 34.160538, 37.516777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047785, 34.080158, 36.824650>,  <30.505899, 33.641922, 37.055237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047785, 34.080158, 36.824650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.266819, 34.315529, 37.062611>,  <30.398239, 34.456749, 37.205387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.266819, 34.315529, 37.062611>,  <30.047785, 34.080158, 36.824650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266819, 34.315529, 37.062611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117191, 0.650030, -0.750818,
		-0.828503, 0.480854, 0.286989,
		0.547585, 0.588422, 0.594903,
		30.431095, 34.492054, 37.241081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817055, 34.696461, 36.667072>,  <30.047785, 34.080158, 36.824650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817055, 34.696461, 36.667072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.180454, 34.765690, 36.819218>,  <30.398495, 34.807228, 36.910503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.180454, 34.765690, 36.819218>,  <29.817055, 34.696461, 36.667072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180454, 34.765690, 36.819218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175728, 0.667593, -0.723491,
		-0.379143, 0.724132, 0.576094,
		0.908499, 0.173071, 0.380363,
		30.453005, 34.817612, 36.933327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893785, 35.361523, 36.615971>,  <29.817055, 34.696461, 36.667072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893785, 35.361523, 36.615971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.267664, 35.225559, 36.657551>,  <30.491991, 35.143982, 36.682499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.267664, 35.225559, 36.657551>,  <29.893785, 35.361523, 36.615971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267664, 35.225559, 36.657551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269793, 0.488036, -0.830080,
		0.231424, 0.803916, 0.547871,
		0.934695, -0.339912, 0.103948,
		30.548073, 35.123585, 36.688736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294117, 35.987293, 36.728798>,  <29.893785, 35.361523, 36.615971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294117, 35.987293, 36.728798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.556906, 35.718307, 36.592461>,  <30.714579, 35.556915, 36.510658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.556906, 35.718307, 36.592461>,  <30.294117, 35.987293, 36.728798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556906, 35.718307, 36.592461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270847, 0.632439, -0.725715,
		0.703584, 0.384457, 0.597630,
		0.656971, -0.672468, -0.340845,
		30.753998, 35.516567, 36.490208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875946, 36.395897, 36.564613>,  <30.294117, 35.987293, 36.728798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875946, 36.395897, 36.564613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943602, 36.058773, 36.360237>,  <30.984196, 35.856499, 36.237610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.943602, 36.058773, 36.360237>,  <30.875946, 36.395897, 36.564613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943602, 36.058773, 36.360237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245771, 0.538103, -0.806251,
		0.954457, 0.010794, 0.298153,
		0.169140, -0.842810, -0.510943,
		30.994343, 35.805931, 36.206955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455439, 36.549240, 36.188217>,  <30.875946, 36.395897, 36.564613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455439, 36.549240, 36.188217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.310099, 36.243961, 35.974483>,  <31.222895, 36.060795, 35.846245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.310099, 36.243961, 35.974483>,  <31.455439, 36.549240, 36.188217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310099, 36.243961, 35.974483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438184, 0.366143, -0.820935,
		0.822175, -0.532423, 0.201381,
		-0.363351, -0.763194, -0.534332,
		31.201094, 36.015003, 35.814182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971392, 36.415867, 35.666019>,  <31.455439, 36.549240, 36.188217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971392, 36.415867, 35.666019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.659113, 36.204449, 35.532658>,  <31.471746, 36.077599, 35.452641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.659113, 36.204449, 35.532658>,  <31.971392, 36.415867, 35.666019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659113, 36.204449, 35.532658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103270, 0.417062, -0.902992,
		0.616318, -0.739393, -0.271016,
		-0.780697, -0.528542, -0.333400,
		31.424904, 36.045887, 35.432636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467236, 35.753395, 35.444103>,  <31.971392, 36.415867, 35.666019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467236, 35.753395, 35.444103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761570, 35.485554, 35.403755>,  <32.938171, 35.324848, 35.379547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761570, 35.485554, 35.403755>,  <32.467236, 35.753395, 35.444103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761570, 35.485554, 35.403755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042495, -0.103005, 0.993773,
		-0.675823, -0.735542, -0.047341,
		0.735838, -0.669602, -0.100870,
		32.982323, 35.284672, 35.373493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274761, 35.069599, 35.777191>,  <32.467236, 35.753395, 35.444103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274761, 35.069599, 35.777191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.674393, 35.084938, 35.769524>,  <32.914173, 35.094143, 35.764923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.674393, 35.084938, 35.769524>,  <32.274761, 35.069599, 35.777191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674393, 35.084938, 35.769524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026485, -0.200576, 0.979320,
		0.033710, -0.978927, -0.201407,
		0.999080, 0.038347, -0.019165,
		32.974117, 35.096443, 35.763775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326920, 34.431236, 36.166405>,  <32.274761, 35.069599, 35.777191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326920, 34.431236, 36.166405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673546, 34.629753, 36.187412>,  <32.881523, 34.748863, 36.200016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673546, 34.629753, 36.187412>,  <32.326920, 34.431236, 36.166405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673546, 34.629753, 36.187412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161131, -0.377835, 0.911744,
		0.472334, -0.781624, -0.407387,
		0.866567, 0.496290, 0.052521,
		32.933517, 34.778641, 36.203167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817272, 33.947372, 36.458237>,  <32.326920, 34.431236, 36.166405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817272, 33.947372, 36.458237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.988926, 34.305752, 36.504040>,  <33.091919, 34.520779, 36.531521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.988926, 34.305752, 36.504040>,  <32.817272, 33.947372, 36.458237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988926, 34.305752, 36.504040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198055, -0.217029, 0.955862,
		0.881259, -0.387516, -0.270582,
		0.429136, 0.895952, 0.114509,
		33.117668, 34.574539, 36.538391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507038, 33.888901, 36.704327>,  <32.817272, 33.947372, 36.458237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507038, 33.888901, 36.704327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.384377, 34.249847, 36.825451>,  <33.310780, 34.466415, 36.898125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.384377, 34.249847, 36.825451>,  <33.507038, 33.888901, 36.704327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384377, 34.249847, 36.825451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133195, -0.274323, 0.952369,
		0.942457, 0.332376, -0.036071,
		-0.306650, 0.902371, 0.302808,
		33.292381, 34.520557, 36.916294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958778, 34.036694, 37.245937>,  <33.507038, 33.888901, 36.704327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958778, 34.036694, 37.245937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.641762, 34.275814, 37.294132>,  <33.451553, 34.419285, 37.323048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.641762, 34.275814, 37.294132>,  <33.958778, 34.036694, 37.245937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641762, 34.275814, 37.294132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071224, -0.105488, 0.991867,
		0.605644, 0.794677, 0.041026,
		-0.792542, 0.597796, 0.120488,
		33.403999, 34.455154, 37.330280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127716, 34.465252, 37.726124>,  <33.958778, 34.036694, 37.245937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127716, 34.465252, 37.726124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.728981, 34.496590, 37.720745>,  <33.489742, 34.515392, 37.717518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.728981, 34.496590, 37.720745>,  <34.127716, 34.465252, 37.726124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728981, 34.496590, 37.720745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027808, -0.185197, 0.982308,
		0.074467, 0.979574, 0.186789,
		-0.996836, 0.078344, -0.013449,
		33.429932, 34.520092, 37.716709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942604, 35.010296, 38.292683>,  <34.127716, 34.465252, 37.726124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942604, 35.010296, 38.292683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624798, 34.778851, 38.218983>,  <33.434113, 34.639984, 38.174763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624798, 34.778851, 38.218983>,  <33.942604, 35.010296, 38.292683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624798, 34.778851, 38.218983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009611, -0.315363, 0.948922,
		-0.607164, 0.752166, 0.256123,
		-0.794518, -0.578613, -0.184248,
		33.386444, 34.605267, 38.163708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377579, 35.199436, 38.791412>,  <33.942604, 35.010296, 38.292683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377579, 35.199436, 38.791412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303761, 34.834740, 38.644627>,  <33.259472, 34.615921, 38.556553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303761, 34.834740, 38.644627>,  <33.377579, 35.199436, 38.791412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303761, 34.834740, 38.644627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035813, -0.366894, 0.929574,
		-0.982172, 0.184689, 0.035056,
		-0.184543, -0.911745, -0.366967,
		33.248398, 34.561214, 38.534538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879883, 34.914856, 39.279350>,  <33.377579, 35.199436, 38.791412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879883, 34.914856, 39.279350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.012417, 34.586205, 39.093815>,  <33.091938, 34.389015, 38.982494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.012417, 34.586205, 39.093815>,  <32.879883, 34.914856, 39.279350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012417, 34.586205, 39.093815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200131, -0.419224, 0.885550,
		-0.922045, -0.386239, 0.025532,
		0.331330, -0.821627, -0.463842,
		33.111816, 34.339718, 38.954662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411346, 34.336361, 39.520977>,  <32.879883, 34.914856, 39.279350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411346, 34.336361, 39.520977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.775436, 34.214901, 39.408340>,  <32.993889, 34.142025, 39.340759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.775436, 34.214901, 39.408340>,  <32.411346, 34.336361, 39.520977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775436, 34.214901, 39.408340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120069, -0.457252, 0.881195,
		-0.396335, -0.835892, -0.379741,
		0.910221, -0.303653, -0.281590,
		33.048504, 34.123806, 39.323864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416340, 33.599552, 39.688328>,  <32.411346, 34.336361, 39.520977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416340, 33.599552, 39.688328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804867, 33.686539, 39.649857>,  <33.037983, 33.738731, 39.626774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.804867, 33.686539, 39.649857>,  <32.416340, 33.599552, 39.688328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804867, 33.686539, 39.649857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209825, -0.593561, 0.776955,
		0.111873, -0.774851, -0.622166,
		0.971318, 0.217466, -0.096179,
		33.096264, 33.751778, 39.621002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771866, 33.028843, 39.994526>,  <32.416340, 33.599552, 39.688328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771866, 33.028843, 39.994526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011383, 33.347626, 39.962757>,  <33.155094, 33.538895, 39.943695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.011383, 33.347626, 39.962757>,  <32.771866, 33.028843, 39.994526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011383, 33.347626, 39.962757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279282, -0.114838, 0.953317,
		0.750632, -0.593021, -0.291340,
		0.598794, 0.796956, -0.079419,
		33.191021, 33.586712, 39.938931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452110, 32.800476, 40.027729>,  <32.771866, 33.028843, 39.994526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452110, 32.800476, 40.027729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423290, 33.172848, 40.170933>,  <33.405998, 33.396271, 40.256855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423290, 33.172848, 40.170933>,  <33.452110, 32.800476, 40.027729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423290, 33.172848, 40.170933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140891, -0.345848, 0.927652,
		0.987400, 0.117274, -0.106243,
		-0.072046, 0.930933, 0.358014,
		33.401676, 33.452129, 40.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554874, 32.545109, 39.189178>,  <33.452110, 32.800476, 40.027729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554874, 32.545109, 39.189178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.456879, 32.166954, 39.275185>,  <33.398083, 31.940062, 39.326790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.456879, 32.166954, 39.275185>,  <33.554874, 32.545109, 39.189178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456879, 32.166954, 39.275185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297744, -0.137693, -0.944663,
		0.922676, -0.295448, -0.247750,
		-0.244986, -0.945384, 0.215014,
		33.383385, 31.883339, 39.339687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994595, 32.220978, 38.766369>,  <33.554874, 32.545109, 39.189178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994595, 32.220978, 38.766369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.680954, 31.995201, 38.869583>,  <33.492767, 31.859734, 38.931511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.680954, 31.995201, 38.869583>,  <33.994595, 32.220978, 38.766369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680954, 31.995201, 38.869583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119019, -0.271287, -0.955112,
		0.609108, -0.779619, 0.145538,
		-0.784106, -0.564445, 0.258032,
		33.445721, 31.825869, 38.946991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076767, 31.640600, 38.329792>,  <33.994595, 32.220978, 38.766369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076767, 31.640600, 38.329792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708912, 31.566860, 38.468513>,  <33.488197, 31.522615, 38.551746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708912, 31.566860, 38.468513>,  <34.076767, 31.640600, 38.329792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708912, 31.566860, 38.468513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254356, -0.393276, -0.883537,
		0.299272, -0.900749, 0.314782,
		-0.919641, -0.184351, 0.346807,
		33.433018, 31.511555, 38.572556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878761, 30.922613, 38.104671>,  <34.076767, 31.640600, 38.329792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878761, 30.922613, 38.104671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.517403, 31.069229, 38.193684>,  <33.300587, 31.157198, 38.247089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.517403, 31.069229, 38.193684>,  <33.878761, 30.922613, 38.104671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517403, 31.069229, 38.193684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359453, -0.364383, -0.859080,
		-0.233802, -0.856081, 0.460937,
		-0.903399, 0.366539, 0.222527,
		33.246384, 31.179192, 38.260441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343937, 30.401213, 38.110794>,  <33.878761, 30.922613, 38.104671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343937, 30.401213, 38.110794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219051, 30.764309, 37.998703>,  <33.144119, 30.982166, 37.931450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.219051, 30.764309, 37.998703>,  <33.343937, 30.401213, 38.110794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219051, 30.764309, 37.998703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333643, -0.380953, -0.862298,
		-0.889498, -0.175721, 0.421799,
		-0.312210, 0.907743, -0.280229,
		33.125389, 31.036633, 37.914635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769630, 30.252708, 37.709301>,  <33.343937, 30.401213, 38.110794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769630, 30.252708, 37.709301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.846016, 30.626484, 37.589062>,  <32.891850, 30.850750, 37.516918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.846016, 30.626484, 37.589062>,  <32.769630, 30.252708, 37.709301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846016, 30.626484, 37.589062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230439, -0.254994, -0.939082,
		-0.954164, 0.248601, 0.166635,
		0.190966, 0.934438, -0.300594,
		32.903305, 30.906815, 37.498882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160145, 30.463791, 37.159420>,  <32.769630, 30.252708, 37.709301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160145, 30.463791, 37.159420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.450912, 30.730717, 37.094574>,  <32.625374, 30.890873, 37.055668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.450912, 30.730717, 37.094574>,  <32.160145, 30.463791, 37.159420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450912, 30.730717, 37.094574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116348, -0.112978, -0.986762,
		-0.676795, 0.736158, -0.004485,
		0.726919, 0.667314, -0.162114,
		32.668987, 30.930910, 37.045940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382391, 30.448940, 37.161587>,  <32.160145, 30.463791, 37.159420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382391, 30.448940, 37.161587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.215656, 30.119873, 37.006943>,  <31.115616, 29.922432, 36.914158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.215656, 30.119873, 37.006943>,  <31.382391, 30.448940, 37.161587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215656, 30.119873, 37.006943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069332, -0.395304, 0.915930,
		-0.906333, 0.408598, 0.107741,
		-0.416837, -0.822668, -0.386606,
		31.090605, 29.873074, 36.890961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823578, 30.399050, 37.455891>,  <31.382391, 30.448940, 37.161587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823578, 30.399050, 37.455891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.885565, 30.031097, 37.311779>,  <30.922758, 29.810326, 37.225311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.885565, 30.031097, 37.311779>,  <30.823578, 30.399050, 37.455891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885565, 30.031097, 37.311779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150253, -0.382388, 0.911703,
		-0.976426, -0.087152, -0.197474,
		0.154969, -0.919882, -0.360279,
		30.932055, 29.755133, 37.203693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192728, 29.968966, 37.513947>,  <30.823578, 30.399050, 37.455891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192728, 29.968966, 37.513947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.505213, 29.719624, 37.500473>,  <30.692703, 29.570019, 37.492390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.505213, 29.719624, 37.500473>,  <30.192728, 29.968966, 37.513947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505213, 29.719624, 37.500473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283131, -0.401887, 0.870818,
		-0.556367, -0.670756, -0.490450,
		0.781212, -0.623356, -0.033685,
		30.739576, 29.532618, 37.490368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903687, 29.361115, 37.736385>,  <30.192728, 29.968966, 37.513947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903687, 29.361115, 37.736385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.296499, 29.310589, 37.792465>,  <30.532187, 29.280273, 37.826115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.296499, 29.310589, 37.792465>,  <29.903687, 29.361115, 37.736385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296499, 29.310589, 37.792465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176852, -0.356776, 0.917297,
		-0.065846, -0.925611, -0.372704,
		0.982032, -0.126314, 0.140203,
		30.591108, 29.272694, 37.834526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927605, 28.847244, 38.256119>,  <29.903687, 29.361115, 37.736385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927605, 28.847244, 38.256119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.300018, 28.988811, 38.291718>,  <30.523466, 29.073751, 38.313076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.300018, 28.988811, 38.291718>,  <29.927605, 28.847244, 38.256119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300018, 28.988811, 38.291718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013061, -0.276040, 0.961057,
		0.364704, -0.893613, -0.261625,
		0.931032, 0.353918, 0.089002,
		30.579329, 29.094988, 38.318417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344746, 28.254250, 38.470886>,  <29.927605, 28.847244, 38.256119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344746, 28.254250, 38.470886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.517242, 28.600113, 38.573956>,  <30.620741, 28.807631, 38.635796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.517242, 28.600113, 38.573956>,  <30.344746, 28.254250, 38.470886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517242, 28.600113, 38.573956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073751, -0.318420, 0.945076,
		0.899217, -0.388552, -0.201085,
		0.431241, 0.864659, 0.257673,
		30.646614, 28.859510, 38.651257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819534, 28.037012, 39.002518>,  <30.344746, 28.254250, 38.470886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819534, 28.037012, 39.002518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.780783, 28.432606, 39.047287>,  <30.757532, 28.669962, 39.074146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.780783, 28.432606, 39.047287>,  <30.819534, 28.037012, 39.002518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780783, 28.432606, 39.047287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133702, -0.124360, 0.983188,
		0.986275, 0.080286, 0.144277,
		-0.096879, 0.988984, 0.111919,
		30.751719, 28.729301, 39.080864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241222, 28.198349, 39.598610>,  <30.819534, 28.037012, 39.002518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241222, 28.198349, 39.598610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.996584, 28.511528, 39.553108>,  <30.849800, 28.699436, 39.525806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.996584, 28.511528, 39.553108>,  <31.241222, 28.198349, 39.598610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996584, 28.511528, 39.553108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259603, -0.062772, 0.963673,
		0.747366, 0.618911, 0.241648,
		-0.611597, 0.782949, -0.113757,
		30.813105, 28.746412, 39.518982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478220, 28.723488, 39.987789>,  <31.241222, 28.198349, 39.598610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478220, 28.723488, 39.987789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083498, 28.713478, 39.923801>,  <30.846664, 28.707472, 39.885410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.083498, 28.713478, 39.923801>,  <31.478220, 28.723488, 39.987789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083498, 28.713478, 39.923801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161049, 0.049600, 0.985699,
		-0.016731, 0.998456, -0.052975,
		-0.986805, -0.025024, -0.159970,
		30.787457, 28.705971, 39.875809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.104994, 33.425377, 24.284563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744173, 33.419270, 24.457104>,  <30.527679, 33.415607, 24.560629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744173, 33.419270, 24.457104>,  <31.104994, 33.425377, 24.284563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744173, 33.419270, 24.457104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410571, -0.338654, 0.846608,
		0.133155, 0.940787, 0.311752,
		-0.902054, -0.015266, 0.431353,
		30.473557, 33.414688, 24.586510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155901, 33.680481, 24.967384>,  <31.104994, 33.425377, 24.284563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155901, 33.680481, 24.967384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807777, 33.483570, 24.961334>,  <30.598904, 33.365425, 24.957705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807777, 33.483570, 24.961334>,  <31.155901, 33.680481, 24.967384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807777, 33.483570, 24.961334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243425, -0.456648, 0.855697,
		-0.428148, 0.741037, 0.517256,
		-0.870307, -0.492278, -0.015126,
		30.546686, 33.335888, 24.956797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746449, 33.735619, 25.710077>,  <31.155901, 33.680481, 24.967384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746449, 33.735619, 25.710077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617010, 33.408951, 25.518940>,  <30.539347, 33.212948, 25.404259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617010, 33.408951, 25.518940>,  <30.746449, 33.735619, 25.710077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617010, 33.408951, 25.518940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188683, -0.550565, 0.813189,
		-0.927192, 0.172982, 0.332252,
		-0.323594, -0.816673, -0.477841,
		30.519932, 33.163948, 25.375587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322756, 33.369507, 26.270834>,  <30.746449, 33.735619, 25.710077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322756, 33.369507, 26.270834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389746, 33.094555, 25.988144>,  <30.429939, 32.929585, 25.818529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389746, 33.094555, 25.988144>,  <30.322756, 33.369507, 26.270834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389746, 33.094555, 25.988144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045787, -0.710653, 0.702051,
		-0.984812, -0.149934, -0.087544,
		0.167475, -0.687380, -0.706725,
		30.439989, 32.888340, 25.776127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922451, 32.774502, 26.485128>,  <30.322756, 33.369507, 26.270834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922451, 32.774502, 26.485128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192135, 32.614517, 26.236782>,  <30.353945, 32.518528, 26.087774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192135, 32.614517, 26.236782>,  <29.922451, 32.774502, 26.485128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192135, 32.614517, 26.236782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039153, -0.820126, 0.570841,
		-0.737501, -0.409175, -0.537278,
		0.674210, -0.399960, -0.620865,
		30.394398, 32.494530, 26.050522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622452, 32.162743, 26.406713>,  <29.922451, 32.774502, 26.485128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622452, 32.162743, 26.406713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995684, 32.082371, 26.287388>,  <30.219622, 32.034149, 26.215792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995684, 32.082371, 26.287388>,  <29.622452, 32.162743, 26.406713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995684, 32.082371, 26.287388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037679, -0.879451, 0.474496,
		-0.357694, -0.431502, -0.828167,
		0.933078, -0.200929, -0.298316,
		30.275608, 32.022091, 26.197893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754314, 31.463455, 26.097635>,  <29.622452, 32.162743, 26.406713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754314, 31.463455, 26.097635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108936, 31.587845, 26.234642>,  <30.321709, 31.662479, 26.316845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108936, 31.587845, 26.234642>,  <29.754314, 31.463455, 26.097635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108936, 31.587845, 26.234642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036750, -0.785376, 0.617927,
		0.461163, -0.535239, -0.707707,
		0.886554, 0.310974, 0.342516,
		30.374903, 31.681137, 26.337397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207415, 30.930475, 26.184206>,  <29.754314, 31.463455, 26.097635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207415, 30.930475, 26.184206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428802, 31.182430, 26.402164>,  <30.561636, 31.333603, 26.532940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428802, 31.182430, 26.402164>,  <30.207415, 30.930475, 26.184206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428802, 31.182430, 26.402164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135214, -0.713518, 0.687467,
		0.821820, -0.306815, -0.480080,
		0.553471, 0.629887, 0.544897,
		30.594843, 31.371397, 26.565634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754848, 30.514032, 26.429705>,  <30.207415, 30.930475, 26.184206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754848, 30.514032, 26.429705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747175, 30.827377, 26.678211>,  <30.742571, 31.015385, 26.827316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747175, 30.827377, 26.678211>,  <30.754848, 30.514032, 26.429705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747175, 30.827377, 26.678211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194647, -0.606567, 0.770836,
		0.980686, 0.135713, -0.140845,
		-0.019181, 0.783363, 0.621268,
		30.741421, 31.062386, 26.864592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347366, 30.452925, 26.794466>,  <30.754848, 30.514032, 26.429705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347366, 30.452925, 26.794466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107141, 30.677670, 27.022022>,  <30.963007, 30.812517, 27.158556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107141, 30.677670, 27.022022>,  <31.347366, 30.452925, 26.794466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107141, 30.677670, 27.022022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199304, -0.583838, 0.787027,
		0.774339, 0.586042, 0.238651,
		-0.600564, 0.561861, 0.568889,
		30.926971, 30.846228, 27.192690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748627, 30.658875, 27.425415>,  <31.347366, 30.452925, 26.794466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748627, 30.658875, 27.425415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362452, 30.686512, 27.525940>,  <31.130747, 30.703094, 27.586254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362452, 30.686512, 27.525940>,  <31.748627, 30.658875, 27.425415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362452, 30.686512, 27.525940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178257, -0.528405, 0.830068,
		0.190146, 0.846176, 0.497825,
		-0.965437, 0.069094, 0.251311,
		31.072821, 30.707239, 27.601334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828856, 30.977776, 28.105427>,  <31.748627, 30.658875, 27.425415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828856, 30.977776, 28.105427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486250, 30.776375, 28.060055>,  <31.280685, 30.655535, 28.032831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486250, 30.776375, 28.060055>,  <31.828856, 30.977776, 28.105427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486250, 30.776375, 28.060055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150099, -0.453280, 0.878639,
		-0.493813, 0.735542, 0.463817,
		-0.856516, -0.503502, -0.113432,
		31.229296, 30.625324, 28.026026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107407, 31.576878, 28.489138>,  <31.828856, 30.977776, 28.105427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107407, 31.576878, 28.489138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474583, 31.439957, 28.408928>,  <32.694889, 31.357803, 28.360802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474583, 31.439957, 28.408928>,  <32.107407, 31.576878, 28.489138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474583, 31.439957, 28.408928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032819, 0.438208, -0.898274,
		0.395352, 0.831145, 0.391016,
		0.917943, -0.342302, -0.200524,
		32.749966, 31.337267, 28.348770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363911, 32.072586, 28.131969>,  <32.107407, 31.576878, 28.489138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363911, 32.072586, 28.131969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642025, 31.791885, 28.069839>,  <32.808895, 31.623466, 28.032562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642025, 31.791885, 28.069839>,  <32.363911, 32.072586, 28.131969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642025, 31.791885, 28.069839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233822, 0.425203, -0.874374,
		0.679635, 0.571622, 0.459722,
		0.695286, -0.701749, -0.155325,
		32.850613, 31.581360, 28.023241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020859, 32.412151, 27.851311>,  <32.363911, 32.072586, 28.131969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020859, 32.412151, 27.851311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029430, 32.022385, 27.761818>,  <33.034573, 31.788525, 27.708122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029430, 32.022385, 27.761818>,  <33.020859, 32.412151, 27.851311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029430, 32.022385, 27.761818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355945, 0.216558, -0.909069,
		0.934261, -0.060155, 0.351479,
		0.021430, -0.974415, -0.223734,
		33.035858, 31.730061, 27.694698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754929, 32.292988, 27.538754>,  <33.020859, 32.412151, 27.851311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754929, 32.292988, 27.538754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519161, 32.000828, 27.400703>,  <33.377701, 31.825533, 27.317873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519161, 32.000828, 27.400703>,  <33.754929, 32.292988, 27.538754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519161, 32.000828, 27.400703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333037, 0.169530, -0.927548,
		0.735987, -0.661650, 0.143325,
		-0.589415, -0.730396, -0.345126,
		33.342339, 31.781710, 27.297165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149971, 32.074917, 27.040281>,  <33.754929, 32.292988, 27.538754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149971, 32.074917, 27.040281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789635, 31.930984, 26.943123>,  <33.573433, 31.844624, 26.884827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789635, 31.930984, 26.943123>,  <34.149971, 32.074917, 27.040281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789635, 31.930984, 26.943123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164838, 0.234097, -0.958137,
		0.401634, -0.903171, -0.151570,
		-0.900844, -0.359836, -0.242898,
		33.519382, 31.823034, 26.870253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298992, 31.749470, 26.434614>,  <34.149971, 32.074917, 27.040281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298992, 31.749470, 26.434614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907028, 31.829060, 26.439926>,  <33.671848, 31.876814, 26.443113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907028, 31.829060, 26.439926>,  <34.298992, 31.749470, 26.434614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907028, 31.829060, 26.439926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054545, 0.331480, -0.941884,
		-0.191814, -0.922242, -0.335675,
		-0.979915, 0.198976, 0.013279,
		33.613052, 31.888752, 26.443911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999557, 31.444376, 25.885147>,  <34.298992, 31.749470, 26.434614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999557, 31.444376, 25.885147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775326, 31.757690, 25.992638>,  <33.640785, 31.945679, 26.057131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775326, 31.757690, 25.992638>,  <33.999557, 31.444376, 25.885147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775326, 31.757690, 25.992638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140826, 0.409955, -0.901169,
		-0.816036, -0.467337, -0.340121,
		-0.560583, 0.783284, 0.268724,
		33.607151, 31.992676, 26.073256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708164, 31.540224, 25.325182>,  <33.999557, 31.444376, 25.885147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708164, 31.540224, 25.325182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618206, 31.885666, 25.505676>,  <33.564232, 32.092930, 25.613972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618206, 31.885666, 25.505676>,  <33.708164, 31.540224, 25.325182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618206, 31.885666, 25.505676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109685, 0.482592, -0.868950,
		-0.968189, -0.145930, -0.203258,
		-0.224897, 0.863602, 0.451234,
		33.550735, 32.144745, 25.641047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228722, 31.833817, 25.003262>,  <33.708164, 31.540224, 25.325182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228722, 31.833817, 25.003262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394276, 32.137768, 25.203777>,  <33.493607, 32.320137, 25.324087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394276, 32.137768, 25.203777>,  <33.228722, 31.833817, 25.003262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394276, 32.137768, 25.203777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187355, 0.467774, -0.863762,
		-0.890842, 0.451415, 0.051237,
		0.413882, 0.759876, 0.501288,
		33.518440, 32.365730, 25.354164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050579, 32.396366, 24.600891>,  <33.228722, 31.833817, 25.003262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050579, 32.396366, 24.600891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346966, 32.535606, 24.830601>,  <33.524799, 32.619152, 24.968426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346966, 32.535606, 24.830601>,  <33.050579, 32.396366, 24.600891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346966, 32.535606, 24.830601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370160, 0.501798, -0.781781,
		-0.560311, 0.791847, 0.242961,
		0.740968, 0.348105, 0.574273,
		33.569256, 32.640038, 25.002882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173317, 33.128681, 24.529064>,  <33.050579, 32.396366, 24.600891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173317, 33.128681, 24.529064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532734, 33.019184, 24.666283>,  <33.748386, 32.953484, 24.748613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532734, 33.019184, 24.666283>,  <33.173317, 33.128681, 24.529064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532734, 33.019184, 24.666283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438883, 0.561842, -0.701225,
		-0.000781, 0.780639, 0.624982,
		0.898544, -0.273746, 0.343047,
		33.802296, 32.937061, 24.769197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529156, 33.807739, 24.579050>,  <33.173317, 33.128681, 24.529064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529156, 33.807739, 24.579050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816116, 33.530163, 24.554455>,  <33.988293, 33.363617, 24.539698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816116, 33.530163, 24.554455>,  <33.529156, 33.807739, 24.579050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816116, 33.530163, 24.554455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546885, 0.615645, -0.567360,
		0.431570, 0.373398, 0.821171,
		0.717401, -0.693941, -0.061488,
		34.031338, 33.321980, 24.536009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199337, 34.210835, 24.665409>,  <33.529156, 33.807739, 24.579050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199337, 34.210835, 24.665409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269520, 33.858292, 24.489941>,  <34.311630, 33.646767, 24.384661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269520, 33.858292, 24.489941>,  <34.199337, 34.210835, 24.665409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269520, 33.858292, 24.489941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576251, 0.453215, -0.680095,
		0.798217, -0.133459, 0.587400,
		0.175454, -0.881354, -0.438670,
		34.322155, 33.593887, 24.358339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001266, 34.134468, 24.457039>,  <34.199337, 34.210835, 24.665409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001266, 34.134468, 24.457039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826534, 33.845490, 24.242657>,  <34.721695, 33.672104, 24.114027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826534, 33.845490, 24.242657>,  <35.001266, 34.134468, 24.457039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826534, 33.845490, 24.242657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540730, 0.265257, -0.798280,
		0.718880, -0.638522, 0.274775,
		-0.436833, -0.722446, -0.535956,
		34.695484, 33.628757, 24.081869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044754, 35.008072, 24.522196>,  <35.001266, 34.134468, 24.457039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044754, 35.008072, 24.522196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979500, 35.112999, 24.141758>,  <34.940350, 35.175957, 23.913496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979500, 35.112999, 24.141758>,  <35.044754, 35.008072, 24.522196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979500, 35.112999, 24.141758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892795, 0.371022, 0.255462,
		0.419888, 0.890805, 0.173670,
		-0.163132, 0.262317, -0.951093,
		34.930561, 35.191692, 23.856430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958477, 35.790043, 24.532646>,  <35.044754, 35.008072, 24.522196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958477, 35.790043, 24.532646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766968, 35.581806, 24.249870>,  <34.652061, 35.456863, 24.080206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766968, 35.581806, 24.249870>,  <34.958477, 35.790043, 24.532646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766968, 35.581806, 24.249870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876822, 0.242917, 0.414939,
		-0.044287, 0.818519, -0.572769,
		-0.478771, -0.520593, -0.706938,
		34.623337, 35.425629, 24.037788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565731, 35.396084, 24.972258>,  <34.958477, 35.790043, 24.532646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565731, 35.396084, 24.972258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243290, 35.628052, 25.019409>,  <34.049828, 35.767231, 25.047701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243290, 35.628052, 25.019409>,  <34.565731, 35.396084, 24.972258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243290, 35.628052, 25.019409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033963, -0.153532, 0.987560,
		0.590803, 0.800076, 0.104066,
		-0.806101, 0.579919, 0.117880,
		34.001461, 35.802029, 25.054773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743507, 35.854855, 25.487200>,  <34.565731, 35.396084, 24.972258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743507, 35.854855, 25.487200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343719, 35.843277, 25.481140>,  <34.103848, 35.836330, 25.477505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343719, 35.843277, 25.481140>,  <34.743507, 35.854855, 25.487200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343719, 35.843277, 25.481140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008846, -0.206629, 0.978379,
		-0.031448, 0.977991, 0.206263,
		-0.999466, -0.028944, -0.015150,
		34.043880, 35.834595, 25.476595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459110, 36.378136, 26.055201>,  <34.743507, 35.854855, 25.487200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459110, 36.378136, 26.055201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190285, 36.097153, 25.961487>,  <34.028992, 35.928562, 25.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190285, 36.097153, 25.961487>,  <34.459110, 36.378136, 26.055201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190285, 36.097153, 25.961487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000032, -0.316358, 0.948640,
		-0.740496, 0.637551, 0.212589,
		-0.672061, -0.702457, -0.234282,
		33.988667, 35.886417, 25.891203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904598, 36.426453, 26.626841>,  <34.459110, 36.378136, 26.055201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904598, 36.426453, 26.626841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811985, 36.058407, 26.500492>,  <33.756416, 35.837578, 26.424683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811985, 36.058407, 26.500492>,  <33.904598, 36.426453, 26.626841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811985, 36.058407, 26.500492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047080, -0.334911, 0.941073,
		-0.971687, 0.203017, 0.120861,
		-0.231532, -0.920119, -0.315871,
		33.742527, 35.782372, 26.405731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286263, 36.197990, 26.964834>,  <33.904598, 36.426453, 26.626841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286263, 36.197990, 26.964834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475143, 35.865326, 26.847965>,  <33.588474, 35.665730, 26.777843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475143, 35.865326, 26.847965>,  <33.286263, 36.197990, 26.964834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475143, 35.865326, 26.847965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131282, -0.394109, 0.909639,
		-0.871657, -0.391181, -0.295283,
		0.472207, -0.831658, -0.292173,
		33.616806, 35.615829, 26.760313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841034, 35.625252, 27.166832>,  <33.286263, 36.197990, 26.964834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841034, 35.625252, 27.166832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205162, 35.472610, 27.102711>,  <33.423637, 35.381027, 27.064238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205162, 35.472610, 27.102711>,  <32.841034, 35.625252, 27.166832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205162, 35.472610, 27.102711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049974, -0.485794, 0.872644,
		-0.410875, -0.786375, -0.461299,
		0.910321, -0.381600, -0.160302,
		33.478260, 35.358131, 27.054621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779659, 34.992584, 27.397470>,  <32.841034, 35.625252, 27.166832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779659, 34.992584, 27.397470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177326, 35.035412, 27.392162>,  <33.415924, 35.061108, 27.388977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177326, 35.035412, 27.392162>,  <32.779659, 34.992584, 27.397470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177326, 35.035412, 27.392162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068159, -0.527951, 0.846535,
		0.083632, -0.842499, -0.532167,
		0.994163, 0.107070, -0.013271,
		33.475574, 35.067532, 27.388182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979900, 34.447704, 27.653526>,  <32.779659, 34.992584, 27.397470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979900, 34.447704, 27.653526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302532, 34.678177, 27.706364>,  <33.496109, 34.816460, 27.738066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302532, 34.678177, 27.706364>,  <32.979900, 34.447704, 27.653526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302532, 34.678177, 27.706364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127526, -0.387805, 0.912877,
		0.577211, -0.719459, -0.386272,
		0.806576, 0.576182, 0.132096,
		33.544506, 34.851032, 27.745993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602028, 34.032848, 27.825077>,  <32.979900, 34.447704, 27.653526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602028, 34.032848, 27.825077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659977, 34.405205, 27.959217>,  <33.694744, 34.628616, 28.039701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659977, 34.405205, 27.959217>,  <33.602028, 34.032848, 27.825077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659977, 34.405205, 27.959217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156800, -0.356242, 0.921144,
		0.976948, -0.080862, -0.197571,
		0.144868, 0.930888, 0.335351,
		33.703438, 34.684471, 28.059822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208961, 33.959717, 28.188341>,  <33.602028, 34.032848, 27.825077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208961, 33.959717, 28.188341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031277, 34.296410, 28.311089>,  <33.924667, 34.498425, 28.384737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031277, 34.296410, 28.311089>,  <34.208961, 33.959717, 28.188341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031277, 34.296410, 28.311089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175455, -0.254154, 0.951116,
		0.878576, 0.476334, -0.034789,
		-0.444207, 0.841731, 0.306869,
		33.898014, 34.548927, 28.403149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482117, 33.992760, 28.732368>,  <34.208961, 33.959717, 28.188341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482117, 33.992760, 28.732368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215134, 34.288605, 28.766953>,  <34.054943, 34.466110, 28.787703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215134, 34.288605, 28.766953>,  <34.482117, 33.992760, 28.732368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215134, 34.288605, 28.766953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130333, 0.001715, 0.991469,
		0.733152, 0.673034, -0.097540,
		-0.667459, 0.739610, 0.086461,
		34.014896, 34.510487, 28.792891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739113, 34.417709, 29.268353>,  <34.482117, 33.992760, 28.732368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739113, 34.417709, 29.268353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360447, 34.546265, 29.277668>,  <34.133247, 34.623398, 29.283257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360447, 34.546265, 29.277668>,  <34.739113, 34.417709, 29.268353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360447, 34.546265, 29.277668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009503, -0.044390, 0.998969,
		0.322091, 0.945906, 0.038968,
		-0.946661, 0.321388, 0.023287,
		34.076450, 34.642681, 29.284655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679741, 34.950172, 29.775679>,  <34.739113, 34.417709, 29.268353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679741, 34.950172, 29.775679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311050, 34.799797, 29.737545>,  <34.089836, 34.709572, 29.714664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311050, 34.799797, 29.737545>,  <34.679741, 34.950172, 29.775679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311050, 34.799797, 29.737545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126904, 0.060072, 0.990094,
		-0.366484, 0.924697, -0.103077,
		-0.921729, -0.375935, -0.095333,
		34.034531, 34.687016, 29.708944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290558, 35.418331, 30.271774>,  <34.679741, 34.950172, 29.775679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290558, 35.418331, 30.271774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071388, 35.089291, 30.210983>,  <33.939884, 34.891865, 30.174509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071388, 35.089291, 30.210983>,  <34.290558, 35.418331, 30.271774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071388, 35.089291, 30.210983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138959, -0.089647, 0.986232,
		-0.824903, 0.561503, -0.065188,
		-0.547929, -0.822604, -0.151976,
		33.907009, 34.842510, 30.165390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744118, 35.456692, 30.731808>,  <34.290558, 35.418331, 30.271774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744118, 35.456692, 30.731808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765293, 35.069035, 30.635502>,  <33.778000, 34.836441, 30.577719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765293, 35.069035, 30.635502>,  <33.744118, 35.456692, 30.731808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765293, 35.069035, 30.635502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286656, -0.245704, 0.925990,
		-0.956569, 0.019994, -0.290818,
		0.052941, -0.969138, -0.240765,
		33.781174, 34.778294, 30.563272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062160, 35.079674, 30.973610>,  <33.744118, 35.456692, 30.731808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062160, 35.079674, 30.973610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365643, 34.820232, 30.949337>,  <33.547733, 34.664566, 30.934772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365643, 34.820232, 30.949337>,  <33.062160, 35.079674, 30.973610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365643, 34.820232, 30.949337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060559, -0.162972, 0.984770,
		-0.648615, -0.743474, -0.162926,
		0.758704, -0.648604, -0.060682,
		33.593254, 34.625652, 30.931133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847637, 34.479149, 31.249554>,  <33.062160, 35.079674, 30.973610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847637, 34.479149, 31.249554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246044, 34.480667, 31.285187>,  <33.485088, 34.481579, 31.306566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246044, 34.480667, 31.285187>,  <32.847637, 34.479149, 31.249554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246044, 34.480667, 31.285187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087900, -0.125744, 0.988161,
		0.014954, -0.992056, -0.124909,
		0.996017, 0.003798, 0.089083,
		33.544849, 34.481808, 31.311911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025246, 33.928497, 31.813459>,  <32.847637, 34.479149, 31.249554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025246, 33.928497, 31.813459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345654, 34.164360, 31.772137>,  <33.537899, 34.305878, 31.747343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345654, 34.164360, 31.772137>,  <33.025246, 33.928497, 31.813459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345654, 34.164360, 31.772137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089415, 0.052784, 0.994595,
		0.591925, -0.805926, -0.010443,
		0.801018, 0.589659, -0.103306,
		33.585960, 34.341259, 31.741144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540512, 33.644489, 32.109707>,  <33.025246, 33.928497, 31.813459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540512, 33.644489, 32.109707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642242, 34.031040, 32.124893>,  <33.703281, 34.262970, 32.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642242, 34.031040, 32.124893>,  <33.540512, 33.644489, 32.109707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642242, 34.031040, 32.124893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118550, -0.070116, 0.990470,
		0.959825, -0.247401, -0.132396,
		0.254326, 0.966373, 0.037969,
		33.718540, 34.320953, 32.136284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062222, 33.655437, 32.619091>,  <33.540512, 33.644489, 32.109707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062222, 33.655437, 32.619091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932835, 34.030392, 32.567429>,  <33.855202, 34.255363, 32.536430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932835, 34.030392, 32.567429>,  <34.062222, 33.655437, 32.619091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932835, 34.030392, 32.567429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115462, 0.174570, 0.977852,
		0.939168, 0.301391, -0.164700,
		-0.323468, 0.937384, -0.129152,
		33.835793, 34.311607, 32.528683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425640, 34.028046, 33.037170>,  <34.062222, 33.655437, 32.619091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425640, 34.028046, 33.037170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142536, 34.307308, 32.993992>,  <33.972675, 34.474865, 32.968086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142536, 34.307308, 32.993992>,  <34.425640, 34.028046, 33.037170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142536, 34.307308, 32.993992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034251, 0.186531, 0.981852,
		0.705625, 0.691215, -0.155932,
		-0.707757, 0.698160, -0.107946,
		33.930210, 34.516758, 32.961609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533028, 34.518230, 33.632645>,  <34.425640, 34.028046, 33.037170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533028, 34.518230, 33.632645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171448, 34.627541, 33.501076>,  <33.954498, 34.693127, 33.422134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171448, 34.627541, 33.501076>,  <34.533028, 34.518230, 33.632645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171448, 34.627541, 33.501076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241016, 0.309789, 0.919751,
		0.353243, 0.910687, -0.214170,
		-0.903953, 0.273277, -0.328921,
		33.900261, 34.709522, 33.402401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399029, 35.226295, 33.787712>,  <34.533028, 34.518230, 33.632645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399029, 35.226295, 33.787712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042488, 35.047050, 33.760345>,  <33.828564, 34.939503, 33.743927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042488, 35.047050, 33.760345>,  <34.399029, 35.226295, 33.787712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042488, 35.047050, 33.760345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234135, 0.325884, 0.915958,
		-0.388160, 0.832461, -0.395398,
		-0.891354, -0.448115, -0.068413,
		33.775082, 34.912617, 33.739822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965050, 35.726021, 34.200539>,  <34.399029, 35.226295, 33.787712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965050, 35.726021, 34.200539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701855, 35.427567, 34.159866>,  <33.543938, 35.248493, 34.135464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701855, 35.427567, 34.159866>,  <33.965050, 35.726021, 34.200539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701855, 35.427567, 34.159866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226125, 0.066973, 0.971793,
		-0.718279, 0.662418, -0.212787,
		-0.657984, -0.746135, -0.101684,
		33.504459, 35.203728, 34.129360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424343, 36.064121, 34.393627>,  <33.965050, 35.726021, 34.200539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424343, 36.064121, 34.393627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376034, 35.672569, 34.459606>,  <33.347050, 35.437637, 34.499195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376034, 35.672569, 34.459606>,  <33.424343, 36.064121, 34.393627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376034, 35.672569, 34.459606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162575, 0.183424, 0.969497,
		-0.979277, 0.090271, -0.181294,
		-0.120771, -0.978880, 0.164947,
		33.339802, 35.378906, 34.509090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819950, 36.007442, 34.817482>,  <33.424343, 36.064121, 34.393627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819950, 36.007442, 34.817482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986652, 35.646713, 34.863132>,  <33.086674, 35.430275, 34.890522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986652, 35.646713, 34.863132>,  <32.819950, 36.007442, 34.817482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986652, 35.646713, 34.863132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188253, 0.037202, 0.981416,
		-0.889313, -0.430492, -0.154268,
		0.416752, -0.901827, 0.114126,
		33.111679, 35.376163, 34.897369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276936, 35.635483, 34.759487>,  <32.819950, 36.007442, 34.817482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276936, 35.635483, 34.759487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880991, 35.690735, 34.772728>,  <31.643425, 35.723885, 34.780670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880991, 35.690735, 34.772728>,  <32.276936, 35.635483, 34.759487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880991, 35.690735, 34.772728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009066, 0.171114, -0.985210,
		-0.141748, -0.975521, -0.168126,
		-0.989862, 0.138127, 0.033099,
		31.584032, 35.732174, 34.782658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894773, 35.259109, 34.134411>,  <32.276936, 35.635483, 34.759487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894773, 35.259109, 34.134411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689735, 35.574554, 34.270260>,  <31.566713, 35.763821, 34.351768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689735, 35.574554, 34.270260>,  <31.894773, 35.259109, 34.134411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689735, 35.574554, 34.270260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101630, 0.337032, -0.935992,
		-0.852596, -0.514298, -0.092613,
		-0.512593, 0.788611, 0.339620,
		31.535957, 35.811138, 34.372147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407841, 35.330456, 33.619675>,  <31.894773, 35.259109, 34.134411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407841, 35.330456, 33.619675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426750, 35.692314, 33.789085>,  <31.438095, 35.909431, 33.890732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426750, 35.692314, 33.789085>,  <31.407841, 35.330456, 33.619675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426750, 35.692314, 33.789085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055633, 0.420957, -0.905373,
		-0.997332, 0.066363, -0.030428,
		0.047274, 0.904650, 0.423525,
		31.440933, 35.963711, 33.916142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947886, 35.730980, 33.314041>,  <31.407841, 35.330456, 33.619675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947886, 35.730980, 33.314041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193726, 36.013233, 33.455097>,  <31.341228, 36.182587, 33.539730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193726, 36.013233, 33.455097>,  <30.947886, 35.730980, 33.314041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193726, 36.013233, 33.455097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024111, 0.463627, -0.885703,
		-0.788472, 0.535849, 0.301957,
		0.614598, 0.705632, 0.352637,
		31.378105, 36.224922, 33.560886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706030, 36.458202, 32.967144>,  <30.947886, 35.730980, 33.314041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706030, 36.458202, 32.967144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079268, 36.486305, 33.108227>,  <31.303209, 36.503166, 33.192879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079268, 36.486305, 33.108227>,  <30.706030, 36.458202, 32.967144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079268, 36.486305, 33.108227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286014, 0.449598, -0.846202,
		-0.218025, 0.890464, 0.399423,
		0.933092, 0.070253, 0.352709,
		31.359196, 36.507381, 33.214039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
