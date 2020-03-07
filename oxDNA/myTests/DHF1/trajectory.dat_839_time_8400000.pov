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
	<-0.681201, 2.240886, 0.283790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.359768, 2.022003, 0.377443>,  <-0.166908, 1.890673, 0.433635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.359768, 2.022003, 0.377443>,  <-0.681201, 2.240886, 0.283790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.359768, 2.022003, 0.377443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534805, 0.836487, 0.119468,
		-0.261223, 0.029213, 0.964836,
		0.803583, -0.547207, 0.234133,
		-0.118693, 1.857841, 0.447683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.391152, 2.426372, 0.960371>,  <-0.681201, 2.240886, 0.283790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.391152, 2.426372, 0.960371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.100304, 2.284210, 0.725430>,  <0.074205, 2.198913, 0.584466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.100304, 2.284210, 0.725430>,  <-0.391152, 2.426372, 0.960371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.100304, 2.284210, 0.725430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526159, 0.838061, 0.144257,
		0.440968, -0.413933, 0.796371,
		0.727120, -0.355405, -0.587352,
		0.117832, 2.177588, 0.549225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.262665, 2.486894, 1.304322>,  <-0.391152, 2.426372, 0.960371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.262665, 2.486894, 1.304322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.286514, 2.491074, 0.905056>,  <0.300824, 2.493581, 0.665496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.286514, 2.491074, 0.905056>,  <0.262665, 2.486894, 1.304322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.286514, 2.491074, 0.905056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367966, 0.929298, 0.031708,
		0.927925, -0.369182, 0.051564,
		0.059625, 0.010449, -0.998166,
		0.304402, 2.494208, 0.605606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.792334, 2.971575, 1.132424>,  <0.262665, 2.486894, 1.304322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.792334, 2.971575, 1.132424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.606598, 2.944824, 0.779173>,  <0.495156, 2.928774, 0.567222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.606598, 2.944824, 0.779173>,  <0.792334, 2.971575, 1.132424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.606598, 2.944824, 0.779173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072471, 0.990932, -0.113145,
		0.882687, -0.116539, -0.455283,
		-0.464340, -0.066877, -0.883128,
		0.467296, 2.924761, 0.514234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.214360, 3.361846, 0.653623>,  <0.792334, 2.971575, 1.132424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.214360, 3.361846, 0.653623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.856625, 3.366379, 0.474724>,  <0.641983, 3.369098, 0.367384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.856625, 3.366379, 0.474724>,  <1.214360, 3.361846, 0.653623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.856625, 3.366379, 0.474724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251421, 0.839620, -0.481482,
		0.370062, -0.543055, -0.753754,
		-0.894338, 0.011331, -0.447247,
		0.588323, 3.369778, 0.340550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.379105, 3.486921, -0.021065>,  <1.214360, 3.361846, 0.653623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.379105, 3.486921, -0.021065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.990398, 3.581230, -0.024675>,  <0.757175, 3.637816, -0.026842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.990398, 3.581230, -0.024675>,  <1.379105, 3.486921, -0.021065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.990398, 3.581230, -0.024675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208336, 0.839465, -0.501891,
		-0.110756, -0.489601, -0.864884,
		-0.971766, 0.235774, -0.009026,
		0.698869, 3.651962, -0.027383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.269007, 3.737937, -0.735698>,  <1.379105, 3.486921, -0.021065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.269007, 3.737937, -0.735698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.969967, 3.877289, -0.509521>,  <0.790543, 3.960900, -0.373814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.969967, 3.877289, -0.509521>,  <1.269007, 3.737937, -0.735698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.969967, 3.877289, -0.509521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053483, 0.817035, -0.574103,
		-0.661992, -0.459441, -0.592183,
		-0.747600, 0.348380, 0.565443,
		0.745687, 3.981803, -0.339888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.815554, 4.073548, -1.188390>,  <1.269007, 3.737937, -0.735698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.815554, 4.073548, -1.188390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.691143, 4.228882, -0.841413>,  <0.616497, 4.322082, -0.633226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.691143, 4.228882, -0.841413>,  <0.815554, 4.073548, -1.188390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.691143, 4.228882, -0.841413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122134, 0.888814, -0.441694,
		-0.942521, -0.243323, -0.229015,
		-0.311026, 0.388335, 0.867444,
		0.597835, 4.345382, -0.581179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.545463, 5.212342, 4.222613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.636787, 4.868553, 4.405559>,  <1.691582, 4.662280, 4.515326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.636787, 4.868553, 4.405559>,  <1.545463, 5.212342, 4.222613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.636787, 4.868553, 4.405559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782227, 0.441625, 0.439417,
		-0.579650, 0.257438, 0.773131,
		0.228311, -0.859472, 0.457363,
		1.705281, 4.610712, 4.542768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.950406, 5.384552, 4.567847>,  <1.545463, 5.212342, 4.222613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.950406, 5.384552, 4.567847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.559120, 5.306618, 4.596515>,  <0.324349, 5.259857, 4.613716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.559120, 5.306618, 4.596515>,  <0.950406, 5.384552, 4.567847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.559120, 5.306618, 4.596515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207063, -0.890911, 0.404230,
		-0.014906, 0.410264, 0.911845,
		-0.978214, -0.194835, 0.071670,
		0.265656, 5.248168, 4.618016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.824632, 5.212728, 5.277859>,  <0.950406, 5.384552, 4.567847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.824632, 5.212728, 5.277859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.576736, 5.056335, 5.005665>,  <0.427999, 4.962500, 4.842349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.576736, 5.056335, 5.005665>,  <0.824632, 5.212728, 5.277859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.576736, 5.056335, 5.005665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160848, -0.911942, 0.377477,
		-0.768148, 0.124483, 0.628055,
		-0.619739, -0.390980, -0.680484,
		0.390815, 4.939042, 4.801520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.223717, 4.866712, 5.617540>,  <0.824632, 5.212728, 5.277859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.223717, 4.866712, 5.617540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.309715, 4.707176, 5.260956>,  <0.361314, 4.611454, 5.047005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.309715, 4.707176, 5.260956>,  <0.223717, 4.866712, 5.617540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.309715, 4.707176, 5.260956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037523, -0.908760, 0.415629,
		-0.975894, -0.122809, -0.180414,
		0.214996, -0.398840, -0.891461,
		0.374214, 4.587524, 4.993517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.271690, 4.425569, 5.457675>,  <0.223717, 4.866712, 5.617540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.271690, 4.425569, 5.457675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.032051, 4.303337, 5.227890>,  <0.214296, 4.229998, 5.090019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.032051, 4.303337, 5.227890>,  <-0.271690, 4.425569, 5.457675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.032051, 4.303337, 5.227890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139166, -0.938706, 0.315378,
		-0.635622, -0.159538, -0.755336,
		0.759353, -0.305579, -0.574460,
		0.259857, 4.211664, 5.055552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.563510, 3.961624, 5.049974>,  <-0.271690, 4.425569, 5.457675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.563510, 3.961624, 5.049974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.175873, 3.863396, 5.040549>,  <0.056709, 3.804459, 5.034894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.175873, 3.863396, 5.040549>,  <-0.563510, 3.961624, 5.049974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.175873, 3.863396, 5.040549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233382, -0.943548, 0.235056,
		-0.079953, -0.222292, -0.971696,
		0.969092, -0.245570, -0.023561,
		0.114855, 3.789725, 5.033481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.545836, 3.391223, 4.702679>,  <-0.563510, 3.961624, 5.049974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.545836, 3.391223, 4.702679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.208633, 3.382477, 4.917663>,  <-0.006312, 3.377229, 5.046654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.208633, 3.382477, 4.917663>,  <-0.545836, 3.391223, 4.702679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.208633, 3.382477, 4.917663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110875, -0.984780, 0.133844,
		0.526354, -0.172422, -0.832600,
		0.843006, -0.021865, 0.537460,
		0.044268, 3.375917, 5.078901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.221239, 2.849150, 4.445838>,  <-0.545836, 3.391223, 4.702679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.221239, 2.849150, 4.445838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.019196, 2.887497, 4.788924>,  <0.102031, 2.910505, 4.994776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.019196, 2.887497, 4.788924>,  <-0.221239, 2.849150, 4.445838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.019196, 2.887497, 4.788924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002760, -0.993627, 0.112684,
		0.863051, -0.059285, -0.501625,
		0.505109, 0.095867, 0.857714,
		0.132337, 2.916257, 5.046238>
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
