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
	<-1.171338, 1.577437, 0.570839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.072034, 1.214161, 0.436047>,  <-1.012451, 0.996195, 0.355171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.072034, 1.214161, 0.436047>,  <-1.171338, 1.577437, 0.570839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.072034, 1.214161, 0.436047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952716, 0.165995, 0.254515,
		-0.175211, -0.384234, 0.906458,
		0.248261, -0.908190, -0.336982,
		-0.997556, 0.941704, 0.334952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.850493, 1.145984, 1.112317>,  <-1.171338, 1.577437, 0.570839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.850493, 1.145984, 1.112317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.711272, 1.092831, 0.741114>,  <-0.627740, 1.060939, 0.518391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.711272, 1.092831, 0.741114>,  <-0.850493, 1.145984, 1.112317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.711272, 1.092831, 0.741114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901399, 0.319405, 0.292336,
		0.257564, -0.938255, 0.230951,
		0.348053, -0.132884, -0.928009,
		-0.606856, 1.052966, 0.462711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.081341, 0.753292, 1.042297>,  <-0.850493, 1.145984, 1.112317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.081341, 0.753292, 1.042297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.206100, 1.036911, 0.789323>,  <-0.280956, 1.207082, 0.637539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.206100, 1.036911, 0.789323>,  <-0.081341, 0.753292, 1.042297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.206100, 1.036911, 0.789323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780109, 0.571080, 0.255533,
		0.542355, -0.413667, -0.731252,
		-0.311898, 0.709046, -0.632434,
		-0.299670, 1.249625, 0.599593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.368898, 0.960933, 0.476731>,  <-0.081341, 0.753292, 1.042297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.368898, 0.960933, 0.476731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.155333, 1.294624, 0.531867>,  <0.027193, 1.494839, 0.564949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.155333, 1.294624, 0.531867>,  <0.368898, 0.960933, 0.476731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.155333, 1.294624, 0.531867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837175, 0.498687, 0.224609,
		0.118636, 0.235318, -0.964651,
		-0.533913, 0.834228, 0.137840,
		-0.004841, 1.544893, 0.573219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.837222, 1.458667, 0.520902>,  <0.368898, 0.960933, 0.476731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.837222, 1.458667, 0.520902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.546774, 1.722752, 0.597707>,  <0.372505, 1.881203, 0.643790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.546774, 1.722752, 0.597707>,  <0.837222, 1.458667, 0.520902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.546774, 1.722752, 0.597707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683159, 0.724334, 0.092917,
		-0.077736, 0.198644, -0.976984,
		-0.726120, 0.660213, 0.192012,
		0.328938, 1.920815, 0.655311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.092099, 2.069666, 0.295858>,  <0.837222, 1.458667, 0.520902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.092099, 2.069666, 0.295858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816257, 2.188019, 0.560251>,  <0.650751, 2.259031, 0.718887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.816257, 2.188019, 0.560251>,  <1.092099, 2.069666, 0.295858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.816257, 2.188019, 0.560251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548431, 0.809438, 0.209842,
		-0.472936, 0.507211, -0.720464,
		-0.689605, 0.295883, 0.660982,
		0.609375, 2.276784, 0.758546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.877802, 2.834131, 0.220087>,  <1.092099, 2.069666, 0.295858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.877802, 2.834131, 0.220087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.794515, 2.766270, 0.605390>,  <0.744542, 2.725553, 0.836571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.794515, 2.766270, 0.605390>,  <0.877802, 2.834131, 0.220087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.794515, 2.766270, 0.605390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441053, 0.862740, 0.247289,
		-0.872994, 0.476337, -0.104811,
		-0.208218, -0.169654, 0.963256,
		0.732049, 2.715373, 0.894367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.619915, 3.417032, 0.633612>,  <0.877802, 2.834131, 0.220087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.619915, 3.417032, 0.633612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795732, 3.178612, 0.902395>,  <0.901222, 3.035560, 1.063665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795732, 3.178612, 0.902395>,  <0.619915, 3.417032, 0.633612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.795732, 3.178612, 0.902395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375120, 0.801547, 0.465625,
		-0.816142, 0.047404, 0.575904,
		0.439542, -0.596049, 0.671959,
		0.927594, 2.999797, 1.103983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.290461, 1.229267, 4.199266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.234371, 1.435028, 3.860863>,  <1.200717, 1.558485, 3.657822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.234371, 1.435028, 3.860863>,  <1.290461, 1.229267, 4.199266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.234371, 1.435028, 3.860863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448795, 0.794653, 0.408790,
		0.882564, -0.322362, -0.342291,
		-0.140225, 0.514402, -0.846007,
		1.192304, 1.589349, 3.607061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.369140, 0.566592, 4.237385>,  <1.290461, 1.229267, 4.199266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.369140, 0.566592, 4.237385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.723366, 0.611313, 4.057040>,  <1.935901, 0.638145, 3.948833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.723366, 0.611313, 4.057040>,  <1.369140, 0.566592, 4.237385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.723366, 0.611313, 4.057040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458847, -0.059333, 0.886532,
		0.072365, -0.991957, -0.103843,
		0.885563, 0.111803, -0.450863,
		1.989035, 0.644853, 3.921781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.798386, 0.029356, 4.091529>,  <1.369140, 0.566592, 4.237385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.798386, 0.029356, 4.091529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.039886, 0.335739, 4.179884>,  <2.184787, 0.519569, 4.232898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.039886, 0.335739, 4.179884>,  <1.798386, 0.029356, 4.091529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.039886, 0.335739, 4.179884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086661, -0.338512, 0.936963,
		0.792448, -0.546551, -0.270756,
		0.603752, 0.765958, 0.220888,
		2.221012, 0.565527, 4.246151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.481767, -0.167316, 4.325430>,  <1.798386, 0.029356, 4.091529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.481767, -0.167316, 4.325430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.360252, 0.177677, 4.487339>,  <2.287344, 0.384673, 4.584484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.360252, 0.177677, 4.487339>,  <2.481767, -0.167316, 4.325430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.360252, 0.177677, 4.487339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206706, -0.355064, 0.911703,
		0.930046, 0.360631, -0.070416,
		-0.303786, 0.862482, 0.404771,
		2.269116, 0.436422, 4.608770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.988807, 0.277638, 4.773947>,  <2.481767, -0.167316, 4.325430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.988807, 0.277638, 4.773947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.601131, 0.296963, 4.870559>,  <2.368526, 0.308557, 4.928526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.601131, 0.296963, 4.870559>,  <2.988807, 0.277638, 4.773947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.601131, 0.296963, 4.870559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196129, -0.441851, 0.875386,
		0.149011, 0.895787, 0.418762,
		-0.969190, 0.048311, 0.241531,
		2.310374, 0.311456, 4.943018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.909014, 0.416787, 5.518933>,  <2.988807, 0.277638, 4.773947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.909014, 0.416787, 5.518933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.574017, 0.231579, 5.402853>,  <2.373018, 0.120454, 5.333206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.574017, 0.231579, 5.402853>,  <2.909014, 0.416787, 5.518933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.574017, 0.231579, 5.402853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126257, -0.352734, 0.927167,
		-0.531659, 0.813137, 0.236954,
		-0.837495, -0.463020, -0.290198,
		2.322768, 0.092673, 5.315794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.751395, -0.216364, 5.874103>,  <2.909014, 0.416787, 5.518933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.751395, -0.216364, 5.874103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.359062, -0.160423, 5.819832>,  <2.123662, -0.126859, 5.787270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.359062, -0.160423, 5.819832>,  <2.751395, -0.216364, 5.874103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.359062, -0.160423, 5.819832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194787, -0.686133, 0.700913,
		0.004931, 0.713906, 0.700223,
		-0.980833, 0.139851, -0.135676,
		2.064812, -0.118468, 5.779129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.513423, -0.123525, 6.535255>,  <2.751395, -0.216364, 5.874103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.513423, -0.123525, 6.535255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269279, -0.281879, 6.260815>,  <2.122793, -0.376892, 6.096150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.269279, -0.281879, 6.260815>,  <2.513423, -0.123525, 6.535255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.269279, -0.281879, 6.260815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311790, -0.676167, 0.667522,
		-0.728182, 0.621348, 0.289272,
		-0.610360, -0.395885, -0.686102,
		2.086172, -0.400645, 6.054984>
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
