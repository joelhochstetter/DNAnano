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
	<3.928462, 5.358466, 1.317984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.936550, 5.576614, 0.982803>,  <3.941403, 5.707503, 0.781695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.936550, 5.576614, 0.982803>,  <3.928462, 5.358466, 1.317984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.936550, 5.576614, 0.982803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650227, -0.643833, -0.403340,
		-0.759470, -0.536703, -0.367633,
		0.020220, 0.545370, -0.837951,
		3.942616, 5.740225, 0.731418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.845556, 4.801080, 0.900937>,  <3.928462, 5.358466, 1.317984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.845556, 4.801080, 0.900937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.989605, 5.114243, 0.698009>,  <4.076035, 5.302140, 0.576253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.989605, 5.114243, 0.698009>,  <3.845556, 4.801080, 0.900937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.989605, 5.114243, 0.698009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749273, -0.566708, -0.342682,
		-0.555789, -0.256712, -0.790694,
		0.360122, 0.782905, -0.507318,
		4.097641, 5.349114, 0.545814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.881201, 4.740562, 0.170543>,  <3.845556, 4.801080, 0.900937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.881201, 4.740562, 0.170543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192394, 4.953064, 0.304714>,  <4.379110, 5.080565, 0.385217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192394, 4.953064, 0.304714>,  <3.881201, 4.740562, 0.170543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192394, 4.953064, 0.304714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625104, -0.708156, -0.328268,
		0.063141, 0.465064, -0.883023,
		0.777983, 0.531254, 0.335427,
		4.425789, 5.112440, 0.405342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.288255, 4.803999, -0.455553>,  <3.881201, 4.740562, 0.170543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.288255, 4.803999, -0.455553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.531815, 4.852798, -0.142029>,  <4.677950, 4.882078, 0.046086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.531815, 4.852798, -0.142029>,  <4.288255, 4.803999, -0.455553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.531815, 4.852798, -0.142029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749101, -0.413476, -0.517577,
		0.260943, 0.902305, -0.343154,
		0.608898, 0.121999, 0.783811,
		4.714484, 4.889398, 0.093114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.876859, 5.062383, -0.770216>,  <4.288255, 4.803999, -0.455553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.876859, 5.062383, -0.770216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.992535, 4.899750, -0.423561>,  <5.061940, 4.802170, -0.215568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.992535, 4.899750, -0.423561>,  <4.876859, 5.062383, -0.770216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.992535, 4.899750, -0.423561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783815, -0.419153, -0.458197,
		0.549549, 0.811789, 0.197472,
		0.289188, -0.406583, 0.866637,
		5.079291, 4.777775, -0.163570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.540135, 5.293265, -0.508071>,  <4.876859, 5.062383, -0.770216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.540135, 5.293265, -0.508071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.473129, 4.925827, -0.364895>,  <5.432926, 4.705364, -0.278989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.473129, 4.925827, -0.364895>,  <5.540135, 5.293265, -0.508071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.473129, 4.925827, -0.364895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860916, -0.313212, -0.400902,
		0.480378, 0.241001, 0.843300,
		-0.167514, -0.918595, 0.357942,
		5.422875, 4.650249, -0.257512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.150753, 5.126500, -0.243696>,  <5.540135, 5.293265, -0.508071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.150753, 5.126500, -0.243696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.961475, 4.774155, -0.248894>,  <5.847909, 4.562747, -0.252013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.961475, 4.774155, -0.248894>,  <6.150753, 5.126500, -0.243696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.961475, 4.774155, -0.248894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834048, -0.443198, -0.328542,
		0.283641, -0.166303, 0.944400,
		-0.473193, -0.880863, -0.012995,
		5.819518, 4.509896, -0.252792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.471253, 4.708470, 0.239477>,  <6.150753, 5.126500, -0.243696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.471253, 4.708470, 0.239477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.301788, 4.468994, -0.032429>,  <6.200109, 4.325309, -0.195572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.301788, 4.468994, -0.032429>,  <6.471253, 4.708470, 0.239477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.301788, 4.468994, -0.032429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905701, -0.292110, -0.307208,
		-0.014644, -0.745817, 0.665990,
		-0.423663, -0.598689, -0.679765,
		6.174689, 4.289387, -0.236358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.606443, 4.029698, 4.848092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.527264, 3.857910, 4.495644>,  <2.479756, 3.754838, 4.284175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.527264, 3.857910, 4.495644>,  <2.606443, 4.029698, 4.848092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.527264, 3.857910, 4.495644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975748, 0.000640, 0.218895,
		-0.093445, 0.903081, -0.419180,
		-0.197949, -0.429469, -0.881120,
		2.467879, 3.729069, 4.231308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.092434, 4.385540, 4.451954>,  <2.606443, 4.029698, 4.848092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.092434, 4.385540, 4.451954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.074694, 3.997192, 4.357765>,  <2.064049, 3.764184, 4.301252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.074694, 3.997192, 4.357765>,  <2.092434, 4.385540, 4.451954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.074694, 3.997192, 4.357765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986234, 0.004965, 0.165282,
		-0.159298, 0.239560, -0.957724,
		-0.044350, -0.970869, -0.235472,
		2.061388, 3.705932, 4.287124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.620091, 4.310997, 3.841258>,  <2.092434, 4.385540, 4.451954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.620091, 4.310997, 3.841258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.632896, 4.012253, 4.106941>,  <1.640580, 3.833006, 4.266352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.632896, 4.012253, 4.106941>,  <1.620091, 4.310997, 3.841258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.632896, 4.012253, 4.106941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975309, 0.121943, 0.184126,
		-0.218513, -0.653704, -0.724516,
		0.032014, -0.746861, 0.664209,
		1.642501, 3.788195, 4.306204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.022098, 3.910207, 3.739948>,  <1.620091, 4.310997, 3.841258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.022098, 3.910207, 3.739948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.150457, 3.849319, 4.113869>,  <1.227473, 3.812787, 4.338221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.150457, 3.849319, 4.113869>,  <1.022098, 3.910207, 3.739948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.150457, 3.849319, 4.113869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936698, 0.094970, 0.337013,
		-0.140078, -0.983773, -0.112110,
		0.320897, -0.152222, 0.934801,
		1.246727, 3.803653, 4.394309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.574362, 3.486225, 4.058223>,  <1.022098, 3.910207, 3.739948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.574362, 3.486225, 4.058223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.770032, 3.708801, 4.326874>,  <0.887434, 3.842347, 4.488064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.770032, 3.708801, 4.326874>,  <0.574362, 3.486225, 4.058223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.770032, 3.708801, 4.326874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870736, 0.355940, 0.339301,
		-0.050259, -0.750787, 0.658629,
		0.489175, 0.556440, 0.671627,
		0.916785, 3.875733, 4.528362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.364310, 3.297317, 4.725613>,  <0.574362, 3.486225, 4.058223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.364310, 3.297317, 4.725613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.503695, 3.672226, 4.721695>,  <0.587325, 3.897171, 4.719344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.503695, 3.672226, 4.721695>,  <0.364310, 3.297317, 4.725613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.503695, 3.672226, 4.721695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839654, 0.316779, 0.441171,
		0.416600, -0.145506, 0.897370,
		0.348461, 0.937272, -0.009795,
		0.608233, 3.953408, 4.718756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.241828, 3.549650, 5.468199>,  <0.364310, 3.297317, 4.725613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.241828, 3.549650, 5.468199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.287958, 3.868484, 5.231098>,  <0.315636, 4.059785, 5.088838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.287958, 3.868484, 5.231098>,  <0.241828, 3.549650, 5.468199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.287958, 3.868484, 5.231098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736188, 0.469208, 0.487721,
		0.666879, 0.380129, 0.640917,
		0.115326, 0.797086, -0.592751,
		0.322556, 4.107610, 5.053273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.369830, 4.071005, 5.929819>,  <0.241828, 3.549650, 5.468199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.369830, 4.071005, 5.929819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.211252, 4.222427, 5.595268>,  <0.116105, 4.313281, 5.394538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.211252, 4.222427, 5.595268>,  <0.369830, 4.071005, 5.929819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.211252, 4.222427, 5.595268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737542, 0.411168, 0.535698,
		0.546684, 0.829238, 0.116195,
		-0.396445, 0.378556, -0.836377,
		0.092319, 4.335994, 5.344355>
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
