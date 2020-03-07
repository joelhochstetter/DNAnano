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
	<1.472718, 1.105015, 1.998124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.624246, 1.066971, 1.629896>,  <1.715162, 1.044144, 1.408959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.624246, 1.066971, 1.629896>,  <1.472718, 1.105015, 1.998124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.624246, 1.066971, 1.629896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451739, 0.849153, -0.273625,
		0.807730, 0.519512, 0.278710,
		0.378819, -0.095111, -0.920570,
		1.737891, 1.038438, 1.353725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.997128, 1.683587, 1.853314>,  <1.472718, 1.105015, 1.998124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.997128, 1.683587, 1.853314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.814424, 1.530113, 1.532276>,  <1.704802, 1.438029, 1.339654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.814424, 1.530113, 1.532276>,  <1.997128, 1.683587, 1.853314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.814424, 1.530113, 1.532276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359040, 0.904970, -0.228294,
		0.813916, 0.183888, -0.551113,
		-0.456760, -0.383684, -0.802594,
		1.677396, 1.415008, 1.291498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.193854, 1.974609, 1.076972>,  <1.997128, 1.683587, 1.853314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.193854, 1.974609, 1.076972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.817204, 1.859230, 1.146420>,  <1.591215, 1.790003, 1.188088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.817204, 1.859230, 1.146420>,  <2.193854, 1.974609, 1.076972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.817204, 1.859230, 1.146420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295019, 0.955407, -0.012736,
		-0.162204, -0.063214, -0.984730,
		-0.941623, -0.288448, 0.173620,
		1.534718, 1.772696, 1.198506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.718817, 2.316222, 0.567382>,  <2.193854, 1.974609, 1.076972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.718817, 2.316222, 0.567382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527538, 2.242188, 0.910793>,  <1.412770, 2.197767, 1.116840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.527538, 2.242188, 0.910793>,  <1.718817, 2.316222, 0.567382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.527538, 2.242188, 0.910793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352056, 0.935962, 0.005687,
		-0.804602, -0.299530, -0.512736,
		-0.478197, -0.185087, 0.858528,
		1.384079, 2.186661, 1.168352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.884803, 2.388598, 0.501103>,  <1.718817, 2.316222, 0.567382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.884803, 2.388598, 0.501103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.078712, 2.477760, 0.839407>,  <1.195058, 2.531257, 1.042389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.078712, 2.477760, 0.839407>,  <0.884803, 2.388598, 0.501103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.078712, 2.477760, 0.839407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238615, 0.964004, -0.117299,
		-0.841462, -0.144947, 0.520512,
		0.484774, 0.222905, 0.845759,
		1.224144, 2.544632, 1.093135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.403767, 2.798948, 1.089059>,  <0.884803, 2.388598, 0.501103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.403767, 2.798948, 1.089059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795569, 2.875710, 1.113541>,  <1.030650, 2.921766, 1.128229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.795569, 2.875710, 1.113541>,  <0.403767, 2.798948, 1.089059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.795569, 2.875710, 1.113541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173981, 0.959158, -0.223038,
		-0.101505, 0.207818, 0.972887,
		0.979504, 0.191903, 0.061203,
		1.089420, 2.933280, 1.131902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.604124, 3.337625, 1.676970>,  <0.403767, 2.798948, 1.089059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.604124, 3.337625, 1.676970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.862977, 3.337868, 1.372019>,  <1.018289, 3.338013, 1.189048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.862977, 3.337868, 1.372019>,  <0.604124, 3.337625, 1.676970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.862977, 3.337868, 1.372019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281340, 0.929607, -0.238072,
		0.708568, 0.368551, 0.601749,
		0.647132, 0.000606, -0.762378,
		1.057117, 3.338049, 1.143305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.895228, 4.135563, 1.659214>,  <0.604124, 3.337625, 1.676970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.895228, 4.135563, 1.659214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.009842, 3.956665, 1.320305>,  <1.078611, 3.849326, 1.116960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.009842, 3.956665, 1.320305>,  <0.895228, 4.135563, 1.659214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.009842, 3.956665, 1.320305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191224, 0.839861, -0.508002,
		0.938792, 0.307579, 0.155126,
		0.286536, -0.447245, -0.847272,
		1.095803, 3.822492, 1.066123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.224478, 5.202062, 0.813103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.159996, 5.194916, 0.418400>,  <1.121307, 5.190628, 0.181578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.159996, 5.194916, 0.418400>,  <1.224478, 5.202062, 0.813103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.159996, 5.194916, 0.418400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032467, -0.999199, 0.023395,
		-0.986386, 0.035809, 0.160497,
		-0.161206, -0.017866, -0.986759,
		1.111634, 5.189556, 0.122372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.595834, 4.779640, 0.618419>,  <1.224478, 5.202062, 0.813103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.595834, 4.779640, 0.618419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.887745, 4.792931, 0.345268>,  <1.062892, 4.800905, 0.181378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.887745, 4.792931, 0.345268>,  <0.595834, 4.779640, 0.618419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.887745, 4.792931, 0.345268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185965, -0.970806, 0.151500,
		-0.657906, -0.237552, -0.714652,
		0.729778, 0.033227, -0.682876,
		1.106678, 4.802899, 0.140405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.513902, 4.165296, 0.150015>,  <0.595834, 4.779640, 0.618419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.513902, 4.165296, 0.150015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.890839, 4.290642, 0.196999>,  <1.117000, 4.365849, 0.225189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.890839, 4.290642, 0.196999>,  <0.513902, 4.165296, 0.150015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.890839, 4.290642, 0.196999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265578, -0.913814, 0.307267,
		0.203623, -0.258356, -0.944346,
		0.942341, 0.313364, 0.117460,
		1.173541, 4.384651, 0.232237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.923830, 3.696232, -0.178643>,  <0.513902, 4.165296, 0.150015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.923830, 3.696232, -0.178643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.109203, 3.861847, 0.134739>,  <1.220428, 3.961216, 0.322768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.109203, 3.861847, 0.134739>,  <0.923830, 3.696232, -0.178643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.109203, 3.861847, 0.134739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255383, -0.909022, 0.329332,
		0.848533, 0.047457, -0.527010,
		0.463435, 0.414038, 0.783455,
		1.248234, 3.986058, 0.369775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.506078, 3.250231, -0.145095>,  <0.923830, 3.696232, -0.178643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.506078, 3.250231, -0.145095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.454044, 3.447365, 0.199043>,  <1.422824, 3.565645, 0.405526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.454044, 3.447365, 0.199043>,  <1.506078, 3.250231, -0.145095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.454044, 3.447365, 0.199043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320782, -0.800130, 0.506844,
		0.938178, 0.341915, -0.054008,
		-0.130084, 0.492834, 0.860345,
		1.415019, 3.595215, 0.457147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.054729, 3.381794, 0.319438>,  <1.506078, 3.250231, -0.145095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.054729, 3.381794, 0.319438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.739952, 3.349136, 0.564079>,  <1.551086, 3.329542, 0.710864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.739952, 3.349136, 0.564079>,  <2.054729, 3.381794, 0.319438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.739952, 3.349136, 0.564079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440825, -0.767944, 0.464690,
		0.431738, 0.635293, 0.640316,
		-0.786941, -0.081643, 0.611603,
		1.503870, 3.324643, 0.747560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.325820, 3.213650, 1.031354>,  <2.054729, 3.381794, 0.319438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.325820, 3.213650, 1.031354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.938919, 3.112976, 1.044487>,  <1.706779, 3.052572, 1.052367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.938919, 3.112976, 1.044487>,  <2.325820, 3.213650, 1.031354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.938919, 3.112976, 1.044487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247615, -0.907266, 0.339936,
		-0.055768, 0.336933, 0.939875,
		-0.967252, -0.251685, 0.032833,
		1.648743, 3.037471, 1.054337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.188792, 2.833461, 1.628990>,  <2.325820, 3.213650, 1.031354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.188792, 2.833461, 1.628990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.910450, 2.731621, 1.360374>,  <1.743445, 2.670517, 1.199205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.910450, 2.731621, 1.360374>,  <2.188792, 2.833461, 1.628990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.910450, 2.731621, 1.360374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152974, -0.966140, 0.207778,
		-0.701702, 0.041855, 0.711240,
		-0.695855, -0.254600, -0.671540,
		1.701694, 2.655241, 1.158913>
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
