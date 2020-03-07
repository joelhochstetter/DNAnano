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
	<2.568624, 2.134296, 3.212277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.575626, 2.370033, 3.535355>,  <2.579828, 2.511476, 3.729201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.575626, 2.370033, 3.535355>,  <2.568624, 2.134296, 3.212277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.575626, 2.370033, 3.535355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881467, 0.372187, -0.290676,
		-0.471921, 0.717043, -0.512972,
		0.017506, 0.589344, 0.807693,
		2.580878, 2.546836, 3.777663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.848994, 2.815718, 3.039642>,  <2.568624, 2.134296, 3.212277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.848994, 2.815718, 3.039642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.898109, 2.786003, 3.435501>,  <2.927579, 2.768174, 3.673017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.898109, 2.786003, 3.435501>,  <2.848994, 2.815718, 3.039642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.898109, 2.786003, 3.435501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869296, 0.489146, -0.071138,
		-0.478798, 0.869032, 0.124639,
		0.122788, -0.074288, 0.989649,
		2.934946, 2.763717, 3.732396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.610420, 2.870494, 3.075341>,  <2.848994, 2.815718, 3.039642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.610420, 2.870494, 3.075341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760136, 2.522171, 3.202843>,  <3.849965, 2.313177, 3.279344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760136, 2.522171, 3.202843>,  <3.610420, 2.870494, 3.075341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.760136, 2.522171, 3.202843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865137, 0.204168, -0.458098,
		0.333836, 0.447227, 0.829784,
		0.374289, -0.870807, 0.318754,
		3.872422, 2.260929, 3.298469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.298409, 2.889745, 3.474842>,  <3.610420, 2.870494, 3.075341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.298409, 2.889745, 3.474842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.241772, 2.556938, 3.260292>,  <4.207789, 2.357254, 3.131562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.241772, 2.556938, 3.260292>,  <4.298409, 2.889745, 3.474842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.241772, 2.556938, 3.260292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667502, 0.319878, -0.672398,
		0.731021, -0.453238, 0.510081,
		-0.141593, -0.832018, -0.536375,
		4.199294, 2.307333, 3.099380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.870595, 2.529291, 3.591561>,  <4.298409, 2.889745, 3.474842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.870595, 2.529291, 3.591561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.680424, 2.454231, 3.247757>,  <4.566321, 2.409195, 3.041475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.680424, 2.454231, 3.247757>,  <4.870595, 2.529291, 3.591561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.680424, 2.454231, 3.247757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707667, 0.498858, -0.500348,
		0.522664, -0.846125, -0.104376,
		-0.475426, -0.187650, -0.859510,
		4.537796, 2.397937, 2.989904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.361384, 2.298679, 3.163040>,  <4.870595, 2.529291, 3.591561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.361384, 2.298679, 3.163040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.070866, 2.433983, 2.923683>,  <4.896554, 2.515165, 2.780069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.070866, 2.433983, 2.923683>,  <5.361384, 2.298679, 3.163040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.070866, 2.433983, 2.923683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680796, 0.474200, -0.558258,
		0.094921, -0.812843, -0.574697,
		-0.726297, 0.338260, -0.598392,
		4.852976, 2.535461, 2.744166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.689645, 2.414726, 2.488235>,  <5.361384, 2.298679, 3.163040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.689645, 2.414726, 2.488235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.346832, 2.618279, 2.455894>,  <5.141145, 2.740410, 2.436490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.346832, 2.618279, 2.455894>,  <5.689645, 2.414726, 2.488235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.346832, 2.618279, 2.455894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465855, 0.698206, -0.543587,
		-0.220171, -0.503536, -0.835449,
		-0.857032, 0.508880, -0.080850,
		5.089723, 2.770943, 2.431639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.660975, 2.571883, 1.804658>,  <5.689645, 2.414726, 2.488235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.660975, 2.571883, 1.804658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.429657, 2.853531, 1.969482>,  <5.290866, 3.022519, 2.068377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.429657, 2.853531, 1.969482>,  <5.660975, 2.571883, 1.804658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.429657, 2.853531, 1.969482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328141, 0.663175, -0.672698,
		-0.746927, -0.253803, -0.614560,
		-0.578294, 0.704118, 0.412060,
		5.256169, 3.064766, 2.093101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.191121, 3.989432, 1.979253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.862591, 4.213753, 1.937439>,  <5.665473, 4.348345, 1.912351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.862591, 4.213753, 1.937439>,  <6.191121, 3.989432, 1.979253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.862591, 4.213753, 1.937439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568142, -0.787626, 0.238453,
		0.051390, 0.255238, 0.965512,
		-0.821324, 0.560802, -0.104535,
		5.616193, 4.381993, 1.906078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.809823, 4.046497, 2.642256>,  <6.191121, 3.989432, 1.979253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.809823, 4.046497, 2.642256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.623248, 4.028603, 2.288887>,  <5.511303, 4.017866, 2.076865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.623248, 4.028603, 2.288887>,  <5.809823, 4.046497, 2.642256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.623248, 4.028603, 2.288887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443260, -0.852454, 0.277204,
		-0.765479, 0.520884, 0.377786,
		-0.466436, -0.044736, -0.883423,
		5.483317, 4.015182, 2.023860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.161667, 4.031931, 2.750095>,  <5.809823, 4.046497, 2.642256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.161667, 4.031931, 2.750095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.184290, 3.859184, 2.390030>,  <5.197864, 3.755536, 2.173991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.184290, 3.859184, 2.390030>,  <5.161667, 4.031931, 2.750095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.184290, 3.859184, 2.390030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620586, -0.721479, 0.307149,
		-0.782096, 0.541257, -0.308816,
		0.056557, -0.431867, -0.900162,
		5.201257, 3.729624, 2.119981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.490148, 3.961125, 2.518590>,  <5.161667, 4.031931, 2.750095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.490148, 3.961125, 2.518590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.734245, 3.672310, 2.388199>,  <4.880704, 3.499021, 2.309964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.734245, 3.672310, 2.388199>,  <4.490148, 3.961125, 2.518590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.734245, 3.672310, 2.388199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646233, -0.691712, 0.322362,
		-0.458241, 0.013938, -0.888718,
		0.610244, -0.722039, -0.325978,
		4.917318, 3.455698, 2.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.993630, 3.475404, 2.140326>,  <4.490148, 3.961125, 2.518590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.993630, 3.475404, 2.140326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.315914, 3.261520, 2.242241>,  <4.509284, 3.133190, 2.303390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.315914, 3.261520, 2.242241>,  <3.993630, 3.475404, 2.140326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.315914, 3.261520, 2.242241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555763, -0.831239, 0.013002,
		0.204837, -0.152077, -0.966910,
		0.805710, -0.534709, 0.254787,
		4.557627, 3.101108, 2.318677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.046423, 2.825347, 1.781227>,  <3.993630, 3.475404, 2.140326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.046423, 2.825347, 1.781227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.270733, 2.766052, 2.107063>,  <4.405319, 2.730476, 2.302565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.270733, 2.766052, 2.107063>,  <4.046423, 2.825347, 1.781227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.270733, 2.766052, 2.107063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409137, -0.904944, 0.116976,
		0.719819, -0.398876, -0.568118,
		0.560774, -0.148236, 0.814591,
		4.438965, 2.721581, 2.351441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.053114, 2.022449, 1.826459>,  <4.046423, 2.825347, 1.781227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.053114, 2.022449, 1.826459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.204199, 2.156349, 2.171776>,  <4.294850, 2.236690, 2.378966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.204199, 2.156349, 2.171776>,  <4.053114, 2.022449, 1.826459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.204199, 2.156349, 2.171776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455408, -0.744627, 0.487990,
		0.806187, -0.577470, -0.128806,
		0.377712, 0.334752, 0.863293,
		4.317513, 2.256775, 2.430764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.195559, 1.420582, 2.200995>,  <4.053114, 2.022449, 1.826459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.195559, 1.420582, 2.200995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.128171, 1.720871, 2.456505>,  <4.087738, 1.901045, 2.609811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.128171, 1.720871, 2.456505>,  <4.195559, 1.420582, 2.200995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.128171, 1.720871, 2.456505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430559, -0.638991, 0.637424,
		0.886700, -0.167643, 0.430881,
		-0.168470, 0.750723, 0.638774,
		4.077630, 1.946088, 2.648137>
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
