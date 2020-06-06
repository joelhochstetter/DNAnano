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
	<42.916245, 32.269917, 22.274918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587955, 32.495579, 22.238831>,  <42.390984, 32.630978, 22.217178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587955, 32.495579, 22.238831>,  <42.916245, 32.269917, 22.274918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587955, 32.495579, 22.238831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526696, -0.685927, 0.502092,
		0.221376, 0.459596, 0.860096,
		-0.820722, 0.564159, -0.090219,
		42.341740, 32.664825, 22.211765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496319, 32.178326, 22.934620>,  <42.916245, 32.269917, 22.274918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496319, 32.178326, 22.934620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253502, 32.310566, 22.645565>,  <42.107811, 32.389912, 22.472132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253502, 32.310566, 22.645565>,  <42.496319, 32.178326, 22.934620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253502, 32.310566, 22.645565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717564, -0.618792, 0.319685,
		-0.341474, 0.712600, 0.612860,
		-0.607040, 0.330602, -0.722638,
		42.071388, 32.409748, 22.428774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876686, 32.222054, 23.254097>,  <42.496319, 32.178326, 22.934620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876686, 32.222054, 23.254097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802425, 32.256603, 22.862572>,  <41.757870, 32.277332, 22.627657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802425, 32.256603, 22.862572>,  <41.876686, 32.222054, 23.254097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802425, 32.256603, 22.862572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833054, -0.542112, 0.110162,
		-0.521111, 0.835855, 0.172600,
		-0.185649, 0.086378, -0.978812,
		41.746731, 32.282516, 22.568928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130589, 32.190010, 23.111158>,  <41.876686, 32.222054, 23.254097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130589, 32.190010, 23.111158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281662, 32.117310, 22.747990>,  <41.372307, 32.073689, 22.530088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281662, 32.117310, 22.747990>,  <41.130589, 32.190010, 23.111158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281662, 32.117310, 22.747990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770221, -0.605900, -0.199107,
		-0.513921, 0.774500, -0.368829,
		0.377682, -0.181755, -0.907922,
		41.394966, 32.062782, 22.475613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610516, 32.305843, 22.573433>,  <41.130589, 32.190010, 23.111158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610516, 32.305843, 22.573433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854137, 32.025021, 22.425827>,  <41.000309, 31.856527, 22.337263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854137, 32.025021, 22.425827>,  <40.610516, 32.305843, 22.573433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854137, 32.025021, 22.425827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787720, -0.481178, -0.384661,
		0.092493, 0.524958, -0.846087,
		0.609050, -0.702059, -0.369015,
		41.036854, 31.814404, 22.315123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119362, 32.084270, 22.022274>,  <40.610516, 32.305843, 22.573433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119362, 32.084270, 22.022274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370274, 31.793648, 22.134445>,  <40.520821, 31.619276, 22.201748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370274, 31.793648, 22.134445>,  <40.119362, 32.084270, 22.022274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370274, 31.793648, 22.134445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718916, -0.678670, -0.150223,
		0.299464, -0.107373, -0.948047,
		0.627280, -0.726553, 0.280430,
		40.558456, 31.575682, 22.218575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924435, 32.242088, 21.306160>,  <40.119362, 32.084270, 22.022274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924435, 32.242088, 21.306160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543503, 32.363308, 21.292084>,  <39.314945, 32.436039, 21.283638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543503, 32.363308, 21.292084>,  <39.924435, 32.242088, 21.306160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543503, 32.363308, 21.292084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179119, 0.462025, -0.868590,
		-0.246964, -0.833484, -0.494280,
		-0.952326, 0.303045, -0.035189,
		39.257805, 32.454220, 21.281527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696056, 32.110695, 20.607487>,  <39.924435, 32.242088, 21.306160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696056, 32.110695, 20.607487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434322, 32.382381, 20.740459>,  <39.277283, 32.545395, 20.820244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434322, 32.382381, 20.740459>,  <39.696056, 32.110695, 20.607487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434322, 32.382381, 20.740459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092539, 0.508220, -0.856241,
		-0.750524, -0.529503, -0.395398,
		-0.654332, 0.679220, 0.332432,
		39.238022, 32.586147, 20.840189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105919, 32.173149, 20.100090>,  <39.696056, 32.110695, 20.607487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105919, 32.173149, 20.100090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109997, 32.512245, 20.312214>,  <39.112442, 32.715702, 20.439487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109997, 32.512245, 20.312214>,  <39.105919, 32.173149, 20.100090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109997, 32.512245, 20.312214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074049, 0.529522, -0.845058,
		-0.997202, -0.030655, 0.068172,
		0.010193, 0.847742, 0.530310,
		39.113056, 32.766567, 20.471308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463100, 32.604187, 19.863308>,  <39.105919, 32.173149, 20.100090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463100, 32.604187, 19.863308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728092, 32.845955, 20.040306>,  <38.887085, 32.991016, 20.146505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728092, 32.845955, 20.040306>,  <38.463100, 32.604187, 19.863308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728092, 32.845955, 20.040306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013979, 0.580639, -0.814041,
		-0.748952, 0.545470, 0.376211,
		0.662477, 0.604418, 0.442496,
		38.926834, 33.027279, 20.173056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310429, 33.192719, 19.532112>,  <38.463100, 32.604187, 19.863308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310429, 33.192719, 19.532112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662422, 33.253593, 19.712101>,  <38.873619, 33.290119, 19.820095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662422, 33.253593, 19.712101>,  <38.310429, 33.192719, 19.532112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662422, 33.253593, 19.712101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283003, 0.592842, -0.753954,
		-0.381505, 0.790808, 0.478620,
		0.879979, 0.152186, 0.449973,
		38.926414, 33.299248, 19.847094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485859, 33.859970, 19.324533>,  <38.310429, 33.192719, 19.532112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485859, 33.859970, 19.324533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833931, 33.699028, 19.438309>,  <39.042774, 33.602463, 19.506573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833931, 33.699028, 19.438309>,  <38.485859, 33.859970, 19.324533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833931, 33.699028, 19.438309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473946, 0.525553, -0.706519,
		0.134783, 0.749605, 0.648018,
		0.870178, -0.402352, 0.284437,
		39.094986, 33.578323, 19.523640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932961, 34.445152, 19.297289>,  <38.485859, 33.859970, 19.324533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932961, 34.445152, 19.297289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155628, 34.114563, 19.263653>,  <39.289227, 33.916210, 19.243471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155628, 34.114563, 19.263653>,  <38.932961, 34.445152, 19.297289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155628, 34.114563, 19.263653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474794, 0.399582, -0.784159,
		0.681683, 0.396590, 0.614837,
		0.556667, -0.826469, -0.084090,
		39.322628, 33.866623, 19.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622189, 34.642525, 19.288803>,  <38.932961, 34.445152, 19.297289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622189, 34.642525, 19.288803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627586, 34.275196, 19.130562>,  <39.630825, 34.054798, 19.035616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627586, 34.275196, 19.130562>,  <39.622189, 34.642525, 19.288803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627586, 34.275196, 19.130562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614213, 0.319812, -0.721431,
		0.789025, -0.233249, 0.568361,
		0.013495, -0.918322, -0.395604,
		39.631634, 33.999699, 19.011881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320290, 34.559566, 18.997616>,  <39.622189, 34.642525, 19.288803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320290, 34.559566, 18.997616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122334, 34.262581, 18.817024>,  <40.003559, 34.084389, 18.708670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122334, 34.262581, 18.817024>,  <40.320290, 34.559566, 18.997616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122334, 34.262581, 18.817024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597615, 0.086371, -0.797118,
		0.630825, -0.664296, 0.400963,
		-0.494890, -0.742463, -0.451478,
		39.973866, 34.039841, 18.681581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760899, 34.276634, 18.569641>,  <40.320290, 34.559566, 18.997616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760899, 34.276634, 18.569641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428032, 34.144234, 18.391682>,  <40.228310, 34.064793, 18.284906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428032, 34.144234, 18.391682>,  <40.760899, 34.276634, 18.569641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428032, 34.144234, 18.391682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491562, -0.069013, -0.868104,
		0.256637, -0.941104, 0.220136,
		-0.832168, -0.330998, -0.444900,
		40.178383, 34.044933, 18.258211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035515, 33.697666, 18.129034>,  <40.760899, 34.276634, 18.569641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035515, 33.697666, 18.129034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675522, 33.801701, 17.989101>,  <40.459526, 33.864120, 17.905142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675522, 33.801701, 17.989101>,  <41.035515, 33.697666, 18.129034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675522, 33.801701, 17.989101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333133, -0.107244, -0.936761,
		-0.281160, -0.959610, 0.009873,
		-0.899984, 0.260091, -0.349830,
		40.405525, 33.879726, 17.884151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079060, 33.487812, 17.509104>,  <41.035515, 33.697666, 18.129034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079060, 33.487812, 17.509104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757431, 33.723991, 17.481262>,  <40.564453, 33.865700, 17.464558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757431, 33.723991, 17.481262>,  <41.079060, 33.487812, 17.509104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757431, 33.723991, 17.481262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152432, 0.091578, -0.984062,
		-0.574662, -0.801864, -0.163637,
		-0.804070, 0.590447, -0.069603,
		40.516209, 33.901127, 17.460381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515743, 33.185875, 17.036564>,  <41.079060, 33.487812, 17.509104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515743, 33.185875, 17.036564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500320, 33.585445, 17.046818>,  <40.491066, 33.825188, 17.052971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500320, 33.585445, 17.046818>,  <40.515743, 33.185875, 17.036564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500320, 33.585445, 17.046818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076118, 0.022643, -0.996842,
		-0.996353, -0.040383, 0.075163,
		-0.038554, 0.998928, 0.025635,
		40.488754, 33.885124, 17.054508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958290, 33.369316, 16.514799>,  <40.515743, 33.185875, 17.036564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958290, 33.369316, 16.514799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193645, 33.691532, 16.542789>,  <40.334858, 33.884861, 16.559584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193645, 33.691532, 16.542789>,  <39.958290, 33.369316, 16.514799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193645, 33.691532, 16.542789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178199, 0.213602, -0.960531,
		-0.788696, 0.552697, 0.269229,
		0.588390, 0.805543, 0.069977,
		40.370163, 33.933197, 16.563782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572491, 34.015858, 16.279736>,  <39.958290, 33.369316, 16.514799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572491, 34.015858, 16.279736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960991, 34.111080, 16.280586>,  <40.194092, 34.168213, 16.281097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960991, 34.111080, 16.280586>,  <39.572491, 34.015858, 16.279736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960991, 34.111080, 16.280586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107805, 0.447770, -0.887626,
		-0.212258, 0.861877, 0.460560,
		0.971249, 0.238056, 0.002128,
		40.252365, 34.182495, 16.281225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526123, 34.593807, 16.152550>,  <39.572491, 34.015858, 16.279736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526123, 34.593807, 16.152550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910702, 34.564297, 16.046581>,  <40.141449, 34.546593, 15.983000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910702, 34.564297, 16.046581>,  <39.526123, 34.593807, 16.152550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910702, 34.564297, 16.046581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196764, 0.488466, -0.850109,
		0.192122, 0.869458, 0.455116,
		0.961443, -0.073774, -0.264923,
		40.199135, 34.542164, 15.967104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821224, 35.203293, 15.813024>,  <39.526123, 34.593807, 16.152550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821224, 35.203293, 15.813024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085011, 34.937370, 15.672660>,  <40.243282, 34.777817, 15.588442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085011, 34.937370, 15.672660>,  <39.821224, 35.203293, 15.813024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085011, 34.937370, 15.672660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095012, 0.389346, -0.916178,
		0.745705, 0.637529, 0.193597,
		0.659466, -0.664805, -0.350910,
		40.282852, 34.737930, 15.567387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224258, 35.562920, 15.328825>,  <39.821224, 35.203293, 15.813024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224258, 35.562920, 15.328825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284534, 35.175465, 15.249791>,  <40.320702, 34.942993, 15.202371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284534, 35.175465, 15.249791>,  <40.224258, 35.562920, 15.328825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284534, 35.175465, 15.249791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112315, 0.181797, -0.976901,
		0.982180, 0.169403, -0.081397,
		0.150692, -0.968635, -0.197583,
		40.329742, 34.884872, 15.190516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480194, 35.572956, 14.682622>,  <40.224258, 35.562920, 15.328825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480194, 35.572956, 14.682622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336315, 35.202610, 14.728908>,  <40.249989, 34.980400, 14.756680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336315, 35.202610, 14.728908>,  <40.480194, 35.572956, 14.682622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336315, 35.202610, 14.728908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133074, -0.071844, -0.988499,
		0.923532, -0.370957, -0.097367,
		-0.359695, -0.925867, 0.115715,
		40.228405, 34.924850, 14.763622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905582, 35.046391, 14.239960>,  <40.480194, 35.572956, 14.682622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905582, 35.046391, 14.239960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525333, 34.940315, 14.304444>,  <40.297184, 34.876671, 14.343135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525333, 34.940315, 14.304444>,  <40.905582, 35.046391, 14.239960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525333, 34.940315, 14.304444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161552, -0.020678, -0.986648,
		0.264979, -0.963975, -0.023184,
		-0.950625, -0.265186, 0.161211,
		40.240147, 34.860760, 14.352808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818703, 34.634735, 13.616755>,  <40.905582, 35.046391, 14.239960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818703, 34.634735, 13.616755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477715, 34.772423, 13.774133>,  <40.273121, 34.855038, 13.868560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477715, 34.772423, 13.774133>,  <40.818703, 34.634735, 13.616755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477715, 34.772423, 13.774133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330469, 0.228328, -0.915782,
		-0.405068, -0.910702, -0.080888,
		-0.852473, 0.344222, 0.393447,
		40.221973, 34.875690, 13.892167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082859, 34.600918, 13.339744>,  <40.818703, 34.634735, 13.616755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082859, 34.600918, 13.339744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908592, 34.950527, 13.425794>,  <39.804031, 35.160294, 13.477424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908592, 34.950527, 13.425794>,  <40.082859, 34.600918, 13.339744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908592, 34.950527, 13.425794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466734, -0.015003, -0.884271,
		-0.769643, -0.485658, 0.414471,
		-0.435671, 0.874020, 0.215126,
		39.777889, 35.212734, 13.490332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266380, 34.510220, 13.400578>,  <40.082859, 34.600918, 13.339744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266380, 34.510220, 13.400578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472095, 34.826008, 13.266566>,  <39.595524, 35.015480, 13.186159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472095, 34.826008, 13.266566>,  <39.266380, 34.510220, 13.400578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472095, 34.826008, 13.266566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378124, -0.141900, -0.914815,
		-0.769757, 0.597165, 0.225539,
		0.514292, 0.789467, -0.335031,
		39.626385, 35.062847, 13.166057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853409, 35.011211, 13.003564>,  <39.266380, 34.510220, 13.400578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853409, 35.011211, 13.003564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225956, 35.074322, 12.872319>,  <39.449486, 35.112190, 12.793572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225956, 35.074322, 12.872319>,  <38.853409, 35.011211, 13.003564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225956, 35.074322, 12.872319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327063, -0.033318, -0.944415,
		-0.159942, 0.986912, 0.020573,
		0.931369, 0.157780, -0.328112,
		39.505367, 35.121655, 12.773886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007965, 35.309101, 12.383085>,  <38.853409, 35.011211, 13.003564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007965, 35.309101, 12.383085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193703, 34.987976, 12.532685>,  <39.305145, 34.795303, 12.622445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.193703, 34.987976, 12.532685>,  <39.007965, 35.309101, 12.383085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193703, 34.987976, 12.532685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027672, -0.435233, -0.899892,
		0.885221, 0.407513, -0.224315,
		0.464347, -0.802811, 0.374001,
		39.333008, 34.747131, 12.644886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326614, 34.944923, 11.995476>,  <39.007965, 35.309101, 12.383085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326614, 34.944923, 11.995476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988068, 34.829033, 11.816712>,  <37.784939, 34.759499, 11.709455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988068, 34.829033, 11.816712>,  <38.326614, 34.944923, 11.995476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988068, 34.829033, 11.816712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443771, -0.080370, 0.892529,
		-0.294504, 0.953730, -0.060548,
		-0.846365, -0.289723, -0.446907,
		37.734158, 34.742115, 11.682640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726067, 35.330765, 12.131260>,  <38.326614, 34.944923, 11.995476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726067, 35.330765, 12.131260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663765, 34.937084, 12.097602>,  <37.626385, 34.700874, 12.077407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663765, 34.937084, 12.097602>,  <37.726067, 35.330765, 12.131260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663765, 34.937084, 12.097602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395619, -0.015899, 0.918277,
		-0.905110, 0.176317, -0.386894,
		-0.155757, -0.984205, -0.084145,
		37.617039, 34.641823, 12.072358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992256, 35.131420, 12.075765>,  <37.726067, 35.330765, 12.131260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992256, 35.131420, 12.075765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207039, 34.838943, 12.244069>,  <37.335907, 34.663460, 12.345052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207039, 34.838943, 12.244069>,  <36.992256, 35.131420, 12.075765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207039, 34.838943, 12.244069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534005, 0.091520, 0.840513,
		-0.653083, -0.676007, -0.341317,
		0.536955, -0.731190, 0.420762,
		37.368126, 34.619587, 12.370297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487091, 34.869095, 12.659580>,  <36.992256, 35.131420, 12.075765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487091, 34.869095, 12.659580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853626, 34.720161, 12.718505>,  <37.073547, 34.630802, 12.753860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853626, 34.720161, 12.718505>,  <36.487091, 34.869095, 12.659580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853626, 34.720161, 12.718505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187690, -0.074419, 0.979405,
		-0.353703, -0.925110, -0.138076,
		0.916333, -0.372334, 0.147312,
		37.128525, 34.608459, 12.762698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392754, 34.555382, 13.325443>,  <36.487091, 34.869095, 12.659580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392754, 34.555382, 13.325443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787891, 34.526123, 13.270587>,  <37.024975, 34.508568, 13.237673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787891, 34.526123, 13.270587>,  <36.392754, 34.555382, 13.325443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787891, 34.526123, 13.270587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109730, -0.296701, 0.948645,
		-0.110077, -0.952165, -0.285070,
		0.987847, -0.073144, -0.137141,
		37.084244, 34.504181, 13.229445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706379, 33.919090, 13.361778>,  <36.392754, 34.555382, 13.325443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706379, 33.919090, 13.361778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969810, 34.200703, 13.468066>,  <37.127869, 34.369671, 13.531839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969810, 34.200703, 13.468066>,  <36.706379, 33.919090, 13.361778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969810, 34.200703, 13.468066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050928, -0.310601, 0.949175,
		0.750785, -0.638640, -0.168701,
		0.658580, 0.704035, 0.265720,
		37.167385, 34.411915, 13.547782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468384, 33.687099, 13.638281>,  <36.706379, 33.919090, 13.361778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468384, 33.687099, 13.638281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324551, 34.018589, 13.809823>,  <37.238251, 34.217484, 13.912748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324551, 34.018589, 13.809823>,  <37.468384, 33.687099, 13.638281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324551, 34.018589, 13.809823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066317, -0.435737, 0.897627,
		0.930752, 0.351215, 0.101727,
		-0.359587, 0.828722, 0.428855,
		37.216675, 34.267204, 13.938479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875542, 33.665195, 14.220191>,  <37.468384, 33.687099, 13.638281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875542, 33.665195, 14.220191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562008, 33.902111, 14.294810>,  <37.373886, 34.044258, 14.339582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562008, 33.902111, 14.294810>,  <37.875542, 33.665195, 14.220191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562008, 33.902111, 14.294810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018343, -0.278199, 0.960348,
		0.620699, 0.756176, 0.207198,
		-0.783834, 0.592287, 0.186549,
		37.326859, 34.079796, 14.350775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067394, 34.174793, 14.736320>,  <37.875542, 33.665195, 14.220191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067394, 34.174793, 14.736320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667656, 34.174656, 14.750804>,  <37.427814, 34.174572, 14.759494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667656, 34.174656, 14.750804>,  <38.067394, 34.174793, 14.736320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667656, 34.174656, 14.750804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034424, -0.319335, 0.947016,
		0.011235, 0.947642, 0.319137,
		-0.999344, -0.000346, 0.036210,
		37.367851, 34.174553, 14.761667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767460, 34.584446, 15.331087>,  <38.067394, 34.174793, 14.736320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767460, 34.584446, 15.331087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474602, 34.325443, 15.246509>,  <37.298889, 34.170044, 15.195762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474602, 34.325443, 15.246509>,  <37.767460, 34.584446, 15.331087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474602, 34.325443, 15.246509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019140, -0.329856, 0.943837,
		-0.680884, 0.686975, 0.253895,
		-0.732141, -0.647503, -0.211445,
		37.254959, 34.131191, 15.183075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282619, 34.750912, 15.795715>,  <37.767460, 34.584446, 15.331087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282619, 34.750912, 15.795715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197445, 34.376377, 15.684049>,  <37.146339, 34.151657, 15.617048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197445, 34.376377, 15.684049>,  <37.282619, 34.750912, 15.795715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197445, 34.376377, 15.684049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073692, -0.269515, 0.960172,
		-0.974282, 0.225032, -0.011609,
		-0.212940, -0.936334, -0.279167,
		37.133564, 34.095478, 15.600299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920609, 34.549385, 16.410843>,  <37.282619, 34.750912, 15.795715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920609, 34.549385, 16.410843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976177, 34.198582, 16.226860>,  <37.009518, 33.988098, 16.116470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976177, 34.198582, 16.226860>,  <36.920609, 34.549385, 16.410843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976177, 34.198582, 16.226860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122320, -0.476099, 0.870843,
		-0.982721, -0.064713, -0.173413,
		0.138917, -0.877007, -0.459957,
		37.017853, 33.935478, 16.088873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423027, 34.167156, 16.681416>,  <36.920609, 34.549385, 16.410843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423027, 34.167156, 16.681416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705776, 33.915539, 16.552021>,  <36.875423, 33.764568, 16.474384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705776, 33.915539, 16.552021>,  <36.423027, 34.167156, 16.681416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705776, 33.915539, 16.552021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119629, -0.557050, 0.821818,
		-0.697155, -0.542219, -0.469013,
		0.706869, -0.629042, -0.323485,
		36.917839, 33.726826, 16.454975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153252, 33.471268, 16.596903>,  <36.423027, 34.167156, 16.681416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153252, 33.471268, 16.596903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546440, 33.446484, 16.666103>,  <36.782352, 33.431614, 16.707623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546440, 33.446484, 16.666103>,  <36.153252, 33.471268, 16.596903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546440, 33.446484, 16.666103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167775, -0.686685, 0.707330,
		0.074967, -0.724310, -0.685387,
		0.982971, -0.061964, 0.173000,
		36.841331, 33.427895, 16.718002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185986, 32.921875, 17.039045>,  <36.153252, 33.471268, 16.596903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185986, 32.921875, 17.039045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574215, 33.012344, 17.072113>,  <36.807152, 33.066628, 17.091953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574215, 33.012344, 17.072113>,  <36.185986, 32.921875, 17.039045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574215, 33.012344, 17.072113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076619, -0.615503, 0.784401,
		0.228294, -0.754984, -0.614720,
		0.970573, 0.226173, 0.082670,
		36.865387, 33.080196, 17.096914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482971, 32.187077, 17.087894>,  <36.185986, 32.921875, 17.039045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482971, 32.187077, 17.087894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715534, 32.478786, 17.232189>,  <36.855072, 32.653812, 17.318766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715534, 32.478786, 17.232189>,  <36.482971, 32.187077, 17.087894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715534, 32.478786, 17.232189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130637, -0.521300, 0.843315,
		0.803059, -0.443181, -0.398356,
		0.581404, 0.729271, 0.360739,
		36.889954, 32.697567, 17.340410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015976, 31.806431, 17.371885>,  <36.482971, 32.187077, 17.087894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015976, 31.806431, 17.371885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028370, 32.166611, 17.545425>,  <37.035809, 32.382721, 17.649549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028370, 32.166611, 17.545425>,  <37.015976, 31.806431, 17.371885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028370, 32.166611, 17.545425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198597, -0.430952, 0.880250,
		0.979591, 0.058884, -0.192181,
		0.030988, 0.900452, 0.433851,
		37.037666, 32.436745, 17.675581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643822, 31.778522, 17.772123>,  <37.015976, 31.806431, 17.371885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643822, 31.778522, 17.772123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394035, 32.055962, 17.915771>,  <37.244164, 32.222424, 18.001961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394035, 32.055962, 17.915771>,  <37.643822, 31.778522, 17.772123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394035, 32.055962, 17.915771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175583, -0.323358, 0.929844,
		0.761062, 0.643710, 0.080142,
		-0.624464, 0.693597, 0.359120,
		37.206696, 32.264042, 18.023508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948738, 31.910887, 18.419889>,  <37.643822, 31.778522, 17.772123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948738, 31.910887, 18.419889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571842, 32.041744, 18.448624>,  <37.345703, 32.120258, 18.465864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571842, 32.041744, 18.448624>,  <37.948738, 31.910887, 18.419889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571842, 32.041744, 18.448624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016279, -0.258954, 0.965752,
		0.334540, 0.908802, 0.249323,
		-0.942241, 0.327142, 0.071836,
		37.289169, 32.139885, 18.470175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975620, 32.167717, 19.178734>,  <37.948738, 31.910887, 18.419889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975620, 32.167717, 19.178734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594532, 32.144054, 19.059521>,  <37.365879, 32.129856, 18.987993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594532, 32.144054, 19.059521>,  <37.975620, 32.167717, 19.178734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594532, 32.144054, 19.059521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289891, -0.116908, 0.949893,
		-0.091038, 0.991379, 0.094231,
		-0.952720, -0.059160, -0.298035,
		37.308716, 32.126305, 18.970110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576931, 32.607857, 19.548960>,  <37.975620, 32.167717, 19.178734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576931, 32.607857, 19.548960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301117, 32.351147, 19.414692>,  <37.135628, 32.197121, 19.334131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301117, 32.351147, 19.414692>,  <37.576931, 32.607857, 19.548960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301117, 32.351147, 19.414692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271679, -0.200432, 0.941285,
		-0.671370, 0.740240, -0.036153,
		-0.689531, -0.641772, -0.335672,
		37.094257, 32.158615, 19.313990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045067, 32.871422, 19.772993>,  <37.576931, 32.607857, 19.548960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045067, 32.871422, 19.772993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973141, 32.484543, 19.701225>,  <36.929985, 32.252415, 19.658165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973141, 32.484543, 19.701225>,  <37.045067, 32.871422, 19.772993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973141, 32.484543, 19.701225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156240, -0.151996, 0.975954,
		-0.971213, 0.203526, -0.123784,
		-0.179817, -0.967200, -0.179419,
		36.919197, 32.194382, 19.647400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445408, 32.651550, 20.082630>,  <37.045067, 32.871422, 19.772993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445408, 32.651550, 20.082630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619911, 32.293339, 20.047520>,  <36.724613, 32.078411, 20.026453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619911, 32.293339, 20.047520>,  <36.445408, 32.651550, 20.082630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619911, 32.293339, 20.047520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163269, -0.174707, 0.970989,
		-0.884886, -0.409270, -0.222430,
		0.436256, -0.895531, -0.087774,
		36.750790, 32.024681, 20.021187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919380, 32.122837, 20.281160>,  <36.445408, 32.651550, 20.082630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919380, 32.122837, 20.281160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273460, 31.938210, 20.304405>,  <36.485909, 31.827435, 20.318352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273460, 31.938210, 20.304405>,  <35.919380, 32.122837, 20.281160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273460, 31.938210, 20.304405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176404, -0.217441, 0.960000,
		-0.430467, -0.860045, -0.273901,
		0.885200, -0.461565, 0.058114,
		36.539021, 31.799740, 20.321840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782810, 31.534197, 20.693766>,  <35.919380, 32.122837, 20.281160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782810, 31.534197, 20.693766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176281, 31.603497, 20.713238>,  <36.412361, 31.645077, 20.724920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176281, 31.603497, 20.713238>,  <35.782810, 31.534197, 20.693766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176281, 31.603497, 20.713238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028837, -0.115267, 0.992916,
		0.177632, -0.978110, -0.108390,
		0.983675, 0.173248, 0.048681,
		36.471382, 31.655470, 20.727842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132858, 30.886160, 20.889278>,  <35.782810, 31.534197, 20.693766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132858, 30.886160, 20.889278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341740, 31.214184, 20.982925>,  <36.467068, 31.410997, 21.039114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341740, 31.214184, 20.982925>,  <36.132858, 30.886160, 20.889278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341740, 31.214184, 20.982925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022271, -0.261316, 0.964996,
		0.852533, -0.509134, -0.118195,
		0.522199, 0.820059, 0.234119,
		36.498398, 31.460201, 21.053162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805576, 30.532177, 21.360662>,  <36.132858, 30.886160, 20.889278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805576, 30.532177, 21.360662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681755, 30.442646, 21.730328>,  <35.607460, 30.388927, 21.952127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681755, 30.442646, 21.730328>,  <35.805576, 30.532177, 21.360662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681755, 30.442646, 21.730328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612251, 0.790546, -0.013615,
		-0.727546, -0.570034, -0.381757,
		-0.309558, -0.223826, 0.924163,
		35.588886, 30.375498, 22.007576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014526, 30.646639, 21.383713>,  <35.805576, 30.532177, 21.360662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014526, 30.646639, 21.383713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191200, 30.682961, 21.740738>,  <35.297207, 30.704754, 21.954952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191200, 30.682961, 21.740738>,  <35.014526, 30.646639, 21.383713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191200, 30.682961, 21.740738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587316, 0.781329, 0.211150,
		-0.678212, -0.617479, 0.398433,
		0.441688, 0.090802, 0.892562,
		35.323708, 30.710201, 22.008507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540539, 30.812399, 21.883566>,  <35.014526, 30.646639, 21.383713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540539, 30.812399, 21.883566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883789, 30.956234, 22.030163>,  <35.089741, 31.042534, 22.118120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883789, 30.956234, 22.030163>,  <34.540539, 30.812399, 21.883566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883789, 30.956234, 22.030163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378692, 0.925281, -0.021155,
		-0.346716, -0.120635, 0.930180,
		0.858126, 0.359586, 0.366493,
		35.141228, 31.064110, 22.140110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378582, 31.293066, 22.422176>,  <34.540539, 30.812399, 21.883566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378582, 31.293066, 22.422176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746944, 31.384438, 22.295849>,  <34.967964, 31.439260, 22.220053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746944, 31.384438, 22.295849>,  <34.378582, 31.293066, 22.422176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746944, 31.384438, 22.295849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202075, 0.972678, 0.114292,
		0.333300, -0.041434, 0.941910,
		0.920911, 0.228430, -0.315821,
		35.023216, 31.452967, 22.201103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802261, 31.527803, 22.960381>,  <34.378582, 31.293066, 22.422176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802261, 31.527803, 22.960381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824223, 31.694881, 22.597610>,  <34.837399, 31.795128, 22.379948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824223, 31.694881, 22.597610>,  <34.802261, 31.527803, 22.960381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824223, 31.694881, 22.597610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378550, 0.849196, 0.368193,
		0.923951, 0.323103, 0.204742,
		0.054902, 0.417697, -0.906926,
		34.840694, 31.820190, 22.325533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272503, 32.132210, 22.884050>,  <34.802261, 31.527803, 22.960381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272503, 32.132210, 22.884050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953617, 32.142525, 22.642792>,  <34.762287, 32.148712, 22.498035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953617, 32.142525, 22.642792>,  <35.272503, 32.132210, 22.884050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953617, 32.142525, 22.642792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271814, 0.876759, 0.396749,
		0.539045, 0.480238, -0.691955,
		-0.797212, 0.025783, -0.603149,
		34.714455, 32.150261, 22.461847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390057, 32.009472, 23.543827>,  <35.272503, 32.132210, 22.884050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390057, 32.009472, 23.543827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656410, 32.302334, 23.601158>,  <35.816223, 32.478050, 23.635557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656410, 32.302334, 23.601158>,  <35.390057, 32.009472, 23.543827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656410, 32.302334, 23.601158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012622, -0.203142, 0.979068,
		0.745947, -0.650138, -0.144511,
		0.665886, 0.732157, 0.143327,
		35.856174, 32.521980, 23.644156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065285, 31.743771, 23.740669>,  <35.390057, 32.009472, 23.543827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065285, 31.743771, 23.740669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992294, 32.112240, 23.878159>,  <35.948502, 32.333321, 23.960651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992294, 32.112240, 23.878159>,  <36.065285, 31.743771, 23.740669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992294, 32.112240, 23.878159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062544, -0.359758, 0.930947,
		0.981220, 0.148376, 0.123260,
		-0.182474, 0.921173, 0.343721,
		35.937553, 32.388592, 23.981276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367439, 31.777933, 24.335638>,  <36.065285, 31.743771, 23.740669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367439, 31.777933, 24.335638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148636, 32.108669, 24.387978>,  <36.017353, 32.307110, 24.419382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148636, 32.108669, 24.387978>,  <36.367439, 31.777933, 24.335638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148636, 32.108669, 24.387978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101662, -0.089538, 0.990781,
		0.830933, 0.555266, -0.035080,
		-0.547006, 0.826839, 0.130850,
		35.984535, 32.356720, 24.427233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647713, 32.023075, 24.905308>,  <36.367439, 31.777933, 24.335638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647713, 32.023075, 24.905308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303265, 32.221661, 24.861488>,  <36.096596, 32.340813, 24.835196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303265, 32.221661, 24.861488>,  <36.647713, 32.023075, 24.905308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303265, 32.221661, 24.861488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168648, -0.075663, 0.982768,
		0.479618, 0.864755, 0.148881,
		-0.861118, 0.496462, -0.109550,
		36.044930, 32.370598, 24.828623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604095, 32.531551, 25.485512>,  <36.647713, 32.023075, 24.905308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604095, 32.531551, 25.485512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224308, 32.480194, 25.370949>,  <35.996437, 32.449379, 25.302212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224308, 32.480194, 25.370949>,  <36.604095, 32.531551, 25.485512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224308, 32.480194, 25.370949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267472, -0.146476, 0.952367,
		-0.164231, 0.980846, 0.104732,
		-0.949466, -0.128396, -0.286405,
		35.939468, 32.441677, 25.285027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257179, 32.638454, 26.145658>,  <36.604095, 32.531551, 25.485512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257179, 32.638454, 26.145658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963161, 32.505810, 25.909103>,  <35.786751, 32.426224, 25.767170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963161, 32.505810, 25.909103>,  <36.257179, 32.638454, 26.145658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963161, 32.505810, 25.909103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534115, -0.254076, 0.806329,
		-0.417648, 0.908558, 0.009636,
		-0.735045, -0.331615, -0.591389,
		35.742649, 32.406326, 25.731688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601364, 32.862007, 26.378624>,  <36.257179, 32.638454, 26.145658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601364, 32.862007, 26.378624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498360, 32.550194, 26.150234>,  <35.436558, 32.363106, 26.013201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498360, 32.550194, 26.150234>,  <35.601364, 32.862007, 26.378624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498360, 32.550194, 26.150234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619662, -0.320179, 0.716593,
		-0.741424, 0.538340, -0.400600,
		-0.257507, -0.779536, -0.570977,
		35.421108, 32.316334, 25.978941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879059, 32.891182, 26.279877>,  <35.601364, 32.862007, 26.378624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879059, 32.891182, 26.279877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983276, 32.506561, 26.245140>,  <35.045807, 32.275791, 26.224298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983276, 32.506561, 26.245140>,  <34.879059, 32.891182, 26.279877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983276, 32.506561, 26.245140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605432, -0.232784, 0.761094,
		-0.752045, -0.145717, -0.642802,
		0.260539, -0.961550, -0.086842,
		35.061440, 32.218098, 26.219088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266655, 32.438297, 26.344452>,  <34.879059, 32.891182, 26.279877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266655, 32.438297, 26.344452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582565, 32.216583, 26.449547>,  <34.772110, 32.083557, 26.512604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582565, 32.216583, 26.449547>,  <34.266655, 32.438297, 26.344452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582565, 32.216583, 26.449547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506040, -0.346674, 0.789773,
		-0.346674, -0.756695, -0.554283,
		-0.789773, 0.554283, -0.262735,
		34.819496, 32.050297, 26.528368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993172, 31.902771, 26.648479>,  <34.266655, 32.438297, 26.344452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993172, 31.902771, 26.648479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370541, 31.872307, 26.777576>,  <34.596962, 31.854029, 26.855034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370541, 31.872307, 26.777576>,  <33.993172, 31.902771, 26.648479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370541, 31.872307, 26.777576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330051, -0.309764, 0.891691,
		0.032062, -0.947759, -0.317374,
		0.943418, -0.076160, 0.322741,
		34.653564, 31.849459, 26.874399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043514, 31.250282, 27.058807>,  <33.993172, 31.902771, 26.648479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043514, 31.250282, 27.058807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361504, 31.475101, 27.150124>,  <34.552299, 31.609993, 27.204914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361504, 31.475101, 27.150124>,  <34.043514, 31.250282, 27.058807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361504, 31.475101, 27.150124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291035, 0.023165, 0.956432,
		0.532271, -0.826781, 0.181991,
		0.794976, 0.562047, 0.228292,
		34.599995, 31.643715, 27.218611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237988, 30.977299, 27.643015>,  <34.043514, 31.250282, 27.058807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237988, 30.977299, 27.643015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405094, 31.340584, 27.633015>,  <34.505356, 31.558554, 27.627014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405094, 31.340584, 27.633015>,  <34.237988, 30.977299, 27.643015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405094, 31.340584, 27.633015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234538, 0.134385, 0.962773,
		0.877761, -0.396349, 0.269152,
		0.417764, 0.908212, -0.024999,
		34.530422, 31.613047, 27.625515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611824, 31.042078, 28.220165>,  <34.237988, 30.977299, 27.643015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611824, 31.042078, 28.220165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551079, 31.421829, 28.110168>,  <34.514629, 31.649679, 28.044170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551079, 31.421829, 28.110168>,  <34.611824, 31.042078, 28.220165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551079, 31.421829, 28.110168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114427, 0.259460, 0.958951,
		0.981755, 0.177098, 0.069231,
		-0.151865, 0.949377, -0.274991,
		34.505520, 31.706642, 28.027672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810085, 31.319313, 28.746649>,  <34.611824, 31.042078, 28.220165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810085, 31.319313, 28.746649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589104, 31.607048, 28.578197>,  <34.456512, 31.779688, 28.477127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589104, 31.607048, 28.578197>,  <34.810085, 31.319313, 28.746649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589104, 31.607048, 28.578197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227071, 0.356239, 0.906384,
		0.802017, 0.596363, -0.033466,
		-0.552456, 0.719336, -0.421127,
		34.423367, 31.822849, 28.451859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838207, 31.870562, 29.244263>,  <34.810085, 31.319313, 28.746649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838207, 31.870562, 29.244263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530506, 31.981548, 29.014042>,  <34.345886, 32.048141, 28.875910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530506, 31.981548, 29.014042>,  <34.838207, 31.870562, 29.244263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530506, 31.981548, 29.014042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450182, 0.403861, 0.796387,
		0.453412, 0.871728, -0.185762,
		-0.769255, 0.277465, -0.575552,
		34.299728, 32.064789, 28.841377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777512, 32.561337, 29.234829>,  <34.838207, 31.870562, 29.244263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777512, 32.561337, 29.234829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408451, 32.438713, 29.141251>,  <34.187016, 32.365139, 29.085104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408451, 32.438713, 29.141251>,  <34.777512, 32.561337, 29.234829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408451, 32.438713, 29.141251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342614, 0.373221, 0.862161,
		-0.176994, 0.875628, -0.449386,
		-0.922653, -0.306563, -0.233945,
		34.131657, 32.346745, 29.071068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463219, 33.078133, 29.402464>,  <34.777512, 32.561337, 29.234829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463219, 33.078133, 29.402464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190125, 32.786804, 29.379086>,  <34.026268, 32.612007, 29.365059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190125, 32.786804, 29.379086>,  <34.463219, 33.078133, 29.402464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190125, 32.786804, 29.379086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401626, 0.307259, 0.862722,
		-0.610379, 0.612489, -0.502290,
		-0.682740, -0.728320, -0.058446,
		33.985302, 32.568310, 29.361551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941986, 33.471333, 29.622913>,  <34.463219, 33.078133, 29.402464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941986, 33.471333, 29.622913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829296, 33.089584, 29.662525>,  <33.761681, 32.860535, 29.686293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829296, 33.089584, 29.662525>,  <33.941986, 33.471333, 29.622913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829296, 33.089584, 29.662525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533593, 0.241616, 0.810494,
		-0.797438, 0.175499, -0.577315,
		-0.281729, -0.954370, 0.099029,
		33.744778, 32.803272, 29.692234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322033, 33.527058, 29.990606>,  <33.941986, 33.471333, 29.622913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322033, 33.527058, 29.990606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423203, 33.142162, 30.030865>,  <33.483906, 32.911224, 30.055019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423203, 33.142162, 30.030865>,  <33.322033, 33.527058, 29.990606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423203, 33.142162, 30.030865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331706, 0.011480, 0.943313,
		-0.908846, -0.271970, -0.316276,
		0.252922, -0.962237, 0.100648,
		33.499081, 32.853493, 30.061060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824650, 33.191826, 30.511541>,  <33.322033, 33.527058, 29.990606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824650, 33.191826, 30.511541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115990, 32.917885, 30.502769>,  <33.290794, 32.753521, 30.497507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115990, 32.917885, 30.502769>,  <32.824650, 33.191826, 30.511541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115990, 32.917885, 30.502769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016770, -0.014177, 0.999759,
		-0.685000, -0.728542, 0.001160,
		0.728350, -0.684854, -0.021929,
		33.334496, 32.712429, 30.496191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573017, 32.681911, 30.980148>,  <32.824650, 33.191826, 30.511541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573017, 32.681911, 30.980148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966991, 32.620323, 30.948647>,  <33.203377, 32.583370, 30.929745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966991, 32.620323, 30.948647>,  <32.573017, 32.681911, 30.980148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966991, 32.620323, 30.948647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065897, -0.086904, 0.994035,
		-0.159898, -0.984246, -0.075448,
		0.984931, -0.153972, -0.078754,
		33.262470, 32.574131, 30.925020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680576, 32.072369, 31.313490>,  <32.573017, 32.681911, 30.980148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680576, 32.072369, 31.313490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043892, 32.239643, 31.318008>,  <33.261883, 32.340008, 31.320721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043892, 32.239643, 31.318008>,  <32.680576, 32.072369, 31.313490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043892, 32.239643, 31.318008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073088, -0.185221, 0.979975,
		0.411907, -0.889276, -0.198799,
		0.908290, 0.418188, 0.011298,
		33.316380, 32.365101, 31.321398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170593, 31.575087, 31.645243>,  <32.680576, 32.072369, 31.313490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170593, 31.575087, 31.645243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314617, 31.946136, 31.684982>,  <33.401031, 32.168766, 31.708826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314617, 31.946136, 31.684982>,  <33.170593, 31.575087, 31.645243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314617, 31.946136, 31.684982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197091, -0.179719, 0.963772,
		0.911875, -0.327431, -0.247535,
		0.360056, 0.927626, 0.099347,
		33.422634, 32.224422, 31.714787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841270, 31.540644, 31.783043>,  <33.170593, 31.575087, 31.645243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841270, 31.540644, 31.783043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670200, 31.868580, 31.935333>,  <33.567558, 32.065342, 32.026707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670200, 31.868580, 31.935333>,  <33.841270, 31.540644, 31.783043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670200, 31.868580, 31.935333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059992, -0.394518, 0.916928,
		0.901939, 0.414990, 0.119542,
		-0.427677, 0.819841, 0.380727,
		33.541897, 32.114532, 32.049553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157867, 31.602818, 32.426132>,  <33.841270, 31.540644, 31.783043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157867, 31.602818, 32.426132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868130, 31.872227, 32.485043>,  <33.694286, 32.033875, 32.520390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868130, 31.872227, 32.485043>,  <34.157867, 31.602818, 32.426132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868130, 31.872227, 32.485043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081855, -0.128097, 0.988378,
		0.684563, 0.727980, 0.037655,
		-0.724343, 0.673525, 0.147279,
		33.650826, 32.074284, 32.529228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458031, 32.067608, 32.837967>,  <34.157867, 31.602818, 32.426132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458031, 32.067608, 32.837967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068462, 32.134407, 32.899410>,  <33.834721, 32.174484, 32.936275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068462, 32.134407, 32.899410>,  <34.458031, 32.067608, 32.837967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068462, 32.134407, 32.899410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178548, 0.146320, 0.972991,
		0.140010, 0.975040, -0.172321,
		-0.973919, 0.166996, 0.153606,
		33.776287, 32.184505, 32.945492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490917, 32.588238, 33.245823>,  <34.458031, 32.067608, 32.837967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490917, 32.588238, 33.245823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107159, 32.483891, 33.288715>,  <33.876904, 32.421284, 33.314453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107159, 32.483891, 33.288715>,  <34.490917, 32.588238, 33.245823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107159, 32.483891, 33.288715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065203, 0.164768, 0.984175,
		-0.274407, 0.951210, -0.141069,
		-0.959400, -0.260867, 0.107235,
		33.819340, 32.405632, 33.320885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168030, 33.147800, 33.529850>,  <34.490917, 32.588238, 33.245823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168030, 33.147800, 33.529850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901806, 32.863770, 33.621777>,  <33.742069, 32.693352, 33.676933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901806, 32.863770, 33.621777>,  <34.168030, 33.147800, 33.529850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901806, 32.863770, 33.621777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125589, 0.410082, 0.903360,
		-0.735699, 0.572381, -0.362114,
		-0.665563, -0.710079, 0.229812,
		33.702137, 32.650745, 33.690720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505917, 33.482136, 33.797939>,  <34.168030, 33.147800, 33.529850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505917, 33.482136, 33.797939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484970, 33.109299, 33.941303>,  <33.472401, 32.885597, 34.027321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484970, 33.109299, 33.941303>,  <33.505917, 33.482136, 33.797939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484970, 33.109299, 33.941303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201493, 0.361381, 0.910387,
		-0.978089, -0.024541, -0.206735,
		-0.052369, -0.932095, 0.358408,
		33.469261, 32.829670, 34.048824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779503, 33.249744, 34.183937>,  <33.505917, 33.482136, 33.797939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779503, 33.249744, 34.183937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076477, 33.028107, 34.334545>,  <33.254662, 32.895123, 34.424911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076477, 33.028107, 34.334545>,  <32.779503, 33.249744, 34.183937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076477, 33.028107, 34.334545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281051, 0.252568, 0.925862,
		-0.608112, -0.793214, 0.031787,
		0.742435, -0.554094, 0.376523,
		33.299206, 32.861877, 34.447502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439522, 32.720764, 34.555737>,  <32.779503, 33.249744, 34.183937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439522, 32.720764, 34.555737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820534, 32.712627, 34.677246>,  <33.049141, 32.707745, 34.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820534, 32.712627, 34.677246>,  <32.439522, 32.720764, 34.555737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820534, 32.712627, 34.677246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302504, 0.049479, 0.951863,
		-0.034390, -0.998568, 0.040978,
		0.952528, -0.020338, 0.303772,
		33.106293, 32.706524, 34.768379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450485, 32.221642, 35.040859>,  <32.439522, 32.720764, 34.555737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450485, 32.221642, 35.040859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780327, 32.420395, 35.149036>,  <32.978230, 32.539646, 35.213943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780327, 32.420395, 35.149036>,  <32.450485, 32.221642, 35.040859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780327, 32.420395, 35.149036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318743, 0.013133, 0.947750,
		0.467374, -0.867715, 0.169209,
		0.824600, 0.496888, 0.270440,
		33.027706, 32.569462, 35.230167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723766, 31.891529, 35.702755>,  <32.450485, 32.221642, 35.040859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723766, 31.891529, 35.702755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904564, 32.247726, 35.681885>,  <33.013042, 32.461445, 35.669361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904564, 32.247726, 35.681885>,  <32.723766, 31.891529, 35.702755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904564, 32.247726, 35.681885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096119, 0.106770, 0.989627,
		0.886830, -0.442286, 0.133852,
		0.451990, 0.890496, -0.052175,
		33.040161, 32.514874, 35.666233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107349, 31.810120, 36.210171>,  <32.723766, 31.891529, 35.702755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107349, 31.810120, 36.210171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110603, 32.204651, 36.144341>,  <33.112556, 32.441372, 36.104843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110603, 32.204651, 36.144341>,  <33.107349, 31.810120, 36.210171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110603, 32.204651, 36.144341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147054, 0.163976, 0.975442,
		0.989095, 0.016272, 0.146377,
		0.008130, 0.986330, -0.164580,
		33.113041, 32.500549, 36.094967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490910, 32.083698, 36.810154>,  <33.107349, 31.810120, 36.210171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490910, 32.083698, 36.810154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274441, 32.373470, 36.639355>,  <33.144562, 32.547333, 36.536873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274441, 32.373470, 36.639355>,  <33.490910, 32.083698, 36.810154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274441, 32.373470, 36.639355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224680, 0.364759, 0.903587,
		0.810343, 0.584932, -0.034630,
		-0.541168, 0.724434, -0.427003,
		33.112091, 32.590801, 36.511253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727440, 32.701595, 37.097462>,  <33.490910, 32.083698, 36.810154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727440, 32.701595, 37.097462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357639, 32.778812, 36.965984>,  <33.135761, 32.825142, 36.887096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357639, 32.778812, 36.965984>,  <33.727440, 32.701595, 37.097462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357639, 32.778812, 36.965984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256576, 0.322588, 0.911101,
		0.281912, 0.926646, -0.248703,
		-0.924497, 0.193039, -0.328697,
		33.080292, 32.836723, 36.867374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622696, 33.479847, 37.227596>,  <33.727440, 32.701595, 37.097462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622696, 33.479847, 37.227596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265022, 33.304173, 37.192852>,  <33.050415, 33.198769, 37.172005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265022, 33.304173, 37.192852>,  <33.622696, 33.479847, 37.227596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265022, 33.304173, 37.192852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277991, 0.392616, 0.876683,
		-0.350923, 0.808066, -0.473162,
		-0.894189, -0.439183, -0.086857,
		32.996765, 33.172417, 37.166794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131992, 33.979897, 37.340878>,  <33.622696, 33.479847, 37.227596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131992, 33.979897, 37.340878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904266, 33.659019, 37.412834>,  <32.767632, 33.466492, 37.456009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904266, 33.659019, 37.412834>,  <33.131992, 33.979897, 37.340878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904266, 33.659019, 37.412834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311389, 0.412920, 0.855882,
		-0.760863, 0.431255, -0.484878,
		-0.569319, -0.802194, 0.179888,
		32.733471, 33.418362, 37.466801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539181, 34.239670, 37.592640>,  <33.131992, 33.979897, 37.340878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539181, 34.239670, 37.592640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544876, 33.869251, 37.743500>,  <32.548294, 33.646999, 37.834015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544876, 33.869251, 37.743500>,  <32.539181, 34.239670, 37.592640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544876, 33.869251, 37.743500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252041, 0.361685, 0.897585,
		-0.967612, -0.107838, -0.228251,
		0.014239, -0.926043, 0.377151,
		32.549149, 33.591438, 37.856644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812353, 34.101994, 37.863289>,  <32.539181, 34.239670, 37.592640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812353, 34.101994, 37.863289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071476, 33.864849, 38.054646>,  <32.226952, 33.722561, 38.169460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071476, 33.864849, 38.054646>,  <31.812353, 34.101994, 37.863289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071476, 33.864849, 38.054646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470467, 0.182560, 0.863326,
		-0.599170, -0.784337, -0.160659,
		0.647809, -0.592864, 0.478389,
		32.265820, 33.686989, 38.198162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394196, 33.761124, 38.382427>,  <31.812353, 34.101994, 37.863289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394196, 33.761124, 38.382427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770590, 33.719971, 38.511398>,  <31.996426, 33.695278, 38.588779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770590, 33.719971, 38.511398>,  <31.394196, 33.761124, 38.382427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770590, 33.719971, 38.511398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303524, 0.164926, 0.938442,
		-0.149731, -0.980925, 0.123964,
		0.940986, -0.102888, 0.322428,
		32.052887, 33.689106, 38.608128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294287, 33.477795, 38.976433>,  <31.394196, 33.761124, 38.382427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294287, 33.477795, 38.976433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673748, 33.590267, 39.034393>,  <31.901424, 33.657749, 39.069172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673748, 33.590267, 39.034393>,  <31.294287, 33.477795, 38.976433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673748, 33.590267, 39.034393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250697, 0.388952, 0.886492,
		0.192904, -0.877299, 0.439471,
		0.948651, 0.281182, 0.144906,
		31.958344, 33.674622, 39.077866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304054, 33.453827, 39.710732>,  <31.294287, 33.477795, 38.976433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304054, 33.453827, 39.710732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648317, 33.637604, 39.622936>,  <31.854876, 33.747871, 39.570259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648317, 33.637604, 39.622936>,  <31.304054, 33.453827, 39.710732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648317, 33.637604, 39.622936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086413, 0.556609, 0.826268,
		0.501791, -0.692171, 0.518754,
		0.860662, 0.459441, -0.219489,
		31.906515, 33.775436, 39.557091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790398, 33.469139, 40.279015>,  <31.304054, 33.453827, 39.710732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790398, 33.469139, 40.279015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838331, 33.790905, 40.046268>,  <31.867090, 33.983963, 39.906620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838331, 33.790905, 40.046268>,  <31.790398, 33.469139, 40.279015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838331, 33.790905, 40.046268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141613, 0.593942, 0.791946,
		0.982643, -0.012501, 0.185088,
		0.119832, 0.804411, -0.581862,
		31.874281, 34.032227, 39.871712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435787, 33.907318, 40.478664>,  <31.790398, 33.469139, 40.279015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435787, 33.907318, 40.478664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139156, 34.119308, 40.314133>,  <31.961178, 34.246502, 40.215412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139156, 34.119308, 40.314133>,  <32.435787, 33.907318, 40.478664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139156, 34.119308, 40.314133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002801, 0.610673, 0.791878,
		0.670866, 0.588387, -0.451374,
		-0.741573, 0.529980, -0.411328,
		31.916685, 34.278301, 40.190735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661957, 34.657520, 40.446735>,  <32.435787, 33.907318, 40.478664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661957, 34.657520, 40.446735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265244, 34.606422, 40.449272>,  <32.027214, 34.575764, 40.450794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265244, 34.606422, 40.449272>,  <32.661957, 34.657520, 40.446735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265244, 34.606422, 40.449272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079133, 0.651810, 0.754242,
		-0.100488, 0.747545, -0.656566,
		-0.991786, -0.127748, 0.006343,
		31.967707, 34.568096, 40.451176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321232, 35.282082, 40.733521>,  <32.661957, 34.657520, 40.446735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321232, 35.282082, 40.733521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083832, 34.967072, 40.799923>,  <31.941393, 34.778065, 40.839764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083832, 34.967072, 40.799923>,  <32.321232, 35.282082, 40.733521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083832, 34.967072, 40.799923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298803, 0.407126, 0.863114,
		-0.747314, 0.462651, -0.476944,
		-0.593497, -0.787529, 0.166010,
		31.905783, 34.730812, 40.849728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420780, 35.983963, 40.263069>,  <32.321232, 35.282082, 40.733521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420780, 35.983963, 40.263069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776470, 35.816986, 40.337921>,  <32.989883, 35.716801, 40.382832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776470, 35.816986, 40.337921>,  <32.420780, 35.983963, 40.263069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776470, 35.816986, 40.337921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416688, 0.907921, 0.045289,
		-0.188808, 0.037704, 0.981290,
		0.889226, -0.417443, 0.187134,
		33.043240, 35.691753, 40.394062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755589, 36.332603, 40.798538>,  <32.420780, 35.983963, 40.263069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755589, 36.332603, 40.798538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063000, 36.178333, 40.594334>,  <33.247448, 36.085773, 40.471813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063000, 36.178333, 40.594334>,  <32.755589, 36.332603, 40.798538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063000, 36.178333, 40.594334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515795, 0.845576, 0.137683,
		0.378572, -0.369131, 0.848779,
		0.768530, -0.385673, -0.510507,
		33.293560, 36.062630, 40.441181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403225, 36.452759, 41.227730>,  <32.755589, 36.332603, 40.798538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403225, 36.452759, 41.227730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509842, 36.349052, 40.856411>,  <33.573814, 36.286831, 40.633621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509842, 36.349052, 40.856411>,  <33.403225, 36.452759, 41.227730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509842, 36.349052, 40.856411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528935, 0.844497, -0.083983,
		0.805717, -0.468623, 0.362231,
		0.266547, -0.259264, -0.928297,
		33.589806, 36.271275, 40.577923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144939, 36.263107, 41.146404>,  <33.403225, 36.452759, 41.227730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144939, 36.263107, 41.146404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916195, 36.458542, 40.882812>,  <33.778950, 36.575802, 40.724659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916195, 36.458542, 40.882812>,  <34.144939, 36.263107, 41.146404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916195, 36.458542, 40.882812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451490, 0.858138, 0.244450,
		0.684931, -0.157732, -0.711329,
		-0.571861, 0.488590, -0.658980,
		33.744637, 36.605118, 40.685120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565460, 36.671612, 40.722374>,  <34.144939, 36.263107, 41.146404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565460, 36.671612, 40.722374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207150, 36.847988, 40.744820>,  <33.992161, 36.953812, 40.758286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207150, 36.847988, 40.744820>,  <34.565460, 36.671612, 40.722374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207150, 36.847988, 40.744820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438697, 0.897347, -0.048088,
		-0.071558, -0.018460, -0.997266,
		-0.895781, 0.440939, 0.056114,
		33.938416, 36.980270, 40.761654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173420, 36.582554, 40.054993>,  <34.565460, 36.671612, 40.722374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173420, 36.582554, 40.054993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255760, 36.235363, 39.874222>,  <34.305164, 36.027050, 39.765759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255760, 36.235363, 39.874222>,  <34.173420, 36.582554, 40.054993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255760, 36.235363, 39.874222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340063, 0.369589, -0.864732,
		0.917596, 0.331689, -0.219087,
		0.205850, -0.867978, -0.451929,
		34.317516, 35.974968, 39.738644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554810, 36.669224, 39.462471>,  <34.173420, 36.582554, 40.054993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554810, 36.669224, 39.462471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315990, 36.348465, 39.453590>,  <34.172699, 36.156010, 39.448261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315990, 36.348465, 39.453590>,  <34.554810, 36.669224, 39.462471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315990, 36.348465, 39.453590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383951, 0.309952, -0.869777,
		0.704353, -0.510776, -0.492945,
		-0.597051, -0.801897, -0.022203,
		34.136875, 36.107895, 39.446930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652340, 36.364307, 38.744469>,  <34.554810, 36.669224, 39.462471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652340, 36.364307, 38.744469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314419, 36.213379, 38.896221>,  <34.111664, 36.122822, 38.987274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314419, 36.213379, 38.896221>,  <34.652340, 36.364307, 38.744469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314419, 36.213379, 38.896221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491809, 0.268271, -0.828344,
		0.210769, -0.886377, -0.412205,
		-0.844808, -0.377315, 0.379385,
		34.060978, 36.100182, 39.010036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419125, 35.873798, 38.297657>,  <34.652340, 36.364307, 38.744469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419125, 35.873798, 38.297657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097958, 35.979435, 38.511414>,  <33.905258, 36.042816, 38.639668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097958, 35.979435, 38.511414>,  <34.419125, 35.873798, 38.297657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097958, 35.979435, 38.511414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547221, 0.028919, -0.836488,
		-0.236362, -0.964065, 0.121296,
		-0.802921, 0.264089, 0.534392,
		33.857082, 36.058662, 38.671730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874458, 35.469425, 37.991940>,  <34.419125, 35.873798, 38.297657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874458, 35.469425, 37.991940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639473, 35.719734, 38.197189>,  <33.498482, 35.869919, 38.320339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639473, 35.719734, 38.197189>,  <33.874458, 35.469425, 37.991940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639473, 35.719734, 38.197189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615641, 0.065958, -0.785261,
		-0.525238, -0.777214, 0.346502,
		-0.587462, 0.625770, 0.513129,
		33.463234, 35.907467, 38.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119453, 35.195713, 37.955334>,  <33.874458, 35.469425, 37.991940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119453, 35.195713, 37.955334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132511, 35.586697, 38.038761>,  <33.140347, 35.821289, 38.088818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132511, 35.586697, 38.038761>,  <33.119453, 35.195713, 37.955334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132511, 35.586697, 38.038761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536933, 0.193160, -0.821214,
		-0.842993, -0.085180, 0.531137,
		0.032644, 0.977463, 0.208569,
		33.142303, 35.879936, 38.101330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433315, 35.384403, 38.061161>,  <33.119453, 35.195713, 37.955334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433315, 35.384403, 38.061161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646999, 35.708229, 37.963814>,  <32.775208, 35.902523, 37.905407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646999, 35.708229, 37.963814>,  <32.433315, 35.384403, 38.061161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646999, 35.708229, 37.963814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601460, 0.161695, -0.782369,
		-0.594027, 0.564322, 0.573300,
		0.534208, 0.809565, -0.243366,
		32.807262, 35.951099, 37.890804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904215, 35.756016, 37.859619>,  <32.433315, 35.384403, 38.061161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904215, 35.756016, 37.859619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230511, 35.935642, 37.713795>,  <32.426289, 36.043419, 37.626301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230511, 35.935642, 37.713795>,  <31.904215, 35.756016, 37.859619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230511, 35.935642, 37.713795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504354, 0.243645, -0.828411,
		-0.283191, 0.859635, 0.425241,
		0.815739, 0.449070, -0.364562,
		32.475231, 36.070362, 37.604427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670118, 36.441658, 37.646149>,  <31.904215, 35.756016, 37.859619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670118, 36.441658, 37.646149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998121, 36.331726, 37.445328>,  <32.194923, 36.265766, 37.324837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998121, 36.331726, 37.445328>,  <31.670118, 36.441658, 37.646149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998121, 36.331726, 37.445328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479426, 0.149315, -0.864787,
		0.312637, 0.949827, -0.009324,
		0.820005, -0.274834, -0.502053,
		32.244122, 36.249275, 37.294712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722324, 36.936794, 37.142445>,  <31.670118, 36.441658, 37.646149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722324, 36.936794, 37.142445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947256, 36.635612, 37.005714>,  <32.082214, 36.454903, 36.923676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947256, 36.635612, 37.005714>,  <31.722324, 36.936794, 37.142445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947256, 36.635612, 37.005714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325714, 0.178267, -0.928510,
		0.760062, 0.633467, -0.145003,
		0.562331, -0.752955, -0.341823,
		32.115955, 36.409725, 36.903168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883484, 37.126945, 36.515316>,  <31.722324, 36.936794, 37.142445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883484, 37.126945, 36.515316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003693, 36.746357, 36.488800>,  <32.075817, 36.518005, 36.472889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003693, 36.746357, 36.488800>,  <31.883484, 37.126945, 36.515316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003693, 36.746357, 36.488800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158493, 0.018719, -0.987182,
		0.940515, 0.307174, -0.145176,
		0.300520, -0.951469, -0.066290,
		32.093849, 36.460915, 36.468914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478699, 37.058960, 36.046921>,  <31.883484, 37.126945, 36.515316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478699, 37.058960, 36.046921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316124, 36.693527, 36.041615>,  <32.218578, 36.474266, 36.038429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316124, 36.693527, 36.041615>,  <32.478699, 37.058960, 36.046921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316124, 36.693527, 36.041615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048857, -0.007233, -0.998780,
		0.912372, -0.406588, 0.047575,
		-0.406436, -0.913583, -0.013265,
		32.194195, 36.419453, 36.037636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762379, 36.746078, 35.482033>,  <32.478699, 37.058960, 36.046921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762379, 36.746078, 35.482033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440826, 36.520199, 35.556755>,  <32.247894, 36.384670, 35.601589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440826, 36.520199, 35.556755>,  <32.762379, 36.746078, 35.482033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440826, 36.520199, 35.556755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045727, -0.254462, -0.966001,
		0.593035, -0.785088, 0.178734,
		-0.803877, -0.564700, 0.186804,
		32.199665, 36.350788, 35.612797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943253, 35.983723, 35.349941>,  <32.762379, 36.746078, 35.482033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943253, 35.983723, 35.349941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544685, 36.012432, 35.332047>,  <32.305546, 36.029655, 35.321308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544685, 36.012432, 35.332047>,  <32.943253, 35.983723, 35.349941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544685, 36.012432, 35.332047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009542, -0.430248, -0.902660,
		-0.084034, -0.899853, 0.428021,
		-0.996417, 0.071770, -0.044742,
		32.245762, 36.033962, 35.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716419, 35.400673, 35.043392>,  <32.943253, 35.983723, 35.349941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716419, 35.400673, 35.043392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372105, 35.601532, 35.010178>,  <32.165516, 35.722050, 34.990250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372105, 35.601532, 35.010178>,  <32.716419, 35.400673, 35.043392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372105, 35.601532, 35.010178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203433, -0.488993, -0.848234,
		-0.466534, -0.713261, 0.523072,
		-0.860791, 0.502140, -0.083031,
		32.113869, 35.752178, 34.985268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182800, 34.880028, 34.977634>,  <32.716419, 35.400673, 35.043392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182800, 34.880028, 34.977634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092121, 35.241295, 34.831818>,  <32.037712, 35.458057, 34.744328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092121, 35.241295, 34.831818>,  <32.182800, 34.880028, 34.977634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092121, 35.241295, 34.831818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157255, -0.403317, -0.901446,
		-0.961186, -0.147032, 0.233460,
		-0.226700, 0.903171, -0.364541,
		32.024113, 35.512245, 34.722454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638395, 34.654442, 34.516380>,  <32.182800, 34.880028, 34.977634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638395, 34.654442, 34.516380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752146, 35.022953, 34.410267>,  <31.820396, 35.244061, 34.346600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752146, 35.022953, 34.410267>,  <31.638395, 34.654442, 34.516380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752146, 35.022953, 34.410267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017761, -0.281722, -0.959332,
		-0.958548, 0.268101, -0.096479,
		0.284378, 0.921279, -0.265282,
		31.837460, 35.299335, 34.330681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204943, 34.820648, 33.896603>,  <31.638395, 34.654442, 34.516380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204943, 34.820648, 33.896603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535738, 35.045528, 33.894650>,  <31.734215, 35.180458, 33.893478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535738, 35.045528, 33.894650>,  <31.204943, 34.820648, 33.896603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535738, 35.045528, 33.894650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159007, -0.242206, -0.957106,
		-0.539268, 0.790738, -0.289695,
		0.826986, 0.562201, -0.004881,
		31.783834, 35.214188, 33.893185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092133, 35.308449, 33.415028>,  <31.204943, 34.820648, 33.896603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092133, 35.308449, 33.415028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491234, 35.311565, 33.441654>,  <31.730694, 35.313435, 33.457630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491234, 35.311565, 33.441654>,  <31.092133, 35.308449, 33.415028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491234, 35.311565, 33.441654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066552, -0.232649, -0.970281,
		0.007930, 0.972530, -0.232644,
		0.997751, 0.007789, 0.066569,
		31.790560, 35.313904, 33.461624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295816, 35.842422, 32.979671>,  <31.092133, 35.308449, 33.415028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295816, 35.842422, 32.979671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615824, 35.609165, 33.036125>,  <31.807829, 35.469212, 33.069996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615824, 35.609165, 33.036125>,  <31.295816, 35.842422, 32.979671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615824, 35.609165, 33.036125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105140, -0.095334, -0.989877,
		0.590691, 0.806759, -0.014958,
		0.800018, -0.583139, 0.141135,
		31.855829, 35.434223, 33.078465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809605, 36.108837, 32.646259>,  <31.295816, 35.842422, 32.979671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809605, 36.108837, 32.646259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966326, 35.742573, 32.682167>,  <32.060360, 35.522816, 32.703712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966326, 35.742573, 32.682167>,  <31.809605, 36.108837, 32.646259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966326, 35.742573, 32.682167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392187, 0.077956, -0.916576,
		0.832274, 0.394323, 0.389653,
		0.391803, -0.915659, 0.089768,
		32.083866, 35.467876, 32.709099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462254, 36.042915, 32.409325>,  <31.809605, 36.108837, 32.646259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462254, 36.042915, 32.409325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391411, 35.650459, 32.378326>,  <32.348904, 35.414986, 32.359730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391411, 35.650459, 32.378326>,  <32.462254, 36.042915, 32.409325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391411, 35.650459, 32.378326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303049, 0.020546, -0.952753,
		0.936373, -0.192225, 0.293693,
		-0.177109, -0.981136, -0.077492,
		32.338280, 35.356117, 32.355080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917591, 35.775372, 31.886860>,  <32.462254, 36.042915, 32.409325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917591, 35.775372, 31.886860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679165, 35.455044, 31.910149>,  <32.536110, 35.262848, 31.924122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679165, 35.455044, 31.910149>,  <32.917591, 35.775372, 31.886860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679165, 35.455044, 31.910149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162357, -0.191225, -0.968025,
		0.786347, -0.567557, 0.244002,
		-0.596069, -0.800820, 0.058222,
		32.500343, 35.214798, 31.927616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251534, 35.325111, 31.494909>,  <32.917591, 35.775372, 31.886860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251534, 35.325111, 31.494909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880596, 35.180706, 31.534309>,  <32.658035, 35.094063, 31.557949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880596, 35.180706, 31.534309>,  <33.251534, 35.325111, 31.494909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880596, 35.180706, 31.534309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023123, -0.317998, -0.947809,
		0.373496, -0.876667, 0.303241,
		-0.927344, -0.361014, 0.098500,
		32.602394, 35.072403, 31.563860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319599, 34.638439, 31.192236>,  <33.251534, 35.325111, 31.494909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319599, 34.638439, 31.192236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958313, 34.809959, 31.184925>,  <32.741543, 34.912872, 31.180538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958313, 34.809959, 31.184925>,  <33.319599, 34.638439, 31.192236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958313, 34.809959, 31.184925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173751, -0.404261, -0.897989,
		-0.392431, -0.807908, 0.439639,
		-0.903221, 0.428787, -0.018270,
		32.687347, 34.938602, 31.179441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875412, 34.118408, 31.054146>,  <33.319599, 34.638439, 31.192236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875412, 34.118408, 31.054146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661388, 34.442974, 30.960064>,  <32.532974, 34.637714, 30.903616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661388, 34.442974, 30.960064>,  <32.875412, 34.118408, 31.054146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661388, 34.442974, 30.960064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088259, -0.330573, -0.939645,
		-0.840192, -0.482007, 0.248490,
		-0.535060, 0.811413, -0.235203,
		32.500870, 34.686398, 30.889503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424328, 33.774128, 30.655010>,  <32.875412, 34.118408, 31.054146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424328, 33.774128, 30.655010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437222, 34.165676, 30.574242>,  <32.444958, 34.400604, 30.525780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437222, 34.165676, 30.574242>,  <32.424328, 33.774128, 30.655010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437222, 34.165676, 30.574242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088448, -0.198441, -0.976114,
		-0.995559, 0.049320, 0.080184,
		0.032230, 0.978871, -0.201922,
		32.446892, 34.459339, 30.513664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044086, 33.754513, 30.144209>,  <32.424328, 33.774128, 30.655010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044086, 33.754513, 30.144209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216785, 34.112217, 30.097057>,  <32.320404, 34.326839, 30.068766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216785, 34.112217, 30.097057>,  <32.044086, 33.754513, 30.144209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216785, 34.112217, 30.097057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026730, -0.143317, -0.989316,
		-0.901599, 0.423982, -0.085780,
		0.431745, 0.894259, -0.117881,
		32.346310, 34.380493, 30.061693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702673, 34.096653, 29.612179>,  <32.044086, 33.754513, 30.144209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702673, 34.096653, 29.612179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050762, 34.293365, 29.623936>,  <32.259617, 34.411392, 29.630989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050762, 34.293365, 29.623936>,  <31.702673, 34.096653, 29.612179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050762, 34.293365, 29.623936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075132, -0.073513, -0.994460,
		-0.486897, 0.867610, -0.100921,
		0.870222, 0.491782, 0.029392,
		32.311829, 34.440899, 29.632753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662992, 34.614590, 29.148016>,  <31.702673, 34.096653, 29.612179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662992, 34.614590, 29.148016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058914, 34.575539, 29.189507>,  <32.296467, 34.552109, 29.214401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058914, 34.575539, 29.189507>,  <31.662992, 34.614590, 29.148016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058914, 34.575539, 29.189507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108799, 0.048149, -0.992897,
		0.091942, 0.994057, 0.058280,
		0.989803, -0.097629, 0.103726,
		32.355854, 34.546249, 29.220625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952700, 35.094913, 28.730417>,  <31.662992, 34.614590, 29.148016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952700, 35.094913, 28.730417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260532, 34.850010, 28.802952>,  <32.445232, 34.703068, 28.846472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260532, 34.850010, 28.802952>,  <31.952700, 35.094913, 28.730417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260532, 34.850010, 28.802952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271230, 0.056339, -0.960864,
		0.578081, 0.788647, 0.209420,
		0.769582, -0.612259, 0.181337,
		32.491405, 34.666332, 28.857353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490879, 35.418751, 28.388981>,  <31.952700, 35.094913, 28.730417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490879, 35.418751, 28.388981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608501, 35.038116, 28.424782>,  <32.679073, 34.809734, 28.446262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608501, 35.038116, 28.424782>,  <32.490879, 35.418751, 28.388981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608501, 35.038116, 28.424782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420825, 0.044823, -0.906034,
		0.858160, 0.304087, 0.413633,
		0.294053, -0.951589, 0.089502,
		32.696716, 34.752640, 28.451632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144379, 35.407227, 28.204020>,  <32.490879, 35.418751, 28.388981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144379, 35.407227, 28.204020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057709, 35.021416, 28.143707>,  <33.005707, 34.789928, 28.107519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057709, 35.021416, 28.143707>,  <33.144379, 35.407227, 28.204020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057709, 35.021416, 28.143707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445272, 0.039805, -0.894510,
		0.868783, -0.260959, 0.420853,
		-0.216678, -0.964529, -0.150780,
		32.992706, 34.732056, 28.098473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731125, 35.050072, 27.842802>,  <33.144379, 35.407227, 28.204020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731125, 35.050072, 27.842802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444653, 34.776848, 27.785519>,  <33.272770, 34.612915, 27.751148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444653, 34.776848, 27.785519>,  <33.731125, 35.050072, 27.842802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444653, 34.776848, 27.785519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315744, -0.134122, -0.939317,
		0.622403, -0.717941, 0.311728,
		-0.716184, -0.683061, -0.143207,
		33.229797, 34.571930, 27.742556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031719, 34.415417, 27.718525>,  <33.731125, 35.050072, 27.842802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031719, 34.415417, 27.718525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667336, 34.403656, 27.553944>,  <33.448708, 34.396599, 27.455194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667336, 34.403656, 27.553944>,  <34.031719, 34.415417, 27.718525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667336, 34.403656, 27.553944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407162, -0.224077, -0.885443,
		-0.066162, -0.974128, 0.216096,
		-0.910956, -0.029403, -0.411453,
		33.394047, 34.394836, 27.430508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219040, 34.008842, 27.161432>,  <34.031719, 34.415417, 27.718525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219040, 34.008842, 27.161432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858917, 34.144745, 27.052608>,  <33.642845, 34.226284, 26.987314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858917, 34.144745, 27.052608>,  <34.219040, 34.008842, 27.161432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858917, 34.144745, 27.052608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266532, -0.063818, -0.961711,
		-0.344106, -0.938347, -0.033099,
		-0.900307, 0.339752, -0.272059,
		33.588825, 34.246670, 26.970991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035458, 33.657059, 26.419254>,  <34.219040, 34.008842, 27.161432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035458, 33.657059, 26.419254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809933, 33.986832, 26.438950>,  <33.674618, 34.184696, 26.450768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809933, 33.986832, 26.438950>,  <34.035458, 33.657059, 26.419254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809933, 33.986832, 26.438950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331957, 0.280803, -0.900530,
		-0.756255, -0.491384, -0.431996,
		-0.563811, 0.824435, 0.049240,
		33.640789, 34.234161, 26.453722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645302, 33.775719, 25.810911>,  <34.035458, 33.657059, 26.419254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645302, 33.775719, 25.810911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677639, 34.140522, 25.971760>,  <33.697041, 34.359406, 26.068268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677639, 34.140522, 25.971760>,  <33.645302, 33.775719, 25.810911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677639, 34.140522, 25.971760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411750, 0.336849, -0.846755,
		-0.907704, 0.234030, -0.348287,
		0.080845, 0.912010, 0.402121,
		33.701893, 34.414124, 26.092396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359425, 34.259323, 25.213913>,  <33.645302, 33.775719, 25.810911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359425, 34.259323, 25.213913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584019, 34.461880, 25.475693>,  <33.718777, 34.583412, 25.632761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584019, 34.461880, 25.475693>,  <33.359425, 34.259323, 25.213913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584019, 34.461880, 25.475693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480880, 0.443951, -0.756084,
		-0.673414, 0.739243, 0.005762,
		0.561487, 0.506387, 0.654450,
		33.752464, 34.613796, 25.672028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397587, 34.865253, 24.927299>,  <33.359425, 34.259323, 25.213913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397587, 34.865253, 24.927299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708145, 34.867123, 25.179394>,  <33.894478, 34.868244, 25.330650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708145, 34.867123, 25.179394>,  <33.397587, 34.865253, 24.927299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708145, 34.867123, 25.179394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494372, 0.615714, -0.613590,
		-0.390912, 0.787956, 0.475724,
		0.776391, 0.004675, 0.630234,
		33.941063, 34.868526, 25.368464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664364, 35.643795, 24.920914>,  <33.397587, 34.865253, 24.927299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664364, 35.643795, 24.920914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962158, 35.390682, 25.006084>,  <34.140835, 35.238815, 25.057188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962158, 35.390682, 25.006084>,  <33.664364, 35.643795, 24.920914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962158, 35.390682, 25.006084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650034, 0.614230, -0.447411,
		0.152325, 0.471500, 0.868611,
		0.744481, -0.632779, 0.212929,
		34.185501, 35.200848, 25.069963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993523, 35.765591, 25.175116>,  <33.664364, 35.643795, 24.920914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993523, 35.765591, 25.175116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708935, 35.819000, 24.899151>,  <32.538181, 35.851048, 24.733572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708935, 35.819000, 24.899151>,  <32.993523, 35.765591, 25.175116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708935, 35.819000, 24.899151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517589, 0.564480, 0.643012,
		0.475302, 0.814575, -0.332498,
		-0.711470, 0.133527, -0.689914,
		32.495495, 35.859058, 24.692177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888618, 36.470631, 25.305405>,  <32.993523, 35.765591, 25.175116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888618, 36.470631, 25.305405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555706, 36.347530, 25.120972>,  <32.355957, 36.273670, 25.010313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555706, 36.347530, 25.120972>,  <32.888618, 36.470631, 25.305405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555706, 36.347530, 25.120972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547598, 0.585859, 0.597416,
		0.086273, 0.749706, -0.656124,
		-0.832282, -0.307751, -0.461081,
		32.306023, 36.255207, 24.982647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447498, 37.043568, 25.326660>,  <32.888618, 36.470631, 25.305405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447498, 37.043568, 25.326660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225235, 36.714706, 25.277176>,  <32.091877, 36.517391, 25.247486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225235, 36.714706, 25.277176>,  <32.447498, 37.043568, 25.326660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225235, 36.714706, 25.277176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663449, 0.348795, 0.661950,
		-0.501074, 0.449896, -0.739269,
		-0.555662, -0.822153, -0.123710,
		32.058537, 36.468060, 25.240063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769009, 37.264053, 25.149040>,  <32.447498, 37.043568, 25.326660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769009, 37.264053, 25.149040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722670, 36.898922, 25.305668>,  <31.694866, 36.679844, 25.399645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722670, 36.898922, 25.305668>,  <31.769009, 37.264053, 25.149040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722670, 36.898922, 25.305668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666625, 0.363704, 0.650639,
		-0.736336, -0.185655, -0.650647,
		-0.115849, -0.912826, 0.391570,
		31.687916, 36.625072, 25.423140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079649, 37.195374, 25.202654>,  <31.769009, 37.264053, 25.149040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079649, 37.195374, 25.202654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259583, 36.969292, 25.479259>,  <31.367542, 36.833641, 25.645224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259583, 36.969292, 25.479259>,  <31.079649, 37.195374, 25.202654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259583, 36.969292, 25.479259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615651, 0.364683, 0.698556,
		-0.647011, -0.739966, -0.183922,
		0.449835, -0.565205, 0.691514,
		31.394533, 36.799728, 25.686714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513271, 36.991768, 25.454409>,  <31.079649, 37.195374, 25.202654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513271, 36.991768, 25.454409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781349, 36.888447, 25.732723>,  <30.942196, 36.826454, 25.899712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781349, 36.888447, 25.732723>,  <30.513271, 36.991768, 25.454409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781349, 36.888447, 25.732723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607813, 0.346965, 0.714268,
		-0.425914, -0.901605, 0.075532,
		0.670195, -0.258307, 0.695785,
		30.982409, 36.810955, 25.941458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141861, 36.726833, 25.972401>,  <30.513271, 36.991768, 25.454409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141861, 36.726833, 25.972401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491249, 36.803162, 26.151569>,  <30.700882, 36.848961, 26.259071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491249, 36.803162, 26.151569>,  <30.141861, 36.726833, 25.972401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491249, 36.803162, 26.151569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486861, 0.335184, 0.806609,
		0.003784, -0.922625, 0.385679,
		0.873471, 0.190824, 0.447922,
		30.753290, 36.860409, 26.285946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068535, 36.438770, 26.620838>,  <30.141861, 36.726833, 25.972401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068535, 36.438770, 26.620838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375826, 36.691124, 26.664295>,  <30.560202, 36.842537, 26.690371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375826, 36.691124, 26.664295>,  <30.068535, 36.438770, 26.620838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375826, 36.691124, 26.664295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278888, 0.177059, 0.943860,
		0.576234, -0.755401, 0.311969,
		0.768229, 0.630889, 0.108645,
		30.606295, 36.880390, 26.696888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429518, 36.260357, 27.137016>,  <30.068535, 36.438770, 26.620838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429518, 36.260357, 27.137016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528337, 36.647823, 27.147205>,  <30.587629, 36.880302, 27.153318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528337, 36.647823, 27.147205>,  <30.429518, 36.260357, 27.137016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528337, 36.647823, 27.147205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381098, 0.072961, 0.921651,
		0.890915, -0.237402, 0.387182,
		0.247051, 0.968668, 0.025471,
		30.602453, 36.938423, 27.154846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773106, 36.372078, 27.841936>,  <30.429518, 36.260357, 27.137016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773106, 36.372078, 27.841936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697256, 36.744148, 27.716198>,  <30.651747, 36.967392, 27.640755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697256, 36.744148, 27.716198>,  <30.773106, 36.372078, 27.841936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697256, 36.744148, 27.716198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382452, 0.224893, 0.896188,
		0.904308, 0.290163, 0.313102,
		-0.189626, 0.930177, -0.314346,
		30.640368, 37.023201, 27.621895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193302, 36.823795, 28.232832>,  <30.773106, 36.372078, 27.841936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193302, 36.823795, 28.232832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874825, 37.024487, 28.097572>,  <30.683739, 37.144901, 28.016417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874825, 37.024487, 28.097572>,  <31.193302, 36.823795, 28.232832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874825, 37.024487, 28.097572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262734, 0.216734, 0.940211,
		0.545021, 0.837432, -0.040740,
		-0.796192, 0.501731, -0.338147,
		30.635967, 37.175007, 27.996128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177488, 37.550320, 28.400063>,  <31.193302, 36.823795, 28.232832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177488, 37.550320, 28.400063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795267, 37.439663, 28.359283>,  <30.565935, 37.373268, 28.334816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795267, 37.439663, 28.359283>,  <31.177488, 37.550320, 28.400063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795267, 37.439663, 28.359283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164819, 0.214521, 0.962712,
		-0.244453, 0.936724, -0.250581,
		-0.955551, -0.276639, -0.101950,
		30.508602, 37.356670, 28.328699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740015, 38.088867, 28.625593>,  <31.177488, 37.550320, 28.400063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740015, 38.088867, 28.625593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493757, 37.773861, 28.636887>,  <30.346003, 37.584858, 28.643663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493757, 37.773861, 28.636887>,  <30.740015, 38.088867, 28.625593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493757, 37.773861, 28.636887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237053, 0.219246, 0.946434,
		-0.751525, 0.575972, -0.321662,
		-0.615642, -0.787520, 0.028233,
		30.309065, 37.537605, 28.645357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244936, 38.392475, 28.944809>,  <30.740015, 38.088867, 28.625593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244936, 38.392475, 28.944809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173847, 38.000729, 28.983307>,  <30.131195, 37.765682, 29.006405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173847, 38.000729, 28.983307>,  <30.244936, 38.392475, 28.944809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173847, 38.000729, 28.983307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310223, 0.148571, 0.938983,
		-0.933904, 0.137020, -0.330225,
		-0.177721, -0.979363, 0.096245,
		30.120531, 37.706921, 29.012180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606583, 38.324181, 29.334623>,  <30.244936, 38.392475, 28.944809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606583, 38.324181, 29.334623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792675, 37.970440, 29.350006>,  <29.904331, 37.758194, 29.359236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792675, 37.970440, 29.350006>,  <29.606583, 38.324181, 29.334623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792675, 37.970440, 29.350006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052629, 0.015735, 0.998490,
		-0.883624, -0.466552, -0.039222,
		0.465230, -0.884354, 0.038458,
		29.932243, 37.705135, 29.361544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187401, 37.943535, 29.703253>,  <29.606583, 38.324181, 29.334623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187401, 37.943535, 29.703253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537079, 37.750267, 29.722553>,  <29.746885, 37.634304, 29.734133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537079, 37.750267, 29.722553>,  <29.187401, 37.943535, 29.703253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537079, 37.750267, 29.722553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127621, -0.132747, 0.982899,
		-0.468506, -0.865403, -0.177710,
		0.874194, -0.483173, 0.048251,
		29.799337, 37.605316, 29.737028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097448, 37.291153, 30.224752>,  <29.187401, 37.943535, 29.703253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097448, 37.291153, 30.224752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492220, 37.355495, 30.220840>,  <29.729082, 37.394100, 30.218493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492220, 37.355495, 30.220840>,  <29.097448, 37.291153, 30.224752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492220, 37.355495, 30.220840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064819, -0.340658, 0.937950,
		0.147545, -0.926325, -0.346632,
		0.986929, 0.160858, -0.009781,
		29.788300, 37.403751, 30.217907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471754, 36.660000, 30.548264>,  <29.097448, 37.291153, 30.224752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471754, 36.660000, 30.548264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727100, 36.966393, 30.578632>,  <29.880308, 37.150227, 30.596853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727100, 36.966393, 30.578632>,  <29.471754, 36.660000, 30.548264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727100, 36.966393, 30.578632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205966, -0.265022, 0.941988,
		0.741663, -0.585697, -0.326947,
		0.638368, 0.765978, 0.075923,
		29.918612, 37.196186, 30.601410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087648, 36.435974, 30.868036>,  <29.471754, 36.660000, 30.548264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087648, 36.435974, 30.868036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080170, 36.827789, 30.948185>,  <30.075684, 37.062878, 30.996275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080170, 36.827789, 30.948185>,  <30.087648, 36.435974, 30.868036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080170, 36.827789, 30.948185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017847, -0.200048, 0.979624,
		0.999666, 0.021891, -0.013742,
		-0.018696, 0.979542, 0.200372,
		30.074560, 37.121651, 31.008297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331182, 36.323006, 31.551231>,  <30.087648, 36.435974, 30.868036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331182, 36.323006, 31.551231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273697, 36.717648, 31.520340>,  <30.239204, 36.954433, 31.501804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273697, 36.717648, 31.520340>,  <30.331182, 36.323006, 31.551231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273697, 36.717648, 31.520340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111401, 0.093673, 0.989351,
		0.983329, 0.133582, -0.123371,
		-0.143716, 0.986601, -0.077230,
		30.230581, 37.013626, 31.497171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879740, 36.765202, 31.769274>,  <30.331182, 36.323006, 31.551231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879740, 36.765202, 31.769274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574091, 37.021393, 31.800022>,  <30.390701, 37.175106, 31.818472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574091, 37.021393, 31.800022>,  <30.879740, 36.765202, 31.769274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574091, 37.021393, 31.800022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167366, 0.081756, 0.982499,
		0.622983, 0.763614, -0.169665,
		-0.764121, 0.640477, 0.076870,
		30.344854, 37.213535, 31.823084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119816, 37.392452, 32.155796>,  <30.879740, 36.765202, 31.769274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119816, 37.392452, 32.155796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725180, 37.354801, 32.209126>,  <30.488398, 37.332211, 32.241123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725180, 37.354801, 32.209126>,  <31.119816, 37.392452, 32.155796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725180, 37.354801, 32.209126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146226, -0.147023, 0.978265,
		-0.072476, 0.984645, 0.158815,
		-0.986593, -0.094123, 0.133325,
		30.429201, 37.326565, 32.249123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999029, 37.826164, 32.593143>,  <31.119816, 37.392452, 32.155796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999029, 37.826164, 32.593143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654549, 37.625504, 32.625813>,  <30.447861, 37.505108, 32.645416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654549, 37.625504, 32.625813>,  <30.999029, 37.826164, 32.593143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654549, 37.625504, 32.625813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025220, 0.118318, 0.992655,
		-0.507635, 0.856938, -0.089243,
		-0.861203, -0.501656, 0.081674,
		30.396187, 37.475006, 32.650314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574469, 38.206081, 33.038269>,  <30.999029, 37.826164, 32.593143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574469, 38.206081, 33.038269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447222, 37.827198, 33.054287>,  <30.370872, 37.599869, 33.063896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447222, 37.827198, 33.054287>,  <30.574469, 38.206081, 33.038269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447222, 37.827198, 33.054287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061986, 0.062930, 0.996091,
		-0.946022, 0.314393, -0.078733,
		-0.318119, -0.947205, 0.040045,
		30.351786, 37.543037, 33.066299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024668, 38.292961, 33.497036>,  <30.574469, 38.206081, 33.038269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024668, 38.292961, 33.497036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079700, 37.896938, 33.485264>,  <30.112720, 37.659325, 33.478203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079700, 37.896938, 33.485264>,  <30.024668, 38.292961, 33.497036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079700, 37.896938, 33.485264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134234, -0.048073, 0.989783,
		-0.981352, -0.132228, -0.139513,
		0.137583, -0.990053, -0.029427,
		30.120975, 37.599922, 33.476437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430357, 38.004227, 33.877819>,  <30.024668, 38.292961, 33.497036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430357, 38.004227, 33.877819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728268, 37.737392, 33.884850>,  <29.907013, 37.577293, 33.889069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728268, 37.737392, 33.884850>,  <29.430357, 38.004227, 33.877819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728268, 37.737392, 33.884850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158335, -0.151070, 0.975760,
		-0.648260, -0.729504, -0.218136,
		0.744774, -0.667085, 0.017573,
		29.951700, 37.537266, 33.890121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097393, 37.254505, 33.938019>,  <29.430357, 38.004227, 33.877819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097393, 37.254505, 33.938019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465494, 37.291313, 34.090160>,  <29.686354, 37.313396, 34.181446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465494, 37.291313, 34.090160>,  <29.097393, 37.254505, 33.938019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465494, 37.291313, 34.090160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308541, -0.427241, 0.849863,
		0.240706, -0.899443, -0.364778,
		0.920252, 0.092018, 0.380354,
		29.741570, 37.318920, 34.204266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091331, 36.758900, 34.528133>,  <29.097393, 37.254505, 33.938019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091331, 36.758900, 34.528133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431753, 36.955303, 34.602554>,  <29.636005, 37.073147, 34.647209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431753, 36.955303, 34.602554>,  <29.091331, 36.758900, 34.528133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431753, 36.955303, 34.602554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080354, -0.228373, 0.970252,
		0.518897, -0.840685, -0.154903,
		0.851052, 0.491013, 0.186054,
		29.687069, 37.102608, 34.658371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513382, 36.325546, 34.929081>,  <29.091331, 36.758900, 34.528133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513382, 36.325546, 34.929081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608395, 36.702351, 35.023899>,  <29.665403, 36.928432, 35.080788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608395, 36.702351, 35.023899>,  <29.513382, 36.325546, 34.929081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608395, 36.702351, 35.023899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190710, -0.194053, 0.962275,
		0.952475, -0.273778, 0.133557,
		0.237533, 0.942013, 0.237043,
		29.679655, 36.984955, 35.095013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009157, 36.224991, 35.511909>,  <29.513382, 36.325546, 34.929081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009157, 36.224991, 35.511909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887497, 36.605946, 35.503433>,  <29.814501, 36.834518, 35.498348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887497, 36.605946, 35.503433>,  <30.009157, 36.224991, 35.511909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887497, 36.605946, 35.503433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033751, 0.011457, 0.999365,
		0.952027, 0.304670, 0.028659,
		-0.304149, 0.952389, -0.021190,
		29.796253, 36.891663, 35.497078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477858, 36.512741, 36.003193>,  <30.009157, 36.224991, 35.511909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477858, 36.512741, 36.003193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149658, 36.739525, 35.973961>,  <29.952738, 36.875595, 35.956421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149658, 36.739525, 35.973961>,  <30.477858, 36.512741, 36.003193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149658, 36.739525, 35.973961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125518, -0.053958, 0.990623,
		0.557697, 0.821978, 0.115436,
		-0.820499, 0.566957, -0.073081,
		29.903509, 36.909611, 35.952038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473883, 36.998219, 36.593498>,  <30.477858, 36.512741, 36.003193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473883, 36.998219, 36.593498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099972, 36.990677, 36.451607>,  <29.875626, 36.986153, 36.366470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099972, 36.990677, 36.451607>,  <30.473883, 36.998219, 36.593498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099972, 36.990677, 36.451607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349566, -0.128774, 0.928020,
		-0.063180, 0.991495, 0.113784,
		-0.934779, -0.018858, -0.354729,
		29.819538, 36.985020, 36.345188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035751, 37.413651, 37.063560>,  <30.473883, 36.998219, 36.593498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035751, 37.413651, 37.063560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784555, 37.183445, 36.854023>,  <29.633839, 37.045322, 36.728302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784555, 37.183445, 36.854023>,  <30.035751, 37.413651, 37.063560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784555, 37.183445, 36.854023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432370, -0.301658, 0.849740,
		-0.647061, 0.760121, -0.059398,
		-0.627988, -0.575516, -0.523844,
		29.596159, 37.010792, 36.696869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467575, 37.516117, 37.346291>,  <30.035751, 37.413651, 37.063560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467575, 37.516117, 37.346291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391373, 37.176762, 37.148727>,  <29.345652, 36.973148, 37.030190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391373, 37.176762, 37.148727>,  <29.467575, 37.516117, 37.346291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391373, 37.176762, 37.148727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645865, -0.270575, 0.713896,
		-0.739301, 0.454997, -0.496399,
		-0.190507, -0.848391, -0.493903,
		29.334221, 36.922245, 37.000557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754696, 37.489204, 37.243748>,  <29.467575, 37.516117, 37.346291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754696, 37.489204, 37.243748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922659, 37.126236, 37.237125>,  <29.023436, 36.908455, 37.233150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922659, 37.126236, 37.237125>,  <28.754696, 37.489204, 37.243748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922659, 37.126236, 37.237125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451472, -0.224676, 0.863536,
		-0.787307, -0.355128, -0.504016,
		0.419906, -0.907417, -0.016558,
		29.048632, 36.854012, 37.232159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269690, 37.028084, 37.626503>,  <28.754696, 37.489204, 37.243748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269690, 37.028084, 37.626503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588900, 36.790207, 37.587521>,  <28.780426, 36.647480, 37.564133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588900, 36.790207, 37.587521>,  <28.269690, 37.028084, 37.626503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588900, 36.790207, 37.587521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240035, -0.462016, 0.853771,
		-0.552754, -0.657940, -0.511447,
		0.798026, -0.594690, -0.097452,
		28.828308, 36.611801, 37.558285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044289, 36.300564, 37.590706>,  <28.269690, 37.028084, 37.626503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044289, 36.300564, 37.590706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422071, 36.312092, 37.721653>,  <28.648741, 36.319008, 37.800220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422071, 36.312092, 37.721653>,  <28.044289, 36.300564, 37.590706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422071, 36.312092, 37.721653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230231, -0.652827, 0.721672,
		0.234514, -0.756958, -0.609932,
		0.944456, 0.028817, 0.327373,
		28.705408, 36.320736, 37.819866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214338, 35.632637, 37.679443>,  <28.044289, 36.300564, 37.590706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214338, 35.632637, 37.679443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438688, 35.855839, 37.924084>,  <28.573298, 35.989758, 38.070869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438688, 35.855839, 37.924084>,  <28.214338, 35.632637, 37.679443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438688, 35.855839, 37.924084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411750, -0.452884, 0.790796,
		0.718249, -0.695363, -0.024254,
		0.560875, 0.558002, 0.611600,
		28.606951, 36.023239, 38.107563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147068, 35.342735, 38.340836>,  <28.214338, 35.632637, 37.679443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147068, 35.342735, 38.340836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843376, 35.086132, 38.296944>,  <27.661161, 34.932171, 38.270611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843376, 35.086132, 38.296944>,  <28.147068, 35.342735, 38.340836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843376, 35.086132, 38.296944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266823, -0.153035, -0.951517,
		0.593613, -0.751698, 0.287358,
		-0.759229, -0.641507, -0.109727,
		27.615608, 34.893681, 38.264027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416327, 34.824379, 37.962719>,  <28.147068, 35.342735, 38.340836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416327, 34.824379, 37.962719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020409, 34.784901, 37.921604>,  <27.782858, 34.761215, 37.896935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020409, 34.784901, 37.921604>,  <28.416327, 34.824379, 37.962719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020409, 34.784901, 37.921604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128333, -0.303912, -0.944017,
		0.061930, -0.947574, 0.313476,
		-0.989795, -0.098692, -0.102783,
		27.723471, 34.755295, 37.890770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211811, 34.137825, 37.601299>,  <28.416327, 34.824379, 37.962719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211811, 34.137825, 37.601299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905401, 34.382854, 37.523365>,  <27.721556, 34.529873, 37.476604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905401, 34.382854, 37.523365>,  <28.211811, 34.137825, 37.601299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905401, 34.382854, 37.523365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054969, -0.239569, -0.969322,
		-0.640456, -0.753235, 0.149843,
		-0.766025, 0.612571, -0.194838,
		27.675594, 34.566628, 37.464912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850603, 33.797501, 37.001629>,  <28.211811, 34.137825, 37.601299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850603, 33.797501, 37.001629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726534, 34.177765, 37.004177>,  <27.652092, 34.405922, 37.005707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726534, 34.177765, 37.004177>,  <27.850603, 33.797501, 37.001629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726534, 34.177765, 37.004177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000823, 0.006973, -0.999975,
		-0.950679, -0.310162, -0.002945,
		-0.310175, 0.950658, 0.006374,
		27.633482, 34.462963, 37.006088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328245, 33.862392, 36.472923>,  <27.850603, 33.797501, 37.001629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328245, 33.862392, 36.472923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436193, 34.243099, 36.531307>,  <27.500963, 34.471523, 36.566338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436193, 34.243099, 36.531307>,  <27.328245, 33.862392, 36.472923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436193, 34.243099, 36.531307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072661, 0.171277, -0.982540,
		-0.960150, 0.254556, 0.115380,
		0.269873, 0.951770, 0.145956,
		27.517155, 34.528629, 36.575092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036280, 34.200184, 35.901505>,  <27.328245, 33.862392, 36.472923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036280, 34.200184, 35.901505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254839, 34.507572, 36.034718>,  <27.385975, 34.692005, 36.114643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254839, 34.507572, 36.034718>,  <27.036280, 34.200184, 35.901505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254839, 34.507572, 36.034718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018075, 0.386721, -0.922019,
		-0.837332, 0.509808, 0.197413,
		0.546396, 0.768468, 0.333029,
		27.418758, 34.738113, 36.134624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678141, 34.784435, 35.654026>,  <27.036280, 34.200184, 35.901505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678141, 34.784435, 35.654026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059652, 34.877136, 35.730549>,  <27.288559, 34.932755, 35.776463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059652, 34.877136, 35.730549>,  <26.678141, 34.784435, 35.654026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059652, 34.877136, 35.730549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087095, 0.396096, -0.914069,
		-0.287608, 0.888482, 0.357604,
		0.953780, 0.231748, 0.191303,
		27.345787, 34.946659, 35.787941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798872, 35.476562, 35.520683>,  <26.678141, 34.784435, 35.654026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798872, 35.476562, 35.520683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150898, 35.292988, 35.471920>,  <27.362114, 35.182842, 35.442661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.150898, 35.292988, 35.471920>,  <26.798872, 35.476562, 35.520683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.150898, 35.292988, 35.471920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076961, 0.391179, -0.917091,
		0.468577, 0.797717, 0.379583,
		0.880064, -0.458941, -0.121904,
		27.414917, 35.155304, 35.435349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201487, 36.025116, 35.132935>,  <26.798872, 35.476562, 35.520683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201487, 36.025116, 35.132935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413860, 35.689301, 35.086845>,  <27.541285, 35.487812, 35.059193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413860, 35.689301, 35.086845>,  <27.201487, 36.025116, 35.132935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413860, 35.689301, 35.086845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294048, 0.310045, -0.904106,
		0.794760, 0.446140, 0.411479,
		0.530935, -0.839542, -0.115225,
		27.573141, 35.437439, 35.052277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830254, 36.239841, 34.842182>,  <27.201487, 36.025116, 35.132935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830254, 36.239841, 34.842182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817503, 35.846931, 34.768303>,  <27.809853, 35.611183, 34.723976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817503, 35.846931, 34.768303>,  <27.830254, 36.239841, 34.842182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817503, 35.846931, 34.768303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312458, 0.165733, -0.935362,
		0.949397, -0.087526, 0.301638,
		-0.031877, -0.982279, -0.184694,
		27.807940, 35.552246, 34.712894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450962, 36.104263, 34.351631>,  <27.830254, 36.239841, 34.842182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450962, 36.104263, 34.351631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225155, 35.776157, 34.314796>,  <28.089670, 35.579292, 34.292694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225155, 35.776157, 34.314796>,  <28.450962, 36.104263, 34.351631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225155, 35.776157, 34.314796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171231, -0.007237, -0.985204,
		0.807466, -0.571932, 0.144542,
		-0.564516, -0.820269, -0.092089,
		28.055799, 35.530075, 34.287170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845587, 35.645897, 33.951927>,  <28.450962, 36.104263, 34.351631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845587, 35.645897, 33.951927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460176, 35.540638, 33.932457>,  <28.228930, 35.477482, 33.920776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460176, 35.540638, 33.932457>,  <28.845587, 35.645897, 33.951927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460176, 35.540638, 33.932457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075696, -0.093533, -0.992735,
		0.256685, -0.960211, 0.110041,
		-0.963527, -0.263150, -0.048676,
		28.171118, 35.461693, 33.917854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833914, 35.131409, 33.440002>,  <28.845587, 35.645897, 33.951927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833914, 35.131409, 33.440002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456772, 35.261124, 33.470619>,  <28.230486, 35.338955, 33.488991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456772, 35.261124, 33.470619>,  <28.833914, 35.131409, 33.440002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456772, 35.261124, 33.470619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113376, -0.096225, -0.988881,
		-0.313322, -0.941050, 0.127493,
		-0.942854, 0.324293, 0.076543,
		28.173916, 35.358410, 33.493584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389175, 34.656048, 33.120010>,  <28.833914, 35.131409, 33.440002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389175, 34.656048, 33.120010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146389, 34.972881, 33.145943>,  <28.000717, 35.162979, 33.161503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146389, 34.972881, 33.145943>,  <28.389175, 34.656048, 33.120010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146389, 34.972881, 33.145943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045512, 0.046804, -0.997867,
		-0.793425, -0.608620, 0.007641,
		-0.606964, 0.792080, 0.064835,
		27.964300, 35.210506, 33.165394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842302, 34.591522, 32.580608>,  <28.389175, 34.656048, 33.120010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842302, 34.591522, 32.580608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811909, 34.983192, 32.655907>,  <27.793673, 35.218197, 32.701084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811909, 34.983192, 32.655907>,  <27.842302, 34.591522, 32.580608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811909, 34.983192, 32.655907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004298, 0.189113, -0.981946,
		-0.997100, -0.073805, -0.018578,
		-0.075986, 0.979178, 0.188247,
		27.789112, 35.276947, 32.712379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244169, 34.822983, 32.201138>,  <27.842302, 34.591522, 32.580608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244169, 34.822983, 32.201138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505835, 35.121006, 32.253235>,  <27.662834, 35.299820, 32.284492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505835, 35.121006, 32.253235>,  <27.244169, 34.822983, 32.201138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505835, 35.121006, 32.253235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088429, 0.246361, -0.965136,
		-0.751167, 0.619838, 0.227044,
		0.654162, 0.745055, 0.130246,
		27.702084, 35.344524, 32.292309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932486, 35.329216, 31.835541>,  <27.244169, 34.822983, 32.201138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932486, 35.329216, 31.835541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322090, 35.407539, 31.881077>,  <27.555853, 35.454533, 31.908398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322090, 35.407539, 31.881077>,  <26.932486, 35.329216, 31.835541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322090, 35.407539, 31.881077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051591, 0.297600, -0.953296,
		-0.220543, 0.934394, 0.279764,
		0.974012, 0.195810, 0.113840,
		27.614294, 35.466282, 31.915228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111061, 35.875648, 31.400717>,  <26.932486, 35.329216, 31.835541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111061, 35.875648, 31.400717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480614, 35.733631, 31.457825>,  <27.702345, 35.648418, 31.492088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.480614, 35.733631, 31.457825>,  <27.111061, 35.875648, 31.400717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480614, 35.733631, 31.457825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211316, 0.162301, -0.963848,
		0.319040, 0.920652, 0.224974,
		0.923883, -0.355046, 0.142768,
		27.757778, 35.627117, 31.500656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555105, 36.393513, 31.119015>,  <27.111061, 35.875648, 31.400717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555105, 36.393513, 31.119015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807947, 36.084358, 31.141266>,  <27.959652, 35.898865, 31.154617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807947, 36.084358, 31.141266>,  <27.555105, 36.393513, 31.119015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807947, 36.084358, 31.141266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247343, 0.133214, -0.959727,
		0.734345, 0.620409, 0.275372,
		0.632107, -0.772882, 0.055629,
		27.997580, 35.852493, 31.157955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989269, 36.665035, 30.731480>,  <27.555105, 36.393513, 31.119015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989269, 36.665035, 30.731480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092915, 36.278862, 30.742790>,  <28.155102, 36.047157, 30.749577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.092915, 36.278862, 30.742790>,  <27.989269, 36.665035, 30.731480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092915, 36.278862, 30.742790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292980, 0.050667, -0.954775,
		0.920338, 0.255680, 0.295981,
		0.259113, -0.965433, 0.028279,
		28.170649, 35.989231, 30.751274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677954, 36.628342, 30.395212>,  <27.989269, 36.665035, 30.731480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677954, 36.628342, 30.395212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516035, 36.264286, 30.359928>,  <28.418884, 36.045853, 30.338757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.516035, 36.264286, 30.359928>,  <28.677954, 36.628342, 30.395212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516035, 36.264286, 30.359928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386514, -0.082880, -0.918552,
		0.828701, -0.405923, 0.385332,
		-0.404798, -0.910141, -0.088212,
		28.394596, 35.991245, 30.333464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136868, 36.273750, 30.028761>,  <28.677954, 36.628342, 30.395212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136868, 36.273750, 30.028761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803394, 36.060513, 29.971104>,  <28.603310, 35.932568, 29.936508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803394, 36.060513, 29.971104>,  <29.136868, 36.273750, 30.028761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803394, 36.060513, 29.971104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218223, -0.078244, -0.972757,
		0.507297, -0.842427, 0.181565,
		-0.833684, -0.533098, -0.144144,
		28.553289, 35.900581, 29.927860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302334, 35.874687, 29.507141>,  <29.136868, 36.273750, 30.028761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302334, 35.874687, 29.507141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905241, 35.827377, 29.498234>,  <28.666985, 35.798992, 29.492889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905241, 35.827377, 29.498234>,  <29.302334, 35.874687, 29.507141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905241, 35.827377, 29.498234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032384, -0.084308, -0.995913,
		0.115913, -0.989396, 0.087525,
		-0.992732, -0.118274, -0.022269,
		28.607422, 35.791897, 29.491552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170742, 35.201756, 29.201420>,  <29.302334, 35.874687, 29.507141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170742, 35.201756, 29.201420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886940, 35.480854, 29.161907>,  <28.716660, 35.648312, 29.138201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886940, 35.480854, 29.161907>,  <29.170742, 35.201756, 29.201420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886940, 35.480854, 29.161907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055045, -0.194617, -0.979334,
		-0.702549, -0.689403, 0.176489,
		-0.709504, 0.697744, -0.098780,
		28.674089, 35.690178, 29.132273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879793, 34.946739, 28.647995>,  <29.170742, 35.201756, 29.201420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879793, 34.946739, 28.647995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696318, 35.302006, 28.659115>,  <28.586233, 35.515163, 28.665787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696318, 35.302006, 28.659115>,  <28.879793, 34.946739, 28.647995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696318, 35.302006, 28.659115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104196, -0.022692, -0.994298,
		-0.882467, -0.458970, 0.102951,
		-0.458689, 0.888162, 0.027798,
		28.558710, 35.568455, 28.667454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253031, 34.844353, 28.200430>,  <28.879793, 34.946739, 28.647995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253031, 34.844353, 28.200430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339382, 35.234241, 28.223480>,  <28.391193, 35.468174, 28.237310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.339382, 35.234241, 28.223480>,  <28.253031, 34.844353, 28.200430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339382, 35.234241, 28.223480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081241, 0.076744, -0.993735,
		-0.973035, 0.209844, 0.095755,
		0.215878, 0.974718, 0.057627,
		28.404146, 35.526657, 28.240768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803682, 35.185787, 27.873093>,  <28.253031, 34.844353, 28.200430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803682, 35.185787, 27.873093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102036, 35.451778, 27.888351>,  <28.281048, 35.611374, 27.897507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102036, 35.451778, 27.888351>,  <27.803682, 35.185787, 27.873093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102036, 35.451778, 27.888351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041651, 0.103727, -0.993733,
		-0.664771, 0.739622, 0.105065,
		0.745885, 0.664981, 0.038148,
		28.325802, 35.651272, 27.899796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579607, 35.704197, 27.475925>,  <27.803682, 35.185787, 27.873093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579607, 35.704197, 27.475925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973022, 35.776268, 27.481434>,  <28.209072, 35.819511, 27.484739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973022, 35.776268, 27.481434>,  <27.579607, 35.704197, 27.475925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973022, 35.776268, 27.481434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021442, 0.192028, -0.981155,
		-0.179427, 0.964708, 0.192730,
		0.983537, 0.180179, 0.013770,
		28.268084, 35.830322, 27.485565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641010, 36.282703, 27.011810>,  <27.579607, 35.704197, 27.475925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641010, 36.282703, 27.011810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976206, 36.064857, 27.025486>,  <28.177322, 35.934151, 27.033691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976206, 36.064857, 27.025486>,  <27.641010, 36.282703, 27.011810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976206, 36.064857, 27.025486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070796, -0.170628, -0.982789,
		0.541075, 0.821146, -0.181541,
		0.837989, -0.544615, 0.034189,
		28.227602, 35.901474, 27.035742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053461, 36.558235, 26.431236>,  <27.641010, 36.282703, 27.011810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053461, 36.558235, 26.431236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189007, 36.197571, 26.538704>,  <28.270334, 35.981171, 26.603184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189007, 36.197571, 26.538704>,  <28.053461, 36.558235, 26.431236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189007, 36.197571, 26.538704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072529, -0.309748, -0.948049,
		0.938036, 0.301771, -0.170358,
		0.338862, -0.901660, 0.268667,
		28.290665, 35.927074, 26.619305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515329, 36.344730, 25.981462>,  <28.053461, 36.558235, 26.431236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515329, 36.344730, 25.981462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438122, 35.990475, 26.150406>,  <28.391798, 35.777920, 26.251772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438122, 35.990475, 26.150406>,  <28.515329, 36.344730, 25.981462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438122, 35.990475, 26.150406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171727, -0.454301, -0.874140,
		0.966051, -0.096195, 0.239776,
		-0.193018, -0.885640, 0.422359,
		28.380217, 35.724781, 26.277113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929657, 35.774586, 25.784721>,  <28.515329, 36.344730, 25.981462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929657, 35.774586, 25.784721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628971, 35.541630, 25.908493>,  <28.448559, 35.401855, 25.982756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628971, 35.541630, 25.908493>,  <28.929657, 35.774586, 25.784721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628971, 35.541630, 25.908493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023547, -0.445194, -0.895125,
		0.659067, -0.680165, 0.320945,
		-0.751715, -0.582390, 0.309429,
		28.403456, 35.366913, 26.001322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013136, 35.004181, 25.474222>,  <28.929657, 35.774586, 25.784721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013136, 35.004181, 25.474222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633911, 35.053589, 25.591469>,  <28.406376, 35.083233, 25.661818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633911, 35.053589, 25.591469>,  <29.013136, 35.004181, 25.474222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633911, 35.053589, 25.591469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317317, -0.431163, -0.844635,
		0.022050, -0.893779, 0.447965,
		-0.948063, 0.123522, 0.293119,
		28.349493, 35.090645, 25.679405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619780, 34.472034, 25.283312>,  <29.013136, 35.004181, 25.474222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619780, 34.472034, 25.283312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295380, 34.694752, 25.355156>,  <28.100739, 34.828381, 25.398262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295380, 34.694752, 25.355156>,  <28.619780, 34.472034, 25.283312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295380, 34.694752, 25.355156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462771, -0.422696, -0.779212,
		-0.357936, -0.715061, 0.600474,
		-0.811002, 0.556790, 0.179612,
		28.052080, 34.861790, 25.409039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998682, 33.883961, 25.176680>,  <28.619780, 34.472034, 25.283312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998682, 33.883961, 25.176680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868105, 34.258671, 25.126274>,  <27.789759, 34.483498, 25.096031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868105, 34.258671, 25.126274>,  <27.998682, 33.883961, 25.176680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868105, 34.258671, 25.126274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487073, -0.280970, -0.826931,
		-0.810059, -0.208565, 0.548000,
		-0.326441, 0.936780, -0.126016,
		27.770172, 34.539703, 25.088469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252342, 33.840664, 24.969551>,  <27.998682, 33.883961, 25.176680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252342, 33.840664, 24.969551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393253, 34.193790, 24.845272>,  <27.477800, 34.405666, 24.770704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393253, 34.193790, 24.845272>,  <27.252342, 33.840664, 24.969551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393253, 34.193790, 24.845272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293806, -0.210879, -0.932313,
		-0.888583, 0.419718, 0.185089,
		0.352277, 0.882818, -0.310699,
		27.498936, 34.458637, 24.752062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768427, 34.113365, 24.603916>,  <27.252342, 33.840664, 24.969551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768427, 34.113365, 24.603916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062410, 34.332703, 24.444340>,  <27.238800, 34.464306, 24.348595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062410, 34.332703, 24.444340>,  <26.768427, 34.113365, 24.603916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062410, 34.332703, 24.444340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381470, -0.152064, -0.911788,
		-0.560637, 0.822312, 0.097415,
		0.734960, 0.548343, -0.398940,
		27.282898, 34.497204, 24.324657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460478, 34.416077, 24.000113>,  <26.768427, 34.113365, 24.603916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460478, 34.416077, 24.000113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849442, 34.487301, 23.939823>,  <27.082819, 34.530033, 23.903648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849442, 34.487301, 23.939823>,  <26.460478, 34.416077, 24.000113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849442, 34.487301, 23.939823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178601, 0.152560, -0.972022,
		-0.150081, 0.972122, 0.180152,
		0.972408, 0.178057, -0.150726,
		27.141165, 34.540718, 23.894606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503029, 35.076527, 23.776846>,  <26.460478, 34.416077, 24.000113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503029, 35.076527, 23.776846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826168, 34.884228, 23.640453>,  <27.020052, 34.768848, 23.558619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826168, 34.884228, 23.640453>,  <26.503029, 35.076527, 23.776846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826168, 34.884228, 23.640453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361319, 0.053120, -0.930928,
		0.465653, 0.875249, -0.130790,
		0.807846, -0.480747, -0.340980,
		27.068521, 34.740005, 23.538160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650242, 35.449471, 23.176468>,  <26.503029, 35.076527, 23.776846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650242, 35.449471, 23.176468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861109, 35.114643, 23.117931>,  <26.987629, 34.913746, 23.082809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861109, 35.114643, 23.117931>,  <26.650242, 35.449471, 23.176468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861109, 35.114643, 23.117931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203670, 0.042733, -0.978107,
		0.824991, 0.545433, -0.147958,
		0.527169, -0.837064, -0.146343,
		27.019260, 34.863525, 23.074028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099119, 35.500114, 22.514498>,  <26.650242, 35.449471, 23.176468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099119, 35.500114, 22.514498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014235, 35.116104, 22.587509>,  <26.963303, 34.885696, 22.631315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014235, 35.116104, 22.587509>,  <27.099119, 35.500114, 22.514498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014235, 35.116104, 22.587509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327006, -0.106251, -0.939030,
		0.920887, -0.258962, -0.291386,
		-0.212213, -0.960026, 0.182527,
		26.950571, 34.828094, 22.642267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446520, 35.877571, 22.429373>,  <27.099119, 35.500114, 22.514498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446520, 35.877571, 22.429373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474007, 36.225681, 22.234272>,  <26.490498, 36.434547, 22.117210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.474007, 36.225681, 22.234272>,  <26.446520, 35.877571, 22.429373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474007, 36.225681, 22.234272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235220, -0.489258, -0.839820,
		-0.969510, -0.057021, -0.238325,
		0.068715, 0.870273, -0.487753,
		26.494621, 36.486763, 22.087946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079893, 35.731071, 21.736925>,  <26.446520, 35.877571, 22.429373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079893, 35.731071, 21.736925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342884, 36.032452, 21.739223>,  <26.500679, 36.213280, 21.740602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342884, 36.032452, 21.739223>,  <26.079893, 35.731071, 21.736925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342884, 36.032452, 21.739223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505908, -0.435791, -0.744408,
		-0.558372, 0.492338, -0.667701,
		0.657478, 0.753452, 0.005744,
		26.540127, 36.258488, 21.740946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058355, 36.131294, 21.099531>,  <26.079893, 35.731071, 21.736925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058355, 36.131294, 21.099531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414118, 36.118420, 21.281925>,  <26.627575, 36.110695, 21.391361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414118, 36.118420, 21.281925>,  <26.058355, 36.131294, 21.099531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414118, 36.118420, 21.281925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388707, -0.471678, -0.791471,
		0.240552, 0.881183, -0.407003,
		0.889405, -0.032185, 0.455985,
		26.680939, 36.108765, 21.418720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893314, 36.403530, 20.441288>,  <26.058355, 36.131294, 21.099531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893314, 36.403530, 20.441288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600388, 36.669674, 20.499268>,  <25.424631, 36.829361, 20.534056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600388, 36.669674, 20.499268>,  <25.893314, 36.403530, 20.441288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600388, 36.669674, 20.499268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084280, 0.122666, -0.988863,
		-0.675729, -0.736377, -0.033754,
		-0.732316, 0.665359, 0.144950,
		25.380693, 36.869282, 20.542753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348169, 36.131474, 20.111526>,  <25.893314, 36.403530, 20.441288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348169, 36.131474, 20.111526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323153, 36.530113, 20.090065>,  <25.308142, 36.769299, 20.077188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323153, 36.530113, 20.090065>,  <25.348169, 36.131474, 20.111526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323153, 36.530113, 20.090065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278104, -0.069033, -0.958067,
		-0.958513, -0.044997, 0.281476,
		-0.062541, 0.996599, -0.053656,
		25.304390, 36.829094, 20.073969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687395, 36.253849, 19.825600>,  <25.348169, 36.131474, 20.111526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687395, 36.253849, 19.825600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973589, 36.522999, 19.750423>,  <25.145306, 36.684490, 19.705317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973589, 36.522999, 19.750423>,  <24.687395, 36.253849, 19.825600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973589, 36.522999, 19.750423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334428, 0.093679, -0.937754,
		-0.613383, 0.733803, 0.292053,
		0.715486, 0.672873, -0.187943,
		25.188234, 36.724861, 19.694040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.450974, 36.813061, 20.215353>,  <24.687395, 36.253849, 19.825600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.450974, 36.813061, 20.215353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053656, 36.857090, 20.229481>,  <23.815264, 36.883507, 20.237957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.053656, 36.857090, 20.229481>,  <24.450974, 36.813061, 20.215353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.053656, 36.857090, 20.229481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113230, 0.987966, 0.105369,
		-0.023296, 0.108662, -0.993806,
		-0.993296, 0.110074, 0.035320,
		23.755667, 36.890114, 20.240076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.110495, 37.258621, 19.707102>,  <24.450974, 36.813061, 20.215353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.110495, 37.258621, 19.707102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.896387, 37.260288, 20.044971>,  <23.767923, 37.261288, 20.247692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.896387, 37.260288, 20.044971>,  <24.110495, 37.258621, 19.707102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.896387, 37.260288, 20.044971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096038, 0.993804, 0.055958,
		-0.839205, 0.111073, -0.532351,
		-0.535267, 0.004165, 0.844673,
		23.735807, 37.261539, 20.298372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.778051, 37.784180, 19.609085>,  <24.110495, 37.258621, 19.707102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.778051, 37.784180, 19.609085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.753443, 37.732868, 20.005016>,  <23.738678, 37.702080, 20.242575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.753443, 37.732868, 20.005016>,  <23.778051, 37.784180, 19.609085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.753443, 37.732868, 20.005016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133939, 0.981676, 0.135545,
		-0.989078, 0.140915, -0.043210,
		-0.061519, -0.128277, 0.989828,
		23.734987, 37.694386, 20.301966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.264662, 38.250927, 19.814001>,  <23.778051, 37.784180, 19.609085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.264662, 38.250927, 19.814001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.466675, 38.191730, 20.154129>,  <23.587883, 38.156212, 20.358206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.466675, 38.191730, 20.154129>,  <23.264662, 38.250927, 19.814001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.466675, 38.191730, 20.154129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197463, 0.978872, 0.053082,
		-0.840209, 0.141098, 0.523585,
		0.505033, -0.147989, 0.850318,
		23.618185, 38.147335, 20.409225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935255, 38.739025, 20.360235>,  <23.264662, 38.250927, 19.814001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935255, 38.739025, 20.360235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.302464, 38.678066, 20.506664>,  <23.522789, 38.641491, 20.594522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.302464, 38.678066, 20.506664>,  <22.935255, 38.739025, 20.360235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.302464, 38.678066, 20.506664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108507, 0.984507, 0.137735,
		-0.381392, -0.086722, 0.920336,
		0.918023, -0.152394, 0.366073,
		23.577871, 38.632347, 20.616486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.999002, 39.151005, 20.869446>,  <22.935255, 38.739025, 20.360235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.999002, 39.151005, 20.869446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390081, 39.081860, 20.821739>,  <23.624729, 39.040375, 20.793116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390081, 39.081860, 20.821739>,  <22.999002, 39.151005, 20.869446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390081, 39.081860, 20.821739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196165, 0.954480, 0.224695,
		0.074995, -0.243079, 0.967103,
		0.977699, -0.172861, -0.119265,
		23.683392, 39.030003, 20.785959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.309090, 39.368450, 21.505438>,  <22.999002, 39.151005, 20.869446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.309090, 39.368450, 21.505438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.561712, 39.369663, 21.195309>,  <23.713285, 39.370392, 21.009232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.561712, 39.369663, 21.195309>,  <23.309090, 39.368450, 21.505438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.561712, 39.369663, 21.195309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216796, 0.959413, 0.180349,
		0.744404, -0.281988, 0.605265,
		0.631555, 0.003034, -0.775325,
		23.751179, 39.370575, 20.962711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.725283, 39.987656, 21.730564>,  <23.309090, 39.368450, 21.505438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.725283, 39.987656, 21.730564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854443, 39.932537, 21.356026>,  <23.931938, 39.899464, 21.131302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.854443, 39.932537, 21.356026>,  <23.725283, 39.987656, 21.730564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854443, 39.932537, 21.356026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163190, 0.982632, -0.088336,
		0.932259, -0.124279, 0.339778,
		0.322898, -0.137800, -0.936348,
		23.951311, 39.891197, 21.075121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.381384, 40.297886, 21.680639>,  <23.725283, 39.987656, 21.730564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.381384, 40.297886, 21.680639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274605, 40.273182, 21.295948>,  <24.210537, 40.258358, 21.065132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274605, 40.273182, 21.295948>,  <24.381384, 40.297886, 21.680639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274605, 40.273182, 21.295948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058082, 0.995099, -0.080027,
		0.961960, -0.077222, -0.262051,
		-0.266947, -0.061762, -0.961730,
		24.194521, 40.254654, 21.007429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.812822, 40.769833, 21.317566>,  <24.381384, 40.297886, 21.680639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.812822, 40.769833, 21.317566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.501516, 40.705441, 21.074787>,  <24.314732, 40.666805, 20.929119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.501516, 40.705441, 21.074787>,  <24.812822, 40.769833, 21.317566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.501516, 40.705441, 21.074787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063364, 0.941513, -0.330966,
		0.624730, -0.296038, -0.722547,
		-0.778266, -0.160980, -0.606949,
		24.268036, 40.657146, 20.892702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119539, 41.021568, 20.613930>,  <24.812822, 40.769833, 21.317566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119539, 41.021568, 20.613930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719551, 41.020531, 20.610916>,  <24.479559, 41.019909, 20.609108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719551, 41.020531, 20.610916>,  <25.119539, 41.021568, 20.613930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719551, 41.020531, 20.610916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000384, 0.928909, -0.370308,
		0.007956, -0.370299, -0.928879,
		-0.999968, -0.002589, -0.007533,
		24.419561, 41.019753, 20.608656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898022, 41.181683, 19.929731>,  <25.119539, 41.021568, 20.613930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898022, 41.181683, 19.929731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587584, 41.275066, 20.164055>,  <24.401320, 41.331097, 20.304649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587584, 41.275066, 20.164055>,  <24.898022, 41.181683, 19.929731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587584, 41.275066, 20.164055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040740, 0.908446, -0.416012,
		-0.629296, -0.346731, -0.695531,
		-0.776097, 0.233459, 0.585808,
		24.354755, 41.345104, 20.339798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.442883, 41.480186, 19.451797>,  <24.898022, 41.181683, 19.929731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.442883, 41.480186, 19.451797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327526, 41.594402, 19.817375>,  <24.258312, 41.662933, 20.036722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.327526, 41.594402, 19.817375>,  <24.442883, 41.480186, 19.451797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.327526, 41.594402, 19.817375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185316, 0.919808, -0.345848,
		-0.939408, -0.269109, -0.212351,
		-0.288393, 0.285541, 0.913945,
		24.241009, 41.680065, 20.091558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.887798, 41.857079, 19.234573>,  <24.442883, 41.480186, 19.451797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.887798, 41.857079, 19.234573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.973606, 41.961700, 19.610992>,  <24.025091, 42.024475, 19.836843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.973606, 41.961700, 19.610992>,  <23.887798, 41.857079, 19.234573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.973606, 41.961700, 19.610992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192509, 0.955900, -0.221802,
		-0.957560, -0.133579, 0.255412,
		0.214520, 0.261558, 0.941047,
		24.037962, 42.040169, 19.893307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.397070, 42.242161, 19.409395>,  <23.887798, 41.857079, 19.234573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.397070, 42.242161, 19.409395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.675610, 42.355621, 19.673103>,  <23.842733, 42.423698, 19.831329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.675610, 42.355621, 19.673103>,  <23.397070, 42.242161, 19.409395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.675610, 42.355621, 19.673103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105462, 0.949055, -0.296937,
		-0.709912, 0.137244, 0.690789,
		0.696349, 0.283651, 0.659272,
		23.884514, 42.440716, 19.870886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.104301, 42.800831, 19.894674>,  <23.397070, 42.242161, 19.409395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.104301, 42.800831, 19.894674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.502954, 42.826103, 19.915581>,  <23.742146, 42.841267, 19.928125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.502954, 42.826103, 19.915581>,  <23.104301, 42.800831, 19.894674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.502954, 42.826103, 19.915581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043452, 0.947509, -0.316762,
		-0.069536, 0.313425, 0.947064,
		0.996633, 0.063179, 0.052267,
		23.801945, 42.845058, 19.931261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.227369, 43.404884, 20.223541>,  <23.104301, 42.800831, 19.894674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.227369, 43.404884, 20.223541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.564526, 43.330532, 20.021557>,  <23.766819, 43.285919, 19.900366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.564526, 43.330532, 20.021557>,  <23.227369, 43.404884, 20.223541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.564526, 43.330532, 20.021557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024508, 0.950726, -0.309064,
		0.537526, 0.248131, 0.805913,
		0.842891, -0.185881, -0.504959,
		23.817392, 43.274769, 19.870070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.532677, 44.131489, 20.260756>,  <23.227369, 43.404884, 20.223541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.532677, 44.131489, 20.260756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.779863, 43.924801, 20.023735>,  <23.928175, 43.800789, 19.881523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.779863, 43.924801, 20.023735>,  <23.532677, 44.131489, 20.260756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.779863, 43.924801, 20.023735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212549, 0.835421, -0.506849,
		0.756928, 0.187270, 0.626091,
		0.617967, -0.516723, -0.592549,
		23.965254, 43.769783, 19.845970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171488, 44.320629, 20.391531>,  <23.532677, 44.131489, 20.260756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171488, 44.320629, 20.391531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128752, 44.199421, 20.012741>,  <24.103109, 44.126698, 19.785467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128752, 44.199421, 20.012741>,  <24.171488, 44.320629, 20.391531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.128752, 44.199421, 20.012741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312891, 0.893792, -0.321302,
		0.943761, -0.330629, -0.000682,
		-0.106841, -0.303019, -0.946977,
		24.096699, 44.108517, 19.728647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842339, 44.428448, 20.045771>,  <24.171488, 44.320629, 20.391531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842339, 44.428448, 20.045771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.551920, 44.427509, 19.770714>,  <24.377668, 44.426945, 19.605680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.551920, 44.427509, 19.770714>,  <24.842339, 44.428448, 20.045771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551920, 44.427509, 19.770714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328807, 0.877082, -0.350161,
		0.603939, -0.480335, -0.636031,
		-0.726046, -0.002345, -0.687642,
		24.334106, 44.426807, 19.564421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106642, 44.702412, 19.396988>,  <24.842339, 44.428448, 20.045771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106642, 44.702412, 19.396988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708853, 44.736965, 19.373116>,  <24.470179, 44.757698, 19.358791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708853, 44.736965, 19.373116>,  <25.106642, 44.702412, 19.396988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708853, 44.736965, 19.373116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099592, 0.956106, -0.275578,
		0.033254, -0.279999, -0.959424,
		-0.994472, 0.086387, -0.059680,
		24.410511, 44.762882, 19.355211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852226, 45.012764, 18.685934>,  <25.106642, 44.702412, 19.396988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852226, 45.012764, 18.685934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634628, 45.132267, 18.999573>,  <24.504068, 45.203968, 19.187756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634628, 45.132267, 18.999573>,  <24.852226, 45.012764, 18.685934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634628, 45.132267, 18.999573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052263, 0.944715, -0.323701,
		-0.837459, -0.135113, -0.529535,
		-0.543996, 0.298762, 0.784098,
		24.471430, 45.221897, 19.234802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.365902, 45.358929, 18.356941>,  <24.852226, 45.012764, 18.685934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.365902, 45.358929, 18.356941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409367, 45.470531, 18.738590>,  <24.435446, 45.537495, 18.967579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409367, 45.470531, 18.738590>,  <24.365902, 45.358929, 18.356941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409367, 45.470531, 18.738590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028873, 0.958514, -0.283580,
		-0.993659, 0.058363, 0.096097,
		0.108661, 0.279008, 0.954121,
		24.441965, 45.554234, 19.024826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902246, 45.978161, 18.443119>,  <24.365902, 45.358929, 18.356941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902246, 45.978161, 18.443119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245369, 45.990231, 18.648354>,  <24.451242, 45.997471, 18.771494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245369, 45.990231, 18.648354>,  <23.902246, 45.978161, 18.443119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245369, 45.990231, 18.648354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224194, 0.876333, -0.426355,
		-0.462499, 0.480761, 0.744959,
		0.857806, 0.030173, 0.513087,
		24.502710, 45.999283, 18.802280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.367899, 45.996319, 17.932249>,  <23.902246, 45.978161, 18.443119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.367899, 45.996319, 17.932249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265978, 46.105900, 17.561298>,  <23.204824, 46.171650, 17.338728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.265978, 46.105900, 17.561298>,  <23.367899, 45.996319, 17.932249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.265978, 46.105900, 17.561298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399447, 0.843563, 0.358948,
		0.880635, 0.461898, -0.105511,
		-0.254803, 0.273956, -0.927375,
		23.189537, 46.188087, 17.283087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.186565, 45.511696, 17.357128>,  <23.367899, 45.996319, 17.932249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.186565, 45.511696, 17.357128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.868282, 45.331005, 17.195736>,  <22.677313, 45.222591, 17.098902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.868282, 45.331005, 17.195736>,  <23.186565, 45.511696, 17.357128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.868282, 45.331005, 17.195736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529460, 0.195245, 0.825561,
		-0.294151, 0.870530, -0.394529,
		-0.795705, -0.451727, -0.403479,
		22.629570, 45.195488, 17.074692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.652369, 45.964043, 17.445335>,  <23.186565, 45.511696, 17.357128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.652369, 45.964043, 17.445335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511990, 45.590321, 17.420326>,  <22.427763, 45.366089, 17.405321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.511990, 45.590321, 17.420326>,  <22.652369, 45.964043, 17.445335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.511990, 45.590321, 17.420326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639803, 0.190497, 0.744555,
		-0.683732, 0.301302, -0.664626,
		-0.350945, -0.934306, -0.062525,
		22.406706, 45.310028, 17.401569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.930313, 45.742443, 17.755373>,  <22.652369, 45.964043, 17.445335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.930313, 45.742443, 17.755373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.542978, 45.830601, 17.802273>,  <21.310577, 45.883495, 17.830412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.542978, 45.830601, 17.802273>,  <21.930313, 45.742443, 17.755373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.542978, 45.830601, 17.802273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142010, -0.872590, 0.467353,
		0.205309, 0.435906, 0.876261,
		-0.968339, 0.220390, 0.117248,
		21.252476, 45.896717, 17.837446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.750957, 45.641884, 18.431618>,  <21.930313, 45.742443, 17.755373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.750957, 45.641884, 18.431618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.413628, 45.602428, 18.220306>,  <21.211229, 45.578754, 18.093519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.413628, 45.602428, 18.220306>,  <21.750957, 45.641884, 18.431618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.413628, 45.602428, 18.220306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203766, -0.850922, 0.484160,
		-0.497277, 0.515949, 0.697505,
		-0.843324, -0.098634, -0.528277,
		21.160631, 45.572838, 18.061823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.081188, 45.404617, 18.868126>,  <21.750957, 45.641884, 18.431618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.081188, 45.404617, 18.868126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.018253, 45.309101, 18.484829>,  <20.980494, 45.251793, 18.254850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.018253, 45.309101, 18.484829>,  <21.081188, 45.404617, 18.868126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.018253, 45.309101, 18.484829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297582, -0.913760, 0.276563,
		-0.941642, 0.328669, 0.072708,
		-0.157335, -0.238787, -0.958241,
		20.971052, 45.237465, 18.197357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385912, 45.162235, 18.681688>,  <21.081188, 45.404617, 18.868126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.385912, 45.162235, 18.681688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.640354, 45.012539, 18.411781>,  <20.793020, 44.922722, 18.249838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.640354, 45.012539, 18.411781>,  <20.385912, 45.162235, 18.681688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.640354, 45.012539, 18.411781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244160, -0.927193, 0.284077,
		-0.731954, -0.015951, -0.681167,
		0.636105, -0.374245, -0.674767,
		20.831186, 44.900265, 18.209351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.920166, 44.702427, 18.157139>,  <20.385912, 45.162235, 18.681688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.920166, 44.702427, 18.157139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311260, 44.630421, 18.200279>,  <20.545916, 44.587219, 18.226164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311260, 44.630421, 18.200279>,  <19.920166, 44.702427, 18.157139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311260, 44.630421, 18.200279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191575, -0.975446, 0.108648,
		0.085647, -0.126891, -0.988212,
		0.977734, -0.180012, 0.107853,
		20.604580, 44.576416, 18.232635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.110947, 44.184040, 17.587887>,  <19.920166, 44.702427, 18.157139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.110947, 44.184040, 17.587887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.378088, 44.168468, 17.885197>,  <20.538372, 44.159126, 18.063583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.378088, 44.168468, 17.885197>,  <20.110947, 44.184040, 17.587887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.378088, 44.168468, 17.885197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068419, -0.997614, 0.009227,
		0.741144, -0.057017, -0.668921,
		0.667851, -0.038928, 0.743276,
		20.578444, 44.156792, 18.108179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.462311, 43.619545, 17.416658>,  <20.110947, 44.184040, 17.587887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.462311, 43.619545, 17.416658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.577328, 43.678585, 17.795189>,  <20.646338, 43.714008, 18.022308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.577328, 43.678585, 17.795189>,  <20.462311, 43.619545, 17.416658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.577328, 43.678585, 17.795189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093416, -0.987666, 0.125658,
		0.953202, 0.052270, -0.297782,
		0.287541, 0.147595, 0.946328,
		20.663589, 43.722862, 18.079086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891125, 43.061520, 17.573324>,  <20.462311, 43.619545, 17.416658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891125, 43.061520, 17.573324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821997, 43.195408, 17.943859>,  <20.780519, 43.275742, 18.166180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.821997, 43.195408, 17.943859>,  <20.891125, 43.061520, 17.573324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821997, 43.195408, 17.943859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023235, -0.941610, 0.335902,
		0.984679, 0.036527, 0.170506,
		-0.172820, 0.334718, 0.926335,
		20.770151, 43.295822, 18.221760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.381447, 42.816803, 18.032990>,  <20.891125, 43.061520, 17.573324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.381447, 42.816803, 18.032990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068274, 42.895473, 18.269070>,  <20.880369, 42.942677, 18.410717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068274, 42.895473, 18.269070>,  <21.381447, 42.816803, 18.032990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068274, 42.895473, 18.269070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026022, -0.937527, 0.346939,
		0.621563, 0.286987, 0.728902,
		-0.782932, 0.196677, 0.590200,
		20.833393, 42.954475, 18.446129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.460112, 42.404816, 18.667494>,  <21.381447, 42.816803, 18.032990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.460112, 42.404816, 18.667494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.074894, 42.511337, 18.651375>,  <20.843763, 42.575253, 18.641703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.074894, 42.511337, 18.651375>,  <21.460112, 42.404816, 18.667494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.074894, 42.511337, 18.651375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269208, -0.947071, 0.174884,
		0.008407, 0.179270, 0.983764,
		-0.963045, 0.266308, -0.040299,
		20.785980, 42.591228, 18.639286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.282774, 42.108120, 19.305460>,  <21.460112, 42.404816, 18.667494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.282774, 42.108120, 19.305460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.958523, 42.163052, 19.077766>,  <20.763973, 42.196011, 18.941151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.958523, 42.163052, 19.077766>,  <21.282774, 42.108120, 19.305460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.958523, 42.163052, 19.077766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399677, -0.840218, 0.366459,
		-0.427953, 0.524570, 0.735990,
		-0.810626, 0.137331, -0.569233,
		20.715336, 42.204250, 18.906996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726023, 42.265198, 19.740440>,  <21.282774, 42.108120, 19.305460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726023, 42.265198, 19.740440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573587, 42.127907, 19.397053>,  <20.482126, 42.045532, 19.191021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573587, 42.127907, 19.397053>,  <20.726023, 42.265198, 19.740440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573587, 42.127907, 19.397053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070773, -0.914984, 0.397236,
		-0.921825, 0.212139, 0.324401,
		-0.381090, -0.343223, -0.858468,
		20.459261, 42.024940, 19.139513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158554, 41.824631, 19.885298>,  <20.726023, 42.265198, 19.740440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158554, 41.824631, 19.885298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227856, 41.709648, 19.508499>,  <20.269436, 41.640659, 19.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227856, 41.709648, 19.508499>,  <20.158554, 41.824631, 19.885298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227856, 41.709648, 19.508499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266386, -0.934485, 0.236169,
		-0.948168, 0.210017, -0.238475,
		0.173252, -0.287455, -0.941994,
		20.279831, 41.623413, 19.225901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521709, 41.431007, 19.717012>,  <20.158554, 41.824631, 19.885298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521709, 41.431007, 19.717012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.853365, 41.363773, 19.503742>,  <20.052359, 41.323433, 19.375780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.853365, 41.363773, 19.503742>,  <19.521709, 41.431007, 19.717012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.853365, 41.363773, 19.503742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005340, -0.951306, 0.308201,
		-0.559018, -0.258389, -0.787867,
		0.829138, -0.168083, -0.533177,
		20.102106, 41.313347, 19.343788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.401737, 40.791195, 19.514196>,  <19.521709, 41.431007, 19.717012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.401737, 40.791195, 19.514196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.797068, 40.816933, 19.458958>,  <20.034266, 40.832375, 19.425814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.797068, 40.816933, 19.458958>,  <19.401737, 40.791195, 19.514196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.797068, 40.816933, 19.458958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101580, -0.953849, 0.282584,
		-0.113541, -0.293313, -0.949250,
		0.988327, 0.064340, -0.138096,
		20.093565, 40.836235, 19.417528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.516394, 40.165710, 19.245773>,  <19.401737, 40.791195, 19.514196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.516394, 40.165710, 19.245773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.877527, 40.296936, 19.356960>,  <20.094208, 40.375671, 19.423672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.877527, 40.296936, 19.356960>,  <19.516394, 40.165710, 19.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.877527, 40.296936, 19.356960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218649, -0.906902, 0.360169,
		0.370247, -0.264396, -0.890512,
		0.902834, 0.328061, 0.277968,
		20.148378, 40.395355, 19.440351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.069420, 39.690323, 19.013824>,  <19.516394, 40.165710, 19.245773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.069420, 39.690323, 19.013824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.262756, 39.877548, 19.309742>,  <20.378759, 39.989883, 19.487291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.262756, 39.877548, 19.309742>,  <20.069420, 39.690323, 19.013824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.262756, 39.877548, 19.309742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341013, -0.878978, 0.333330,
		0.806282, 0.091167, -0.584464,
		0.483342, 0.468067, 0.739793,
		20.407759, 40.017967, 19.531679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.653482, 39.412888, 18.964756>,  <20.069420, 39.690323, 19.013824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.653482, 39.412888, 18.964756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.659891, 39.583138, 19.326660>,  <20.663736, 39.685287, 19.543802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.659891, 39.583138, 19.326660>,  <20.653482, 39.412888, 18.964756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659891, 39.583138, 19.326660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498156, -0.787970, 0.361862,
		0.866940, 0.444913, -0.224652,
		0.016022, 0.425624, 0.904758,
		20.664698, 39.710823, 19.598087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.294340, 39.231934, 19.249969>,  <20.653482, 39.412888, 18.964756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.294340, 39.231934, 19.249969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078867, 39.318760, 19.575596>,  <20.949583, 39.370857, 19.770971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078867, 39.318760, 19.575596>,  <21.294340, 39.231934, 19.249969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.078867, 39.318760, 19.575596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498485, -0.696849, 0.515670,
		0.679217, 0.683581, 0.267173,
		-0.538681, 0.217070, 0.814066,
		20.917263, 39.383881, 19.819815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766037, 39.150631, 19.741943>,  <21.294340, 39.231934, 19.249969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766037, 39.150631, 19.741943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415895, 39.125401, 19.933685>,  <21.205811, 39.110264, 20.048731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.415895, 39.125401, 19.933685>,  <21.766037, 39.150631, 19.741943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415895, 39.125401, 19.933685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402885, -0.643267, 0.651069,
		0.267289, 0.763039, 0.588496,
		-0.875351, -0.063073, 0.479355,
		21.153290, 39.106480, 20.077492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978550, 39.079243, 20.388439>,  <21.766037, 39.150631, 19.741943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978550, 39.079243, 20.388439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594944, 38.966080, 20.382099>,  <21.364780, 38.898182, 20.378296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594944, 38.966080, 20.382099>,  <21.978550, 39.079243, 20.388439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594944, 38.966080, 20.382099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166193, -0.606914, 0.777197,
		-0.229494, 0.742710, 0.629058,
		-0.959016, -0.282907, -0.015850,
		21.307240, 38.881207, 20.377344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.730669, 39.202568, 21.106943>,  <21.978550, 39.079243, 20.388439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.730669, 39.202568, 21.106943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507463, 38.924725, 20.925331>,  <21.373541, 38.758018, 20.816364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507463, 38.924725, 20.925331>,  <21.730669, 39.202568, 21.106943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.507463, 38.924725, 20.925331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198255, -0.642880, 0.739865,
		-0.805802, 0.322840, 0.496445,
		-0.558012, -0.694608, -0.454029,
		21.340059, 38.716343, 20.789122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333429, 38.864491, 21.603458>,  <21.730669, 39.202568, 21.106943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333429, 38.864491, 21.603458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.278631, 38.612103, 21.298012>,  <21.245752, 38.460670, 21.114744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.278631, 38.612103, 21.298012>,  <21.333429, 38.864491, 21.603458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.278631, 38.612103, 21.298012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028408, -0.768065, 0.639741,
		-0.990164, 0.109335, 0.087297,
		-0.136996, -0.630969, -0.763617,
		21.237532, 38.422813, 21.068926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750330, 38.385101, 21.740196>,  <21.333429, 38.864491, 21.603458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750330, 38.385101, 21.740196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.986788, 38.203465, 21.473557>,  <21.128662, 38.094482, 21.313574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.986788, 38.203465, 21.473557>,  <20.750330, 38.385101, 21.740196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.986788, 38.203465, 21.473557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030755, -0.813172, 0.581210,
		-0.805969, -0.364089, -0.466749,
		0.591159, -0.454082, -0.666589,
		21.164131, 38.067238, 21.273577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.432867, 37.723961, 21.668335>,  <20.750330, 38.385101, 21.740196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.432867, 37.723961, 21.668335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.820412, 37.702286, 21.571697>,  <21.052938, 37.689281, 21.513714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.820412, 37.702286, 21.571697>,  <20.432867, 37.723961, 21.668335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.820412, 37.702286, 21.571697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108945, -0.782921, 0.612508,
		-0.222339, -0.619757, -0.752640,
		0.968863, -0.054188, -0.241594,
		21.111071, 37.686028, 21.499220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605993, 37.455925, 22.336206>,  <20.432867, 37.723961, 21.668335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605993, 37.455925, 22.336206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.342695, 37.598606, 22.601379>,  <20.184717, 37.684216, 22.760483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.342695, 37.598606, 22.601379>,  <20.605993, 37.455925, 22.336206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.342695, 37.598606, 22.601379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564573, 0.348603, -0.748153,
		-0.497968, -0.866740, -0.028080,
		-0.658243, 0.356703, 0.662932,
		20.145222, 37.705616, 22.800259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956675, 37.317974, 22.080952>,  <20.605993, 37.455925, 22.336206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956675, 37.317974, 22.080952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870012, 37.625790, 22.321239>,  <19.818016, 37.810478, 22.465412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.870012, 37.625790, 22.321239>,  <19.956675, 37.317974, 22.080952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870012, 37.625790, 22.321239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706531, 0.301040, -0.640460,
		-0.673702, -0.563186, 0.478484,
		-0.216655, 0.769543, 0.600720,
		19.805016, 37.856651, 22.501455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183502, 37.313393, 22.290607>,  <19.956675, 37.317974, 22.080952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183502, 37.313393, 22.290607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.352999, 37.675690, 22.287281>,  <19.454697, 37.893070, 22.285286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.352999, 37.675690, 22.287281>,  <19.183502, 37.313393, 22.290607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.352999, 37.675690, 22.287281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609611, 0.278384, -0.742211,
		-0.669940, 0.319573, 0.670115,
		0.423739, 0.905746, -0.008315,
		19.480120, 37.947414, 22.284786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.583735, 37.770382, 22.349344>,  <19.183502, 37.313393, 22.290607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.583735, 37.770382, 22.349344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899672, 37.918503, 22.153786>,  <19.089233, 38.007378, 22.036449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.899672, 37.918503, 22.153786>,  <18.583735, 37.770382, 22.349344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899672, 37.918503, 22.153786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610408, 0.397203, -0.685297,
		-0.059578, 0.839704, 0.539766,
		0.789843, 0.370306, -0.488898,
		19.136625, 38.029594, 22.007116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966419, 37.731323, 22.893124>,  <18.583735, 37.770382, 22.349344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966419, 37.731323, 22.893124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850988, 37.570808, 23.240845>,  <17.781731, 37.474499, 23.449478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850988, 37.570808, 23.240845>,  <17.966419, 37.731323, 22.893124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850988, 37.570808, 23.240845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952109, -0.024453, 0.304778,
		-0.101048, 0.915624, 0.389130,
		-0.288577, -0.401292, 0.869303,
		17.764416, 37.450420, 23.501637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.859442, 31.548948, 31.635818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.248791, 31.465984, 31.674858>,  <30.482401, 31.416206, 31.698282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.248791, 31.465984, 31.674858>,  <29.859442, 31.548948, 31.635818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248791, 31.465984, 31.674858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147436, 0.240455, -0.959398,
		0.175519, 0.948242, 0.264632,
		0.973373, -0.207409, 0.097601,
		30.540802, 31.403761, 31.704138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259691, 32.107388, 31.289782>,  <29.859442, 31.548948, 31.635818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259691, 32.107388, 31.289782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.500395, 31.790970, 31.333855>,  <30.644817, 31.601120, 31.360298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.500395, 31.790970, 31.333855>,  <30.259691, 32.107388, 31.289782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500395, 31.790970, 31.333855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386065, 0.167331, -0.907168,
		0.699169, 0.588436, 0.406086,
		0.601761, -0.791040, 0.110182,
		30.680923, 31.553658, 31.366909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899952, 32.325642, 31.192251>,  <30.259691, 32.107388, 31.289782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899952, 32.325642, 31.192251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.912918, 31.933781, 31.113018>,  <30.920698, 31.698666, 31.065477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.912918, 31.933781, 31.113018>,  <30.899952, 32.325642, 31.192251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912918, 31.933781, 31.113018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387977, 0.194981, -0.900809,
		0.921099, -0.047653, 0.386401,
		0.032414, -0.979649, -0.198085,
		30.922642, 31.639887, 31.053593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506521, 32.242283, 30.886663>,  <30.899952, 32.325642, 31.192251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506521, 32.242283, 30.886663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.324574, 31.904308, 30.774113>,  <31.215405, 31.701523, 30.706583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.324574, 31.904308, 30.774113>,  <31.506521, 32.242283, 30.886663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324574, 31.904308, 30.774113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387671, 0.096582, -0.916724,
		0.801752, -0.526070, 0.283626,
		-0.454868, -0.844939, -0.281377,
		31.188112, 31.650827, 30.689699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040386, 31.893278, 30.443312>,  <31.506521, 32.242283, 30.886663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040386, 31.893278, 30.443312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.678894, 31.738438, 30.370182>,  <31.461998, 31.645533, 30.326303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.678894, 31.738438, 30.370182>,  <32.040386, 31.893278, 30.443312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678894, 31.738438, 30.370182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195071, 0.007788, -0.980758,
		0.381076, -0.922005, 0.068474,
		-0.903730, -0.387101, -0.182824,
		31.407776, 31.622307, 30.315334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198643, 31.367182, 29.976942>,  <32.040386, 31.893278, 30.443312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198643, 31.367182, 29.976942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.825781, 31.500275, 29.919853>,  <31.602062, 31.580130, 29.885599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.825781, 31.500275, 29.919853>,  <32.198643, 31.367182, 29.976942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825781, 31.500275, 29.919853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161001, 0.027874, -0.986561,
		-0.324282, -0.942609, -0.079553,
		-0.932159, 0.332732, -0.142722,
		31.546133, 31.600094, 29.877037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005756, 30.969788, 29.435846>,  <32.198643, 31.367182, 29.976942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005756, 30.969788, 29.435846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.711687, 31.240768, 29.426239>,  <31.535244, 31.403357, 29.420475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.711687, 31.240768, 29.426239>,  <32.005756, 30.969788, 29.435846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711687, 31.240768, 29.426239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032776, -0.070918, -0.996944,
		-0.677083, -0.732142, 0.074341,
		-0.735176, 0.677450, -0.024021,
		31.491135, 31.444004, 29.419033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489393, 30.742172, 28.960333>,  <32.005756, 30.969788, 29.435846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489393, 30.742172, 28.960333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.404669, 31.132175, 28.987144>,  <31.353834, 31.366179, 29.003231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.404669, 31.132175, 28.987144>,  <31.489393, 30.742172, 28.960333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404669, 31.132175, 28.987144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103175, 0.045894, -0.993604,
		-0.971849, -0.217372, 0.090876,
		-0.211811, 0.975009, 0.067029,
		31.341125, 31.424679, 29.007254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241678, 30.896578, 28.333078>,  <31.489393, 30.742172, 28.960333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241678, 30.896578, 28.333078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.294161, 31.267887, 28.472271>,  <31.325651, 31.490673, 28.555786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.294161, 31.267887, 28.472271>,  <31.241678, 30.896578, 28.333078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294161, 31.267887, 28.472271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017326, 0.348815, -0.937032,
		-0.991203, 0.128975, 0.029684,
		0.131208, 0.928275, 0.347981,
		31.333523, 31.546370, 28.576666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684551, 31.329449, 28.130793>,  <31.241678, 30.896578, 28.333078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684551, 31.329449, 28.130793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.016273, 31.550606, 28.163181>,  <31.215307, 31.683300, 28.182613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.016273, 31.550606, 28.163181>,  <30.684551, 31.329449, 28.130793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016273, 31.550606, 28.163181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096268, 0.284102, -0.953949,
		-0.550437, 0.783323, 0.288834,
		0.829308, 0.552894, 0.080971,
		31.265066, 31.716475, 28.187473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521166, 31.963060, 27.705282>,  <30.684551, 31.329449, 28.130793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521166, 31.963060, 27.705282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.916956, 31.943874, 27.759888>,  <31.154430, 31.932362, 27.792650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.916956, 31.943874, 27.759888>,  <30.521166, 31.963060, 27.705282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916956, 31.943874, 27.759888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142497, 0.159267, -0.976897,
		0.025117, 0.986070, 0.164426,
		0.989477, -0.047967, 0.136512,
		31.213799, 31.929483, 27.800840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739120, 32.543671, 27.450333>,  <30.521166, 31.963060, 27.705282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739120, 32.543671, 27.450333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.060312, 32.307117, 27.420708>,  <31.253027, 32.165184, 27.402933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.060312, 32.307117, 27.420708>,  <30.739120, 32.543671, 27.450333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060312, 32.307117, 27.420708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097774, 0.253290, -0.962437,
		0.587930, 0.765577, 0.261209,
		0.802981, -0.591385, -0.074064,
		31.301207, 32.129704, 27.398489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141592, 32.872650, 27.068192>,  <30.739120, 32.543671, 27.450333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141592, 32.872650, 27.068192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.355556, 32.537155, 27.027405>,  <31.483934, 32.335857, 27.002934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.355556, 32.537155, 27.027405>,  <31.141592, 32.872650, 27.068192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355556, 32.537155, 27.027405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158219, 0.217985, -0.963042,
		0.829963, 0.499008, 0.249306,
		0.534910, -0.838734, -0.101966,
		31.516029, 32.285534, 26.996815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702713, 32.977642, 26.687580>,  <31.141592, 32.872650, 27.068192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702713, 32.977642, 26.687580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.612261, 32.590675, 26.642033>,  <31.557989, 32.358494, 26.614704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.612261, 32.590675, 26.642033>,  <31.702713, 32.977642, 26.687580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612261, 32.590675, 26.642033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033532, 0.109098, -0.993465,
		0.973520, -0.228471, 0.007769,
		-0.226131, -0.967418, -0.113870,
		31.544422, 32.300449, 26.607872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202076, 32.765873, 26.233355>,  <31.702713, 32.977642, 26.687580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202076, 32.765873, 26.233355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.920729, 32.484325, 26.193672>,  <31.751921, 32.315395, 26.169863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.920729, 32.484325, 26.193672>,  <32.202076, 32.765873, 26.233355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920729, 32.484325, 26.193672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198659, -0.060650, -0.978190,
		0.682501, -0.707736, 0.182489,
		-0.703368, -0.703869, -0.099205,
		31.709719, 32.273167, 26.163910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472637, 32.397465, 25.749414>,  <32.202076, 32.765873, 26.233355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472637, 32.397465, 25.749414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.097847, 32.258091, 25.739101>,  <31.872972, 32.174469, 25.732914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.097847, 32.258091, 25.739101>,  <32.472637, 32.397465, 25.749414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097847, 32.258091, 25.739101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071494, -0.118974, -0.990320,
		0.341992, -0.929753, 0.136387,
		-0.936979, -0.348432, -0.025783,
		31.816753, 32.153561, 25.731367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521336, 31.806997, 25.369638>,  <32.472637, 32.397465, 25.749414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521336, 31.806997, 25.369638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.130043, 31.885212, 25.341843>,  <31.895267, 31.932140, 25.325165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.130043, 31.885212, 25.341843>,  <32.521336, 31.806997, 25.369638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130043, 31.885212, 25.341843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045393, -0.125131, -0.991101,
		-0.202493, -0.972680, 0.113531,
		-0.978231, 0.195538, -0.069491,
		31.836573, 31.943872, 25.320995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132111, 31.259199, 24.967808>,  <32.521336, 31.806997, 25.369638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132111, 31.259199, 24.967808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.902433, 31.586506, 24.956909>,  <31.764627, 31.782890, 24.950371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.902433, 31.586506, 24.956909>,  <32.132111, 31.259199, 24.967808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902433, 31.586506, 24.956909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020629, -0.047729, -0.998647,
		-0.818461, -0.572853, 0.044285,
		-0.574192, 0.818268, -0.027247,
		31.730175, 31.831985, 24.948734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632095, 31.108521, 24.501833>,  <32.132111, 31.259199, 24.967808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632095, 31.108521, 24.501833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.598125, 31.507069, 24.504326>,  <31.577744, 31.746197, 24.505821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.598125, 31.507069, 24.504326>,  <31.632095, 31.108521, 24.501833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598125, 31.507069, 24.504326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041906, 0.002677, -0.999118,
		-0.995506, -0.085110, 0.041527,
		-0.084923, 0.996368, 0.006232,
		31.572649, 31.805979, 24.506195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149858, 31.302364, 23.986126>,  <31.632095, 31.108521, 24.501833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149858, 31.302364, 23.986126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.332256, 31.653755, 24.043186>,  <31.441694, 31.864590, 24.077423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.332256, 31.653755, 24.043186>,  <31.149858, 31.302364, 23.986126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332256, 31.653755, 24.043186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062914, 0.128067, -0.989768,
		-0.887756, 0.460303, 0.003129,
		0.455994, 0.878476, 0.142652,
		31.469055, 31.917297, 24.085981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825287, 31.736980, 23.568489>,  <31.149858, 31.302364, 23.986126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825287, 31.736980, 23.568489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.186008, 31.903446, 23.615067>,  <31.402441, 32.003326, 23.643013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.186008, 31.903446, 23.615067>,  <30.825287, 31.736980, 23.568489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186008, 31.903446, 23.615067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074181, 0.116376, -0.990431,
		-0.425735, 0.901811, 0.074077,
		0.901802, 0.416166, 0.116442,
		31.456549, 32.028297, 23.650000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846008, 32.171116, 23.062885>,  <30.825287, 31.736980, 23.568489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846008, 32.171116, 23.062885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.224710, 32.086067, 23.159588>,  <31.451931, 32.035038, 23.217609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.224710, 32.086067, 23.159588>,  <30.846008, 32.171116, 23.062885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224710, 32.086067, 23.159588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193905, -0.222862, -0.955371,
		0.257014, 0.951380, -0.169766,
		0.946755, -0.212626, 0.241756,
		31.508738, 32.022278, 23.232115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256519, 32.506310, 23.316822>,  <30.846008, 32.171116, 23.062885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256519, 32.506310, 23.316822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.863077, 32.488232, 23.246990>,  <29.627012, 32.477386, 23.205091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.863077, 32.488232, 23.246990>,  <30.256519, 32.506310, 23.316822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863077, 32.488232, 23.246990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180217, 0.281485, 0.942490,
		0.006549, 0.958501, -0.285015,
		-0.983605, -0.045192, -0.174581,
		29.567995, 32.474674, 23.194616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915262, 33.052837, 23.714573>,  <30.256519, 32.506310, 23.316822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915262, 33.052837, 23.714573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.611526, 32.801174, 23.648159>,  <29.429285, 32.650177, 23.608311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.611526, 32.801174, 23.648159>,  <29.915262, 33.052837, 23.714573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611526, 32.801174, 23.648159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316438, 0.134092, 0.939088,
		-0.568567, 0.765627, -0.300910,
		-0.759341, -0.629154, -0.166033,
		29.383724, 32.612427, 23.598349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290766, 33.390114, 23.932013>,  <29.915262, 33.052837, 23.714573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290766, 33.390114, 23.932013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196795, 33.001385, 23.924397>,  <29.140411, 32.768147, 23.919827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196795, 33.001385, 23.924397>,  <29.290766, 33.390114, 23.932013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196795, 33.001385, 23.924397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482425, 0.099569, 0.870260,
		-0.843845, 0.213636, -0.492225,
		-0.234929, -0.971826, -0.019042,
		29.126316, 32.709835, 23.918684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515387, 33.357140, 24.050455>,  <29.290766, 33.390114, 23.932013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515387, 33.357140, 24.050455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.667484, 33.003056, 24.157642>,  <28.758743, 32.790604, 24.221954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.667484, 33.003056, 24.157642>,  <28.515387, 33.357140, 24.050455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667484, 33.003056, 24.157642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499614, 0.047228, 0.864960,
		-0.778331, -0.462779, -0.424307,
		0.380246, -0.885215, 0.267970,
		28.781559, 32.737492, 24.238033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974403, 32.956772, 24.310755>,  <28.515387, 33.357140, 24.050455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974403, 32.956772, 24.310755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.306595, 32.784210, 24.451721>,  <28.505909, 32.680672, 24.536301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.306595, 32.784210, 24.451721>,  <27.974403, 32.956772, 24.310755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306595, 32.784210, 24.451721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362702, 0.061402, 0.929880,
		-0.422792, -0.900067, -0.105477,
		0.830478, -0.431403, 0.352417,
		28.555738, 32.654789, 24.557446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724281, 32.579147, 24.876751>,  <27.974403, 32.956772, 24.310755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724281, 32.579147, 24.876751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.116314, 32.580147, 24.956181>,  <28.351534, 32.580746, 25.003838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.116314, 32.580147, 24.956181>,  <27.724281, 32.579147, 24.876751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116314, 32.580147, 24.956181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198384, -0.033226, 0.979561,
		0.009050, -0.999445, -0.032068,
		0.980082, 0.002503, 0.198575,
		28.410339, 32.580894, 25.015753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852400, 32.005836, 25.318682>,  <27.724281, 32.579147, 24.876751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852400, 32.005836, 25.318682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.167049, 32.240631, 25.395287>,  <28.355839, 32.381508, 25.441250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.167049, 32.240631, 25.395287>,  <27.852400, 32.005836, 25.318682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167049, 32.240631, 25.395287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186439, -0.069882, 0.979978,
		0.588613, -0.806578, 0.054466,
		0.786622, 0.586982, 0.191511,
		28.403036, 32.416725, 25.452740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230350, 31.657337, 25.894775>,  <27.852400, 32.005836, 25.318682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230350, 31.657337, 25.894775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.361490, 32.035213, 25.891365>,  <28.440174, 32.261940, 25.889318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.361490, 32.035213, 25.891365>,  <28.230350, 31.657337, 25.894775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361490, 32.035213, 25.891365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268466, 0.101814, 0.957894,
		0.905782, -0.311755, 0.286997,
		0.327848, 0.944692, -0.008526,
		28.459845, 32.318623, 25.888807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666033, 31.746700, 26.531897>,  <28.230350, 31.657337, 25.894775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666033, 31.746700, 26.531897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.528500, 32.105675, 26.421345>,  <28.445980, 32.321060, 26.355013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.528500, 32.105675, 26.421345>,  <28.666033, 31.746700, 26.531897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528500, 32.105675, 26.421345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371106, 0.140501, 0.917899,
		0.862589, 0.418170, 0.284736,
		-0.343832, 0.897437, -0.276380,
		28.425350, 32.374905, 26.338430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905483, 32.234577, 27.056839>,  <28.666033, 31.746700, 26.531897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905483, 32.234577, 27.056839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.604885, 32.429955, 26.879444>,  <28.424526, 32.547180, 26.773008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.604885, 32.429955, 26.879444>,  <28.905483, 32.234577, 27.056839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604885, 32.429955, 26.879444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379032, 0.230554, 0.896203,
		0.539990, 0.841587, 0.011875,
		-0.751495, 0.488442, -0.443485,
		28.379436, 32.576488, 26.746399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893375, 32.690838, 27.569870>,  <28.905483, 32.234577, 27.056839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893375, 32.690838, 27.569870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.561937, 32.713715, 27.347103>,  <28.363075, 32.727440, 27.213442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.561937, 32.713715, 27.347103>,  <28.893375, 32.690838, 27.569870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561937, 32.713715, 27.347103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544099, 0.152025, 0.825133,
		0.131853, 0.986721, -0.094851,
		-0.828596, 0.057187, -0.556919,
		28.313358, 32.730869, 27.180027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647726, 33.391327, 27.654150>,  <28.893375, 32.690838, 27.569870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647726, 33.391327, 27.654150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.349468, 33.138672, 27.569248>,  <28.170513, 32.987080, 27.518307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.349468, 33.138672, 27.569248>,  <28.647726, 33.391327, 27.654150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349468, 33.138672, 27.569248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400487, 0.170218, 0.900353,
		-0.532567, 0.756347, -0.379884,
		-0.745642, -0.631637, -0.212255,
		28.125776, 32.949181, 27.505571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937405, 33.740730, 27.724382>,  <28.647726, 33.391327, 27.654150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937405, 33.740730, 27.724382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.910030, 33.348114, 27.795811>,  <27.893606, 33.112545, 27.838667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.910030, 33.348114, 27.795811>,  <27.937405, 33.740730, 27.724382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910030, 33.348114, 27.795811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340461, 0.191223, 0.920609,
		-0.937765, 0.002207, -0.347264,
		-0.068437, -0.981544, 0.178571,
		27.889500, 33.053650, 27.849382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272213, 33.668541, 28.006695>,  <27.937405, 33.740730, 27.724382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272213, 33.668541, 28.006695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.496277, 33.353302, 28.108772>,  <27.630716, 33.164158, 28.170019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.496277, 33.353302, 28.108772>,  <27.272213, 33.668541, 28.006695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496277, 33.353302, 28.108772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101134, 0.240698, 0.965317,
		-0.822186, -0.566542, 0.055127,
		0.560162, -0.788095, 0.255196,
		27.664326, 33.116875, 28.185331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941803, 33.357277, 28.615910>,  <27.272213, 33.668541, 28.006695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941803, 33.357277, 28.615910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.296261, 33.175861, 28.653973>,  <27.508936, 33.067013, 28.676811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.296261, 33.175861, 28.653973>,  <26.941803, 33.357277, 28.615910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296261, 33.175861, 28.653973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162612, -0.112039, 0.980309,
		-0.433944, -0.884167, -0.173033,
		0.886143, -0.453537, 0.095158,
		27.562103, 33.039803, 28.682520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891996, 32.841621, 29.173157>,  <26.941803, 33.357277, 28.615910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891996, 32.841621, 29.173157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.286285, 32.898163, 29.136566>,  <27.522860, 32.932087, 29.114611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.286285, 32.898163, 29.136566>,  <26.891996, 32.841621, 29.173157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286285, 32.898163, 29.136566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110836, -0.135772, 0.984521,
		0.126744, -0.980605, -0.149501,
		0.985724, 0.141352, -0.091478,
		27.582003, 32.940567, 29.109123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175488, 32.404301, 29.631172>,  <26.891996, 32.841621, 29.173157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175488, 32.404301, 29.631172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.501780, 32.620346, 29.548359>,  <27.697554, 32.749973, 29.498671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.501780, 32.620346, 29.548359>,  <27.175488, 32.404301, 29.631172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501780, 32.620346, 29.548359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323347, -0.129010, 0.937445,
		0.479618, -0.831645, -0.279881,
		0.815729, 0.540114, -0.207034,
		27.746498, 32.782379, 29.486248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681992, 31.960590, 29.753864>,  <27.175488, 32.404301, 29.631172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681992, 31.960590, 29.753864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.808556, 32.337330, 29.799129>,  <27.884495, 32.563374, 29.826288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.808556, 32.337330, 29.799129>,  <27.681992, 31.960590, 29.753864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808556, 32.337330, 29.799129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374063, -0.233502, 0.897526,
		0.871757, -0.241658, -0.426193,
		0.316411, 0.941848, 0.113162,
		27.903479, 32.619884, 29.833078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.722794, 32.034088, 29.759968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.521221, 32.329784, 29.938667>,  <28.400278, 32.507202, 30.045887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.521221, 32.329784, 29.938667>,  <28.722794, 32.034088, 29.759968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521221, 32.329784, 29.938667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389602, -0.267078, 0.881408,
		0.770887, 0.618220, -0.153420,
		-0.503929, 0.739238, 0.446747,
		28.370043, 32.551556, 30.072691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201670, 32.401783, 30.244091>,  <28.722794, 32.034088, 29.759968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201670, 32.401783, 30.244091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.852531, 32.522469, 30.397507>,  <28.643047, 32.594879, 30.489557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.852531, 32.522469, 30.397507>,  <29.201670, 32.401783, 30.244091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852531, 32.522469, 30.397507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349600, -0.161731, 0.922834,
		0.340466, 0.939579, 0.035686,
		-0.872848, 0.301718, 0.383541,
		28.590677, 32.612984, 30.512569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391785, 32.691101, 30.815397>,  <29.201670, 32.401783, 30.244091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391785, 32.691101, 30.815397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007330, 32.610771, 30.891174>,  <28.776657, 32.562572, 30.936640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.007330, 32.610771, 30.891174>,  <29.391785, 32.691101, 30.815397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007330, 32.610771, 30.891174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237470, -0.251406, 0.938298,
		-0.140806, 0.946818, 0.289325,
		-0.961135, -0.200824, 0.189442,
		28.718988, 32.550526, 30.948008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264917, 33.018772, 31.439028>,  <29.391785, 32.691101, 30.815397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264917, 33.018772, 31.439028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.976686, 32.747528, 31.381157>,  <28.803747, 32.584782, 31.346436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.976686, 32.747528, 31.381157>,  <29.264917, 33.018772, 31.439028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976686, 32.747528, 31.381157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020390, -0.187841, 0.981988,
		-0.693075, 0.710548, 0.121527,
		-0.720577, -0.678113, -0.144676,
		28.760513, 32.544094, 31.337753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620991, 33.314240, 31.735392>,  <29.264917, 33.018772, 31.439028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620991, 33.314240, 31.735392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614340, 32.915367, 31.706127>,  <28.610350, 32.676044, 31.688568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.614340, 32.915367, 31.706127>,  <28.620991, 33.314240, 31.735392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614340, 32.915367, 31.706127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223013, -0.067630, 0.972467,
		-0.974674, 0.032485, -0.221260,
		-0.016627, -0.997181, -0.073161,
		28.609352, 32.616211, 31.684179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172697, 33.138405, 32.349800>,  <28.620991, 33.314240, 31.735392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172697, 33.138405, 32.349800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.278444, 32.770515, 32.233719>,  <28.341892, 32.549782, 32.164070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.278444, 32.770515, 32.233719>,  <28.172697, 33.138405, 32.349800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278444, 32.770515, 32.233719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078708, -0.320482, 0.943979,
		-0.961205, -0.226716, -0.157114,
		0.264367, -0.919724, -0.290204,
		28.357754, 32.494598, 32.146656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575787, 32.628998, 32.527248>,  <28.172697, 33.138405, 32.349800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575787, 32.628998, 32.527248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.912577, 32.415131, 32.498398>,  <28.114651, 32.286808, 32.481087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.912577, 32.415131, 32.498398>,  <27.575787, 32.628998, 32.527248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912577, 32.415131, 32.498398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235964, -0.485176, 0.841977,
		-0.485176, -0.691905, -0.534670,
		-0.841977, 0.534670, 0.072131,
		28.165171, 32.254730, 32.476757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364038, 31.970793, 32.880272>,  <27.575787, 32.628998, 32.527248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364038, 31.970793, 32.880272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.763737, 31.970547, 32.895828>,  <28.003555, 31.970400, 32.905163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.763737, 31.970547, 32.895828>,  <27.364038, 31.970793, 32.880272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763737, 31.970547, 32.895828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036939, -0.327955, 0.943971,
		0.012175, -0.944693, -0.327730,
		0.999243, -0.000613, 0.038889,
		28.063509, 31.970364, 32.907494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532734, 31.269419, 33.151997>,  <27.364038, 31.970793, 32.880272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532734, 31.269419, 33.151997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.854797, 31.492111, 33.233742>,  <28.048037, 31.625727, 33.282791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.854797, 31.492111, 33.233742>,  <27.532734, 31.269419, 33.151997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854797, 31.492111, 33.233742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097309, -0.215907, 0.971553,
		0.585020, -0.802142, -0.119664,
		0.805160, 0.556733, 0.204366,
		28.096346, 31.659132, 33.295052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829153, 30.897686, 33.581524>,  <27.532734, 31.269419, 33.151997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829153, 30.897686, 33.581524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.024208, 31.242374, 33.637589>,  <28.141241, 31.449188, 33.671227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.024208, 31.242374, 33.637589>,  <27.829153, 30.897686, 33.581524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024208, 31.242374, 33.637589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149072, -0.240371, 0.959166,
		0.860225, -0.446831, -0.245673,
		0.487638, 0.861721, 0.140164,
		28.170500, 31.500891, 33.679638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365965, 30.740818, 34.063152>,  <27.829153, 30.897686, 33.581524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365965, 30.740818, 34.063152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.325499, 31.138462, 34.078686>,  <28.301218, 31.377048, 34.088005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.325499, 31.138462, 34.078686>,  <28.365965, 30.740818, 34.063152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325499, 31.138462, 34.078686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098310, -0.028852, 0.994737,
		0.990000, 0.104450, -0.094813,
		-0.101165, 0.994111, 0.038832,
		28.295149, 31.436695, 34.090336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950497, 30.968294, 34.495346>,  <28.365965, 30.740818, 34.063152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950497, 30.968294, 34.495346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.693054, 31.274429, 34.497391>,  <28.538589, 31.458111, 34.498619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.693054, 31.274429, 34.497391>,  <28.950497, 30.968294, 34.495346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693054, 31.274429, 34.497391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035042, 0.022793, 0.999126,
		0.764554, 0.643223, -0.041489,
		-0.643606, 0.765340, 0.005113,
		28.499971, 31.504032, 34.498924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148710, 31.289536, 35.069958>,  <28.950497, 30.968294, 34.495346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148710, 31.289536, 35.069958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.779352, 31.425350, 34.998341>,  <28.557737, 31.506840, 34.955372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.779352, 31.425350, 34.998341>,  <29.148710, 31.289536, 35.069958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779352, 31.425350, 34.998341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178332, 0.033578, 0.983397,
		0.339911, 0.939993, 0.029544,
		-0.923395, 0.339537, -0.179044,
		28.502335, 31.527210, 34.944626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148661, 31.918953, 35.281151>,  <29.148710, 31.289536, 35.069958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148661, 31.918953, 35.281151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.771544, 31.786812, 35.299072>,  <28.545273, 31.707527, 35.309826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.771544, 31.786812, 35.299072>,  <29.148661, 31.918953, 35.281151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771544, 31.786812, 35.299072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063252, 0.309203, 0.948890,
		-0.327323, 0.891774, -0.312409,
		-0.942793, -0.330354, 0.044803,
		28.488705, 31.687706, 35.312511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896049, 32.339520, 35.702446>,  <29.148661, 31.918953, 35.281151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896049, 32.339520, 35.702446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.608950, 32.061085, 35.695606>,  <28.436689, 31.894024, 35.691502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.608950, 32.061085, 35.695606>,  <28.896049, 32.339520, 35.702446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608950, 32.061085, 35.695606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296698, 0.283524, 0.911912,
		-0.629924, 0.659600, -0.410028,
		-0.717751, -0.696090, -0.017103,
		28.393625, 31.852257, 35.690475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313742, 32.716694, 36.017986>,  <28.896049, 32.339520, 35.702446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313742, 32.716694, 36.017986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.182266, 32.340443, 36.051891>,  <28.103380, 32.114693, 36.072235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.182266, 32.340443, 36.051891>,  <28.313742, 32.716694, 36.017986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182266, 32.340443, 36.051891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329082, 0.198188, 0.923270,
		-0.885250, 0.275578, -0.374686,
		-0.328691, -0.940627, 0.084758,
		28.083658, 32.058254, 36.077320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655043, 32.736679, 36.336502>,  <28.313742, 32.716694, 36.017986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655043, 32.736679, 36.336502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.825315, 32.379833, 36.397072>,  <27.927479, 32.165726, 36.433414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.825315, 32.379833, 36.397072>,  <27.655043, 32.736679, 36.336502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825315, 32.379833, 36.397072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176746, 0.082142, 0.980823,
		-0.887442, -0.444284, -0.122710,
		0.425684, -0.892112, 0.151421,
		27.953020, 32.112198, 36.442497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092520, 32.296482, 36.596905>,  <27.655043, 32.736679, 36.336502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092520, 32.296482, 36.596905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.457531, 32.202137, 36.730568>,  <27.676537, 32.145531, 36.810768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.457531, 32.202137, 36.730568>,  <27.092520, 32.296482, 36.596905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457531, 32.202137, 36.730568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302039, 0.162311, 0.939376,
		-0.275805, -0.958135, 0.076872,
		0.912526, -0.235866, 0.334160,
		27.731289, 32.131378, 36.830814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860413, 31.969471, 37.238647>,  <27.092520, 32.296482, 36.596905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860413, 31.969471, 37.238647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258062, 31.995853, 37.272987>,  <27.496653, 32.011684, 37.293591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.258062, 31.995853, 37.272987>,  <26.860413, 31.969471, 37.238647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258062, 31.995853, 37.272987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081438, -0.066907, 0.994430,
		0.071334, -0.995577, -0.061143,
		0.994122, 0.065957, 0.085851,
		27.556299, 32.015640, 37.298744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130077, 31.405994, 37.654510>,  <26.860413, 31.969471, 37.238647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130077, 31.405994, 37.654510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.395020, 31.702057, 37.700905>,  <27.553986, 31.879694, 37.728741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.395020, 31.702057, 37.700905>,  <27.130077, 31.405994, 37.654510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395020, 31.702057, 37.700905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056985, -0.104598, 0.992881,
		0.747020, -0.664249, -0.027103,
		0.662355, 0.740157, 0.115989,
		27.593725, 31.924105, 37.735703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501152, 31.234217, 38.239239>,  <27.130077, 31.405994, 37.654510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501152, 31.234217, 38.239239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.598902, 31.621689, 38.221634>,  <27.657551, 31.854172, 38.211071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.598902, 31.621689, 38.221634>,  <27.501152, 31.234217, 38.239239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598902, 31.621689, 38.221634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060021, 0.060408, 0.996368,
		0.967822, -0.240844, 0.072904,
		0.244373, 0.968682, -0.044008,
		27.672215, 31.912294, 38.208431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041544, 31.274643, 38.599205>,  <27.501152, 31.234217, 38.239239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041544, 31.274643, 38.599205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.910498, 31.652458, 38.608280>,  <27.831871, 31.879148, 38.613724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.910498, 31.652458, 38.608280>,  <28.041544, 31.274643, 38.599205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910498, 31.652458, 38.608280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091298, 0.007752, 0.995793,
		0.940390, 0.328306, -0.088775,
		-0.327614, 0.944539, 0.022684,
		27.812214, 31.935820, 38.615086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675198, 31.548019, 38.780273>,  <28.041544, 31.274643, 38.599205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675198, 31.548019, 38.780273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.327051, 31.713913, 38.886452>,  <28.118164, 31.813450, 38.950157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.327051, 31.713913, 38.886452>,  <28.675198, 31.548019, 38.780273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327051, 31.713913, 38.886452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185215, -0.223754, 0.956885,
		0.456248, 0.882003, 0.117933,
		-0.870364, 0.414734, 0.265447,
		28.065943, 31.838333, 38.966087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621983, 31.773998, 39.527527>,  <28.675198, 31.548019, 38.780273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621983, 31.773998, 39.527527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.257544, 31.631321, 39.444901>,  <28.038879, 31.545715, 39.395325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.257544, 31.631321, 39.444901>,  <28.621983, 31.773998, 39.527527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257544, 31.631321, 39.444901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003634, -0.508073, 0.861306,
		-0.412172, 0.783984, 0.464201,
		-0.911099, -0.356693, -0.206565,
		27.984215, 31.524313, 39.382931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201761, 31.448954, 39.489899>,  <28.621983, 31.773998, 39.527527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201761, 31.448954, 39.489899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557858, 31.514950, 39.659721>,  <29.771515, 31.554546, 39.761616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.557858, 31.514950, 39.659721>,  <29.201761, 31.448954, 39.489899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557858, 31.514950, 39.659721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439941, -0.070018, -0.895293,
		-0.117987, 0.983807, -0.134919,
		0.890242, 0.164989, 0.424556,
		29.824930, 31.564445, 39.787086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654009, 32.109459, 39.462471>,  <29.201761, 31.448954, 39.489899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654009, 32.109459, 39.462471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.891212, 31.787468, 39.469925>,  <30.033535, 31.594273, 39.474396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.891212, 31.787468, 39.469925>,  <29.654009, 32.109459, 39.462471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891212, 31.787468, 39.469925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334240, 0.225045, -0.915226,
		0.732544, 0.548967, 0.402510,
		0.593011, -0.804978, 0.018632,
		30.069117, 31.545975, 39.475513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267256, 32.354565, 39.127125>,  <29.654009, 32.109459, 39.462471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267256, 32.354565, 39.127125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.260321, 31.955971, 39.094334>,  <30.256159, 31.716814, 39.074657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.260321, 31.955971, 39.094334>,  <30.267256, 32.354565, 39.127125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260321, 31.955971, 39.094334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143950, 0.078647, -0.986455,
		0.989433, -0.028905, 0.142080,
		-0.017340, -0.996483, -0.081977,
		30.255119, 31.657026, 39.069740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900801, 32.104275, 38.808529>,  <30.267256, 32.354565, 39.127125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900801, 32.104275, 38.808529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.620789, 31.825535, 38.746101>,  <30.452782, 31.658291, 38.708645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.620789, 31.825535, 38.746101>,  <30.900801, 32.104275, 38.808529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620789, 31.825535, 38.746101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331298, -0.123311, -0.935434,
		0.632611, -0.706538, 0.317186,
		-0.700032, -0.696849, -0.156067,
		30.410778, 31.616480, 38.699280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271086, 31.574049, 38.492085>,  <30.900801, 32.104275, 38.808529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271086, 31.574049, 38.492085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892855, 31.497459, 38.386848>,  <30.665916, 31.451506, 38.323708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892855, 31.497459, 38.386848>,  <31.271086, 31.574049, 38.492085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892855, 31.497459, 38.386848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295136, -0.164209, -0.941239,
		0.137021, -0.967664, 0.211783,
		-0.945579, -0.191475, -0.263092,
		30.609180, 31.440018, 38.307922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344316, 31.007366, 38.109371>,  <31.271086, 31.574049, 38.492085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344316, 31.007366, 38.109371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.981947, 31.137581, 38.001057>,  <30.764524, 31.215710, 37.936066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.981947, 31.137581, 38.001057>,  <31.344316, 31.007366, 38.109371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981947, 31.137581, 38.001057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281081, -0.015971, -0.959551,
		-0.316697, -0.945394, -0.077034,
		-0.905923, 0.325540, -0.270790,
		30.710171, 31.235243, 37.919819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269888, 30.714193, 37.452278>,  <31.344316, 31.007366, 38.109371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269888, 30.714193, 37.452278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003918, 31.012260, 37.472679>,  <30.844336, 31.191101, 37.484921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003918, 31.012260, 37.472679>,  <31.269888, 30.714193, 37.452278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003918, 31.012260, 37.472679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218296, 0.259185, -0.940835,
		-0.714298, -0.614451, -0.335005,
		-0.664925, 0.745166, 0.051003,
		30.804440, 31.235809, 37.487980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826130, 30.631290, 36.900948>,  <31.269888, 30.714193, 37.452278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826130, 30.631290, 36.900948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777298, 31.015579, 37.000633>,  <30.747999, 31.246153, 37.060444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777298, 31.015579, 37.000633>,  <30.826130, 30.631290, 36.900948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777298, 31.015579, 37.000633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041303, 0.255792, -0.965849,
		-0.991660, -0.107618, -0.070908,
		-0.122080, 0.960723, 0.249214,
		30.740673, 31.303797, 37.075397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200171, 30.856291, 36.519840>,  <30.826130, 30.631290, 36.900948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200171, 30.856291, 36.519840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412727, 31.186947, 36.593910>,  <30.540260, 31.385340, 36.638351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.412727, 31.186947, 36.593910>,  <30.200171, 30.856291, 36.519840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412727, 31.186947, 36.593910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030734, 0.199639, -0.979387,
		-0.846570, 0.526128, 0.080681,
		0.531390, 0.826640, 0.185178,
		30.572144, 31.434938, 36.649464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826344, 31.313198, 36.136646>,  <30.200171, 30.856291, 36.519840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826344, 31.313198, 36.136646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.162985, 31.515656, 36.212036>,  <30.364969, 31.637131, 36.257271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.162985, 31.515656, 36.212036>,  <29.826344, 31.313198, 36.136646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162985, 31.515656, 36.212036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039659, 0.290104, -0.956173,
		-0.538639, 0.812192, 0.224079,
		0.841603, 0.506145, 0.188472,
		30.415466, 31.667500, 36.268578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743021, 31.923647, 35.714413>,  <29.826344, 31.313198, 36.136646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743021, 31.923647, 35.714413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131863, 31.883236, 35.799080>,  <30.365168, 31.858990, 35.849880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131863, 31.883236, 35.799080>,  <29.743021, 31.923647, 35.714413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131863, 31.883236, 35.799080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224974, 0.146439, -0.963298,
		0.066324, 0.984047, 0.165083,
		0.972105, -0.101029, 0.211673,
		30.423494, 31.852928, 35.862583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061136, 32.542301, 35.497070>,  <29.743021, 31.923647, 35.714413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061136, 32.542301, 35.497070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.349714, 32.266708, 35.524853>,  <30.522861, 32.101353, 35.541523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.349714, 32.266708, 35.524853>,  <30.061136, 32.542301, 35.497070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349714, 32.266708, 35.524853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096799, 0.001019, -0.995303,
		0.685674, 0.724779, 0.067427,
		0.721443, -0.688981, 0.069459,
		30.566147, 32.060013, 35.545689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704281, 32.758152, 35.064423>,  <30.061136, 32.542301, 35.497070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704281, 32.758152, 35.064423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.712276, 32.359936, 35.101284>,  <30.717073, 32.121006, 35.123402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.712276, 32.359936, 35.101284>,  <30.704281, 32.758152, 35.064423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712276, 32.359936, 35.101284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203679, -0.086184, -0.975237,
		0.978834, 0.038264, 0.201049,
		0.019990, -0.995544, 0.092153,
		30.718273, 32.061272, 35.128929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267357, 32.608463, 34.661659>,  <30.704281, 32.758152, 35.064423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267357, 32.608463, 34.661659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055435, 32.270153, 34.686859>,  <30.928282, 32.067165, 34.701977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055435, 32.270153, 34.686859>,  <31.267357, 32.608463, 34.661659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055435, 32.270153, 34.686859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146684, -0.164536, -0.975403,
		0.835340, -0.507532, 0.211234,
		-0.529804, -0.845778, 0.062997,
		30.896494, 32.016418, 34.705757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618622, 32.104259, 34.258327>,  <31.267357, 32.608463, 34.661659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618622, 32.104259, 34.258327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254707, 31.938614, 34.269669>,  <31.036360, 31.839228, 34.276474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254707, 31.938614, 34.269669>,  <31.618622, 32.104259, 34.258327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254707, 31.938614, 34.269669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116088, -0.319432, -0.940471,
		0.398515, -0.852335, 0.338688,
		-0.909785, -0.414110, 0.028352,
		30.981771, 31.814381, 34.278175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707979, 31.569324, 33.829880>,  <31.618622, 32.104259, 34.258327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707979, 31.569324, 33.829880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.308302, 31.584965, 33.826149>,  <31.068497, 31.594349, 33.823910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.308302, 31.584965, 33.826149>,  <31.707979, 31.569324, 33.829880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308302, 31.584965, 33.826149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003358, -0.312475, -0.949920,
		-0.040057, -0.949121, 0.312354,
		-0.999192, 0.039100, -0.009329,
		31.008545, 31.596695, 33.823349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424116, 30.929300, 33.519173>,  <31.707979, 31.569324, 33.829880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424116, 30.929300, 33.519173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134262, 31.196712, 33.452271>,  <30.960350, 31.357159, 33.412128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.134262, 31.196712, 33.452271>,  <31.424116, 30.929300, 33.519173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134262, 31.196712, 33.452271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121987, -0.363304, -0.923650,
		-0.678251, -0.648905, 0.344814,
		-0.724634, 0.668530, -0.167254,
		30.916872, 31.397272, 33.402096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754822, 30.567329, 33.246353>,  <31.424116, 30.929300, 33.519173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754822, 30.567329, 33.246353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737207, 30.949020, 33.128025>,  <30.726639, 31.178036, 33.057026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.737207, 30.949020, 33.128025>,  <30.754822, 30.567329, 33.246353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737207, 30.949020, 33.128025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309121, -0.294594, -0.904245,
		-0.950003, 0.051626, 0.307945,
		-0.044036, 0.954227, -0.295823,
		30.723997, 31.235289, 33.039280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210922, 30.590900, 32.731529>,  <30.754822, 30.567329, 33.246353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210922, 30.590900, 32.731529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.399242, 30.934834, 32.652504>,  <30.512234, 31.141193, 32.605091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.399242, 30.934834, 32.652504>,  <30.210922, 30.590900, 32.731529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399242, 30.934834, 32.652504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060806, -0.191773, -0.979554,
		-0.880141, 0.473188, -0.038003,
		0.470801, 0.859835, -0.197560,
		30.540483, 31.192783, 32.593235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845837, 30.823542, 32.181980>,  <30.210922, 30.590900, 32.731529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845837, 30.823542, 32.181980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206833, 30.995617, 32.173508>,  <30.423431, 31.098862, 32.168423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206833, 30.995617, 32.173508>,  <29.845837, 30.823542, 32.181980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206833, 30.995617, 32.173508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010818, -0.026524, -0.999590,
		-0.430575, 0.902349, -0.019284,
		0.902490, 0.430189, -0.021182,
		30.477579, 31.124674, 32.167152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.202520, 44.896713, 19.091858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.595909, 44.860176, 19.154388>,  <23.831944, 44.838253, 19.191906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.595909, 44.860176, 19.154388>,  <23.202520, 44.896713, 19.091858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.595909, 44.860176, 19.154388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113629, -0.983590, 0.140142,
		0.140958, -0.155589, -0.977713,
		0.983473, -0.091343, 0.156324,
		23.890951, 44.832775, 19.201286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.382549, 44.278107, 18.685122>,  <23.202520, 44.896713, 19.091858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.382549, 44.278107, 18.685122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.687899, 44.323982, 18.939400>,  <23.871107, 44.351505, 19.091967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.687899, 44.323982, 18.939400>,  <23.382549, 44.278107, 18.685122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.687899, 44.323982, 18.939400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058111, -0.992315, 0.109243,
		0.643340, -0.046453, -0.764170,
		0.763372, 0.114687, 0.635697,
		23.916910, 44.358387, 19.130108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.932568, 43.827549, 18.480740>,  <23.382549, 44.278107, 18.685122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.932568, 43.827549, 18.480740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.956411, 43.899384, 18.873512>,  <23.970718, 43.942486, 19.109177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.956411, 43.899384, 18.873512>,  <23.932568, 43.827549, 18.480740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.956411, 43.899384, 18.873512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047344, -0.983085, 0.176926,
		0.997098, 0.035942, -0.067104,
		0.059610, 0.179590, 0.981934,
		23.974295, 43.953262, 19.168093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569983, 43.348015, 18.778141>,  <23.932568, 43.827549, 18.480740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569983, 43.348015, 18.778141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.409691, 43.473946, 19.122303>,  <24.313517, 43.549503, 19.328800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.409691, 43.473946, 19.122303>,  <24.569983, 43.348015, 18.778141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409691, 43.473946, 19.122303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050777, -0.930032, 0.363954,
		0.914788, 0.189536, 0.356706,
		-0.400730, 0.314828, 0.860406,
		24.289473, 43.568394, 19.380424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943285, 43.112007, 19.299276>,  <24.569983, 43.348015, 18.778141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943285, 43.112007, 19.299276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.600710, 43.159740, 19.500183>,  <24.395164, 43.188381, 19.620728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.600710, 43.159740, 19.500183>,  <24.943285, 43.112007, 19.299276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600710, 43.159740, 19.500183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169747, -0.853727, 0.492277,
		0.487545, 0.506863, 0.710907,
		-0.856438, 0.119333, 0.502269,
		24.343779, 43.195541, 19.650864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071791, 42.942520, 20.096775>,  <24.943285, 43.112007, 19.299276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071791, 42.942520, 20.096775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.681236, 42.904850, 20.019005>,  <24.446903, 42.882248, 19.972342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.681236, 42.904850, 20.019005>,  <25.071791, 42.942520, 20.096775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681236, 42.904850, 20.019005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004693, -0.909025, 0.416716,
		-0.215982, 0.405963, 0.888001,
		-0.976386, -0.094171, -0.194428,
		24.388321, 42.876598, 19.960676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855734, 42.752213, 20.679930>,  <25.071791, 42.942520, 20.096775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855734, 42.752213, 20.679930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.547033, 42.652748, 20.445812>,  <24.361813, 42.593071, 20.305342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.547033, 42.652748, 20.445812>,  <24.855734, 42.752213, 20.679930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547033, 42.652748, 20.445812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073580, -0.879282, 0.470583,
		-0.631652, 0.406239, 0.660292,
		-0.771752, -0.248661, -0.585292,
		24.315508, 42.578152, 20.270226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448210, 42.395401, 21.095564>,  <24.855734, 42.752213, 20.679930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448210, 42.395401, 21.095564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.298399, 42.283596, 20.741932>,  <24.208511, 42.216511, 20.529753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.298399, 42.283596, 20.741932>,  <24.448210, 42.395401, 21.095564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298399, 42.283596, 20.741932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151054, -0.922348, 0.355607,
		-0.914829, 0.266729, 0.303223,
		-0.374528, -0.279517, -0.884081,
		24.186041, 42.199741, 20.476707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.750685, 42.046761, 21.234602>,  <24.448210, 42.395401, 21.095564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.750685, 42.046761, 21.234602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.891867, 41.942074, 20.875286>,  <23.976576, 41.879261, 20.659697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.891867, 41.942074, 20.875286>,  <23.750685, 42.046761, 21.234602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.891867, 41.942074, 20.875286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056685, -0.964300, 0.258672,
		-0.933921, -0.040380, -0.355191,
		0.352957, -0.261713, -0.898292,
		23.997753, 41.863560, 20.605799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.234802, 41.679485, 20.942293>,  <23.750685, 42.046761, 21.234602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.234802, 41.679485, 20.942293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.579302, 41.561253, 20.776939>,  <23.786001, 41.490314, 20.677727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.579302, 41.561253, 20.776939>,  <23.234802, 41.679485, 20.942293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.579302, 41.561253, 20.776939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272906, -0.955211, 0.114429,
		-0.428690, 0.014263, -0.903339,
		0.861247, -0.295581, -0.413382,
		23.837677, 41.472580, 20.652925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.107721, 41.116596, 20.440456>,  <23.234802, 41.679485, 20.942293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.107721, 41.116596, 20.440456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.500805, 41.083267, 20.506599>,  <23.736654, 41.063271, 20.546286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.500805, 41.083267, 20.506599>,  <23.107721, 41.116596, 20.440456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.500805, 41.083267, 20.506599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073743, -0.995269, -0.063253,
		0.169847, 0.049965, -0.984203,
		0.982707, -0.083322, 0.165359,
		23.795618, 41.058270, 20.556208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.322613, 40.639954, 20.014439>,  <23.107721, 41.116596, 20.440456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.322613, 40.639954, 20.014439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.609291, 40.639362, 20.293392>,  <23.781298, 40.639008, 20.460764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.609291, 40.639362, 20.293392>,  <23.322613, 40.639954, 20.014439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.609291, 40.639362, 20.293392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082551, -0.992787, -0.086946,
		0.692483, 0.119884, -0.711404,
		0.716696, -0.001482, 0.697384,
		23.824301, 40.638916, 20.502607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.897846, 40.240467, 19.714966>,  <23.322613, 40.639954, 20.014439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.897846, 40.240467, 19.714966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.974243, 40.227829, 20.107399>,  <24.020081, 40.220245, 20.342859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.974243, 40.227829, 20.107399>,  <23.897846, 40.240467, 19.714966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.974243, 40.227829, 20.107399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107772, -0.992764, -0.052957,
		0.975657, 0.115847, -0.186204,
		0.190992, -0.031600, 0.981083,
		24.031540, 40.218349, 20.401724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.411118, 39.716309, 19.780230>,  <23.897846, 40.240467, 19.714966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.411118, 39.716309, 19.780230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.287487, 39.739338, 20.159946>,  <24.213308, 39.753155, 20.387777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.287487, 39.739338, 20.159946>,  <24.411118, 39.716309, 19.780230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287487, 39.739338, 20.159946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224705, -0.965484, 0.131714,
		0.924110, 0.254021, 0.285473,
		-0.309078, 0.057571, 0.949293,
		24.194763, 39.756611, 20.444735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.742344, 39.113243, 20.087860>,  <24.411118, 39.716309, 19.780230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.742344, 39.113243, 20.087860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.496838, 39.229053, 20.381653>,  <24.349533, 39.298542, 20.557928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.496838, 39.229053, 20.381653>,  <24.742344, 39.113243, 20.087860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.496838, 39.229053, 20.381653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021969, -0.936231, 0.350699,
		0.789182, 0.199111, 0.580988,
		-0.613767, 0.289529, 0.734482,
		24.312708, 39.315910, 20.601997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950003, 38.799175, 20.692722>,  <24.742344, 39.113243, 20.087860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950003, 38.799175, 20.692722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.557211, 38.864937, 20.730015>,  <24.321537, 38.904392, 20.752390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.557211, 38.864937, 20.730015>,  <24.950003, 38.799175, 20.692722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557211, 38.864937, 20.730015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149282, -0.977219, 0.150857,
		0.115908, 0.134221, 0.984149,
		-0.981978, 0.164402, 0.093231,
		24.262617, 38.914257, 20.757984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.705795, 38.236172, 21.047478>,  <24.950003, 38.799175, 20.692722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.705795, 38.236172, 21.047478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.361324, 38.374153, 20.898144>,  <24.154642, 38.456944, 20.808542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.361324, 38.374153, 20.898144>,  <24.705795, 38.236172, 21.047478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361324, 38.374153, 20.898144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344636, -0.936124, -0.069987,
		-0.373632, 0.068394, 0.925052,
		-0.861177, 0.344956, -0.373336,
		24.102972, 38.477638, 20.786142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.284925, 37.964428, 21.494608>,  <24.705795, 38.236172, 21.047478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.284925, 37.964428, 21.494608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.078856, 38.029057, 21.157921>,  <23.955214, 38.067833, 20.955908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.078856, 38.029057, 21.157921>,  <24.284925, 37.964428, 21.494608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.078856, 38.029057, 21.157921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343965, -0.938491, 0.030375,
		-0.785036, 0.305170, 0.539063,
		-0.515176, 0.161573, -0.841717,
		23.924303, 38.077530, 20.905405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.679426, 37.607143, 21.573509>,  <24.284925, 37.964428, 21.494608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.679426, 37.607143, 21.573509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.736629, 37.631496, 21.178371>,  <23.770952, 37.646111, 20.941288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.736629, 37.631496, 21.178371>,  <23.679426, 37.607143, 21.573509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.736629, 37.631496, 21.178371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298568, -0.948953, -0.101711,
		-0.943613, 0.309485, -0.117532,
		0.143010, 0.060885, -0.987847,
		23.779533, 37.649761, 20.882017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.154827, 37.127125, 21.407669>,  <23.679426, 37.607143, 21.573509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.154827, 37.127125, 21.407669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.361847, 37.184456, 21.070244>,  <23.486059, 37.218853, 20.867788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.361847, 37.184456, 21.070244>,  <23.154827, 37.127125, 21.407669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.361847, 37.184456, 21.070244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184468, -0.943998, -0.273569,
		-0.835532, 0.297196, -0.462126,
		0.517550, 0.143328, -0.843563,
		23.517113, 37.227455, 20.817175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658596, 36.821243, 20.908766>,  <23.154827, 37.127125, 21.407669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658596, 36.821243, 20.908766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.043585, 36.851040, 20.804382>,  <23.274578, 36.868916, 20.741753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.043585, 36.851040, 20.804382>,  <22.658596, 36.821243, 20.908766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.043585, 36.851040, 20.804382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023368, -0.980769, -0.193768,
		-0.270372, 0.180398, -0.945703,
		0.962472, 0.074489, -0.260957,
		23.332327, 36.873386, 20.726095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.253475, 37.514252, 20.991379>,  <22.658596, 36.821243, 20.908766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.253475, 37.514252, 20.991379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.899872, 37.574127, 21.168522>,  <21.687710, 37.610054, 21.274807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.899872, 37.574127, 21.168522>,  <22.253475, 37.514252, 20.991379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899872, 37.574127, 21.168522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260584, 0.628711, -0.732679,
		-0.388104, -0.763096, -0.516779,
		-0.884009, 0.149691, 0.442856,
		21.634668, 37.619034, 21.301378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.848833, 37.318676, 20.465500>,  <22.253475, 37.514252, 20.991379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.848833, 37.318676, 20.465500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.638029, 37.551235, 20.713448>,  <21.511547, 37.690769, 20.862217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.638029, 37.551235, 20.713448>,  <21.848833, 37.318676, 20.465500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.638029, 37.551235, 20.713448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254570, 0.587894, -0.767838,
		-0.810837, -0.562458, -0.161819,
		-0.527008, 0.581397, 0.619871,
		21.479927, 37.725655, 20.899408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212866, 37.480881, 20.121456>,  <21.848833, 37.318676, 20.465500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212866, 37.480881, 20.121456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.245930, 37.777454, 20.387821>,  <21.265768, 37.955399, 20.547640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.245930, 37.777454, 20.387821>,  <21.212866, 37.480881, 20.121456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.245930, 37.777454, 20.387821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355724, 0.646135, -0.675256,
		-0.930929, -0.181065, 0.317155,
		0.082660, 0.741435, 0.665915,
		21.270727, 37.999886, 20.587595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.691925, 37.884689, 20.040627>,  <21.212866, 37.480881, 20.121456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.691925, 37.884689, 20.040627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.872290, 38.142735, 20.287369>,  <20.980509, 38.297562, 20.435413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.872290, 38.142735, 20.287369>,  <20.691925, 37.884689, 20.040627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872290, 38.142735, 20.287369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559657, 0.742716, -0.367637,
		-0.695316, -0.179457, 0.695939,
		0.450910, 0.645111, 0.616856,
		21.007563, 38.336269, 20.472425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103811, 38.332375, 20.377825>,  <20.691925, 37.884689, 20.040627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.103811, 38.332375, 20.377825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.463079, 38.508232, 20.378735>,  <20.678640, 38.613747, 20.379280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.463079, 38.508232, 20.378735>,  <20.103811, 38.332375, 20.377825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.463079, 38.508232, 20.378735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398000, 0.815263, -0.420645,
		-0.186788, 0.376906, 0.907222,
		0.898168, 0.439646, 0.002272,
		20.732531, 38.640125, 20.379416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023088, 38.996838, 20.699289>,  <20.103811, 38.332375, 20.377825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023088, 38.996838, 20.699289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.369099, 39.005161, 20.498772>,  <20.576706, 39.010155, 20.378462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.369099, 39.005161, 20.498772>,  <20.023088, 38.996838, 20.699289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369099, 39.005161, 20.498772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197031, 0.932959, -0.301275,
		0.461418, 0.359381, 0.811134,
		0.865027, 0.020805, -0.501294,
		20.628607, 39.011402, 20.348383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.244249, 39.649410, 20.886587>,  <20.023088, 38.996838, 20.699289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.244249, 39.649410, 20.886587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.457050, 39.569889, 20.557358>,  <20.584732, 39.522175, 20.359821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.457050, 39.569889, 20.557358>,  <20.244249, 39.649410, 20.886587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.457050, 39.569889, 20.557358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196492, 0.916527, -0.348381,
		0.823627, 0.347067, 0.448534,
		0.532005, -0.198803, -0.823072,
		20.616652, 39.510250, 20.310436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688923, 40.179848, 20.850735>,  <20.244249, 39.649410, 20.886587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688923, 40.179848, 20.850735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.639772, 40.042297, 20.478359>,  <20.610283, 39.959766, 20.254934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.639772, 40.042297, 20.478359>,  <20.688923, 40.179848, 20.850735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.639772, 40.042297, 20.478359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171144, 0.931337, -0.321435,
		0.977554, 0.119829, -0.173291,
		-0.122876, -0.343877, -0.930940,
		20.602909, 39.939133, 20.199078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.025915, 40.628513, 20.459030>,  <20.688923, 40.179848, 20.850735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.025915, 40.628513, 20.459030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.828442, 40.421490, 20.179485>,  <20.709957, 40.297276, 20.011759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.828442, 40.421490, 20.179485>,  <21.025915, 40.628513, 20.459030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828442, 40.421490, 20.179485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252839, 0.854329, -0.454087,
		0.832074, -0.047477, -0.552630,
		-0.493686, -0.517560, -0.698860,
		20.680338, 40.266220, 19.969826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.317913, 40.772598, 19.837589>,  <21.025915, 40.628513, 20.459030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.317913, 40.772598, 19.837589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952641, 40.662506, 19.717361>,  <20.733477, 40.596451, 19.645224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952641, 40.662506, 19.717361>,  <21.317913, 40.772598, 19.837589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952641, 40.662506, 19.717361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052304, 0.810558, -0.583319,
		0.404178, -0.516956, -0.754584,
		-0.913184, -0.275232, -0.300570,
		20.678686, 40.579937, 19.627190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336578, 40.862309, 19.118780>,  <21.317913, 40.772598, 19.837589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336578, 40.862309, 19.118780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.948471, 40.847481, 19.214447>,  <20.715607, 40.838585, 19.271847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.948471, 40.847481, 19.214447>,  <21.336578, 40.862309, 19.118780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.948471, 40.847481, 19.214447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179581, 0.772753, -0.608772,
		-0.162253, -0.633623, -0.756436,
		-0.970271, -0.037066, 0.239168,
		20.657391, 40.836361, 19.286198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996761, 40.824455, 18.465370>,  <21.336578, 40.862309, 19.118780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996761, 40.824455, 18.465370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.743437, 40.984859, 18.730129>,  <20.591442, 41.081100, 18.888985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.743437, 40.984859, 18.730129>,  <20.996761, 40.824455, 18.465370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.743437, 40.984859, 18.730129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155020, 0.772209, -0.616168,
		-0.758213, -0.492833, -0.426883,
		-0.633311, 0.401011, 0.661897,
		20.553444, 41.105164, 18.928698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586054, 41.276230, 18.045982>,  <20.996761, 40.824455, 18.465370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586054, 41.276230, 18.045982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.505241, 41.386578, 18.421871>,  <20.456755, 41.452785, 18.647404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.505241, 41.386578, 18.421871>,  <20.586054, 41.276230, 18.045982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505241, 41.386578, 18.421871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146482, 0.940203, -0.307507,
		-0.968363, -0.199778, -0.149539,
		-0.202030, 0.275874, 0.939722,
		20.444632, 41.469341, 18.703789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013235, 41.747269, 17.939623>,  <20.586054, 41.276230, 18.045982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013235, 41.747269, 17.939623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.138895, 41.818226, 18.312683>,  <20.214291, 41.860802, 18.536520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.138895, 41.818226, 18.312683>,  <20.013235, 41.747269, 17.939623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138895, 41.818226, 18.312683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017208, 0.983290, -0.181233,
		-0.949217, 0.040885, 0.311955,
		0.314152, 0.177398, 0.932652,
		20.233141, 41.871445, 18.592478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601875, 42.376469, 18.205551>,  <20.013235, 41.747269, 17.939623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601875, 42.376469, 18.205551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.936731, 42.338997, 18.421116>,  <20.137644, 42.316513, 18.550455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.936731, 42.338997, 18.421116>,  <19.601875, 42.376469, 18.205551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936731, 42.338997, 18.421116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168168, 0.981586, -0.090601,
		-0.520500, 0.166473, 0.837477,
		0.837138, -0.093679, 0.538910,
		20.187872, 42.310894, 18.582788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542269, 42.828342, 18.793703>,  <19.601875, 42.376469, 18.205551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542269, 42.828342, 18.793703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.931118, 42.761372, 18.728046>,  <20.164429, 42.721188, 18.688652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.931118, 42.761372, 18.728046>,  <19.542269, 42.828342, 18.793703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931118, 42.761372, 18.728046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174817, 0.984095, 0.031554,
		0.156248, -0.059370, 0.985932,
		0.972125, -0.167428, -0.164141,
		20.222755, 42.711143, 18.678804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862049, 43.239182, 19.220839>,  <19.542269, 42.828342, 18.793703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862049, 43.239182, 19.220839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.146431, 43.159706, 18.951004>,  <20.317060, 43.112019, 18.789103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.146431, 43.159706, 18.951004>,  <19.862049, 43.239182, 19.220839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.146431, 43.159706, 18.951004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364288, 0.924575, 0.111605,
		0.601531, -0.325090, 0.729710,
		0.710953, -0.198690, -0.674587,
		20.359716, 43.100098, 18.748629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246799, 43.803787, 19.241697>,  <19.862049, 43.239182, 19.220839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246799, 43.803787, 19.241697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.446756, 43.630447, 18.941746>,  <20.566730, 43.526443, 18.761776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.446756, 43.630447, 18.941746>,  <20.246799, 43.803787, 19.241697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446756, 43.630447, 18.941746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254893, 0.901088, -0.350812,
		0.827730, -0.015770, 0.560905,
		0.499892, -0.433349, -0.749878,
		20.596724, 43.500443, 18.716782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994022, 43.918224, 19.330620>,  <20.246799, 43.803787, 19.241697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994022, 43.918224, 19.330620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.913906, 43.847523, 18.945156>,  <20.865837, 43.805103, 18.713877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.913906, 43.847523, 18.945156>,  <20.994022, 43.918224, 19.330620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913906, 43.847523, 18.945156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185292, 0.959008, -0.214410,
		0.962055, -0.221504, -0.159333,
		-0.200294, -0.176751, -0.963660,
		20.853819, 43.794498, 18.656057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.574261, 44.103748, 18.981943>,  <20.994022, 43.918224, 19.330620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.574261, 44.103748, 18.981943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.274357, 44.119347, 18.717720>,  <21.094414, 44.128704, 18.559187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.274357, 44.119347, 18.717720>,  <21.574261, 44.103748, 18.981943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274357, 44.119347, 18.717720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288015, 0.917971, -0.272720,
		0.595739, -0.394726, -0.699491,
		-0.749762, 0.038994, -0.660558,
		21.049429, 44.131046, 18.519552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.866846, 44.307022, 18.414320>,  <21.574261, 44.103748, 18.981943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.866846, 44.307022, 18.414320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482456, 44.410290, 18.374569>,  <21.251822, 44.472248, 18.350718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482456, 44.410290, 18.374569>,  <21.866846, 44.307022, 18.414320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482456, 44.410290, 18.374569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276606, 0.901830, -0.331951,
		0.003925, -0.346485, -0.938047,
		-0.960975, 0.258166, -0.099380,
		21.194164, 44.487740, 18.344755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.146423, 32.180923, 27.187765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449337, 32.422779, 27.286499>,  <27.631084, 32.567894, 27.345739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449337, 32.422779, 27.286499>,  <27.146423, 32.180923, 27.187765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449337, 32.422779, 27.286499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258552, 0.069510, -0.963493,
		-0.599726, 0.793459, -0.103692,
		0.757285, 0.604641, 0.246837,
		27.676523, 32.604172, 27.360550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151335, 32.727673, 26.627415>,  <27.146423, 32.180923, 27.187765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151335, 32.727673, 26.627415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518749, 32.752163, 26.783642>,  <27.739199, 32.766857, 26.877378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518749, 32.752163, 26.783642>,  <27.151335, 32.727673, 26.627415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518749, 32.752163, 26.783642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376282, 0.167616, -0.911217,
		-0.121251, 0.983950, 0.130925,
		0.918537, 0.061221, 0.390566,
		27.794310, 32.770531, 26.900812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403324, 33.212292, 26.195082>,  <27.151335, 32.727673, 26.627415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403324, 33.212292, 26.195082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716988, 33.042156, 26.375828>,  <27.905186, 32.940075, 26.484276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716988, 33.042156, 26.375828>,  <27.403324, 33.212292, 26.195082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716988, 33.042156, 26.375828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525356, 0.067446, -0.848205,
		0.330299, 0.902517, 0.276343,
		0.784158, -0.425340, 0.451866,
		27.952234, 32.914555, 26.511387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058430, 33.602375, 26.151600>,  <27.403324, 33.212292, 26.195082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058430, 33.602375, 26.151600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181364, 33.224194, 26.194794>,  <28.255125, 32.997284, 26.220711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181364, 33.224194, 26.194794>,  <28.058430, 33.602375, 26.151600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181364, 33.224194, 26.194794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464070, 0.049842, -0.884395,
		0.830773, 0.321919, 0.454075,
		0.307336, -0.945454, 0.107986,
		28.273565, 32.940556, 26.227190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794931, 33.581539, 25.950285>,  <28.058430, 33.602375, 26.151600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794931, 33.581539, 25.950285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673088, 33.202965, 25.907455>,  <28.599983, 32.975819, 25.881758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673088, 33.202965, 25.907455>,  <28.794931, 33.581539, 25.950285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673088, 33.202965, 25.907455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424364, -0.034212, -0.904845,
		0.852719, -0.321060, 0.412057,
		-0.304607, -0.946441, -0.107073,
		28.581705, 32.919033, 25.875334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378649, 33.281265, 25.700321>,  <28.794931, 33.581539, 25.950285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378649, 33.281265, 25.700321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077879, 33.029579, 25.621635>,  <28.897417, 32.878567, 25.574423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077879, 33.029579, 25.621635>,  <29.378649, 33.281265, 25.700321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077879, 33.029579, 25.621635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403314, -0.203016, -0.892257,
		0.521485, -0.750248, 0.406424,
		-0.751925, -0.629215, -0.196715,
		28.852301, 32.840813, 25.562620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695219, 32.649071, 25.312788>,  <29.378649, 33.281265, 25.700321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695219, 32.649071, 25.312788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311491, 32.605610, 25.208557>,  <29.081255, 32.579533, 25.146019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311491, 32.605610, 25.208557>,  <29.695219, 32.649071, 25.312788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311491, 32.605610, 25.208557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278778, -0.218747, -0.935111,
		0.044606, -0.969713, 0.240140,
		-0.959319, -0.108657, -0.260578,
		29.023695, 32.573013, 25.130384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660763, 32.074017, 24.922844>,  <29.695219, 32.649071, 25.312788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660763, 32.074017, 24.922844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311501, 32.245312, 24.829716>,  <29.101942, 32.348091, 24.773840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311501, 32.245312, 24.829716>,  <29.660763, 32.074017, 24.922844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311501, 32.245312, 24.829716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114333, -0.284379, -0.951870,
		-0.473840, -0.857751, 0.199345,
		-0.873157, 0.428243, -0.232819,
		29.049553, 32.373783, 24.759871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338984, 31.589581, 24.492071>,  <29.660763, 32.074017, 24.922844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338984, 31.589581, 24.492071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157213, 31.938129, 24.418095>,  <29.048151, 32.147259, 24.373709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157213, 31.938129, 24.418095>,  <29.338984, 31.589581, 24.492071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157213, 31.938129, 24.418095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118724, -0.146519, -0.982058,
		-0.882837, -0.468230, -0.036871,
		-0.454426, 0.871374, -0.184942,
		29.020885, 32.199543, 24.362612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860434, 31.413696, 23.978729>,  <29.338984, 31.589581, 24.492071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860434, 31.413696, 23.978729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947922, 31.802837, 23.948479>,  <29.000416, 32.036324, 23.930328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947922, 31.802837, 23.948479>,  <28.860434, 31.413696, 23.978729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947922, 31.802837, 23.948479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010097, -0.075243, -0.997114,
		-0.975735, 0.218854, -0.006635,
		0.218722, 0.972852, -0.075627,
		29.013538, 32.094692, 23.925791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442911, 31.691736, 23.464029>,  <28.860434, 31.413696, 23.978729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442911, 31.691736, 23.464029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748405, 31.946873, 23.503765>,  <28.931702, 32.099953, 23.527607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748405, 31.946873, 23.503765>,  <28.442911, 31.691736, 23.464029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748405, 31.946873, 23.503765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263451, -0.167494, -0.950020,
		-0.589323, 0.751735, -0.295961,
		0.763736, 0.637840, 0.099338,
		28.977526, 32.138226, 23.533566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269865, 32.331284, 23.162548>,  <28.442911, 31.691736, 23.464029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269865, 32.331284, 23.162548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667259, 32.376751, 23.159370>,  <28.905697, 32.404030, 23.157465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667259, 32.376751, 23.159370>,  <28.269865, 32.331284, 23.162548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667259, 32.376751, 23.159370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021409, -0.254680, -0.966788,
		-0.111913, 0.960322, -0.255455,
		0.993487, 0.113665, -0.007942,
		28.965305, 32.410851, 23.156988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478559, 32.699917, 22.457323>,  <28.269865, 32.331284, 23.162548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478559, 32.699917, 22.457323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746279, 32.441483, 22.604080>,  <28.906910, 32.286423, 22.692135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746279, 32.441483, 22.604080>,  <28.478559, 32.699917, 22.457323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746279, 32.441483, 22.604080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013696, -0.482989, -0.875520,
		0.742867, 0.591009, -0.314415,
		0.669299, -0.646088, 0.366891,
		28.947069, 32.247658, 22.714148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430422, 33.398479, 22.847912>,  <28.478559, 32.699917, 22.457323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430422, 33.398479, 22.847912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261435, 33.186020, 23.141689>,  <28.160042, 33.058544, 23.317955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261435, 33.186020, 23.141689>,  <28.430422, 33.398479, 22.847912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261435, 33.186020, 23.141689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844180, -0.525576, 0.105497,
		0.329971, 0.664571, 0.670421,
		-0.422468, -0.531145, 0.734443,
		28.134695, 33.026676, 23.362022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717569, 33.756649, 22.952522>,  <28.430422, 33.398479, 22.847912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717569, 33.756649, 22.952522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513983, 34.100437, 22.971546>,  <27.391830, 34.306709, 22.982960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513983, 34.100437, 22.971546>,  <27.717569, 33.756649, 22.952522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513983, 34.100437, 22.971546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400362, 0.187455, 0.896979,
		0.762011, 0.475575, -0.439508,
		-0.508968, 0.859470, 0.047560,
		27.361292, 34.358276, 22.985815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181858, 34.316280, 23.060528>,  <27.717569, 33.756649, 22.952522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181858, 34.316280, 23.060528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824987, 34.419804, 23.208603>,  <27.610865, 34.481918, 23.297447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824987, 34.419804, 23.208603>,  <28.181858, 34.316280, 23.060528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824987, 34.419804, 23.208603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402762, 0.084853, 0.911363,
		0.204459, 0.962194, -0.179943,
		-0.892177, 0.258811, 0.370186,
		27.557335, 34.497448, 23.319658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461918, 34.644833, 23.627890>,  <28.181858, 34.316280, 23.060528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461918, 34.644833, 23.627890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071362, 34.625660, 23.712139>,  <27.837027, 34.614155, 23.762688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071362, 34.625660, 23.712139>,  <28.461918, 34.644833, 23.627890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071362, 34.625660, 23.712139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200756, 0.158521, 0.966731,
		-0.079727, 0.986191, -0.145156,
		-0.976392, -0.047934, 0.210622,
		27.778444, 34.611279, 23.775326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217127, 35.250660, 23.938889>,  <28.461918, 34.644833, 23.627890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217127, 35.250660, 23.938889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942612, 34.986465, 24.060722>,  <27.777903, 34.827950, 24.133823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942612, 34.986465, 24.060722>,  <28.217127, 35.250660, 23.938889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942612, 34.986465, 24.060722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043100, 0.381104, 0.923527,
		-0.726052, 0.646932, -0.233081,
		-0.686287, -0.660483, 0.304584,
		27.736725, 34.788319, 24.152098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773846, 35.668339, 24.290747>,  <28.217127, 35.250660, 23.938889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773846, 35.668339, 24.290747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720160, 35.295380, 24.424984>,  <27.687948, 35.071606, 24.505526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720160, 35.295380, 24.424984>,  <27.773846, 35.668339, 24.290747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720160, 35.295380, 24.424984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074657, 0.328181, 0.941660,
		-0.988136, 0.151438, 0.025564,
		-0.134213, -0.932397, 0.335593,
		27.679895, 35.015659, 24.525661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437649, 35.802517, 24.909937>,  <27.773846, 35.668339, 24.290747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437649, 35.802517, 24.909937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533020, 35.416920, 24.957047>,  <27.590242, 35.185562, 24.985312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533020, 35.416920, 24.957047>,  <27.437649, 35.802517, 24.909937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533020, 35.416920, 24.957047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057492, 0.135068, 0.989167,
		-0.969457, -0.229073, 0.087626,
		0.238427, -0.963993, 0.117772,
		27.604548, 35.127724, 24.992378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025045, 35.578590, 25.474049>,  <27.437649, 35.802517, 24.909937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025045, 35.578590, 25.474049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348560, 35.344265, 25.453312>,  <27.542669, 35.203671, 25.440870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348560, 35.344265, 25.453312>,  <27.025045, 35.578590, 25.474049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348560, 35.344265, 25.453312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174829, 0.155337, 0.972268,
		-0.561512, -0.795423, 0.228051,
		0.808789, -0.585810, -0.051840,
		27.591196, 35.168522, 25.437759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049507, 35.073093, 25.941696>,  <27.025045, 35.578590, 25.474049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049507, 35.073093, 25.941696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441809, 35.096916, 25.867321>,  <27.677189, 35.111210, 25.822695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441809, 35.096916, 25.867321>,  <27.049507, 35.073093, 25.941696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441809, 35.096916, 25.867321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184224, 0.033157, 0.982325,
		0.064671, -0.997674, 0.021547,
		0.980754, 0.059559, -0.185940,
		27.736034, 35.114784, 25.811539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417019, 34.704609, 26.423838>,  <27.049507, 35.073093, 25.941696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417019, 34.704609, 26.423838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733517, 34.905449, 26.284225>,  <27.923416, 35.025955, 26.200459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733517, 34.905449, 26.284225>,  <27.417019, 34.704609, 26.423838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733517, 34.905449, 26.284225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384027, 0.036169, 0.922613,
		0.475870, -0.864052, -0.164202,
		0.791246, 0.502102, -0.349030,
		27.970890, 35.056080, 26.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054258, 34.635120, 26.863836>,  <27.417019, 34.704609, 26.423838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054258, 34.635120, 26.863836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170921, 34.958076, 26.658680>,  <28.240919, 35.151852, 26.535585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170921, 34.958076, 26.658680>,  <28.054258, 34.635120, 26.863836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170921, 34.958076, 26.658680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450658, 0.356973, 0.818216,
		0.843708, -0.469777, -0.259743,
		0.291658, 0.807390, -0.512890,
		28.258419, 35.200294, 26.504812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784967, 34.723877, 26.963198>,  <28.054258, 34.635120, 26.863836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784967, 34.723877, 26.963198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639841, 35.084282, 26.868088>,  <28.552765, 35.300526, 26.811022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639841, 35.084282, 26.868088>,  <28.784967, 34.723877, 26.963198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639841, 35.084282, 26.868088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347005, 0.367442, 0.862887,
		0.864843, 0.230558, -0.445970,
		-0.362814, 0.901016, -0.237775,
		28.530996, 35.354588, 26.796755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356142, 35.245472, 27.075523>,  <28.784967, 34.723877, 26.963198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356142, 35.245472, 27.075523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010683, 35.447102, 27.077335>,  <28.803408, 35.568081, 27.078423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010683, 35.447102, 27.077335>,  <29.356142, 35.245472, 27.075523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010683, 35.447102, 27.077335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236720, 0.397614, 0.886491,
		0.445055, 0.766690, -0.462724,
		-0.863649, 0.504073, 0.004531,
		28.751589, 35.598324, 27.078695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610933, 35.875683, 27.565493>,  <29.356142, 35.245472, 27.075523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610933, 35.875683, 27.565493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212187, 35.884388, 27.535069>,  <28.972939, 35.889610, 27.516813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212187, 35.884388, 27.535069>,  <29.610933, 35.875683, 27.565493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212187, 35.884388, 27.535069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065866, 0.304315, 0.950292,
		0.043825, 0.952323, -0.301928,
		-0.996866, 0.021760, -0.076062,
		28.913128, 35.890915, 27.512249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379301, 36.440365, 27.958151>,  <29.610933, 35.875683, 27.565493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379301, 36.440365, 27.958151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057842, 36.204357, 27.927105>,  <28.864967, 36.062752, 27.908478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057842, 36.204357, 27.927105>,  <29.379301, 36.440365, 27.958151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057842, 36.204357, 27.927105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178595, 0.114711, 0.977213,
		-0.567675, 0.799196, -0.197563,
		-0.803647, -0.590023, -0.077614,
		28.816748, 36.027351, 27.903820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292570, 37.222729, 27.983419>,  <29.379301, 36.440365, 27.958151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292570, 37.222729, 27.983419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676971, 37.273586, 28.081650>,  <29.907612, 37.304100, 28.140589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676971, 37.273586, 28.081650>,  <29.292570, 37.222729, 27.983419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676971, 37.273586, 28.081650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244075, 0.027500, -0.969366,
		-0.130006, 0.991502, -0.004606,
		0.961002, 0.127148, 0.245576,
		29.965273, 37.311729, 28.155323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597580, 37.800903, 27.592634>,  <29.292570, 37.222729, 27.983419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597580, 37.800903, 27.592634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934557, 37.618931, 27.708103>,  <30.136744, 37.509747, 27.777384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934557, 37.618931, 27.708103>,  <29.597580, 37.800903, 27.592634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934557, 37.618931, 27.708103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204856, -0.225084, -0.952561,
		0.498326, 0.861611, -0.096424,
		0.842440, -0.454933, 0.288671,
		30.187288, 37.482452, 27.794704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175386, 38.085400, 27.155930>,  <29.597580, 37.800903, 27.592634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175386, 38.085400, 27.155930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326136, 37.759457, 27.332096>,  <30.416586, 37.563889, 27.437796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326136, 37.759457, 27.332096>,  <30.175386, 38.085400, 27.155930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326136, 37.759457, 27.332096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553103, -0.183424, -0.812670,
		0.742996, 0.549872, 0.381573,
		0.376875, -0.814860, 0.440419,
		30.439198, 37.514999, 27.464222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922482, 38.128433, 27.015795>,  <30.175386, 38.085400, 27.155930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922482, 38.128433, 27.015795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817980, 37.748425, 27.084141>,  <30.755278, 37.520420, 27.125149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817980, 37.748425, 27.084141>,  <30.922482, 38.128433, 27.015795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817980, 37.748425, 27.084141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550346, -0.292027, -0.782201,
		0.793010, -0.110318, 0.599137,
		-0.261255, -0.950026, 0.170867,
		30.739603, 37.463417, 27.135401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477741, 37.817314, 26.802351>,  <30.922482, 38.128433, 27.015795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477741, 37.817314, 26.802351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219847, 37.513386, 26.768921>,  <31.065109, 37.331028, 26.748863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219847, 37.513386, 26.768921>,  <31.477741, 37.817314, 26.802351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219847, 37.513386, 26.768921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594725, -0.429925, -0.679313,
		0.480224, -0.487684, 0.729074,
		-0.644737, -0.759821, -0.083577,
		31.026426, 37.285439, 26.743847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858921, 37.215408, 26.939528>,  <31.477741, 37.817314, 26.802351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858921, 37.215408, 26.939528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535618, 37.086597, 26.742340>,  <31.341637, 37.009312, 26.624027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535618, 37.086597, 26.742340>,  <31.858921, 37.215408, 26.939528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535618, 37.086597, 26.742340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580246, -0.578027, -0.573759,
		-0.100181, -0.749787, 0.654051,
		-0.808257, -0.322031, -0.492968,
		31.293140, 36.989990, 26.594450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937813, 36.594189, 26.767069>,  <31.858921, 37.215408, 26.939528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937813, 36.594189, 26.767069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651346, 36.680099, 26.501446>,  <31.479465, 36.731647, 26.342072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651346, 36.680099, 26.501446>,  <31.937813, 36.594189, 26.767069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651346, 36.680099, 26.501446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406708, -0.644791, -0.647173,
		-0.567179, -0.733562, 0.374425,
		-0.716167, 0.214781, -0.664058,
		31.436497, 36.744534, 26.302229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925501, 35.982971, 26.511723>,  <31.937813, 36.594189, 26.767069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925501, 35.982971, 26.511723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763208, 36.235367, 26.247227>,  <31.665833, 36.386803, 26.088530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763208, 36.235367, 26.247227>,  <31.925501, 35.982971, 26.511723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763208, 36.235367, 26.247227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383468, -0.539193, -0.749816,
		-0.829660, -0.557787, -0.023197,
		-0.405730, 0.630988, -0.661240,
		31.641489, 36.424664, 26.048855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691496, 35.499199, 25.959705>,  <31.925501, 35.982971, 26.511723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691496, 35.499199, 25.959705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683001, 35.859734, 25.786663>,  <31.677904, 36.076054, 25.682837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683001, 35.859734, 25.786663>,  <31.691496, 35.499199, 25.959705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683001, 35.859734, 25.786663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172640, -0.422898, -0.889580,
		-0.984756, -0.093579, -0.146625,
		-0.021239, 0.901333, -0.432607,
		31.676628, 36.130135, 25.656881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505926, 35.326965, 25.332544>,  <31.691496, 35.499199, 25.959705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505926, 35.326965, 25.332544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644213, 35.698921, 25.282276>,  <31.727184, 35.922092, 25.252115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644213, 35.698921, 25.282276>,  <31.505926, 35.326965, 25.332544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644213, 35.698921, 25.282276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259142, -0.223336, -0.939663,
		-0.901845, 0.292293, -0.318183,
		0.345719, 0.929885, -0.125669,
		31.747929, 35.977886, 25.244576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194309, 35.601036, 24.769655>,  <31.505926, 35.326965, 25.332544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194309, 35.601036, 24.769655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538971, 35.802242, 24.796581>,  <31.745768, 35.922966, 24.812737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538971, 35.802242, 24.796581>,  <31.194309, 35.601036, 24.769655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538971, 35.802242, 24.796581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163664, -0.149871, -0.975065,
		-0.480381, 0.851186, -0.211462,
		0.861654, 0.503012, 0.067313,
		31.797466, 35.953144, 24.816774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346853, 35.990211, 24.131861>,  <31.194309, 35.601036, 24.769655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346853, 35.990211, 24.131861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713223, 35.931541, 24.281296>,  <31.933044, 35.896339, 24.370956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713223, 35.931541, 24.281296>,  <31.346853, 35.990211, 24.131861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713223, 35.931541, 24.281296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353770, -0.144561, -0.924093,
		0.189547, 0.978564, -0.080518,
		0.915925, -0.146674, 0.373588,
		31.988001, 35.887539, 24.393372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.320274, 37.944298, 31.856934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.657991, 37.729965, 31.854076>,  <29.860622, 37.601364, 31.852362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.657991, 37.729965, 31.854076>,  <29.320274, 37.944298, 31.856934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657991, 37.729965, 31.854076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073504, 0.128998, -0.988917,
		0.530815, 0.834412, 0.148298,
		0.844294, -0.535833, -0.007142,
		29.911280, 37.569214, 31.851934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859470, 38.339951, 31.569984>,  <29.320274, 37.944298, 31.856934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859470, 38.339951, 31.569984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.964901, 37.956207, 31.529655>,  <30.028160, 37.725964, 31.505459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.964901, 37.956207, 31.529655>,  <29.859470, 38.339951, 31.569984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964901, 37.956207, 31.529655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124923, 0.137585, -0.982581,
		0.956515, 0.246392, 0.156110,
		0.263579, -0.959355, -0.100822,
		30.043974, 37.668400, 31.499409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335842, 38.427898, 31.075417>,  <29.859470, 38.339951, 31.569984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335842, 38.427898, 31.075417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.236319, 38.041187, 31.052002>,  <30.176603, 37.809158, 31.037954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.236319, 38.041187, 31.052002>,  <30.335842, 38.427898, 31.075417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236319, 38.041187, 31.052002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100841, 0.034250, -0.994313,
		0.963288, -0.253298, 0.088970,
		-0.248811, -0.966782, -0.058535,
		30.161674, 37.751152, 31.034441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820000, 38.186943, 30.629492>,  <30.335842, 38.427898, 31.075417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820000, 38.186943, 30.629492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.535028, 37.906506, 30.641575>,  <30.364046, 37.738243, 30.648825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.535028, 37.906506, 30.641575>,  <30.820000, 38.186943, 30.629492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535028, 37.906506, 30.641575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068781, 0.026923, -0.997268,
		0.698366, -0.712560, -0.067402,
		-0.712429, -0.701094, 0.030208,
		30.321301, 37.696178, 30.650637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043839, 37.618904, 30.335863>,  <30.820000, 38.186943, 30.629492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043839, 37.618904, 30.335863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.647110, 37.586079, 30.296757>,  <30.409073, 37.566383, 30.273293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.647110, 37.586079, 30.296757>,  <31.043839, 37.618904, 30.335863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647110, 37.586079, 30.296757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106099, -0.104232, -0.988877,
		0.070959, -0.991161, 0.112087,
		-0.991821, -0.082063, -0.097765,
		30.349564, 37.561459, 30.267427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971127, 37.017891, 29.830269>,  <31.043839, 37.618904, 30.335863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971127, 37.017891, 29.830269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.599533, 37.162781, 29.799866>,  <30.376577, 37.249714, 29.781624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.599533, 37.162781, 29.799866>,  <30.971127, 37.017891, 29.830269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599533, 37.162781, 29.799866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060117, -0.054964, -0.996677,
		-0.365203, -0.930467, 0.029284,
		-0.928985, 0.362229, -0.076010,
		30.320837, 37.271450, 29.777063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470493, 36.554214, 29.465605>,  <30.971127, 37.017891, 29.830269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470493, 36.554214, 29.465605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.305580, 36.917690, 29.439369>,  <30.206631, 37.135777, 29.423628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.305580, 36.917690, 29.439369>,  <30.470493, 36.554214, 29.465605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305580, 36.917690, 29.439369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153665, -0.140318, -0.978109,
		-0.898002, -0.393181, 0.197485,
		-0.412285, 0.908691, -0.065588,
		30.181894, 37.190296, 29.419693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785259, 36.434265, 29.188053>,  <30.470493, 36.554214, 29.465605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785259, 36.434265, 29.188053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.889288, 36.813931, 29.117111>,  <29.951706, 37.041729, 29.074545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.889288, 36.813931, 29.117111>,  <29.785259, 36.434265, 29.188053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889288, 36.813931, 29.117111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244069, -0.113093, -0.963141,
		-0.934234, 0.293773, 0.202249,
		0.260072, 0.949161, -0.177356,
		29.967310, 37.098679, 29.063904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317009, 36.655392, 28.688875>,  <29.785259, 36.434265, 29.188053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317009, 36.655392, 28.688875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.624300, 36.909191, 28.654858>,  <29.808674, 37.061470, 28.634447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.624300, 36.909191, 28.654858>,  <29.317009, 36.655392, 28.688875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624300, 36.909191, 28.654858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077747, -0.039390, -0.996195,
		-0.635438, 0.771916, 0.019071,
		0.768227, 0.634503, -0.085044,
		29.854769, 37.099541, 28.629345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692230, 36.833389, 28.260481>,  <29.317009, 36.655392, 28.688875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692230, 36.833389, 28.260481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.599983, 36.444260, 28.252140>,  <28.544634, 36.210781, 28.247135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.599983, 36.444260, 28.252140>,  <28.692230, 36.833389, 28.260481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599983, 36.444260, 28.252140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326752, 0.057238, 0.943375,
		-0.916541, 0.224374, -0.331071,
		-0.230619, -0.972821, -0.020854,
		28.530798, 36.152412, 28.245884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060322, 36.795086, 28.589304>,  <28.692230, 36.833389, 28.260481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060322, 36.795086, 28.589304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.202448, 36.421631, 28.607502>,  <28.287724, 36.197559, 28.618422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.202448, 36.421631, 28.607502>,  <28.060322, 36.795086, 28.589304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202448, 36.421631, 28.607502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298089, -0.067045, 0.952181,
		-0.885942, -0.351886, -0.302130,
		0.355315, -0.933639, 0.045495,
		28.309042, 36.141541, 28.621151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581888, 36.426785, 29.000364>,  <28.060322, 36.795086, 28.589304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581888, 36.426785, 29.000364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.900434, 36.185711, 29.020668>,  <28.091562, 36.041065, 29.032850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.900434, 36.185711, 29.020668>,  <27.581888, 36.426785, 29.000364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900434, 36.185711, 29.020668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223885, -0.215787, 0.950427,
		-0.561854, -0.768250, -0.306777,
		0.796364, -0.602684, 0.050759,
		28.139343, 36.004906, 29.035896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344141, 35.768394, 29.291382>,  <27.581888, 36.426785, 29.000364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344141, 35.768394, 29.291382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.734102, 35.794785, 29.376431>,  <27.968079, 35.810619, 29.427460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.734102, 35.794785, 29.376431>,  <27.344141, 35.768394, 29.291382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734102, 35.794785, 29.376431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196706, -0.191971, 0.961485,
		0.104249, -0.979181, -0.174177,
		0.974905, 0.065972, 0.212623,
		28.026573, 35.814575, 29.440218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479935, 35.216286, 29.772707>,  <27.344141, 35.768394, 29.291382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479935, 35.216286, 29.772707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.808270, 35.439884, 29.819603>,  <28.005270, 35.574043, 29.847740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.808270, 35.439884, 29.819603>,  <27.479935, 35.216286, 29.772707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808270, 35.439884, 29.819603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031384, -0.160809, 0.986486,
		0.570297, -0.813426, -0.114455,
		0.820839, 0.558998, 0.117238,
		28.054522, 35.607582, 29.854774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850220, 34.832138, 30.177990>,  <27.479935, 35.216286, 29.772707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850220, 34.832138, 30.177990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.997574, 35.201981, 30.216770>,  <28.085987, 35.423885, 30.240038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.997574, 35.201981, 30.216770>,  <27.850220, 34.832138, 30.177990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997574, 35.201981, 30.216770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048969, -0.084841, 0.995191,
		0.928383, -0.371361, 0.014023,
		0.368386, 0.924604, 0.096950,
		28.108089, 35.479362, 30.245855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369625, 34.746979, 30.653336>,  <27.850220, 34.832138, 30.177990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369625, 34.746979, 30.653336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.312208, 35.141357, 30.687531>,  <28.277758, 35.377983, 30.708048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.312208, 35.141357, 30.687531>,  <28.369625, 34.746979, 30.653336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312208, 35.141357, 30.687531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058899, -0.094742, 0.993758,
		0.987890, 0.137611, 0.071671,
		-0.143543, 0.985945, 0.085489,
		28.269146, 35.437141, 30.713177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729126, 34.750256, 31.248426>,  <28.369625, 34.746979, 30.653336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729126, 34.750256, 31.248426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.509239, 35.081902, 31.207676>,  <28.377308, 35.280888, 31.183226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.509239, 35.081902, 31.207676>,  <28.729126, 34.750256, 31.248426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509239, 35.081902, 31.207676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118353, 0.043426, 0.992022,
		0.826924, 0.557389, 0.074256,
		-0.549718, 0.829115, -0.101879,
		28.344324, 35.330635, 31.177113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951077, 35.177563, 31.802568>,  <28.729126, 34.750256, 31.248426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951077, 35.177563, 31.802568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.597239, 35.327194, 31.691174>,  <28.384935, 35.416973, 31.624336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.597239, 35.327194, 31.691174>,  <28.951077, 35.177563, 31.802568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597239, 35.327194, 31.691174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330645, -0.081953, 0.940190,
		0.328879, 0.923770, 0.196182,
		-0.884597, 0.374076, -0.278487,
		28.331860, 35.439419, 31.607628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847221, 35.877266, 32.236004>,  <28.951077, 35.177563, 31.802568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847221, 35.877266, 32.236004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.486153, 35.767303, 32.103573>,  <28.269512, 35.701328, 32.024113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.486153, 35.767303, 32.103573>,  <28.847221, 35.877266, 32.236004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486153, 35.767303, 32.103573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350972, 0.025116, 0.936049,
		-0.249007, 0.961144, -0.119155,
		-0.902671, -0.274903, -0.331080,
		28.215351, 35.684834, 32.004250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422562, 36.384750, 32.501862>,  <28.847221, 35.877266, 32.236004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422562, 36.384750, 32.501862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.207861, 36.052113, 32.444790>,  <28.079041, 35.852531, 32.410549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.207861, 36.052113, 32.444790>,  <28.422562, 36.384750, 32.501862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207861, 36.052113, 32.444790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329794, 0.051132, 0.942667,
		-0.776618, 0.553030, -0.301699,
		-0.536749, -0.831591, -0.142676,
		28.046837, 35.802635, 32.401985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680555, 36.541397, 32.794823>,  <28.422562, 36.384750, 32.501862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680555, 36.541397, 32.794823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.725235, 36.144024, 32.784908>,  <27.752043, 35.905602, 32.778961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.725235, 36.144024, 32.784908>,  <27.680555, 36.541397, 32.794823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725235, 36.144024, 32.784908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250012, -0.052231, 0.966833,
		-0.961778, -0.101799, -0.254205,
		0.111700, -0.993433, -0.024784,
		27.758745, 35.845993, 32.777473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093157, 36.260593, 33.082371>,  <27.680555, 36.541397, 32.794823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093157, 36.260593, 33.082371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.381214, 35.983173, 33.090195>,  <27.554049, 35.816723, 33.094891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.381214, 35.983173, 33.090195>,  <27.093157, 36.260593, 33.082371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381214, 35.983173, 33.090195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207364, -0.188241, 0.959982,
		-0.662112, -0.695381, -0.279378,
		0.720144, -0.693549, 0.019561,
		27.597258, 35.775108, 33.096062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872864, 35.864990, 33.596710>,  <27.093157, 36.260593, 33.082371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872864, 35.864990, 33.596710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.238867, 35.709427, 33.553806>,  <27.458469, 35.616089, 33.528065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.238867, 35.709427, 33.553806>,  <26.872864, 35.864990, 33.596710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238867, 35.709427, 33.553806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056413, -0.386607, 0.920517,
		-0.399476, -0.836228, -0.375688,
		0.915006, -0.388918, -0.107266,
		27.513371, 35.592754, 33.521629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.579834, 31.598322, 34.502514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524429, 31.972900, 34.373592>,  <33.491184, 32.197647, 34.296238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.524429, 31.972900, 34.373592>,  <33.579834, 31.598322, 34.502514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524429, 31.972900, 34.373592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056595, -0.332394, -0.941441,
		-0.988742, -0.112164, 0.099040,
		-0.138516, 0.936447, -0.322304,
		33.482876, 32.253834, 34.276901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957367, 31.573521, 33.982872>,  <33.579834, 31.598322, 34.502514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957367, 31.573521, 33.982872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187355, 31.889763, 33.898636>,  <33.325348, 32.079510, 33.848095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187355, 31.889763, 33.898636>,  <32.957367, 31.573521, 33.982872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187355, 31.889763, 33.898636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076793, -0.204106, -0.975932,
		-0.814561, 0.577306, -0.056642,
		0.574972, 0.790607, -0.210590,
		33.359848, 32.126945, 33.835461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617096, 31.940908, 33.436184>,  <32.957367, 31.573521, 33.982872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617096, 31.940908, 33.436184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992268, 32.076572, 33.407162>,  <33.217369, 32.157970, 33.389748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.992268, 32.076572, 33.407162>,  <32.617096, 31.940908, 33.436184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992268, 32.076572, 33.407162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134971, 0.164204, -0.977149,
		-0.319494, 0.926287, 0.199788,
		0.937926, 0.339159, -0.072560,
		33.273647, 32.178322, 33.385395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514778, 32.525723, 33.079803>,  <32.617096, 31.940908, 33.436184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514778, 32.525723, 33.079803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890011, 32.391197, 33.046570>,  <33.115150, 32.310482, 33.026630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890011, 32.391197, 33.046570>,  <32.514778, 32.525723, 33.079803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890011, 32.391197, 33.046570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022635, 0.298828, -0.954038,
		0.345680, 0.893083, 0.287937,
		0.938079, -0.336309, -0.083084,
		33.171436, 32.290306, 33.021645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744549, 33.054214, 32.668652>,  <32.514778, 32.525723, 33.079803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744549, 33.054214, 32.668652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018311, 32.765808, 32.625336>,  <33.182568, 32.592762, 32.599346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.018311, 32.765808, 32.625336>,  <32.744549, 33.054214, 32.668652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018311, 32.765808, 32.625336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205485, 0.333248, -0.920175,
		0.699551, 0.607517, 0.376234,
		0.684401, -0.721020, -0.108289,
		33.223629, 32.549503, 32.592850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442371, 33.287201, 32.526360>,  <32.744549, 33.054214, 32.668652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442371, 33.287201, 32.526360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464455, 32.919380, 32.370731>,  <33.477703, 32.698689, 32.277355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464455, 32.919380, 32.370731>,  <33.442371, 33.287201, 32.526360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464455, 32.919380, 32.370731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260638, 0.389429, -0.883410,
		0.963857, -0.052635, 0.261170,
		0.055209, -0.919551, -0.389072,
		33.481018, 32.643517, 32.254009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882149, 33.401039, 31.846945>,  <33.442371, 33.287201, 32.526360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882149, 33.401039, 31.846945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758015, 33.024071, 31.797092>,  <33.683533, 32.797890, 31.767181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.758015, 33.024071, 31.797092>,  <33.882149, 33.401039, 31.846945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758015, 33.024071, 31.797092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148908, 0.081293, -0.985504,
		0.938892, -0.324396, 0.115106,
		-0.310336, -0.942422, -0.124631,
		33.664913, 32.741344, 31.759703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454212, 32.910614, 31.521685>,  <33.882149, 33.401039, 31.846945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454212, 32.910614, 31.521685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.097462, 32.748810, 31.440762>,  <33.883411, 32.651730, 31.392208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.097462, 32.748810, 31.440762>,  <34.454212, 32.910614, 31.521685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097462, 32.748810, 31.440762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214089, 0.016439, -0.976676,
		0.398399, -0.914387, 0.071939,
		-0.891877, -0.404508, -0.202309,
		33.829899, 32.627457, 31.380070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585369, 32.413059, 30.933809>,  <34.454212, 32.910614, 31.521685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585369, 32.413059, 30.933809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.186703, 32.441013, 30.916992>,  <33.947502, 32.457787, 30.906902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.186703, 32.441013, 30.916992>,  <34.585369, 32.413059, 30.933809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186703, 32.441013, 30.916992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035693, -0.089765, -0.995323,
		-0.073314, -0.993510, 0.086973,
		-0.996670, 0.069867, -0.042042,
		33.887703, 32.461979, 30.904379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383476, 31.968338, 30.462837>,  <34.585369, 32.413059, 30.933809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383476, 31.968338, 30.462837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.055435, 32.195293, 30.492516>,  <33.858612, 32.331467, 30.510323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.055435, 32.195293, 30.492516>,  <34.383476, 31.968338, 30.462837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055435, 32.195293, 30.492516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137614, -0.069702, -0.988030,
		-0.555425, -0.820495, 0.135243,
		-0.820101, 0.567388, 0.074198,
		33.809406, 32.365509, 30.514774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814095, 31.613895, 30.274912>,  <34.383476, 31.968338, 30.462837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814095, 31.613895, 30.274912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.740425, 32.000858, 30.205395>,  <33.696224, 32.233036, 30.163685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.740425, 32.000858, 30.205395>,  <33.814095, 31.613895, 30.274912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740425, 32.000858, 30.205395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136600, -0.200292, -0.970167,
		-0.973356, -0.154937, 0.169035,
		-0.184171, 0.967408, -0.173791,
		33.685173, 32.291080, 30.153257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356579, 31.562967, 29.806915>,  <33.814095, 31.613895, 30.274912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356579, 31.562967, 29.806915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455006, 31.948528, 29.766239>,  <33.514061, 32.179867, 29.741833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455006, 31.948528, 29.766239>,  <33.356579, 31.562967, 29.806915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455006, 31.948528, 29.766239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014500, -0.108565, -0.993984,
		-0.969145, 0.243110, -0.040691,
		0.246065, 0.963904, -0.101691,
		33.528824, 32.237698, 29.735731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141125, 31.606884, 29.142551>,  <33.356579, 31.562967, 29.806915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141125, 31.606884, 29.142551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355450, 31.932064, 29.233776>,  <33.484047, 32.127171, 29.288511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355450, 31.932064, 29.233776>,  <33.141125, 31.606884, 29.142551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355450, 31.932064, 29.233776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179828, 0.154036, -0.971563,
		-0.824962, 0.561592, -0.063656,
		0.535816, 0.812950, 0.228063,
		33.516193, 32.175949, 29.302195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918995, 32.155556, 28.756470>,  <33.141125, 31.606884, 29.142551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918995, 32.155556, 28.756470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302155, 32.225861, 28.847271>,  <33.532051, 32.268044, 28.901751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302155, 32.225861, 28.847271>,  <32.918995, 32.155556, 28.756470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302155, 32.225861, 28.847271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233766, -0.018507, -0.972117,
		-0.166662, 0.984258, -0.058816,
		0.957903, 0.175764, 0.227002,
		33.589527, 32.278591, 28.915371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296417, 32.403805, 28.618227>,  <32.918995, 32.155556, 28.756470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296417, 32.403805, 28.618227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972967, 32.221127, 28.469868>,  <31.778898, 32.111519, 28.380852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.972967, 32.221127, 28.469868>,  <32.296417, 32.403805, 28.618227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972967, 32.221127, 28.469868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368455, -0.098376, 0.924426,
		-0.458664, 0.884170, -0.088721,
		-0.808621, -0.456691, -0.370898,
		31.730381, 32.084118, 28.358599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752947, 32.710152, 28.938480>,  <32.296417, 32.403805, 28.618227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752947, 32.710152, 28.938480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590025, 32.362671, 28.825722>,  <31.492271, 32.154182, 28.758066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590025, 32.362671, 28.825722>,  <31.752947, 32.710152, 28.938480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590025, 32.362671, 28.825722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314951, -0.156126, 0.936179,
		-0.857269, 0.470093, -0.210007,
		-0.407304, -0.868699, -0.281898,
		31.467834, 32.102062, 28.741152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131081, 32.663677, 29.370207>,  <31.752947, 32.710152, 28.938480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131081, 32.663677, 29.370207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.160503, 32.290234, 29.229942>,  <31.178158, 32.066166, 29.145782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.160503, 32.290234, 29.229942>,  <31.131081, 32.663677, 29.370207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160503, 32.290234, 29.229942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207688, -0.358247, 0.910233,
		-0.975425, 0.005873, -0.220252,
		0.073558, -0.933608, -0.350663,
		31.182571, 32.010151, 29.124744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488749, 32.298969, 29.571255>,  <31.131081, 32.663677, 29.370207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488749, 32.298969, 29.571255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.784082, 32.038288, 29.501797>,  <30.961283, 31.881880, 29.460123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.784082, 32.038288, 29.501797>,  <30.488749, 32.298969, 29.571255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784082, 32.038288, 29.501797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142398, -0.402294, 0.904369,
		-0.659232, -0.642998, -0.389828,
		0.738333, -0.651700, -0.173643,
		31.005583, 31.842779, 29.449703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269012, 31.763756, 29.848551>,  <30.488749, 32.298969, 29.571255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269012, 31.763756, 29.848551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.664740, 31.708179, 29.830925>,  <30.902176, 31.674833, 29.820349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.664740, 31.708179, 29.830925>,  <30.269012, 31.763756, 29.848551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664740, 31.708179, 29.830925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006248, -0.342462, 0.939511,
		-0.145625, -0.929202, -0.339673,
		0.989320, -0.138939, -0.044065,
		30.961536, 31.666498, 29.817705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321566, 31.049984, 29.918150>,  <30.269012, 31.763756, 29.848551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321566, 31.049984, 29.918150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655178, 31.225071, 30.052490>,  <30.855347, 31.330122, 30.133095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655178, 31.225071, 30.052490>,  <30.321566, 31.049984, 29.918150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655178, 31.225071, 30.052490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115143, -0.457235, 0.881860,
		0.539567, -0.774171, -0.330949,
		0.834032, 0.437716, 0.335850,
		30.905388, 31.356386, 30.153246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576748, 30.595951, 30.364832>,  <30.321566, 31.049984, 29.918150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576748, 30.595951, 30.364832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.763563, 30.930637, 30.479221>,  <30.875652, 31.131449, 30.547855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.763563, 30.930637, 30.479221>,  <30.576748, 30.595951, 30.364832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763563, 30.930637, 30.479221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067602, -0.288678, 0.955037,
		0.881650, -0.465370, -0.078260,
		0.467037, 0.836717, 0.285972,
		30.903675, 31.181652, 30.565014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895386, 30.421093, 30.987782>,  <30.576748, 30.595951, 30.364832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895386, 30.421093, 30.987782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.952330, 30.816898, 30.997578>,  <30.986496, 31.054380, 31.003456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.952330, 30.816898, 30.997578>,  <30.895386, 30.421093, 30.987782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952330, 30.816898, 30.997578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058284, -0.033081, 0.997752,
		0.988097, -0.140612, -0.062382,
		0.142360, 0.989512, 0.024492,
		30.995037, 31.113752, 31.004925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559196, 30.555500, 31.422115>,  <30.895386, 30.421093, 30.987782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559196, 30.555500, 31.422115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299768, 30.859421, 31.403965>,  <31.144112, 31.041773, 31.393074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299768, 30.859421, 31.403965>,  <31.559196, 30.555500, 31.422115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299768, 30.859421, 31.403965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034880, 0.029886, 0.998945,
		0.760355, 0.649469, 0.007119,
		-0.648571, 0.759800, -0.045378,
		31.105198, 31.087360, 31.390352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792076, 31.020983, 32.012360>,  <31.559196, 30.555500, 31.422115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792076, 31.020983, 32.012360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428123, 31.142941, 31.899818>,  <31.209753, 31.216114, 31.832294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428123, 31.142941, 31.899818>,  <31.792076, 31.020983, 32.012360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428123, 31.142941, 31.899818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237958, 0.171988, 0.955927,
		0.339845, 0.936728, -0.083937,
		-0.909880, 0.304894, -0.281351,
		31.155159, 31.234409, 31.815413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648050, 31.746958, 32.071030>,  <31.792076, 31.020983, 32.012360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648050, 31.746958, 32.071030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.278555, 31.596992, 32.102402>,  <31.056858, 31.507013, 32.121223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.278555, 31.596992, 32.102402>,  <31.648050, 31.746958, 32.071030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278555, 31.596992, 32.102402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131578, 0.502900, 0.854271,
		-0.359718, 0.778802, -0.513878,
		-0.923737, -0.374912, 0.078429,
		31.001434, 31.484518, 32.125931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221788, 32.270706, 32.338871>,  <31.648050, 31.746958, 32.071030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221788, 32.270706, 32.338871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.003777, 31.946075, 32.423050>,  <30.872971, 31.751297, 32.473557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.003777, 31.946075, 32.423050>,  <31.221788, 32.270706, 32.338871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003777, 31.946075, 32.423050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156092, 0.344839, 0.925592,
		-0.823760, 0.471624, -0.314628,
		-0.545027, -0.811577, 0.210448,
		30.840269, 31.702602, 32.486183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498165, 32.384518, 32.730354>,  <31.221788, 32.270706, 32.338871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498165, 32.384518, 32.730354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638762, 32.022278, 32.825306>,  <30.723120, 31.804935, 32.882275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638762, 32.022278, 32.825306>,  <30.498165, 32.384518, 32.730354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638762, 32.022278, 32.825306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186095, 0.180909, 0.965733,
		-0.917508, -0.383623, -0.104939,
		0.351493, -0.905597, 0.237376,
		30.744209, 31.750599, 32.896519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958197, 32.247890, 33.234581>,  <30.498165, 32.384518, 32.730354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958197, 32.247890, 33.234581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.249794, 31.981201, 33.296600>,  <30.424753, 31.821186, 33.333813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.249794, 31.981201, 33.296600>,  <29.958197, 32.247890, 33.234581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249794, 31.981201, 33.296600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008012, 0.218184, 0.975875,
		-0.684473, -0.712650, 0.153714,
		0.728995, -0.666728, 0.155051,
		30.468493, 31.781183, 33.343117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340677, 31.700361, 33.066410>,  <29.958197, 32.247890, 33.234581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340677, 31.700361, 33.066410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.959562, 31.793053, 32.987930>,  <28.730892, 31.848667, 32.940842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.959562, 31.793053, 32.987930>,  <29.340677, 31.700361, 33.066410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959562, 31.793053, 32.987930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203393, 0.007312, -0.979070,
		-0.225447, -0.972752, -0.054099,
		-0.952788, 0.231732, -0.196202,
		28.673725, 31.862572, 32.929070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068102, 31.260511, 32.507607>,  <29.340677, 31.700361, 33.066410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068102, 31.260511, 32.507607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.863571, 31.604237, 32.503086>,  <28.740852, 31.810472, 32.500374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.863571, 31.604237, 32.503086>,  <29.068102, 31.260511, 32.507607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863571, 31.604237, 32.503086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045710, 0.014063, -0.998856,
		-0.858171, -0.511257, -0.046470,
		-0.511325, 0.859313, -0.011302,
		28.710173, 31.862030, 32.499695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922758, 31.364477, 31.782860>,  <29.068102, 31.260511, 32.507607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922758, 31.364477, 31.782860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.752939, 31.709785, 31.892056>,  <28.651049, 31.916971, 31.957573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.752939, 31.709785, 31.892056>,  <28.922758, 31.364477, 31.782860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752939, 31.709785, 31.892056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128841, 0.240839, -0.961975,
		-0.896192, -0.443575, 0.008978,
		-0.424546, 0.863272, 0.272989,
		28.625576, 31.968767, 31.973951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280693, 31.353388, 31.459429>,  <28.922758, 31.364477, 31.782860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280693, 31.353388, 31.459429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.375744, 31.729404, 31.557289>,  <28.432774, 31.955015, 31.616005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.375744, 31.729404, 31.557289>,  <28.280693, 31.353388, 31.459429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375744, 31.729404, 31.557289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203134, 0.294389, -0.933848,
		-0.949879, 0.172210, 0.260909,
		0.237626, 0.940042, 0.244652,
		28.447031, 32.011417, 31.630684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808573, 31.736959, 31.170906>,  <28.280693, 31.353388, 31.459429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808573, 31.736959, 31.170906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.095169, 32.007664, 31.238594>,  <28.267126, 32.170086, 31.279207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.095169, 32.007664, 31.238594>,  <27.808573, 31.736959, 31.170906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095169, 32.007664, 31.238594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325945, 0.539243, -0.776516,
		-0.616766, 0.501211, 0.606950,
		0.716491, 0.676761, 0.169220,
		28.310116, 32.210693, 31.289360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462729, 32.331951, 30.923033>,  <27.808573, 31.736959, 31.170906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462729, 32.331951, 30.923033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.848642, 32.430927, 30.958729>,  <28.080191, 32.490314, 30.980146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.848642, 32.430927, 30.958729>,  <27.462729, 32.331951, 30.923033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848642, 32.430927, 30.958729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079649, 0.598143, -0.797422,
		-0.250697, 0.762232, 0.596787,
		0.964784, 0.247444, 0.089242,
		28.138077, 32.505161, 30.985500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496368, 33.120850, 30.925295>,  <27.462729, 32.331951, 30.923033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496368, 33.120850, 30.925295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.824043, 32.934410, 30.791615>,  <28.020647, 32.822548, 30.711407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.824043, 32.934410, 30.791615>,  <27.496368, 33.120850, 30.925295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824043, 32.934410, 30.791615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106947, 0.448351, -0.887436,
		0.563469, 0.762717, 0.317436,
		0.819185, -0.466094, -0.334203,
		28.069799, 32.794582, 30.691353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817965, 33.608818, 30.588049>,  <27.496368, 33.120850, 30.925295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817965, 33.608818, 30.588049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.964548, 33.271278, 30.431271>,  <28.052498, 33.068756, 30.337204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.964548, 33.271278, 30.431271>,  <27.817965, 33.608818, 30.588049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964548, 33.271278, 30.431271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050871, 0.402451, -0.914027,
		0.929042, 0.354894, 0.104555,
		0.366461, -0.843850, -0.391947,
		28.074486, 33.018124, 30.313686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338833, 33.820488, 30.004187>,  <27.817965, 33.608818, 30.588049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338833, 33.820488, 30.004187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.226934, 33.443913, 29.928890>,  <28.159796, 33.217968, 29.883713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.226934, 33.443913, 29.928890>,  <28.338833, 33.820488, 30.004187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226934, 33.443913, 29.928890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106661, 0.225332, -0.968426,
		0.954131, -0.250834, -0.163451,
		-0.279745, -0.941439, -0.188242,
		28.143011, 33.161480, 29.872417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867651, 33.414124, 29.472197>,  <28.338833, 33.820488, 30.004187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867651, 33.414124, 29.472197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.490503, 33.280861, 29.472263>,  <28.264214, 33.200905, 29.472303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.490503, 33.280861, 29.472263>,  <28.867651, 33.414124, 29.472197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490503, 33.280861, 29.472263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009740, 0.027072, -0.999586,
		0.333015, -0.942482, -0.028770,
		-0.942871, -0.333158, 0.000164,
		28.207642, 33.180912, 29.472313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911036, 32.986847, 28.909809>,  <28.867651, 33.414124, 29.472197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911036, 32.986847, 28.909809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.518923, 32.960075, 28.984180>,  <28.283655, 32.944012, 29.028803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.518923, 32.960075, 28.984180>,  <28.911036, 32.986847, 28.909809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518923, 32.960075, 28.984180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174054, -0.153070, -0.972766,
		0.093563, -0.985946, 0.138403,
		-0.980281, -0.066925, 0.185930,
		28.224838, 32.939999, 29.039959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635675, 32.365505, 28.660732>,  <28.911036, 32.986847, 28.909809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635675, 32.365505, 28.660732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.303974, 32.588871, 28.651695>,  <28.104954, 32.722889, 28.646273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.303974, 32.588871, 28.651695>,  <28.635675, 32.365505, 28.660732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303974, 32.588871, 28.651695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163053, -0.280406, -0.945931,
		-0.534558, -0.780733, 0.323579,
		-0.829254, 0.558415, -0.022592,
		28.055199, 32.756397, 28.644918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143255, 31.930468, 28.416704>,  <28.635675, 32.365505, 28.660732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143255, 31.930468, 28.416704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.010311, 32.301994, 28.351181>,  <27.930544, 32.524910, 28.311867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.010311, 32.301994, 28.351181>,  <28.143255, 31.930468, 28.416704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010311, 32.301994, 28.351181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223648, -0.246341, -0.943026,
		-0.916252, -0.276790, 0.289602,
		-0.332361, 0.928818, -0.163807,
		27.910603, 32.580639, 28.302038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505445, 31.866442, 28.000568>,  <28.143255, 31.930468, 28.416704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505445, 31.866442, 28.000568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.627695, 32.240501, 27.928913>,  <27.701046, 32.464935, 27.885920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.627695, 32.240501, 27.928913>,  <27.505445, 31.866442, 28.000568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627695, 32.240501, 27.928913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037492, -0.176173, -0.983645,
		-0.951413, 0.307344, -0.018783,
		0.305626, 0.935149, -0.179137,
		27.719383, 32.521046, 27.875172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.248737, 34.273098, 14.534661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.624210, 34.379269, 14.446645>,  <39.849495, 34.442970, 14.393835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.624210, 34.379269, 14.446645>,  <39.248737, 34.273098, 14.534661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624210, 34.379269, 14.446645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316175, -0.408209, 0.856387,
		0.137482, -0.873450, -0.467101,
		0.938686, 0.265424, -0.220042,
		39.905815, 34.458897, 14.380632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777962, 33.709526, 14.798076>,  <39.248737, 34.273098, 14.534661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777962, 33.709526, 14.798076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955051, 34.067429, 14.774749>,  <40.061306, 34.282169, 14.760753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.955051, 34.067429, 14.774749>,  <39.777962, 33.709526, 14.798076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955051, 34.067429, 14.774749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374732, -0.125547, 0.918593,
		0.814596, -0.428541, -0.390878,
		0.442729, 0.894757, -0.058318,
		40.087872, 34.335857, 14.757254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514439, 33.656422, 14.852074>,  <39.777962, 33.709526, 14.798076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514439, 33.656422, 14.852074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408382, 34.022102, 14.974668>,  <40.344749, 34.241512, 15.048224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408382, 34.022102, 14.974668>,  <40.514439, 33.656422, 14.852074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408382, 34.022102, 14.974668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551693, -0.116851, 0.825821,
		0.790781, 0.388045, -0.473377,
		-0.265141, 0.914203, 0.306485,
		40.328838, 34.296364, 15.066613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150780, 33.842503, 15.190870>,  <40.514439, 33.656422, 14.852074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150780, 33.842503, 15.190870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.865044, 34.100540, 15.299367>,  <40.693600, 34.255363, 15.364465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.865044, 34.100540, 15.299367>,  <41.150780, 33.842503, 15.190870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865044, 34.100540, 15.299367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346323, -0.010921, 0.938052,
		0.608090, 0.764028, -0.215608,
		-0.714343, 0.645090, 0.271241,
		40.650742, 34.294067, 15.380739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432884, 34.249828, 15.669884>,  <41.150780, 33.842503, 15.190870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432884, 34.249828, 15.669884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.052509, 34.320976, 15.771134>,  <40.824284, 34.363667, 15.831885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.052509, 34.320976, 15.771134>,  <41.432884, 34.249828, 15.669884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052509, 34.320976, 15.771134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235718, -0.113350, 0.965189,
		0.200369, 0.977504, 0.065862,
		-0.950941, 0.177869, 0.253127,
		40.767227, 34.374336, 15.847073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495949, 34.498230, 16.366159>,  <41.432884, 34.249828, 15.669884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495949, 34.498230, 16.366159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.108471, 34.406731, 16.327587>,  <40.875984, 34.351830, 16.304443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.108471, 34.406731, 16.327587>,  <41.495949, 34.498230, 16.366159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108471, 34.406731, 16.327587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064659, -0.142543, 0.987674,
		-0.239676, 0.962993, 0.123290,
		-0.968697, -0.228750, -0.096431,
		40.817863, 34.338104, 16.298658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064224, 35.009666, 16.791185>,  <41.495949, 34.498230, 16.366159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064224, 35.009666, 16.791185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838894, 34.687519, 16.717384>,  <40.703697, 34.494228, 16.673103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.838894, 34.687519, 16.717384>,  <41.064224, 35.009666, 16.791185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838894, 34.687519, 16.717384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326570, 0.011912, 0.945098,
		-0.758958, 0.592649, -0.269721,
		-0.563324, -0.805373, -0.184501,
		40.669895, 34.445908, 16.662035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439835, 35.151669, 17.179279>,  <41.064224, 35.009666, 16.791185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439835, 35.151669, 17.179279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.411999, 34.756004, 17.127544>,  <40.395298, 34.518608, 17.096504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.411999, 34.756004, 17.127544>,  <40.439835, 35.151669, 17.179279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411999, 34.756004, 17.127544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474469, -0.081231, 0.876516,
		-0.877517, 0.122359, -0.463672,
		-0.069585, -0.989156, -0.129337,
		40.391125, 34.459259, 17.088743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647133, 34.891266, 17.339176>,  <40.439835, 35.151669, 17.179279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647133, 34.891266, 17.339176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905479, 34.589088, 17.383305>,  <40.060486, 34.407784, 17.409781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905479, 34.589088, 17.383305>,  <39.647133, 34.891266, 17.339176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905479, 34.589088, 17.383305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446792, -0.256839, 0.856977,
		-0.619061, -0.602780, -0.503408,
		0.645864, -0.755439, 0.110319,
		40.099239, 34.362457, 17.416401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246292, 34.255272, 17.358263>,  <39.647133, 34.891266, 17.339176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246292, 34.255272, 17.358263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594654, 34.149612, 17.524036>,  <39.803669, 34.086216, 17.623501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594654, 34.149612, 17.524036>,  <39.246292, 34.255272, 17.358263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594654, 34.149612, 17.524036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469964, -0.200962, 0.859505,
		-0.143749, -0.943314, -0.299157,
		0.870902, -0.264146, 0.414435,
		39.855927, 34.070370, 17.648367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082073, 33.638626, 17.722853>,  <39.246292, 34.255272, 17.358263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082073, 33.638626, 17.722853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.424568, 33.766342, 17.885288>,  <39.630066, 33.842972, 17.982750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.424568, 33.766342, 17.885288>,  <39.082073, 33.638626, 17.722853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424568, 33.766342, 17.885288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290837, -0.351721, 0.889779,
		0.426928, -0.879969, -0.208296,
		0.856240, 0.319291, 0.406087,
		39.681438, 33.862129, 18.007114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328033, 33.084728, 18.057365>,  <39.082073, 33.638626, 17.722853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328033, 33.084728, 18.057365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.512508, 33.383808, 18.248466>,  <39.623196, 33.563255, 18.363127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.512508, 33.383808, 18.248466>,  <39.328033, 33.084728, 18.057365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512508, 33.383808, 18.248466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437598, -0.276737, 0.855526,
		0.771889, -0.603624, 0.199564,
		0.461189, 0.747700, 0.477755,
		39.650864, 33.608116, 18.391792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673584, 32.729321, 18.592806>,  <39.328033, 33.084728, 18.057365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673584, 32.729321, 18.592806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.648911, 33.109337, 18.715191>,  <39.634106, 33.337349, 18.788622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.648911, 33.109337, 18.715191>,  <39.673584, 32.729321, 18.592806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648911, 33.109337, 18.715191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211335, -0.312027, 0.926270,
		0.975465, -0.007523, 0.220025,
		-0.061685, 0.950044, 0.305961,
		39.630405, 33.394348, 18.806980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029480, 32.739738, 19.164825>,  <39.673584, 32.729321, 18.592806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029480, 32.739738, 19.164825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.809319, 33.072948, 19.187195>,  <39.677223, 33.272873, 19.200617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.809319, 33.072948, 19.187195>,  <40.029480, 32.739738, 19.164825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809319, 33.072948, 19.187195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225466, -0.212796, 0.950728,
		0.803878, 0.510677, 0.304942,
		-0.550405, 0.833023, 0.055922,
		39.644196, 33.322857, 19.203972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272789, 33.021465, 19.842363>,  <40.029480, 32.739738, 19.164825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272789, 33.021465, 19.842363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.918728, 33.186642, 19.756588>,  <39.706291, 33.285748, 19.705122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.918728, 33.186642, 19.756588>,  <40.272789, 33.021465, 19.842363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918728, 33.186642, 19.756588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293353, -0.137528, 0.946060,
		0.361174, 0.900315, 0.242870,
		-0.885154, 0.412939, -0.214439,
		39.653183, 33.310524, 19.692257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126942, 33.578587, 20.257704>,  <40.272789, 33.021465, 19.842363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126942, 33.578587, 20.257704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747940, 33.496281, 20.159813>,  <39.520538, 33.446896, 20.101078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747940, 33.496281, 20.159813>,  <40.126942, 33.578587, 20.257704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747940, 33.496281, 20.159813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232334, -0.082770, 0.969108,
		-0.219665, 0.975095, 0.030619,
		-0.947506, -0.205765, -0.244729,
		39.463688, 33.434551, 20.086393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693264, 33.849915, 20.836283>,  <40.126942, 33.578587, 20.257704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693264, 33.849915, 20.836283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481888, 33.583328, 20.625923>,  <39.355061, 33.423378, 20.499708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.481888, 33.583328, 20.625923>,  <39.693264, 33.849915, 20.836283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481888, 33.583328, 20.625923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291285, -0.439518, 0.849692,
		-0.797433, 0.602201, 0.038129,
		-0.528444, -0.666467, -0.525899,
		39.323353, 33.383389, 20.468153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144558, 33.802525, 21.275124>,  <39.693264, 33.849915, 20.836283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144558, 33.802525, 21.275124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.106060, 33.496868, 21.019993>,  <39.082962, 33.313473, 20.866915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.106060, 33.496868, 21.019993>,  <39.144558, 33.802525, 21.275124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106060, 33.496868, 21.019993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418101, -0.550489, 0.722601,
		-0.903287, 0.336225, -0.266506,
		-0.096248, -0.764143, -0.637826,
		39.077187, 33.267624, 20.828646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464848, 33.567577, 21.296446>,  <39.144558, 33.802525, 21.275124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464848, 33.567577, 21.296446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707512, 33.271744, 21.179840>,  <38.853111, 33.094246, 21.109877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707512, 33.271744, 21.179840>,  <38.464848, 33.567577, 21.296446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707512, 33.271744, 21.179840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295305, -0.550123, 0.781127,
		-0.738077, -0.387793, -0.552141,
		0.606661, -0.739582, -0.291516,
		38.889511, 33.049870, 21.092386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085617, 32.860802, 21.484785>,  <38.464848, 33.567577, 21.296446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085617, 32.860802, 21.484785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.453827, 32.725128, 21.407230>,  <38.674751, 32.643723, 21.360697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.453827, 32.725128, 21.407230>,  <38.085617, 32.860802, 21.484785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453827, 32.725128, 21.407230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020333, -0.537187, 0.843218,
		-0.390158, -0.772260, -0.501390,
		0.920523, -0.339183, -0.193886,
		38.729984, 32.623371, 21.349064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090824, 32.152050, 21.451120>,  <38.085617, 32.860802, 21.484785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090824, 32.152050, 21.451120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.434036, 32.301861, 21.591702>,  <38.639961, 32.391747, 21.676050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.434036, 32.301861, 21.591702>,  <38.090824, 32.152050, 21.451120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434036, 32.301861, 21.591702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232511, -0.326900, 0.916010,
		0.457962, -0.867678, -0.193407,
		0.858026, 0.374529, 0.351453,
		38.691444, 32.414219, 21.697138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454124, 32.310310, 21.215683>,  <38.090824, 32.152050, 21.451120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454124, 32.310310, 21.215683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.140831, 32.062759, 21.191914>,  <36.952854, 31.914228, 21.177652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.140831, 32.062759, 21.191914>,  <37.454124, 32.310310, 21.215683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140831, 32.062759, 21.191914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158288, -0.106066, -0.981680,
		0.601241, -0.778290, 0.181036,
		-0.783234, -0.618882, -0.059423,
		36.905861, 31.877094, 21.174088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757107, 31.742693, 20.919535>,  <37.454124, 32.310310, 21.215683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757107, 31.742693, 20.919535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.363991, 31.746761, 20.845757>,  <37.128120, 31.749203, 20.801489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.363991, 31.746761, 20.845757>,  <37.757107, 31.742693, 20.919535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363991, 31.746761, 20.845757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182720, -0.093184, -0.978739,
		-0.027138, -0.995597, 0.089723,
		-0.982790, 0.010167, -0.184444,
		37.069153, 31.749813, 20.790422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743999, 31.288553, 20.314297>,  <37.757107, 31.742693, 20.919535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743999, 31.288553, 20.314297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.385025, 31.463024, 20.340717>,  <37.169640, 31.567707, 20.356569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.385025, 31.463024, 20.340717>,  <37.743999, 31.288553, 20.314297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385025, 31.463024, 20.340717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049975, 0.048247, -0.997585,
		-0.438309, -0.898567, -0.021500,
		-0.897434, 0.436176, 0.066053,
		37.115795, 31.593876, 20.360533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277740, 30.913523, 19.861074>,  <37.743999, 31.288553, 20.314297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277740, 30.913523, 19.861074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.102829, 31.269314, 19.914169>,  <36.997883, 31.482788, 19.946026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.102829, 31.269314, 19.914169>,  <37.277740, 30.913523, 19.861074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102829, 31.269314, 19.914169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011289, 0.142155, -0.989780,
		-0.899255, -0.434310, -0.052121,
		-0.437280, 0.889476, 0.132736,
		36.971645, 31.536156, 19.953991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840515, 30.944910, 19.191536>,  <37.277740, 30.913523, 19.861074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840515, 30.944910, 19.191536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780937, 31.310078, 19.343533>,  <36.745190, 31.529179, 19.434731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780937, 31.310078, 19.343533>,  <36.840515, 30.944910, 19.191536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780937, 31.310078, 19.343533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005716, 0.383478, -0.923532,
		-0.988828, -0.139730, -0.051900,
		-0.148948, 0.912918, 0.379993,
		36.736252, 31.583954, 19.457531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179218, 31.281082, 18.927526>,  <36.840515, 30.944910, 19.191536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179218, 31.281082, 18.927526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454624, 31.547539, 19.042213>,  <36.619865, 31.707413, 19.111027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454624, 31.547539, 19.042213>,  <36.179218, 31.281082, 18.927526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454624, 31.547539, 19.042213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097840, 0.477057, -0.873409,
		-0.718594, 0.573301, 0.393635,
		0.688513, 0.666140, 0.286719,
		36.661179, 31.747381, 19.128229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953030, 31.978952, 18.835056>,  <36.179218, 31.281082, 18.927526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953030, 31.978952, 18.835056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.352413, 31.995476, 18.820221>,  <36.592045, 32.005390, 18.811319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.352413, 31.995476, 18.820221>,  <35.953030, 31.978952, 18.835056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352413, 31.995476, 18.820221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053976, 0.566173, -0.822517,
		-0.012979, 0.823251, 0.567530,
		0.998458, 0.041309, -0.037087,
		36.651951, 32.007870, 18.809095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096867, 32.542484, 18.552900>,  <35.953030, 31.978952, 18.835056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096867, 32.542484, 18.552900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.465099, 32.392418, 18.509491>,  <36.686039, 32.302380, 18.483446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.465099, 32.392418, 18.509491>,  <36.096867, 32.542484, 18.552900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465099, 32.392418, 18.509491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170808, 0.636655, -0.751994,
		0.351215, 0.673736, 0.650175,
		0.920583, -0.375167, -0.108524,
		36.741276, 32.279869, 18.476934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443668, 33.170147, 18.516504>,  <36.096867, 32.542484, 18.552900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443668, 33.170147, 18.516504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.681950, 32.891666, 18.356281>,  <36.824917, 32.724579, 18.260147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.681950, 32.891666, 18.356281>,  <36.443668, 33.170147, 18.516504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681950, 32.891666, 18.356281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176019, 0.599730, -0.780603,
		0.783681, 0.394502, 0.479805,
		0.595703, -0.696198, -0.400557,
		36.860661, 32.682808, 18.236115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989956, 33.577785, 18.289444>,  <36.443668, 33.170147, 18.516504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989956, 33.577785, 18.289444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.013096, 33.230164, 18.092918>,  <37.026981, 33.021591, 17.975002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.013096, 33.230164, 18.092918>,  <36.989956, 33.577785, 18.289444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013096, 33.230164, 18.092918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176670, 0.493284, -0.851739,
		0.982569, -0.037525, 0.182075,
		0.057853, -0.869059, -0.491315,
		37.030453, 32.969444, 17.945524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634651, 33.572586, 17.905249>,  <36.989956, 33.577785, 18.289444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634651, 33.572586, 17.905249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.424156, 33.289261, 17.717049>,  <37.297859, 33.119267, 17.604130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.424156, 33.289261, 17.717049>,  <37.634651, 33.572586, 17.905249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424156, 33.289261, 17.717049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182450, 0.446369, -0.876052,
		0.830533, -0.546854, -0.105665,
		-0.526239, -0.708311, -0.470498,
		37.266285, 33.076767, 17.575899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032284, 33.458622, 17.382256>,  <37.634651, 33.572586, 17.905249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032284, 33.458622, 17.382256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.670723, 33.333965, 17.265068>,  <37.453785, 33.259171, 17.194756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.670723, 33.333965, 17.265068>,  <38.032284, 33.458622, 17.382256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670723, 33.333965, 17.265068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171200, 0.364083, -0.915497,
		0.391975, -0.877680, -0.275743,
		-0.903906, -0.311644, -0.292970,
		37.399551, 33.240471, 17.177177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142673, 33.176918, 16.739115>,  <38.032284, 33.458622, 17.382256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142673, 33.176918, 16.739115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.749310, 33.249237, 16.744881>,  <37.513290, 33.292629, 16.748341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.749310, 33.249237, 16.744881>,  <38.142673, 33.176918, 16.739115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749310, 33.249237, 16.744881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046251, 0.326839, -0.943948,
		-0.175377, -0.927625, -0.329781,
		-0.983415, 0.180800, 0.014416,
		37.454285, 33.303478, 16.749205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836536, 32.875912, 16.149961>,  <38.142673, 33.176918, 16.739115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836536, 32.875912, 16.149961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565517, 33.153946, 16.246124>,  <37.402908, 33.320766, 16.303822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.565517, 33.153946, 16.246124>,  <37.836536, 32.875912, 16.149961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565517, 33.153946, 16.246124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036537, 0.358276, -0.932900,
		-0.734575, -0.623296, -0.268144,
		-0.677543, 0.695083, 0.240408,
		37.362255, 33.362473, 16.318247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390953, 32.850334, 15.472150>,  <37.836536, 32.875912, 16.149961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390953, 32.850334, 15.472150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.287682, 33.184959, 15.665442>,  <37.225719, 33.385735, 15.781418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.287682, 33.184959, 15.665442>,  <37.390953, 32.850334, 15.472150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287682, 33.184959, 15.665442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119258, 0.468767, -0.875234,
		-0.958709, -0.283593, -0.021258,
		-0.258175, 0.836560, 0.483232,
		37.210228, 33.435928, 15.810412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795448, 32.978882, 15.162928>,  <37.390953, 32.850334, 15.472150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795448, 32.978882, 15.162928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.863247, 33.333080, 15.335977>,  <36.903927, 33.545601, 15.439806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.863247, 33.333080, 15.335977>,  <36.795448, 32.978882, 15.162928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863247, 33.333080, 15.335977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133760, 0.455583, -0.880086,
		-0.976411, 0.091308, 0.195666,
		0.169501, 0.885498, 0.432623,
		36.914097, 33.598728, 15.465764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236736, 33.392323, 14.971736>,  <36.795448, 32.978882, 15.162928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236736, 33.392323, 14.971736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574947, 33.599182, 15.024865>,  <36.777874, 33.723297, 15.056743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.574947, 33.599182, 15.024865>,  <36.236736, 33.392323, 14.971736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574947, 33.599182, 15.024865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182406, 0.513567, -0.838437,
		-0.501813, 0.684692, 0.528566,
		0.845525, 0.517152, 0.132823,
		36.828606, 33.754326, 15.064712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060871, 34.120335, 14.793173>,  <36.236736, 33.392323, 14.971736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060871, 34.120335, 14.793173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.459660, 34.100212, 14.769450>,  <36.698933, 34.088139, 14.755217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.459660, 34.100212, 14.769450>,  <36.060871, 34.120335, 14.793173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459660, 34.100212, 14.769450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021874, 0.550433, -0.834592,
		0.074627, 0.833362, 0.547666,
		0.996972, -0.050303, -0.059306,
		36.758751, 34.085121, 14.751658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223457, 34.810680, 14.725926>,  <36.060871, 34.120335, 14.793173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223457, 34.810680, 14.725926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.541523, 34.599751, 14.606172>,  <36.732365, 34.473190, 14.534319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.541523, 34.599751, 14.606172>,  <36.223457, 34.810680, 14.725926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541523, 34.599751, 14.606172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047899, 0.437556, -0.897915,
		0.604495, 0.728333, 0.322672,
		0.795168, -0.527329, -0.299386,
		36.780075, 34.441551, 14.516356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682770, 35.318638, 14.411820>,  <36.223457, 34.810680, 14.725926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682770, 35.318638, 14.411820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819622, 34.965855, 14.282144>,  <36.901733, 34.754185, 14.204338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.819622, 34.965855, 14.282144>,  <36.682770, 35.318638, 14.411820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819622, 34.965855, 14.282144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087840, 0.373521, -0.923453,
		0.935536, 0.287469, 0.205266,
		0.342135, -0.881954, -0.324191,
		36.922264, 34.701267, 14.184886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513084, 35.197506, 14.222713>,  <36.682770, 35.318638, 14.411820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513084, 35.197506, 14.222713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.249813, 34.988823, 14.005595>,  <37.091850, 34.863613, 13.875324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.249813, 34.988823, 14.005595>,  <37.513084, 35.197506, 14.222713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249813, 34.988823, 14.005595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225083, 0.551644, -0.803136,
		0.718431, -0.650778, -0.245651,
		-0.658175, -0.521706, -0.542797,
		37.052361, 34.832314, 13.842756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.870264, 35.188343, 33.914780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.265936, 35.244190, 33.896770>,  <27.503340, 35.277699, 33.885963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.265936, 35.244190, 33.896770>,  <26.870264, 35.188343, 33.914780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265936, 35.244190, 33.896770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090574, -0.339817, 0.936120,
		0.115399, -0.930070, -0.348786,
		0.989181, 0.139619, -0.045026,
		27.562691, 35.286076, 33.883263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165201, 34.553600, 34.116215>,  <26.870264, 35.188343, 33.914780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165201, 34.553600, 34.116215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.429117, 34.847389, 34.179749>,  <27.587467, 35.023663, 34.217869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.429117, 34.847389, 34.179749>,  <27.165201, 34.553600, 34.116215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429117, 34.847389, 34.179749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012358, -0.200735, 0.979568,
		0.751349, -0.648272, -0.123366,
		0.659790, 0.734472, 0.158834,
		27.627054, 35.067730, 34.227398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614397, 34.273678, 34.546108>,  <27.165201, 34.553600, 34.116215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614397, 34.273678, 34.546108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.689747, 34.664982, 34.580811>,  <27.734957, 34.899765, 34.601631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.689747, 34.664982, 34.580811>,  <27.614397, 34.273678, 34.546108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689747, 34.664982, 34.580811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125603, -0.111607, 0.985783,
		0.974032, -0.174802, -0.143896,
		0.188376, 0.978258, 0.086753,
		27.746260, 34.958458, 34.606838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277138, 34.321678, 34.943157>,  <27.614397, 34.273678, 34.546108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277138, 34.321678, 34.943157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.046537, 34.648407, 34.951660>,  <27.908176, 34.844444, 34.956760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.046537, 34.648407, 34.951660>,  <28.277138, 34.321678, 34.943157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046537, 34.648407, 34.951660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073094, -0.077467, 0.994312,
		0.813819, 0.571670, 0.104365,
		-0.576503, 0.816819, 0.021258,
		27.873587, 34.893452, 34.958038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641911, 34.895649, 35.287727>,  <28.277138, 34.321678, 34.943157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641911, 34.895649, 35.287727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.245274, 34.906330, 35.338367>,  <28.007292, 34.912739, 35.368752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.245274, 34.906330, 35.338367>,  <28.641911, 34.895649, 35.287727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245274, 34.906330, 35.338367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127978, 0.058479, 0.990051,
		0.019033, 0.997932, -0.061404,
		-0.991594, 0.026702, 0.126600,
		27.947796, 34.914341, 35.376347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607031, 35.127953, 35.955208>,  <28.641911, 34.895649, 35.287727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607031, 35.127953, 35.955208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.211655, 35.082947, 35.914566>,  <27.974428, 35.055943, 35.890182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.211655, 35.082947, 35.914566>,  <28.607031, 35.127953, 35.955208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211655, 35.082947, 35.914566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072347, -0.238864, 0.968354,
		-0.133220, 0.964513, 0.227964,
		-0.988442, -0.112512, -0.101601,
		27.915121, 35.049194, 35.884087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357449, 35.611160, 36.431274>,  <28.607031, 35.127953, 35.955208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357449, 35.611160, 36.431274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.058496, 35.355217, 36.359718>,  <27.879126, 35.201649, 36.316784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.058496, 35.355217, 36.359718>,  <28.357449, 35.611160, 36.431274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058496, 35.355217, 36.359718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130797, -0.122289, 0.983838,
		-0.651396, 0.758699, 0.007705,
		-0.747379, -0.639861, -0.178894,
		27.834282, 35.163258, 36.306049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748974, 35.795918, 36.814701>,  <28.357449, 35.611160, 36.431274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748974, 35.795918, 36.814701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.722803, 35.406845, 36.725605>,  <27.707100, 35.173401, 36.672146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.722803, 35.406845, 36.725605>,  <27.748974, 35.795918, 36.814701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722803, 35.406845, 36.725605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358817, -0.185355, 0.914819,
		-0.931112, 0.139776, -0.336887,
		-0.065426, -0.972680, -0.222740,
		27.703175, 35.115040, 36.658783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130575, 35.632710, 37.022583>,  <27.748974, 35.795918, 36.814701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130575, 35.632710, 37.022583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.285860, 35.264103, 37.018608>,  <27.379032, 35.042938, 37.016224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.285860, 35.264103, 37.018608>,  <27.130575, 35.632710, 37.022583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285860, 35.264103, 37.018608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292192, -0.133307, 0.947024,
		-0.874022, -0.364743, -0.321011,
		0.388213, -0.921516, -0.009938,
		27.402325, 34.987648, 37.015625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633066, 35.224201, 37.240177>,  <27.130575, 35.632710, 37.022583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633066, 35.224201, 37.240177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.969507, 35.019474, 37.310135>,  <27.171371, 34.896637, 37.352108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.969507, 35.019474, 37.310135>,  <26.633066, 35.224201, 37.240177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969507, 35.019474, 37.310135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251199, -0.083292, 0.964345,
		-0.479001, -0.855047, -0.198625,
		0.841105, -0.511817, 0.174890,
		27.221838, 34.865929, 37.362602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397942, 34.719925, 37.807812>,  <26.633066, 35.224201, 37.240177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397942, 34.719925, 37.807812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.796457, 34.751572, 37.821339>,  <27.035566, 34.770561, 37.829453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.796457, 34.751572, 37.821339>,  <26.397942, 34.719925, 37.807812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796457, 34.751572, 37.821339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018208, -0.190225, 0.981572,
		0.084095, -0.978547, -0.188079,
		0.996291, 0.079120, 0.033814,
		27.095345, 34.775307, 37.831482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525080, 34.104614, 38.106243>,  <26.397942, 34.719925, 37.807812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525080, 34.104614, 38.106243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.827137, 34.358639, 38.171295>,  <27.008371, 34.511055, 38.210327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.827137, 34.358639, 38.171295>,  <26.525080, 34.104614, 38.106243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827137, 34.358639, 38.171295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043040, -0.199520, 0.978948,
		0.654144, -0.746247, -0.123333,
		0.755145, 0.635065, 0.162633,
		27.053680, 34.549156, 38.220085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082043, 33.772831, 38.397270>,  <26.525080, 34.104614, 38.106243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082043, 33.772831, 38.397270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.070055, 34.154873, 38.515175>,  <27.062862, 34.384098, 38.585918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.070055, 34.154873, 38.515175>,  <27.082043, 33.772831, 38.397270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070055, 34.154873, 38.515175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012878, -0.295239, 0.955337,
		0.999468, 0.024837, 0.021148,
		-0.029971, 0.955101, 0.294762,
		27.061064, 34.441402, 38.603603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079704, 33.066402, 38.004459>,  <27.082043, 33.772831, 38.397270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079704, 33.066402, 38.004459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.921339, 33.344860, 37.764912>,  <26.826319, 33.511932, 37.621185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.921339, 33.344860, 37.764912>,  <27.079704, 33.066402, 38.004459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921339, 33.344860, 37.764912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042919, -0.665471, -0.745189,
		-0.917284, -0.269328, 0.293348,
		-0.395915, 0.696139, -0.598866,
		26.802565, 33.553703, 37.585251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474607, 33.117001, 38.655708>,  <27.079704, 33.066402, 38.004459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474607, 33.117001, 38.655708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.661575, 32.764206, 38.631657>,  <27.773756, 32.552528, 38.617226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.661575, 32.764206, 38.631657>,  <27.474607, 33.117001, 38.655708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661575, 32.764206, 38.631657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025838, 0.054363, -0.998187,
		0.883658, 0.468126, 0.002621,
		0.467420, -0.881988, -0.060134,
		27.801802, 32.499611, 38.613617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053776, 33.146641, 38.171131>,  <27.474607, 33.117001, 38.655708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053776, 33.146641, 38.171131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.924313, 32.768215, 38.165443>,  <27.846634, 32.541161, 38.162033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.924313, 32.768215, 38.165443>,  <28.053776, 33.146641, 38.171131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924313, 32.768215, 38.165443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063398, -0.006693, -0.997966,
		0.944048, -0.323901, 0.062145,
		-0.323658, -0.946068, -0.014216,
		27.827215, 32.484394, 38.161179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482651, 32.802635, 37.736473>,  <28.053776, 33.146641, 38.171131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482651, 32.802635, 37.736473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.207607, 32.512688, 37.753216>,  <28.042582, 32.338718, 37.763264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.207607, 32.512688, 37.753216>,  <28.482651, 32.802635, 37.736473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207607, 32.512688, 37.753216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170939, -0.217643, -0.960943,
		0.705671, -0.653599, 0.273563,
		-0.687610, -0.724872, 0.041859,
		28.001324, 32.295227, 37.765774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813059, 32.118488, 37.483677>,  <28.482651, 32.802635, 37.736473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813059, 32.118488, 37.483677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.419765, 32.085094, 37.418831>,  <28.183790, 32.065060, 37.379921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.419765, 32.085094, 37.418831>,  <28.813059, 32.118488, 37.483677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419765, 32.085094, 37.418831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182241, -0.419248, -0.889393,
		0.006280, -0.904025, 0.427432,
		-0.983234, -0.083481, -0.162117,
		28.124796, 32.060051, 37.370197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777088, 31.434124, 37.173775>,  <28.813059, 32.118488, 37.483677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777088, 31.434124, 37.173775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.450468, 31.642506, 37.074295>,  <28.254496, 31.767534, 37.014606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.450468, 31.642506, 37.074295>,  <28.777088, 31.434124, 37.173775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450468, 31.642506, 37.074295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055201, -0.358380, -0.931942,
		-0.574627, -0.774707, 0.263879,
		-0.816551, 0.520953, -0.248700,
		28.205502, 31.798792, 36.999683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435680, 31.029093, 36.830856>,  <28.777088, 31.434124, 37.173775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435680, 31.029093, 36.830856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.259748, 31.366722, 36.708160>,  <28.154190, 31.569300, 36.634541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.259748, 31.366722, 36.708160>,  <28.435680, 31.029093, 36.830856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259748, 31.366722, 36.708160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024966, -0.352913, -0.935323,
		-0.897735, -0.403724, 0.176294,
		-0.439829, 0.844073, -0.306742,
		28.127800, 31.619944, 36.616138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838984, 30.830759, 36.372086>,  <28.435680, 31.029093, 36.830856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838984, 30.830759, 36.372086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.946077, 31.199005, 36.258392>,  <28.010334, 31.419952, 36.190178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.946077, 31.199005, 36.258392>,  <27.838984, 30.830759, 36.372086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946077, 31.199005, 36.258392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001544, -0.295409, -0.955370,
		-0.963491, 0.255347, -0.080513,
		0.267735, 0.920615, -0.284230,
		28.026398, 31.475189, 36.173122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576838, 30.877495, 35.752811>,  <27.838984, 30.830759, 36.372086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576838, 30.877495, 35.752811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.804295, 31.205936, 35.733086>,  <27.940769, 31.403002, 35.721252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.804295, 31.205936, 35.733086>,  <27.576838, 30.877495, 35.752811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804295, 31.205936, 35.733086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031862, -0.037914, -0.998773,
		-0.821967, 0.569517, 0.004602,
		0.568643, 0.821105, -0.049310,
		27.974888, 31.452269, 35.718292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243000, 31.313946, 35.264240>,  <27.576838, 30.877495, 35.752811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243000, 31.313946, 35.264240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.625589, 31.430553, 35.269558>,  <27.855143, 31.500519, 35.272751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.625589, 31.430553, 35.269558>,  <27.243000, 31.313946, 35.264240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625589, 31.430553, 35.269558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031325, 0.147864, -0.988512,
		-0.290138, 0.945067, 0.150559,
		0.956472, 0.291521, 0.013297,
		27.912531, 31.518009, 35.273548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245947, 31.807074, 34.740017>,  <27.243000, 31.313946, 35.264240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245947, 31.807074, 34.740017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.634001, 31.746067, 34.815468>,  <27.866833, 31.709463, 34.860737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.634001, 31.746067, 34.815468>,  <27.245947, 31.807074, 34.740017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634001, 31.746067, 34.815468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220521, 0.230611, -0.947728,
		0.101044, 0.961019, 0.257356,
		0.970134, -0.152515, 0.188623,
		27.925041, 31.700314, 34.872055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505220, 32.388779, 34.436687>,  <27.245947, 31.807074, 34.740017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505220, 32.388779, 34.436687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.799015, 32.121593, 34.484600>,  <27.975292, 31.961281, 34.513348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.799015, 32.121593, 34.484600>,  <27.505220, 32.388779, 34.436687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799015, 32.121593, 34.484600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373857, 0.250974, -0.892885,
		0.566355, 0.700595, 0.434061,
		0.734489, -0.667966, 0.119782,
		28.019361, 31.921204, 34.520535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099718, 32.699085, 34.157352>,  <27.505220, 32.388779, 34.436687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099718, 32.699085, 34.157352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.167545, 32.305328, 34.138512>,  <28.208241, 32.069073, 34.127209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.167545, 32.305328, 34.138512>,  <28.099718, 32.699085, 34.157352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167545, 32.305328, 34.138512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187007, 0.079064, -0.979172,
		0.967613, 0.157227, 0.197495,
		0.169567, -0.984393, -0.047100,
		28.218416, 32.010010, 34.124382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731226, 32.657406, 33.901608>,  <28.099718, 32.699085, 34.157352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731226, 32.657406, 33.901608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.563938, 32.299526, 33.838863>,  <28.463566, 32.084797, 33.801216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.563938, 32.299526, 33.838863>,  <28.731226, 32.657406, 33.901608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563938, 32.299526, 33.838863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154884, 0.099917, -0.982867,
		0.895044, -0.435348, 0.096787,
		-0.418218, -0.894700, -0.156859,
		28.438473, 32.031116, 33.791805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211283, 32.349159, 33.424927>,  <28.731226, 32.657406, 33.901608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211283, 32.349159, 33.424927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.862202, 32.154812, 33.405617>,  <28.652754, 32.038204, 33.394032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.862202, 32.154812, 33.405617>,  <29.211283, 32.349159, 33.424927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862202, 32.154812, 33.405617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071052, -0.028555, -0.997064,
		0.483059, -0.873568, 0.059442,
		-0.872700, -0.485864, -0.048276,
		28.600391, 32.009052, 33.391132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675293, 31.847061, 33.868168>,  <29.211283, 32.349159, 33.424927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675293, 31.847061, 33.868168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.060024, 31.737747, 33.862518>,  <30.290863, 31.672159, 33.859127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.060024, 31.737747, 33.862518>,  <29.675293, 31.847061, 33.868168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060024, 31.737747, 33.862518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040961, 0.092748, 0.994847,
		-0.270565, -0.957452, 0.100402,
		0.961830, -0.273283, -0.014123,
		30.348574, 31.655762, 33.858280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779444, 31.304623, 34.447311>,  <29.675293, 31.847061, 33.868168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779444, 31.304623, 34.447311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150518, 31.439880, 34.383991>,  <30.373163, 31.521034, 34.346001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.150518, 31.439880, 34.383991>,  <29.779444, 31.304623, 34.447311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150518, 31.439880, 34.383991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150859, 0.048355, 0.987372,
		0.341528, -0.939851, -0.006154,
		0.927686, 0.338144, -0.158300,
		30.428823, 31.541323, 34.336502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225353, 30.857803, 34.834084>,  <29.779444, 31.304623, 34.447311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225353, 30.857803, 34.834084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.398018, 31.216290, 34.793159>,  <30.501617, 31.431381, 34.768604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.398018, 31.216290, 34.793159>,  <30.225353, 30.857803, 34.834084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398018, 31.216290, 34.793159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217685, 0.006573, 0.975997,
		0.875375, -0.443573, -0.192255,
		0.431662, 0.896214, -0.102313,
		30.527517, 31.485153, 34.762466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963697, 30.814461, 35.194080>,  <30.225353, 30.857803, 34.834084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963697, 30.814461, 35.194080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863970, 31.201733, 35.185471>,  <30.804132, 31.434097, 35.180305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863970, 31.201733, 35.185471>,  <30.963697, 30.814461, 35.194080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863970, 31.201733, 35.185471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137222, 0.057319, 0.988880,
		0.958650, 0.243594, -0.147147,
		-0.249320, 0.968182, -0.021523,
		30.789173, 31.492188, 35.179012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528587, 31.230804, 35.502598>,  <30.963697, 30.814461, 35.194080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528587, 31.230804, 35.502598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.228861, 31.495018, 35.521442>,  <31.049025, 31.653545, 35.532749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.228861, 31.495018, 35.521442>,  <31.528587, 31.230804, 35.502598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228861, 31.495018, 35.521442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152669, 0.103086, 0.982886,
		0.644372, 0.743686, -0.178087,
		-0.749317, 0.660533, 0.047112,
		31.004066, 31.693178, 35.535576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770353, 31.736650, 36.042698>,  <31.528587, 31.230804, 35.502598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770353, 31.736650, 36.042698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375402, 31.755863, 35.982323>,  <31.138432, 31.767391, 35.946098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.375402, 31.755863, 35.982323>,  <31.770353, 31.736650, 36.042698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375402, 31.755863, 35.982323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145556, 0.100689, 0.984213,
		0.062471, 0.993758, -0.092427,
		-0.987376, 0.048031, -0.150937,
		31.079189, 31.770273, 35.937042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553102, 32.325825, 36.400131>,  <31.770353, 31.736650, 36.042698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553102, 32.325825, 36.400131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214964, 32.113495, 36.376060>,  <31.012081, 31.986097, 36.361618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.214964, 32.113495, 36.376060>,  <31.553102, 32.325825, 36.400131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214964, 32.113495, 36.376060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098664, 0.044426, 0.994129,
		-0.525031, 0.846319, -0.089928,
		-0.845345, -0.530821, -0.060176,
		30.961361, 31.954248, 36.358009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889801, 32.978050, 36.449150>,  <31.553102, 32.325825, 36.400131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889801, 32.978050, 36.449150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265186, 32.950638, 36.584557>,  <32.490417, 32.934189, 36.665802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265186, 32.950638, 36.584557>,  <31.889801, 32.978050, 36.449150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265186, 32.950638, 36.584557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335385, -0.053292, -0.940573,
		0.082500, 0.996225, -0.027027,
		0.938462, -0.068533, 0.338515,
		32.546726, 32.930077, 36.686111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294765, 33.578503, 36.169727>,  <31.889801, 32.978050, 36.449150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294765, 33.578503, 36.169727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.562672, 33.296326, 36.262478>,  <32.723415, 33.127018, 36.318127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.562672, 33.296326, 36.262478>,  <32.294765, 33.578503, 36.169727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562672, 33.296326, 36.262478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359839, 0.035185, -0.932351,
		0.649564, 0.707891, 0.277413,
		0.669763, -0.705445, 0.231872,
		32.763599, 33.084694, 36.332039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079330, 33.780533, 35.931995>,  <32.294765, 33.578503, 36.169727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079330, 33.780533, 35.931995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045937, 33.385181, 35.982807>,  <33.025902, 33.147972, 36.013294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045937, 33.385181, 35.982807>,  <33.079330, 33.780533, 35.931995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045937, 33.385181, 35.982807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452104, -0.151168, -0.879062,
		0.888050, -0.015953, 0.459470,
		-0.083481, -0.988379, 0.127033,
		33.020893, 33.088669, 36.020916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698402, 33.650166, 35.711170>,  <33.079330, 33.780533, 35.931995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698402, 33.650166, 35.711170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466915, 33.324581, 35.690994>,  <33.328022, 33.129230, 35.678886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466915, 33.324581, 35.690994>,  <33.698402, 33.650166, 35.711170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466915, 33.324581, 35.690994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502602, -0.307266, -0.808071,
		0.642242, -0.492999, 0.586922,
		-0.578719, -0.813965, -0.050444,
		33.293301, 33.080391, 35.675861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114788, 33.191036, 35.474560>,  <33.698402, 33.650166, 35.711170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114788, 33.191036, 35.474560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766418, 33.020954, 35.376011>,  <33.557396, 32.918907, 35.316883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766418, 33.020954, 35.376011>,  <34.114788, 33.191036, 35.474560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766418, 33.020954, 35.376011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415100, -0.368193, -0.831941,
		0.263031, -0.826824, 0.497168,
		-0.870923, -0.425200, -0.246369,
		33.505142, 32.893394, 35.302101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343815, 32.740112, 35.134254>,  <34.114788, 33.191036, 35.474560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343815, 32.740112, 35.134254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954712, 32.702274, 35.049595>,  <33.721249, 32.679573, 34.998798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.954712, 32.702274, 35.049595>,  <34.343815, 32.740112, 35.134254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954712, 32.702274, 35.049595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231814, -0.387511, -0.892243,
		0.002382, -0.916999, 0.398882,
		-0.972757, -0.094592, -0.211650,
		33.662884, 32.673897, 34.986099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211914, 32.074108, 34.835201>,  <34.343815, 32.740112, 35.134254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211914, 32.074108, 34.835201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916531, 32.314186, 34.712276>,  <33.739300, 32.458233, 34.638519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916531, 32.314186, 34.712276>,  <34.211914, 32.074108, 34.835201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916531, 32.314186, 34.712276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057292, -0.398260, -0.915482,
		-0.671862, -0.693651, 0.259711,
		-0.738457, 0.600198, -0.307317,
		33.694992, 32.494244, 34.620083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.622465, 36.493828, 38.747047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.320461, 36.340477, 38.534264>,  <29.139259, 36.248466, 38.406593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.320461, 36.340477, 38.534264>,  <29.622465, 36.493828, 38.747047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320461, 36.340477, 38.534264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483146, 0.223226, -0.846605,
		0.443316, -0.896210, 0.016689,
		-0.755011, -0.383377, -0.531960,
		29.093958, 36.225464, 38.374676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902502, 36.090015, 38.204391>,  <29.622465, 36.493828, 38.747047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902502, 36.090015, 38.204391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.532221, 36.178375, 38.081573>,  <29.310053, 36.231392, 38.007881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.532221, 36.178375, 38.081573>,  <29.902502, 36.090015, 38.204391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532221, 36.178375, 38.081573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352477, 0.209255, -0.912125,
		-0.137235, -0.952584, -0.271570,
		-0.925703, 0.220898, -0.307047,
		29.254509, 36.244644, 37.989460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993246, 35.986629, 37.528996>,  <29.902502, 36.090015, 38.204391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993246, 35.986629, 37.528996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.632456, 36.157055, 37.557018>,  <29.415981, 36.259312, 37.573833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.632456, 36.157055, 37.557018>,  <29.993246, 35.986629, 37.528996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632456, 36.157055, 37.557018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060660, 0.285673, -0.956405,
		-0.427507, -0.858404, -0.283515,
		-0.901975, 0.426068, 0.070057,
		29.361864, 36.284874, 37.578033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516018, 35.658344, 37.033058>,  <29.993246, 35.986629, 37.528996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516018, 35.658344, 37.033058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.382113, 36.028103, 37.106190>,  <29.301769, 36.249958, 37.150066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.382113, 36.028103, 37.106190>,  <29.516018, 35.658344, 37.033058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382113, 36.028103, 37.106190> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091495, 0.224991, -0.970055,
		-0.937850, -0.308011, -0.159896,
		-0.334763, 0.924396, 0.182826,
		29.281683, 36.305420, 37.161037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114302, 35.779247, 36.445145>,  <29.516018, 35.658344, 37.033058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114302, 35.779247, 36.445145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.195187, 36.144093, 36.587780>,  <29.243717, 36.362999, 36.673363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.195187, 36.144093, 36.587780>,  <29.114302, 35.779247, 36.445145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195187, 36.144093, 36.587780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090640, 0.345117, -0.934173,
		-0.975138, 0.221225, -0.012886,
		0.202215, 0.912115, 0.356589,
		29.255852, 36.417728, 36.694756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722052, 36.235394, 36.032154>,  <29.114302, 35.779247, 36.445145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722052, 36.235394, 36.032154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.999758, 36.462395, 36.209213>,  <29.166382, 36.598595, 36.315449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.999758, 36.462395, 36.209213>,  <28.722052, 36.235394, 36.032154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999758, 36.462395, 36.209213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234288, 0.403326, -0.884555,
		-0.680519, 0.717822, 0.147056,
		0.694265, 0.567503, 0.442649,
		29.208036, 36.632645, 36.342007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576521, 36.987270, 35.879913>,  <28.722052, 36.235394, 36.032154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576521, 36.987270, 35.879913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.957262, 36.947224, 35.995811>,  <29.185707, 36.923195, 36.065350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.957262, 36.947224, 35.995811>,  <28.576521, 36.987270, 35.879913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957262, 36.947224, 35.995811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306359, 0.344652, -0.887332,
		-0.011024, 0.933376, 0.358730,
		0.951852, -0.100118, 0.289748,
		29.242817, 36.917187, 36.082737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863298, 37.560154, 35.647152>,  <28.576521, 36.987270, 35.879913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863298, 37.560154, 35.647152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.173172, 37.326359, 35.743687>,  <29.359097, 37.186081, 35.801609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.173172, 37.326359, 35.743687>,  <28.863298, 37.560154, 35.647152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173172, 37.326359, 35.743687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509416, 0.350726, -0.785803,
		0.374646, 0.731690, 0.569448,
		0.774684, -0.584484, 0.241336,
		29.405577, 37.151012, 35.816086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346998, 38.122807, 35.535168>,  <28.863298, 37.560154, 35.647152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346998, 38.122807, 35.535168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.520483, 37.762501, 35.526009>,  <29.624575, 37.546318, 35.520512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.520483, 37.762501, 35.526009>,  <29.346998, 38.122807, 35.535168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520483, 37.762501, 35.526009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248486, 0.143994, -0.957873,
		0.866110, 0.409753, 0.286279,
		0.433714, -0.900760, -0.022897,
		29.650597, 37.492271, 35.519138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105915, 38.200775, 35.301048>,  <29.346998, 38.122807, 35.535168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105915, 38.200775, 35.301048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.976992, 37.827682, 35.236397>,  <29.899637, 37.603825, 35.197605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.976992, 37.827682, 35.236397>,  <30.105915, 38.200775, 35.301048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976992, 37.827682, 35.236397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249937, 0.080833, -0.964882,
		0.913045, -0.351384, 0.207072,
		-0.322306, -0.932735, -0.161628,
		29.880301, 37.547863, 35.187908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646074, 37.927872, 34.930119>,  <30.105915, 38.200775, 35.301048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646074, 37.927872, 34.930119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.333956, 37.704689, 34.817108>,  <30.146685, 37.570778, 34.749302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.333956, 37.704689, 34.817108>,  <30.646074, 37.927872, 34.930119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333956, 37.704689, 34.817108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421915, -0.136172, -0.896351,
		0.461653, -0.818622, 0.341664,
		-0.780298, -0.557956, -0.282524,
		30.099867, 37.537304, 34.732349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014076, 37.382599, 34.491146>,  <30.646074, 37.927872, 34.930119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014076, 37.382599, 34.491146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.625540, 37.377556, 34.396202>,  <30.392418, 37.374531, 34.339237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.625540, 37.377556, 34.396202>,  <31.014076, 37.382599, 34.491146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625540, 37.377556, 34.396202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236585, -0.147694, -0.960320,
		-0.022949, -0.988953, 0.146444,
		-0.971340, -0.012608, -0.237360,
		30.334137, 37.373775, 34.324993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224533, 36.673805, 34.865715>,  <31.014076, 37.382599, 34.491146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224533, 36.673805, 34.865715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.503963, 36.388657, 34.890377>,  <31.671621, 36.217567, 34.905174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.503963, 36.388657, 34.890377>,  <31.224533, 36.673805, 34.865715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503963, 36.388657, 34.890377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014281, 0.100037, 0.994881,
		-0.715393, -0.694119, 0.080064,
		0.698576, -0.712875, 0.061653,
		31.713535, 36.174793, 34.908875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955074, 36.149963, 35.339626>,  <31.224533, 36.673805, 34.865715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955074, 36.149963, 35.339626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.352505, 36.109806, 35.318748>,  <31.590963, 36.085712, 35.306221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.352505, 36.109806, 35.318748>,  <30.955074, 36.149963, 35.339626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352505, 36.109806, 35.318748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061686, 0.093867, 0.993672,
		-0.094857, -0.990510, 0.099457,
		0.993578, -0.100392, -0.052196,
		31.650578, 36.079689, 35.303089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153078, 35.604660, 35.761929>,  <30.955074, 36.149963, 35.339626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153078, 35.604660, 35.761929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.485544, 35.826622, 35.747810>,  <31.685024, 35.959801, 35.739338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.485544, 35.826622, 35.747810>,  <31.153078, 35.604660, 35.761929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485544, 35.826622, 35.747810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071893, -0.044302, 0.996428,
		0.551361, -0.830732, -0.076716,
		0.831164, 0.554907, -0.035297,
		31.734894, 35.993095, 35.737221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660904, 35.259182, 36.085892>,  <31.153078, 35.604660, 35.761929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660904, 35.259182, 36.085892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.828836, 35.621269, 36.059608>,  <31.929596, 35.838520, 36.043839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.828836, 35.621269, 36.059608>,  <31.660904, 35.259182, 36.085892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828836, 35.621269, 36.059608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354401, -0.096857, 0.930064,
		0.835548, -0.413759, -0.361474,
		0.419834, 0.905219, -0.065708,
		31.954786, 35.892834, 36.039898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.275089, 35.209320, 36.392914>,  <31.660904, 35.259182, 36.085892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.275089, 35.209320, 36.392914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.250954, 35.608482, 36.383587>,  <32.236473, 35.847980, 36.377991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.250954, 35.608482, 36.383587>,  <32.275089, 35.209320, 36.392914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250954, 35.608482, 36.383587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455385, 0.048308, 0.888983,
		0.888247, 0.043024, -0.457346,
		-0.060341, 0.997905, -0.023317,
		32.232853, 35.907852, 36.376591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961941, 35.487255, 36.608582>,  <32.275089, 35.209320, 36.392914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961941, 35.487255, 36.608582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713745, 35.791439, 36.685204>,  <32.564827, 35.973949, 36.731178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713745, 35.791439, 36.685204>,  <32.961941, 35.487255, 36.608582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713745, 35.791439, 36.685204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406931, 0.103413, 0.907586,
		0.670375, 0.641096, -0.373622,
		-0.620487, 0.760461, 0.191557,
		32.527599, 36.019577, 36.742672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365120, 36.056149, 36.759075>,  <32.961941, 35.487255, 36.608582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365120, 36.056149, 36.759075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004150, 36.118488, 36.919746>,  <32.787571, 36.155891, 37.016148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004150, 36.118488, 36.919746>,  <33.365120, 36.056149, 36.759075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004150, 36.118488, 36.919746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405054, -0.010885, 0.914228,
		0.146855, 0.987721, -0.053305,
		-0.902422, 0.155850, 0.401679,
		32.733425, 36.165245, 37.040249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582134, 36.568089, 37.134518>,  <33.365120, 36.056149, 36.759075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582134, 36.568089, 37.134518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241417, 36.412083, 37.274429>,  <33.036987, 36.318481, 37.358376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.241417, 36.412083, 37.274429>,  <33.582134, 36.568089, 37.134518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241417, 36.412083, 37.274429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341062, 0.093965, 0.935333,
		-0.397658, 0.916003, 0.052980,
		-0.851789, -0.390011, 0.349780,
		32.985882, 36.295078, 37.379364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383720, 37.073830, 37.588017>,  <33.582134, 36.568089, 37.134518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383720, 37.073830, 37.588017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208675, 36.725723, 37.678471>,  <33.103649, 36.516861, 37.732742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.208675, 36.725723, 37.678471>,  <33.383720, 37.073830, 37.588017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208675, 36.725723, 37.678471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267834, 0.113918, 0.956707,
		-0.858349, 0.479231, 0.183234,
		-0.437610, -0.870265, 0.226136,
		33.077393, 36.464645, 37.746311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295544, 37.148220, 38.318466>,  <33.383720, 37.073830, 37.588017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295544, 37.148220, 38.318466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.236000, 36.756111, 38.266445>,  <33.200275, 36.520847, 38.235233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.236000, 36.756111, 38.266445>,  <33.295544, 37.148220, 38.318466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236000, 36.756111, 38.266445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309457, -0.171091, 0.935395,
		-0.939190, 0.098995, 0.328819,
		-0.148858, -0.980269, -0.130053,
		33.191341, 36.462029, 38.227428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986713, 36.933903, 38.949688>,  <33.295544, 37.148220, 38.318466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986713, 36.933903, 38.949688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126152, 36.611656, 38.758080>,  <33.209816, 36.418308, 38.643112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126152, 36.611656, 38.758080>,  <32.986713, 36.933903, 38.949688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126152, 36.611656, 38.758080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266491, -0.404795, 0.874713,
		-0.898589, -0.432577, 0.073580,
		0.348596, -0.805616, -0.479023,
		33.230732, 36.369972, 38.614372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774197, 36.354233, 39.257706>,  <32.986713, 36.933903, 38.949688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774197, 36.354233, 39.257706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122288, 36.273243, 39.078056>,  <33.331142, 36.224648, 38.970268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.122288, 36.273243, 39.078056>,  <32.774197, 36.354233, 39.257706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122288, 36.273243, 39.078056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360065, -0.360815, 0.860329,
		-0.336242, -0.910394, -0.241088,
		0.870227, -0.202471, -0.449123,
		33.383354, 36.212502, 38.943317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937317, 35.618561, 39.369408>,  <32.774197, 36.354233, 39.257706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937317, 35.618561, 39.369408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.290600, 35.782631, 39.278461>,  <33.502571, 35.881073, 39.223892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.290600, 35.782631, 39.278461>,  <32.937317, 35.618561, 39.369408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290600, 35.782631, 39.278461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399938, -0.405561, 0.821930,
		0.244924, -0.816871, -0.522240,
		0.883211, 0.410174, -0.227366,
		33.555565, 35.905682, 39.210251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391094, 35.023613, 39.359760>,  <32.937317, 35.618561, 39.369408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391094, 35.023613, 39.359760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594303, 35.365635, 39.401306>,  <33.716228, 35.570847, 39.426235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594303, 35.365635, 39.401306>,  <33.391094, 35.023613, 39.359760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594303, 35.365635, 39.401306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430461, -0.356485, 0.829229,
		0.746065, -0.376559, -0.549173,
		0.508026, 0.855056, 0.103867,
		33.746712, 35.622150, 39.432465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792854, 34.622528, 39.172295>,  <33.391094, 35.023613, 39.359760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792854, 34.622528, 39.172295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.532890, 34.346699, 39.300114>,  <32.376911, 34.181202, 39.376804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.532890, 34.346699, 39.300114>,  <32.792854, 34.622528, 39.172295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532890, 34.346699, 39.300114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237348, -0.583572, -0.776601,
		0.722003, -0.428874, 0.542936,
		-0.649906, -0.689573, 0.319548,
		32.337917, 34.139828, 39.395977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170036, 34.083126, 39.233742>,  <32.792854, 34.622528, 39.172295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170036, 34.083126, 39.233742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.786644, 33.995300, 39.160965>,  <32.556606, 33.942604, 39.117298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.786644, 33.995300, 39.160965>,  <33.170036, 34.083126, 39.233742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786644, 33.995300, 39.160965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276103, -0.555183, -0.784563,
		0.071254, -0.802224, 0.592756,
		-0.958483, -0.219565, -0.181938,
		32.499100, 33.929432, 39.106384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305492, 33.520119, 38.889023>,  <33.170036, 34.083126, 39.233742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305492, 33.520119, 38.889023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.912766, 33.567951, 38.830055>,  <32.677128, 33.596649, 38.794674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.912766, 33.567951, 38.830055>,  <33.305492, 33.520119, 38.889023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912766, 33.567951, 38.830055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074551, -0.471315, -0.878809,
		-0.174567, -0.873821, 0.453831,
		-0.981819, 0.119577, -0.147420,
		32.618221, 33.603825, 38.785828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988884, 32.854206, 38.827969>,  <33.305492, 33.520119, 38.889023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988884, 32.854206, 38.827969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.765873, 33.123528, 38.633724>,  <32.632065, 33.285122, 38.517178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.765873, 33.123528, 38.633724>,  <32.988884, 32.854206, 38.827969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765873, 33.123528, 38.633724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148909, -0.494369, -0.856403,
		-0.816695, -0.549780, 0.175362,
		-0.557527, 0.673306, -0.485615,
		32.598614, 33.325520, 38.488041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457760, 32.371784, 38.387951>,  <32.988884, 32.854206, 38.827969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457760, 32.371784, 38.387951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492455, 32.741898, 38.240265>,  <32.513271, 32.963966, 38.151653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492455, 32.741898, 38.240265>,  <32.457760, 32.371784, 38.387951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492455, 32.741898, 38.240265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026572, -0.368333, -0.929314,
		-0.995877, 0.090417, -0.007361,
		0.086737, 0.925287, -0.369217,
		32.518475, 33.019485, 38.129501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264153, 32.233723, 37.651814>,  <32.457760, 32.371784, 38.387951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264153, 32.233723, 37.651814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.366856, 32.617775, 37.607586>,  <32.428478, 32.848206, 37.581047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.366856, 32.617775, 37.607586>,  <32.264153, 32.233723, 37.651814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366856, 32.617775, 37.607586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090039, -0.137674, -0.986377,
		-0.962274, 0.243300, -0.121797,
		0.256753, 0.960131, -0.110573,
		32.443882, 32.905815, 37.574413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853983, 32.574757, 37.073589>,  <32.264153, 32.233723, 37.651814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853983, 32.574757, 37.073589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210583, 32.753822, 37.101387>,  <32.424541, 32.861259, 37.118065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.210583, 32.753822, 37.101387>,  <31.853983, 32.574757, 37.073589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210583, 32.753822, 37.101387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159689, -0.166986, -0.972941,
		-0.423945, 0.878473, -0.220354,
		0.891499, 0.447662, 0.069490,
		32.478031, 32.888123, 37.122234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166855, 32.528351, 36.986610>,  <31.853983, 32.574757, 37.073589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166855, 32.528351, 36.986610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.983540, 32.189804, 36.878059>,  <30.873550, 31.986677, 36.812931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.983540, 32.189804, 36.878059>,  <31.166855, 32.528351, 36.986610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983540, 32.189804, 36.878059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247900, -0.171488, 0.953487,
		-0.853532, 0.504245, -0.131223,
		-0.458288, -0.846362, -0.271373,
		30.846054, 31.935896, 36.796646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500904, 32.523613, 37.341351>,  <31.166855, 32.528351, 36.986610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500904, 32.523613, 37.341351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.582384, 32.142784, 37.250072>,  <30.631271, 31.914288, 37.195305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.582384, 32.142784, 37.250072>,  <30.500904, 32.523613, 37.341351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582384, 32.142784, 37.250072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327062, -0.285867, 0.900728,
		-0.922788, -0.108843, -0.369616,
		0.203699, -0.952068, -0.228196,
		30.643494, 31.857164, 37.181614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025213, 32.192722, 37.729286>,  <30.500904, 32.523613, 37.341351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025213, 32.192722, 37.729286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.256466, 31.882282, 37.628544>,  <30.395218, 31.696018, 37.568100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.256466, 31.882282, 37.628544>,  <30.025213, 32.192722, 37.729286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256466, 31.882282, 37.628544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377608, -0.528107, 0.760602,
		-0.723310, -0.344625, -0.598378,
		0.578130, -0.776103, -0.251852,
		30.429905, 31.649452, 37.552990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505512, 31.613907, 37.628323>,  <30.025213, 32.192722, 37.729286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505512, 31.613907, 37.628323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.877289, 31.501846, 37.724369>,  <30.100355, 31.434610, 37.781998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.877289, 31.501846, 37.724369>,  <29.505512, 31.613907, 37.628323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877289, 31.501846, 37.724369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344688, -0.427059, 0.835949,
		-0.131648, -0.859730, -0.493491,
		0.929440, -0.280151, 0.240117,
		30.156120, 31.417801, 37.796406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359833, 31.135071, 38.103142>,  <29.505512, 31.613907, 37.628323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359833, 31.135071, 38.103142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.735838, 31.256962, 38.164486>,  <29.961441, 31.330097, 38.201294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.735838, 31.256962, 38.164486>,  <29.359833, 31.135071, 38.103142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735838, 31.256962, 38.164486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098704, -0.187380, 0.977316,
		0.326552, -0.933825, -0.146061,
		0.940011, 0.304728, 0.153361,
		30.017841, 31.348381, 38.210495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540754, 30.680435, 38.576771>,  <29.359833, 31.135071, 38.103142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540754, 30.680435, 38.576771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.818226, 30.966209, 38.613407>,  <29.984709, 31.137674, 38.635391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.818226, 30.966209, 38.613407>,  <29.540754, 30.680435, 38.576771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818226, 30.966209, 38.613407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004493, -0.122870, 0.992413,
		0.720270, -0.688828, -0.082022,
		0.693679, 0.714436, 0.091595,
		30.026329, 31.180540, 38.640884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023226, 30.398369, 39.027107>,  <29.540754, 30.680435, 38.576771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023226, 30.398369, 39.027107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141455, 30.779556, 39.053894>,  <30.212393, 31.008268, 39.069965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.141455, 30.779556, 39.053894>,  <30.023226, 30.398369, 39.027107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141455, 30.779556, 39.053894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124694, -0.107987, 0.986301,
		0.947147, -0.283175, -0.150748,
		0.295574, 0.952970, 0.066970,
		30.230127, 31.065447, 39.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610697, 30.354435, 39.476555>,  <30.023226, 30.398369, 39.027107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610697, 30.354435, 39.476555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.486059, 30.734268, 39.462666>,  <30.411278, 30.962168, 39.454330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.486059, 30.734268, 39.462666>,  <30.610697, 30.354435, 39.476555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486059, 30.734268, 39.462666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315100, 0.137733, 0.939011,
		0.896450, 0.281648, -0.342129,
		-0.311593, 0.949581, -0.034724,
		30.392582, 31.019142, 39.452248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214115, 30.839138, 39.758785>,  <30.610697, 30.354435, 39.476555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214115, 30.839138, 39.758785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827785, 30.938354, 39.788883>,  <30.595987, 30.997885, 39.806942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827785, 30.938354, 39.788883>,  <31.214115, 30.839138, 39.758785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827785, 30.938354, 39.788883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110663, 0.132087, 0.985042,
		0.234393, 0.959702, -0.155021,
		-0.965823, 0.248041, 0.075243,
		30.538038, 31.012768, 39.811455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.741886, 31.863487, 23.527374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365898, 31.966511, 23.437824>,  <32.140305, 32.028324, 23.384094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365898, 31.966511, 23.437824>,  <32.741886, 31.863487, 23.527374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365898, 31.966511, 23.437824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205549, 0.096359, 0.973891,
		0.272408, 0.961446, -0.037634,
		-0.939970, 0.257560, -0.223873,
		32.083908, 32.043777, 23.370663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615429, 32.497520, 23.872694>,  <32.741886, 31.863487, 23.527374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615429, 32.497520, 23.872694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245621, 32.361355, 23.804134>,  <32.023735, 32.279655, 23.762999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245621, 32.361355, 23.804134>,  <32.615429, 32.497520, 23.872694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245621, 32.361355, 23.804134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238245, 0.165160, 0.957059,
		-0.297489, 0.925656, -0.233796,
		-0.924521, -0.340415, -0.171400,
		31.968264, 32.259232, 23.752714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254658, 32.889496, 24.340660>,  <32.615429, 32.497520, 23.872694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254658, 32.889496, 24.340660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003525, 32.586399, 24.269497>,  <31.852844, 32.404541, 24.226799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003525, 32.586399, 24.269497>,  <32.254658, 32.889496, 24.340660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003525, 32.586399, 24.269497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276661, 0.003612, 0.960961,
		-0.727517, 0.652546, -0.211905,
		-0.627836, -0.757741, -0.177906,
		31.815174, 32.359077, 24.216125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479790, 33.087337, 24.600016>,  <32.254658, 32.889496, 24.340660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479790, 33.087337, 24.600016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546030, 32.693878, 24.571716>,  <31.585775, 32.457802, 24.554737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546030, 32.693878, 24.571716>,  <31.479790, 33.087337, 24.600016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546030, 32.693878, 24.571716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244194, -0.110403, 0.963421,
		-0.955482, -0.142268, -0.258485,
		0.165602, -0.983652, -0.070747,
		31.595711, 32.398781, 24.550491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921392, 32.843204, 24.934072>,  <31.479790, 33.087337, 24.600016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921392, 32.843204, 24.934072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149197, 32.514446, 24.929131>,  <31.285879, 32.317192, 24.926167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149197, 32.514446, 24.929131>,  <30.921392, 32.843204, 24.934072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149197, 32.514446, 24.929131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293076, -0.217075, 0.931120,
		-0.767962, -0.526662, -0.364503,
		0.569510, -0.821892, -0.012353,
		31.320049, 32.267879, 24.925425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545118, 32.291168, 25.298973>,  <30.921392, 32.843204, 24.934072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545118, 32.291168, 25.298973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922924, 32.160236, 25.309914>,  <31.149607, 32.081676, 25.316479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922924, 32.160236, 25.309914>,  <30.545118, 32.291168, 25.298973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922924, 32.160236, 25.309914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118766, -0.262687, 0.957544,
		-0.306254, -0.907660, -0.286988,
		0.944512, -0.327336, 0.027350,
		31.206278, 32.062038, 25.318119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566923, 31.824524, 25.818100>,  <30.545118, 32.291168, 25.298973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566923, 31.824524, 25.818100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946110, 31.945465, 25.778217>,  <31.173622, 32.018028, 25.754288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946110, 31.945465, 25.778217>,  <30.566923, 31.824524, 25.818100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946110, 31.945465, 25.778217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161425, -0.186532, 0.969096,
		0.274409, -0.934767, -0.225633,
		0.947967, 0.302352, -0.099708,
		31.230499, 32.036171, 25.748304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834496, 31.320459, 26.183432>,  <30.566923, 31.824524, 25.818100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834496, 31.320459, 26.183432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116730, 31.602776, 26.158115>,  <31.286070, 31.772165, 26.142925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116730, 31.602776, 26.158115>,  <30.834496, 31.320459, 26.183432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116730, 31.602776, 26.158115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191794, -0.104226, 0.975885,
		0.682175, -0.700711, -0.208907,
		0.705587, 0.705791, -0.063292,
		31.328405, 31.814512, 26.139128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428102, 31.020830, 26.425417>,  <30.834496, 31.320459, 26.183432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428102, 31.020830, 26.425417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458239, 31.416100, 26.478844>,  <31.476320, 31.653261, 26.510900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458239, 31.416100, 26.478844>,  <31.428102, 31.020830, 26.425417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458239, 31.416100, 26.478844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191907, -0.145813, 0.970521,
		0.978517, -0.047487, -0.200622,
		0.075340, 0.988172, 0.133568,
		31.480841, 31.712551, 26.518913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039719, 31.147139, 26.838570>,  <31.428102, 31.020830, 26.425417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039719, 31.147139, 26.838570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840288, 31.490074, 26.889778>,  <31.720629, 31.695835, 26.920504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840288, 31.490074, 26.889778>,  <32.039719, 31.147139, 26.838570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840288, 31.490074, 26.889778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148380, -0.061102, 0.987041,
		0.854050, 0.511114, -0.096748,
		-0.498579, 0.857338, 0.128023,
		31.690714, 31.747276, 26.928185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378872, 31.366640, 27.510458>,  <32.039719, 31.147139, 26.838570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378872, 31.366640, 27.510458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057980, 31.596165, 27.444527>,  <31.865444, 31.733879, 27.404968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057980, 31.596165, 27.444527>,  <32.378872, 31.366640, 27.510458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057980, 31.596165, 27.444527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074667, 0.177489, 0.981286,
		0.592331, 0.799522, -0.099542,
		-0.802228, 0.573813, -0.164830,
		31.817310, 31.768309, 27.395077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540745, 31.962517, 27.961603>,  <32.378872, 31.366640, 27.510458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540745, 31.962517, 27.961603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146210, 31.930695, 27.903915>,  <31.909487, 31.911602, 27.869303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146210, 31.930695, 27.903915>,  <32.540745, 31.962517, 27.961603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146210, 31.930695, 27.903915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156035, 0.170929, 0.972850,
		-0.052744, 0.982066, -0.181007,
		-0.986342, -0.079556, -0.144221,
		31.850307, 31.906828, 27.860649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290413, 32.332951, 28.127874>,  <32.540745, 31.962517, 27.961603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290413, 32.332951, 28.127874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620110, 32.270519, 28.345592>,  <33.817928, 32.233063, 28.476223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620110, 32.270519, 28.345592>,  <33.290413, 32.332951, 28.127874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620110, 32.270519, 28.345592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536991, -0.089446, -0.838832,
		0.179607, 0.983687, 0.010086,
		0.824246, -0.156076, 0.544296,
		33.867382, 32.223698, 28.508881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727615, 32.780930, 27.889055>,  <33.290413, 32.332951, 28.127874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727615, 32.780930, 27.889055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931736, 32.475174, 28.046692>,  <34.054207, 32.291721, 28.141273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931736, 32.475174, 28.046692>,  <33.727615, 32.780930, 27.889055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931736, 32.475174, 28.046692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571100, -0.041415, -0.819835,
		0.642993, 0.643425, 0.415408,
		0.510299, -0.764388, 0.394090,
		34.084827, 32.245857, 28.164919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302933, 32.936985, 27.658619>,  <33.727615, 32.780930, 27.889055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302933, 32.936985, 27.658619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375404, 32.558735, 27.766674>,  <34.418888, 32.331787, 27.831507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375404, 32.558735, 27.766674>,  <34.302933, 32.936985, 27.658619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375404, 32.558735, 27.766674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496454, -0.149170, -0.855150,
		0.848945, 0.289047, 0.442431,
		0.181182, -0.945622, 0.270136,
		34.429760, 32.275047, 27.847715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949360, 32.794781, 27.490196>,  <34.302933, 32.936985, 27.658619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949360, 32.794781, 27.490196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874653, 32.405510, 27.543915>,  <34.829830, 32.171947, 27.576147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874653, 32.405510, 27.543915>,  <34.949360, 32.794781, 27.490196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874653, 32.405510, 27.543915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546424, -0.216513, -0.809039,
		0.816419, -0.077719, 0.572207,
		-0.186768, -0.973181, 0.134298,
		34.818623, 32.113556, 27.584204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635113, 32.439701, 27.496515>,  <34.949360, 32.794781, 27.490196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635113, 32.439701, 27.496515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325413, 32.198257, 27.420418>,  <35.139591, 32.053391, 27.374760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325413, 32.198257, 27.420418>,  <35.635113, 32.439701, 27.496515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325413, 32.198257, 27.420418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440694, -0.298463, -0.846586,
		0.454224, -0.739311, 0.497092,
		-0.774254, -0.603605, -0.190241,
		35.093136, 32.017178, 27.363346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866043, 31.745007, 27.313641>,  <35.635113, 32.439701, 27.496515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866043, 31.745007, 27.313641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497051, 31.797417, 27.168385>,  <35.275658, 31.828863, 27.081230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497051, 31.797417, 27.168385>,  <35.866043, 31.745007, 27.313641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497051, 31.797417, 27.168385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328541, -0.227526, -0.916675,
		-0.202728, -0.964917, 0.166842,
		-0.922476, 0.131021, -0.363141,
		35.220310, 31.836723, 27.059443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842316, 31.328817, 26.759699>,  <35.866043, 31.745007, 27.313641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842316, 31.328817, 26.759699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527733, 31.569122, 26.702339>,  <35.338982, 31.713306, 26.667923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527733, 31.569122, 26.702339>,  <35.842316, 31.328817, 26.759699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527733, 31.569122, 26.702339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304495, 0.175134, -0.936275,
		-0.537367, -0.780006, -0.320666,
		-0.786460, 0.600765, -0.143397,
		35.291794, 31.749352, 26.659321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469532, 31.010731, 26.123697>,  <35.842316, 31.328817, 26.759699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469532, 31.010731, 26.123697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332966, 31.386211, 26.142754>,  <35.251026, 31.611500, 26.154188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332966, 31.386211, 26.142754>,  <35.469532, 31.010731, 26.123697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332966, 31.386211, 26.142754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341474, 0.171103, -0.924186,
		-0.875689, -0.299263, -0.378961,
		-0.341416, 0.938704, 0.047643,
		35.230541, 31.667822, 26.157047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081097, 31.140789, 25.492470>,  <35.469532, 31.010731, 26.123697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081097, 31.140789, 25.492470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181728, 31.508186, 25.614506>,  <35.242107, 31.728624, 25.687727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181728, 31.508186, 25.614506>,  <35.081097, 31.140789, 25.492470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181728, 31.508186, 25.614506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401444, 0.187800, -0.896423,
		-0.880654, 0.347995, -0.321478,
		0.251577, 0.918494, 0.305088,
		35.257202, 31.783735, 25.706032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948483, 31.645521, 25.007006>,  <35.081097, 31.140789, 25.492470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948483, 31.645521, 25.007006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177387, 31.881580, 25.234776>,  <35.314728, 32.023216, 25.371437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177387, 31.881580, 25.234776>,  <34.948483, 31.645521, 25.007006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177387, 31.881580, 25.234776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343378, 0.458127, -0.819885,
		-0.744722, 0.664715, 0.059524,
		0.572259, 0.590147, 0.569426,
		35.349064, 32.058624, 25.405603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723774, 32.372860, 24.910431>,  <34.948483, 31.645521, 25.007006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723774, 32.372860, 24.910431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108490, 32.374104, 25.019936>,  <35.339321, 32.374851, 25.085638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108490, 32.374104, 25.019936>,  <34.723774, 32.372860, 24.910431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108490, 32.374104, 25.019936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249225, 0.403923, -0.880189,
		-0.113317, 0.914788, 0.387714,
		0.961793, 0.003112, 0.273760,
		35.397026, 32.375038, 25.102064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970673, 33.040352, 24.754890>,  <34.723774, 32.372860, 24.910431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970673, 33.040352, 24.754890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304989, 32.821095, 24.767460>,  <35.505581, 32.689541, 24.775002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304989, 32.821095, 24.767460>,  <34.970673, 33.040352, 24.754890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304989, 32.821095, 24.767460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344706, 0.479330, -0.807107,
		0.427346, 0.685408, 0.589569,
		0.835795, -0.548141, 0.031424,
		35.555729, 32.656651, 24.776888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478523, 33.524094, 24.667372>,  <34.970673, 33.040352, 24.754890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478523, 33.524094, 24.667372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625561, 33.163158, 24.577339>,  <35.713783, 32.946598, 24.523319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625561, 33.163158, 24.577339>,  <35.478523, 33.524094, 24.667372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625561, 33.163158, 24.577339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452425, 0.384969, -0.804432,
		0.812518, 0.193872, 0.549753,
		0.367595, -0.902337, -0.225082,
		35.735840, 32.892456, 24.509815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003555, 33.681099, 24.219416>,  <35.478523, 33.524094, 24.667372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003555, 33.681099, 24.219416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948559, 33.286469, 24.184189>,  <35.915562, 33.049690, 24.163054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948559, 33.286469, 24.184189>,  <36.003555, 33.681099, 24.219416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948559, 33.286469, 24.184189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367179, 0.031811, -0.929606,
		0.919932, -0.160150, 0.357877,
		-0.137492, -0.986580, -0.088068,
		35.907310, 32.990494, 24.157768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657166, 34.300247, 24.426792>,  <36.003555, 33.681099, 24.219416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657166, 34.300247, 24.426792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469784, 34.629765, 24.299095>,  <35.357353, 34.827477, 24.222477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469784, 34.629765, 24.299095>,  <35.657166, 34.300247, 24.426792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469784, 34.629765, 24.299095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698068, -0.123645, 0.705275,
		0.541528, 0.553243, 0.632985,
		-0.468453, 0.823793, -0.319244,
		35.329247, 34.876904, 24.203321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654224, 34.825363, 24.996889>,  <35.657166, 34.300247, 24.426792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654224, 34.825363, 24.996889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356873, 34.895325, 24.738651>,  <35.178459, 34.937302, 24.583708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356873, 34.895325, 24.738651>,  <35.654224, 34.825363, 24.996889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356873, 34.895325, 24.738651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666494, -0.112457, 0.736980,
		0.056296, 0.978143, 0.200169,
		-0.743382, 0.174900, -0.645595,
		35.133858, 34.947796, 24.544973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143169, 34.438374, 25.591738>,  <35.654224, 34.825363, 24.996889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143169, 34.438374, 25.591738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862137, 34.672321, 25.429600>,  <34.693516, 34.812691, 25.332317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862137, 34.672321, 25.429600>,  <35.143169, 34.438374, 25.591738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862137, 34.672321, 25.429600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669744, -0.351000, 0.654402,
		0.240464, 0.731249, 0.638320,
		-0.702582, 0.584871, -0.405346,
		34.651363, 34.847782, 25.307997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997437, 34.917492, 26.126568>,  <35.143169, 34.438374, 25.591738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997437, 34.917492, 26.126568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676991, 34.905334, 25.887470>,  <34.484722, 34.898041, 25.744011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676991, 34.905334, 25.887470>,  <34.997437, 34.917492, 26.126568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676991, 34.905334, 25.887470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570519, -0.263099, 0.778002,
		-0.180911, 0.964290, 0.193432,
		-0.801111, -0.030392, -0.597743,
		34.436657, 34.896217, 25.708147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489803, 35.302155, 26.501957>,  <34.997437, 34.917492, 26.126568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489803, 35.302155, 26.501957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259853, 35.116554, 26.232372>,  <34.121883, 35.005192, 26.070621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259853, 35.116554, 26.232372>,  <34.489803, 35.302155, 26.501957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259853, 35.116554, 26.232372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650685, -0.240165, 0.720368,
		-0.496116, 0.852655, -0.163857,
		-0.574872, -0.464005, -0.673959,
		34.087391, 34.977352, 26.030184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687996, 35.667610, 26.412125>,  <34.489803, 35.302155, 26.501957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687996, 35.667610, 26.412125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710266, 35.273655, 26.346527>,  <33.723629, 35.037281, 26.307169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710266, 35.273655, 26.346527>,  <33.687996, 35.667610, 26.412125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710266, 35.273655, 26.346527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675600, -0.158099, 0.720118,
		-0.735164, 0.070702, -0.674193,
		0.055675, -0.984889, -0.163995,
		33.726967, 34.978188, 26.297329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048824, 35.412945, 26.622944>,  <33.687996, 35.667610, 26.412125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048824, 35.412945, 26.622944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227501, 35.056553, 26.590405>,  <33.334705, 34.842716, 26.570881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227501, 35.056553, 26.590405>,  <33.048824, 35.412945, 26.622944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227501, 35.056553, 26.590405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429622, -0.293364, 0.854028,
		-0.784789, -0.346535, -0.513828,
		0.446689, -0.890983, -0.081349,
		33.361507, 34.789257, 26.566000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471943, 34.855541, 26.555603>,  <33.048824, 35.412945, 26.622944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471943, 34.855541, 26.555603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807289, 34.690872, 26.698521>,  <33.008499, 34.592072, 26.784271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807289, 34.690872, 26.698521>,  <32.471943, 34.855541, 26.555603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807289, 34.690872, 26.698521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477144, -0.237287, 0.846185,
		-0.263580, -0.879893, -0.395366,
		0.838367, -0.411684, 0.357291,
		33.058800, 34.567371, 26.805710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177940, 34.364414, 27.021740>,  <32.471943, 34.855541, 26.555603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177940, 34.364414, 27.021740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561283, 34.348034, 27.134785>,  <32.791290, 34.338207, 27.202612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561283, 34.348034, 27.134785>,  <32.177940, 34.364414, 27.021740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561283, 34.348034, 27.134785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282689, -0.276140, 0.918604,
		0.040427, -0.960245, -0.276217,
		0.958359, -0.040946, 0.282614,
		32.848789, 34.335751, 27.219568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264557, 33.786251, 27.415211>,  <32.177940, 34.364414, 27.021740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264557, 33.786251, 27.415211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581799, 34.006187, 27.520020>,  <32.772144, 34.138149, 27.582905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581799, 34.006187, 27.520020>,  <32.264557, 33.786251, 27.415211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581799, 34.006187, 27.520020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258558, -0.085575, 0.962198,
		0.551479, -0.830874, 0.074296,
		0.793107, 0.549841, 0.262022,
		32.819729, 34.171139, 27.598627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531586, 33.472622, 27.978308>,  <32.264557, 33.786251, 27.415211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531586, 33.472622, 27.978308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670338, 33.846100, 28.013824>,  <32.753590, 34.070187, 28.035133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670338, 33.846100, 28.013824>,  <32.531586, 33.472622, 27.978308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670338, 33.846100, 28.013824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194464, -0.021013, 0.980684,
		0.917529, -0.357445, 0.174282,
		0.346879, 0.933698, 0.088790,
		32.774403, 34.126209, 28.040461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097744, 33.533783, 28.385296>,  <32.531586, 33.472622, 27.978308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097744, 33.533783, 28.385296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937023, 33.897366, 28.429741>,  <32.840591, 34.115517, 28.456408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937023, 33.897366, 28.429741>,  <33.097744, 33.533783, 28.385296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937023, 33.897366, 28.429741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160459, -0.049577, 0.985797,
		0.901560, 0.413922, -0.125931,
		-0.401800, 0.908961, 0.111114,
		32.816483, 34.170055, 28.463076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386940, 33.745697, 29.022446>,  <33.097744, 33.533783, 28.385296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386940, 33.745697, 29.022446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131016, 34.049099, 28.972946>,  <32.977463, 34.231140, 28.943247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131016, 34.049099, 28.972946>,  <33.386940, 33.745697, 29.022446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131016, 34.049099, 28.972946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013958, 0.172463, 0.984917,
		0.768410, 0.628429, -0.120930,
		-0.639806, 0.758508, -0.123751,
		32.939075, 34.276649, 28.935822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602406, 34.428677, 29.384199>,  <33.386940, 33.745697, 29.022446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602406, 34.428677, 29.384199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210190, 34.480957, 29.325611>,  <32.974861, 34.512325, 29.290459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210190, 34.480957, 29.325611>,  <33.602406, 34.428677, 29.384199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210190, 34.480957, 29.325611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097297, 0.324443, 0.940888,
		0.170500, 0.936831, -0.305413,
		-0.980542, 0.130705, -0.146469,
		32.916027, 34.520168, 29.281670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459164, 35.015427, 29.616961>,  <33.602406, 34.428677, 29.384199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459164, 35.015427, 29.616961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097984, 34.844154, 29.631668>,  <32.881275, 34.741390, 29.640493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097984, 34.844154, 29.631668>,  <33.459164, 35.015427, 29.616961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097984, 34.844154, 29.631668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157402, 0.409114, 0.898805,
		-0.399890, 0.805786, -0.436804,
		-0.902947, -0.428176, 0.036768,
		32.827099, 34.715702, 29.642698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945232, 35.545372, 29.757301>,  <33.459164, 35.015427, 29.616961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945232, 35.545372, 29.757301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763138, 35.202705, 29.854366>,  <32.653881, 34.997105, 29.912605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763138, 35.202705, 29.854366>,  <32.945232, 35.545372, 29.757301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763138, 35.202705, 29.854366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298033, 0.403432, 0.865112,
		-0.839010, 0.321506, -0.438971,
		-0.455234, -0.856665, 0.242665,
		32.626568, 34.945705, 29.927166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300159, 35.714848, 29.983171>,  <32.945232, 35.545372, 29.757301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300159, 35.714848, 29.983171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351284, 35.362228, 30.164955>,  <32.381958, 35.150658, 30.274025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351284, 35.362228, 30.164955>,  <32.300159, 35.714848, 29.983171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351284, 35.362228, 30.164955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223321, 0.420869, 0.879202,
		-0.966330, -0.213858, -0.143079,
		0.127807, -0.881552, 0.454457,
		32.389626, 35.097763, 30.301292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919586, 35.798050, 30.565535>,  <32.300159, 35.714848, 29.983171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919586, 35.798050, 30.565535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073143, 35.441040, 30.660217>,  <32.165276, 35.226833, 30.717028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073143, 35.441040, 30.660217>,  <31.919586, 35.798050, 30.565535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073143, 35.441040, 30.660217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154835, 0.190500, 0.969400,
		-0.910304, -0.408794, -0.065063,
		0.383890, -0.892523, 0.236708,
		32.188309, 35.173283, 30.731230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514515, 35.507645, 31.065517>,  <31.919586, 35.798050, 30.565535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514515, 35.507645, 31.065517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862494, 35.316017, 31.112320>,  <32.071281, 35.201042, 31.140402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862494, 35.316017, 31.112320>,  <31.514515, 35.507645, 31.065517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862494, 35.316017, 31.112320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120109, 0.024286, 0.992464,
		-0.478300, -0.877441, -0.036413,
		0.869944, -0.479069, 0.117005,
		32.123478, 35.172298, 31.147421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333336, 34.955059, 31.502668>,  <31.514515, 35.507645, 31.065517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333336, 34.955059, 31.502668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730501, 34.999290, 31.520065>,  <31.968801, 35.025829, 31.530504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730501, 34.999290, 31.520065>,  <31.333336, 34.955059, 31.502668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730501, 34.999290, 31.520065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025820, -0.156487, 0.987343,
		0.115988, -0.981470, -0.152523,
		0.992915, 0.110582, 0.043492,
		32.028378, 35.032463, 31.533113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552124, 34.351562, 31.984501>,  <31.333336, 34.955059, 31.502668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552124, 34.351562, 31.984501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828592, 34.640594, 31.989487>,  <31.994473, 34.814014, 31.992477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828592, 34.640594, 31.989487>,  <31.552124, 34.351562, 31.984501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828592, 34.640594, 31.989487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008312, -0.009298, 0.999922,
		0.722644, -0.691220, -0.000421,
		0.691170, 0.722585, 0.012465,
		32.035942, 34.857368, 31.993227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111847, 34.076702, 32.409672>,  <31.552124, 34.351562, 31.984501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111847, 34.076702, 32.409672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153057, 34.474083, 32.389900>,  <32.177784, 34.712509, 32.378036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153057, 34.474083, 32.389900>,  <32.111847, 34.076702, 32.409672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153057, 34.474083, 32.389900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118839, 0.037045, 0.992222,
		0.987554, -0.108097, -0.114244,
		0.103024, 0.993450, -0.049430,
		32.183964, 34.772118, 32.375072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444954, 34.288200, 32.965710>,  <32.111847, 34.076702, 32.409672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444954, 34.288200, 32.965710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362499, 34.666462, 32.865124>,  <32.313026, 34.893421, 32.804771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362499, 34.666462, 32.865124>,  <32.444954, 34.288200, 32.965710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362499, 34.666462, 32.865124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025880, 0.262168, 0.964675,
		0.978180, 0.192352, -0.078517,
		-0.206141, 0.945658, -0.251469,
		32.300655, 34.950161, 32.789684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941589, 34.717892, 33.284313>,  <32.444954, 34.288200, 32.965710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941589, 34.717892, 33.284313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626007, 34.957645, 33.230213>,  <32.436657, 35.101498, 33.197754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626007, 34.957645, 33.230213>,  <32.941589, 34.717892, 33.284313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626007, 34.957645, 33.230213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013193, 0.236584, 0.971521,
		0.614308, 0.764703, -0.194562,
		-0.788956, 0.599380, -0.135247,
		32.389320, 35.137459, 33.189640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079670, 35.491806, 33.568127>,  <32.941589, 34.717892, 33.284313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079670, 35.491806, 33.568127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689514, 35.405491, 33.549976>,  <32.455421, 35.353703, 33.539085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689514, 35.405491, 33.549976>,  <33.079670, 35.491806, 33.568127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689514, 35.405491, 33.549976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134254, 0.417920, 0.898509,
		-0.174928, 0.882484, -0.436604,
		-0.975385, -0.215790, -0.045371,
		32.396900, 35.340755, 33.536366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779152, 36.061714, 33.744198>,  <33.079670, 35.491806, 33.568127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779152, 36.061714, 33.744198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453644, 35.833656, 33.789299>,  <32.258339, 35.696823, 33.816360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453644, 35.833656, 33.789299>,  <32.779152, 36.061714, 33.744198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453644, 35.833656, 33.789299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215677, 0.476397, 0.852367,
		-0.539686, 0.669313, -0.510645,
		-0.813770, -0.570145, 0.112749,
		32.209511, 35.662613, 33.823124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331341, 36.485519, 34.062042>,  <32.779152, 36.061714, 33.744198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331341, 36.485519, 34.062042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148178, 36.132938, 34.108292>,  <32.038280, 35.921391, 34.136040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148178, 36.132938, 34.108292>,  <32.331341, 36.485519, 34.062042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148178, 36.132938, 34.108292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261282, 0.257755, 0.930212,
		-0.849737, 0.395740, -0.348335,
		-0.457907, -0.881449, 0.115625,
		32.010807, 35.868504, 34.142979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631969, 36.659325, 34.254395>,  <32.331341, 36.485519, 34.062042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631969, 36.659325, 34.254395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763018, 36.312283, 34.404018>,  <31.841646, 36.104057, 34.493793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763018, 36.312283, 34.404018>,  <31.631969, 36.659325, 34.254395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763018, 36.312283, 34.404018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056557, 0.377190, 0.924408,
		-0.943116, -0.324009, 0.074505,
		0.327619, -0.867610, 0.374058,
		31.861303, 36.051998, 34.516235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909090, 36.672749, 33.883846>,  <31.631969, 36.659325, 34.254395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909090, 36.672749, 33.883846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609350, 36.937550, 33.889977>,  <30.429506, 37.096428, 33.893654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.609350, 36.937550, 33.889977>,  <30.909090, 36.672749, 33.883846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609350, 36.937550, 33.889977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085861, -0.074195, -0.993541,
		-0.656586, -0.745823, 0.112437,
		-0.749348, 0.661999, 0.015322,
		30.384546, 37.136150, 33.894573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491541, 36.346886, 33.394028>,  <30.909090, 36.672749, 33.883846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491541, 36.346886, 33.394028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388607, 36.731575, 33.431702>,  <30.326847, 36.962387, 33.454304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388607, 36.731575, 33.431702>,  <30.491541, 36.346886, 33.394028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388607, 36.731575, 33.431702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296674, 0.014128, -0.954874,
		-0.919654, -0.273662, 0.281683,
		-0.257333, 0.961722, 0.094182,
		30.311407, 37.020092, 33.459957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649565, 36.467735, 33.167755>,  <30.491541, 36.346886, 33.394028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649565, 36.467735, 33.167755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902393, 36.774033, 33.120216>,  <30.054090, 36.957809, 33.091694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902393, 36.774033, 33.120216>,  <29.649565, 36.467735, 33.167755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902393, 36.774033, 33.120216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364321, 0.158291, -0.917722,
		-0.683928, 0.623361, 0.379028,
		0.632070, 0.765744, -0.118844,
		30.092014, 37.003757, 33.084564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301664, 36.727432, 32.590923>,  <29.649565, 36.467735, 33.167755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301664, 36.727432, 32.590923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619648, 36.962585, 32.650841>,  <29.810438, 37.103676, 32.686790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619648, 36.962585, 32.650841>,  <29.301664, 36.727432, 32.590923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619648, 36.962585, 32.650841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018671, 0.270504, -0.962538,
		-0.606378, 0.762380, 0.226016,
		0.794957, 0.587882, 0.149793,
		29.858135, 37.138950, 32.695778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150108, 37.525906, 32.473892>,  <29.301664, 36.727432, 32.590923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150108, 37.525906, 32.473892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534754, 37.431431, 32.418018>,  <29.765541, 37.374748, 32.384495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534754, 37.431431, 32.418018>,  <29.150108, 37.525906, 32.473892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534754, 37.431431, 32.418018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028766, 0.419475, -0.907311,
		0.272887, 0.876503, 0.396580,
		0.961616, -0.236185, -0.139682,
		29.823238, 37.360577, 32.376114>
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
