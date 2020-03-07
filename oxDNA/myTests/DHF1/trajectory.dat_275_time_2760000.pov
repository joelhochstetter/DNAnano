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
	<2.027737, 2.923262, 0.305157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.810879, 3.224915, 0.453407>,  <1.680764, 3.405906, 0.542358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.810879, 3.224915, 0.453407>,  <2.027737, 2.923262, 0.305157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.810879, 3.224915, 0.453407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710147, 0.646988, -0.277666,
		-0.449187, 0.112664, -0.886305,
		-0.542146, 0.754131, 0.370627,
		1.648235, 3.451154, 0.564595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.887241, 3.562493, -0.174955>,  <2.027737, 2.923262, 0.305157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.887241, 3.562493, -0.174955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.970615, 3.601196, 0.214340>,  <2.020640, 3.624418, 0.447917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.970615, 3.601196, 0.214340>,  <1.887241, 3.562493, -0.174955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.970615, 3.601196, 0.214340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732710, 0.643686, -0.220916,
		-0.647835, 0.759148, 0.063271,
		0.208435, 0.096758, 0.973238,
		2.033146, 3.630224, 0.506312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.825212, 4.359815, 0.181338>,  <1.887241, 3.562493, -0.174955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.825212, 4.359815, 0.181338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130154, 4.136322, 0.311958>,  <2.313118, 4.002226, 0.390331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.130154, 4.136322, 0.311958>,  <1.825212, 4.359815, 0.181338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.130154, 4.136322, 0.311958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639491, 0.727837, -0.247596,
		-0.099337, 0.397583, 0.912173,
		0.762354, -0.558732, 0.326552,
		2.358860, 3.968703, 0.409924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.289199, 4.773307, 0.626076>,  <1.825212, 4.359815, 0.181338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.289199, 4.773307, 0.626076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.431763, 4.482864, 0.390877>,  <2.517301, 4.308599, 0.249757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.431763, 4.482864, 0.390877>,  <2.289199, 4.773307, 0.626076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.431763, 4.482864, 0.390877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666956, 0.638444, -0.384134,
		0.654326, -0.255260, 0.711828,
		0.356409, -0.726107, -0.587998,
		2.538685, 4.265032, 0.214477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.971257, 4.874491, 0.761939>,  <2.289199, 4.773307, 0.626076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.971257, 4.874491, 0.761939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.903221, 4.715195, 0.401390>,  <2.862399, 4.619617, 0.185060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.903221, 4.715195, 0.401390>,  <2.971257, 4.874491, 0.761939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.903221, 4.715195, 0.401390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698726, 0.596262, -0.395288,
		0.694875, -0.697048, 0.176843,
		-0.170090, -0.398241, -0.901373,
		2.852194, 4.595723, 0.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.545046, 4.496086, 0.561338>,  <2.971257, 4.874491, 0.761939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.545046, 4.496086, 0.561338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.350216, 4.604355, 0.229195>,  <3.233318, 4.669316, 0.029909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.350216, 4.604355, 0.229195>,  <3.545046, 4.496086, 0.561338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.350216, 4.604355, 0.229195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795977, 0.528847, -0.294520,
		0.359414, -0.804399, -0.473036,
		-0.487075, 0.270671, -0.830358,
		3.204093, 4.685556, -0.019913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.944680, 4.337105, -0.017393>,  <3.545046, 4.496086, 0.561338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.944680, 4.337105, -0.017393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.687702, 4.605682, -0.165138>,  <3.533516, 4.766829, -0.253785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.687702, 4.605682, -0.165138>,  <3.944680, 4.337105, -0.017393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.687702, 4.605682, -0.165138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765244, 0.536415, -0.355893,
		-0.040830, -0.511295, -0.858435,
		-0.642444, 0.671443, -0.369363,
		3.494969, 4.807116, -0.275947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.238910, 4.569393, -0.658997>,  <3.944680, 4.337105, -0.017393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.238910, 4.569393, -0.658997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.006496, 4.867996, -0.529305>,  <3.867049, 5.047158, -0.451489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.006496, 4.867996, -0.529305>,  <4.238910, 4.569393, -0.658997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.006496, 4.867996, -0.529305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776833, 0.627502, -0.052645,
		-0.242756, 0.221285, -0.944512,
		-0.581033, 0.746508, 0.324232,
		3.832186, 5.091949, -0.432035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.675704, -0.161876, 5.289643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.587119, -0.362106, 5.624397>,  <4.533967, -0.482244, 5.825250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.587119, -0.362106, 5.624397>,  <4.675704, -0.161876, 5.289643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.587119, -0.362106, 5.624397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843344, 0.332572, 0.422097,
		-0.489617, 0.799262, 0.348505,
		-0.221463, -0.500575, 0.836886,
		4.520679, -0.512279, 5.875463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.667190, 0.362441, 5.807491>,  <4.675704, -0.161876, 5.289643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.667190, 0.362441, 5.807491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.788996, -0.004227, 5.911018>,  <4.862079, -0.224227, 5.973135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.788996, -0.004227, 5.911018>,  <4.667190, 0.362441, 5.807491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.788996, -0.004227, 5.911018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798921, 0.393759, 0.454619,
		-0.518648, 0.068337, 0.852252,
		0.304515, -0.916670, 0.258818,
		4.880350, -0.279228, 5.988664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.186482, 0.579448, 5.142185>,  <4.667190, 0.362441, 5.807491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.186482, 0.579448, 5.142185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.126888, 0.810715, 4.821304>,  <4.091132, 0.949475, 4.628776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.126888, 0.810715, 4.821304>,  <4.186482, 0.579448, 5.142185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.126888, 0.810715, 4.821304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872254, -0.458993, -0.168812,
		-0.465807, 0.674576, 0.572688,
		-0.148983, 0.578163, -0.802204,
		4.082192, 0.984165, 4.580644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.560311, 0.875971, 5.172775>,  <4.186482, 0.579448, 5.142185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.560311, 0.875971, 5.172775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.673962, 0.804123, 4.796051>,  <3.742153, 0.761014, 4.570016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.673962, 0.804123, 4.796051>,  <3.560311, 0.875971, 5.172775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.673962, 0.804123, 4.796051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841161, -0.518110, -0.154951,
		-0.460129, 0.836241, -0.298300,
		0.284129, -0.179620, -0.941811,
		3.759201, 0.750237, 4.513508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.011351, 1.040866, 4.749784>,  <3.560311, 0.875971, 5.172775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.011351, 1.040866, 4.749784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.238064, 0.734222, 4.629074>,  <3.374092, 0.550236, 4.556648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.238064, 0.734222, 4.629074>,  <3.011351, 1.040866, 4.749784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.238064, 0.734222, 4.629074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789670, -0.609938, 0.066315,
		-0.234901, 0.200717, -0.951070,
		0.566783, -0.766609, -0.301775,
		3.408099, 0.504240, 4.538542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.677560, 0.630531, 4.197179>,  <3.011351, 1.040866, 4.749784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.677560, 0.630531, 4.197179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.948775, 0.379486, 4.350212>,  <3.111503, 0.228859, 4.442032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.948775, 0.379486, 4.350212>,  <2.677560, 0.630531, 4.197179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.948775, 0.379486, 4.350212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648262, -0.755936, -0.091199,
		0.346445, -0.186177, -0.919410,
		0.678036, -0.627614, 0.382582,
		3.152185, 0.191202, 4.464987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.485417, -0.026060, 3.901859>,  <2.677560, 0.630531, 4.197179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.485417, -0.026060, 3.901859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.722260, -0.137817, 4.204208>,  <2.864367, -0.204872, 4.385618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.722260, -0.137817, 4.204208>,  <2.485417, -0.026060, 3.901859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.722260, -0.137817, 4.204208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636781, -0.737065, 0.226375,
		0.493881, -0.615365, -0.614335,
		0.592108, -0.279394, 0.755875,
		2.899893, -0.221636, 4.430971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.628873, -0.783723, 3.883967>,  <2.485417, -0.026060, 3.901859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.628873, -0.783723, 3.883967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.690436, -0.670059, 4.262505>,  <2.727373, -0.601861, 4.489627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.690436, -0.670059, 4.262505>,  <2.628873, -0.783723, 3.883967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.690436, -0.670059, 4.262505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620410, -0.717630, 0.316383,
		0.769028, -0.635814, 0.065849,
		0.153906, 0.284161, 0.946343,
		2.736608, -0.584811, 4.546408>
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
