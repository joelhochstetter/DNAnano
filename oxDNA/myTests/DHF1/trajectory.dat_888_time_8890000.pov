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
	<2.362783, 0.397528, 2.805532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.410721, 0.282906, 2.425316>,  <2.439484, 0.214132, 2.197187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.410721, 0.282906, 2.425316>,  <2.362783, 0.397528, 2.805532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.410721, 0.282906, 2.425316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324943, 0.916025, -0.235183,
		0.938109, -0.280685, 0.202895,
		0.119845, -0.286556, -0.950538,
		2.446674, 0.196939, 2.140155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.951310, 0.699600, 2.482133>,  <2.362783, 0.397528, 2.805532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.951310, 0.699600, 2.482133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.772095, 0.569916, 2.148870>,  <2.664565, 0.492105, 1.948913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.772095, 0.569916, 2.148870>,  <2.951310, 0.699600, 2.482133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.772095, 0.569916, 2.148870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499081, 0.682492, -0.533970,
		0.741741, -0.655052, -0.143975,
		-0.448039, -0.324211, -0.833155,
		2.637683, 0.472652, 1.898924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.504092, 0.541368, 2.006558>,  <2.951310, 0.699600, 2.482133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.504092, 0.541368, 2.006558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146690, 0.644150, 1.859250>,  <2.932249, 0.705819, 1.770865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146690, 0.644150, 1.859250>,  <3.504092, 0.541368, 2.006558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.146690, 0.644150, 1.859250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400476, 0.826969, -0.394640,
		0.203143, -0.500096, -0.841806,
		-0.893505, 0.256955, -0.368270,
		2.878639, 0.721236, 1.748769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.578325, 0.639287, 1.294536>,  <3.504092, 0.541368, 2.006558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.578325, 0.639287, 1.294536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.282524, 0.861530, 1.446555>,  <3.105043, 0.994876, 1.537766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.282524, 0.861530, 1.446555>,  <3.578325, 0.639287, 1.294536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.282524, 0.861530, 1.446555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540657, 0.826578, -0.156391,
		-0.401031, 0.089823, -0.911650,
		-0.739503, 0.555608, 0.380047,
		3.060673, 1.028213, 1.560569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.423072, 1.144096, 0.830546>,  <3.578325, 0.639287, 1.294536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.423072, 1.144096, 0.830546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.302307, 1.274830, 1.188770>,  <3.229848, 1.353270, 1.403705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.302307, 1.274830, 1.188770>,  <3.423072, 1.144096, 0.830546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.302307, 1.274830, 1.188770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534383, 0.835959, -0.124930,
		-0.789483, 0.440855, -0.427040,
		-0.301912, 0.326833, 0.895561,
		3.211733, 1.372880, 1.457438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.238355, 1.932158, 0.804065>,  <3.423072, 1.144096, 0.830546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.238355, 1.932158, 0.804065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.324608, 1.841328, 1.183947>,  <3.376359, 1.786829, 1.411876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.324608, 1.841328, 1.183947>,  <3.238355, 1.932158, 0.804065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.324608, 1.841328, 1.183947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506991, 0.857255, 0.089859,
		-0.834544, 0.462116, 0.299977,
		0.215631, -0.227077, 0.949705,
		3.389297, 1.773205, 1.468859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.160077, 2.559862, 1.179334>,  <3.238355, 1.932158, 0.804065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.160077, 2.559862, 1.179334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.406456, 2.347443, 1.412091>,  <3.554283, 2.219991, 1.551744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.406456, 2.347443, 1.412091>,  <3.160077, 2.559862, 1.179334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.406456, 2.347443, 1.412091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495449, 0.835406, 0.237965,
		-0.612486, 0.141724, 0.777673,
		0.615947, -0.531048, 0.581892,
		3.591240, 2.188128, 1.586658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.246980, 2.902462, 1.829829>,  <3.160077, 2.559862, 1.179334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.246980, 2.902462, 1.829829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.565369, 2.661327, 1.807845>,  <3.756402, 2.516647, 1.794654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.565369, 2.661327, 1.807845>,  <3.246980, 2.902462, 1.829829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.565369, 2.661327, 1.807845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593403, 0.759119, 0.267603,
		-0.119599, -0.245618, 0.961960,
		0.795970, -0.602835, -0.054961,
		3.804160, 2.480477, 1.791356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.428334, 3.115004, 1.068328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.751648, 3.029709, 1.287857>,  <4.945636, 2.978532, 1.419574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.751648, 3.029709, 1.287857>,  <4.428334, 3.115004, 1.068328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.751648, 3.029709, 1.287857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440747, -0.837179, 0.323842,
		0.390407, -0.503648, -0.770663,
		0.808285, -0.213237, 0.548822,
		4.994133, 2.965738, 1.452504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.705694, 2.465666, 0.782405>,  <4.428334, 3.115004, 1.068328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.705694, 2.465666, 0.782405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.738495, 2.563534, 1.168859>,  <4.758175, 2.622254, 1.400730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.738495, 2.563534, 1.168859>,  <4.705694, 2.465666, 0.782405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.738495, 2.563534, 1.168859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704707, -0.671250, 0.229805,
		0.704743, -0.699685, 0.117376,
		0.082003, 0.244669, 0.966133,
		4.763096, 2.636935, 1.458698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.967862, 1.975994, 1.211642>,  <4.705694, 2.465666, 0.782405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.967862, 1.975994, 1.211642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.726807, 2.166946, 1.467434>,  <4.582173, 2.281518, 1.620909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.726807, 2.166946, 1.467434>,  <4.967862, 1.975994, 1.211642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.726807, 2.166946, 1.467434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541855, -0.833074, 0.111265,
		0.585850, -0.279453, 0.760714,
		-0.602638, 0.477382, 0.639479,
		4.546015, 2.310161, 1.659278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.793557, 1.571948, 1.869236>,  <4.967862, 1.975994, 1.211642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.793557, 1.571948, 1.869236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.492790, 1.833363, 1.834568>,  <4.312330, 1.990211, 1.813767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.492790, 1.833363, 1.834568>,  <4.793557, 1.571948, 1.869236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.492790, 1.833363, 1.834568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657219, -0.753417, 0.020645,
		-0.051806, 0.072485, 0.996023,
		-0.751917, 0.653536, -0.086670,
		4.267215, 2.029423, 1.808567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.300469, 1.418585, 2.349689>,  <4.793557, 1.571948, 1.869236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.300469, 1.418585, 2.349689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.080505, 1.642738, 2.101956>,  <3.948527, 1.777231, 1.953317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.080505, 1.642738, 2.101956>,  <4.300469, 1.418585, 2.349689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.080505, 1.642738, 2.101956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802800, -0.559234, 0.206807,
		-0.230459, 0.610924, 0.757404,
		-0.549909, 0.560384, -0.619330,
		3.915533, 1.810853, 1.916157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.721524, 1.690194, 2.752324>,  <4.300469, 1.418585, 2.349689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.721524, 1.690194, 2.752324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.618881, 1.705872, 2.366035>,  <3.557296, 1.715278, 2.134262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.618881, 1.705872, 2.366035>,  <3.721524, 1.690194, 2.752324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.618881, 1.705872, 2.366035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810778, -0.552618, 0.193008,
		-0.526111, 0.832512, 0.173583,
		-0.256606, 0.039194, -0.965721,
		3.541899, 1.717630, 2.076319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.005778, 1.843654, 2.685170>,  <3.721524, 1.690194, 2.752324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.005778, 1.843654, 2.685170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.058868, 1.687550, 2.320735>,  <3.090723, 1.593887, 2.102074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.058868, 1.687550, 2.320735>,  <3.005778, 1.843654, 2.685170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.058868, 1.687550, 2.320735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807058, -0.576158, 0.129225,
		-0.575359, 0.718140, -0.391456,
		0.132738, -0.390279, -0.911078,
		3.098686, 1.570471, 2.047409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.313520, 1.653224, 2.461429>,  <3.005778, 1.843654, 2.685170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.313520, 1.653224, 2.461429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.543106, 1.468372, 2.191022>,  <2.680858, 1.357461, 2.028778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.543106, 1.468372, 2.191022>,  <2.313520, 1.653224, 2.461429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.543106, 1.468372, 2.191022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693558, -0.713246, -0.101279,
		-0.435363, 0.526989, -0.729891,
		0.573965, -0.462129, -0.676018,
		2.715296, 1.329734, 1.988216>
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
