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
	<4.569863, -0.216493, 2.150942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.525417, 0.159431, 2.021694>,  <4.498750, 0.384986, 1.944145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.525417, 0.159431, 2.021694>,  <4.569863, -0.216493, 2.150942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.525417, 0.159431, 2.021694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371852, -0.262200, -0.890492,
		-0.921618, -0.219100, -0.320337,
		-0.111114, 0.939812, -0.323121,
		4.492083, 0.441375, 1.924757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.931700, -0.033834, 1.719441>,  <4.569863, -0.216493, 2.150942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.931700, -0.033834, 1.719441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.289825, 0.129490, 1.648229>,  <4.504701, 0.227484, 1.605501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.289825, 0.129490, 1.648229>,  <3.931700, -0.033834, 1.719441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.289825, 0.129490, 1.648229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142556, -0.641313, -0.753920,
		-0.422006, 0.649617, -0.632384,
		0.895315, 0.408309, -0.178031,
		4.558420, 0.251983, 1.594819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.927359, 0.270571, 1.092411>,  <3.931700, -0.033834, 1.719441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.927359, 0.270571, 1.092411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291029, 0.133972, 1.187728>,  <4.509231, 0.052013, 1.244918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.291029, 0.133972, 1.187728>,  <3.927359, 0.270571, 1.092411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.291029, 0.133972, 1.187728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012613, -0.594565, -0.803949,
		0.416225, 0.727924, -0.544870,
		0.909174, -0.341496, 0.238291,
		4.563781, 0.031523, 1.259215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.357924, 0.354143, 0.427834>,  <3.927359, 0.270571, 1.092411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.357924, 0.354143, 0.427834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.459526, 0.039940, 0.653562>,  <4.520487, -0.148582, 0.788999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.459526, 0.039940, 0.653562>,  <4.357924, 0.354143, 0.427834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.459526, 0.039940, 0.653562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048559, -0.593078, -0.803680,
		0.965983, 0.176736, -0.188788,
		0.254005, -0.785508, 0.564321,
		4.535728, -0.195713, 0.822858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.980571, -0.064859, 0.594183>,  <4.357924, 0.354143, 0.427834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.980571, -0.064859, 0.594183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.158262, -0.201382, 0.925525>,  <5.264877, -0.283295, 1.124330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.158262, -0.201382, 0.925525>,  <4.980571, -0.064859, 0.594183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.158262, -0.201382, 0.925525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571692, 0.819874, 0.031228,
		-0.689804, 0.459692, 0.559333,
		0.444228, -0.341307, 0.828354,
		5.291531, -0.303774, 1.174031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.996802, 0.429240, 1.190044>,  <4.980571, -0.064859, 0.594183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.996802, 0.429240, 1.190044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.324764, 0.200287, 1.194691>,  <5.521541, 0.062915, 1.197478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.324764, 0.200287, 1.194691>,  <4.996802, 0.429240, 1.190044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.324764, 0.200287, 1.194691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564231, 0.811331, 0.152921,
		-0.096954, -0.118826, 0.988170,
		0.819904, -0.572383, 0.011616,
		5.570735, 0.028572, 1.198175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.524836, 0.672640, 1.758306>,  <4.996802, 0.429240, 1.190044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.524836, 0.672640, 1.758306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.719093, 0.466095, 1.476165>,  <5.835648, 0.342168, 1.306881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.719093, 0.466095, 1.476165>,  <5.524836, 0.672640, 1.758306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.719093, 0.466095, 1.476165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615368, 0.775033, -0.143685,
		0.620863, -0.364270, 0.694144,
		0.485644, -0.516363, -0.705350,
		5.864787, 0.311186, 1.264560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.249365, 0.705790, 1.901982>,  <5.524836, 0.672640, 1.758306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.249365, 0.705790, 1.901982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.136017, 0.688206, 1.518781>,  <6.068008, 0.677655, 1.288861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.136017, 0.688206, 1.518781>,  <6.249365, 0.705790, 1.901982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.136017, 0.688206, 1.518781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652152, 0.723584, -0.226106,
		0.703134, -0.688835, -0.176374,
		-0.283371, -0.043960, -0.958002,
		6.051005, 0.675017, 1.231381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.153717, 3.449824, 2.769400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.422953, 3.556023, 3.045505>,  <4.584495, 3.619742, 3.211167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.422953, 3.556023, 3.045505>,  <4.153717, 3.449824, 2.769400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.422953, 3.556023, 3.045505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660092, -0.205224, 0.722607,
		0.333508, -0.942016, 0.037118,
		0.673090, 0.265497, 0.690261,
		4.624880, 3.635672, 3.252583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.130034, 2.950859, 3.253626>,  <4.153717, 3.449824, 2.769400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.130034, 2.950859, 3.253626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.269167, 3.283295, 3.427201>,  <4.352647, 3.482756, 3.531347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.269167, 3.283295, 3.427201>,  <4.130034, 2.950859, 3.253626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.269167, 3.283295, 3.427201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514239, -0.217890, 0.829507,
		0.783946, -0.511678, 0.351589,
		0.347832, 0.831090, 0.433939,
		4.373517, 3.532622, 3.557383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.423219, 2.893683, 3.962100>,  <4.130034, 2.950859, 3.253626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.423219, 2.893683, 3.962100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.271052, 3.261240, 3.920301>,  <4.179753, 3.481774, 3.895222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.271052, 3.261240, 3.920301>,  <4.423219, 2.893683, 3.962100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.271052, 3.261240, 3.920301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631303, -0.175449, 0.755429,
		0.675825, 0.353345, 0.646844,
		-0.380415, 0.918893, -0.104495,
		4.156928, 3.536908, 3.888953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.335275, 3.198697, 4.651814>,  <4.423219, 2.893683, 3.962100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.335275, 3.198697, 4.651814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.076556, 3.360086, 4.392935>,  <3.921325, 3.456920, 4.237607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.076556, 3.360086, 4.392935>,  <4.335275, 3.198697, 4.651814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.076556, 3.360086, 4.392935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723442, -0.055951, 0.688115,
		0.241425, 0.913279, 0.328078,
		-0.646797, 0.403473, -0.647197,
		3.882517, 3.481128, 4.198776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.096257, 3.933813, 4.773089>,  <4.335275, 3.198697, 4.651814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.096257, 3.933813, 4.773089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868309, 3.648912, 4.609164>,  <3.731540, 3.477972, 4.510809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868309, 3.648912, 4.609164>,  <4.096257, 3.933813, 4.773089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.868309, 3.648912, 4.609164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581537, -0.002793, 0.813516,
		-0.580573, 0.701918, -0.412609,
		-0.569869, -0.712252, -0.409813,
		3.697348, 3.435237, 4.486220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.437695, 4.237636, 4.708669>,  <4.096257, 3.933813, 4.773089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.437695, 4.237636, 4.708669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.397724, 3.840851, 4.739716>,  <3.373742, 3.602780, 4.758343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.397724, 3.840851, 4.739716>,  <3.437695, 4.237636, 4.708669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.397724, 3.840851, 4.739716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548124, 0.119983, 0.827747,
		-0.830406, 0.040171, -0.555708,
		-0.099927, -0.991963, 0.077616,
		3.367746, 3.543262, 4.763000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.686339, 4.088618, 4.814836>,  <3.437695, 4.237636, 4.708669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.686339, 4.088618, 4.814836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.923458, 3.807995, 4.973031>,  <3.065729, 3.639621, 5.067948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.923458, 3.807995, 4.973031>,  <2.686339, 4.088618, 4.814836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.923458, 3.807995, 4.973031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502951, 0.061042, 0.862157,
		-0.628994, -0.709994, -0.316664,
		0.592796, -0.701557, 0.395487,
		3.101296, 3.597528, 5.091677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.323486, 3.386102, 4.892571>,  <2.686339, 4.088618, 4.814836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.323486, 3.386102, 4.892571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.604710, 3.445974, 5.170650>,  <2.773445, 3.481898, 5.337498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.604710, 3.445974, 5.170650>,  <2.323486, 3.386102, 4.892571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.604710, 3.445974, 5.170650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709368, 0.078836, 0.700415,
		0.050022, -0.985589, 0.161595,
		0.703061, 0.149666, 0.695201,
		2.815629, 3.490879, 5.379210>
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
