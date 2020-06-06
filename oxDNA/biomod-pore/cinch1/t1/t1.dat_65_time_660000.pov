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
	<44.085178, 32.708759, 23.415461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844128, 32.408279, 23.307732>,  <43.699497, 32.227989, 23.243093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844128, 32.408279, 23.307732>,  <44.085178, 32.708759, 23.415461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844128, 32.408279, 23.307732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741666, 0.402631, 0.536489,
		-0.294575, 0.523049, -0.799778,
		-0.602625, -0.751204, -0.269323,
		43.663342, 32.182919, 23.226934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490574, 32.884212, 23.199289>,  <44.085178, 32.708759, 23.415461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490574, 32.884212, 23.199289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421612, 32.517174, 23.342556>,  <43.380234, 32.296951, 23.428516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421612, 32.517174, 23.342556>,  <43.490574, 32.884212, 23.199289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421612, 32.517174, 23.342556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656555, 0.378114, 0.652661,
		-0.734310, -0.122633, -0.667645,
		-0.172408, -0.917601, 0.358168,
		43.369888, 32.241894, 23.450006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888870, 33.117046, 23.537630>,  <43.490574, 32.884212, 23.199289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888870, 33.117046, 23.537630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978683, 32.747406, 23.661320>,  <43.032574, 32.525623, 23.735533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978683, 32.747406, 23.661320>,  <42.888870, 33.117046, 23.537630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978683, 32.747406, 23.661320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702543, 0.066391, 0.708537,
		-0.675290, -0.376334, -0.634315,
		0.224534, -0.924102, 0.309224,
		43.046043, 32.470177, 23.754087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316994, 32.528614, 23.421213>,  <42.888870, 33.117046, 23.537630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316994, 32.528614, 23.421213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566334, 32.482670, 23.730598>,  <42.715939, 32.455101, 23.916229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566334, 32.482670, 23.730598>,  <42.316994, 32.528614, 23.421213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566334, 32.482670, 23.730598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770795, 0.076191, 0.632510,
		-0.131585, -0.990455, -0.041045,
		0.623346, -0.114866, 0.773464,
		42.753338, 32.448212, 23.962637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783306, 32.104168, 23.233711>,  <42.316994, 32.528614, 23.421213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783306, 32.104168, 23.233711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161579, 31.975903, 23.255108>,  <42.388542, 31.898943, 23.267946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161579, 31.975903, 23.255108>,  <41.783306, 32.104168, 23.233711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161579, 31.975903, 23.255108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095476, -0.116668, 0.988571,
		-0.310762, -0.939979, -0.140947,
		0.945680, -0.320667, 0.053490,
		42.445282, 31.879702, 23.271154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898853, 31.581947, 22.705839>,  <41.783306, 32.104168, 23.233711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898853, 31.581947, 22.705839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544289, 31.631329, 22.527390>,  <41.331551, 31.660957, 22.420321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544289, 31.631329, 22.527390>,  <41.898853, 31.581947, 22.705839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544289, 31.631329, 22.527390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003526, -0.965551, -0.260189,
		-0.462875, -0.229063, 0.856316,
		-0.886416, 0.123455, -0.446122,
		41.278362, 31.668365, 22.393553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619080, 31.007812, 22.851284>,  <41.898853, 31.581947, 22.705839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619080, 31.007812, 22.851284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404285, 31.132092, 22.537567>,  <41.275410, 31.206659, 22.349337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404285, 31.132092, 22.537567>,  <41.619080, 31.007812, 22.851284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404285, 31.132092, 22.537567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078319, -0.944051, -0.320365,
		-0.839950, -0.110605, 0.531272,
		-0.536982, 0.310700, -0.784293,
		41.243191, 31.225302, 22.302279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056797, 30.510479, 22.788536>,  <41.619080, 31.007812, 22.851284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056797, 30.510479, 22.788536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091473, 30.685131, 22.430355>,  <41.112278, 30.789923, 22.215446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091473, 30.685131, 22.430355>,  <41.056797, 30.510479, 22.788536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091473, 30.685131, 22.430355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294407, -0.847466, -0.441732,
		-0.951740, 0.301922, 0.055080,
		0.086690, 0.436630, -0.895455,
		41.117481, 30.816120, 22.161718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554367, 30.201778, 22.433973>,  <41.056797, 30.510479, 22.788536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554367, 30.201778, 22.433973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773933, 30.375980, 22.148590>,  <40.905674, 30.480501, 21.977360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773933, 30.375980, 22.148590>,  <40.554367, 30.201778, 22.433973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773933, 30.375980, 22.148590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051540, -0.834288, -0.548915,
		-0.834288, 0.338079, -0.435507,
		0.548915, 0.435507, -0.713460,
		40.938606, 30.506632, 21.934551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211281, 30.144236, 21.854027>,  <40.554367, 30.201778, 22.433973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211281, 30.144236, 21.854027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589695, 30.196705, 21.735497>,  <40.816742, 30.228186, 21.664377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589695, 30.196705, 21.735497>,  <40.211281, 30.144236, 21.854027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589695, 30.196705, 21.735497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043200, -0.855208, -0.516482,
		-0.321169, 0.501411, -0.803391,
		0.946036, 0.131171, -0.296327,
		40.873505, 30.236055, 21.646599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160614, 29.985926, 21.098043>,  <40.211281, 30.144236, 21.854027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160614, 29.985926, 21.098043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540684, 29.941124, 21.214409>,  <40.768726, 29.914244, 21.284227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540684, 29.941124, 21.214409>,  <40.160614, 29.985926, 21.098043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540684, 29.941124, 21.214409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003001, -0.929894, -0.367815,
		0.311713, 0.350360, -0.883223,
		0.950172, -0.112002, 0.290911,
		40.825737, 29.907524, 21.301682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415211, 29.418999, 20.778278>,  <40.160614, 29.985926, 21.098043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415211, 29.418999, 20.778278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702385, 29.438591, 21.056030>,  <40.874691, 29.450346, 21.222681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702385, 29.438591, 21.056030>,  <40.415211, 29.418999, 20.778278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702385, 29.438591, 21.056030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214123, -0.964696, -0.153338,
		0.662357, 0.258770, -0.703080,
		0.717938, 0.048981, 0.694382,
		40.917767, 29.453285, 21.264345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908524, 29.089272, 20.486912>,  <40.415211, 29.418999, 20.778278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908524, 29.089272, 20.486912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985760, 29.075718, 20.879150>,  <41.032101, 29.067587, 21.114494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985760, 29.075718, 20.879150>,  <40.908524, 29.089272, 20.486912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985760, 29.075718, 20.879150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194308, -0.978290, -0.072064,
		0.961749, 0.204452, -0.182314,
		0.193089, -0.033882, 0.980596,
		41.043686, 29.065554, 21.173328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593071, 28.722126, 20.491514>,  <40.908524, 29.089272, 20.486912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593071, 28.722126, 20.491514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406055, 28.670231, 20.841274>,  <41.293846, 28.639093, 21.051130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406055, 28.670231, 20.841274>,  <41.593071, 28.722126, 20.491514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406055, 28.670231, 20.841274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134503, -0.988094, -0.074689,
		0.873680, 0.082690, 0.479422,
		-0.467538, -0.129738, 0.874401,
		41.265793, 28.631310, 21.103594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042805, 28.157232, 20.809460>,  <41.593071, 28.722126, 20.491514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042805, 28.157232, 20.809460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708229, 28.190857, 21.026089>,  <41.507484, 28.211031, 21.156067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708229, 28.190857, 21.026089>,  <42.042805, 28.157232, 20.809460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708229, 28.190857, 21.026089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099505, -0.995037, 0.000762,
		0.538949, -0.053252, 0.840653,
		-0.836440, 0.084059, 0.541573,
		41.457298, 28.216074, 21.188560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072979, 27.657085, 21.321793>,  <42.042805, 28.157232, 20.809460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072979, 27.657085, 21.321793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678463, 27.717861, 21.296055>,  <41.441753, 27.754328, 21.280611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678463, 27.717861, 21.296055>,  <42.072979, 27.657085, 21.321793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678463, 27.717861, 21.296055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156795, -0.984495, 0.078641,
		-0.051400, 0.087653, 0.994824,
		-0.986293, 0.151942, -0.064346,
		41.382576, 27.763443, 21.276751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700283, 27.340773, 21.887794>,  <42.072979, 27.657085, 21.321793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700283, 27.340773, 21.887794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443604, 27.339294, 21.581017>,  <41.289597, 27.338408, 21.396950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443604, 27.339294, 21.581017>,  <41.700283, 27.340773, 21.887794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443604, 27.339294, 21.581017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169577, -0.974555, 0.146580,
		-0.747974, 0.224117, 0.624745,
		-0.641700, -0.003696, -0.766947,
		41.251095, 27.338186, 21.350933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297646, 26.837652, 22.043177>,  <41.700283, 27.340773, 21.887794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297646, 26.837652, 22.043177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174046, 26.917095, 21.671139>,  <41.099888, 26.964760, 21.447916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174046, 26.917095, 21.671139>,  <41.297646, 26.837652, 22.043177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174046, 26.917095, 21.671139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343617, -0.935206, -0.085540,
		-0.886819, 0.293165, 0.357219,
		-0.308996, 0.198606, -0.930095,
		41.081348, 26.976677, 21.392111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532478, 26.614256, 22.021242>,  <41.297646, 26.837652, 22.043177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532478, 26.614256, 22.021242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710911, 26.578430, 21.665043>,  <40.817970, 26.556934, 21.451323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710911, 26.578430, 21.665043>,  <40.532478, 26.614256, 22.021242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710911, 26.578430, 21.665043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305025, -0.950626, -0.057184,
		-0.841411, 0.297134, -0.451375,
		0.446080, -0.089565, -0.890500,
		40.844734, 26.551561, 21.397892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102325, 26.125610, 21.713310>,  <40.532478, 26.614256, 22.021242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102325, 26.125610, 21.713310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428585, 26.124306, 21.481895>,  <40.624340, 26.123522, 21.343046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428585, 26.124306, 21.481895>,  <40.102325, 26.125610, 21.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428585, 26.124306, 21.481895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062408, -0.994645, -0.082375,
		-0.575171, 0.103295, -0.811485,
		0.815649, -0.003264, -0.578538,
		40.673279, 26.123327, 21.308334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993755, 25.612383, 21.066624>,  <40.102325, 26.125610, 21.713310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993755, 25.612383, 21.066624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385208, 25.669151, 21.126141>,  <40.620079, 25.703213, 21.161850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385208, 25.669151, 21.126141>,  <39.993755, 25.612383, 21.066624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385208, 25.669151, 21.126141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156422, -0.983516, -0.090713,
		0.133465, 0.112049, -0.984699,
		0.978631, 0.141921, 0.148792,
		40.678799, 25.711727, 21.170778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301125, 25.089254, 20.609442>,  <39.993755, 25.612383, 21.066624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301125, 25.089254, 20.609442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613194, 25.186924, 20.839817>,  <40.800434, 25.245525, 20.978043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613194, 25.186924, 20.839817>,  <40.301125, 25.089254, 20.609442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613194, 25.186924, 20.839817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390881, -0.909095, -0.144075,
		0.488403, 0.337527, -0.804698,
		0.780176, 0.244174, 0.575938,
		40.847248, 25.260176, 21.012598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752380, 24.677639, 20.268442>,  <40.301125, 25.089254, 20.609442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752380, 24.677639, 20.268442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909412, 24.773434, 20.623638>,  <41.003632, 24.830912, 20.836756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909412, 24.773434, 20.623638>,  <40.752380, 24.677639, 20.268442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909412, 24.773434, 20.623638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269799, -0.953013, 0.137748,
		0.879256, 0.185503, -0.438745,
		0.392577, 0.239489, 0.887991,
		41.027187, 24.845280, 20.890036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488304, 24.518436, 20.295170>,  <40.752380, 24.677639, 20.268442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488304, 24.518436, 20.295170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363220, 24.518986, 20.675110>,  <41.288170, 24.519316, 20.903074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363220, 24.518986, 20.675110>,  <41.488304, 24.518436, 20.295170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363220, 24.518986, 20.675110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326424, -0.938938, 0.108823,
		0.891999, 0.344083, 0.293164,
		-0.312707, 0.001375, 0.949848,
		41.269409, 24.519398, 20.960064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074677, 24.226767, 20.699659>,  <41.488304, 24.518436, 20.295170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074677, 24.226767, 20.699659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728798, 24.199600, 20.898731>,  <41.521271, 24.183300, 21.018175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728798, 24.199600, 20.898731>,  <42.074677, 24.226767, 20.699659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728798, 24.199600, 20.898731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312435, -0.848539, 0.427044,
		0.393299, 0.524756, 0.754948,
		-0.864697, -0.067916, 0.497682,
		41.469387, 24.179226, 21.048037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326527, 24.025551, 21.213594>,  <42.074677, 24.226767, 20.699659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326527, 24.025551, 21.213594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942127, 23.916435, 21.231758>,  <41.711487, 23.850965, 21.242657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942127, 23.916435, 21.231758>,  <42.326527, 24.025551, 21.213594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942127, 23.916435, 21.231758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260377, -0.837230, 0.480885,
		-0.093163, 0.473954, 0.875607,
		-0.961002, -0.272788, 0.045408,
		41.653828, 23.834599, 21.245380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042515, 23.869720, 21.899189>,  <42.326527, 24.025551, 21.213594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042515, 23.869720, 21.899189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812412, 23.658703, 21.649139>,  <41.674351, 23.532093, 21.499111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812412, 23.658703, 21.649139>,  <42.042515, 23.869720, 21.899189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812412, 23.658703, 21.649139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245474, -0.840347, 0.483279,
		-0.780270, 0.124559, 0.612915,
		-0.575258, -0.527543, -0.625122,
		41.639835, 23.500441, 21.461603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743839, 23.439407, 22.315306>,  <42.042515, 23.869720, 21.899189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743839, 23.439407, 22.315306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770405, 23.254406, 21.961655>,  <41.786346, 23.143406, 21.749464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770405, 23.254406, 21.961655>,  <41.743839, 23.439407, 22.315306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770405, 23.254406, 21.961655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347315, -0.819955, 0.455024,
		-0.935394, -0.337292, 0.106175,
		0.066417, -0.462503, -0.884127,
		41.790329, 23.115656, 21.696417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317814, 22.852766, 22.330666>,  <41.743839, 23.439407, 22.315306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317814, 22.852766, 22.330666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594967, 22.784271, 22.050495>,  <41.761257, 22.743174, 21.882393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594967, 22.784271, 22.050495>,  <41.317814, 22.852766, 22.330666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594967, 22.784271, 22.050495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278637, -0.832347, 0.479123,
		-0.665043, -0.527138, -0.529002,
		0.692877, -0.171238, -0.700427,
		41.802830, 22.732901, 21.840366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336857, 22.169777, 22.141773>,  <41.317814, 22.852766, 22.330666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336857, 22.169777, 22.141773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696369, 22.337265, 22.089832>,  <41.912079, 22.437757, 22.058668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696369, 22.337265, 22.089832>,  <41.336857, 22.169777, 22.141773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696369, 22.337265, 22.089832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437814, -0.842120, 0.314886,
		0.022498, -0.339866, -0.940205,
		0.898784, 0.418719, -0.129852,
		41.966003, 22.462881, 22.050877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701359, 22.176250, 22.774059>,  <41.336857, 22.169777, 22.141773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701359, 22.176250, 22.774059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705597, 22.564320, 22.870934>,  <41.708141, 22.797161, 22.929058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705597, 22.564320, 22.870934>,  <41.701359, 22.176250, 22.774059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705597, 22.564320, 22.870934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017343, -0.241985, 0.970125,
		0.999793, -0.014479, 0.014262,
		0.010595, 0.970172, 0.242186,
		41.708775, 22.855371, 22.943590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517834, 22.734406, 23.406328>,  <41.701359, 22.176250, 22.774059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517834, 22.734406, 23.406328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187332, 22.791569, 23.624275>,  <40.989033, 22.825867, 23.755043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187332, 22.791569, 23.624275>,  <41.517834, 22.734406, 23.406328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187332, 22.791569, 23.624275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392120, -0.840362, -0.374209,
		0.404409, -0.522846, 0.750390,
		-0.826253, 0.142909, 0.544869,
		40.939457, 22.834442, 23.787735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187820, 23.386852, 23.518612>,  <41.517834, 22.734406, 23.406328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187820, 23.386852, 23.518612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090771, 23.235287, 23.875835>,  <41.032539, 23.144346, 24.090170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090771, 23.235287, 23.875835>,  <41.187820, 23.386852, 23.518612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090771, 23.235287, 23.875835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530270, 0.822675, 0.204988,
		-0.812371, -0.423827, -0.400529,
		-0.242626, -0.378915, 0.893060,
		41.017982, 23.121613, 24.143753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413601, 23.276323, 23.551533>,  <41.187820, 23.386852, 23.518612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413601, 23.276323, 23.551533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563244, 23.317505, 23.920193>,  <40.653030, 23.342215, 24.141390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563244, 23.317505, 23.920193>,  <40.413601, 23.276323, 23.551533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563244, 23.317505, 23.920193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426302, 0.901686, 0.072316,
		-0.823595, -0.419956, 0.381219,
		0.374109, 0.102955, 0.921652,
		40.675476, 23.348391, 24.196688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869068, 23.469011, 23.971504>,  <40.413601, 23.276323, 23.551533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869068, 23.469011, 23.971504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163670, 23.616665, 24.198238>,  <40.340431, 23.705257, 24.334280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163670, 23.616665, 24.198238>,  <39.869068, 23.469011, 23.971504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163670, 23.616665, 24.198238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533623, 0.832042, 0.151503,
		-0.415707, -0.414060, 0.809779,
		0.736501, 0.369136, 0.566837,
		40.384621, 23.727406, 24.368290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649643, 23.584616, 24.769609>,  <39.869068, 23.469011, 23.971504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649643, 23.584616, 24.769609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928738, 23.820415, 24.606808>,  <40.096195, 23.961895, 24.509127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928738, 23.820415, 24.606808>,  <39.649643, 23.584616, 24.769609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928738, 23.820415, 24.606808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626548, 0.777632, 0.052205,
		0.347275, 0.218583, 0.911933,
		0.697737, 0.589500, -0.407005,
		40.138058, 23.997265, 24.484707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847820, 24.131205, 25.180233>,  <39.649643, 23.584616, 24.769609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847820, 24.131205, 25.180233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883041, 24.225578, 24.793125>,  <39.904175, 24.282202, 24.560860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883041, 24.225578, 24.793125>,  <39.847820, 24.131205, 25.180233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883041, 24.225578, 24.793125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682546, 0.721914, 0.113893,
		0.725519, 0.650521, 0.224600,
		0.088052, 0.235931, -0.967773,
		39.909458, 24.296358, 24.502794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982861, 24.829041, 25.193830>,  <39.847820, 24.131205, 25.180233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982861, 24.829041, 25.193830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870377, 24.774910, 24.813808>,  <39.802887, 24.742432, 24.585794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870377, 24.774910, 24.813808>,  <39.982861, 24.829041, 25.193830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870377, 24.774910, 24.813808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385883, 0.922388, -0.017167,
		0.878644, 0.361784, -0.311603,
		-0.281208, -0.135326, -0.950057,
		39.786015, 24.734312, 24.528791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111591, 25.503269, 24.910149>,  <39.982861, 24.829041, 25.193830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111591, 25.503269, 24.910149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856804, 25.321243, 24.661251>,  <39.703934, 25.212027, 24.511911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856804, 25.321243, 24.661251>,  <40.111591, 25.503269, 24.910149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856804, 25.321243, 24.661251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453544, 0.873914, -0.174846,
		0.623355, 0.170845, -0.763047,
		-0.636966, -0.455067, -0.622245,
		39.665714, 25.184723, 24.474577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116005, 25.856150, 24.208586>,  <40.111591, 25.503269, 24.910149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116005, 25.856150, 24.208586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771019, 25.653748, 24.212975>,  <39.564030, 25.532307, 24.215609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771019, 25.653748, 24.212975>,  <40.116005, 25.856150, 24.208586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771019, 25.653748, 24.212975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482198, 0.814908, -0.321576,
		0.153777, -0.282638, -0.946820,
		-0.862460, -0.506006, 0.010973,
		39.512280, 25.501945, 24.216267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868176, 26.002102, 23.562651>,  <40.116005, 25.856150, 24.208586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868176, 26.002102, 23.562651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553665, 25.856060, 23.762039>,  <39.364960, 25.768435, 23.881672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553665, 25.856060, 23.762039>,  <39.868176, 26.002102, 23.562651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553665, 25.856060, 23.762039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565477, 0.750339, -0.342385,
		-0.249015, -0.551081, -0.796430,
		-0.786274, -0.365104, 0.498470,
		39.317783, 25.746529, 23.911579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356934, 26.070517, 23.247295>,  <39.868176, 26.002102, 23.562651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356934, 26.070517, 23.247295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127094, 26.030167, 23.572174>,  <38.989193, 26.005957, 23.767101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127094, 26.030167, 23.572174>,  <39.356934, 26.070517, 23.247295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127094, 26.030167, 23.572174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516141, 0.814820, -0.263946,
		-0.635168, -0.570870, -0.520259,
		-0.574596, -0.100877, 0.812197,
		38.954716, 25.999903, 23.815832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577530, 26.054949, 23.089159>,  <39.356934, 26.070517, 23.247295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577530, 26.054949, 23.089159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632397, 26.169846, 23.468353>,  <38.665318, 26.238783, 23.695869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632397, 26.169846, 23.468353>,  <38.577530, 26.054949, 23.089159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632397, 26.169846, 23.468353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324729, 0.917184, -0.230922,
		-0.935808, -0.276165, 0.219081,
		0.137165, 0.287241, 0.947987,
		38.673546, 26.256018, 23.752748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994045, 26.583448, 23.224642>,  <38.577530, 26.054949, 23.089159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994045, 26.583448, 23.224642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270130, 26.659203, 23.503994>,  <38.435783, 26.704655, 23.671606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270130, 26.659203, 23.503994>,  <37.994045, 26.583448, 23.224642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270130, 26.659203, 23.503994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222702, 0.973893, -0.043997,
		-0.688481, -0.125164, 0.714372,
		0.690216, 0.189383, 0.698381,
		38.477196, 26.716017, 23.713509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675976, 27.058899, 23.731939>,  <37.994045, 26.583448, 23.224642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675976, 27.058899, 23.731939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071648, 27.095695, 23.777657>,  <38.309052, 27.117773, 23.805088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071648, 27.095695, 23.777657>,  <37.675976, 27.058899, 23.731939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071648, 27.095695, 23.777657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089517, 0.995630, -0.026599,
		-0.116242, 0.016080, 0.993091,
		0.989179, 0.091990, 0.114294,
		38.368401, 27.123293, 23.811945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765171, 27.702574, 24.096367>,  <37.675976, 27.058899, 23.731939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765171, 27.702574, 24.096367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136902, 27.647461, 23.959332>,  <38.359940, 27.614393, 23.877111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136902, 27.647461, 23.959332>,  <37.765171, 27.702574, 24.096367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136902, 27.647461, 23.959332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062138, 0.972899, -0.222725,
		0.363991, 0.185697, 0.912703,
		0.929327, -0.137784, -0.342587,
		38.415699, 27.606125, 23.856556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165436, 28.291437, 24.382877>,  <37.765171, 27.702574, 24.096367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165436, 28.291437, 24.382877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370453, 28.156773, 24.066914>,  <38.493465, 28.075974, 23.877335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370453, 28.156773, 24.066914>,  <38.165436, 28.291437, 24.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370453, 28.156773, 24.066914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122430, 0.939187, -0.320841,
		0.849887, 0.067738, 0.522594,
		0.512546, -0.336660, -0.789909,
		38.524216, 28.055775, 23.829941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665398, 28.690163, 24.423111>,  <38.165436, 28.291437, 24.382877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665398, 28.690163, 24.423111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666111, 28.542431, 24.051392>,  <38.666538, 28.453791, 23.828360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666111, 28.542431, 24.051392>,  <38.665398, 28.690163, 24.423111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666111, 28.542431, 24.051392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108944, 0.923838, -0.366953,
		0.994046, -0.100589, 0.041880,
		0.001779, -0.369331, -0.929296,
		38.666645, 28.431631, 23.772602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234402, 29.067280, 24.122776>,  <38.665398, 28.690163, 24.423111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234402, 29.067280, 24.122776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002399, 28.930954, 23.826820>,  <38.863197, 28.849159, 23.649246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002399, 28.930954, 23.826820>,  <39.234402, 29.067280, 24.122776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002399, 28.930954, 23.826820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037266, 0.918423, -0.393840,
		0.813759, -0.200857, -0.545393,
		-0.580007, -0.340815, -0.739890,
		38.828396, 28.828709, 23.604853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414547, 29.501463, 23.542398>,  <39.234402, 29.067280, 24.122776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414547, 29.501463, 23.542398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085091, 29.331303, 23.392387>,  <38.887417, 29.229206, 23.302382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085091, 29.331303, 23.392387>,  <39.414547, 29.501463, 23.542398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085091, 29.331303, 23.392387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195256, 0.833586, -0.516730,
		0.532436, -0.352375, -0.769639,
		-0.823643, -0.425402, -0.375028,
		38.837997, 29.203682, 23.279879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382187, 29.505766, 22.787432>,  <39.414547, 29.501463, 23.542398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382187, 29.505766, 22.787432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999756, 29.517738, 22.904060>,  <38.770298, 29.524921, 22.974037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999756, 29.517738, 22.904060>,  <39.382187, 29.505766, 22.787432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999756, 29.517738, 22.904060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092637, 0.912923, -0.397480,
		-0.278077, -0.407034, -0.870055,
		-0.956081, 0.029931, 0.291569,
		38.712933, 29.526718, 22.991531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043270, 29.718294, 22.151516>,  <39.382187, 29.505766, 22.787432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043270, 29.718294, 22.151516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809631, 29.814117, 22.461727>,  <38.669449, 29.871611, 22.647854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.809631, 29.814117, 22.461727>,  <39.043270, 29.718294, 22.151516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809631, 29.814117, 22.461727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234395, 0.864969, -0.443720,
		-0.777106, -0.440955, -0.449072,
		-0.584094, 0.239557, 0.775530,
		38.634403, 29.885984, 22.694386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754242, 30.194328, 21.838478>,  <39.043270, 29.718294, 22.151516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754242, 30.194328, 21.838478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625916, 30.247311, 22.213612>,  <38.548920, 30.279100, 22.438692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625916, 30.247311, 22.213612>,  <38.754242, 30.194328, 21.838478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625916, 30.247311, 22.213612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125303, 0.975534, -0.180644,
		-0.938817, -0.175467, -0.296369,
		-0.320815, 0.132455, 0.937835,
		38.529671, 30.287046, 22.494963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139175, 30.548588, 21.849606>,  <38.754242, 30.194328, 21.838478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139175, 30.548588, 21.849606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299580, 30.596985, 22.212826>,  <38.395821, 30.626024, 22.430758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299580, 30.596985, 22.212826>,  <38.139175, 30.548588, 21.849606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299580, 30.596985, 22.212826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047735, 0.992652, -0.111187,
		-0.914830, 0.001241, 0.403837,
		0.401008, 0.120994, 0.908049,
		38.419884, 30.633284, 22.485241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790565, 31.119579, 22.069191>,  <38.139175, 30.548588, 21.849606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790565, 31.119579, 22.069191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106403, 31.096657, 22.313572>,  <38.295906, 31.082903, 22.460199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106403, 31.096657, 22.313572>,  <37.790565, 31.119579, 22.069191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106403, 31.096657, 22.313572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081344, 0.996618, -0.011649,
		-0.608216, 0.058895, 0.791584,
		0.789593, -0.057306, 0.610950,
		38.343281, 31.079466, 22.496857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737785, 31.650032, 22.580313>,  <37.790565, 31.119579, 22.069191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737785, 31.650032, 22.580313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125153, 31.550388, 22.576286>,  <38.357574, 31.490602, 22.573870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125153, 31.550388, 22.576286>,  <37.737785, 31.650032, 22.580313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125153, 31.550388, 22.576286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242671, 0.951105, -0.191076,
		0.057173, 0.182600, 0.981524,
		0.968423, -0.249111, -0.010066,
		38.415680, 31.475655, 22.573267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996342, 32.001545, 23.231110>,  <37.737785, 31.650032, 22.580313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996342, 32.001545, 23.231110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296947, 31.926155, 22.978222>,  <38.477310, 31.880920, 22.826488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296947, 31.926155, 22.978222>,  <37.996342, 32.001545, 23.231110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296947, 31.926155, 22.978222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275639, 0.960372, 0.041347,
		0.599372, -0.205337, 0.773686,
		0.751516, -0.188476, -0.632218,
		38.522404, 31.869612, 22.788557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563786, 32.313652, 23.578148>,  <37.996342, 32.001545, 23.231110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563786, 32.313652, 23.578148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649570, 32.299538, 23.187710>,  <38.701042, 32.291069, 22.953447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649570, 32.299538, 23.187710>,  <38.563786, 32.313652, 23.578148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649570, 32.299538, 23.187710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363037, 0.930632, 0.046125,
		0.906757, -0.364251, 0.212398,
		0.214465, -0.035284, -0.976094,
		38.713909, 32.288952, 22.894882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970669, 32.388618, 23.993721>,  <38.563786, 32.313652, 23.578148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970669, 32.388618, 23.993721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775574, 32.111515, 23.781231>,  <37.658516, 31.945253, 23.653738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775574, 32.111515, 23.781231>,  <37.970669, 32.388618, 23.993721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775574, 32.111515, 23.781231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746802, -0.646231, 0.157071,
		-0.452105, -0.320109, 0.832545,
		-0.487737, -0.692759, -0.531223,
		37.629253, 31.903687, 23.621864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736938, 31.922581, 24.454090>,  <37.970669, 32.388618, 23.993721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736938, 31.922581, 24.454090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857056, 31.769058, 24.104801>,  <37.929127, 31.676945, 23.895227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857056, 31.769058, 24.104801>,  <37.736938, 31.922581, 24.454090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857056, 31.769058, 24.104801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469001, -0.737753, 0.485549,
		-0.830579, -0.555350, -0.041539,
		0.300295, -0.383805, -0.873222,
		37.947144, 31.653917, 23.842834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830318, 32.375977, 24.994293>,  <37.736938, 31.922581, 24.454090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830318, 32.375977, 24.994293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454166, 32.333817, 25.123642>,  <37.228474, 32.308521, 25.201252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454166, 32.333817, 25.123642>,  <37.830318, 32.375977, 24.994293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454166, 32.333817, 25.123642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245187, 0.448853, 0.859310,
		-0.235716, 0.887368, -0.396252,
		-0.940384, -0.105398, 0.323373,
		37.172050, 32.302197, 25.220654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425343, 32.663162, 25.654573>,  <37.830318, 32.375977, 24.994293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425343, 32.663162, 25.654573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159794, 32.865368, 25.434128>,  <37.000465, 32.986691, 25.301861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159794, 32.865368, 25.434128>,  <37.425343, 32.663162, 25.654573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159794, 32.865368, 25.434128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442824, -0.859577, -0.255020,
		-0.602640, 0.074744, 0.794505,
		-0.663877, 0.505511, -0.551114,
		36.960632, 33.017021, 25.268793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772350, 32.319244, 25.829639>,  <37.425343, 32.663162, 25.654573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772350, 32.319244, 25.829639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778416, 32.535130, 25.492954>,  <36.782055, 32.664661, 25.290943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778416, 32.535130, 25.492954>,  <36.772350, 32.319244, 25.829639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778416, 32.535130, 25.492954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341250, -0.788475, -0.511718,
		-0.939850, 0.294993, 0.172222,
		0.015160, 0.539710, -0.841715,
		36.782963, 32.697041, 25.240440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170834, 32.633057, 26.254503>,  <36.772350, 32.319244, 25.829639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170834, 32.633057, 26.254503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871643, 32.758503, 26.488487>,  <35.692131, 32.833771, 26.628878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871643, 32.758503, 26.488487>,  <36.170834, 32.633057, 26.254503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871643, 32.758503, 26.488487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496005, -0.849742, -0.178653,
		0.441038, -0.423772, 0.791140,
		-0.747974, 0.313617, 0.584961,
		35.647251, 32.852589, 26.663975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995953, 32.151432, 26.679613>,  <36.170834, 32.633057, 26.254503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995953, 32.151432, 26.679613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674137, 32.381222, 26.619347>,  <35.481049, 32.519096, 26.583187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674137, 32.381222, 26.619347>,  <35.995953, 32.151432, 26.679613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674137, 32.381222, 26.619347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553074, -0.817152, -0.162394,
		-0.216407, -0.047323, 0.975156,
		-0.804536, 0.574476, -0.150664,
		35.432777, 32.553566, 26.574148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498959, 31.797337, 26.890715>,  <35.995953, 32.151432, 26.679613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498959, 31.797337, 26.890715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281593, 32.049622, 26.669121>,  <35.151173, 32.200993, 26.536163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281593, 32.049622, 26.669121>,  <35.498959, 31.797337, 26.890715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281593, 32.049622, 26.669121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663301, -0.727084, -0.177144,
		-0.514522, 0.271197, 0.813462,
		-0.543414, 0.630714, -0.553986,
		35.118568, 32.238834, 26.502926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746723, 31.693729, 27.122536>,  <35.498959, 31.797337, 26.890715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746723, 31.693729, 27.122536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737064, 31.847652, 26.753464>,  <34.731270, 31.940006, 26.532021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737064, 31.847652, 26.753464>,  <34.746723, 31.693729, 27.122536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737064, 31.847652, 26.753464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604132, -0.740977, -0.293221,
		-0.796519, 0.550341, 0.250365,
		-0.024143, 0.384809, -0.922680,
		34.729820, 31.963095, 26.476660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067017, 31.906450, 27.078756>,  <34.746723, 31.693729, 27.122536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067017, 31.906450, 27.078756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220821, 31.852791, 26.713428>,  <34.313107, 31.820595, 26.494232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220821, 31.852791, 26.713428>,  <34.067017, 31.906450, 27.078756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220821, 31.852791, 26.713428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671786, -0.719241, -0.177188,
		-0.633128, 0.681687, -0.366678,
		0.384516, -0.134147, -0.913319,
		34.336178, 31.812548, 26.439432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493835, 32.060745, 26.639782>,  <34.067017, 31.906450, 27.078756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493835, 32.060745, 26.639782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752232, 31.828072, 26.442062>,  <33.907269, 31.688467, 26.323431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752232, 31.828072, 26.442062>,  <33.493835, 32.060745, 26.639782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752232, 31.828072, 26.442062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749222, -0.607131, -0.264685,
		-0.146141, 0.541326, -0.828016,
		0.645995, -0.581686, -0.494300,
		33.946030, 31.653566, 26.293772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141281, 31.919575, 26.012091>,  <33.493835, 32.060745, 26.639782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141281, 31.919575, 26.012091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435757, 31.650444, 26.041294>,  <33.612442, 31.488966, 26.058817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435757, 31.650444, 26.041294>,  <33.141281, 31.919575, 26.012091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435757, 31.650444, 26.041294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669054, -0.739793, -0.071229,
		0.101936, 0.003591, -0.994784,
		0.736190, -0.672825, 0.073009,
		33.656612, 31.448597, 26.063196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862404, 31.378342, 25.602718>,  <33.141281, 31.919575, 26.012091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862404, 31.378342, 25.602718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159649, 31.214798, 25.814610>,  <33.337997, 31.116673, 25.941744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159649, 31.214798, 25.814610>,  <32.862404, 31.378342, 25.602718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159649, 31.214798, 25.814610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438711, -0.895435, -0.075687,
		0.505283, -0.176154, -0.844783,
		0.743116, -0.408859, 0.529729,
		33.382584, 31.092140, 25.973528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915569, 30.775839, 25.310362>,  <32.862404, 31.378342, 25.602718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915569, 30.775839, 25.310362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126835, 30.709766, 25.643532>,  <33.253593, 30.670122, 25.843433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126835, 30.709766, 25.643532>,  <32.915569, 30.775839, 25.310362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126835, 30.709766, 25.643532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493429, -0.857995, 0.142733,
		0.691067, -0.486374, -0.534665,
		0.528162, -0.165181, 0.832923,
		33.285282, 30.660212, 25.893408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103642, 30.054937, 25.194038>,  <32.915569, 30.775839, 25.310362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103642, 30.054937, 25.194038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129227, 30.156284, 25.580139>,  <33.144577, 30.217093, 25.811800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129227, 30.156284, 25.580139>,  <33.103642, 30.054937, 25.194038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129227, 30.156284, 25.580139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690382, -0.687196, 0.226130,
		0.720612, -0.680857, 0.130968,
		0.063961, 0.253370, 0.965253,
		33.148415, 30.232296, 25.869715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967510, 29.391582, 25.590883>,  <33.103642, 30.054937, 25.194038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967510, 29.391582, 25.590883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951344, 29.640038, 25.903946>,  <32.941643, 29.789110, 26.091784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951344, 29.640038, 25.903946>,  <32.967510, 29.391582, 25.590883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951344, 29.640038, 25.903946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515567, -0.683935, 0.516163,
		0.855896, -0.382651, 0.347880,
		-0.040417, 0.621137, 0.782659,
		32.939217, 29.826378, 26.138744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380100, 29.097252, 26.129608>,  <32.967510, 29.391582, 25.590883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380100, 29.097252, 26.129608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126614, 29.347939, 26.310993>,  <32.974522, 29.498352, 26.419825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126614, 29.347939, 26.310993>,  <33.380100, 29.097252, 26.129608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126614, 29.347939, 26.310993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344907, -0.753619, 0.559550,
		0.692418, 0.198194, 0.693741,
		-0.633716, 0.626719, 0.453461,
		32.936501, 29.535954, 26.447031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480999, 29.025673, 26.853849>,  <33.380100, 29.097252, 26.129608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480999, 29.025673, 26.853849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109261, 29.162022, 26.797100>,  <32.886219, 29.243832, 26.763050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109261, 29.162022, 26.797100>,  <33.480999, 29.025673, 26.853849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109261, 29.162022, 26.797100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359737, -0.749425, 0.555834,
		0.083144, 0.567598, 0.819097,
		-0.929342, 0.340873, -0.141876,
		32.830460, 29.264284, 26.754538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177910, 28.972288, 27.570618>,  <33.480999, 29.025673, 26.853849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177910, 28.972288, 27.570618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857773, 29.013817, 27.334427>,  <32.665691, 29.038734, 27.192713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857773, 29.013817, 27.334427>,  <33.177910, 28.972288, 27.570618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857773, 29.013817, 27.334427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417505, -0.803345, 0.424648,
		-0.430271, 0.586394, 0.686300,
		-0.800347, 0.103820, -0.590479,
		32.617668, 29.044962, 27.157284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600273, 28.979073, 28.041061>,  <33.177910, 28.972288, 27.570618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600273, 28.979073, 28.041061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451763, 28.884483, 27.681900>,  <32.362656, 28.827730, 27.466402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451763, 28.884483, 27.681900>,  <32.600273, 28.979073, 28.041061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451763, 28.884483, 27.681900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618188, -0.658595, 0.429065,
		-0.692819, 0.714376, 0.098335,
		-0.371276, -0.236475, -0.897905,
		32.340382, 28.813541, 27.412529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887691, 28.904333, 28.193539>,  <32.600273, 28.979073, 28.041061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887691, 28.904333, 28.193539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956476, 28.705601, 27.853283>,  <31.997747, 28.586361, 27.649130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956476, 28.705601, 27.853283>,  <31.887691, 28.904333, 28.193539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956476, 28.705601, 27.853283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555183, -0.762185, 0.332935,
		-0.813757, 0.415007, -0.406901,
		0.171963, -0.496833, -0.850639,
		32.008064, 28.556551, 27.598091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241125, 28.573013, 28.069864>,  <31.887691, 28.904333, 28.193539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241125, 28.573013, 28.069864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503254, 28.366543, 27.849277>,  <31.660530, 28.242661, 27.716927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503254, 28.366543, 27.849277>,  <31.241125, 28.573013, 28.069864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503254, 28.366543, 27.849277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444087, -0.853858, 0.271501,
		-0.611017, 0.066979, -0.788779,
		0.655321, -0.516179, -0.551466,
		31.699850, 28.211689, 27.683838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897045, 28.041294, 28.017847>,  <31.241125, 28.573013, 28.069864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897045, 28.041294, 28.017847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264193, 27.911442, 27.926514>,  <31.484480, 27.833530, 27.871714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264193, 27.911442, 27.926514>,  <30.897045, 28.041294, 28.017847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264193, 27.911442, 27.926514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225358, -0.899860, 0.373450,
		-0.326702, -0.291320, -0.899110,
		0.917867, -0.324629, -0.228335,
		31.539553, 27.814053, 27.858013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810238, 27.315153, 27.698103>,  <30.897045, 28.041294, 28.017847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810238, 27.315153, 27.698103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187145, 27.339592, 27.829800>,  <31.413290, 27.354256, 27.908817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187145, 27.339592, 27.829800>,  <30.810238, 27.315153, 27.698103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187145, 27.339592, 27.829800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082621, -0.910400, 0.405396,
		0.324509, -0.409194, -0.852792,
		0.942267, 0.061097, 0.329241,
		31.469826, 27.357922, 27.928572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307447, 26.887346, 27.241600>,  <30.810238, 27.315153, 27.698103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307447, 26.887346, 27.241600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474689, 26.947369, 27.599968>,  <31.575035, 26.983381, 27.814989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474689, 26.947369, 27.599968>,  <31.307447, 26.887346, 27.241600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474689, 26.947369, 27.599968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013181, -0.985156, 0.171154,
		0.908303, -0.083369, -0.409921,
		0.418105, 0.150056, 0.895919,
		31.600121, 26.992386, 27.868744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799978, 26.267673, 27.406891>,  <31.307447, 26.887346, 27.241600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799978, 26.267673, 27.406891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663406, 26.430290, 27.745865>,  <31.581463, 26.527861, 27.949249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663406, 26.430290, 27.745865>,  <31.799978, 26.267673, 27.406891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663406, 26.430290, 27.745865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106049, -0.912522, 0.395041,
		0.933905, 0.045009, 0.354676,
		-0.341430, 0.406544, 0.847436,
		31.560978, 26.552254, 28.000095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982592, 25.771175, 27.786888>,  <31.799978, 26.267673, 27.406891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982592, 25.771175, 27.786888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765448, 25.989967, 28.041798>,  <31.635160, 26.121243, 28.194742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765448, 25.989967, 28.041798>,  <31.982592, 25.771175, 27.786888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765448, 25.989967, 28.041798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147436, -0.809104, 0.568871,
		0.826780, 0.214861, 0.519875,
		-0.542861, 0.546979, 0.637273,
		31.602589, 26.154060, 28.232979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255718, 25.620558, 28.396675>,  <31.982592, 25.771175, 27.786888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255718, 25.620558, 28.396675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896589, 25.763195, 28.500031>,  <31.681112, 25.848778, 28.562044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896589, 25.763195, 28.500031>,  <32.255718, 25.620558, 28.396675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896589, 25.763195, 28.500031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141673, -0.789453, 0.597237,
		0.416956, 0.499604, 0.759305,
		-0.897818, 0.356595, 0.258386,
		31.627243, 25.870174, 28.577547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156155, 25.559998, 29.096151>,  <32.255718, 25.620558, 28.396675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156155, 25.559998, 29.096151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772173, 25.598347, 28.990860>,  <31.541782, 25.621355, 28.927685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772173, 25.598347, 28.990860>,  <32.156155, 25.559998, 29.096151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772173, 25.598347, 28.990860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230114, -0.805747, 0.545728,
		-0.159776, 0.584449, 0.795545,
		-0.959958, 0.095871, -0.263228,
		31.484186, 25.627108, 28.911892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841860, 25.550529, 29.751188>,  <32.156155, 25.559998, 29.096151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841860, 25.550529, 29.751188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566597, 25.450623, 29.478703>,  <31.401440, 25.390678, 29.315210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566597, 25.450623, 29.478703>,  <31.841860, 25.550529, 29.751188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566597, 25.450623, 29.478703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258665, -0.792738, 0.551959,
		-0.677887, 0.556041, 0.480923,
		-0.688158, -0.249768, -0.681215,
		31.360149, 25.375692, 29.274338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288027, 25.448122, 30.208387>,  <31.841860, 25.550529, 29.751188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288027, 25.448122, 30.208387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169636, 25.284615, 29.863064>,  <31.098600, 25.186510, 29.655869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169636, 25.284615, 29.863064>,  <31.288027, 25.448122, 30.208387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169636, 25.284615, 29.863064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334130, -0.802399, 0.494483,
		-0.894848, 0.434815, 0.100911,
		-0.295979, -0.408770, -0.863310,
		31.080841, 25.161983, 29.604071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576181, 25.332527, 30.303343>,  <31.288027, 25.448122, 30.208387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576181, 25.332527, 30.303343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691767, 25.079357, 30.016037>,  <30.761118, 24.927454, 29.843653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691767, 25.079357, 30.016037>,  <30.576181, 25.332527, 30.303343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691767, 25.079357, 30.016037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378346, -0.764694, 0.521629,
		-0.879407, 0.121023, -0.460432,
		0.288961, -0.632926, -0.718266,
		30.778456, 24.889479, 29.800558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133904, 24.874777, 30.343740>,  <30.576181, 25.332527, 30.303343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133904, 24.874777, 30.343740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395014, 24.670940, 30.119526>,  <30.551680, 24.548639, 29.984997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395014, 24.670940, 30.119526>,  <30.133904, 24.874777, 30.343740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395014, 24.670940, 30.119526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230539, -0.838469, 0.493783,
		-0.721620, -0.193103, -0.664812,
		0.652776, -0.509589, -0.560538,
		30.590847, 24.518064, 29.951365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698256, 24.429565, 30.062489>,  <30.133904, 24.874777, 30.343740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698256, 24.429565, 30.062489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075151, 24.299706, 30.095448>,  <30.301289, 24.221788, 30.115223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075151, 24.299706, 30.095448>,  <29.698256, 24.429565, 30.062489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075151, 24.299706, 30.095448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321890, -0.809666, 0.490742,
		-0.092605, -0.488919, -0.867400,
		0.942237, -0.324652, 0.082399,
		30.357822, 24.202311, 30.120167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723186, 23.676922, 29.903267>,  <29.698256, 24.429565, 30.062489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723186, 23.676922, 29.903267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048048, 23.744865, 30.126534>,  <30.242966, 23.785631, 30.260494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048048, 23.744865, 30.126534>,  <29.723186, 23.676922, 29.903267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048048, 23.744865, 30.126534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255326, -0.756735, 0.601798,
		0.524607, -0.631268, -0.571216,
		0.812155, 0.169861, 0.558168,
		30.291695, 23.795824, 30.293983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999557, 23.069794, 29.904165>,  <29.723186, 23.676922, 29.903267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999557, 23.069794, 29.904165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205412, 23.203278, 30.220085>,  <30.328924, 23.283367, 30.409637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205412, 23.203278, 30.220085>,  <29.999557, 23.069794, 29.904165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205412, 23.203278, 30.220085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081721, -0.897866, 0.432618,
		0.853505, -0.287185, -0.434804,
		0.514637, 0.333708, 0.789802,
		30.359802, 23.303391, 30.457026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437168, 22.517826, 30.155642>,  <29.999557, 23.069794, 29.904165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437168, 22.517826, 30.155642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468706, 22.756760, 30.474884>,  <30.487629, 22.900120, 30.666430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468706, 22.756760, 30.474884>,  <30.437168, 22.517826, 30.155642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468706, 22.756760, 30.474884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109030, -0.800964, 0.588702,
		0.990907, 0.040600, -0.128280,
		0.078846, 0.597335, 0.798107,
		30.492359, 22.935961, 30.714315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036831, 22.313000, 30.569981>,  <30.437168, 22.517826, 30.155642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036831, 22.313000, 30.569981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794500, 22.516941, 30.814281>,  <30.649101, 22.639305, 30.960863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.794500, 22.516941, 30.814281>,  <31.036831, 22.313000, 30.569981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794500, 22.516941, 30.814281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007936, -0.763759, 0.645453,
		0.795556, 0.395881, 0.458660,
		-0.605828, 0.509854, 0.610754,
		30.612751, 22.669897, 30.997507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261749, 22.184982, 31.276911>,  <31.036831, 22.313000, 30.569981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261749, 22.184982, 31.276911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888597, 22.323250, 31.317406>,  <30.664707, 22.406210, 31.341702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.888597, 22.323250, 31.317406>,  <31.261749, 22.184982, 31.276911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888597, 22.323250, 31.317406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203481, -0.737681, 0.643756,
		0.297207, 0.579947, 0.758505,
		-0.932879, 0.345670, 0.101236,
		30.608734, 22.426950, 31.347776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132160, 22.294012, 31.994957>,  <31.261749, 22.184982, 31.276911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132160, 22.294012, 31.994957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783743, 22.245667, 31.804516>,  <30.574692, 22.216660, 31.690252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783743, 22.245667, 31.804516>,  <31.132160, 22.294012, 31.994957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783743, 22.245667, 31.804516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303094, -0.630486, 0.714577,
		-0.386542, 0.766732, 0.512548,
		-0.871045, -0.120864, -0.476102,
		30.522430, 22.209408, 31.661686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618153, 22.438181, 32.504879>,  <31.132160, 22.294012, 31.994957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618153, 22.438181, 32.504879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465321, 22.207623, 32.215942>,  <30.373621, 22.069288, 32.042580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465321, 22.207623, 32.215942>,  <30.618153, 22.438181, 32.504879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465321, 22.207623, 32.215942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361964, -0.625854, 0.690861,
		-0.850292, 0.525427, 0.030492,
		-0.382080, -0.576397, -0.722345,
		30.350697, 22.034704, 31.999239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052052, 22.337147, 32.781155>,  <30.618153, 22.438181, 32.504879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052052, 22.337147, 32.781155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046286, 22.071060, 32.482552>,  <30.042826, 21.911407, 32.303391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046286, 22.071060, 32.482552>,  <30.052052, 22.337147, 32.781155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046286, 22.071060, 32.482552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520287, -0.632564, 0.573728,
		-0.853870, 0.396670, -0.336985,
		-0.014416, -0.665218, -0.746510,
		30.041960, 21.871494, 32.258598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392002, 22.062290, 32.727581>,  <30.052052, 22.337147, 32.781155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392002, 22.062290, 32.727581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612982, 21.775097, 32.558208>,  <29.745569, 21.602781, 32.456585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612982, 21.775097, 32.558208>,  <29.392002, 22.062290, 32.727581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612982, 21.775097, 32.558208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393457, -0.672455, 0.626893,
		-0.734839, -0.179726, -0.653996,
		0.552452, -0.717985, -0.423432,
		29.778717, 21.559702, 32.431179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863575, 21.382195, 32.716705>,  <29.392002, 22.062290, 32.727581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863575, 21.382195, 32.716705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243618, 21.270287, 32.661530>,  <29.471643, 21.203142, 32.628426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243618, 21.270287, 32.661530>,  <28.863575, 21.382195, 32.716705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243618, 21.270287, 32.661530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169495, -0.834278, 0.524644,
		-0.261860, -0.475087, -0.840072,
		0.950105, -0.279772, -0.137939,
		29.528650, 21.186356, 32.620148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806911, 20.780497, 32.406162>,  <28.863575, 21.382195, 32.716705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806911, 20.780497, 32.406162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172672, 20.801876, 32.566666>,  <29.392128, 20.814703, 32.662968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172672, 20.801876, 32.566666>,  <28.806911, 20.780497, 32.406162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172672, 20.801876, 32.566666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141489, -0.886527, 0.440512,
		0.379274, -0.459579, -0.803081,
		0.914403, 0.053447, 0.401262,
		29.446993, 20.817911, 32.687046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095400, 20.194946, 32.346992>,  <28.806911, 20.780497, 32.406162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095400, 20.194946, 32.346992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344740, 20.342518, 32.622768>,  <29.494345, 20.431061, 32.788235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344740, 20.342518, 32.622768>,  <29.095400, 20.194946, 32.346992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344740, 20.342518, 32.622768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258254, -0.735088, 0.626858,
		0.738063, -0.568803, -0.362942,
		0.623352, 0.368929, 0.689436,
		29.531746, 20.453197, 32.829601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484352, 19.589762, 32.537804>,  <29.095400, 20.194946, 32.346992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484352, 19.589762, 32.537804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525547, 19.842670, 32.844952>,  <29.550264, 19.994415, 33.029240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525547, 19.842670, 32.844952>,  <29.484352, 19.589762, 32.537804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525547, 19.842670, 32.844952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118545, -0.758673, 0.640595,
		0.987593, -0.157001, -0.003181,
		0.102987, 0.632270, 0.767873,
		29.556444, 20.032351, 33.075314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943586, 19.266386, 33.124271>,  <29.484352, 19.589762, 32.537804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943586, 19.266386, 33.124271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710718, 19.535686, 33.306618>,  <29.570997, 19.697266, 33.416027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710718, 19.535686, 33.306618>,  <29.943586, 19.266386, 33.124271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710718, 19.535686, 33.306618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111671, -0.621569, 0.775359,
		0.805361, 0.400484, 0.437042,
		-0.582171, 0.673249, 0.455865,
		29.536066, 19.737661, 33.443378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129099, 19.242691, 33.835587>,  <29.943586, 19.266386, 33.124271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129099, 19.242691, 33.835587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754025, 19.378876, 33.807796>,  <29.528980, 19.460587, 33.791122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754025, 19.378876, 33.807796>,  <30.129099, 19.242691, 33.835587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754025, 19.378876, 33.807796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268710, -0.583724, 0.766199,
		0.220309, 0.737124, 0.638836,
		-0.937688, 0.340463, -0.069474,
		29.472717, 19.481014, 33.786953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961704, 19.702127, 34.435043>,  <30.129099, 19.242691, 33.835587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961704, 19.702127, 34.435043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644453, 19.524632, 34.268169>,  <29.454103, 19.418135, 34.168045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644453, 19.524632, 34.268169>,  <29.961704, 19.702127, 34.435043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644453, 19.524632, 34.268169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238793, -0.403577, 0.883235,
		-0.560293, 0.800138, 0.214126,
		-0.793126, -0.443739, -0.417189,
		29.406515, 19.391510, 34.143013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394444, 20.038950, 34.759190>,  <29.961704, 19.702127, 34.435043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394444, 20.038950, 34.759190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378891, 19.654808, 34.648766>,  <29.369560, 19.424322, 34.582512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378891, 19.654808, 34.648766>,  <29.394444, 20.038950, 34.759190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378891, 19.654808, 34.648766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041648, -0.274470, 0.960693,
		-0.998376, 0.048850, -0.029325,
		-0.038881, -0.960354, -0.276059,
		29.367228, 19.366701, 34.565948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730497, 19.578835, 35.018127>,  <29.394444, 20.038950, 34.759190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730497, 19.578835, 35.018127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073568, 19.375957, 34.984310>,  <29.279411, 19.254230, 34.964020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073568, 19.375957, 34.984310>,  <28.730497, 19.578835, 35.018127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073568, 19.375957, 34.984310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086207, -0.303934, 0.948785,
		-0.506913, -0.806461, -0.304401,
		0.857676, -0.507193, -0.084546,
		29.330872, 19.223801, 34.958946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686062, 18.850420, 35.163979>,  <28.730497, 19.578835, 35.018127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686062, 18.850420, 35.163979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060585, 18.969948, 35.237774>,  <29.285299, 19.041664, 35.282051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060585, 18.969948, 35.237774>,  <28.686062, 18.850420, 35.163979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060585, 18.969948, 35.237774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042196, -0.425811, 0.903828,
		0.348639, -0.854045, -0.386081,
		0.936307, 0.298818, 0.184492,
		29.341476, 19.059593, 35.293121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058578, 18.584770, 35.088451>,  <28.686062, 18.850420, 35.163979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058578, 18.584770, 35.088451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694700, 18.742374, 35.035973>,  <27.476374, 18.836937, 35.004486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694700, 18.742374, 35.035973>,  <28.058578, 18.584770, 35.088451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694700, 18.742374, 35.035973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385248, 0.918644, 0.087620,
		0.155048, 0.029163, -0.987476,
		-0.909694, 0.394009, -0.131199,
		27.421791, 18.860577, 34.996613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063101, 19.066883, 34.481762>,  <28.058578, 18.584770, 35.088451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063101, 19.066883, 34.481762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804564, 19.190170, 34.760971>,  <27.649441, 19.264143, 34.928497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804564, 19.190170, 34.760971>,  <28.063101, 19.066883, 34.481762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804564, 19.190170, 34.760971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280051, 0.946771, -0.158734,
		-0.709796, 0.092886, -0.698256,
		-0.646345, 0.308216, 0.698027,
		27.610661, 19.282635, 34.970379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442022, 19.405651, 34.232037>,  <28.063101, 19.066883, 34.481762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442022, 19.405651, 34.232037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585371, 19.519211, 34.587784>,  <27.671381, 19.587347, 34.801231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585371, 19.519211, 34.587784>,  <27.442022, 19.405651, 34.232037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585371, 19.519211, 34.587784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184072, 0.912453, -0.365440,
		-0.915252, 0.294671, 0.274742,
		0.358374, 0.283897, 0.889365,
		27.692883, 19.604380, 34.854595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092270, 20.087494, 34.381008>,  <27.442022, 19.405651, 34.232037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092270, 20.087494, 34.381008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421083, 20.049538, 34.605598>,  <27.618372, 20.026764, 34.740353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421083, 20.049538, 34.605598>,  <27.092270, 20.087494, 34.381008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421083, 20.049538, 34.605598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282881, 0.923794, -0.258035,
		-0.494205, 0.370945, 0.786233,
		0.822034, -0.094888, 0.561477,
		27.667694, 20.021070, 34.774040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138327, 20.447399, 35.032425>,  <27.092270, 20.087494, 34.381008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138327, 20.447399, 35.032425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497139, 20.419098, 34.857918>,  <27.712427, 20.402117, 34.753212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497139, 20.419098, 34.857918>,  <27.138327, 20.447399, 35.032425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497139, 20.419098, 34.857918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031750, 0.994869, -0.096062,
		0.440827, 0.072319, 0.894674,
		0.897030, -0.070752, -0.436269,
		27.766249, 20.397873, 34.727036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617956, 20.884922, 35.445118>,  <27.138327, 20.447399, 35.032425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617956, 20.884922, 35.445118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750290, 20.844067, 35.069859>,  <27.829691, 20.819553, 34.844704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750290, 20.844067, 35.069859>,  <27.617956, 20.884922, 35.445118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750290, 20.844067, 35.069859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159767, 0.985837, -0.050992,
		0.930066, -0.133015, 0.342467,
		0.330834, -0.102141, -0.938145,
		27.849541, 20.813425, 34.788414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252522, 21.243912, 35.429356>,  <27.617956, 20.884922, 35.445118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252522, 21.243912, 35.429356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128242, 21.214539, 35.050289>,  <28.053675, 21.196915, 34.822849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128242, 21.214539, 35.050289>,  <28.252522, 21.243912, 35.429356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128242, 21.214539, 35.050289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099017, 0.989087, -0.109104,
		0.945338, -0.127733, -0.300035,
		-0.310697, -0.073431, -0.947668,
		28.035034, 21.192509, 34.765987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799370, 21.429974, 34.964043>,  <28.252522, 21.243912, 35.429356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799370, 21.429974, 34.964043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458166, 21.484150, 34.762436>,  <28.253443, 21.516657, 34.641472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.458166, 21.484150, 34.762436>,  <28.799370, 21.429974, 34.964043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458166, 21.484150, 34.762436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327559, 0.890776, -0.314998,
		0.406298, -0.433791, -0.804206,
		-0.853010, 0.135442, -0.504013,
		28.202263, 21.524782, 34.611233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035807, 21.789135, 34.362160>,  <28.799370, 21.429974, 34.964043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035807, 21.789135, 34.362160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639944, 21.844517, 34.377174>,  <28.402426, 21.877747, 34.386181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639944, 21.844517, 34.377174>,  <29.035807, 21.789135, 34.362160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639944, 21.844517, 34.377174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124556, 0.959153, -0.253993,
		-0.071168, -0.246691, -0.966478,
		-0.989657, 0.138456, 0.037534,
		28.343046, 21.886053, 34.388435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800598, 21.975655, 33.674381>,  <29.035807, 21.789135, 34.362160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800598, 21.975655, 33.674381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502523, 22.077782, 33.920799>,  <28.323679, 22.139057, 34.068649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502523, 22.077782, 33.920799>,  <28.800598, 21.975655, 33.674381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502523, 22.077782, 33.920799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187929, 0.966764, -0.173347,
		-0.639828, -0.013403, -0.768401,
		-0.745186, 0.255317, 0.616044,
		28.278967, 22.154377, 34.105614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380383, 22.374813, 33.298668>,  <28.800598, 21.975655, 33.674381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380383, 22.374813, 33.298668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332277, 22.479706, 33.681660>,  <28.303413, 22.542641, 33.911457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332277, 22.479706, 33.681660>,  <28.380383, 22.374813, 33.298668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332277, 22.479706, 33.681660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115037, 0.961666, -0.248928,
		-0.986054, 0.080209, -0.145820,
		-0.120264, 0.262231, 0.957482,
		28.296198, 22.558374, 33.968903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009453, 23.088528, 33.144909>,  <28.380383, 22.374813, 33.298668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009453, 23.088528, 33.144909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079668, 23.111641, 33.538021>,  <28.121798, 23.125509, 33.773888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079668, 23.111641, 33.538021>,  <28.009453, 23.088528, 33.144909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079668, 23.111641, 33.538021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431210, 0.892907, -0.129517,
		-0.885011, 0.446518, 0.131821,
		0.175536, 0.057782, 0.982776,
		28.132328, 23.128975, 33.832855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717937, 23.630091, 33.347610>,  <28.009453, 23.088528, 33.144909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717937, 23.630091, 33.347610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996891, 23.558102, 33.625103>,  <28.164263, 23.514908, 33.791599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996891, 23.558102, 33.625103>,  <27.717937, 23.630091, 33.347610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996891, 23.558102, 33.625103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363728, 0.922915, -0.126213,
		-0.617544, 0.340349, 0.709086,
		0.697382, -0.179972, 0.693735,
		28.206106, 23.504110, 33.833225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633595, 24.127354, 33.842510>,  <27.717937, 23.630091, 33.347610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633595, 24.127354, 33.842510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007864, 24.000473, 33.904350>,  <28.232426, 23.924345, 33.941452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007864, 24.000473, 33.904350>,  <27.633595, 24.127354, 33.842510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007864, 24.000473, 33.904350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306795, 0.947726, 0.087709,
		-0.174336, -0.034638, 0.984077,
		0.935673, -0.317200, 0.154596,
		28.288567, 23.905313, 33.950729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830017, 24.462029, 34.414433>,  <27.633595, 24.127354, 33.842510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830017, 24.462029, 34.414433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155550, 24.367596, 34.202038>,  <28.350870, 24.310936, 34.074600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155550, 24.367596, 34.202038>,  <27.830017, 24.462029, 34.414433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155550, 24.367596, 34.202038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193326, 0.971702, -0.135718,
		0.547997, 0.007799, 0.836444,
		0.813833, -0.236080, -0.530982,
		28.399700, 24.296772, 34.042744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302750, 25.030638, 34.569950>,  <27.830017, 24.462029, 34.414433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302750, 25.030638, 34.569950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453627, 24.842911, 34.250584>,  <28.544153, 24.730274, 34.058964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453627, 24.842911, 34.250584>,  <28.302750, 25.030638, 34.569950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453627, 24.842911, 34.250584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430602, 0.852117, -0.297453,
		0.819943, -0.231601, 0.523503,
		0.377195, -0.469316, -0.798415,
		28.566786, 24.702116, 34.011059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994358, 25.216223, 34.597496>,  <28.302750, 25.030638, 34.569950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994358, 25.216223, 34.597496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889114, 25.114189, 34.225323>,  <28.825968, 25.052969, 34.002018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889114, 25.114189, 34.225323>,  <28.994358, 25.216223, 34.597496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889114, 25.114189, 34.225323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540993, 0.759510, -0.361207,
		0.798812, -0.598395, -0.061835,
		-0.263109, -0.255084, -0.930433,
		28.810181, 25.037664, 33.946194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665632, 25.283997, 34.128399>,  <28.994358, 25.216223, 34.597496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665632, 25.283997, 34.128399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369595, 25.274639, 33.859562>,  <29.191971, 25.269024, 33.698257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.369595, 25.274639, 33.859562>,  <29.665632, 25.283997, 34.128399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369595, 25.274639, 33.859562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471750, 0.694191, -0.543646,
		0.479280, -0.719411, -0.502731,
		-0.740096, -0.023395, -0.672094,
		29.147566, 25.267620, 33.657932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978903, 25.222565, 33.574741>,  <29.665632, 25.283997, 34.128399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978903, 25.222565, 33.574741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624605, 25.361584, 33.451672>,  <29.412025, 25.444996, 33.377831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624605, 25.361584, 33.451672>,  <29.978903, 25.222565, 33.574741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624605, 25.361584, 33.451672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461654, 0.590685, -0.661791,
		-0.048267, -0.728217, -0.683645,
		-0.885746, 0.347549, -0.307674,
		29.358881, 25.465849, 33.359371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104563, 25.246948, 32.848305>,  <29.978903, 25.222565, 33.574741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104563, 25.246948, 32.848305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800190, 25.490768, 32.937233>,  <29.617567, 25.637060, 32.990589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800190, 25.490768, 32.937233>,  <30.104563, 25.246948, 32.848305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800190, 25.490768, 32.937233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371825, 0.690477, -0.620474,
		-0.531722, -0.389473, -0.752053,
		-0.760933, 0.609552, 0.222325,
		29.571911, 25.673634, 33.003929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149557, 25.746099, 32.348965>,  <30.104563, 25.246948, 32.848305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149557, 25.746099, 32.348965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881872, 25.928734, 32.583462>,  <29.721262, 26.038315, 32.724159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881872, 25.928734, 32.583462>,  <30.149557, 25.746099, 32.348965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881872, 25.928734, 32.583462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340163, 0.889667, -0.304600,
		-0.660641, -0.004422, -0.750689,
		-0.669210, 0.456588, 0.586247,
		29.681108, 26.065710, 32.759335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777775, 26.203922, 31.918966>,  <30.149557, 25.746099, 32.348965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777775, 26.203922, 31.918966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700203, 26.354786, 32.281212>,  <29.653660, 26.445305, 32.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700203, 26.354786, 32.281212>,  <29.777775, 26.203922, 31.918966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700203, 26.354786, 32.281212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290290, 0.903863, -0.314267,
		-0.937082, 0.201945, -0.284773,
		-0.193932, 0.377160, 0.905616,
		29.642023, 26.467934, 32.552898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442699, 26.783939, 31.731428>,  <29.777775, 26.203922, 31.918966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442699, 26.783939, 31.731428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577682, 26.823639, 32.105865>,  <29.658672, 26.847458, 32.330528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577682, 26.823639, 32.105865>,  <29.442699, 26.783939, 31.731428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577682, 26.823639, 32.105865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189742, 0.966844, -0.170910,
		-0.922019, 0.235291, 0.307438,
		0.337458, 0.099248, 0.936094,
		29.678921, 26.853413, 32.386692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137486, 27.467218, 32.003975>,  <29.442699, 26.783939, 31.731428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137486, 27.467218, 32.003975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438055, 27.363121, 32.246506>,  <29.618397, 27.300663, 32.392025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438055, 27.363121, 32.246506>,  <29.137486, 27.467218, 32.003975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438055, 27.363121, 32.246506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379124, 0.922386, -0.073951,
		-0.540026, 0.285443, 0.791767,
		0.751423, -0.260243, 0.606331,
		29.663483, 27.285048, 32.428406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305046, 28.074793, 32.338760>,  <29.137486, 27.467218, 32.003975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305046, 28.074793, 32.338760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637075, 27.851955, 32.348732>,  <29.836294, 27.718252, 32.354717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637075, 27.851955, 32.348732>,  <29.305046, 28.074793, 32.338760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637075, 27.851955, 32.348732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551944, 0.814373, -0.179318,
		0.079592, 0.162610, 0.983475,
		0.830074, -0.557095, 0.024934,
		29.886097, 27.684826, 32.356213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854677, 28.392982, 32.872936>,  <29.305046, 28.074793, 32.338760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854677, 28.392982, 32.872936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050957, 28.179764, 32.597233>,  <30.168724, 28.051832, 32.431812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050957, 28.179764, 32.597233>,  <29.854677, 28.392982, 32.872936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050957, 28.179764, 32.597233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565747, 0.796529, -0.213241,
		0.662679, -0.285306, 0.692428,
		0.490701, -0.533049, -0.689255,
		30.198168, 28.019850, 32.390457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508915, 28.813976, 32.830627>,  <29.854677, 28.392982, 32.872936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508915, 28.813976, 32.830627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540514, 28.562908, 32.520844>,  <30.559473, 28.412268, 32.334972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540514, 28.562908, 32.520844>,  <30.508915, 28.813976, 32.830627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540514, 28.562908, 32.520844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477838, 0.705665, -0.523170,
		0.874888, -0.328737, 0.355672,
		0.079000, -0.627669, -0.774462,
		30.564215, 28.374607, 32.288506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244976, 28.750454, 32.674156>,  <30.508915, 28.813976, 32.830627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244976, 28.750454, 32.674156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082870, 28.615940, 32.334114>,  <30.985607, 28.535231, 32.130089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082870, 28.615940, 32.334114>,  <31.244976, 28.750454, 32.674156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082870, 28.615940, 32.334114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588936, 0.615186, -0.524119,
		0.699223, -0.713063, -0.051264,
		-0.405267, -0.336285, -0.850101,
		30.961290, 28.515055, 32.079082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771208, 28.762747, 32.171459>,  <31.244976, 28.750454, 32.674156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771208, 28.762747, 32.171459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447905, 28.761425, 31.935932>,  <31.253922, 28.760632, 31.794617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447905, 28.761425, 31.935932>,  <31.771208, 28.762747, 32.171459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447905, 28.761425, 31.935932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493211, 0.542451, -0.680066,
		0.321651, -0.840081, -0.436812,
		-0.808260, -0.003304, -0.588817,
		31.205427, 28.760433, 31.759287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992188, 28.540255, 31.423279>,  <31.771208, 28.762747, 32.171459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992188, 28.540255, 31.423279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656336, 28.757408, 31.430252>,  <31.454824, 28.887699, 31.434435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656336, 28.757408, 31.430252>,  <31.992188, 28.540255, 31.423279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656336, 28.757408, 31.430252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405190, 0.647400, -0.645519,
		-0.361725, -0.534933, -0.763545,
		-0.839628, 0.542882, 0.017431,
		31.404448, 28.920273, 31.435482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934095, 28.750141, 30.688753>,  <31.992188, 28.540255, 31.423279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934095, 28.750141, 30.688753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689627, 29.001377, 30.881409>,  <31.542946, 29.152119, 30.997002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689627, 29.001377, 30.881409>,  <31.934095, 28.750141, 30.688753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689627, 29.001377, 30.881409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357801, 0.762031, -0.539711,
		-0.706009, -0.157526, -0.690462,
		-0.611171, 0.628088, 0.481638,
		31.506275, 29.189804, 31.025900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605423, 29.134380, 30.178265>,  <31.934095, 28.750141, 30.688753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605423, 29.134380, 30.178265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584385, 29.372498, 30.498978>,  <31.571762, 29.515368, 30.691406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584385, 29.372498, 30.498978>,  <31.605423, 29.134380, 30.178265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584385, 29.372498, 30.498978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168485, 0.796675, -0.580449,
		-0.984300, 0.104561, -0.142198,
		-0.052593, 0.595295, 0.801784,
		31.568607, 29.551086, 30.739513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210558, 29.613981, 29.998096>,  <31.605423, 29.134380, 30.178265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210558, 29.613981, 29.998096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406891, 29.795231, 30.295757>,  <31.524691, 29.903980, 30.474354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406891, 29.795231, 30.295757>,  <31.210558, 29.613981, 29.998096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406891, 29.795231, 30.295757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174093, 0.785883, -0.593362,
		-0.853683, 0.420794, 0.306853,
		0.490833, 0.453122, 0.744152,
		31.554140, 29.931168, 30.519003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951029, 30.279627, 30.067770>,  <31.210558, 29.613981, 29.998096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951029, 30.279627, 30.067770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311234, 30.286903, 30.241550>,  <31.527355, 30.291269, 30.345819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311234, 30.286903, 30.241550>,  <30.951029, 30.279627, 30.067770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311234, 30.286903, 30.241550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240184, 0.812069, -0.531843,
		-0.362481, 0.583278, 0.726907,
		0.900511, 0.018192, 0.434454,
		31.581387, 30.292360, 30.371887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086838, 31.013680, 30.330873>,  <30.951029, 30.279627, 30.067770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086838, 31.013680, 30.330873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438128, 30.830448, 30.275902>,  <31.648901, 30.720510, 30.242918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438128, 30.830448, 30.275902>,  <31.086838, 31.013680, 30.330873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438128, 30.830448, 30.275902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351086, 0.812647, -0.465127,
		0.324747, 0.360236, 0.874511,
		0.878224, -0.458077, -0.137431,
		31.701595, 30.693026, 30.234673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529736, 31.595413, 30.323862>,  <31.086838, 31.013680, 30.330873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529736, 31.595413, 30.323862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764204, 31.300854, 30.188736>,  <31.904884, 31.124119, 30.107660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764204, 31.300854, 30.188736>,  <31.529736, 31.595413, 30.323862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764204, 31.300854, 30.188736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570074, 0.671163, -0.473873,
		0.575689, 0.085191, 0.813218,
		0.586171, -0.736399, -0.337816,
		31.940056, 31.079933, 30.087391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205509, 31.867462, 30.405712>,  <31.529736, 31.595413, 30.323862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205509, 31.867462, 30.405712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249790, 31.575691, 30.135696>,  <32.276360, 31.400629, 29.973686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249790, 31.575691, 30.135696>,  <32.205509, 31.867462, 30.405712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249790, 31.575691, 30.135696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581401, 0.598397, -0.551266,
		0.806051, -0.331446, 0.490332,
		0.110698, -0.729428, -0.675041,
		32.283001, 31.356863, 29.933184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859486, 31.916393, 30.245142>,  <32.205509, 31.867462, 30.405712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859486, 31.916393, 30.245142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702633, 31.708298, 29.941673>,  <32.608521, 31.583439, 29.759592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702633, 31.708298, 29.941673>,  <32.859486, 31.916393, 30.245142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702633, 31.708298, 29.941673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438691, 0.619147, -0.651312,
		0.808568, -0.588223, -0.014562,
		-0.392133, -0.520242, -0.758670,
		32.584991, 31.552225, 29.714071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369091, 31.862120, 29.752007>,  <32.859486, 31.916393, 30.245142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369091, 31.862120, 29.752007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027431, 31.825512, 29.547241>,  <32.822437, 31.803547, 29.424381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027431, 31.825512, 29.547241>,  <33.369091, 31.862120, 29.752007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027431, 31.825512, 29.547241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383345, 0.554367, -0.738731,
		0.351396, -0.827225, -0.438428,
		-0.854147, -0.091518, -0.511915,
		32.771187, 31.798056, 29.393667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647507, 31.732403, 29.102947>,  <33.369091, 31.862120, 29.752007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647507, 31.732403, 29.102947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266804, 31.841415, 29.046555>,  <33.038380, 31.906824, 29.012718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266804, 31.841415, 29.046555>,  <33.647507, 31.732403, 29.102947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266804, 31.841415, 29.046555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291854, 0.662245, -0.690110,
		-0.094714, -0.697966, -0.709839,
		-0.951761, 0.272533, -0.140981,
		32.981274, 31.923176, 29.004261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645302, 31.742033, 28.397205>,  <33.647507, 31.732403, 29.102947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645302, 31.742033, 28.397205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334255, 31.953346, 28.533577>,  <33.147629, 32.080135, 28.615400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334255, 31.953346, 28.533577>,  <33.645302, 31.742033, 28.397205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334255, 31.953346, 28.533577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099224, 0.638558, -0.763151,
		-0.620861, -0.559610, -0.548971,
		-0.777616, 0.528282, 0.340929,
		33.100971, 32.111832, 28.635855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088329, 31.763306, 27.856789>,  <33.645302, 31.742033, 28.397205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088329, 31.763306, 27.856789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058342, 32.068886, 28.113152>,  <33.040348, 32.252232, 28.266970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058342, 32.068886, 28.113152>,  <33.088329, 31.763306, 27.856789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058342, 32.068886, 28.113152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082804, 0.645266, -0.759457,
		-0.993742, -0.003866, -0.111633,
		-0.074970, 0.763948, 0.640907,
		33.035851, 32.298069, 28.305424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596313, 32.206406, 27.537830>,  <33.088329, 31.763306, 27.856789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596313, 32.206406, 27.537830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806736, 32.439720, 27.785393>,  <32.932987, 32.579708, 27.933931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806736, 32.439720, 27.785393>,  <32.596313, 32.206406, 27.537830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806736, 32.439720, 27.785393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066585, 0.697259, -0.713720,
		-0.847841, 0.416665, 0.327958,
		0.526054, 0.583284, 0.618908,
		32.964554, 32.614704, 27.971066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389019, 32.878841, 27.358236>,  <32.596313, 32.206406, 27.537830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389019, 32.878841, 27.358236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715706, 32.936996, 27.581604>,  <32.911720, 32.971889, 27.715624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715706, 32.936996, 27.581604>,  <32.389019, 32.878841, 27.358236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715706, 32.936996, 27.581604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235701, 0.799274, -0.552817,
		-0.526700, 0.583116, 0.618516,
		0.816720, 0.145384, 0.558419,
		32.960724, 32.980610, 27.749130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359734, 33.550770, 27.572212>,  <32.389019, 32.878841, 27.358236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359734, 33.550770, 27.572212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746353, 33.449398, 27.587978>,  <32.978325, 33.388577, 27.597439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746353, 33.449398, 27.587978>,  <32.359734, 33.550770, 27.572212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746353, 33.449398, 27.587978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218661, 0.733926, -0.643071,
		0.134046, 0.630179, 0.764792,
		0.966550, -0.253431, 0.039416,
		33.036320, 33.373367, 27.599804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817312, 34.039902, 27.755684>,  <32.359734, 33.550770, 27.572212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817312, 34.039902, 27.755684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564445, 34.127636, 27.458427>,  <31.412725, 34.180279, 27.280073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564445, 34.127636, 27.458427>,  <31.817312, 34.039902, 27.755684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564445, 34.127636, 27.458427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766706, -0.315625, 0.559055,
		-0.111932, 0.923186, 0.367694,
		-0.632165, 0.219337, -0.743141,
		31.374796, 34.193436, 27.235485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197548, 34.425274, 28.012823>,  <31.817312, 34.039902, 27.755684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197548, 34.425274, 28.012823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077080, 34.255737, 27.671143>,  <31.004799, 34.154015, 27.466135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077080, 34.255737, 27.671143>,  <31.197548, 34.425274, 28.012823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077080, 34.255737, 27.671143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778668, -0.407767, 0.476866,
		-0.550430, 0.808755, -0.207225,
		-0.301169, -0.423841, -0.854199,
		30.986729, 34.128586, 27.414883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430161, 34.523811, 27.931637>,  <31.197548, 34.425274, 28.012823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430161, 34.523811, 27.931637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547520, 34.210999, 27.711693>,  <30.617935, 34.023312, 27.579727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547520, 34.210999, 27.711693>,  <30.430161, 34.523811, 27.931637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547520, 34.210999, 27.711693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778030, -0.529552, 0.338001,
		-0.555506, 0.328637, -0.763813,
		0.293399, -0.782030, -0.549859,
		30.635540, 33.976391, 27.546736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807890, 34.139095, 27.900589>,  <30.430161, 34.523811, 27.931637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807890, 34.139095, 27.900589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075375, 33.873428, 27.766899>,  <30.235867, 33.714027, 27.686686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075375, 33.873428, 27.766899>,  <29.807890, 34.139095, 27.900589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075375, 33.873428, 27.766899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524547, -0.740000, 0.421010,
		-0.526947, -0.106218, -0.843234,
		0.668713, -0.664166, -0.334225,
		30.275988, 33.674179, 27.666632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432800, 33.573040, 27.490244>,  <29.807890, 34.139095, 27.900589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432800, 33.573040, 27.490244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789282, 33.418007, 27.584503>,  <30.003170, 33.324986, 27.641060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789282, 33.418007, 27.584503>,  <29.432800, 33.573040, 27.490244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789282, 33.418007, 27.584503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451387, -0.809061, 0.376390,
		0.044771, -0.441810, -0.895991,
		0.891204, -0.387587, 0.235650,
		30.056643, 33.301731, 27.655197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530046, 32.843071, 27.274429>,  <29.432800, 33.573040, 27.490244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530046, 32.843071, 27.274429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774561, 32.876083, 27.589268>,  <29.921270, 32.895889, 27.778170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774561, 32.876083, 27.589268>,  <29.530046, 32.843071, 27.274429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774561, 32.876083, 27.589268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358332, -0.857900, 0.368247,
		0.705639, -0.507145, -0.494850,
		0.611287, 0.082529, 0.787094,
		29.957947, 32.900841, 27.825396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617842, 32.124516, 27.357977>,  <29.530046, 32.843071, 27.274429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617842, 32.124516, 27.357977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741228, 32.278782, 27.705795>,  <29.815260, 32.371342, 27.914486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741228, 32.278782, 27.705795>,  <29.617842, 32.124516, 27.357977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741228, 32.278782, 27.705795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094870, -0.897091, 0.431542,
		0.946493, -0.215609, -0.240132,
		0.308464, 0.385670, 0.869545,
		29.833767, 32.394482, 27.966660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145857, 31.691679, 27.512352>,  <29.617842, 32.124516, 27.357977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145857, 31.691679, 27.512352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993271, 31.872612, 27.834812>,  <29.901720, 31.981173, 28.028288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993271, 31.872612, 27.834812>,  <30.145857, 31.691679, 27.512352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993271, 31.872612, 27.834812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090414, -0.886173, 0.454448,
		0.919951, 0.100468, 0.378940,
		-0.381464, 0.452332, 0.806152,
		29.878832, 32.008312, 28.076658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247929, 31.338806, 28.137287>,  <30.145857, 31.691679, 27.512352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247929, 31.338806, 28.137287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969971, 31.586864, 28.282909>,  <29.803196, 31.735701, 28.370283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969971, 31.586864, 28.282909>,  <30.247929, 31.338806, 28.137287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969971, 31.586864, 28.282909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341742, -0.730227, 0.591593,
		0.632720, 0.286681, 0.719361,
		-0.694895, 0.620148, 0.364058,
		29.761503, 31.772909, 28.392126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109749, 30.967749, 28.660013>,  <30.247929, 31.338806, 28.137287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109749, 30.967749, 28.660013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813869, 31.236839, 28.653198>,  <29.636343, 31.398293, 28.649109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813869, 31.236839, 28.653198>,  <30.109749, 30.967749, 28.660013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813869, 31.236839, 28.653198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503948, -0.536982, 0.676526,
		0.445967, 0.509010, 0.736222,
		-0.739696, 0.672725, -0.017038,
		29.591961, 31.438658, 28.648087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956244, 31.262600, 29.381365>,  <30.109749, 30.967749, 28.660013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956244, 31.262600, 29.381365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628277, 31.337109, 29.164833>,  <29.431496, 31.381813, 29.034914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.628277, 31.337109, 29.164833>,  <29.956244, 31.262600, 29.381365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628277, 31.337109, 29.164833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549426, -0.521676, 0.652675,
		-0.160824, 0.832561, 0.530074,
		-0.819919, 0.186270, -0.541329,
		29.382301, 31.392990, 29.002434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434206, 31.545530, 29.862780>,  <29.956244, 31.262600, 29.381365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434206, 31.545530, 29.862780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257360, 31.381676, 29.543598>,  <29.151253, 31.283363, 29.352089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257360, 31.381676, 29.543598>,  <29.434206, 31.545530, 29.862780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257360, 31.381676, 29.543598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499900, -0.626115, 0.598398,
		-0.744738, 0.663458, 0.072038,
		-0.442116, -0.409638, -0.797954,
		29.124725, 31.258785, 29.304213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691620, 31.467718, 30.008646>,  <29.434206, 31.545530, 29.862780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691620, 31.467718, 30.008646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836987, 31.198792, 29.750679>,  <28.924206, 31.037436, 29.595900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836987, 31.198792, 29.750679>,  <28.691620, 31.467718, 30.008646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836987, 31.198792, 29.750679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390950, -0.738404, 0.549471,
		-0.845628, 0.052443, -0.531191,
		0.363418, -0.672316, -0.644917,
		28.946012, 30.997097, 29.557203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338240, 30.943521, 30.196373>,  <28.691620, 31.467718, 30.008646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338240, 30.943521, 30.196373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590834, 30.744633, 29.958382>,  <28.742390, 30.625299, 29.815586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590834, 30.744633, 29.958382>,  <28.338240, 30.943521, 30.196373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590834, 30.744633, 29.958382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349626, -0.867487, 0.353876,
		-0.692091, -0.015447, -0.721645,
		0.631484, -0.497221, -0.594979,
		28.780279, 30.595467, 29.779888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953873, 30.435673, 29.951857>,  <28.338240, 30.943521, 30.196373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953873, 30.435673, 29.951857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324728, 30.298141, 29.892262>,  <28.547241, 30.215622, 29.856504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324728, 30.298141, 29.892262>,  <27.953873, 30.435673, 29.951857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324728, 30.298141, 29.892262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246687, -0.859321, 0.448009,
		-0.282066, -0.378613, -0.881528,
		0.927138, -0.343830, -0.148986,
		28.602869, 30.194992, 29.847565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857975, 29.809374, 29.642471>,  <27.953873, 30.435673, 29.951857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857975, 29.809374, 29.642471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215334, 29.782215, 29.820114>,  <28.429749, 29.765919, 29.926699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215334, 29.782215, 29.820114>,  <27.857975, 29.809374, 29.642471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215334, 29.782215, 29.820114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215837, -0.931831, 0.291728,
		0.394024, -0.356483, -0.847151,
		0.893398, -0.067898, 0.444106,
		28.483353, 29.761847, 29.953346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169497, 29.173786, 29.317522>,  <27.857975, 29.809374, 29.642471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169497, 29.173786, 29.317522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324612, 29.268818, 29.673763>,  <28.417681, 29.325836, 29.887508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324612, 29.268818, 29.673763>,  <28.169497, 29.173786, 29.317522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324612, 29.268818, 29.673763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232624, -0.909711, 0.343965,
		0.891912, -0.340561, -0.297509,
		0.387789, 0.237579, 0.890605,
		28.440948, 29.340092, 29.940945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604082, 28.647720, 29.437689>,  <28.169497, 29.173786, 29.317522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604082, 28.647720, 29.437689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531677, 28.788544, 29.805012>,  <28.488235, 28.873037, 30.025406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531677, 28.788544, 29.805012>,  <28.604082, 28.647720, 29.437689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531677, 28.788544, 29.805012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224359, -0.923893, 0.309977,
		0.957548, -0.149921, 0.246222,
		-0.181011, 0.352060, 0.918308,
		28.477373, 28.894161, 30.080503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900469, 28.150925, 29.945805>,  <28.604082, 28.647720, 29.437689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900469, 28.150925, 29.945805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643614, 28.357033, 30.172840>,  <28.489502, 28.480698, 30.309061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643614, 28.357033, 30.172840>,  <28.900469, 28.150925, 29.945805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643614, 28.357033, 30.172840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226462, -0.834870, 0.501705,
		0.732377, 0.193625, 0.652789,
		-0.642136, 0.515269, 0.567591,
		28.450974, 28.511614, 30.343117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095219, 28.017460, 30.734196>,  <28.900469, 28.150925, 29.945805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095219, 28.017460, 30.734196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704477, 28.091183, 30.690762>,  <28.470034, 28.135416, 30.664701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704477, 28.091183, 30.690762>,  <29.095219, 28.017460, 30.734196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704477, 28.091183, 30.690762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212792, -0.785249, 0.581467,
		0.021901, 0.591114, 0.806291,
		-0.976852, 0.184307, -0.108586,
		28.411421, 28.146475, 30.658186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841299, 27.747471, 31.355480>,  <29.095219, 28.017460, 30.734196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841299, 27.747471, 31.355480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494797, 27.847870, 31.182693>,  <28.286896, 27.908110, 31.079021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494797, 27.847870, 31.182693>,  <28.841299, 27.747471, 31.355480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494797, 27.847870, 31.182693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479061, -0.662671, 0.575645,
		-0.141766, 0.705596, 0.694289,
		-0.866258, 0.251000, -0.431968,
		28.234919, 27.923170, 31.053102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387625, 28.047953, 31.948530>,  <28.841299, 27.747471, 31.355480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387625, 28.047953, 31.948530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230623, 27.870625, 31.626186>,  <28.136423, 27.764227, 31.432781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230623, 27.870625, 31.626186>,  <28.387625, 28.047953, 31.948530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230623, 27.870625, 31.626186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611649, -0.528537, 0.588672,
		-0.686897, 0.723958, -0.063705,
		-0.392503, -0.443322, -0.805858,
		28.112873, 27.737629, 31.384428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669577, 28.139694, 32.033398>,  <28.387625, 28.047953, 31.948530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669577, 28.139694, 32.033398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734558, 27.836929, 31.780197>,  <27.773546, 27.655270, 31.628277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734558, 27.836929, 31.780197>,  <27.669577, 28.139694, 32.033398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734558, 27.836929, 31.780197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642401, -0.568071, 0.514408,
		-0.748952, 0.323073, -0.578528,
		0.162454, -0.756914, -0.633001,
		27.783295, 27.609856, 31.590298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051685, 27.881489, 31.945620>,  <27.669577, 28.139694, 32.033398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051685, 27.881489, 31.945620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231783, 27.569149, 31.772388>,  <27.339842, 27.381744, 31.668449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231783, 27.569149, 31.772388>,  <27.051685, 27.881489, 31.945620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231783, 27.569149, 31.772388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665681, -0.616798, 0.420034,
		-0.595104, 0.099174, -0.797506,
		0.450244, -0.780849, -0.433077,
		27.366856, 27.334894, 31.642466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529730, 27.355072, 31.795940>,  <27.051685, 27.881489, 31.945620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529730, 27.355072, 31.795940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881865, 27.170322, 31.752720>,  <27.093145, 27.059473, 31.726788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881865, 27.170322, 31.752720>,  <26.529730, 27.355072, 31.795940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881865, 27.170322, 31.752720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429672, -0.872969, 0.230884,
		-0.200964, -0.156830, -0.966963,
		0.880338, -0.461876, -0.108050,
		27.145966, 27.031759, 31.720304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404589, 26.829584, 31.416523>,  <26.529730, 27.355072, 31.795940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404589, 26.829584, 31.416523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737360, 26.713173, 31.605499>,  <26.937023, 26.643326, 31.718885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.737360, 26.713173, 31.605499>,  <26.404589, 26.829584, 31.416523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737360, 26.713173, 31.605499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445573, -0.857801, 0.256208,
		0.330696, -0.423653, -0.843302,
		0.831928, -0.291025, 0.472440,
		26.986938, 26.625866, 31.747231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588480, 26.130491, 31.104977>,  <26.404589, 26.829584, 31.416523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588480, 26.130491, 31.104977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771515, 26.123779, 31.460579>,  <26.881336, 26.119753, 31.673941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771515, 26.123779, 31.460579>,  <26.588480, 26.130491, 31.104977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771515, 26.123779, 31.460579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227972, -0.968616, 0.099059,
		0.859443, -0.247997, -0.447052,
		0.457587, -0.016780, 0.889006,
		26.908791, 26.118746, 31.727282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942001, 25.469383, 31.119160>,  <26.588480, 26.130491, 31.104977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942001, 25.469383, 31.119160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899029, 25.593224, 31.497070>,  <26.873245, 25.667528, 31.723818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899029, 25.593224, 31.497070>,  <26.942001, 25.469383, 31.119160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899029, 25.593224, 31.497070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316133, -0.911595, 0.262782,
		0.942613, -0.270445, 0.195808,
		-0.107429, 0.309603, 0.944778,
		26.866800, 25.686104, 31.780504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368362, 25.012037, 31.557266>,  <26.942001, 25.469383, 31.119160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368362, 25.012037, 31.557266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083221, 25.174446, 31.785999>,  <26.912138, 25.271891, 31.923239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083221, 25.174446, 31.785999>,  <27.368362, 25.012037, 31.557266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083221, 25.174446, 31.785999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423430, -0.899155, 0.110578,
		0.559062, -0.163305, 0.812885,
		-0.712851, 0.406020, 0.571831,
		26.869366, 25.296251, 31.957548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402592, 24.671970, 32.231537>,  <27.368362, 25.012037, 31.557266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402592, 24.671970, 32.231537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036842, 24.827881, 32.275345>,  <26.817392, 24.921427, 32.301628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036842, 24.827881, 32.275345>,  <27.402592, 24.671970, 32.231537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036842, 24.827881, 32.275345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364206, -0.910025, 0.198012,
		0.176845, 0.141170, 0.974062,
		-0.914374, 0.389776, 0.109518,
		26.762529, 24.944815, 32.308201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179607, 24.359554, 32.812649>,  <27.402592, 24.671970, 32.231537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179607, 24.359554, 32.812649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850489, 24.467518, 32.612587>,  <26.653017, 24.532295, 32.492550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850489, 24.467518, 32.612587>,  <27.179607, 24.359554, 32.812649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850489, 24.467518, 32.612587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387019, -0.910552, 0.145297,
		-0.416203, 0.313120, 0.853657,
		-0.822795, 0.269909, -0.500158,
		26.603651, 24.548491, 32.462540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655838, 24.147507, 33.181370>,  <27.179607, 24.359554, 32.812649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655838, 24.147507, 33.181370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513937, 24.185886, 32.809361>,  <26.428797, 24.208914, 32.586155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513937, 24.185886, 32.809361>,  <26.655838, 24.147507, 33.181370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513937, 24.185886, 32.809361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512756, -0.851750, 0.107716,
		-0.781813, 0.515088, 0.351360,
		-0.354754, 0.095948, -0.930024,
		26.407511, 24.214670, 32.530354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021103, 23.845045, 33.227173>,  <26.655838, 24.147507, 33.181370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021103, 23.845045, 33.227173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074272, 23.845448, 32.830723>,  <26.106174, 23.845688, 32.592854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074272, 23.845448, 32.830723>,  <26.021103, 23.845045, 33.227173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074272, 23.845448, 32.830723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539862, -0.838560, -0.073253,
		-0.831192, 0.544808, -0.110923,
		0.132924, 0.001004, -0.991126,
		26.114149, 23.845749, 32.533386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269545, 23.815708, 32.880962>,  <26.021103, 23.845045, 33.227173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269545, 23.815708, 32.880962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556938, 23.695030, 32.630280>,  <25.729374, 23.622623, 32.479870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556938, 23.695030, 32.630280>,  <25.269545, 23.815708, 32.880962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556938, 23.695030, 32.630280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507472, -0.843564, -0.175702,
		-0.475659, 0.444276, -0.759189,
		0.718485, -0.301693, -0.626707,
		25.772484, 23.604523, 32.442268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857689, 23.472029, 32.411057>,  <25.269545, 23.815708, 32.880962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857689, 23.472029, 32.411057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222237, 23.329529, 32.328598>,  <25.440966, 23.244028, 32.279121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222237, 23.329529, 32.328598>,  <24.857689, 23.472029, 32.411057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222237, 23.329529, 32.328598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372271, -0.927097, -0.043646,
		-0.175568, 0.116520, -0.977547,
		0.911367, -0.356250, -0.206146,
		25.495647, 23.222654, 32.266754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757065, 22.967556, 31.874495>,  <24.857689, 23.472029, 32.411057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757065, 22.967556, 31.874495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094763, 22.867100, 32.063885>,  <25.297380, 22.806826, 32.177521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.094763, 22.867100, 32.063885>,  <24.757065, 22.967556, 31.874495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.094763, 22.867100, 32.063885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318748, -0.945479, 0.066855,
		0.430873, -0.207362, -0.878265,
		0.844244, -0.251140, 0.473478,
		25.348036, 22.791758, 32.205929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954052, 22.384367, 31.567089>,  <24.757065, 22.967556, 31.874495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954052, 22.384367, 31.567089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169918, 22.365913, 31.903336>,  <25.299437, 22.354841, 32.105083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169918, 22.365913, 31.903336>,  <24.954052, 22.384367, 31.567089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169918, 22.365913, 31.903336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202450, -0.976309, 0.076387,
		0.817176, -0.211406, -0.536219,
		0.539664, -0.046136, 0.840615,
		25.331818, 22.352072, 32.155521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446745, 21.856972, 31.386391>,  <24.954052, 22.384367, 31.567089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446745, 21.856972, 31.386391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428370, 21.899075, 31.783745>,  <25.417345, 21.924335, 32.022156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428370, 21.899075, 31.783745>,  <25.446745, 21.856972, 31.386391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428370, 21.899075, 31.783745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202166, -0.974835, 0.093941,
		0.978273, -0.196513, 0.066062,
		-0.045939, 0.105255, 0.993383,
		25.414587, 21.930651, 32.081760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586222, 21.218258, 31.012865>,  <25.446745, 21.856972, 31.386391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586222, 21.218258, 31.012865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463902, 21.122196, 30.644341>,  <25.390509, 21.064560, 30.423225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.463902, 21.122196, 30.644341>,  <25.586222, 21.218258, 31.012865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.463902, 21.122196, 30.644341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627342, 0.677077, -0.384718,
		0.716190, -0.695624, -0.056391,
		-0.305800, -0.240155, -0.921310,
		25.372162, 21.050150, 30.367947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172129, 21.101561, 30.674847>,  <25.586222, 21.218258, 31.012865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172129, 21.101561, 30.674847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917080, 21.191231, 30.380043>,  <25.764050, 21.245033, 30.203161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917080, 21.191231, 30.380043>,  <26.172129, 21.101561, 30.674847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917080, 21.191231, 30.380043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663900, 0.645178, -0.378130,
		0.390733, -0.730404, -0.560212,
		-0.637624, 0.224176, -0.737008,
		25.725792, 21.258484, 30.158941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494869, 20.977098, 30.005302>,  <26.172129, 21.101561, 30.674847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494869, 20.977098, 30.005302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198324, 21.230122, 29.915638>,  <26.020397, 21.381935, 29.861839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198324, 21.230122, 29.915638>,  <26.494869, 20.977098, 30.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198324, 21.230122, 29.915638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646488, 0.583526, -0.491478,
		-0.180087, -0.509280, -0.841548,
		-0.741365, 0.632559, -0.224159,
		25.975914, 21.419889, 29.848391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600063, 21.073963, 29.336172>,  <26.494869, 20.977098, 30.005302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600063, 21.073963, 29.336172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399109, 21.386566, 29.484146>,  <26.278536, 21.574127, 29.572931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399109, 21.386566, 29.484146>,  <26.600063, 21.073963, 29.336172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399109, 21.386566, 29.484146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673135, 0.622039, -0.399945,
		-0.542676, 0.048091, -0.838565,
		-0.502387, 0.781508, 0.369937,
		26.248392, 21.621019, 29.595127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402029, 21.587757, 28.720865>,  <26.600063, 21.073963, 29.336172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402029, 21.587757, 28.720865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383858, 21.793331, 29.063515>,  <26.372955, 21.916676, 29.269104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383858, 21.793331, 29.063515>,  <26.402029, 21.587757, 28.720865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383858, 21.793331, 29.063515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547227, 0.730209, -0.409069,
		-0.835750, 0.450185, -0.314412,
		-0.045430, 0.513934, 0.856626,
		26.370228, 21.947512, 29.320503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180401, 22.278717, 28.519907>,  <26.402029, 21.587757, 28.720865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180401, 22.278717, 28.519907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309921, 22.336891, 28.893860>,  <26.387632, 22.371796, 29.118231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309921, 22.336891, 28.893860>,  <26.180401, 22.278717, 28.519907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309921, 22.336891, 28.893860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564838, 0.762990, -0.314331,
		-0.759020, 0.629836, 0.164908,
		0.323800, 0.145438, 0.934880,
		26.407061, 22.380522, 29.174324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053671, 23.033028, 28.769300>,  <26.180401, 22.278717, 28.519907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053671, 23.033028, 28.769300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360016, 22.873226, 28.970837>,  <26.543823, 22.777346, 29.091759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360016, 22.873226, 28.970837>,  <26.053671, 23.033028, 28.769300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360016, 22.873226, 28.970837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590766, 0.746547, -0.306043,
		-0.253875, 0.532037, 0.807765,
		0.765861, -0.399504, 0.503840,
		26.589773, 22.753376, 29.121988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234787, 23.619925, 29.268999>,  <26.053671, 23.033028, 28.769300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234787, 23.619925, 29.268999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545601, 23.368668, 29.285278>,  <26.732090, 23.217915, 29.295046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545601, 23.368668, 29.285278>,  <26.234787, 23.619925, 29.268999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545601, 23.368668, 29.285278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628541, 0.777768, 0.003679,
		-0.033963, 0.022720, 0.999165,
		0.777035, -0.628141, 0.040696,
		26.778711, 23.180225, 29.297487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653610, 23.824129, 29.850504>,  <26.234787, 23.619925, 29.268999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653610, 23.824129, 29.850504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874907, 23.642750, 29.570988>,  <27.007685, 23.533922, 29.403278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874907, 23.642750, 29.570988>,  <26.653610, 23.824129, 29.850504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874907, 23.642750, 29.570988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614417, 0.788576, -0.025270,
		0.562509, -0.415369, 0.714879,
		0.553240, -0.453448, -0.698792,
		27.040878, 23.506716, 29.361351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225620, 23.841158, 30.194555>,  <26.653610, 23.824129, 29.850504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225620, 23.841158, 30.194555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266895, 23.802147, 29.798607>,  <27.291660, 23.778740, 29.561039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266895, 23.802147, 29.798607>,  <27.225620, 23.841158, 30.194555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266895, 23.802147, 29.798607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699527, 0.714601, 0.002515,
		0.707116, -0.692700, 0.141961,
		0.103187, -0.097527, -0.989869,
		27.297852, 23.772888, 29.501646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046268, 23.960354, 30.064137>,  <27.225620, 23.841158, 30.194555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046268, 23.960354, 30.064137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859571, 23.980431, 29.710949>,  <27.747553, 23.992477, 29.499037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859571, 23.980431, 29.710949>,  <28.046268, 23.960354, 30.064137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859571, 23.980431, 29.710949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515328, 0.826820, -0.225403,
		0.718742, -0.560223, -0.411776,
		-0.466740, 0.050193, -0.882969,
		27.719549, 23.995489, 29.446058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579870, 24.063332, 29.664473>,  <28.046268, 23.960354, 30.064137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579870, 24.063332, 29.664473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270515, 24.180489, 29.439587>,  <28.084904, 24.250784, 29.304655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.270515, 24.180489, 29.439587>,  <28.579870, 24.063332, 29.664473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270515, 24.180489, 29.439587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496725, 0.831012, -0.250367,
		0.393878, -0.472897, -0.788181,
		-0.773386, 0.292895, -0.562217,
		28.038500, 24.268356, 29.270922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895819, 24.272360, 29.049204>,  <28.579870, 24.063332, 29.664473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895819, 24.272360, 29.049204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530037, 24.432720, 29.071304>,  <28.310568, 24.528936, 29.084564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530037, 24.432720, 29.071304>,  <28.895819, 24.272360, 29.049204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530037, 24.432720, 29.071304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387703, 0.907003, -0.164414,
		-0.116028, -0.128927, -0.984843,
		-0.914453, 0.400903, 0.055253,
		28.255701, 24.552992, 29.087879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959118, 24.571743, 28.523502>,  <28.895819, 24.272360, 29.049204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959118, 24.571743, 28.523502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632517, 24.734985, 28.686855>,  <28.436556, 24.832930, 28.784868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632517, 24.734985, 28.686855>,  <28.959118, 24.571743, 28.523502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632517, 24.734985, 28.686855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260062, 0.891501, -0.370936,
		-0.515455, -0.196665, -0.834044,
		-0.816501, 0.408104, 0.408384,
		28.387568, 24.857416, 28.809370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531309, 25.021441, 28.034653>,  <28.959118, 24.571743, 28.523502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531309, 25.021441, 28.034653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456898, 25.149033, 28.406384>,  <28.412251, 25.225588, 28.629421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456898, 25.149033, 28.406384>,  <28.531309, 25.021441, 28.034653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456898, 25.149033, 28.406384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245333, 0.930956, -0.270430,
		-0.951423, 0.177687, -0.251439,
		-0.186027, 0.318979, 0.929326,
		28.401089, 25.244726, 28.685181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114248, 25.605450, 27.913706>,  <28.531309, 25.021441, 28.034653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114248, 25.605450, 27.913706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246630, 25.652294, 28.288246>,  <28.326057, 25.680401, 28.512970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246630, 25.652294, 28.288246>,  <28.114248, 25.605450, 27.913706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246630, 25.652294, 28.288246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047422, 0.988951, -0.140453,
		-0.942455, 0.090887, 0.321742,
		0.330952, 0.117113, 0.936352,
		28.345915, 25.687428, 28.569151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741341, 26.185452, 28.218197>,  <28.114248, 25.605450, 27.913706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741341, 26.185452, 28.218197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090742, 26.174480, 28.412613>,  <28.300383, 26.167898, 28.529263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090742, 26.174480, 28.412613>,  <27.741341, 26.185452, 28.218197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090742, 26.174480, 28.412613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111232, 0.983244, -0.144424,
		-0.473937, 0.180218, 0.861920,
		0.873505, -0.027425, 0.486042,
		28.352795, 26.166252, 28.558426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724588, 26.816446, 28.525814>,  <27.741341, 26.185452, 28.218197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724588, 26.816446, 28.525814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103342, 26.696209, 28.571514>,  <28.330595, 26.624065, 28.598934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103342, 26.696209, 28.571514>,  <27.724588, 26.816446, 28.525814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103342, 26.696209, 28.571514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306280, 0.951277, -0.035554,
		-0.097996, 0.068658, 0.992816,
		0.946884, -0.300595, 0.114250,
		28.387407, 26.606030, 28.605789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997295, 27.375298, 28.833891>,  <27.724588, 26.816446, 28.525814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997295, 27.375298, 28.833891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332047, 27.194115, 28.710953>,  <28.532898, 27.085405, 28.637190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332047, 27.194115, 28.710953>,  <27.997295, 27.375298, 28.833891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332047, 27.194115, 28.710953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428611, 0.891487, -0.146775,
		0.340478, -0.008899, 0.940210,
		0.836879, -0.452959, -0.307346,
		28.583111, 27.058228, 28.618750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559456, 27.703421, 29.198526>,  <27.997295, 27.375298, 28.833891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559456, 27.703421, 29.198526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706860, 27.536350, 28.866322>,  <28.795301, 27.436108, 28.667000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706860, 27.536350, 28.866322>,  <28.559456, 27.703421, 29.198526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706860, 27.536350, 28.866322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395280, 0.879000, -0.266669,
		0.841399, -0.230014, 0.489020,
		0.368511, -0.417675, -0.830510,
		28.817413, 27.411047, 28.617168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275433, 28.029106, 29.185862>,  <28.559456, 27.703421, 29.198526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275433, 28.029106, 29.185862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186686, 27.883438, 28.824055>,  <29.133438, 27.796038, 28.606970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186686, 27.883438, 28.824055>,  <29.275433, 28.029106, 29.185862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186686, 27.883438, 28.824055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305320, 0.855044, -0.419142,
		0.926043, -0.369161, -0.078517,
		-0.221866, -0.364170, -0.904520,
		29.120125, 27.774187, 28.552698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701271, 28.240150, 28.755190>,  <29.275433, 28.029106, 29.185862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701271, 28.240150, 28.755190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400858, 28.156841, 28.504566>,  <29.220610, 28.106855, 28.354193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400858, 28.156841, 28.504566>,  <29.701271, 28.240150, 28.755190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400858, 28.156841, 28.504566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046006, 0.930134, -0.364327,
		0.658662, -0.302446, -0.688978,
		-0.751031, -0.208271, -0.626559,
		29.175549, 28.094360, 28.316599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932024, 28.425158, 28.123075>,  <29.701271, 28.240150, 28.755190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932024, 28.425158, 28.123075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532137, 28.420177, 28.131176>,  <29.292204, 28.417189, 28.136036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532137, 28.420177, 28.131176>,  <29.932024, 28.425158, 28.123075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532137, 28.420177, 28.131176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018974, 0.931139, -0.364170,
		-0.014322, -0.364451, -0.931112,
		-0.999717, -0.012451, 0.020251,
		29.232222, 28.416443, 28.137251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692383, 28.704092, 27.407476>,  <29.932024, 28.425158, 28.123075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692383, 28.704092, 27.407476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368172, 28.762039, 27.634476>,  <29.173645, 28.796806, 27.770676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368172, 28.762039, 27.634476>,  <29.692383, 28.704092, 27.407476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368172, 28.762039, 27.634476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174457, 0.865234, -0.470037,
		-0.559114, -0.479983, -0.676024,
		-0.810529, 0.144867, 0.567500,
		29.125013, 28.805500, 27.804726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199862, 28.864437, 26.982330>,  <29.692383, 28.704092, 27.407476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199862, 28.864437, 26.982330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064276, 29.018528, 27.325657>,  <28.982925, 29.110983, 27.531652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064276, 29.018528, 27.325657>,  <29.199862, 28.864437, 26.982330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064276, 29.018528, 27.325657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324589, 0.808419, -0.491020,
		-0.883032, -0.445037, -0.148983,
		-0.338963, 0.385228, 0.858315,
		28.962587, 29.134096, 27.583151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.523378, 29.033905, 26.902529>,  <29.199862, 28.864437, 26.982330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.523378, 29.033905, 26.902529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583490, 29.281162, 27.211155>,  <28.619558, 29.429516, 27.396330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583490, 29.281162, 27.211155>,  <28.523378, 29.033905, 26.902529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583490, 29.281162, 27.211155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456368, 0.735679, -0.500504,
		-0.877008, -0.276902, 0.392659,
		0.150280, 0.618143, 0.771566,
		28.628574, 29.466606, 27.442625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905180, 29.475365, 26.955435>,  <28.523378, 29.033905, 26.902529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905180, 29.475365, 26.955435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168236, 29.682682, 27.174114>,  <28.326069, 29.807072, 27.305323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168236, 29.682682, 27.174114>,  <27.905180, 29.475365, 26.955435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168236, 29.682682, 27.174114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507464, 0.841139, -0.186990,
		-0.556767, -0.154458, 0.816182,
		0.657641, 0.518293, 0.546700,
		28.365528, 29.838169, 27.338125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451500, 29.950861, 27.287970>,  <27.905180, 29.475365, 26.955435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451500, 29.950861, 27.287970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823706, 30.089123, 27.336411>,  <28.047029, 30.172079, 27.365475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.823706, 30.089123, 27.336411>,  <27.451500, 29.950861, 27.287970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823706, 30.089123, 27.336411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340755, 0.938254, -0.059714,
		-0.134265, 0.014299, 0.990842,
		0.930515, 0.345652, 0.121102,
		28.102859, 30.192818, 27.372742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342649, 30.457525, 27.773767>,  <27.451500, 29.950861, 27.287970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342649, 30.457525, 27.773767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683207, 30.505795, 27.569584>,  <27.887541, 30.534756, 27.447073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683207, 30.505795, 27.569584>,  <27.342649, 30.457525, 27.773767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683207, 30.505795, 27.569584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237540, 0.956368, -0.170102,
		0.467660, 0.266078, 0.842909,
		0.851392, 0.120675, -0.510459,
		27.938623, 30.541998, 27.416447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563871, 31.211227, 28.032516>,  <27.342649, 30.457525, 27.773767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563871, 31.211227, 28.032516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761429, 31.117119, 27.697681>,  <27.879963, 31.060654, 27.496780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761429, 31.117119, 27.697681>,  <27.563871, 31.211227, 28.032516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761429, 31.117119, 27.697681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541364, 0.670151, -0.507762,
		0.680437, 0.703950, 0.203615,
		0.493892, -0.235270, -0.837089,
		27.909597, 31.046537, 27.446554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799791, 31.879179, 27.768341>,  <27.563871, 31.211227, 28.032516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799791, 31.879179, 27.768341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758072, 31.613342, 27.472385>,  <27.733040, 31.453840, 27.294811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758072, 31.613342, 27.472385>,  <27.799791, 31.879179, 27.768341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758072, 31.613342, 27.472385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529692, 0.666774, -0.524250,
		0.841753, 0.337236, -0.421574,
		-0.104299, -0.664593, -0.739891,
		27.726782, 31.413965, 27.250418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911547, 32.289253, 27.296511>,  <27.799791, 31.879179, 27.768341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911547, 32.289253, 27.296511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754471, 31.973377, 27.107967>,  <27.660225, 31.783850, 26.994841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754471, 31.973377, 27.107967>,  <27.911547, 32.289253, 27.296511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754471, 31.973377, 27.107967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444017, 0.611632, -0.654794,
		0.805385, -0.047839, -0.590818,
		-0.392688, -0.789695, -0.471358,
		27.636663, 31.736469, 26.966560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084007, 32.280434, 26.550797>,  <27.911547, 32.289253, 27.296511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084007, 32.280434, 26.550797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747374, 32.064388, 26.552254>,  <27.545393, 31.934761, 26.553127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747374, 32.064388, 26.552254>,  <28.084007, 32.280434, 26.550797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747374, 32.064388, 26.552254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341673, 0.527134, -0.778068,
		0.418327, -0.656053, -0.628170,
		-0.841583, -0.540115, 0.003642,
		27.494898, 31.902353, 26.553347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936701, 32.205307, 25.900190>,  <28.084007, 32.280434, 26.550797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936701, 32.205307, 25.900190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591852, 32.109383, 26.078735>,  <27.384943, 32.051826, 26.185862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591852, 32.109383, 26.078735>,  <27.936701, 32.205307, 25.900190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591852, 32.109383, 26.078735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492596, 0.190235, -0.849211,
		0.118734, -0.951999, -0.282134,
		-0.862121, -0.239808, 0.446363,
		27.333216, 32.037441, 26.212645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576923, 31.863224, 25.417049>,  <27.936701, 32.205307, 25.900190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576923, 31.863224, 25.417049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262125, 31.932987, 25.653767>,  <27.073246, 31.974844, 25.795797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.262125, 31.932987, 25.653767>,  <27.576923, 31.863224, 25.417049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262125, 31.932987, 25.653767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565884, 0.178077, -0.805024,
		-0.245786, -0.968437, -0.041452,
		-0.786997, 0.174407, 0.591792,
		27.026026, 31.985310, 25.831305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955465, 31.500082, 25.099976>,  <27.576923, 31.863224, 25.417049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955465, 31.500082, 25.099976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816833, 31.785759, 25.343224>,  <26.733654, 31.957165, 25.489172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816833, 31.785759, 25.343224>,  <26.955465, 31.500082, 25.099976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816833, 31.785759, 25.343224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733449, 0.197812, -0.650325,
		-0.584751, -0.671415, 0.455267,
		-0.346581, 0.714193, 0.608120,
		26.712860, 32.000015, 25.525660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237389, 31.497282, 24.975399>,  <26.955465, 31.500082, 25.099976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237389, 31.497282, 24.975399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295879, 31.845028, 25.164215>,  <26.330973, 32.053677, 25.277504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295879, 31.845028, 25.164215>,  <26.237389, 31.497282, 24.975399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295879, 31.845028, 25.164215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665889, 0.439380, -0.602941,
		-0.731581, -0.226161, 0.643149,
		0.146225, 0.869366, 0.472040,
		26.339746, 32.105839, 25.305826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555157, 31.807049, 25.135010>,  <26.237389, 31.497282, 24.975399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555157, 31.807049, 25.135010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792233, 32.127232, 25.170757>,  <25.934479, 32.319340, 25.192205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.792233, 32.127232, 25.170757>,  <25.555157, 31.807049, 25.135010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792233, 32.127232, 25.170757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655075, 0.543629, -0.524732,
		-0.468607, 0.252463, 0.846564,
		0.592692, 0.800456, 0.089366,
		25.970039, 32.367367, 25.197567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080738, 32.480961, 25.275526>,  <25.555157, 31.807049, 25.135010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080738, 32.480961, 25.275526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427925, 32.542973, 25.086803>,  <25.636238, 32.580177, 24.973570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427925, 32.542973, 25.086803>,  <25.080738, 32.480961, 25.275526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427925, 32.542973, 25.086803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493519, 0.375277, -0.784606,
		0.055424, 0.913857, 0.402236,
		0.867967, 0.155025, -0.471805,
		25.688314, 32.589481, 24.945261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110483, 33.212547, 25.227209>,  <25.080738, 32.480961, 25.275526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110483, 33.212547, 25.227209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316111, 33.050301, 24.924896>,  <25.439487, 32.952953, 24.743507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316111, 33.050301, 24.924896>,  <25.110483, 33.212547, 25.227209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316111, 33.050301, 24.924896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580564, 0.484079, -0.654686,
		0.631409, 0.775335, 0.013366,
		0.514071, -0.405615, -0.755783,
		25.470331, 32.928616, 24.698162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337015, 33.650162, 24.659811>,  <25.110483, 33.212547, 25.227209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337015, 33.650162, 24.659811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280684, 33.299671, 24.475468>,  <25.246883, 33.089375, 24.364862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280684, 33.299671, 24.475468>,  <25.337015, 33.650162, 24.659811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280684, 33.299671, 24.475468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558146, 0.454739, -0.694036,
		0.817704, 0.159485, -0.553104,
		-0.140830, -0.876229, -0.460857,
		25.238434, 33.036804, 24.337210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331467, 33.864098, 23.942049>,  <25.337015, 33.650162, 24.659811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331467, 33.864098, 23.942049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158382, 33.503815, 23.957436>,  <25.054531, 33.287643, 23.966667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158382, 33.503815, 23.957436>,  <25.331467, 33.864098, 23.942049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.158382, 33.503815, 23.957436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436162, 0.171813, -0.883313,
		0.789001, -0.398998, -0.467202,
		-0.432711, -0.900712, 0.038467,
		25.028568, 33.233601, 23.968975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.797483, 34.414082, 24.227055>,  <25.331467, 33.864098, 23.942049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.797483, 34.414082, 24.227055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543184, 34.438622, 23.919273>,  <24.390604, 34.453346, 23.734604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543184, 34.438622, 23.919273>,  <24.797483, 34.414082, 24.227055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543184, 34.438622, 23.919273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544923, -0.741687, 0.391100,
		-0.546700, 0.667935, 0.504957,
		-0.635749, 0.061348, -0.769454,
		24.352459, 34.457027, 23.688437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.703606, 34.826271, 23.647646>,  <24.797483, 34.414082, 24.227055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.703606, 34.826271, 23.647646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352112, 34.816547, 23.838322>,  <24.141214, 34.810711, 23.952726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.352112, 34.816547, 23.838322>,  <24.703606, 34.826271, 23.647646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.352112, 34.816547, 23.838322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364672, 0.678556, -0.637634,
		-0.307958, -0.734146, -0.605137,
		-0.878736, -0.024312, 0.476689,
		24.088491, 34.809254, 23.981329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.093021, 34.735123, 23.144514>,  <24.703606, 34.826271, 23.647646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.093021, 34.735123, 23.144514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.966555, 34.930687, 23.469723>,  <23.890675, 35.048027, 23.664848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.966555, 34.930687, 23.469723>,  <24.093021, 34.735123, 23.144514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.966555, 34.930687, 23.469723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474408, 0.660662, -0.581776,
		-0.821569, -0.569642, 0.023065,
		-0.316166, 0.488912, 0.813022,
		23.871704, 35.077362, 23.713629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.377998, 34.913147, 23.100002>,  <24.093021, 34.735123, 23.144514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.377998, 34.913147, 23.100002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.540754, 35.180534, 23.349030>,  <23.638407, 35.340965, 23.498446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.540754, 35.180534, 23.349030>,  <23.377998, 34.913147, 23.100002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.540754, 35.180534, 23.349030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543158, 0.725014, -0.423478,
		-0.734452, -0.165845, 0.658084,
		0.406889, 0.668469, 0.622568,
		23.662821, 35.381077, 23.535801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.113388, 35.391006, 22.575636>,  <23.377998, 34.913147, 23.100002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.113388, 35.391006, 22.575636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755779, 35.322765, 22.409927>,  <22.541214, 35.281822, 22.310503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.755779, 35.322765, 22.409927>,  <23.113388, 35.391006, 22.575636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.755779, 35.322765, 22.409927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135427, 0.778505, -0.612854,
		0.427064, -0.604009, -0.672897,
		-0.894022, -0.170599, -0.414271,
		22.487572, 35.271587, 22.285646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.030254, 34.992821, 21.862463>,  <23.113388, 35.391006, 22.575636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.030254, 34.992821, 21.862463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.801632, 35.301697, 21.973492>,  <22.664457, 35.487022, 22.040108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.801632, 35.301697, 21.973492>,  <23.030254, 34.992821, 21.862463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.801632, 35.301697, 21.973492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360252, 0.540064, -0.760624,
		-0.737251, -0.334745, -0.586861,
		-0.571558, 0.772189, 0.277570,
		22.630165, 35.533352, 22.056763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.634554, 35.244774, 21.344788>,  <23.030254, 34.992821, 21.862463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.634554, 35.244774, 21.344788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.642187, 35.570419, 21.576942>,  <22.646767, 35.765808, 21.716236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.642187, 35.570419, 21.576942>,  <22.634554, 35.244774, 21.344788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642187, 35.570419, 21.576942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205016, 0.564971, -0.799234,
		-0.978573, 0.134240, -0.156126,
		0.019083, 0.814117, 0.580387,
		22.647911, 35.814655, 21.751059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.369284, 35.658188, 20.894037>,  <22.634554, 35.244774, 21.344788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.369284, 35.658188, 20.894037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.577906, 35.873569, 21.158779>,  <22.703079, 36.002800, 21.317623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.577906, 35.873569, 21.158779>,  <22.369284, 35.658188, 20.894037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.577906, 35.873569, 21.158779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353757, 0.569429, -0.742028,
		-0.776426, 0.621143, 0.106506,
		0.521554, 0.538453, 0.661854,
		22.734371, 36.035107, 21.357336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246714, 36.412117, 20.772049>,  <22.369284, 35.658188, 20.894037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246714, 36.412117, 20.772049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.607615, 36.375416, 20.940582>,  <22.824156, 36.353394, 21.041702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.607615, 36.375416, 20.940582>,  <22.246714, 36.412117, 20.772049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.607615, 36.375416, 20.940582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386113, 0.606939, -0.694653,
		-0.191983, 0.789434, 0.583040,
		0.902252, -0.091758, 0.421333,
		22.878290, 36.347889, 21.066982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.471180, 37.035236, 20.705492>,  <22.246714, 36.412117, 20.772049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.471180, 37.035236, 20.705492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.790318, 36.806347, 20.781395>,  <22.981800, 36.669014, 20.826937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.790318, 36.806347, 20.781395>,  <22.471180, 37.035236, 20.705492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.790318, 36.806347, 20.781395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509313, 0.471363, -0.720012,
		0.322563, 0.671102, 0.667514,
		0.797843, -0.572223, 0.189756,
		23.029671, 36.634682, 20.838322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.002722, 37.472637, 20.514545>,  <22.471180, 37.035236, 20.705492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.002722, 37.472637, 20.514545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.194445, 37.122883, 20.544788>,  <23.309479, 36.913029, 20.562935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.194445, 37.122883, 20.544788>,  <23.002722, 37.472637, 20.514545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.194445, 37.122883, 20.544788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684460, 0.318487, -0.655806,
		0.549346, 0.366082, 0.751134,
		0.479305, -0.874385, 0.075609,
		23.338236, 36.860569, 20.567471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606741, 37.599358, 20.749392>,  <23.002722, 37.472637, 20.514545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606741, 37.599358, 20.749392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.634619, 37.267529, 20.527779>,  <23.651344, 37.068432, 20.394812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.634619, 37.267529, 20.527779>,  <23.606741, 37.599358, 20.749392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.634619, 37.267529, 20.527779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722803, 0.424765, -0.545097,
		0.687531, -0.362465, 0.629222,
		0.069692, -0.829574, -0.554030,
		23.655527, 37.018658, 20.361570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347088, 37.553055, 20.620556>,  <23.606741, 37.599358, 20.749392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347088, 37.553055, 20.620556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178337, 37.294998, 20.365742>,  <24.077085, 37.140163, 20.212852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178337, 37.294998, 20.365742>,  <24.347088, 37.553055, 20.620556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178337, 37.294998, 20.365742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666430, 0.255738, -0.700335,
		0.614727, -0.719996, 0.322050,
		-0.421878, -0.645139, -0.637036,
		24.051773, 37.101456, 20.174631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909742, 37.013222, 20.338831>,  <24.347088, 37.553055, 20.620556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909742, 37.013222, 20.338831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603065, 37.040947, 20.083527>,  <24.419060, 37.057583, 19.930344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.603065, 37.040947, 20.083527>,  <24.909742, 37.013222, 20.338831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.603065, 37.040947, 20.083527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628422, 0.284502, -0.723978,
		0.131403, -0.956166, -0.261686,
		-0.766693, 0.069317, -0.638260,
		24.373058, 37.061741, 19.892048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200821, 36.737415, 19.669794>,  <24.909742, 37.013222, 20.338831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200821, 36.737415, 19.669794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865971, 36.928501, 19.563202>,  <24.665060, 37.043152, 19.499247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865971, 36.928501, 19.563202>,  <25.200821, 36.737415, 19.669794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865971, 36.928501, 19.563202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423621, 0.257959, -0.868333,
		-0.346076, -0.839788, -0.418314,
		-0.837124, 0.477716, -0.266479,
		24.614834, 37.071815, 19.483259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163153, 36.454193, 19.002394>,  <25.200821, 36.737415, 19.669794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163153, 36.454193, 19.002394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939941, 36.783424, 19.044628>,  <24.806015, 36.980961, 19.069969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939941, 36.783424, 19.044628>,  <25.163153, 36.454193, 19.002394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939941, 36.783424, 19.044628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307540, 0.323311, -0.894924,
		-0.770728, -0.466922, -0.433546,
		-0.558030, 0.823076, 0.105588,
		24.772532, 37.030346, 19.076305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806356, 36.578888, 18.398180>,  <25.163153, 36.454193, 19.002394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806356, 36.578888, 18.398180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856321, 36.934631, 18.574108>,  <24.886301, 37.148075, 18.679665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856321, 36.934631, 18.574108>,  <24.806356, 36.578888, 18.398180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856321, 36.934631, 18.574108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534967, 0.312961, -0.784771,
		-0.835588, 0.333318, -0.436683,
		0.124914, 0.889356, 0.439821,
		24.893795, 37.201439, 18.706055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822599, 37.019131, 17.842447>,  <24.806356, 36.578888, 18.398180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822599, 37.019131, 17.842447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959492, 37.275341, 18.117432>,  <25.041628, 37.429070, 18.282421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.959492, 37.275341, 18.117432>,  <24.822599, 37.019131, 17.842447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.959492, 37.275341, 18.117432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758156, 0.243949, -0.604722,
		-0.555047, 0.728156, -0.402134,
		0.342232, 0.640530, 0.687459,
		25.062160, 37.467499, 18.323669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830570, 37.670547, 17.511061>,  <24.822599, 37.019131, 17.842447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830570, 37.670547, 17.511061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089975, 37.723488, 17.810905>,  <25.245619, 37.755253, 17.990812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089975, 37.723488, 17.810905>,  <24.830570, 37.670547, 17.511061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089975, 37.723488, 17.810905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629211, 0.461016, -0.625746,
		-0.428401, 0.877467, 0.215696,
		0.648511, 0.132352, 0.749611,
		25.284529, 37.763195, 18.035789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096685, 38.386902, 17.438837>,  <24.830570, 37.670547, 17.511061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096685, 38.386902, 17.438837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359028, 38.172886, 17.651848>,  <25.516434, 38.044476, 17.779655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359028, 38.172886, 17.651848>,  <25.096685, 38.386902, 17.438837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359028, 38.172886, 17.651848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752505, 0.407408, -0.517451,
		0.059900, 0.740104, 0.669820,
		0.655857, -0.535038, 0.532528,
		25.555784, 38.012375, 17.811605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544996, 38.821781, 17.665813>,  <25.096685, 38.386902, 17.438837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544996, 38.821781, 17.665813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757860, 38.484962, 17.701050>,  <25.885578, 38.282871, 17.722191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757860, 38.484962, 17.701050>,  <25.544996, 38.821781, 17.665813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757860, 38.484962, 17.701050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790558, 0.456969, -0.407673,
		0.303026, 0.286588, 0.908869,
		0.532160, -0.842049, 0.088091,
		25.917507, 38.232349, 17.727478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.188944, 39.068310, 18.074245>,  <25.544996, 38.821781, 17.665813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.188944, 39.068310, 18.074245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258959, 38.736816, 17.861618>,  <26.300968, 38.537922, 17.734041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258959, 38.736816, 17.861618>,  <26.188944, 39.068310, 18.074245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258959, 38.736816, 17.861618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802089, 0.433134, -0.411156,
		0.570978, -0.354396, 0.740532,
		0.175038, -0.828733, -0.531567,
		26.311470, 38.488197, 17.702148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961081, 39.136463, 17.945595>,  <26.188944, 39.068310, 18.074245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961081, 39.136463, 17.945595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869049, 38.823765, 17.713753>,  <26.813829, 38.636147, 17.574648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.869049, 38.823765, 17.713753>,  <26.961081, 39.136463, 17.945595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869049, 38.823765, 17.713753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869599, 0.102217, -0.483063,
		0.436877, -0.615166, 0.656285,
		-0.230080, -0.781743, -0.579604,
		26.800026, 38.589241, 17.539871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515902, 38.653660, 17.875212>,  <26.961081, 39.136463, 17.945595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515902, 38.653660, 17.875212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287165, 38.544327, 17.565815>,  <27.149923, 38.478729, 17.380177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287165, 38.544327, 17.565815>,  <27.515902, 38.653660, 17.875212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287165, 38.544327, 17.565815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766077, 0.159373, -0.622677,
		0.293470, -0.948626, 0.118256,
		-0.571841, -0.273331, -0.773492,
		27.115612, 38.462326, 17.333767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813028, 38.030682, 17.481508>,  <27.515902, 38.653660, 17.875212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813028, 38.030682, 17.481508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597723, 38.260334, 17.234722>,  <27.468540, 38.398125, 17.086651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597723, 38.260334, 17.234722>,  <27.813028, 38.030682, 17.481508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597723, 38.260334, 17.234722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805300, 0.134500, -0.577409,
		-0.248527, -0.807640, -0.534744,
		-0.538262, 0.574132, -0.616966,
		27.436245, 38.432575, 17.049633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895988, 37.759319, 16.840908>,  <27.813028, 38.030682, 17.481508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895988, 37.759319, 16.840908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774462, 38.135822, 16.781933>,  <27.701546, 38.361725, 16.746548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774462, 38.135822, 16.781933>,  <27.895988, 37.759319, 16.840908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774462, 38.135822, 16.781933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838702, 0.190818, -0.510067,
		-0.451969, -0.278622, -0.847404,
		-0.303816, 0.941254, -0.147437,
		27.683317, 38.418198, 16.737701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870831, 37.967018, 16.109171>,  <27.895988, 37.759319, 16.840908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870831, 37.967018, 16.109171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932453, 38.295872, 16.328392>,  <27.969427, 38.493183, 16.459925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932453, 38.295872, 16.328392>,  <27.870831, 37.967018, 16.109171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932453, 38.295872, 16.328392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778696, 0.240403, -0.579516,
		-0.608193, 0.516044, -0.603158,
		0.154055, 0.822135, 0.548053,
		27.978670, 38.542511, 16.492807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856428, 38.542904, 15.587799>,  <27.870831, 37.967018, 16.109171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856428, 38.542904, 15.587799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068703, 38.597748, 15.922360>,  <28.196068, 38.630653, 16.123096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068703, 38.597748, 15.922360>,  <27.856428, 38.542904, 15.587799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068703, 38.597748, 15.922360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788940, 0.280730, -0.546593,
		-0.309747, 0.949943, 0.040809,
		0.530688, 0.137110, 0.836403,
		28.227909, 38.638882, 16.173281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280247, 39.203064, 15.545679>,  <27.856428, 38.542904, 15.587799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280247, 39.203064, 15.545679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490784, 38.961208, 15.784802>,  <28.617105, 38.816093, 15.928277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.490784, 38.961208, 15.784802>,  <28.280247, 39.203064, 15.545679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490784, 38.961208, 15.784802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771234, 0.043473, -0.635065,
		0.357996, 0.795313, 0.489199,
		0.526343, -0.604638, 0.597809,
		28.648687, 38.779816, 15.964146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949623, 39.792786, 16.033487>,  <28.280247, 39.203064, 15.545679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949623, 39.792786, 16.033487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636940, 40.041878, 16.046944>,  <27.449329, 40.191334, 16.055017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636940, 40.041878, 16.046944>,  <27.949623, 39.792786, 16.033487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636940, 40.041878, 16.046944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440318, -0.512913, -0.736913,
		-0.441646, -0.590865, 0.675150,
		-0.781710, 0.622735, 0.033643,
		27.402428, 40.228699, 16.057037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826740, 40.163174, 16.695007>,  <27.949623, 39.792786, 16.033487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826740, 40.163174, 16.695007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083952, 39.974327, 16.936211>,  <28.238279, 39.861019, 17.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083952, 39.974327, 16.936211>,  <27.826740, 40.163174, 16.695007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083952, 39.974327, 16.936211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690177, 0.698496, -0.189102,
		-0.331919, 0.537779, 0.774999,
		0.643029, -0.472120, 0.603006,
		28.276861, 39.832691, 17.117113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890865, 40.786343, 17.125751>,  <27.826740, 40.163174, 16.695007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890865, 40.786343, 17.125751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160023, 40.502953, 17.040646>,  <28.321518, 40.332916, 16.989582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160023, 40.502953, 17.040646>,  <27.890865, 40.786343, 17.125751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160023, 40.502953, 17.040646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579651, 0.683686, -0.443371,
		0.459583, 0.175013, 0.870720,
		0.672895, -0.708480, -0.212764,
		28.361891, 40.290409, 16.976816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727074, 41.543186, 16.979359>,  <27.890865, 40.786343, 17.125751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727074, 41.543186, 16.979359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625832, 41.894787, 17.140995>,  <27.565086, 42.105747, 17.237976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.625832, 41.894787, 17.140995>,  <27.727074, 41.543186, 16.979359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625832, 41.894787, 17.140995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880165, -0.382595, 0.280948,
		0.401558, -0.284558, 0.870505,
		-0.253105, 0.879004, 0.404091,
		27.549900, 42.158489, 17.262222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574993, 41.605927, 17.706413>,  <27.727074, 41.543186, 16.979359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574993, 41.605927, 17.706413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369223, 41.897717, 17.526093>,  <27.245760, 42.072792, 17.417900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369223, 41.897717, 17.526093>,  <27.574993, 41.605927, 17.706413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369223, 41.897717, 17.526093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840420, -0.324376, 0.434136,
		0.170464, 0.602196, 0.779937,
		-0.514428, 0.729479, -0.450803,
		27.214893, 42.116562, 17.390852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056692, 41.741501, 18.131742>,  <27.574993, 41.605927, 17.706413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056692, 41.741501, 18.131742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928434, 41.890335, 17.783321>,  <26.851479, 41.979637, 17.574268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.928434, 41.890335, 17.783321>,  <27.056692, 41.741501, 18.131742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928434, 41.890335, 17.783321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939121, -0.244730, 0.241161,
		-0.123440, 0.895353, 0.427909,
		-0.320647, 0.372090, -0.871054,
		26.832241, 42.001961, 17.522005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638365, 42.216915, 18.316263>,  <27.056692, 41.741501, 18.131742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638365, 42.216915, 18.316263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527855, 42.081543, 17.956455>,  <26.461550, 42.000320, 17.740570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527855, 42.081543, 17.956455>,  <26.638365, 42.216915, 18.316263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527855, 42.081543, 17.956455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907619, -0.215934, 0.360001,
		-0.316071, 0.915882, -0.247506,
		-0.276274, -0.338427, -0.899522,
		26.444973, 41.980015, 17.686598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068182, 42.601135, 18.173048>,  <26.638365, 42.216915, 18.316263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068182, 42.601135, 18.173048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087427, 42.245518, 17.990932>,  <26.098974, 42.032146, 17.881662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.087427, 42.245518, 17.990932>,  <26.068182, 42.601135, 18.173048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087427, 42.245518, 17.990932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865191, -0.264869, 0.425781,
		-0.499130, 0.373426, -0.781935,
		0.048113, -0.889043, -0.455289,
		26.101862, 41.978806, 17.854345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385242, 42.536396, 17.803211>,  <26.068182, 42.601135, 18.173048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385242, 42.536396, 17.803211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542273, 42.171219, 17.847778>,  <25.636490, 41.952110, 17.874519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.542273, 42.171219, 17.847778>,  <25.385242, 42.536396, 17.803211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.542273, 42.171219, 17.847778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879915, -0.337565, 0.334364,
		-0.267645, -0.229302, -0.935835,
		0.392575, -0.912946, 0.111419,
		25.660046, 41.897335, 17.881203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.791571, 42.151535, 17.671280>,  <25.385242, 42.536396, 17.803211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.791571, 42.151535, 17.671280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018682, 41.889397, 17.870537>,  <25.154949, 41.732113, 17.990091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018682, 41.889397, 17.870537>,  <24.791571, 42.151535, 17.671280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018682, 41.889397, 17.870537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781087, -0.237864, 0.577342,
		-0.259880, -0.716883, -0.646947,
		0.567772, -0.655362, 0.498132,
		25.189016, 41.692791, 18.019979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438824, 41.499195, 17.750856>,  <24.791571, 42.151535, 17.671280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438824, 41.499195, 17.750856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730446, 41.450787, 18.020325>,  <24.905420, 41.421741, 18.182005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730446, 41.450787, 18.020325>,  <24.438824, 41.499195, 17.750856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730446, 41.450787, 18.020325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653084, -0.417546, 0.631773,
		0.204833, -0.900561, -0.383450,
		0.729058, -0.121017, 0.673669,
		24.949163, 41.414482, 18.222425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.312971, 40.783905, 18.026127>,  <24.438824, 41.499195, 17.750856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.312971, 40.783905, 18.026127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529566, 40.997448, 18.285908>,  <24.659523, 41.125576, 18.441776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.529566, 40.997448, 18.285908>,  <24.312971, 40.783905, 18.026127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529566, 40.997448, 18.285908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489159, -0.428216, 0.759839,
		0.683753, -0.729126, 0.029270,
		0.541485, 0.533859, 0.649452,
		24.692011, 41.157604, 18.480743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456450, 40.302647, 18.538467>,  <24.312971, 40.783905, 18.026127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456450, 40.302647, 18.538467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518908, 40.658741, 18.709629>,  <24.556383, 40.872398, 18.812326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518908, 40.658741, 18.709629>,  <24.456450, 40.302647, 18.538467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518908, 40.658741, 18.709629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415058, -0.333978, 0.846277,
		0.896295, -0.309748, 0.317349,
		0.156145, 0.890233, 0.427906,
		24.565752, 40.925812, 18.838001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941488, 40.276634, 19.040527>,  <24.456450, 40.302647, 18.538467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941488, 40.276634, 19.040527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731358, 40.601822, 19.141010>,  <24.605278, 40.796936, 19.201300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731358, 40.601822, 19.141010>,  <24.941488, 40.276634, 19.040527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.731358, 40.601822, 19.141010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325957, -0.464975, 0.823134,
		0.785991, 0.350532, 0.509259,
		-0.525328, 0.812973, 0.251208,
		24.573759, 40.845715, 19.216373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131067, 40.493366, 19.857698>,  <24.941488, 40.276634, 19.040527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131067, 40.493366, 19.857698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775522, 40.643505, 19.752594>,  <24.562195, 40.733589, 19.689531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.775522, 40.643505, 19.752594>,  <25.131067, 40.493366, 19.857698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775522, 40.643505, 19.752594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367495, -0.241540, 0.898113,
		0.273633, 0.894861, 0.352632,
		-0.888860, 0.375344, -0.262763,
		24.508863, 40.756107, 19.673765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.957111, 40.815575, 20.468231>,  <25.131067, 40.493366, 19.857698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.957111, 40.815575, 20.468231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617384, 40.786587, 20.259079>,  <24.413548, 40.769192, 20.133587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.617384, 40.786587, 20.259079>,  <24.957111, 40.815575, 20.468231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.617384, 40.786587, 20.259079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499274, -0.211371, 0.840267,
		-0.171419, 0.974715, 0.143337,
		-0.849318, -0.072473, -0.522883,
		24.362589, 40.764843, 20.102215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543596, 41.121597, 20.875378>,  <24.957111, 40.815575, 20.468231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543596, 41.121597, 20.875378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326756, 40.885555, 20.636078>,  <24.196651, 40.743931, 20.492498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326756, 40.885555, 20.636078>,  <24.543596, 41.121597, 20.875378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326756, 40.885555, 20.636078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538774, -0.302262, 0.786359,
		-0.644862, 0.748608, -0.154076,
		-0.542103, -0.590105, -0.598247,
		24.164125, 40.708523, 20.456604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980282, 41.034252, 21.268946>,  <24.543596, 41.121597, 20.875378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980282, 41.034252, 21.268946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.909391, 40.759811, 20.986710>,  <23.866858, 40.595146, 20.817368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.909391, 40.759811, 20.986710>,  <23.980282, 41.034252, 21.268946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.909391, 40.759811, 20.986710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599463, -0.493343, 0.630283,
		-0.780535, 0.534678, -0.323858,
		-0.177225, -0.686100, -0.705591,
		23.856224, 40.553982, 20.775032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.185923, 40.868492, 21.236977>,  <23.980282, 41.034252, 21.268946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.185923, 40.868492, 21.236977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.406746, 40.574524, 21.079433>,  <23.539240, 40.398144, 20.984907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.406746, 40.574524, 21.079433>,  <23.185923, 40.868492, 21.236977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.406746, 40.574524, 21.079433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676052, -0.671006, 0.304473,
		-0.488044, 0.098181, -0.867279,
		0.552056, -0.734923, -0.393856,
		23.572363, 40.354046, 20.961277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.672558, 40.545792, 20.905396>,  <23.185923, 40.868492, 21.236977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.672558, 40.545792, 20.905396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.987366, 40.318169, 21.000706>,  <23.176250, 40.181595, 21.057892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.987366, 40.318169, 21.000706>,  <22.672558, 40.545792, 20.905396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.987366, 40.318169, 21.000706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614694, -0.690496, 0.381270,
		-0.052436, -0.446534, -0.893229,
		0.787021, -0.569055, 0.238275,
		23.223473, 40.147453, 21.072187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.542320, 39.908447, 20.671520>,  <22.672558, 40.545792, 20.905396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.542320, 39.908447, 20.671520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.839682, 39.834869, 20.928741>,  <23.018099, 39.790722, 21.083075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.839682, 39.834869, 20.928741>,  <22.542320, 39.908447, 20.671520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.839682, 39.834869, 20.928741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504803, -0.785037, 0.359015,
		0.438780, -0.591507, -0.676455,
		0.743401, -0.183948, 0.643053,
		23.062702, 39.779686, 21.121656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.765511, 39.143288, 20.650663>,  <22.542320, 39.908447, 20.671520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.765511, 39.143288, 20.650663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.842640, 39.307114, 21.007332>,  <22.888918, 39.405407, 21.221333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.842640, 39.307114, 21.007332>,  <22.765511, 39.143288, 20.650663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.842640, 39.307114, 21.007332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511609, -0.733465, 0.447531,
		0.837302, -0.542482, 0.068106,
		0.192825, 0.409562, 0.891671,
		22.900488, 39.429981, 21.274834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.810995, 38.566879, 21.056656>,  <22.765511, 39.143288, 20.650663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.810995, 38.566879, 21.056656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786068, 38.861687, 21.325851>,  <22.771111, 39.038570, 21.487370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.786068, 38.861687, 21.325851>,  <22.810995, 38.566879, 21.056656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.786068, 38.861687, 21.325851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479047, -0.613638, 0.627664,
		0.875574, -0.283278, 0.391309,
		-0.062319, 0.737022, 0.672989,
		22.767372, 39.082794, 21.527748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.921406, 38.247379, 21.598482>,  <22.810995, 38.566879, 21.056656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.921406, 38.247379, 21.598482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.772707, 38.577587, 21.768341>,  <22.683487, 38.775711, 21.870256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.772707, 38.577587, 21.768341>,  <22.921406, 38.247379, 21.598482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.772707, 38.577587, 21.768341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558581, -0.564265, 0.607941,
		0.741479, -0.011199, 0.670883,
		-0.371747, 0.825518, 0.424646,
		22.661182, 38.825241, 21.895735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.146828, 38.212269, 22.272846>,  <22.921406, 38.247379, 21.598482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.146828, 38.212269, 22.272846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824356, 38.448078, 22.252693>,  <22.630873, 38.589565, 22.240601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.824356, 38.448078, 22.252693>,  <23.146828, 38.212269, 22.272846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.824356, 38.448078, 22.252693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443263, -0.545366, 0.711403,
		0.391910, 0.595851, 0.700976,
		-0.806179, 0.589523, -0.050384,
		22.582502, 38.624935, 22.237577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.963648, 38.519238, 23.031403>,  <23.146828, 38.212269, 22.272846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.963648, 38.519238, 23.031403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.639048, 38.575466, 22.804527>,  <22.444286, 38.609203, 22.668402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.639048, 38.575466, 22.804527>,  <22.963648, 38.519238, 23.031403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.639048, 38.575466, 22.804527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584239, -0.176366, 0.792187,
		0.011329, 0.974235, 0.225251,
		-0.811503, 0.140575, -0.567188,
		22.395597, 38.617638, 22.634371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.414480, 38.914722, 23.466251>,  <22.963648, 38.519238, 23.031403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.414480, 38.914722, 23.466251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.239975, 38.704124, 23.174366>,  <22.135273, 38.577766, 22.999235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.239975, 38.704124, 23.174366>,  <22.414480, 38.914722, 23.466251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.239975, 38.704124, 23.174366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653956, -0.371522, 0.659024,
		-0.618075, 0.764708, -0.182221,
		-0.436262, -0.526491, -0.729714,
		22.109097, 38.546177, 22.955452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745899, 38.814873, 23.724716>,  <22.414480, 38.914722, 23.466251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745899, 38.814873, 23.724716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.734140, 38.559013, 23.417473>,  <21.727085, 38.405499, 23.233128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.734140, 38.559013, 23.417473>,  <21.745899, 38.814873, 23.724716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.734140, 38.559013, 23.417473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745725, -0.497663, 0.442973,
		-0.665605, 0.585818, -0.462371,
		-0.029397, -0.639647, -0.768107,
		21.725321, 38.367119, 23.187040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071810, 38.696342, 23.570677>,  <21.745899, 38.814873, 23.724716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071810, 38.696342, 23.570677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.299824, 38.385708, 23.463367>,  <21.436632, 38.199326, 23.398983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.299824, 38.385708, 23.463367>,  <21.071810, 38.696342, 23.570677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.299824, 38.385708, 23.463367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643911, -0.625063, 0.441219,
		-0.510333, -0.078766, -0.856362,
		0.570034, -0.776590, -0.268272,
		21.470835, 38.152729, 23.382885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436003, 38.328747, 23.210991>,  <21.071810, 38.696342, 23.570677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436003, 38.328747, 23.210991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.147945, 38.530800, 23.020733>,  <19.975111, 38.652031, 22.906578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.147945, 38.530800, 23.020733>,  <20.436003, 38.328747, 23.210991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.147945, 38.530800, 23.020733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411897, -0.862915, -0.292778,
		-0.558333, -0.014925, 0.829483,
		-0.720143, 0.505129, -0.475646,
		19.931902, 38.682339, 22.878038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707310, 38.219475, 23.445869>,  <20.436003, 38.328747, 23.210991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707310, 38.219475, 23.445869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658751, 38.279644, 23.053413>,  <19.629616, 38.315746, 22.817940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658751, 38.279644, 23.053413>,  <19.707310, 38.219475, 23.445869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658751, 38.279644, 23.053413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509155, -0.857941, -0.068539,
		-0.852070, 0.491231, 0.180744,
		-0.121399, 0.150427, -0.981139,
		19.622332, 38.324772, 22.759071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.019445, 38.012268, 23.268116>,  <19.707310, 38.219475, 23.445869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.019445, 38.012268, 23.268116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249891, 37.977657, 22.943005>,  <19.388159, 37.956890, 22.747938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249891, 37.977657, 22.943005>,  <19.019445, 38.012268, 23.268116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249891, 37.977657, 22.943005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167164, -0.985836, -0.013544,
		-0.800092, 0.143670, -0.582419,
		0.576115, -0.086524, -0.812776,
		19.422726, 37.951702, 22.699171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397135, 38.293423, 23.057716>,  <19.019445, 38.012268, 23.268116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.397135, 38.293423, 23.057716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080187, 38.182304, 23.274963>,  <17.890018, 38.115635, 23.405312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.080187, 38.182304, 23.274963>,  <18.397135, 38.293423, 23.057716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.080187, 38.182304, 23.274963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598735, 0.524732, -0.605122,
		-0.116891, -0.804666, -0.582108,
		-0.792372, -0.277795, 0.543118,
		17.842476, 38.098965, 23.437899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.929567, 23.705376, 26.292955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.243055, 23.768383, 26.533279>,  <30.431149, 23.806187, 26.677473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.243055, 23.768383, 26.533279>,  <29.929567, 23.705376, 26.292955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243055, 23.768383, 26.533279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144116, 0.894793, -0.422582,
		-0.604164, 0.417772, 0.678567,
		0.783720, 0.157516, 0.600809,
		30.478170, 23.815638, 26.713522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863663, 24.408911, 26.476219>,  <29.929567, 23.705376, 26.292955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863663, 24.408911, 26.476219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.241486, 24.321194, 26.573975>,  <30.468180, 24.268564, 26.632627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.241486, 24.321194, 26.573975>,  <29.863663, 24.408911, 26.476219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241486, 24.321194, 26.573975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299282, 0.881158, -0.366048,
		-0.135074, 0.418894, 0.897933,
		0.944556, -0.219292, 0.244389,
		30.524853, 24.255405, 26.647291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035393, 25.010126, 26.868336>,  <29.863663, 24.408911, 26.476219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035393, 25.010126, 26.868336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.340504, 24.812386, 26.701584>,  <30.523569, 24.693741, 26.601532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.340504, 24.812386, 26.701584>,  <30.035393, 25.010126, 26.868336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340504, 24.812386, 26.701584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374954, 0.863340, -0.337718,
		0.526861, 0.101292, 0.843894,
		0.762776, -0.494352, -0.416881,
		30.569336, 24.664080, 26.576519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705246, 25.324589, 27.089123>,  <30.035393, 25.010126, 26.868336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705246, 25.324589, 27.089123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.784189, 25.137409, 26.744549>,  <30.831556, 25.025101, 26.537804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.784189, 25.137409, 26.744549>,  <30.705246, 25.324589, 27.089123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784189, 25.137409, 26.744549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569236, 0.770111, -0.287924,
		0.798135, -0.433536, 0.418362,
		0.197360, -0.467949, -0.861436,
		30.843397, 24.997025, 26.486118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352461, 25.629007, 26.821486>,  <30.705246, 25.324589, 27.089123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352461, 25.629007, 26.821486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.223610, 25.448895, 26.488384>,  <31.146299, 25.340826, 26.288523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.223610, 25.448895, 26.488384>,  <31.352461, 25.629007, 26.821486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223610, 25.448895, 26.488384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294765, 0.788210, -0.540221,
		0.899637, -0.419487, -0.121177,
		-0.322128, -0.450284, -0.832753,
		31.126970, 25.313808, 26.238558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940083, 25.525726, 26.365273>,  <31.352461, 25.629007, 26.821486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940083, 25.525726, 26.365273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596588, 25.548557, 26.161579>,  <31.390491, 25.562256, 26.039364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596588, 25.548557, 26.161579>,  <31.940083, 25.525726, 26.365273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596588, 25.548557, 26.161579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374539, 0.748130, -0.547742,
		0.349708, -0.661093, -0.663823,
		-0.858734, 0.057078, -0.509232,
		31.338968, 25.565681, 26.008810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193157, 25.658325, 25.736141>,  <31.940083, 25.525726, 26.365273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193157, 25.658325, 25.736141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.804831, 25.749920, 25.707649>,  <31.571835, 25.804876, 25.690554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.804831, 25.749920, 25.707649>,  <32.193157, 25.658325, 25.736141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804831, 25.749920, 25.707649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235310, 0.852341, -0.467059,
		-0.046239, -0.470191, -0.881353,
		-0.970820, 0.228987, -0.071229,
		31.513584, 25.818617, 25.686281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044552, 25.852730, 24.963844>,  <32.193157, 25.658325, 25.736141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044552, 25.852730, 24.963844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.772524, 26.013878, 25.208858>,  <31.609308, 26.110567, 25.355867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.772524, 26.013878, 25.208858>,  <32.044552, 25.852730, 24.963844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772524, 26.013878, 25.208858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128086, 0.887927, -0.441791,
		-0.721873, -0.221991, -0.655454,
		-0.680068, 0.402872, 0.612537,
		31.568502, 26.134739, 25.392620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729666, 26.226387, 24.627399>,  <32.044552, 25.852730, 24.963844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729666, 26.226387, 24.627399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.607290, 26.402317, 24.965145>,  <31.533865, 26.507875, 25.167793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.607290, 26.402317, 24.965145>,  <31.729666, 26.226387, 24.627399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607290, 26.402317, 24.965145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027421, 0.890594, -0.453972,
		-0.951656, -0.115734, -0.284528,
		-0.305939, 0.439827, 0.844366,
		31.515509, 26.534266, 25.218454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120264, 26.501848, 24.477051>,  <31.729666, 26.226387, 24.627399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120264, 26.501848, 24.477051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.216196, 26.685852, 24.819016>,  <31.273756, 26.796253, 25.024195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.216196, 26.685852, 24.819016>,  <31.120264, 26.501848, 24.477051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216196, 26.685852, 24.819016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369212, 0.857661, -0.357911,
		-0.897866, -0.229805, 0.375534,
		0.239831, 0.460008, 0.854911,
		31.288145, 26.823854, 25.075489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603943, 27.012793, 24.531881>,  <31.120264, 26.501848, 24.477051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603943, 27.012793, 24.531881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.864147, 27.162476, 24.796246>,  <31.020269, 27.252285, 24.954865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.864147, 27.162476, 24.796246>,  <30.603943, 27.012793, 24.531881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864147, 27.162476, 24.796246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441614, 0.894335, -0.071706,
		-0.617908, -0.245222, 0.747031,
		0.650512, 0.374207, 0.660910,
		31.059301, 27.274738, 24.994518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226141, 27.331839, 24.999947>,  <30.603943, 27.012793, 24.531881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226141, 27.331839, 24.999947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.587587, 27.502022, 25.019794>,  <30.804455, 27.604132, 25.031702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.587587, 27.502022, 25.019794>,  <30.226141, 27.331839, 24.999947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587587, 27.502022, 25.019794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426250, 0.904585, 0.006116,
		-0.042282, -0.026677, 0.998749,
		0.903617, 0.425458, 0.049619,
		30.858673, 27.629660, 25.034679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111753, 27.943905, 25.288546>,  <30.226141, 27.331839, 24.999947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111753, 27.943905, 25.288546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.474516, 28.002098, 25.130379>,  <30.692173, 28.037014, 25.035479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.474516, 28.002098, 25.130379>,  <30.111753, 27.943905, 25.288546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474516, 28.002098, 25.130379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168518, 0.985408, -0.023944,
		0.386166, 0.088350, 0.918189,
		0.906906, 0.145485, -0.395419,
		30.746588, 28.045744, 25.011753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498592, 28.480175, 25.685165>,  <30.111753, 27.943905, 25.288546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498592, 28.480175, 25.685165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.663509, 28.466839, 25.320988>,  <30.762459, 28.458838, 25.102482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.663509, 28.466839, 25.320988>,  <30.498592, 28.480175, 25.685165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663509, 28.466839, 25.320988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037878, 0.999093, -0.019433,
		0.910264, -0.026474, 0.413180,
		0.412291, -0.033339, -0.910442,
		30.787197, 28.456837, 25.047855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987864, 28.984623, 25.723242>,  <30.498592, 28.480175, 25.685165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987864, 28.984623, 25.723242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.960571, 28.936363, 25.327103>,  <30.944197, 28.907408, 25.089418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.960571, 28.936363, 25.327103>,  <30.987864, 28.984623, 25.723242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960571, 28.936363, 25.327103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144695, 0.980968, -0.129476,
		0.987121, -0.152133, -0.049475,
		-0.068231, -0.120650, -0.990347,
		30.940102, 28.900167, 25.029999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647188, 29.335150, 25.462194>,  <30.987864, 28.984623, 25.723242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647188, 29.335150, 25.462194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.355885, 29.321461, 25.188416>,  <31.181103, 29.313248, 25.024149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.355885, 29.321461, 25.188416>,  <31.647188, 29.335150, 25.462194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355885, 29.321461, 25.188416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065208, 0.990760, -0.118922,
		0.682193, -0.131237, -0.719298,
		-0.728259, -0.034224, -0.684447,
		31.137407, 29.311193, 24.983082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823647, 29.879259, 25.066362>,  <31.647188, 29.335150, 25.462194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823647, 29.879259, 25.066362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.454903, 29.814785, 24.925400>,  <31.233656, 29.776100, 24.840822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.454903, 29.814785, 24.925400>,  <31.823647, 29.879259, 25.066362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454903, 29.814785, 24.925400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088020, 0.972716, -0.214655,
		0.377393, -0.166863, -0.910896,
		-0.921860, -0.161187, -0.352409,
		31.178345, 29.766430, 24.819677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714214, 30.187092, 24.319370>,  <31.823647, 29.879259, 25.066362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714214, 30.187092, 24.319370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.348747, 30.153042, 24.478348>,  <31.129467, 30.132612, 24.573734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.348747, 30.153042, 24.478348>,  <31.714214, 30.187092, 24.319370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348747, 30.153042, 24.478348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152425, 0.978221, -0.140890,
		-0.376797, -0.189307, -0.906745,
		-0.913669, -0.085124, 0.397446,
		31.074646, 30.127504, 24.597582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433912, 30.729475, 24.132050>,  <31.714214, 30.187092, 24.319370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433912, 30.729475, 24.132050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.148283, 30.608253, 24.384480>,  <30.976906, 30.535521, 24.535938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.148283, 30.608253, 24.384480>,  <31.433912, 30.729475, 24.132050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148283, 30.608253, 24.384480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361866, 0.931462, 0.037843,
		-0.599292, -0.201342, -0.774797,
		-0.714075, -0.303052, 0.631076,
		30.934061, 30.517338, 24.573803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697447, 30.861115, 23.818579>,  <31.433912, 30.729475, 24.132050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697447, 30.861115, 23.818579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.657324, 30.860111, 24.216560>,  <30.633249, 30.859510, 24.455349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.657324, 30.860111, 24.216560>,  <30.697447, 30.861115, 23.818579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657324, 30.860111, 24.216560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317596, 0.947763, -0.029632,
		-0.942905, -0.318966, -0.095865,
		-0.100309, -0.002506, 0.994953,
		30.627232, 30.859360, 24.515047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013826, 30.985704, 23.943361>,  <30.697447, 30.861115, 23.818579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013826, 30.985704, 23.943361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.204874, 31.068703, 24.284847>,  <30.319502, 31.118502, 24.489738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.204874, 31.068703, 24.284847>,  <30.013826, 30.985704, 23.943361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204874, 31.068703, 24.284847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394486, 0.918898, -0.002639,
		-0.785024, -0.335518, 0.520735,
		0.477617, 0.207495, 0.853714,
		30.348160, 31.130951, 24.540962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450878, 31.248938, 24.368116>,  <30.013826, 30.985704, 23.943361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450878, 31.248938, 24.368116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.804207, 31.376083, 24.505932>,  <30.016203, 31.452372, 24.588621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.804207, 31.376083, 24.505932>,  <29.450878, 31.248938, 24.368116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804207, 31.376083, 24.505932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388706, 0.907482, 0.159324,
		-0.262020, -0.274659, 0.925153,
		0.883319, 0.317866, 0.344540,
		30.069202, 31.471443, 24.609293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145613, 31.167152, 25.126472>,  <29.450878, 31.248938, 24.368116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145613, 31.167152, 25.126472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.821531, 31.379967, 25.028080>,  <28.627083, 31.507656, 24.969044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.821531, 31.379967, 25.028080>,  <29.145613, 31.167152, 25.126472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821531, 31.379967, 25.028080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154099, -0.211556, -0.965141,
		-0.565528, -0.819867, 0.089418,
		-0.810205, 0.532035, -0.245982,
		28.578470, 31.539577, 24.954285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743156, 30.757051, 24.649666>,  <29.145613, 31.167152, 25.126472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743156, 30.757051, 24.649666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.549568, 30.880733, 24.322212>,  <28.433414, 30.954943, 24.125740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.549568, 30.880733, 24.322212>,  <28.743156, 30.757051, 24.649666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549568, 30.880733, 24.322212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530554, -0.847626, -0.006496,
		-0.695906, 0.431187, 0.574275,
		-0.483970, 0.309204, -0.818636,
		28.404377, 30.973495, 24.076622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016903, 30.631166, 24.707352>,  <28.743156, 30.757051, 24.649666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016903, 30.631166, 24.707352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.085171, 30.657619, 24.314110>,  <28.126131, 30.673491, 24.078165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.085171, 30.657619, 24.314110>,  <28.016903, 30.631166, 24.707352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085171, 30.657619, 24.314110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595047, -0.788339, -0.156332,
		-0.785360, 0.611676, -0.095194,
		0.170670, 0.066132, -0.983107,
		28.136372, 30.677460, 24.019178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321829, 30.686583, 24.355942>,  <28.016903, 30.631166, 24.707352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321829, 30.686583, 24.355942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.606066, 30.513027, 24.134384>,  <27.776608, 30.408894, 24.001450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.606066, 30.513027, 24.134384>,  <27.321829, 30.686583, 24.355942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606066, 30.513027, 24.134384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591743, -0.794428, -0.136838,
		-0.380656, 0.424998, -0.821266,
		0.710592, -0.433890, -0.553894,
		27.819244, 30.382860, 23.968216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920923, 30.241755, 23.976748>,  <27.321829, 30.686583, 24.355942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920923, 30.241755, 23.976748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.294678, 30.120316, 23.902176>,  <27.518930, 30.047453, 23.857433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.294678, 30.120316, 23.902176>,  <26.920923, 30.241755, 23.976748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294678, 30.120316, 23.902176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330985, -0.933349, -0.138954,
		-0.131817, 0.191541, -0.972592,
		0.934384, -0.303597, -0.186429,
		27.574993, 30.029236, 23.846247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905966, 29.761219, 23.381596>,  <26.920923, 30.241755, 23.976748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905966, 29.761219, 23.381596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.252666, 29.658913, 23.552860>,  <27.460688, 29.597528, 23.655619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.252666, 29.658913, 23.552860>,  <26.905966, 29.761219, 23.381596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252666, 29.658913, 23.552860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284623, -0.958633, 0.003527,
		0.409550, -0.124923, -0.903694,
		0.866752, -0.255768, 0.428164,
		27.512691, 29.582182, 23.681309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107666, 29.091612, 22.994509>,  <26.905966, 29.761219, 23.381596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107666, 29.091612, 22.994509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.326494, 29.121384, 23.328018>,  <27.457790, 29.139246, 23.528124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.326494, 29.121384, 23.328018>,  <27.107666, 29.091612, 22.994509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326494, 29.121384, 23.328018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069642, -0.996633, 0.043273,
		0.834186, 0.034392, -0.550410,
		0.547068, 0.074429, 0.833772,
		27.490614, 29.143713, 23.578150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677155, 28.619223, 22.931751>,  <27.107666, 29.091612, 22.994509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677155, 28.619223, 22.931751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.661461, 28.675282, 23.327492>,  <27.652044, 28.708918, 23.564936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.661461, 28.675282, 23.327492>,  <27.677155, 28.619223, 22.931751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661461, 28.675282, 23.327492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087031, -0.986832, 0.136339,
		0.995433, -0.080756, 0.050913,
		-0.039233, 0.140148, 0.989353,
		27.649691, 28.717325, 23.624298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263342, 28.305492, 23.287876>,  <27.677155, 28.619223, 22.931751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263342, 28.305492, 23.287876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.990240, 28.344097, 23.577576>,  <27.826380, 28.367260, 23.751394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.990240, 28.344097, 23.577576>,  <28.263342, 28.305492, 23.287876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990240, 28.344097, 23.577576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131031, -0.958994, 0.251320,
		0.718804, 0.266489, 0.642110,
		-0.682753, 0.096514, 0.724247,
		27.785414, 28.373051, 23.794849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447401, 28.039885, 24.050892>,  <28.263342, 28.305492, 23.287876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447401, 28.039885, 24.050892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.047647, 28.025860, 24.050892>,  <27.807795, 28.017445, 24.050892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.047647, 28.025860, 24.050892>,  <28.447401, 28.039885, 24.050892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047647, 28.025860, 24.050892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030479, -0.868733, 0.494342,
		-0.017331, 0.494038, 0.869268,
		-0.999385, -0.035062, 0.000001,
		27.747831, 28.015341, 24.050892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367388, 27.611937, 24.513437>,  <28.447401, 28.039885, 24.050892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367388, 27.611937, 24.513437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.997684, 27.620445, 24.360970>,  <27.775862, 27.625551, 24.269489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.997684, 27.620445, 24.360970>,  <28.367388, 27.611937, 24.513437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997684, 27.620445, 24.360970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230534, -0.826948, 0.512846,
		-0.304299, 0.561876, 0.769219,
		-0.924260, 0.021272, -0.381171,
		27.720406, 27.626827, 24.246618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937254, 27.451591, 25.059204>,  <28.367388, 27.611937, 24.513437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937254, 27.451591, 25.059204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.757355, 27.336048, 24.721142>,  <27.649414, 27.266722, 24.518305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.757355, 27.336048, 24.721142>,  <27.937254, 27.451591, 25.059204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757355, 27.336048, 24.721142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161736, -0.904275, 0.395130,
		-0.878389, 0.314402, 0.359980,
		-0.449750, -0.288856, -0.845155,
		27.622429, 27.249392, 24.467596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339285, 27.126139, 25.334927>,  <27.937254, 27.451591, 25.059204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339285, 27.126139, 25.334927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.345543, 26.999878, 24.955429>,  <27.349298, 26.924122, 24.727730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.345543, 26.999878, 24.955429>,  <27.339285, 27.126139, 25.334927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.345543, 26.999878, 24.955429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312585, -0.902846, 0.295228,
		-0.949761, 0.291945, -0.112794,
		0.015645, -0.315653, -0.948745,
		27.350237, 26.905182, 24.670805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688261, 26.681335, 25.277853>,  <27.339285, 27.126139, 25.334927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688261, 26.681335, 25.277853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.939943, 26.584675, 24.982365>,  <27.090952, 26.526678, 24.805073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.939943, 26.584675, 24.982365>,  <26.688261, 26.681335, 25.277853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939943, 26.584675, 24.982365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194590, -0.969148, 0.151285,
		-0.752486, 0.048558, -0.656815,
		0.629205, -0.241650, -0.738719,
		27.128704, 26.512180, 24.760748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.395752, 26.077501, 24.949760>,  <26.688261, 26.681335, 25.277853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.395752, 26.077501, 24.949760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.782940, 26.096325, 24.851112>,  <27.015253, 26.107620, 24.791924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.782940, 26.096325, 24.851112>,  <26.395752, 26.077501, 24.949760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782940, 26.096325, 24.851112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090474, -0.981664, 0.167781,
		-0.234200, -0.184720, -0.954478,
		0.967969, 0.047061, -0.246618,
		27.073330, 26.110443, 24.777126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535658, 25.497147, 24.446280>,  <26.395752, 26.077501, 24.949760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535658, 25.497147, 24.446280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892620, 25.594086, 24.598534>,  <27.106796, 25.652250, 24.689886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892620, 25.594086, 24.598534>,  <26.535658, 25.497147, 24.446280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892620, 25.594086, 24.598534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200051, -0.968592, 0.147678,
		0.404468, -0.055642, -0.912858,
		0.892404, 0.242349, 0.380633,
		27.160341, 25.666790, 24.712723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102612, 24.980204, 24.161419>,  <26.535658, 25.497147, 24.446280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102612, 24.980204, 24.161419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.250538, 25.149624, 24.492199>,  <27.339293, 25.251276, 24.690666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.250538, 25.149624, 24.492199>,  <27.102612, 24.980204, 24.161419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250538, 25.149624, 24.492199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372881, -0.882882, 0.285444,
		0.850997, 0.202792, -0.484437,
		0.369815, 0.423550, 0.826948,
		27.361483, 25.276690, 24.740284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702215, 24.600264, 24.189573>,  <27.102612, 24.980204, 24.161419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702215, 24.600264, 24.189573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.654633, 24.756020, 24.554916>,  <27.626083, 24.849472, 24.774122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.654633, 24.756020, 24.554916>,  <27.702215, 24.600264, 24.189573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654633, 24.756020, 24.554916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247971, -0.879091, 0.407075,
		0.961436, 0.274912, 0.008018,
		-0.118959, 0.389388, 0.913359,
		27.618944, 24.872835, 24.828924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.339361, 24.405869, 24.490578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064148, 24.498413, 24.765701>,  <27.899019, 24.553940, 24.930775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064148, 24.498413, 24.765701>,  <28.339361, 24.405869, 24.490578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064148, 24.498413, 24.765701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282865, -0.787338, 0.547801,
		0.668279, 0.571463, 0.476271,
		-0.688034, 0.231363, 0.687808,
		27.857738, 24.567822, 24.972044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743544, 24.396433, 25.244167>,  <28.339361, 24.405869, 24.490578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743544, 24.396433, 25.244167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.355398, 24.364399, 25.335369>,  <28.122511, 24.345179, 25.390089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.355398, 24.364399, 25.335369>,  <28.743544, 24.396433, 25.244167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355398, 24.364399, 25.335369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210423, -0.743963, 0.634225,
		0.118833, 0.663404, 0.738765,
		-0.970361, -0.080086, 0.228003,
		28.064289, 24.340374, 25.403770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697090, 24.358807, 25.992989>,  <28.743544, 24.396433, 25.244167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697090, 24.358807, 25.992989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.360992, 24.190311, 25.856430>,  <28.159334, 24.089214, 25.774494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.360992, 24.190311, 25.856430>,  <28.697090, 24.358807, 25.992989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360992, 24.190311, 25.856430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129438, -0.767266, 0.628131,
		-0.526533, 0.483594, 0.699214,
		-0.840243, -0.421237, -0.341396,
		28.108919, 24.063940, 25.754011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357161, 24.134237, 26.560360>,  <28.697090, 24.358807, 25.992989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357161, 24.134237, 26.560360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.203859, 23.920303, 26.259144>,  <28.111879, 23.791943, 26.078415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.203859, 23.920303, 26.259144>,  <28.357161, 24.134237, 26.560360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203859, 23.920303, 26.259144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065737, -0.797431, 0.599819,
		-0.921301, 0.279384, 0.270459,
		-0.383252, -0.534835, -0.753040,
		28.088884, 23.759853, 26.033232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704487, 23.820322, 26.810728>,  <28.357161, 24.134237, 26.560360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704487, 23.820322, 26.810728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.835825, 23.583504, 26.516335>,  <27.914629, 23.441414, 26.339699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.835825, 23.583504, 26.516335>,  <27.704487, 23.820322, 26.810728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835825, 23.583504, 26.516335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044615, -0.788036, 0.614011,
		-0.943503, -0.168772, -0.285163,
		0.328347, -0.592044, -0.735984,
		27.934328, 23.405891, 26.295540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425322, 23.170492, 27.000866>,  <27.704487, 23.820322, 26.810728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425322, 23.170492, 27.000866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.623596, 23.013420, 26.691002>,  <27.742561, 22.919176, 26.505083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.623596, 23.013420, 26.691002>,  <27.425322, 23.170492, 27.000866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623596, 23.013420, 26.691002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078437, -0.868064, 0.490217,
		-0.864955, -0.303753, -0.399482,
		0.495682, -0.392682, -0.774662,
		27.772303, 22.895617, 26.458605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116755, 22.528715, 26.927530>,  <27.425322, 23.170492, 27.000866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116755, 22.528715, 26.927530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.480844, 22.501972, 26.764057>,  <27.699299, 22.485928, 26.665974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.480844, 22.501972, 26.764057>,  <27.116755, 22.528715, 26.927530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.480844, 22.501972, 26.764057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142818, -0.875657, 0.461333,
		-0.388708, -0.478283, -0.787497,
		0.910225, -0.066855, -0.408683,
		27.753912, 22.481916, 26.641453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144167, 21.895271, 26.529587>,  <27.116755, 22.528715, 26.927530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144167, 21.895271, 26.529587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.520901, 22.007790, 26.603146>,  <27.746941, 22.075300, 26.647282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.520901, 22.007790, 26.603146>,  <27.144167, 21.895271, 26.529587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520901, 22.007790, 26.603146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220682, -0.930342, 0.292855,
		0.253466, -0.235238, -0.938306,
		0.941836, 0.281296, 0.183897,
		27.803452, 22.092178, 26.658316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648508, 21.411272, 26.193716>,  <27.144167, 21.895271, 26.529587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648508, 21.411272, 26.193716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.825026, 21.592129, 26.503769>,  <27.930937, 21.700644, 26.689800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.825026, 21.592129, 26.503769>,  <27.648508, 21.411272, 26.193716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825026, 21.592129, 26.503769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291257, -0.889192, 0.352857,
		0.848780, 0.070048, -0.524085,
		0.441295, 0.452141, 0.775130,
		27.957415, 21.727772, 26.736307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186085, 21.018986, 26.238266>,  <27.648508, 21.411272, 26.193716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186085, 21.018986, 26.238266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.171522, 21.199303, 26.595020>,  <28.162785, 21.307493, 26.809072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.171522, 21.199303, 26.595020>,  <28.186085, 21.018986, 26.238266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171522, 21.199303, 26.595020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138093, -0.881647, 0.451252,
		0.989750, 0.139591, -0.030155,
		-0.036404, 0.450791, 0.891887,
		28.160601, 21.334539, 26.862587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497734, 20.621696, 26.653465>,  <28.186085, 21.018986, 26.238266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497734, 20.621696, 26.653465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.327568, 20.844154, 26.939045>,  <28.225470, 20.977629, 27.110394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.327568, 20.844154, 26.939045>,  <28.497734, 20.621696, 26.653465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327568, 20.844154, 26.939045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083956, -0.809747, 0.580741,
		0.901097, 0.187115, 0.391168,
		-0.425413, 0.556145, 0.713952,
		28.199944, 21.010998, 27.153231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923069, 20.435987, 27.269970>,  <28.497734, 20.621696, 26.653465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923069, 20.435987, 27.269970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.571678, 20.597454, 27.372208>,  <28.360844, 20.694334, 27.433550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.571678, 20.597454, 27.372208>,  <28.923069, 20.435987, 27.269970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571678, 20.597454, 27.372208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141689, -0.731001, 0.667504,
		0.456290, 0.550172, 0.699364,
		-0.878478, 0.403668, 0.255595,
		28.308134, 20.718554, 27.448887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868828, 20.419193, 28.050196>,  <28.923069, 20.435987, 27.269970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868828, 20.419193, 28.050196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.495417, 20.422958, 27.906845>,  <28.271370, 20.425217, 27.820835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.495417, 20.422958, 27.906845>,  <28.868828, 20.419193, 28.050196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495417, 20.422958, 27.906845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255439, -0.718872, 0.646509,
		-0.251543, 0.695079, 0.673492,
		-0.933529, 0.009411, -0.358378,
		28.215359, 20.425781, 27.799332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452913, 20.433601, 28.654076>,  <28.868828, 20.419193, 28.050196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452913, 20.433601, 28.654076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.218105, 20.299953, 28.359112>,  <28.077221, 20.219765, 28.182133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.218105, 20.299953, 28.359112>,  <28.452913, 20.433601, 28.654076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218105, 20.299953, 28.359112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380117, -0.690465, 0.615442,
		-0.714786, 0.641579, 0.278313,
		-0.587020, -0.334118, -0.737409,
		28.042000, 20.199718, 28.137890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734510, 20.427555, 28.869383>,  <28.452913, 20.433601, 28.654076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734510, 20.427555, 28.869383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.733574, 20.167381, 28.565559>,  <27.733011, 20.011276, 28.383266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.733574, 20.167381, 28.565559>,  <27.734510, 20.427555, 28.869383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733574, 20.167381, 28.565559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616493, -0.597107, 0.513225,
		-0.787357, 0.469463, -0.399591,
		-0.002342, -0.650436, -0.759557,
		27.732872, 19.972250, 28.337692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074694, 20.326202, 28.805330>,  <27.734510, 20.427555, 28.869383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074694, 20.326202, 28.805330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.192850, 19.988152, 28.627113>,  <27.263744, 19.785322, 28.520184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.192850, 19.988152, 28.627113>,  <27.074694, 20.326202, 28.805330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192850, 19.988152, 28.627113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526561, -0.533144, 0.662186,
		-0.797168, 0.039002, -0.602496,
		0.295391, -0.845125, -0.445542,
		27.281467, 19.734613, 28.493450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470478, 20.009785, 28.683672>,  <27.074694, 20.326202, 28.805330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470478, 20.009785, 28.683672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.762260, 19.736546, 28.669388>,  <26.937330, 19.572603, 28.660816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.762260, 19.736546, 28.669388>,  <26.470478, 20.009785, 28.683672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762260, 19.736546, 28.669388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577177, -0.642686, 0.503806,
		-0.367100, -0.346892, -0.863078,
		0.729455, -0.683096, -0.035712,
		26.981096, 19.531616, 28.658674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166779, 19.372297, 28.452051>,  <26.470478, 20.009785, 28.683672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166779, 19.372297, 28.452051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.501255, 19.306023, 28.661175>,  <26.701941, 19.266258, 28.786650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.501255, 19.306023, 28.661175>,  <26.166779, 19.372297, 28.452051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501255, 19.306023, 28.661175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506969, -0.597145, 0.621611,
		0.209199, -0.784834, -0.583327,
		0.836192, -0.165688, 0.522809,
		26.752113, 19.256315, 28.818018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047651, 18.703588, 28.700584>,  <26.166779, 19.372297, 28.452051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047651, 18.703588, 28.700584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.349947, 18.818237, 28.936111>,  <26.531324, 18.887026, 29.077429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.349947, 18.818237, 28.936111>,  <26.047651, 18.703588, 28.700584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349947, 18.818237, 28.936111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403332, -0.504648, 0.763317,
		0.515931, -0.814357, -0.265777,
		0.755737, 0.286622, 0.588820,
		26.576668, 18.904224, 29.112757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371605, 18.130951, 28.887575>,  <26.047651, 18.703588, 28.700584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371605, 18.130951, 28.887575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.485155, 18.410000, 29.150707>,  <26.553286, 18.577429, 29.308586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.485155, 18.410000, 29.150707>,  <26.371605, 18.130951, 28.887575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485155, 18.410000, 29.150707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384580, -0.545618, 0.744580,
		0.878359, -0.464355, 0.113405,
		0.283874, 0.697621, 0.657830,
		26.570316, 18.619286, 29.348057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673567, 17.752445, 29.408457>,  <26.371605, 18.130951, 28.887575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673567, 17.752445, 29.408457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.572485, 18.099724, 29.579277>,  <26.511835, 18.308090, 29.681770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.572485, 18.099724, 29.579277>,  <26.673567, 17.752445, 29.408457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572485, 18.099724, 29.579277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284793, -0.488569, 0.824738,
		0.924680, 0.086795, 0.370721,
		-0.252706, 0.868197, 0.427052,
		26.496674, 18.360184, 29.707392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870068, 17.774494, 30.052763>,  <26.673567, 17.752445, 29.408457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870068, 17.774494, 30.052763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.628733, 18.090332, 30.097530>,  <26.483932, 18.279835, 30.124392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.628733, 18.090332, 30.097530>,  <26.870068, 17.774494, 30.052763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628733, 18.090332, 30.097530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257369, -0.325616, 0.909800,
		0.754815, 0.520111, 0.399673,
		-0.603337, 0.789594, 0.111919,
		26.447731, 18.327209, 30.131105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417906, 17.682278, 30.618052>,  <26.870068, 17.774494, 30.052763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417906, 17.682278, 30.618052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.350355, 17.426731, 30.918274>,  <27.309826, 17.273403, 31.098408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.350355, 17.426731, 30.918274>,  <27.417906, 17.682278, 30.618052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350355, 17.426731, 30.918274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547024, -0.694199, -0.467816,
		0.819906, 0.331569, 0.466707,
		-0.168874, -0.638866, 0.750555,
		27.299692, 17.235071, 31.143440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142342, 17.412127, 30.920626>,  <27.417906, 17.682278, 30.618052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142342, 17.412127, 30.920626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.815992, 17.181194, 30.933517>,  <27.620182, 17.042635, 30.941252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.815992, 17.181194, 30.933517>,  <28.142342, 17.412127, 30.920626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815992, 17.181194, 30.933517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487696, -0.717006, -0.498052,
		0.310648, -0.390630, 0.866548,
		-0.815874, -0.577331, 0.032228,
		27.571230, 17.007996, 30.943186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016853, 17.995569, 31.308867>,  <28.142342, 17.412127, 30.920626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016853, 17.995569, 31.308867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.318571, 18.042374, 31.567276>,  <28.499601, 18.070456, 31.722322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.318571, 18.042374, 31.567276>,  <28.016853, 17.995569, 31.308867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318571, 18.042374, 31.567276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385005, 0.718205, -0.579615,
		-0.531798, 0.685923, 0.496689,
		0.754296, 0.117011, 0.646024,
		28.544859, 18.077477, 31.761084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107594, 18.716753, 31.387608>,  <28.016853, 17.995569, 31.308867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107594, 18.716753, 31.387608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.459286, 18.574219, 31.514084>,  <28.670301, 18.488699, 31.589970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.459286, 18.574219, 31.514084>,  <28.107594, 18.716753, 31.387608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459286, 18.574219, 31.514084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469458, 0.760917, -0.447900,
		-0.080995, 0.542248, 0.836306,
		0.879232, -0.356333, 0.316193,
		28.723055, 18.467319, 31.608942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436899, 19.213642, 31.728125>,  <28.107594, 18.716753, 31.387608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436899, 19.213642, 31.728125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.741096, 18.985359, 31.604225>,  <28.923615, 18.848389, 31.529886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.741096, 18.985359, 31.604225>,  <28.436899, 19.213642, 31.728125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741096, 18.985359, 31.604225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448213, 0.806513, -0.385541,
		0.469848, 0.154368, 0.869145,
		0.760492, -0.570708, -0.309749,
		28.969244, 18.814146, 31.511301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959265, 19.572685, 31.925440>,  <28.436899, 19.213642, 31.728125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959265, 19.572685, 31.925440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.111834, 19.336742, 31.640739>,  <29.203375, 19.195177, 31.469919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.111834, 19.336742, 31.640739>,  <28.959265, 19.572685, 31.925440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111834, 19.336742, 31.640739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409145, 0.798157, -0.442206,
		0.828925, -0.122541, 0.545772,
		0.381424, -0.589855, -0.711749,
		29.226261, 19.159786, 31.427216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677893, 19.851946, 31.739199>,  <28.959265, 19.572685, 31.925440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677893, 19.851946, 31.739199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.564533, 19.633343, 31.423981>,  <29.496517, 19.502180, 31.234850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.564533, 19.633343, 31.423981>,  <29.677893, 19.851946, 31.739199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564533, 19.633343, 31.423981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317384, 0.721977, -0.614830,
		0.904959, -0.424356, -0.031155,
		-0.283400, -0.546508, -0.788044,
		29.479513, 19.469391, 31.187567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265205, 19.762184, 31.219151>,  <29.677893, 19.851946, 31.739199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265205, 19.762184, 31.219151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961815, 19.678658, 30.972214>,  <29.779781, 19.628542, 30.824053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.961815, 19.678658, 30.972214>,  <30.265205, 19.762184, 31.219151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961815, 19.678658, 30.972214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431905, 0.548309, -0.716111,
		0.488026, -0.809787, -0.325694,
		-0.758478, -0.208812, -0.617340,
		29.734272, 19.616013, 30.787012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574497, 19.504848, 30.559330>,  <30.265205, 19.762184, 31.219151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574497, 19.504848, 30.559330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206610, 19.626389, 30.459900>,  <29.985876, 19.699312, 30.400242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.206610, 19.626389, 30.459900>,  <30.574497, 19.504848, 30.559330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206610, 19.626389, 30.459900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366894, 0.440048, -0.819601,
		-0.139653, -0.845004, -0.516203,
		-0.919721, 0.303852, -0.248573,
		29.930693, 19.717545, 30.385328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456261, 19.437077, 29.780951>,  <30.574497, 19.504848, 30.559330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456261, 19.437077, 29.780951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169851, 19.687504, 29.904465>,  <29.998005, 19.837761, 29.978573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169851, 19.687504, 29.904465>,  <30.456261, 19.437077, 29.780951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169851, 19.687504, 29.904465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269376, 0.655879, -0.705166,
		-0.644009, -0.421736, -0.638272,
		-0.716023, 0.626069, 0.308787,
		29.955044, 19.875324, 29.997101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998384, 19.628431, 29.198343>,  <30.456261, 19.437077, 29.780951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998384, 19.628431, 29.198343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.898722, 19.901878, 29.472740>,  <29.838924, 20.065947, 29.637379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.898722, 19.901878, 29.472740>,  <29.998384, 19.628431, 29.198343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898722, 19.901878, 29.472740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038292, 0.714732, -0.698350,
		-0.967706, -0.147729, -0.204256,
		-0.249155, 0.683619, 0.685993,
		29.823975, 20.106964, 29.678537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699282, 20.064928, 28.832247>,  <29.998384, 19.628431, 29.198343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699282, 20.064928, 28.832247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773127, 20.271473, 29.166740>,  <29.817434, 20.395399, 29.367437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.773127, 20.271473, 29.166740>,  <29.699282, 20.064928, 28.832247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773127, 20.271473, 29.166740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091185, 0.838191, -0.537700,
		-0.978572, 0.175518, 0.107656,
		0.184612, 0.516361, 0.836235,
		29.828510, 20.426382, 29.417610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207947, 20.638468, 28.880228>,  <29.699282, 20.064928, 28.832247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207947, 20.638468, 28.880228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531845, 20.727192, 29.097523>,  <29.726185, 20.780426, 29.227900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531845, 20.727192, 29.097523>,  <29.207947, 20.638468, 28.880228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531845, 20.727192, 29.097523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082035, 0.873913, -0.479110,
		-0.581015, 0.432523, 0.689453,
		0.809748, 0.221811, 0.543238,
		29.774769, 20.793736, 29.260494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061916, 21.263584, 29.105764>,  <29.207947, 20.638468, 28.880228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061916, 21.263584, 29.105764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460400, 21.254402, 29.139336>,  <29.699490, 21.248892, 29.159477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460400, 21.254402, 29.139336>,  <29.061916, 21.263584, 29.105764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460400, 21.254402, 29.139336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066584, 0.822068, -0.565482,
		-0.056012, 0.568926, 0.820479,
		0.996207, -0.022957, 0.083927,
		29.759262, 21.247515, 29.164515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330133, 22.014816, 29.243654>,  <29.061916, 21.263584, 29.105764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330133, 22.014816, 29.243654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637375, 21.813114, 29.085796>,  <29.821720, 21.692093, 28.991081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.637375, 21.813114, 29.085796>,  <29.330133, 22.014816, 29.243654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637375, 21.813114, 29.085796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160588, 0.748322, -0.643604,
		0.619861, 0.430979, 0.655766,
		0.768104, -0.504253, -0.394646,
		29.867805, 21.661839, 28.967403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867117, 22.517258, 29.134388>,  <29.330133, 22.014816, 29.243654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867117, 22.517258, 29.134388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.980024, 22.205853, 28.910156>,  <30.047768, 22.019011, 28.775618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.980024, 22.205853, 28.910156>,  <29.867117, 22.517258, 29.134388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980024, 22.205853, 28.910156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258354, 0.624438, -0.737110,
		0.923893, 0.063234, 0.377389,
		0.282267, -0.778511, -0.560577,
		30.064705, 21.972300, 28.741983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541525, 22.667034, 28.933201>,  <29.867117, 22.517258, 29.134388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541525, 22.667034, 28.933201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.400543, 22.400875, 28.669983>,  <30.315954, 22.241180, 28.512053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.400543, 22.400875, 28.669983>,  <30.541525, 22.667034, 28.933201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400543, 22.400875, 28.669983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320619, 0.574755, -0.752901,
		0.879192, -0.476346, 0.010763,
		-0.352455, -0.665395, -0.658045,
		30.294807, 22.201256, 28.472569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102804, 22.565857, 28.499805>,  <30.541525, 22.667034, 28.933201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102804, 22.565857, 28.499805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.780949, 22.452095, 28.291317>,  <30.587835, 22.383839, 28.166224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.780949, 22.452095, 28.291317>,  <31.102804, 22.565857, 28.499805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780949, 22.452095, 28.291317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384109, 0.420079, -0.822189,
		0.452786, -0.861771, -0.228771,
		-0.804640, -0.284402, -0.521219,
		30.539557, 22.366774, 28.134951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356241, 22.305244, 27.794430>,  <31.102804, 22.565857, 28.499805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356241, 22.305244, 27.794430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970860, 22.399178, 27.742874>,  <30.739632, 22.455538, 27.711941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.970860, 22.399178, 27.742874>,  <31.356241, 22.305244, 27.794430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970860, 22.399178, 27.742874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253343, 0.642447, -0.723242,
		-0.087035, -0.729463, -0.678460,
		-0.963453, 0.234831, -0.128889,
		30.681824, 22.469627, 27.704208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218904, 22.280687, 27.016899>,  <31.356241, 22.305244, 27.794430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218904, 22.280687, 27.016899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916594, 22.486740, 27.178612>,  <30.735207, 22.610373, 27.275639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916594, 22.486740, 27.178612>,  <31.218904, 22.280687, 27.016899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916594, 22.486740, 27.178612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214347, 0.777982, -0.590593,
		-0.618755, -0.359700, -0.698397,
		-0.755776, 0.515131, 0.404279,
		30.689861, 22.641279, 27.299896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911497, 22.609596, 26.455126>,  <31.218904, 22.280687, 27.016899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911497, 22.609596, 26.455126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788393, 22.826172, 26.768082>,  <30.714531, 22.956118, 26.955854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.788393, 22.826172, 26.768082>,  <30.911497, 22.609596, 26.455126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788393, 22.826172, 26.768082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023001, 0.826292, -0.562773,
		-0.951187, -0.155202, -0.266751,
		-0.307758, 0.541437, 0.782388,
		30.696066, 22.988604, 27.002798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370142, 23.070332, 26.089279>,  <30.911497, 22.609596, 26.455126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370142, 23.070332, 26.089279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520510, 23.212437, 26.431618>,  <30.610731, 23.297701, 26.637020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520510, 23.212437, 26.431618>,  <30.370142, 23.070332, 26.089279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520510, 23.212437, 26.431618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216688, 0.864282, -0.453942,
		-0.900961, 0.356097, 0.247919,
		0.375919, 0.355264, 0.855846,
		30.633286, 23.319016, 26.688372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.150526, 39.539978, 16.406046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.324745, 39.192303, 16.499699>,  <27.429276, 38.983700, 16.555891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.324745, 39.192303, 16.499699>,  <27.150526, 39.539978, 16.406046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324745, 39.192303, 16.499699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778221, -0.232861, 0.583221,
		-0.452406, -0.436227, -0.777839,
		0.435545, -0.869184, 0.234134,
		27.455408, 38.931549, 16.569939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631657, 38.994850, 16.228218>,  <27.150526, 39.539978, 16.406046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631657, 38.994850, 16.228218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.886850, 38.861996, 16.506115>,  <27.039967, 38.782284, 16.672853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.886850, 38.861996, 16.506115>,  <26.631657, 38.994850, 16.228218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886850, 38.861996, 16.506115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766510, -0.187500, 0.614252,
		-0.073749, -0.924409, -0.374205,
		0.637984, -0.332132, 0.694741,
		27.078245, 38.762356, 16.714537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300104, 38.395817, 16.331083>,  <26.631657, 38.994850, 16.228218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300104, 38.395817, 16.331083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.561764, 38.420944, 16.632584>,  <26.718760, 38.436020, 16.813484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.561764, 38.420944, 16.632584>,  <26.300104, 38.395817, 16.331083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561764, 38.420944, 16.632584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628496, -0.509291, 0.587891,
		0.420811, -0.858298, -0.293669,
		0.654149, 0.062821, 0.753753,
		26.758009, 38.439789, 16.858709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259281, 37.730003, 16.632595>,  <26.300104, 38.395817, 16.331083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259281, 37.730003, 16.632595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.439455, 37.968067, 16.898796>,  <26.547560, 38.110905, 17.058517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.439455, 37.968067, 16.898796>,  <26.259281, 37.730003, 16.632595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439455, 37.968067, 16.898796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462574, -0.481983, 0.744122,
		0.763631, -0.643024, 0.058202,
		0.450437, 0.595157, 0.665503,
		26.574587, 38.146614, 17.098448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709953, 37.391415, 17.092321>,  <26.259281, 37.730003, 16.632595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709953, 37.391415, 17.092321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.603128, 37.714703, 17.302258>,  <26.539034, 37.908676, 17.428219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.603128, 37.714703, 17.302258>,  <26.709953, 37.391415, 17.092321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603128, 37.714703, 17.302258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438343, -0.586897, 0.680740,
		0.858216, -0.048260, 0.511015,
		-0.267061, 0.808222, 0.524839,
		26.523010, 37.957169, 17.459709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638536, 37.201176, 17.905582>,  <26.709953, 37.391415, 17.092321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638536, 37.201176, 17.905582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.412716, 37.528080, 17.859333>,  <26.277224, 37.724224, 17.831583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.412716, 37.528080, 17.859333>,  <26.638536, 37.201176, 17.905582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412716, 37.528080, 17.859333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532335, -0.253460, 0.807699,
		0.630795, 0.517536, 0.578147,
		-0.564551, 0.817260, -0.115621,
		26.243351, 37.773258, 17.824646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441093, 37.453327, 18.556372>,  <26.638536, 37.201176, 17.905582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441093, 37.453327, 18.556372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.163160, 37.627689, 18.327568>,  <25.996401, 37.732307, 18.190287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.163160, 37.627689, 18.327568>,  <26.441093, 37.453327, 18.556372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163160, 37.627689, 18.327568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696130, -0.207942, 0.687141,
		0.180583, 0.875641, 0.447931,
		-0.694833, 0.435904, -0.572009,
		25.954710, 37.758461, 18.155966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139112, 37.853611, 18.982990>,  <26.441093, 37.453327, 18.556372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139112, 37.853611, 18.982990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.872395, 37.808548, 18.688320>,  <25.712364, 37.781509, 18.511518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.872395, 37.808548, 18.688320>,  <26.139112, 37.853611, 18.982990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872395, 37.808548, 18.688320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728039, -0.112685, 0.676211,
		-0.159190, 0.987224, -0.006879,
		-0.666797, -0.112654, -0.736676,
		25.672356, 37.774754, 18.467318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495674, 38.293289, 19.234026>,  <26.139112, 37.853611, 18.982990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495674, 38.293289, 19.234026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.373915, 38.035698, 18.953274>,  <25.300859, 37.881145, 18.784822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.373915, 38.035698, 18.953274>,  <25.495674, 38.293289, 19.234026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373915, 38.035698, 18.953274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750406, -0.291736, 0.593111,
		-0.586713, 0.707238, -0.394438,
		-0.304399, -0.643975, -0.701882,
		25.282595, 37.842506, 18.742710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757790, 38.329891, 19.383919>,  <25.495674, 38.293289, 19.234026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757790, 38.329891, 19.383919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.814342, 37.993908, 19.174358>,  <24.848274, 37.792316, 19.048622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.814342, 37.993908, 19.174358>,  <24.757790, 38.329891, 19.383919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.814342, 37.993908, 19.174358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839487, -0.382206, 0.386239,
		-0.524665, 0.385203, -0.759174,
		0.141381, -0.839963, -0.523903,
		24.856756, 37.741920, 19.017187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.136307, 38.178520, 19.147192>,  <24.757790, 38.329891, 19.383919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.136307, 38.178520, 19.147192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.316635, 37.822716, 19.117435>,  <24.424831, 37.609234, 19.099581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.316635, 37.822716, 19.117435>,  <24.136307, 38.178520, 19.147192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316635, 37.822716, 19.117435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757532, -0.425347, 0.495202,
		-0.472129, -0.166893, -0.865587,
		0.450821, -0.889509, -0.074392,
		24.451881, 37.555862, 19.095118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.569788, 37.665405, 19.042753>,  <24.136307, 38.178520, 19.147192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.569788, 37.665405, 19.042753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.889725, 37.464725, 19.174541>,  <24.081686, 37.344318, 19.253614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.889725, 37.464725, 19.174541>,  <23.569788, 37.665405, 19.042753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.889725, 37.464725, 19.174541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586505, -0.536654, 0.606642,
		-0.127542, -0.678453, -0.723488,
		0.799840, -0.501702, 0.329470,
		24.129677, 37.314217, 19.273382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.320019, 37.028988, 19.186264>,  <23.569788, 37.665405, 19.042753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.320019, 37.028988, 19.186264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.667614, 37.011513, 19.383423>,  <23.876171, 37.001026, 19.501719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.667614, 37.011513, 19.383423>,  <23.320019, 37.028988, 19.186264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667614, 37.011513, 19.383423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444385, -0.507073, 0.738511,
		0.217670, -0.860795, -0.460056,
		0.868989, -0.043690, 0.492899,
		23.928310, 36.998405, 19.531292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.296694, 36.371658, 19.428438>,  <23.320019, 37.028988, 19.186264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.296694, 36.371658, 19.428438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.549959, 36.594063, 19.643826>,  <23.701920, 36.727505, 19.773058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.549959, 36.594063, 19.643826>,  <23.296694, 36.371658, 19.428438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.549959, 36.594063, 19.643826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410479, -0.348588, 0.842611,
		0.656209, -0.754542, 0.007519,
		0.633164, 0.556015, 0.538471,
		23.739908, 36.760868, 19.805367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.646919, 35.890236, 19.876745>,  <23.296694, 36.371658, 19.428438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.646919, 35.890236, 19.876745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.708540, 36.243790, 20.053391>,  <23.745512, 36.455921, 20.159378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.708540, 36.243790, 20.053391>,  <23.646919, 35.890236, 19.876745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.708540, 36.243790, 20.053391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230320, -0.402515, 0.885966,
		0.960844, -0.238198, 0.141567,
		0.154052, 0.883880, 0.441615,
		23.754755, 36.508953, 20.185875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.929201, 35.716572, 20.455214>,  <23.646919, 35.890236, 19.876745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.929201, 35.716572, 20.455214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.770086, 36.076042, 20.529129>,  <23.674618, 36.291725, 20.573479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.770086, 36.076042, 20.529129>,  <23.929201, 35.716572, 20.455214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.770086, 36.076042, 20.529129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509209, -0.383793, 0.770331,
		0.763199, 0.212331, 0.610282,
		-0.397787, 0.898676, 0.184789,
		23.650751, 36.345646, 20.584566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068916, 35.961632, 21.150408>,  <23.929201, 35.716572, 20.455214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068916, 35.961632, 21.150408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.740295, 36.161167, 21.039982>,  <23.543123, 36.280888, 20.973726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.740295, 36.161167, 21.039982>,  <24.068916, 35.961632, 21.150408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.740295, 36.161167, 21.039982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427418, -0.218436, 0.877268,
		0.377313, 0.838717, 0.392670,
		-0.821553, 0.498839, -0.276064,
		23.493830, 36.310818, 20.957163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.941004, 36.271240, 21.749319>,  <24.068916, 35.961632, 21.150408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.941004, 36.271240, 21.749319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.606676, 36.322418, 21.535763>,  <23.406080, 36.353123, 21.407629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.606676, 36.322418, 21.535763>,  <23.941004, 36.271240, 21.749319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.606676, 36.322418, 21.535763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545193, -0.307864, 0.779733,
		-0.064605, 0.942788, 0.327072,
		-0.835817, 0.127942, -0.533891,
		23.355930, 36.360802, 21.375595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.396036, 36.733498, 22.182627>,  <23.941004, 36.271240, 21.749319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.396036, 36.733498, 22.182627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.189667, 36.508507, 21.924187>,  <23.065845, 36.373512, 21.769123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.189667, 36.508507, 21.924187>,  <23.396036, 36.733498, 22.182627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.189667, 36.508507, 21.924187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676116, -0.195760, 0.710314,
		-0.526014, 0.803305, -0.279302,
		-0.515922, -0.562476, -0.646100,
		23.034889, 36.339764, 21.730356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.803576, 36.895294, 22.440052>,  <23.396036, 36.733498, 22.182627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.803576, 36.895294, 22.440052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.791428, 36.550568, 22.237530>,  <22.784140, 36.343731, 22.116016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.791428, 36.550568, 22.237530>,  <22.803576, 36.895294, 22.440052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.791428, 36.550568, 22.237530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548530, -0.409077, 0.729226,
		-0.835579, 0.299869, -0.460310,
		-0.030370, -0.861821, -0.506304,
		22.782316, 36.292023, 22.085638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.113173, 36.679966, 22.402912>,  <22.803576, 36.895294, 22.440052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.113173, 36.679966, 22.402912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.289759, 36.322227, 22.373940>,  <22.395710, 36.107582, 22.356556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.289759, 36.322227, 22.373940>,  <22.113173, 36.679966, 22.402912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.289759, 36.322227, 22.373940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740591, -0.408761, 0.533328,
		-0.506590, -0.181802, -0.842801,
		0.441464, -0.894350, -0.072433,
		22.422197, 36.053921, 22.352209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987720, 37.477577, 22.333561>,  <22.113173, 36.679966, 22.402912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987720, 37.477577, 22.333561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.858122, 37.769440, 22.574436>,  <21.780363, 37.944557, 22.718962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.858122, 37.769440, 22.574436>,  <21.987720, 37.477577, 22.333561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.858122, 37.769440, 22.574436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435404, 0.680108, -0.589810,
		-0.839911, 0.071100, -0.538046,
		-0.323994, 0.729656, 0.602188,
		21.760923, 37.988335, 22.755093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.466169, 38.005173, 21.940474>,  <21.987720, 37.477577, 22.333561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.466169, 38.005173, 21.940474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.644882, 38.182362, 22.251385>,  <21.752110, 38.288673, 22.437931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.644882, 38.182362, 22.251385>,  <21.466169, 38.005173, 21.940474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644882, 38.182362, 22.251385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324907, 0.729156, -0.602301,
		-0.833559, 0.521641, 0.181850,
		0.446782, 0.442969, 0.777280,
		21.778917, 38.315254, 22.484570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258045, 38.796776, 21.971855>,  <21.466169, 38.005173, 21.940474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258045, 38.796776, 21.971855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.606844, 38.712536, 22.148613>,  <21.816124, 38.661991, 22.254667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.606844, 38.712536, 22.148613>,  <21.258045, 38.796776, 21.971855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.606844, 38.712536, 22.148613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475608, 0.578108, -0.663014,
		-0.115833, 0.788315, 0.604270,
		0.871997, -0.210597, 0.441893,
		21.868443, 38.649357, 22.281181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.586033, 39.466438, 22.170397>,  <21.258045, 38.796776, 21.971855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.586033, 39.466438, 22.170397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.881165, 39.196449, 22.168797>,  <22.058245, 39.034454, 22.167837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.881165, 39.196449, 22.168797>,  <21.586033, 39.466438, 22.170397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.881165, 39.196449, 22.168797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600874, 0.659509, -0.451662,
		0.307498, 0.330846, 0.892180,
		0.737832, -0.674973, -0.004001,
		22.102514, 38.993958, 22.167597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114902, 39.893391, 22.415125>,  <21.586033, 39.466438, 22.170397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114902, 39.893391, 22.415125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.275808, 39.569782, 22.243702>,  <22.372351, 39.375618, 22.140848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.275808, 39.569782, 22.243702>,  <22.114902, 39.893391, 22.415125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275808, 39.569782, 22.243702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711497, 0.570838, -0.409776,
		0.576157, -0.140081, 0.805245,
		0.402262, -0.809025, -0.428559,
		22.396486, 39.327076, 22.115133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.784172, 40.077484, 22.394939>,  <22.114902, 39.893391, 22.415125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.784172, 40.077484, 22.394939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.768856, 39.760071, 22.152012>,  <22.759666, 39.569622, 22.006256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.768856, 39.760071, 22.152012>,  <22.784172, 40.077484, 22.394939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.768856, 39.760071, 22.152012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809929, 0.331324, -0.483982,
		0.585276, -0.510416, 0.630022,
		-0.038291, -0.793537, -0.607316,
		22.757368, 39.522011, 21.969816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364180, 39.752518, 22.413624>,  <22.784172, 40.077484, 22.394939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364180, 39.752518, 22.413624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.214199, 39.663002, 22.053772>,  <23.124210, 39.609295, 21.837860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.214199, 39.663002, 22.053772>,  <23.364180, 39.752518, 22.413624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.214199, 39.663002, 22.053772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807867, 0.397115, -0.435489,
		0.454712, -0.890067, 0.031891,
		-0.374950, -0.223785, -0.899629,
		23.101713, 39.595867, 21.783884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.954395, 39.541191, 21.995150>,  <23.364180, 39.752518, 22.413624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.954395, 39.541191, 21.995150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.672123, 39.616879, 21.722031>,  <23.502760, 39.662292, 21.558159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.672123, 39.616879, 21.722031>,  <23.954395, 39.541191, 21.995150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.672123, 39.616879, 21.722031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698333, 0.348657, -0.625116,
		0.119777, -0.917951, -0.378179,
		-0.705680, 0.189220, -0.682797,
		23.460419, 39.673645, 21.517191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.225185, 39.361942, 21.285719>,  <23.954395, 39.541191, 21.995150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.225185, 39.361942, 21.285719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.912930, 39.602894, 21.219090>,  <23.725576, 39.747463, 21.179111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.912930, 39.602894, 21.219090>,  <24.225185, 39.361942, 21.285719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.912930, 39.602894, 21.219090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503441, 0.448149, -0.738721,
		-0.370340, -0.660533, -0.653103,
		-0.780638, 0.602377, -0.166573,
		23.678738, 39.783607, 21.169117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.204422, 39.379089, 20.512939>,  <24.225185, 39.361942, 21.285719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.204422, 39.379089, 20.512939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.977100, 39.686256, 20.631145>,  <23.840708, 39.870556, 20.702070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.977100, 39.686256, 20.631145>,  <24.204422, 39.379089, 20.512939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.977100, 39.686256, 20.631145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357768, 0.554039, -0.751693,
		-0.740968, -0.321463, -0.589599,
		-0.568303, 0.767921, 0.295517,
		23.806610, 39.916634, 20.719801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.761833, 39.592854, 19.947783>,  <24.204422, 39.379089, 20.512939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.761833, 39.592854, 19.947783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.751614, 39.895111, 20.209576>,  <23.745481, 40.076466, 20.366652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.751614, 39.895111, 20.209576>,  <23.761833, 39.592854, 19.947783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.751614, 39.895111, 20.209576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196820, 0.645683, -0.737805,
		-0.980107, 0.109964, -0.165223,
		-0.025550, 0.755647, 0.654481,
		23.743948, 40.121803, 20.405920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.406046, 40.013523, 19.588129>,  <23.761833, 39.592854, 19.947783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.406046, 40.013523, 19.588129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.618948, 40.220001, 19.856529>,  <23.746689, 40.343887, 20.017569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.618948, 40.220001, 19.856529>,  <23.406046, 40.013523, 19.588129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.618948, 40.220001, 19.856529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161639, 0.716053, -0.679074,
		-0.831009, 0.469901, 0.297686,
		0.532256, 0.516199, 0.671001,
		23.778625, 40.374863, 20.057829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.195122, 40.697281, 19.527903>,  <23.406046, 40.013523, 19.588129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.195122, 40.697281, 19.527903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.552824, 40.700279, 19.706902>,  <23.767445, 40.702076, 19.814301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.552824, 40.700279, 19.706902>,  <23.195122, 40.697281, 19.527903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.552824, 40.700279, 19.706902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298732, 0.734539, -0.609272,
		-0.333268, 0.678525, 0.654626,
		0.894255, 0.007493, 0.447495,
		23.821100, 40.702526, 19.841150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.382778, 41.425716, 19.496281>,  <23.195122, 40.697281, 19.527903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.382778, 41.425716, 19.496281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.720890, 41.216545, 19.540180>,  <23.923758, 41.091042, 19.566519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.720890, 41.216545, 19.540180>,  <23.382778, 41.425716, 19.496281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.720890, 41.216545, 19.540180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463133, 0.614610, -0.638563,
		0.266471, 0.590593, 0.761704,
		0.845281, -0.522929, 0.109748,
		23.974474, 41.059666, 19.573105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914160, 41.937859, 19.510101>,  <23.382778, 41.425716, 19.496281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914160, 41.937859, 19.510101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.091459, 41.589466, 19.425320>,  <24.197840, 41.380432, 19.374451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.091459, 41.589466, 19.425320>,  <23.914160, 41.937859, 19.510101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.091459, 41.589466, 19.425320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524939, 0.443876, -0.726232,
		0.726615, 0.210637, 0.653959,
		0.443248, -0.870980, -0.211956,
		24.224434, 41.328171, 19.361732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.584225, 42.108883, 19.400431>,  <23.914160, 41.937859, 19.510101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.584225, 42.108883, 19.400431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.602905, 41.747520, 19.229939>,  <24.614113, 41.530704, 19.127644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.602905, 41.747520, 19.229939>,  <24.584225, 42.108883, 19.400431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602905, 41.747520, 19.229939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646439, 0.352634, -0.676584,
		0.761535, -0.243935, 0.600467,
		0.046702, -0.903407, -0.426232,
		24.616917, 41.476498, 19.102068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235788, 41.981876, 19.346674>,  <24.584225, 42.108883, 19.400431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235788, 41.981876, 19.346674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.081598, 41.713787, 19.092995>,  <24.989084, 41.552933, 18.940786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.081598, 41.713787, 19.092995>,  <25.235788, 41.981876, 19.346674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081598, 41.713787, 19.092995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736656, 0.190359, -0.648923,
		0.555649, -0.717332, 0.420345,
		-0.385477, -0.670223, -0.634200,
		24.965956, 41.512722, 18.902735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750584, 41.469826, 19.235205>,  <25.235788, 41.981876, 19.346674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750584, 41.469826, 19.235205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.512480, 41.448345, 18.914509>,  <25.369617, 41.435455, 18.722092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.512480, 41.448345, 18.914509>,  <25.750584, 41.469826, 19.235205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512480, 41.448345, 18.914509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803371, -0.019677, -0.595154,
		0.016184, -0.998363, 0.054855,
		-0.595259, -0.053701, -0.801737,
		25.333902, 41.432236, 18.673988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000444, 40.994976, 18.776442>,  <25.750584, 41.469826, 19.235205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000444, 40.994976, 18.776442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.765696, 41.211197, 18.535316>,  <25.624847, 41.340931, 18.390640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.765696, 41.211197, 18.535316>,  <26.000444, 40.994976, 18.776442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765696, 41.211197, 18.535316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734008, 0.040913, -0.677907,
		-0.341782, -0.840314, -0.420781,
		-0.586870, 0.540553, -0.602815,
		25.589634, 41.373363, 18.354471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097651, 40.689785, 18.184381>,  <26.000444, 40.994976, 18.776442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097651, 40.689785, 18.184381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.962564, 41.052429, 18.083176>,  <25.881514, 41.270016, 18.022453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.962564, 41.052429, 18.083176>,  <26.097651, 40.689785, 18.184381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962564, 41.052429, 18.083176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772797, 0.113613, -0.624401,
		-0.537341, -0.406395, -0.738991,
		-0.337713, 0.906606, -0.253012,
		25.861250, 41.324409, 18.007273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047310, 40.772125, 17.412743>,  <26.097651, 40.689785, 18.184381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047310, 40.772125, 17.412743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.074326, 41.132336, 17.584549>,  <26.090534, 41.348461, 17.687634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.074326, 41.132336, 17.584549>,  <26.047310, 40.772125, 17.412743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074326, 41.132336, 17.584549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787320, 0.216325, -0.577348,
		-0.612834, 0.377159, -0.694396,
		0.067537, 0.900530, 0.429516,
		26.094587, 41.402496, 17.713404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.819656, 27.114305, 23.462572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066332, 27.157688, 23.774452>,  <27.214338, 27.183718, 23.961580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066332, 27.157688, 23.774452>,  <26.819656, 27.114305, 23.462572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066332, 27.157688, 23.774452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003729, 0.990050, -0.140665,
		-0.787197, 0.089654, 0.610150,
		0.616690, 0.108456, 0.779699,
		27.251339, 27.190226, 24.008362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533800, 27.709488, 23.761168>,  <26.819656, 27.114305, 23.462572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533800, 27.709488, 23.761168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903999, 27.669224, 23.907223>,  <27.126118, 27.645065, 23.994856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903999, 27.669224, 23.907223>,  <26.533800, 27.709488, 23.761168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903999, 27.669224, 23.907223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137143, 0.987682, -0.075332,
		-0.353056, 0.119796, 0.927901,
		0.925496, -0.100658, 0.365137,
		27.181648, 27.639027, 24.016764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504816, 28.227789, 24.346079>,  <26.533800, 27.709488, 23.761168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504816, 28.227789, 24.346079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883923, 28.154690, 24.241508>,  <27.111387, 28.110830, 24.178766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883923, 28.154690, 24.241508>,  <26.504816, 28.227789, 24.346079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883923, 28.154690, 24.241508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154472, 0.980048, -0.125075,
		0.279065, 0.078160, 0.957086,
		0.947766, -0.182747, -0.261424,
		27.168253, 28.099865, 24.163082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851513, 28.724957, 24.679249>,  <26.504816, 28.227789, 24.346079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851513, 28.724957, 24.679249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121845, 28.597172, 24.413559>,  <27.284044, 28.520500, 24.254145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121845, 28.597172, 24.413559>,  <26.851513, 28.724957, 24.679249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121845, 28.597172, 24.413559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389490, 0.919875, -0.046120,
		0.625738, -0.227539, 0.746109,
		0.675833, -0.319461, -0.664225,
		27.324594, 28.501333, 24.214291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469917, 29.010260, 24.850157>,  <26.851513, 28.724957, 24.679249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469917, 29.010260, 24.850157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551378, 28.917088, 24.469784>,  <27.600254, 28.861185, 24.241560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551378, 28.917088, 24.469784>,  <27.469917, 29.010260, 24.850157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551378, 28.917088, 24.469784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329480, 0.930938, -0.157471,
		0.921938, -0.281244, 0.266333,
		0.203651, -0.232930, -0.950931,
		27.612474, 28.847208, 24.184504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151583, 29.249504, 24.730539>,  <27.469917, 29.010260, 24.850157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151583, 29.249504, 24.730539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969097, 29.210453, 24.376740>,  <27.859606, 29.187023, 24.164459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969097, 29.210453, 24.376740>,  <28.151583, 29.249504, 24.730539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969097, 29.210453, 24.376740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359316, 0.889122, -0.283469,
		0.814101, -0.447136, -0.370550,
		-0.456214, -0.097628, -0.884498,
		27.832233, 29.181164, 24.111389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616316, 29.235842, 24.160343>,  <28.151583, 29.249504, 24.730539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616316, 29.235842, 24.160343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267214, 29.350376, 24.002201>,  <28.057753, 29.419098, 23.907316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267214, 29.350376, 24.002201>,  <28.616316, 29.235842, 24.160343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267214, 29.350376, 24.002201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410701, 0.868470, -0.277641,
		0.263856, -0.404686, -0.875563,
		-0.872757, 0.286337, -0.395356,
		28.005386, 29.436277, 23.883595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742008, 29.597950, 23.490005>,  <28.616316, 29.235842, 24.160343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742008, 29.597950, 23.490005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386408, 29.722744, 23.624077>,  <28.173048, 29.797621, 23.704519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386408, 29.722744, 23.624077>,  <28.742008, 29.597950, 23.490005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386408, 29.722744, 23.624077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164218, 0.900508, -0.402640,
		-0.427449, -0.302904, -0.851784,
		-0.888999, 0.311986, 0.335178,
		28.119707, 29.816339, 23.724630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729212, 30.049200, 23.104418>,  <28.742008, 29.597950, 23.490005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729212, 30.049200, 23.104418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454472, 30.150490, 23.376923>,  <28.289627, 30.211264, 23.540424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454472, 30.150490, 23.376923>,  <28.729212, 30.049200, 23.104418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454472, 30.150490, 23.376923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201093, 0.966962, -0.156674,
		-0.698426, 0.029385, -0.715079,
		-0.686850, 0.253222, 0.681260,
		28.248417, 30.226456, 23.581301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.327425, 30.591398, 22.759573>,  <28.729212, 30.049200, 23.104418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.327425, 30.591398, 22.759573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279692, 30.624256, 23.155354>,  <28.251051, 30.643970, 23.392822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279692, 30.624256, 23.155354>,  <28.327425, 30.591398, 22.759573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279692, 30.624256, 23.155354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355269, 0.934120, -0.034703,
		-0.927115, 0.347380, -0.140656,
		-0.119335, 0.082145, 0.989450,
		28.243891, 30.648899, 23.452188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033121, 31.256304, 22.863852>,  <28.327425, 30.591398, 22.759573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033121, 31.256304, 22.863852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154629, 31.169235, 23.234871>,  <28.227533, 31.116993, 23.457481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154629, 31.169235, 23.234871>,  <28.033121, 31.256304, 22.863852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154629, 31.169235, 23.234871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309398, 0.943324, 0.120050,
		-0.901109, 0.250514, 0.353899,
		0.303768, -0.217673, 0.927547,
		28.245760, 31.103933, 23.513136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348932, 31.541634, 22.870110>,  <28.033121, 31.256304, 22.863852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348932, 31.541634, 22.870110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627363, 31.825825, 22.828732>,  <27.794422, 31.996340, 22.803905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627363, 31.825825, 22.828732>,  <27.348932, 31.541634, 22.870110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627363, 31.825825, 22.828732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703598, 0.703708, 0.098717,
		0.142930, 0.004068, 0.989724,
		0.696075, 0.710478, -0.103443,
		27.836185, 32.038967, 22.797699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054678, 32.147079, 23.338480>,  <27.348932, 31.541634, 22.870110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054678, 32.147079, 23.338480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313753, 32.150555, 23.643223>,  <27.469198, 32.152641, 23.826069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313753, 32.150555, 23.643223>,  <27.054678, 32.147079, 23.338480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313753, 32.150555, 23.643223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062249, 0.995988, -0.064279,
		-0.759358, 0.089058, 0.644549,
		0.647688, 0.008688, 0.761856,
		27.508060, 32.153160, 23.871780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391148, 32.404053, 23.255308>,  <27.054678, 32.147079, 23.338480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391148, 32.404053, 23.255308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569668, 32.556461, 22.931423>,  <26.676781, 32.647907, 22.737091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569668, 32.556461, 22.931423>,  <26.391148, 32.404053, 23.255308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569668, 32.556461, 22.931423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262097, -0.809493, -0.525383,
		-0.855641, 0.446702, -0.261411,
		0.446300, 0.381024, -0.809714,
		26.703558, 32.670769, 22.688509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555716, 32.561882, 23.975721>,  <26.391148, 32.404053, 23.255308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555716, 32.561882, 23.975721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242481, 32.698792, 24.183422>,  <26.054541, 32.780937, 24.308043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242481, 32.698792, 24.183422>,  <26.555716, 32.561882, 23.975721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242481, 32.698792, 24.183422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437828, -0.289553, 0.851156,
		0.441681, 0.893871, 0.076887,
		-0.783087, 0.342276, 0.519252,
		26.007555, 32.801476, 24.339197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808849, 33.135532, 24.415012>,  <26.555716, 32.561882, 23.975721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808849, 33.135532, 24.415012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479376, 32.951126, 24.547077>,  <26.281691, 32.840481, 24.626316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479376, 32.951126, 24.547077>,  <26.808849, 33.135532, 24.415012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479376, 32.951126, 24.547077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508732, -0.343611, 0.789382,
		-0.250468, 0.818167, 0.517560,
		-0.823685, -0.461014, 0.330164,
		26.232269, 32.812820, 24.646126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739477, 33.367275, 25.189095>,  <26.808849, 33.135532, 24.415012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739477, 33.367275, 25.189095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502617, 33.045029, 25.196373>,  <26.360500, 32.851681, 25.200741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502617, 33.045029, 25.196373>,  <26.739477, 33.367275, 25.189095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502617, 33.045029, 25.196373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445069, -0.308146, 0.840809,
		-0.671765, 0.505986, 0.541027,
		-0.592152, -0.805621, 0.018197,
		26.324970, 32.803341, 25.201832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446383, 33.293308, 25.819296>,  <26.739477, 33.367275, 25.189095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446383, 33.293308, 25.819296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421019, 32.927124, 25.660339>,  <26.405800, 32.707413, 25.564966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421019, 32.927124, 25.660339>,  <26.446383, 33.293308, 25.819296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421019, 32.927124, 25.660339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329875, -0.395036, 0.857397,
		-0.941892, -0.076721, 0.327036,
		-0.063411, -0.915456, -0.397390,
		26.401995, 32.652489, 25.541122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221088, 32.869583, 26.364235>,  <26.446383, 33.293308, 25.819296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221088, 32.869583, 26.364235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383856, 32.607933, 26.109192>,  <26.481516, 32.450943, 25.956167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383856, 32.607933, 26.109192>,  <26.221088, 32.869583, 26.364235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383856, 32.607933, 26.109192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411508, -0.491900, 0.767265,
		-0.815524, -0.574593, 0.069015,
		0.406917, -0.654123, -0.637606,
		26.505932, 32.411697, 25.917910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160263, 32.362495, 26.809147>,  <26.221088, 32.869583, 26.364235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160263, 32.362495, 26.809147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411674, 32.269272, 26.512329>,  <26.562521, 32.213337, 26.334238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411674, 32.269272, 26.512329>,  <26.160263, 32.362495, 26.809147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411674, 32.269272, 26.512329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599302, -0.463006, 0.653041,
		-0.495771, -0.855165, -0.151338,
		0.628528, -0.233062, -0.742047,
		26.600233, 32.199352, 26.289715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377132, 31.719681, 27.080894>,  <26.160263, 32.362495, 26.809147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377132, 31.719681, 27.080894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636381, 31.826809, 26.795738>,  <26.791931, 31.891087, 26.624645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636381, 31.826809, 26.795738>,  <26.377132, 31.719681, 27.080894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636381, 31.826809, 26.795738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713993, -0.539288, 0.446522,
		-0.264865, -0.798398, -0.540747,
		0.648121, 0.267821, -0.712889,
		26.830818, 31.907156, 26.581871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499369, 31.076614, 26.664438>,  <26.377132, 31.719681, 27.080894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499369, 31.076614, 26.664438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789145, 31.352348, 26.665173>,  <26.963011, 31.517788, 26.665613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789145, 31.352348, 26.665173>,  <26.499369, 31.076614, 26.664438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789145, 31.352348, 26.665173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664007, -0.698532, 0.266736,
		0.185153, -0.192016, -0.963768,
		0.724440, 0.689336, 0.001835,
		27.006477, 31.559149, 26.665724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055748, 30.703888, 26.443346>,  <26.499369, 31.076614, 26.664438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055748, 30.703888, 26.443346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234341, 31.030006, 26.590832>,  <27.341496, 31.225677, 26.679323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234341, 31.030006, 26.590832>,  <27.055748, 30.703888, 26.443346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234341, 31.030006, 26.590832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666818, -0.577938, 0.470470,
		0.596665, 0.035809, -0.801691,
		0.446480, 0.815295, 0.368713,
		27.368284, 31.274595, 26.701447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771048, 30.599466, 26.231718>,  <27.055748, 30.703888, 26.443346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771048, 30.599466, 26.231718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770754, 30.857239, 26.537582>,  <27.770576, 31.011902, 26.721102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770754, 30.857239, 26.537582>,  <27.771048, 30.599466, 26.231718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770754, 30.857239, 26.537582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629297, -0.593969, 0.501184,
		0.777164, 0.481567, -0.405103,
		-0.000735, 0.644433, 0.764661,
		27.770533, 31.050570, 26.766981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500454, 30.806871, 26.374945>,  <27.771048, 30.599466, 26.231718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500454, 30.806871, 26.374945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304518, 30.871231, 26.717678>,  <28.186956, 30.909847, 26.923319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304518, 30.871231, 26.717678>,  <28.500454, 30.806871, 26.374945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304518, 30.871231, 26.717678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603154, -0.647103, 0.466329,
		0.629493, 0.745231, 0.219931,
		-0.489841, 0.160898, 0.856836,
		28.157566, 30.919500, 26.974730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108238, 30.719110, 26.841036>,  <28.500454, 30.806871, 26.374945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108238, 30.719110, 26.841036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755465, 30.686657, 27.026772>,  <28.543800, 30.667185, 27.138212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755465, 30.686657, 27.026772>,  <29.108238, 30.719110, 26.841036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755465, 30.686657, 27.026772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354971, -0.762454, 0.540981,
		0.310145, 0.641936, 0.701234,
		-0.881933, -0.081135, 0.464340,
		28.490885, 30.662317, 27.166073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275349, 30.827456, 27.518538>,  <29.108238, 30.719110, 26.841036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275349, 30.827456, 27.518538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938475, 30.615685, 27.477692>,  <28.736349, 30.488621, 27.453184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938475, 30.615685, 27.477692>,  <29.275349, 30.827456, 27.518538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938475, 30.615685, 27.477692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296138, -0.612445, 0.732949,
		-0.450583, 0.587040, 0.672577,
		-0.842186, -0.529429, -0.102112,
		28.685820, 30.456856, 27.447058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106833, 30.539452, 28.101912>,  <29.275349, 30.827456, 27.518538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106833, 30.539452, 28.101912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893030, 30.299446, 27.863823>,  <28.764750, 30.155443, 27.720970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893030, 30.299446, 27.863823>,  <29.106833, 30.539452, 28.101912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893030, 30.299446, 27.863823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274728, -0.789369, 0.549019,
		-0.799268, 0.129930, 0.586761,
		-0.534505, -0.600013, -0.595222,
		28.732679, 30.119442, 27.685257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455841, 30.811096, 28.284193>,  <29.106833, 30.539452, 28.101912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455841, 30.811096, 28.284193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647408, 30.960865, 28.601795>,  <28.762346, 31.050726, 28.792356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647408, 30.960865, 28.601795>,  <28.455841, 30.811096, 28.284193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647408, 30.960865, 28.601795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503977, 0.623308, -0.597908,
		-0.718783, 0.686508, 0.109810,
		0.478914, 0.374424, 0.794007,
		28.791082, 31.073193, 28.839998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381613, 31.524036, 28.228336>,  <28.455841, 30.811096, 28.284193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381613, 31.524036, 28.228336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695419, 31.494804, 28.474651>,  <28.883703, 31.477264, 28.622440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695419, 31.494804, 28.474651>,  <28.381613, 31.524036, 28.228336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695419, 31.494804, 28.474651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403317, 0.814433, -0.417174,
		-0.471030, 0.575638, 0.668410,
		0.784516, -0.073079, 0.615787,
		28.930775, 31.472881, 28.659388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491234, 32.205143, 28.496998>,  <28.381613, 31.524036, 28.228336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491234, 32.205143, 28.496998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820099, 31.982662, 28.545467>,  <29.017418, 31.849173, 28.574549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820099, 31.982662, 28.545467>,  <28.491234, 32.205143, 28.496998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820099, 31.982662, 28.545467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534373, 0.680740, -0.501037,
		0.196190, 0.476688, 0.856900,
		0.822165, -0.556203, 0.121175,
		29.066748, 31.815802, 28.581820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917868, 32.557808, 28.924648>,  <28.491234, 32.205143, 28.496998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917868, 32.557808, 28.924648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170708, 32.299702, 28.753033>,  <29.322412, 32.144836, 28.650063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170708, 32.299702, 28.753033>,  <28.917868, 32.557808, 28.924648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170708, 32.299702, 28.753033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505083, 0.762995, -0.403399,
		0.587655, 0.038289, 0.808205,
		0.632102, -0.645270, -0.429039,
		29.360338, 32.106121, 28.624321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560097, 32.853668, 29.192207>,  <28.917868, 32.557808, 28.924648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560097, 32.853668, 29.192207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603464, 32.628185, 28.864677>,  <29.629484, 32.492893, 28.668159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603464, 32.628185, 28.864677>,  <29.560097, 32.853668, 29.192207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603464, 32.628185, 28.864677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586059, 0.701568, -0.405385,
		0.802982, -0.435929, 0.406431,
		0.108420, -0.563710, -0.818826,
		29.635990, 32.459072, 28.619030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231731, 32.928936, 29.037292>,  <29.560097, 32.853668, 29.192207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231731, 32.928936, 29.037292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114780, 32.756855, 28.695663>,  <30.044611, 32.653606, 28.490686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114780, 32.756855, 28.695663>,  <30.231731, 32.928936, 29.037292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114780, 32.756855, 28.695663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703487, 0.508211, -0.496818,
		0.647783, -0.746085, 0.154057,
		-0.292375, -0.430207, -0.854072,
		30.027067, 32.627792, 28.439442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928911, 32.856705, 28.634705>,  <30.231731, 32.928936, 29.037292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928911, 32.856705, 28.634705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634666, 32.839947, 28.364262>,  <30.458118, 32.829891, 28.201996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634666, 32.839947, 28.364262>,  <30.928911, 32.856705, 28.634705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634666, 32.839947, 28.364262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484657, 0.664765, -0.568503,
		0.473267, -0.745877, -0.468707,
		-0.735613, -0.041891, -0.676105,
		30.413982, 32.827381, 28.161430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188051, 32.751011, 27.904924>,  <30.928911, 32.856705, 28.634705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188051, 32.751011, 27.904924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837425, 32.932178, 27.839806>,  <30.627050, 33.040878, 27.800734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837425, 32.932178, 27.839806>,  <31.188051, 32.751011, 27.904924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837425, 32.932178, 27.839806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444960, 0.633720, -0.632779,
		-0.183429, -0.627110, -0.757025,
		-0.876564, 0.452916, -0.162796,
		30.574455, 33.068054, 27.790966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075705, 32.813992, 27.213888>,  <31.188051, 32.751011, 27.904924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075705, 32.813992, 27.213888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845472, 33.101540, 27.369804>,  <30.707333, 33.274067, 27.463354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845472, 33.101540, 27.369804>,  <31.075705, 32.813992, 27.213888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845472, 33.101540, 27.369804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390154, 0.660322, -0.641681,
		-0.718671, -0.217261, -0.660538,
		-0.575580, 0.718869, 0.389789,
		30.672798, 33.317200, 27.486740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791340, 33.080734, 26.612522>,  <31.075705, 32.813992, 27.213888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791340, 33.080734, 26.612522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759581, 33.355587, 26.901394>,  <30.740524, 33.520500, 27.074717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759581, 33.355587, 26.901394>,  <30.791340, 33.080734, 26.612522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759581, 33.355587, 26.901394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395923, 0.686609, -0.609764,
		-0.914845, 0.237512, -0.326569,
		-0.079399, 0.687136, 0.722178,
		30.735762, 33.561729, 27.118048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541349, 33.643242, 26.282822>,  <30.791340, 33.080734, 26.612522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541349, 33.643242, 26.282822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697399, 33.776737, 26.626083>,  <30.791029, 33.856834, 26.832041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697399, 33.776737, 26.626083>,  <30.541349, 33.643242, 26.282822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697399, 33.776737, 26.626083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448016, 0.745433, -0.493570,
		-0.804416, 0.577019, 0.141293,
		0.390124, 0.333734, 0.858152,
		30.814436, 33.876858, 26.883530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577389, 34.435600, 26.263460>,  <30.541349, 33.643242, 26.282822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577389, 34.435600, 26.263460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833309, 34.355244, 26.560188>,  <30.986862, 34.307030, 26.738226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833309, 34.355244, 26.560188>,  <30.577389, 34.435600, 26.263460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833309, 34.355244, 26.560188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567402, 0.774508, -0.279629,
		-0.518372, 0.599817, 0.609516,
		0.639802, -0.200889, 0.741821,
		31.025249, 34.294975, 26.782734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.142109, 27.942081, 30.431072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.502382, 27.920597, 30.603531>,  <27.718546, 27.907707, 30.707006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.502382, 27.920597, 30.603531>,  <27.142109, 27.942081, 30.431072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502382, 27.920597, 30.603531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220777, 0.911244, -0.347695,
		-0.374207, 0.408350, 0.832598,
		0.900681, -0.053709, 0.431148,
		27.772587, 27.904484, 30.732876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201706, 28.650436, 30.787283>,  <27.142109, 27.942081, 30.431072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201706, 28.650436, 30.787283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.565699, 28.491798, 30.738880>,  <27.784094, 28.396616, 30.709839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.565699, 28.491798, 30.738880>,  <27.201706, 28.650436, 30.787283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565699, 28.491798, 30.738880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367561, 0.906605, -0.207281,
		0.191913, 0.144144, 0.970769,
		0.909983, -0.396597, -0.121007,
		27.838694, 28.372820, 30.702578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576950, 29.227318, 30.952721>,  <27.201706, 28.650436, 30.787283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576950, 29.227318, 30.952721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.829643, 28.982807, 30.762035>,  <27.981258, 28.836102, 30.647623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.829643, 28.982807, 30.762035>,  <27.576950, 29.227318, 30.952721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829643, 28.982807, 30.762035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518821, 0.790332, -0.325885,
		0.575968, -0.041457, 0.816420,
		0.631732, -0.611275, -0.476715,
		28.019163, 28.799425, 30.619020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209196, 29.448679, 31.281284>,  <27.576950, 29.227318, 30.952721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209196, 29.448679, 31.281284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.293451, 29.281029, 30.928020>,  <28.344004, 29.180439, 30.716063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.293451, 29.281029, 30.928020>,  <28.209196, 29.448679, 31.281284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293451, 29.281029, 30.928020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665643, 0.723124, -0.184418,
		0.715927, -0.549022, 0.431304,
		0.210637, -0.419125, -0.883157,
		28.356642, 29.155291, 30.663073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940441, 29.653234, 31.104465>,  <28.209196, 29.448679, 31.281284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940441, 29.653234, 31.104465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.757635, 29.568359, 30.758953>,  <28.647951, 29.517433, 30.551645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.757635, 29.568359, 30.758953>,  <28.940441, 29.653234, 31.104465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757635, 29.568359, 30.758953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394085, 0.822303, -0.410505,
		0.797393, -0.528009, -0.292183,
		-0.457014, -0.212189, -0.863779,
		28.620531, 29.504704, 30.499819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582794, 29.636139, 30.619364>,  <28.940441, 29.653234, 31.104465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582794, 29.636139, 30.619364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.240917, 29.694370, 30.420040>,  <29.035791, 29.729309, 30.300446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.240917, 29.694370, 30.420040>,  <29.582794, 29.636139, 30.619364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240917, 29.694370, 30.420040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446092, 0.696909, -0.561533,
		0.265530, -0.702229, -0.660582,
		-0.854691, 0.145577, -0.498309,
		28.984510, 29.738043, 30.270548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871532, 29.768433, 29.815157>,  <29.582794, 29.636139, 30.619364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871532, 29.768433, 29.815157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.487869, 29.881538, 29.812191>,  <29.257671, 29.949402, 29.810411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.487869, 29.881538, 29.812191>,  <29.871532, 29.768433, 29.815157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487869, 29.881538, 29.812191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187782, 0.616933, -0.764285,
		-0.211541, -0.734463, -0.644836,
		-0.959160, 0.282767, -0.007412,
		29.200121, 29.966368, 29.809967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682129, 29.835243, 29.201620>,  <29.871532, 29.768433, 29.815157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682129, 29.835243, 29.201620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.416479, 30.087250, 29.362625>,  <29.257090, 30.238455, 29.459229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.416479, 30.087250, 29.362625>,  <29.682129, 29.835243, 29.201620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416479, 30.087250, 29.362625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179213, 0.656848, -0.732416,
		-0.725825, -0.414279, -0.549137,
		-0.664124, 0.630018, 0.402512,
		29.217241, 30.276255, 29.483379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529202, 30.206371, 28.690374>,  <29.682129, 29.835243, 29.201620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529202, 30.206371, 28.690374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.373100, 30.458019, 28.959270>,  <29.279440, 30.609009, 29.120609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.373100, 30.458019, 28.959270>,  <29.529202, 30.206371, 28.690374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373100, 30.458019, 28.959270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217228, 0.772439, -0.596783,
		-0.894714, -0.086867, -0.438110,
		-0.390254, 0.629120, 0.672242,
		29.256023, 30.646755, 29.160944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821577, 30.042242, 28.564695>,  <29.529202, 30.206371, 28.690374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821577, 30.042242, 28.564695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.747755, 29.888641, 28.202816>,  <28.703463, 29.796480, 27.985687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.747755, 29.888641, 28.202816>,  <28.821577, 30.042242, 28.564695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747755, 29.888641, 28.202816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292173, -0.900332, 0.322547,
		-0.938389, -0.204801, 0.278356,
		-0.184555, -0.384002, -0.904700,
		28.692389, 29.773441, 27.931406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466646, 29.525553, 28.693829>,  <28.821577, 30.042242, 28.564695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466646, 29.525553, 28.693829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.628866, 29.422100, 28.343140>,  <28.726198, 29.360029, 28.132727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.628866, 29.422100, 28.343140>,  <28.466646, 29.525553, 28.693829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628866, 29.422100, 28.343140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151257, -0.926925, 0.343411,
		-0.901472, -0.271880, -0.336793,
		0.405549, -0.258633, -0.876721,
		28.750530, 29.344511, 28.080124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084625, 28.946384, 28.504877>,  <28.466646, 29.525553, 28.693829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084625, 28.946384, 28.504877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.395681, 28.874989, 28.263741>,  <28.582315, 28.832151, 28.119059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.395681, 28.874989, 28.263741>,  <28.084625, 28.946384, 28.504877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395681, 28.874989, 28.263741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045979, -0.940141, 0.337671,
		-0.627024, -0.290305, -0.722885,
		0.777642, -0.178490, -0.602839,
		28.628973, 28.821442, 28.082890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921770, 28.310043, 28.015871>,  <28.084625, 28.946384, 28.504877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921770, 28.310043, 28.015871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.319458, 28.347496, 28.036884>,  <28.558071, 28.369968, 28.049492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.319458, 28.347496, 28.036884>,  <27.921770, 28.310043, 28.015871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319458, 28.347496, 28.036884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086048, -0.987551, 0.131674,
		0.064210, -0.126393, -0.989900,
		0.994220, 0.093634, 0.052535,
		28.617723, 28.375586, 28.052645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150309, 27.796505, 27.638117>,  <27.921770, 28.310043, 28.015871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150309, 27.796505, 27.638117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.485449, 27.886806, 27.836929>,  <28.686533, 27.940987, 27.956217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.485449, 27.886806, 27.836929>,  <28.150309, 27.796505, 27.638117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485449, 27.886806, 27.836929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198184, -0.974154, 0.108384,
		0.508653, 0.007694, -0.860937,
		0.837852, 0.225753, 0.497031,
		28.736805, 27.954533, 27.986038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764162, 27.366121, 27.370502>,  <28.150309, 27.796505, 27.638117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764162, 27.366121, 27.370502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.849148, 27.495335, 27.739395>,  <28.900139, 27.572863, 27.960730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.849148, 27.495335, 27.739395>,  <28.764162, 27.366121, 27.370502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849148, 27.495335, 27.739395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163723, -0.942204, 0.292313,
		0.963355, 0.088884, -0.253074,
		0.212465, 0.323035, 0.922229,
		28.912888, 27.592245, 28.016064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374020, 26.882744, 27.593567>,  <28.764162, 27.366121, 27.370502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374020, 26.882744, 27.593567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.187670, 27.046204, 27.907501>,  <29.075859, 27.144279, 28.095861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.187670, 27.046204, 27.907501>,  <29.374020, 26.882744, 27.593567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187670, 27.046204, 27.907501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039093, -0.895609, 0.443121,
		0.883986, 0.175758, 0.433218,
		-0.465876, 0.408649, 0.784835,
		29.047907, 27.168798, 28.142952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607777, 26.491285, 28.179121>,  <29.374020, 26.882744, 27.593567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607777, 26.491285, 28.179121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.283627, 26.679302, 28.319035>,  <29.089136, 26.792112, 28.402983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.283627, 26.679302, 28.319035>,  <29.607777, 26.491285, 28.179121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283627, 26.679302, 28.319035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283391, -0.836966, 0.468164,
		0.512815, 0.280263, 0.811464,
		-0.810377, 0.470043, 0.349785,
		29.040514, 26.820314, 28.423969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644602, 26.409607, 28.887596>,  <29.607777, 26.491285, 28.179121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644602, 26.409607, 28.887596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.259569, 26.455654, 28.789467>,  <29.028549, 26.483282, 28.730589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.259569, 26.455654, 28.789467>,  <29.644602, 26.409607, 28.887596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259569, 26.455654, 28.789467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220419, -0.859236, 0.461659,
		-0.157645, 0.498459, 0.852460,
		-0.962582, 0.115120, -0.245324,
		28.970795, 26.490191, 28.715870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396158, 26.049458, 29.433710>,  <29.644602, 26.409607, 28.887596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396158, 26.049458, 29.433710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.080837, 26.089550, 29.190884>,  <28.891644, 26.113605, 29.045187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.080837, 26.089550, 29.190884>,  <29.396158, 26.049458, 29.433710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080837, 26.089550, 29.190884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378172, -0.857209, 0.349541,
		-0.485349, 0.505120, 0.713646,
		-0.788303, 0.100232, -0.607068,
		28.844347, 26.119619, 29.008762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802963, 25.732727, 29.785610>,  <29.396158, 26.049458, 29.433710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802963, 25.732727, 29.785610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.641014, 25.729931, 29.419872>,  <28.543844, 25.728254, 29.200430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.641014, 25.729931, 29.419872>,  <28.802963, 25.732727, 29.785610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641014, 25.729931, 29.419872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534226, -0.809739, 0.242746,
		-0.742077, 0.586749, 0.324109,
		-0.404875, -0.006989, -0.914345,
		28.519552, 25.727835, 29.145569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085709, 25.542265, 29.894979>,  <28.802963, 25.732727, 29.785610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085709, 25.542265, 29.894979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.185989, 25.467129, 29.515114>,  <28.246157, 25.422047, 29.287193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.185989, 25.467129, 29.515114>,  <28.085709, 25.542265, 29.894979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185989, 25.467129, 29.515114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575859, -0.817492, 0.009676,
		-0.778161, 0.544448, -0.313116,
		0.250701, -0.187840, -0.949666,
		28.261200, 25.410776, 29.230213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457331, 25.377316, 29.605425>,  <28.085709, 25.542265, 29.894979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457331, 25.377316, 29.605425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.719332, 25.227314, 29.343021>,  <27.876532, 25.137314, 29.185579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.719332, 25.227314, 29.343021>,  <27.457331, 25.377316, 29.605425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719332, 25.227314, 29.343021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456232, -0.888324, 0.052273,
		-0.602350, 0.265052, -0.752942,
		0.655002, -0.375003, -0.656007,
		27.915833, 25.114813, 29.146219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107370, 25.152042, 28.883892>,  <27.457331, 25.377316, 29.605425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107370, 25.152042, 28.883892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.447523, 24.953796, 28.954563>,  <27.651615, 24.834848, 28.996965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.447523, 24.953796, 28.954563>,  <27.107370, 25.152042, 28.883892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447523, 24.953796, 28.954563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512575, -0.856141, 0.065491,
		0.118804, -0.146253, -0.982087,
		0.850384, -0.495613, 0.176678,
		27.702639, 24.805113, 29.007566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.606510, 23.839706, 30.145267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.221321, 23.944118, 30.118301>,  <30.990208, 24.006765, 30.102121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.221321, 23.944118, 30.118301>,  <31.606510, 23.839706, 30.145267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221321, 23.944118, 30.118301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216727, 0.600798, -0.769462,
		-0.160351, -0.755582, -0.635125,
		-0.962973, 0.261032, -0.067417,
		30.932428, 24.022429, 30.098076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386108, 23.667112, 29.452608>,  <31.606510, 23.839706, 30.145267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386108, 23.667112, 29.452608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.191389, 23.973709, 29.620186>,  <31.074556, 24.157667, 29.720734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.191389, 23.973709, 29.620186>,  <31.386108, 23.667112, 29.452608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191389, 23.973709, 29.620186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209367, 0.568013, -0.795944,
		-0.848052, -0.299751, -0.436986,
		-0.486799, 0.766492, 0.418947,
		31.045349, 24.203657, 29.745871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326342, 24.069046, 28.891256>,  <31.386108, 23.667112, 29.452608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326342, 24.069046, 28.891256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.191132, 24.301018, 29.187748>,  <31.110004, 24.440201, 29.365643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.191132, 24.301018, 29.187748>,  <31.326342, 24.069046, 28.891256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191132, 24.301018, 29.187748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080445, 0.802509, -0.591192,
		-0.937692, -0.140211, -0.317922,
		-0.338027, 0.579931, 0.741227,
		31.089724, 24.474997, 29.410116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819126, 24.486818, 28.565395>,  <31.326342, 24.069046, 28.891256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819126, 24.486818, 28.565395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.906507, 24.710144, 28.885536>,  <30.958937, 24.844139, 29.077621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.906507, 24.710144, 28.885536>,  <30.819126, 24.486818, 28.565395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906507, 24.710144, 28.885536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120345, 0.798487, -0.589861,
		-0.968399, 0.225174, 0.107240,
		0.218451, 0.558314, 0.800352,
		30.972042, 24.877638, 29.125643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459501, 25.091349, 28.407072>,  <30.819126, 24.486818, 28.565395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459501, 25.091349, 28.407072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.713619, 25.207016, 28.693508>,  <30.866089, 25.276417, 28.865370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.713619, 25.207016, 28.693508>,  <30.459501, 25.091349, 28.407072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713619, 25.207016, 28.693508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127915, 0.875044, -0.466836,
		-0.761604, 0.388176, 0.518921,
		0.635294, 0.289166, 0.716090,
		30.904207, 25.293766, 28.908335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224850, 25.686932, 28.577518>,  <30.459501, 25.091349, 28.407072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224850, 25.686932, 28.577518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.607256, 25.677147, 28.694435>,  <30.836700, 25.671276, 28.764585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.607256, 25.677147, 28.694435>,  <30.224850, 25.686932, 28.577518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607256, 25.677147, 28.694435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112839, 0.950494, -0.289531,
		-0.270738, 0.309778, 0.911449,
		0.956017, -0.024460, 0.292290,
		30.894060, 25.669809, 28.782122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392776, 26.407022, 28.743504>,  <30.224850, 25.686932, 28.577518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392776, 26.407022, 28.743504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.762035, 26.256145, 28.713757>,  <30.983591, 26.165619, 28.695910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.762035, 26.256145, 28.713757>,  <30.392776, 26.407022, 28.743504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762035, 26.256145, 28.713757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328892, 0.874985, -0.355289,
		0.199081, 0.303525, 0.931793,
		0.923145, -0.377191, -0.074366,
		31.038979, 26.142988, 28.691446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872625, 26.832695, 29.082264>,  <30.392776, 26.407022, 28.743504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872625, 26.832695, 29.082264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066113, 26.645866, 28.786194>,  <31.182205, 26.533770, 28.608551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.066113, 26.645866, 28.786194>,  <30.872625, 26.832695, 29.082264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066113, 26.645866, 28.786194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467447, 0.852848, -0.232689,
		0.739940, -0.233437, 0.630870,
		0.483718, -0.467074, -0.740175,
		31.211227, 26.505745, 28.564140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573421, 26.841673, 29.212173>,  <30.872625, 26.832695, 29.082264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573421, 26.841673, 29.212173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577635, 26.789703, 28.815586>,  <31.580162, 26.758522, 28.577633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577635, 26.789703, 28.815586>,  <31.573421, 26.841673, 29.212173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577635, 26.789703, 28.815586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633959, 0.767650, -0.093858,
		0.773295, -0.627562, 0.090451,
		0.010533, -0.129922, -0.991468,
		31.580795, 26.750727, 28.518147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172737, 27.274176, 28.977026>,  <31.573421, 26.841673, 29.212173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172737, 27.274176, 28.977026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035839, 27.138008, 28.626717>,  <31.953699, 27.056309, 28.416531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035839, 27.138008, 28.626717>,  <32.172737, 27.274176, 28.977026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035839, 27.138008, 28.626717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401216, 0.789871, -0.463820,
		0.849642, -0.510117, -0.133752,
		-0.342249, -0.340417, -0.875774,
		31.933165, 27.035883, 28.363985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694996, 27.484531, 28.380960>,  <32.172737, 27.274176, 28.977026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694996, 27.484531, 28.380960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326187, 27.425613, 28.237755>,  <32.104900, 27.390263, 28.151831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326187, 27.425613, 28.237755>,  <32.694996, 27.484531, 28.380960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326187, 27.425613, 28.237755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152136, 0.712528, -0.684951,
		0.355985, -0.686009, -0.634560,
		-0.922025, -0.147293, -0.358016,
		32.049580, 27.381426, 28.130350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747303, 27.365150, 27.628269>,  <32.694996, 27.484531, 28.380960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747303, 27.365150, 27.628269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373196, 27.501129, 27.667698>,  <32.148731, 27.582716, 27.691355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373196, 27.501129, 27.667698>,  <32.747303, 27.365150, 27.628269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373196, 27.501129, 27.667698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193768, 0.724800, -0.661149,
		-0.296199, -0.599250, -0.743751,
		-0.935265, 0.339947, 0.098570,
		32.092617, 27.603113, 27.697269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570694, 27.471216, 27.051794>,  <32.747303, 27.365150, 27.628269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570694, 27.471216, 27.051794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306290, 27.704796, 27.240292>,  <32.147648, 27.844944, 27.353390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306290, 27.704796, 27.240292>,  <32.570694, 27.471216, 27.051794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306290, 27.704796, 27.240292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206070, 0.745131, -0.634283,
		-0.721528, -0.322157, -0.612872,
		-0.661009, 0.583947, 0.471246,
		32.107986, 27.879980, 27.381666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149815, 27.723312, 26.535740>,  <32.570694, 27.471216, 27.051794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149815, 27.723312, 26.535740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.144966, 27.964451, 26.854847>,  <32.142056, 28.109133, 27.046310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.144966, 27.964451, 26.854847>,  <32.149815, 27.723312, 26.535740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144966, 27.964451, 26.854847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370765, 0.743662, -0.556327,
		-0.928648, 0.289041, -0.232527,
		-0.012120, 0.602845, 0.797766,
		32.141331, 28.145304, 27.094177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552509, 27.480919, 26.140951>,  <32.149815, 27.723312, 26.535740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552509, 27.480919, 26.140951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485029, 27.273491, 25.805660>,  <31.444542, 27.149035, 25.604485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.485029, 27.273491, 25.805660>,  <31.552509, 27.480919, 26.140951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485029, 27.273491, 25.805660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066990, -0.854483, 0.515142,
		-0.983388, 0.030752, 0.178891,
		-0.168701, -0.518569, -0.838228,
		31.434420, 27.117920, 25.554192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194809, 27.009493, 26.428177>,  <31.552509, 27.480919, 26.140951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194809, 27.009493, 26.428177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290348, 26.873196, 26.064453>,  <31.347672, 26.791418, 25.846218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290348, 26.873196, 26.064453>,  <31.194809, 27.009493, 26.428177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290348, 26.873196, 26.064453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221072, -0.930904, 0.290766,
		-0.945559, 0.131575, -0.297670,
		0.238844, -0.340742, -0.909312,
		31.362001, 26.770973, 25.791660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580885, 26.592585, 26.121075>,  <31.194809, 27.009493, 26.428177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580885, 26.592585, 26.121075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.897532, 26.468063, 25.910767>,  <31.087521, 26.393351, 25.784582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.897532, 26.468063, 25.910767>,  <30.580885, 26.592585, 26.121075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897532, 26.468063, 25.910767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312235, -0.945746, 0.089852,
		-0.525214, 0.093034, -0.845869,
		0.791618, -0.311301, -0.525768,
		31.135017, 26.374674, 25.753036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291548, 26.171877, 25.659521>,  <30.580885, 26.592585, 26.121075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291548, 26.171877, 25.659521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.671124, 26.047485, 25.680695>,  <30.898869, 25.972851, 25.693399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.671124, 26.047485, 25.680695>,  <30.291548, 26.171877, 25.659521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671124, 26.047485, 25.680695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309117, -0.950159, -0.040556,
		0.062909, 0.022122, -0.997774,
		0.948941, -0.310980, 0.052935,
		30.955807, 25.954191, 25.696575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258535, 25.458998, 25.316971>,  <30.291548, 26.171877, 25.659521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258535, 25.458998, 25.316971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.591402, 25.483509, 25.537422>,  <30.791122, 25.498217, 25.669693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.591402, 25.483509, 25.537422>,  <30.258535, 25.458998, 25.316971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591402, 25.483509, 25.537422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060350, -0.977963, 0.199864,
		0.551230, -0.199581, -0.810131,
		0.832168, 0.061280, 0.551128,
		30.841053, 25.501894, 25.702761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783844, 24.730898, 25.131546>,  <30.258535, 25.458998, 25.316971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783844, 24.730898, 25.131546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.898731, 24.885410, 25.482155>,  <30.967663, 24.978117, 25.692520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.898731, 24.885410, 25.482155>,  <30.783844, 24.730898, 25.131546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898731, 24.885410, 25.482155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143580, -0.887379, 0.438114,
		0.947043, -0.251686, -0.199409,
		0.287218, 0.386281, 0.876523,
		30.984898, 25.001295, 25.745111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217003, 24.243191, 25.467735>,  <30.783844, 24.730898, 25.131546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217003, 24.243191, 25.467735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.100033, 24.478924, 25.768978>,  <31.029850, 24.620363, 25.949724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.100033, 24.478924, 25.768978>,  <31.217003, 24.243191, 25.467735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100033, 24.478924, 25.768978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068022, -0.798356, 0.598331,
		0.953866, 0.123739, 0.273548,
		-0.292426, 0.589335, 0.753108,
		31.012304, 24.655724, 25.994911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609129, 24.000137, 26.063919>,  <31.217003, 24.243191, 25.467735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609129, 24.000137, 26.063919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308502, 24.204090, 26.231331>,  <31.128126, 24.326462, 26.331778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308502, 24.204090, 26.231331>,  <31.609129, 24.000137, 26.063919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308502, 24.204090, 26.231331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057849, -0.682965, 0.728157,
		0.657115, 0.523047, 0.542790,
		-0.751567, 0.509883, 0.418529,
		31.083033, 24.357056, 26.356890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772350, 24.156685, 26.802809>,  <31.609129, 24.000137, 26.063919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772350, 24.156685, 26.802809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.375391, 24.175426, 26.757282>,  <31.137217, 24.186672, 26.729965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.375391, 24.175426, 26.757282>,  <31.772350, 24.156685, 26.802809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375391, 24.175426, 26.757282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112332, -0.722751, 0.681918,
		-0.050311, 0.689518, 0.722519,
		-0.992396, 0.046854, -0.113817,
		31.077673, 24.189484, 26.723137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555803, 23.981686, 27.425390>,  <31.772350, 24.156685, 26.802809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555803, 23.981686, 27.425390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.224554, 23.940758, 27.204937>,  <31.025805, 23.916201, 27.072666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.224554, 23.940758, 27.204937>,  <31.555803, 23.981686, 27.425390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224554, 23.940758, 27.204937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349911, -0.673757, 0.650856,
		-0.437924, 0.731835, 0.522150,
		-0.828121, -0.102320, -0.551131,
		30.976118, 23.910061, 27.039598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948683, 23.955969, 27.831907>,  <31.555803, 23.981686, 27.425390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948683, 23.955969, 27.831907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.860430, 23.754421, 27.497856>,  <30.807478, 23.633492, 27.297426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.860430, 23.754421, 27.497856>,  <30.948683, 23.955969, 27.831907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860430, 23.754421, 27.497856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480852, -0.688749, 0.542592,
		-0.848588, 0.521287, -0.090325,
		-0.220635, -0.503870, -0.835126,
		30.794239, 23.603260, 27.247318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282871, 23.755360, 27.941057>,  <30.948683, 23.955969, 27.831907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282871, 23.755360, 27.941057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.418480, 23.513382, 27.652863>,  <30.499846, 23.368195, 27.479946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.418480, 23.513382, 27.652863>,  <30.282871, 23.755360, 27.941057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418480, 23.513382, 27.652863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375006, -0.789268, 0.486238,
		-0.862806, 0.105342, -0.494438,
		0.339022, -0.604946, -0.720488,
		30.520187, 23.331898, 27.436716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751719, 23.414211, 27.709803>,  <30.282871, 23.755360, 27.941057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751719, 23.414211, 27.709803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.042465, 23.164074, 27.596233>,  <30.216913, 23.013990, 27.528091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.042465, 23.164074, 27.596233>,  <29.751719, 23.414211, 27.709803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042465, 23.164074, 27.596233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405112, -0.724229, 0.558011,
		-0.554573, -0.290579, -0.779752,
		0.726865, -0.625344, -0.283921,
		30.260525, 22.976471, 27.511057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404974, 22.777229, 27.562038>,  <29.751719, 23.414211, 27.709803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404974, 22.777229, 27.562038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.782951, 22.648918, 27.587925>,  <30.009737, 22.571932, 27.603456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.782951, 22.648918, 27.587925>,  <29.404974, 22.777229, 27.562038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782951, 22.648918, 27.587925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304837, -0.790953, 0.530535,
		-0.118997, -0.521052, -0.845189,
		0.944941, -0.320777, 0.064715,
		30.066433, 22.552685, 27.607340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059114, 22.451180, 26.990303>,  <29.404974, 22.777229, 27.562038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059114, 22.451180, 26.990303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.684299, 22.341503, 26.903793>,  <28.459410, 22.275698, 26.851887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.684299, 22.341503, 26.903793>,  <29.059114, 22.451180, 26.990303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684299, 22.341503, 26.903793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055469, 0.728299, -0.683011,
		0.344789, -0.628012, -0.697654,
		-0.937040, -0.274193, -0.216274,
		28.403187, 22.259245, 26.838911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009075, 22.525608, 26.319723>,  <29.059114, 22.451180, 26.990303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009075, 22.525608, 26.319723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.614012, 22.506870, 26.379509>,  <28.376974, 22.495626, 26.415380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.614012, 22.506870, 26.379509>,  <29.009075, 22.525608, 26.319723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614012, 22.506870, 26.379509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149865, 0.560152, -0.814721,
		-0.045557, -0.827064, -0.560258,
		-0.987656, -0.046847, 0.149467,
		28.317715, 22.492817, 26.424349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596464, 22.290071, 25.654324>,  <29.009075, 22.525608, 26.319723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596464, 22.290071, 25.654324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.364548, 22.516819, 25.888420>,  <28.225399, 22.652868, 26.028877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.364548, 22.516819, 25.888420>,  <28.596464, 22.290071, 25.654324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364548, 22.516819, 25.888420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179895, 0.611500, -0.770523,
		-0.794659, -0.552022, -0.252564,
		-0.579789, 0.566868, 0.585240,
		28.190611, 22.686880, 26.063992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033714, 22.559605, 25.264210>,  <28.596464, 22.290071, 25.654324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033714, 22.559605, 25.264210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016924, 22.813354, 25.572964>,  <28.006849, 22.965605, 25.758215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016924, 22.813354, 25.572964>,  <28.033714, 22.559605, 25.264210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016924, 22.813354, 25.572964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400010, 0.697274, -0.594812,
		-0.915549, -0.333729, 0.224487,
		-0.041977, 0.634377, 0.771883,
		28.004332, 23.003668, 25.804529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563164, 23.117914, 25.071472>,  <28.033714, 22.559605, 25.264210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563164, 23.117914, 25.071472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.697311, 23.324905, 25.386368>,  <27.777800, 23.449100, 25.575304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.697311, 23.324905, 25.386368>,  <27.563164, 23.117914, 25.071472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697311, 23.324905, 25.386368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178672, 0.855402, -0.486172,
		-0.924989, 0.022389, 0.379333,
		0.335368, 0.517480, 0.787238,
		27.797922, 23.480150, 25.622540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039265, 23.516357, 25.258448>,  <27.563164, 23.117914, 25.071472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039265, 23.516357, 25.258448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.346489, 23.686630, 25.449810>,  <27.530825, 23.788794, 25.564629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.346489, 23.686630, 25.449810>,  <27.039265, 23.516357, 25.258448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346489, 23.686630, 25.449810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296089, 0.898490, -0.324109,
		-0.567812, 0.107285, 0.816137,
		0.768063, 0.425682, 0.478408,
		27.576908, 23.814335, 25.593332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822611, 24.165886, 25.693745>,  <27.039265, 23.516357, 25.258448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822611, 24.165886, 25.693745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.211096, 24.220901, 25.615948>,  <27.444187, 24.253910, 25.569269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.211096, 24.220901, 25.615948>,  <26.822611, 24.165886, 25.693745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211096, 24.220901, 25.615948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193551, 0.931576, -0.307741,
		0.138859, 0.336527, 0.931379,
		0.971214, 0.137537, -0.194493,
		27.502460, 24.262163, 25.557600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080875, 24.812241, 26.006712>,  <26.822611, 24.165886, 25.693745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080875, 24.812241, 26.006712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.301346, 24.714317, 25.687645>,  <27.433628, 24.655563, 25.496204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.301346, 24.714317, 25.687645>,  <27.080875, 24.812241, 26.006712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301346, 24.714317, 25.687645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017811, 0.952321, -0.304579,
		0.834199, 0.182084, 0.520537,
		0.551177, -0.244808, -0.797667,
		27.466700, 24.640875, 25.448345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495266, 25.331497, 25.991444>,  <27.080875, 24.812241, 26.006712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495266, 25.331497, 25.991444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.528538, 25.188698, 25.619286>,  <27.548500, 25.103018, 25.395990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.528538, 25.188698, 25.619286>,  <27.495266, 25.331497, 25.991444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528538, 25.188698, 25.619286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139277, 0.920303, -0.365575,
		0.986754, 0.159990, 0.026828,
		0.083178, -0.356996, -0.930395,
		27.553492, 25.081598, 25.340168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013449, 25.750360, 25.735918>,  <27.495266, 25.331497, 25.991444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013449, 25.750360, 25.735918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.783478, 25.616611, 25.437214>,  <27.645494, 25.536362, 25.257992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.783478, 25.616611, 25.437214>,  <28.013449, 25.750360, 25.735918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783478, 25.616611, 25.437214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087968, 0.932655, -0.349881,
		0.813462, -0.135465, -0.565623,
		-0.574927, -0.334372, -0.746762,
		27.611000, 25.516300, 25.213184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318890, 26.088394, 25.148525>,  <28.013449, 25.750360, 25.735918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318890, 26.088394, 25.148525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.983709, 25.943092, 24.985611>,  <27.782600, 25.855911, 24.887861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.983709, 25.943092, 24.985611>,  <28.318890, 26.088394, 25.148525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983709, 25.943092, 24.985611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128534, 0.856666, -0.499603,
		0.530392, -0.366293, -0.764535,
		-0.837952, -0.363254, -0.407287,
		27.732325, 25.834116, 24.863424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371075, 26.113329, 24.527405>,  <28.318890, 26.088394, 25.148525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371075, 26.113329, 24.527405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.973579, 26.105415, 24.571392>,  <27.735083, 26.100666, 24.597784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.973579, 26.105415, 24.571392>,  <28.371075, 26.113329, 24.527405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973579, 26.105415, 24.571392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074781, 0.849045, -0.523000,
		-0.083021, -0.527949, -0.845208,
		-0.993738, -0.019786, 0.109969,
		27.675459, 26.099480, 24.604383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017262, 26.312763, 23.845243>,  <28.371075, 26.113329, 24.527405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017262, 26.312763, 23.845243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.734026, 26.365719, 24.122684>,  <27.564085, 26.397493, 24.289148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.734026, 26.365719, 24.122684>,  <28.017262, 26.312763, 23.845243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734026, 26.365719, 24.122684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256781, 0.866740, -0.427580,
		-0.657781, -0.480868, -0.579733,
		-0.708087, 0.132390, 0.693603,
		27.521599, 26.405436, 24.330765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537066, 26.612041, 23.439003>,  <28.017262, 26.312763, 23.845243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537066, 26.612041, 23.439003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.446804, 26.704185, 23.817635>,  <27.392647, 26.759472, 24.044813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.446804, 26.704185, 23.817635>,  <27.537066, 26.612041, 23.439003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446804, 26.704185, 23.817635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060449, 0.966458, -0.249610,
		-0.972330, -0.113545, -0.204160,
		-0.225654, 0.230362, 0.946580,
		27.379108, 26.773294, 24.101608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.323875, 23.619591, 21.252304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.717823, 23.682156, 21.282146>,  <40.954193, 23.719694, 21.300053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.717823, 23.682156, 21.282146>,  <40.323875, 23.619591, 21.252304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717823, 23.682156, 21.282146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154364, 0.987478, -0.032534,
		-0.078760, 0.020526, 0.996682,
		0.984870, 0.156414, 0.074606,
		41.013283, 23.729080, 21.304527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396286, 24.123137, 21.809734>,  <40.323875, 23.619591, 21.252304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396286, 24.123137, 21.809734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.731468, 24.132454, 21.591640>,  <40.932579, 24.138044, 21.460785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.731468, 24.132454, 21.591640>,  <40.396286, 24.123137, 21.809734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731468, 24.132454, 21.591640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027120, 0.999632, 0.001025,
		0.545057, 0.013928, 0.838283,
		0.837960, 0.023294, -0.545234,
		40.982857, 24.139442, 21.428070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831001, 24.568804, 22.172642>,  <40.396286, 24.123137, 21.809734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831001, 24.568804, 22.172642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961750, 24.559410, 21.794731>,  <41.040199, 24.553774, 21.567986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961750, 24.559410, 21.794731>,  <40.831001, 24.568804, 22.172642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961750, 24.559410, 21.794731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091637, 0.994193, -0.056416,
		0.940615, 0.105017, 0.322822,
		0.326872, -0.023484, -0.944777,
		41.059811, 24.552364, 21.511297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328629, 25.130289, 22.165377>,  <40.831001, 24.568804, 22.172642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328629, 25.130289, 22.165377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.237663, 25.046703, 21.784931>,  <41.183083, 24.996552, 21.556664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.237663, 25.046703, 21.784931>,  <41.328629, 25.130289, 22.165377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237663, 25.046703, 21.784931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069998, 0.970670, -0.229998,
		0.971285, -0.118876, -0.206093,
		-0.227389, -0.208968, -0.951119,
		41.169437, 24.984015, 21.499598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862076, 25.528111, 21.744301>,  <41.328629, 25.130289, 22.165377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862076, 25.528111, 21.744301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543659, 25.445576, 21.516705>,  <41.352612, 25.396055, 21.380148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543659, 25.445576, 21.516705>,  <41.862076, 25.528111, 21.744301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543659, 25.445576, 21.516705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080572, 0.967854, -0.238258,
		0.599860, -0.143818, -0.787073,
		-0.796038, -0.206337, -0.568989,
		41.304848, 25.383675, 21.346008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941681, 25.828810, 21.051659>,  <41.862076, 25.528111, 21.744301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941681, 25.828810, 21.051659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.547451, 25.794682, 21.110130>,  <41.310913, 25.774204, 21.145214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.547451, 25.794682, 21.110130>,  <41.941681, 25.828810, 21.051659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547451, 25.794682, 21.110130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136838, 0.909965, -0.391458,
		-0.099619, -0.405812, -0.908511,
		-0.985572, -0.085322, 0.146181,
		41.251778, 25.769085, 21.153984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724255, 26.200544, 20.474743>,  <41.941681, 25.828810, 21.051659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724255, 26.200544, 20.474743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414955, 26.180077, 20.727558>,  <41.229378, 26.167797, 20.879248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.414955, 26.180077, 20.727558>,  <41.724255, 26.200544, 20.474743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414955, 26.180077, 20.727558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247845, 0.941837, -0.226970,
		-0.583663, -0.332152, -0.740954,
		-0.773247, -0.051168, 0.632038,
		41.182980, 26.164726, 20.917170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155579, 26.528927, 20.119022>,  <41.724255, 26.200544, 20.474743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155579, 26.528927, 20.119022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.082962, 26.521969, 20.512314>,  <41.039391, 26.517794, 20.748289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.082962, 26.521969, 20.512314>,  <41.155579, 26.528927, 20.119022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082962, 26.521969, 20.512314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207159, 0.978083, -0.020945,
		-0.961315, -0.207487, -0.181170,
		-0.181545, -0.017396, 0.983229,
		41.028500, 26.516750, 20.807281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721066, 27.160414, 20.177271>,  <41.155579, 26.528927, 20.119022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721066, 27.160414, 20.177271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.823761, 27.096828, 20.558598>,  <40.885380, 27.058678, 20.787394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.823761, 27.096828, 20.558598>,  <40.721066, 27.160414, 20.177271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823761, 27.096828, 20.558598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023513, 0.985062, 0.170587,
		-0.966194, -0.066212, 0.249168,
		0.256741, -0.158962, 0.953318,
		40.900784, 27.049139, 20.844593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329220, 27.649443, 20.531765>,  <40.721066, 27.160414, 20.177271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329220, 27.649443, 20.531765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.598194, 27.522984, 20.799461>,  <40.759579, 27.447109, 20.960079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.598194, 27.522984, 20.799461>,  <40.329220, 27.649443, 20.531765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598194, 27.522984, 20.799461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060223, 0.924560, 0.376247,
		-0.737703, -0.212698, 0.640745,
		0.672434, -0.316146, 0.669241,
		40.799923, 27.428139, 21.000233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105003, 27.959358, 21.189962>,  <40.329220, 27.649443, 20.531765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105003, 27.959358, 21.189962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.496281, 27.908443, 21.255600>,  <40.731049, 27.877895, 21.294983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.496281, 27.908443, 21.255600>,  <40.105003, 27.959358, 21.189962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496281, 27.908443, 21.255600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105218, 0.984991, 0.136829,
		-0.179048, -0.116580, 0.976909,
		0.978198, -0.127288, 0.164095,
		40.789742, 27.870256, 21.304829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228775, 28.243076, 21.779394>,  <40.105003, 27.959358, 21.189962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228775, 28.243076, 21.779394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585812, 28.246323, 21.599075>,  <40.800034, 28.248270, 21.490883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.585812, 28.246323, 21.599075>,  <40.228775, 28.243076, 21.779394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585812, 28.246323, 21.599075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006780, 0.999483, 0.031418,
		0.450820, -0.031100, 0.892073,
		0.892589, 0.008116, -0.450798,
		40.853588, 28.248756, 21.463837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712593, 28.592173, 22.305254>,  <40.228775, 28.243076, 21.779394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712593, 28.592173, 22.305254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.895275, 28.597839, 21.949451>,  <41.004883, 28.601240, 21.735970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.895275, 28.597839, 21.949451>,  <40.712593, 28.592173, 22.305254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895275, 28.597839, 21.949451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183653, 0.976834, 0.109854,
		0.870455, -0.213531, 0.443524,
		0.456706, 0.014168, -0.889505,
		41.032288, 28.602089, 21.682600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235916, 29.107752, 22.442173>,  <40.712593, 28.592173, 22.305254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235916, 29.107752, 22.442173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.217548, 29.087234, 22.043121>,  <41.206528, 29.074924, 21.803690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.217548, 29.087234, 22.043121>,  <41.235916, 29.107752, 22.442173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217548, 29.087234, 22.043121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049628, 0.997565, -0.049005,
		0.997712, 0.047261, -0.048350,
		-0.045916, -0.051292, -0.997628,
		41.203773, 29.071846, 21.743834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875530, 29.492256, 22.162655>,  <41.235916, 29.107752, 22.442173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875530, 29.492256, 22.162655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.568470, 29.489243, 21.906326>,  <41.384232, 29.487434, 21.752529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.568470, 29.489243, 21.906326>,  <41.875530, 29.492256, 22.162655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568470, 29.489243, 21.906326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107003, 0.984387, -0.139758,
		0.631867, -0.175856, -0.754863,
		-0.767655, -0.007536, -0.640819,
		41.338173, 29.486982, 21.714081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062836, 29.812441, 21.640779>,  <41.875530, 29.492256, 22.162655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062836, 29.812441, 21.640779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.680161, 29.838669, 21.527325>,  <41.450554, 29.854406, 21.459251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.680161, 29.838669, 21.527325>,  <42.062836, 29.812441, 21.640779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680161, 29.838669, 21.527325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007811, 0.968170, 0.250171,
		0.291012, 0.241551, -0.925724,
		-0.956688, 0.065572, -0.283636,
		41.393154, 29.858341, 21.442234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133415, 30.447708, 21.250492>,  <42.062836, 29.812441, 21.640779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133415, 30.447708, 21.250492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.759998, 30.371838, 21.372158>,  <41.535946, 30.326315, 21.445158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.759998, 30.371838, 21.372158>,  <42.133415, 30.447708, 21.250492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759998, 30.371838, 21.372158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076535, 0.934436, 0.347809,
		-0.350193, 0.301417, -0.886856,
		-0.933546, -0.189675, 0.304164,
		41.479935, 30.314936, 21.463408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734928, 31.078421, 21.147383>,  <42.133415, 30.447708, 21.250492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734928, 31.078421, 21.147383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.491425, 30.884872, 21.398869>,  <41.345322, 30.768744, 21.549761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.491425, 30.884872, 21.398869>,  <41.734928, 31.078421, 21.147383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491425, 30.884872, 21.398869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341144, 0.875121, 0.343196,
		-0.716265, -0.005560, -0.697806,
		-0.608757, -0.483872, 0.628715,
		41.308796, 30.739712, 21.587482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211777, 31.431358, 21.018194>,  <41.734928, 31.078421, 21.147383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211777, 31.431358, 21.018194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.177395, 31.234505, 21.364700>,  <41.156765, 31.116392, 21.572603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.177395, 31.234505, 21.364700>,  <41.211777, 31.431358, 21.018194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177395, 31.234505, 21.364700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353512, 0.827973, 0.435304,
		-0.931472, -0.268818, -0.245145,
		-0.085956, -0.492135, 0.866265,
		41.151608, 31.086864, 21.624580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531040, 31.495674, 21.267418>,  <41.211777, 31.431358, 21.018194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531040, 31.495674, 21.267418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750961, 31.427162, 21.594437>,  <40.882915, 31.386055, 21.790648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.750961, 31.427162, 21.594437>,  <40.531040, 31.495674, 21.267418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750961, 31.427162, 21.594437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301144, 0.872283, 0.385271,
		-0.779121, -0.458022, 0.428003,
		0.549803, -0.171282, 0.817545,
		40.915901, 31.375778, 21.839701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172756, 31.806751, 21.784451>,  <40.531040, 31.495674, 21.267418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172756, 31.806751, 21.784451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.531040, 31.762306, 21.956665>,  <40.746010, 31.735640, 22.059994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.531040, 31.762306, 21.956665>,  <40.172756, 31.806751, 21.784451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531040, 31.762306, 21.956665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081171, 0.911144, 0.404015,
		-0.437173, -0.396827, 0.807099,
		0.895707, -0.111111, 0.430539,
		40.799751, 31.728973, 22.085827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455597, 31.576363, 21.951143>,  <40.172756, 31.806751, 21.784451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455597, 31.576363, 21.951143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186531, 31.674812, 22.230267>,  <39.025089, 31.733883, 22.397741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.186531, 31.674812, 22.230267>,  <39.455597, 31.576363, 21.951143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186531, 31.674812, 22.230267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139184, -0.968312, 0.207365,
		0.726736, 0.042364, 0.685610,
		-0.672668, 0.246125, 0.697810,
		38.984730, 31.748650, 22.439610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634510, 31.172853, 22.577637>,  <39.455597, 31.576363, 21.951143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634510, 31.172853, 22.577637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.248363, 31.275005, 22.599014>,  <39.016678, 31.336296, 22.611841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.248363, 31.275005, 22.599014>,  <39.634510, 31.172853, 22.577637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248363, 31.275005, 22.599014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227334, -0.923813, 0.308042,
		0.128040, 0.285223, 0.949871,
		-0.965363, 0.255380, 0.053444,
		38.958755, 31.351620, 22.615047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332748, 31.119228, 23.296638>,  <39.634510, 31.172853, 22.577637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332748, 31.119228, 23.296638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019032, 31.084663, 23.050900>,  <38.830803, 31.063925, 22.903456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.019032, 31.084663, 23.050900>,  <39.332748, 31.119228, 23.296638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019032, 31.084663, 23.050900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261923, -0.851553, 0.454152,
		-0.562394, 0.517098, 0.645231,
		-0.784289, -0.086411, -0.614348,
		38.783745, 31.058741, 22.866594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925289, 30.697784, 23.667152>,  <39.332748, 31.119228, 23.296638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925289, 30.697784, 23.667152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.756115, 30.689274, 23.304787>,  <38.654610, 30.684168, 23.087368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.756115, 30.689274, 23.304787>,  <38.925289, 30.697784, 23.667152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756115, 30.689274, 23.304787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240514, -0.961231, 0.134862,
		-0.873660, 0.274922, 0.401417,
		-0.422931, -0.021277, -0.905912,
		38.629234, 30.682890, 23.033012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149155, 30.546839, 23.698416>,  <38.925289, 30.697784, 23.667152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149155, 30.546839, 23.698416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.260368, 30.438450, 23.329792>,  <38.327095, 30.373417, 23.108618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.260368, 30.438450, 23.329792>,  <38.149155, 30.546839, 23.698416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260368, 30.438450, 23.329792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037230, -0.961705, 0.271546,
		-0.959846, -0.041193, -0.277486,
		0.278045, -0.270973, -0.921555,
		38.343781, 30.357159, 23.053324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698452, 30.034473, 23.506624>,  <38.149155, 30.546839, 23.698416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698452, 30.034473, 23.506624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.023224, 29.996582, 23.276218>,  <38.218086, 29.973846, 23.137976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.023224, 29.996582, 23.276218>,  <37.698452, 30.034473, 23.506624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023224, 29.996582, 23.276218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038870, -0.975782, 0.215263,
		-0.582456, -0.197168, -0.788587,
		0.811932, -0.094729, -0.576015,
		38.266804, 29.968163, 23.103415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483082, 29.479248, 23.169792>,  <37.698452, 30.034473, 23.506624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483082, 29.479248, 23.169792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.881969, 29.508484, 23.163887>,  <38.121300, 29.526026, 23.160343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.881969, 29.508484, 23.163887>,  <37.483082, 29.479248, 23.169792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881969, 29.508484, 23.163887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074360, -0.989511, 0.123848,
		-0.005557, -0.124601, -0.992192,
		0.997216, 0.073091, -0.014764,
		38.181133, 29.530411, 23.159458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685257, 28.781681, 22.767618>,  <37.483082, 29.479248, 23.169792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685257, 28.781681, 22.767618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.011669, 28.899559, 22.966515>,  <38.207516, 28.970285, 23.085852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.011669, 28.899559, 22.966515>,  <37.685257, 28.781681, 22.767618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011669, 28.899559, 22.966515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296698, -0.951846, 0.077202,
		0.496047, 0.084530, -0.864172,
		0.816032, 0.294694, 0.497240,
		38.256477, 28.987967, 23.115686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110508, 28.315414, 22.658802>,  <37.685257, 28.781681, 22.767618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110508, 28.315414, 22.658802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.342251, 28.467983, 22.946930>,  <38.481297, 28.559525, 23.119806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.342251, 28.467983, 22.946930>,  <38.110508, 28.315414, 22.658802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342251, 28.467983, 22.946930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232521, -0.924369, 0.302450,
		0.781202, -0.007739, -0.624231,
		0.579360, 0.381421, 0.720319,
		38.516060, 28.582409, 23.163025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705185, 28.029222, 22.523302>,  <38.110508, 28.315414, 22.658802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705185, 28.029222, 22.523302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710735, 28.136776, 22.908531>,  <38.714066, 28.201309, 23.139669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710735, 28.136776, 22.908531>,  <38.705185, 28.029222, 22.523302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710735, 28.136776, 22.908531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174170, -0.949091, 0.262471,
		0.984618, 0.164095, -0.060006,
		0.013881, 0.268885, 0.963072,
		38.714901, 28.217442, 23.197453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272038, 27.661781, 22.845600>,  <38.705185, 28.029222, 22.523302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272038, 27.661781, 22.845600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.056896, 27.776966, 23.162533>,  <38.927811, 27.846077, 23.352692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.056896, 27.776966, 23.162533>,  <39.272038, 27.661781, 22.845600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056896, 27.776966, 23.162533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162889, -0.886646, 0.432811,
		0.827152, 0.361851, 0.429981,
		-0.537854, 0.287961, 0.792332,
		38.895538, 27.863354, 23.400232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624153, 27.427588, 23.364744>,  <39.272038, 27.661781, 22.845600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624153, 27.427588, 23.364744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258766, 27.475086, 23.520424>,  <39.039536, 27.503586, 23.613832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258766, 27.475086, 23.520424>,  <39.624153, 27.427588, 23.364744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258766, 27.475086, 23.520424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053189, -0.913419, 0.403531,
		0.403421, 0.389314, 0.828062,
		-0.913467, 0.118749, 0.389200,
		38.984726, 27.510712, 23.637184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657177, 27.242846, 24.085573>,  <39.624153, 27.427588, 23.364744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657177, 27.242846, 24.085573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265720, 27.208233, 24.010979>,  <39.030846, 27.187466, 23.966221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.265720, 27.208233, 24.010979>,  <39.657177, 27.242846, 24.085573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265720, 27.208233, 24.010979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013571, -0.932318, 0.361386,
		-0.205137, 0.351135, 0.913577,
		-0.978639, -0.086532, -0.186487,
		38.972130, 27.182274, 23.955032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417381, 26.865122, 24.565094>,  <39.657177, 27.242846, 24.085573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417381, 26.865122, 24.565094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115280, 26.825676, 24.305904>,  <38.934021, 26.802010, 24.150391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115280, 26.825676, 24.305904>,  <39.417381, 26.865122, 24.565094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115280, 26.825676, 24.305904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006220, -0.987494, 0.157533,
		-0.655408, 0.123008, 0.745192,
		-0.755250, -0.098613, -0.647976,
		38.888706, 26.796093, 24.111511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024448, 26.515318, 24.997799>,  <39.417381, 26.865122, 24.565094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024448, 26.515318, 24.997799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.907604, 26.462212, 24.618950>,  <38.837498, 26.430347, 24.391640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.907604, 26.462212, 24.618950>,  <39.024448, 26.515318, 24.997799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907604, 26.462212, 24.618950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052521, -0.986596, 0.154497,
		-0.954940, 0.094874, 0.281227,
		-0.292115, -0.132765, -0.947123,
		38.819969, 26.422382, 24.334812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615883, 25.937836, 25.057819>,  <39.024448, 26.515318, 24.997799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615883, 25.937836, 25.057819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701065, 25.964542, 24.667908>,  <38.752174, 25.980566, 24.433960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.701065, 25.964542, 24.667908>,  <38.615883, 25.937836, 25.057819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701065, 25.964542, 24.667908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319308, -0.947639, 0.004851,
		-0.923414, -0.312288, -0.223123,
		0.212955, 0.066765, -0.974778,
		38.764950, 25.984571, 24.375475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347069, 25.361576, 24.775621>,  <38.615883, 25.937836, 25.057819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347069, 25.361576, 24.775621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.605785, 25.475323, 24.492554>,  <38.761013, 25.543571, 24.322712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.605785, 25.475323, 24.492554>,  <38.347069, 25.361576, 24.775621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605785, 25.475323, 24.492554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395503, -0.918433, -0.007583,
		-0.652104, -0.274981, -0.706502,
		0.646790, 0.284369, -0.707670,
		38.799824, 25.560633, 24.280252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367188, 24.890337, 24.239292>,  <38.347069, 25.361576, 24.775621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367188, 24.890337, 24.239292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.725689, 25.066143, 24.215427>,  <38.940788, 25.171627, 24.201109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.725689, 25.066143, 24.215427>,  <38.367188, 24.890337, 24.239292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725689, 25.066143, 24.215427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438065, -0.898213, -0.036234,
		-0.069514, 0.006339, -0.997561,
		0.896252, 0.439516, -0.059661,
		38.994564, 25.197998, 24.197529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755497, 24.589293, 23.702286>,  <38.367188, 24.890337, 24.239292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755497, 24.589293, 23.702286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037586, 24.780636, 23.911602>,  <39.206841, 24.895443, 24.037191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.037586, 24.780636, 23.911602>,  <38.755497, 24.589293, 23.702286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037586, 24.780636, 23.911602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598172, -0.797663, -0.076964,
		0.380595, 0.367296, -0.848670,
		0.705221, 0.478359, 0.523293,
		39.249153, 24.924143, 24.068590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424248, 24.443546, 23.307407>,  <38.755497, 24.589293, 23.702286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424248, 24.443546, 23.307407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.512966, 24.539703, 23.685406>,  <39.566196, 24.597397, 23.912205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.512966, 24.539703, 23.685406>,  <39.424248, 24.443546, 23.307407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512966, 24.539703, 23.685406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746390, -0.665483, -0.005891,
		0.627463, 0.706643, -0.327026,
		0.221794, 0.240393, 0.944997,
		39.579506, 24.611822, 23.968904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137253, 24.459099, 23.286335>,  <39.424248, 24.443546, 23.307407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137253, 24.459099, 23.286335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.022644, 24.406075, 23.665878>,  <39.953880, 24.374260, 23.893604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.022644, 24.406075, 23.665878>,  <40.137253, 24.459099, 23.286335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022644, 24.406075, 23.665878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649769, -0.754692, 0.090773,
		0.704064, 0.642548, 0.302367,
		-0.286520, -0.132559, 0.948859,
		39.936687, 24.366306, 23.950537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.985846, 24.527338, 28.572063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.340607, 24.452744, 28.741119>,  <27.553463, 24.407988, 28.842552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.340607, 24.452744, 28.741119>,  <26.985846, 24.527338, 28.572063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340607, 24.452744, 28.741119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266200, -0.954038, 0.137654,
		0.377543, -0.234592, -0.895783,
		0.886904, -0.186487, 0.422639,
		27.606678, 24.396797, 28.867910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402893, 24.020950, 28.225321>,  <26.985846, 24.527338, 28.572063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402893, 24.020950, 28.225321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.470722, 24.024685, 28.619511>,  <27.511419, 24.026926, 28.856024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.470722, 24.024685, 28.619511>,  <27.402893, 24.020950, 28.225321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470722, 24.024685, 28.619511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353014, -0.933027, 0.069584,
		0.920122, -0.359686, -0.154922,
		0.169575, 0.009336, 0.985473,
		27.521595, 24.027485, 28.915154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809797, 23.512148, 28.280857>,  <27.402893, 24.020950, 28.225321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809797, 23.512148, 28.280857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.663700, 23.582520, 28.646511>,  <27.576042, 23.624743, 28.865904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.663700, 23.582520, 28.646511>,  <27.809797, 23.512148, 28.280857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663700, 23.582520, 28.646511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380832, -0.924286, 0.025719,
		0.849449, -0.338739, 0.404589,
		-0.365244, 0.175927, 0.914137,
		27.554127, 23.635298, 28.920752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885321, 22.893530, 28.594767>,  <27.809797, 23.512148, 28.280857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885321, 22.893530, 28.594767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.633141, 23.084877, 28.839291>,  <27.481833, 23.199686, 28.986006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.633141, 23.084877, 28.839291>,  <27.885321, 22.893530, 28.594767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633141, 23.084877, 28.839291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474411, -0.860788, 0.184328,
		0.614385, -0.173803, 0.769625,
		-0.630448, 0.478368, 0.611310,
		27.444006, 23.228388, 29.022684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775953, 22.357992, 29.177948>,  <27.885321, 22.893530, 28.594767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775953, 22.357992, 29.177948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.474400, 22.620247, 29.194912>,  <27.293468, 22.777599, 29.205090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.474400, 22.620247, 29.194912>,  <27.775953, 22.357992, 29.177948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474400, 22.620247, 29.194912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614210, -0.726221, 0.308787,
		0.233251, 0.206742, 0.950185,
		-0.753884, 0.655638, 0.042408,
		27.248234, 22.816938, 29.207634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583267, 22.280622, 29.857098>,  <27.775953, 22.357992, 29.177948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583267, 22.280622, 29.857098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.278955, 22.446003, 29.656990>,  <27.096369, 22.545231, 29.536926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.278955, 22.446003, 29.656990>,  <27.583267, 22.280622, 29.857098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278955, 22.446003, 29.656990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631998, -0.647279, 0.426155,
		-0.147619, 0.640380, 0.753739,
		-0.760781, 0.413453, -0.500270,
		27.050722, 22.570038, 29.506908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033604, 22.524029, 30.323250>,  <27.583267, 22.280622, 29.857098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033604, 22.524029, 30.323250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.842072, 22.450737, 29.979820>,  <26.727152, 22.406761, 29.773762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.842072, 22.450737, 29.979820>,  <27.033604, 22.524029, 30.323250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842072, 22.450737, 29.979820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665205, -0.562489, 0.491029,
		-0.572909, 0.806247, 0.147451,
		-0.478830, -0.183230, -0.858574,
		26.698423, 22.395767, 29.722248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280521, 22.514618, 30.462517>,  <27.033604, 22.524029, 30.323250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280521, 22.514618, 30.462517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.308104, 22.333580, 30.106899>,  <26.324652, 22.224957, 29.893528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.308104, 22.333580, 30.106899>,  <26.280521, 22.514618, 30.462517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308104, 22.333580, 30.106899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835187, -0.513593, 0.196685,
		-0.545627, 0.728957, -0.413416,
		0.068953, -0.452596, -0.889046,
		26.328789, 22.197802, 29.840185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612240, 22.621271, 30.115572>,  <26.280521, 22.514618, 30.462517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612240, 22.621271, 30.115572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.797785, 22.309753, 29.946667>,  <25.909113, 22.122843, 29.845324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.797785, 22.309753, 29.946667>,  <25.612240, 22.621271, 30.115572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797785, 22.309753, 29.946667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825914, -0.552585, 0.111872,
		-0.320462, 0.296859, -0.899544,
		0.463865, -0.778797, -0.422263,
		25.936945, 22.076115, 29.819988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020655, 22.260088, 29.754196>,  <25.612240, 22.621271, 30.115572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020655, 22.260088, 29.754196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.307627, 21.987667, 29.812798>,  <25.479811, 21.824215, 29.847958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.307627, 21.987667, 29.812798>,  <25.020655, 22.260088, 29.754196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307627, 21.987667, 29.812798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695857, -0.710518, 0.104631,
		0.032834, -0.177011, -0.983661,
		0.717429, -0.681052, 0.146503,
		25.522856, 21.783352, 29.856749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.783888, 21.564219, 29.296177>,  <25.020655, 22.260088, 29.754196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.783888, 21.564219, 29.296177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.082060, 21.467033, 29.544468>,  <25.260963, 21.408722, 29.693443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.082060, 21.467033, 29.544468>,  <24.783888, 21.564219, 29.296177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082060, 21.467033, 29.544468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482432, -0.839243, 0.250857,
		0.459993, -0.486456, -0.742810,
		0.745430, -0.242963, 0.620728,
		25.305689, 21.394144, 29.730686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085203, 20.799757, 29.161573>,  <24.783888, 21.564219, 29.296177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085203, 20.799757, 29.161573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.145588, 20.885830, 29.547508>,  <25.181820, 20.937473, 29.779068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.145588, 20.885830, 29.547508>,  <25.085203, 20.799757, 29.161573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145588, 20.885830, 29.547508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373452, -0.891278, 0.257209,
		0.915284, -0.399149, -0.054189,
		0.150962, 0.215182, 0.964835,
		25.190876, 20.950384, 29.836958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321304, 20.129137, 29.583332>,  <25.085203, 20.799757, 29.161573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321304, 20.129137, 29.583332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.147102, 20.390434, 29.831078>,  <25.042582, 20.547213, 29.979725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.147102, 20.390434, 29.831078>,  <25.321304, 20.129137, 29.583332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147102, 20.390434, 29.831078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283367, -0.752545, 0.594458,
		0.854422, 0.083383, 0.512845,
		-0.435506, 0.653241, 0.619363,
		25.016451, 20.586407, 30.016886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460661, 19.976597, 30.300987>,  <25.321304, 20.129137, 29.583332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460661, 19.976597, 30.300987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.095709, 20.137768, 30.272110>,  <24.876738, 20.234470, 30.254784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.095709, 20.137768, 30.272110>,  <25.460661, 19.976597, 30.300987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095709, 20.137768, 30.272110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314206, -0.576313, 0.754412,
		0.262367, 0.710994, 0.652419,
		-0.912380, 0.402927, -0.072193,
		24.821995, 20.258646, 30.250452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706009, 19.333786, 30.083565>,  <25.460661, 19.976597, 30.300987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706009, 19.333786, 30.083565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.939997, 19.013245, 30.133595>,  <26.080389, 18.820919, 30.163612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.939997, 19.013245, 30.133595>,  <25.706009, 19.333786, 30.083565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.939997, 19.013245, 30.133595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671847, 0.392379, -0.628220,
		0.454350, 0.451520, 0.767917,
		0.584968, -0.801354, 0.125074,
		26.115488, 18.772839, 30.171116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343443, 19.491114, 30.321407>,  <25.706009, 19.333786, 30.083565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343443, 19.491114, 30.321407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.379227, 19.156551, 30.105103>,  <26.400698, 18.955814, 29.975319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.379227, 19.156551, 30.105103>,  <26.343443, 19.491114, 30.321407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379227, 19.156551, 30.105103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686284, 0.445243, -0.575129,
		0.721812, -0.319666, 0.613842,
		0.089460, -0.836405, -0.540763,
		26.406065, 18.905630, 29.942873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000998, 19.556564, 30.187943>,  <26.343443, 19.491114, 30.321407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000998, 19.556564, 30.187943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.887743, 19.258121, 29.946892>,  <26.819790, 19.079056, 29.802261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.887743, 19.258121, 29.946892>,  <27.000998, 19.556564, 30.187943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887743, 19.258121, 29.946892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644878, 0.316991, -0.695449,
		0.709906, -0.585527, 0.391396,
		-0.283135, -0.746106, -0.602628,
		26.802803, 19.034290, 29.766104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595121, 19.247988, 29.850714>,  <27.000998, 19.556564, 30.187943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595121, 19.247988, 29.850714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.286169, 19.147846, 29.617218>,  <27.100798, 19.087761, 29.477121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.286169, 19.147846, 29.617218>,  <27.595121, 19.247988, 29.850714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286169, 19.147846, 29.617218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473805, 0.384973, -0.792026,
		0.423009, -0.888324, -0.178728,
		-0.772381, -0.250352, -0.583739,
		27.054455, 19.072741, 29.442097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828060, 18.749640, 29.296461>,  <27.595121, 19.247988, 29.850714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828060, 18.749640, 29.296461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.490973, 18.903618, 29.145920>,  <27.288719, 18.996004, 29.055595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.490973, 18.903618, 29.145920>,  <27.828060, 18.749640, 29.296461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490973, 18.903618, 29.145920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447804, 0.113193, -0.886938,
		-0.298821, -0.915972, -0.267770,
		-0.842720, 0.384944, -0.376351,
		27.238157, 19.019100, 29.033014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850901, 18.537802, 28.576853>,  <27.828060, 18.749640, 29.296461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850901, 18.537802, 28.576853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.580244, 18.831936, 28.591999>,  <27.417850, 19.008417, 28.601088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.580244, 18.831936, 28.591999>,  <27.850901, 18.537802, 28.576853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580244, 18.831936, 28.591999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297145, 0.319758, -0.899700,
		-0.673692, -0.597523, -0.434864,
		-0.676642, 0.735338, 0.037868,
		27.377251, 19.052538, 28.603359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727453, 18.721455, 27.880472>,  <27.850901, 18.537802, 28.576853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727453, 18.721455, 27.880472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.584587, 19.032307, 28.087742>,  <27.498867, 19.218817, 28.212105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.584587, 19.032307, 28.087742>,  <27.727453, 18.721455, 27.880472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584587, 19.032307, 28.087742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383796, 0.627874, -0.677107,
		-0.851548, -0.042965, -0.522513,
		-0.357164, 0.777128, 0.518175,
		27.477438, 19.265446, 28.243195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668255, 19.140022, 27.374569>,  <27.727453, 18.721455, 27.880472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668255, 19.140022, 27.374569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.705332, 19.382484, 27.690540>,  <27.727577, 19.527962, 27.880123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.705332, 19.382484, 27.690540>,  <27.668255, 19.140022, 27.374569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705332, 19.382484, 27.690540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397630, 0.704801, -0.587491,
		-0.912852, 0.368553, -0.175697,
		0.092690, 0.606155, 0.789927,
		27.733139, 19.564331, 27.927519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251755, 19.739071, 27.252298>,  <27.668255, 19.140022, 27.374569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251755, 19.739071, 27.252298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.499994, 19.870846, 27.536926>,  <27.648937, 19.949911, 27.707703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.499994, 19.870846, 27.536926>,  <27.251755, 19.739071, 27.252298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499994, 19.870846, 27.536926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018784, 0.900956, -0.433504,
		-0.783905, 0.282397, 0.552942,
		0.620597, 0.329440, 0.711568,
		27.686172, 19.969677, 27.750397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072832, 20.498260, 27.266308>,  <27.251755, 19.739071, 27.252298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072832, 20.498260, 27.266308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.422577, 20.483780, 27.459877>,  <27.632423, 20.475092, 27.576019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.422577, 20.483780, 27.459877>,  <27.072832, 20.498260, 27.266308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422577, 20.483780, 27.459877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172293, 0.955404, -0.239829,
		-0.453660, 0.293074, 0.841606,
		0.874361, -0.036202, 0.483924,
		27.684885, 20.472919, 27.605055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063562, 21.119841, 27.660395>,  <27.072832, 20.498260, 27.266308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063562, 21.119841, 27.660395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.441862, 21.000484, 27.608978>,  <27.668842, 20.928871, 27.578129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.441862, 21.000484, 27.608978>,  <27.063562, 21.119841, 27.660395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441862, 21.000484, 27.608978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253502, 0.925163, -0.282507,
		0.203217, 0.234595, 0.950614,
		0.945748, -0.298393, -0.128539,
		27.725586, 20.910967, 27.570417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494877, 21.647575, 28.031059>,  <27.063562, 21.119841, 27.660395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494877, 21.647575, 28.031059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.736475, 21.459904, 27.773357>,  <27.881433, 21.347301, 27.618736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.736475, 21.459904, 27.773357>,  <27.494877, 21.647575, 28.031059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736475, 21.459904, 27.773357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361352, 0.881709, -0.303337,
		0.710364, -0.049589, 0.702086,
		0.603993, -0.469180, -0.644254,
		27.917673, 21.319149, 27.580082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133852, 22.009342, 27.983412>,  <27.494877, 21.647575, 28.031059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133852, 22.009342, 27.983412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.127256, 21.795036, 27.645729>,  <28.123299, 21.666452, 27.443119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.127256, 21.795036, 27.645729>,  <28.133852, 22.009342, 27.983412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127256, 21.795036, 27.645729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347035, 0.788767, -0.507359,
		0.937707, -0.301335, 0.172925,
		-0.016488, -0.535765, -0.844206,
		28.122311, 21.634306, 27.392467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699398, 22.252993, 27.693274>,  <28.133852, 22.009342, 27.983412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699398, 22.252993, 27.693274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.491392, 22.095394, 27.390129>,  <28.366589, 22.000835, 27.208242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.491392, 22.095394, 27.390129>,  <28.699398, 22.252993, 27.693274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491392, 22.095394, 27.390129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105082, 0.851011, -0.514528,
		0.847653, -0.347211, -0.401159,
		-0.520040, -0.393987, -0.757848,
		28.335388, 21.977196, 27.162771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445536, 21.994612, 27.445711>,  <28.699398, 22.252993, 27.693274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445536, 21.994612, 27.445711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.759953, 22.110573, 27.664104>,  <29.948603, 22.180149, 27.795141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.759953, 22.110573, 27.664104>,  <29.445536, 21.994612, 27.445711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759953, 22.110573, 27.664104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199632, -0.716854, 0.668033,
		0.585054, -0.634096, -0.505602,
		0.786040, 0.289901, 0.545984,
		29.995764, 22.197542, 27.827900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769876, 21.370508, 27.686308>,  <29.445536, 21.994612, 27.445711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769876, 21.370508, 27.686308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940830, 21.642971, 27.924088>,  <30.043404, 21.806448, 28.066755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.940830, 21.642971, 27.924088>,  <29.769876, 21.370508, 27.686308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940830, 21.642971, 27.924088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064206, -0.678733, 0.731574,
		0.901787, -0.274497, -0.333814,
		0.427385, 0.681156, 0.594448,
		30.069046, 21.847319, 28.102423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446659, 21.037575, 27.931458>,  <29.769876, 21.370508, 27.686308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446659, 21.037575, 27.931458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302937, 21.322029, 28.173180>,  <30.216703, 21.492702, 28.318213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.302937, 21.322029, 28.173180>,  <30.446659, 21.037575, 27.931458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302937, 21.322029, 28.173180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175595, -0.584464, 0.792192,
		0.916551, 0.390752, 0.085129,
		-0.359305, 0.711136, 0.604305,
		30.195145, 21.535370, 28.354471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943277, 21.145521, 28.561996>,  <30.446659, 21.037575, 27.931458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943277, 21.145521, 28.561996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588243, 21.280937, 28.686951>,  <30.375223, 21.362186, 28.761923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588243, 21.280937, 28.686951>,  <30.943277, 21.145521, 28.561996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588243, 21.280937, 28.686951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136969, -0.453516, 0.880660,
		0.439813, 0.824446, 0.356163,
		-0.887583, 0.338542, 0.312386,
		30.321968, 21.382500, 28.780666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041479, 21.205597, 29.329250>,  <30.943277, 21.145521, 28.561996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041479, 21.205597, 29.329250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.646109, 21.200302, 29.268806>,  <30.408886, 21.197124, 29.232540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.646109, 21.200302, 29.268806>,  <31.041479, 21.205597, 29.329250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646109, 21.200302, 29.268806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103118, -0.671962, 0.733372,
		-0.111248, 0.740467, 0.662821,
		-0.988428, -0.013237, -0.151110,
		30.349581, 21.196331, 29.223473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853039, 21.082005, 29.935057>,  <31.041479, 21.205597, 29.329250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853039, 21.082005, 29.935057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.510326, 21.002331, 29.744793>,  <30.304699, 20.954527, 29.630634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.510326, 21.002331, 29.744793>,  <30.853039, 21.082005, 29.935057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510326, 21.002331, 29.744793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200604, -0.721002, 0.663260,
		-0.475065, 0.663687, 0.577783,
		-0.856780, -0.199186, -0.475661,
		30.253292, 20.942575, 29.602095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389893, 21.055723, 30.470093>,  <30.853039, 21.082005, 29.935057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389893, 21.055723, 30.470093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.185047, 20.897789, 30.164978>,  <30.062140, 20.803028, 29.981909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.185047, 20.897789, 30.164978>,  <30.389893, 21.055723, 30.470093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185047, 20.897789, 30.164978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490478, -0.594611, 0.637079,
		-0.705103, 0.700387, 0.110850,
		-0.512114, -0.394837, -0.762786,
		30.031412, 20.779339, 29.936142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923765, 21.595764, 30.912649>,  <30.389893, 21.055723, 30.470093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923765, 21.595764, 30.912649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.028318, 21.726910, 31.275787>,  <30.091051, 21.805597, 31.493670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.028318, 21.726910, 31.275787>,  <29.923765, 21.595764, 30.912649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028318, 21.726910, 31.275787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201287, 0.901350, -0.383473,
		-0.944013, 0.282972, 0.169604,
		0.261385, 0.327865, 0.907845,
		30.106733, 21.825270, 31.548141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382683, 22.142263, 31.110348>,  <29.923765, 21.595764, 30.912649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382683, 22.142263, 31.110348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.739954, 22.157490, 31.289585>,  <29.954317, 22.166626, 31.397127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.739954, 22.157490, 31.289585>,  <29.382683, 22.142263, 31.110348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739954, 22.157490, 31.289585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124773, 0.936315, -0.328247,
		-0.432051, 0.349093, 0.831544,
		0.893176, 0.038065, 0.448093,
		30.007906, 22.168909, 31.424013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342482, 22.772961, 31.475521>,  <29.382683, 22.142263, 31.110348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342482, 22.772961, 31.475521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.723890, 22.656193, 31.445637>,  <29.952736, 22.586132, 31.427706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.723890, 22.656193, 31.445637>,  <29.342482, 22.772961, 31.475521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723890, 22.656193, 31.445637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251815, 0.908130, -0.334497,
		0.165495, 0.300136, 0.939431,
		0.953520, -0.291920, -0.074712,
		30.009947, 22.568617, 31.423223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822588, 23.344673, 31.831179>,  <29.342482, 22.772961, 31.475521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822588, 23.344673, 31.831179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.032999, 23.128105, 31.568832>,  <30.159246, 22.998165, 31.411425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.032999, 23.128105, 31.568832>,  <29.822588, 23.344673, 31.831179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032999, 23.128105, 31.568832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430317, 0.834620, -0.343855,
		0.733568, -0.101353, 0.672016,
		0.526028, -0.541421, -0.655865,
		30.190807, 22.965679, 31.372072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162388, 23.849045, 31.542391>,  <29.822588, 23.344673, 31.831179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162388, 23.849045, 31.542391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.287888, 23.544819, 31.315022>,  <30.363188, 23.362284, 31.178600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.287888, 23.544819, 31.315022>,  <30.162388, 23.849045, 31.542391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287888, 23.544819, 31.315022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459861, 0.645473, -0.609830,
		0.830716, -0.070063, 0.552270,
		0.313748, -0.760563, -0.568424,
		30.382011, 23.316650, 31.144495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897406, 23.986656, 31.350615>,  <30.162388, 23.849045, 31.542391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897406, 23.986656, 31.350615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.740089, 23.749531, 31.069504>,  <30.645699, 23.607256, 30.900837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.740089, 23.749531, 31.069504>,  <30.897406, 23.986656, 31.350615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740089, 23.749531, 31.069504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319321, 0.628719, -0.709046,
		0.862181, -0.503273, -0.057972,
		-0.393292, -0.592815, -0.702775,
		30.622101, 23.571686, 30.858671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479727, 23.798693, 30.866676>,  <30.897406, 23.986656, 31.350615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479727, 23.798693, 30.866676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117981, 23.798611, 30.695972>,  <30.900934, 23.798561, 30.593550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117981, 23.798611, 30.695972>,  <31.479727, 23.798693, 30.866676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117981, 23.798611, 30.695972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315827, 0.672220, -0.669607,
		0.287015, -0.740351, -0.607867,
		-0.904365, -0.000206, -0.426760,
		30.846672, 23.798548, 30.567944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.377035, 22.178619, 33.330212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.440393, 22.061726, 32.952957>,  <25.478409, 21.991590, 32.726604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.440393, 22.061726, 32.952957>,  <25.377035, 22.178619, 33.330212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440393, 22.061726, 32.952957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458048, 0.867943, -0.192005,
		0.874701, -0.401590, 0.271337,
		0.158398, -0.292233, -0.943138,
		25.487913, 21.974056, 32.670017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049980, 22.319609, 33.225731>,  <25.377035, 22.178619, 33.330212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049980, 22.319609, 33.225731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.839924, 22.320747, 32.885326>,  <25.713890, 22.321430, 32.681084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.839924, 22.320747, 32.885326>,  <26.049980, 22.319609, 33.225731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839924, 22.320747, 32.885326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371709, 0.900329, -0.226363,
		0.765545, -0.435201, -0.473857,
		-0.525140, 0.002846, -0.851011,
		25.682383, 22.321602, 32.630024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529015, 22.572479, 32.703339>,  <26.049980, 22.319609, 33.225731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529015, 22.572479, 32.703339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.165804, 22.625084, 32.544243>,  <25.947878, 22.656647, 32.448788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.165804, 22.625084, 32.544243>,  <26.529015, 22.572479, 32.703339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165804, 22.625084, 32.544243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281693, 0.894423, -0.347356,
		0.310063, -0.427448, -0.849205,
		-0.908025, 0.131513, -0.397737,
		25.893396, 22.664537, 32.424923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670807, 22.686901, 32.028008>,  <26.529015, 22.572479, 32.703339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670807, 22.686901, 32.028008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.316492, 22.851871, 32.113129>,  <26.103903, 22.950853, 32.164200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.316492, 22.851871, 32.113129>,  <26.670807, 22.686901, 32.028008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316492, 22.851871, 32.113129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365208, 0.902392, -0.228719,
		-0.286359, -0.124881, -0.949949,
		-0.885789, 0.412425, 0.212801,
		26.050755, 22.975599, 32.176968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627884, 23.198488, 31.526197>,  <26.670807, 22.686901, 32.028008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627884, 23.198488, 31.526197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.368587, 23.306866, 31.810837>,  <26.213009, 23.371891, 31.981621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.368587, 23.306866, 31.810837>,  <26.627884, 23.198488, 31.526197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368587, 23.306866, 31.810837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253289, 0.958059, -0.134046,
		-0.718072, 0.093345, -0.689681,
		-0.648242, 0.270943, 0.711599,
		26.174114, 23.388149, 32.024315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305096, 23.765028, 31.257450>,  <26.627884, 23.198488, 31.526197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305096, 23.765028, 31.257450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.250055, 23.805790, 31.651543>,  <26.217031, 23.830246, 31.887999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.250055, 23.805790, 31.651543>,  <26.305096, 23.765028, 31.257450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250055, 23.805790, 31.651543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159340, 0.984016, -0.079524,
		-0.977587, 0.146044, -0.151639,
		-0.137601, 0.101903, 0.985232,
		26.208775, 23.836361, 31.947113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861357, 24.308023, 31.377110>,  <26.305096, 23.765028, 31.257450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861357, 24.308023, 31.377110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.039755, 24.283409, 31.734276>,  <26.146793, 24.268641, 31.948576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.039755, 24.283409, 31.734276>,  <25.861357, 24.308023, 31.377110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039755, 24.283409, 31.734276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029973, 0.996047, 0.083613,
		-0.894532, -0.064055, 0.442390,
		0.445997, -0.061534, 0.892917,
		26.173553, 24.264948, 32.002151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592283, 24.934027, 31.721186>,  <25.861357, 24.308023, 31.377110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592283, 24.934027, 31.721186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.903042, 24.815735, 31.943527>,  <26.089497, 24.744759, 32.076931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.903042, 24.815735, 31.943527>,  <25.592283, 24.934027, 31.721186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903042, 24.815735, 31.943527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217748, 0.954552, 0.203512,
		-0.590777, -0.037072, 0.805983,
		0.776897, -0.295731, 0.555855,
		26.136110, 24.727016, 32.110283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.549850, 25.428200, 32.289055>,  <25.592283, 24.934027, 31.721186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.549850, 25.428200, 32.289055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.918739, 25.273659, 32.295208>,  <26.140074, 25.180935, 32.298901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.918739, 25.273659, 32.295208>,  <25.549850, 25.428200, 32.289055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918739, 25.273659, 32.295208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370175, 0.893704, 0.253504,
		-0.111691, -0.228092, 0.967212,
		0.922223, -0.386352, 0.015385,
		26.195406, 25.157753, 32.299824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003731, 25.866354, 32.717243>,  <25.549850, 25.428200, 32.289055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003731, 25.866354, 32.717243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.263828, 25.686630, 32.472195>,  <26.419886, 25.578796, 32.325165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.263828, 25.686630, 32.472195>,  <26.003731, 25.866354, 32.717243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263828, 25.686630, 32.472195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498226, 0.860953, -0.102622,
		0.573547, -0.238495, 0.783686,
		0.650242, -0.449311, -0.612622,
		26.458900, 25.551838, 32.288406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695654, 26.027067, 33.011841>,  <26.003731, 25.866354, 32.717243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695654, 26.027067, 33.011841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.757500, 25.941582, 32.626007>,  <26.794607, 25.890291, 32.394508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.757500, 25.941582, 32.626007>,  <26.695654, 26.027067, 33.011841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757500, 25.941582, 32.626007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564327, 0.820484, -0.091329,
		0.810943, -0.530220, 0.247461,
		0.154614, -0.213711, -0.964584,
		26.803885, 25.877468, 32.336632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434540, 26.231516, 32.920773>,  <26.695654, 26.027067, 33.011841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434540, 26.231516, 32.920773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.272381, 26.202579, 32.556263>,  <27.175085, 26.185219, 32.337559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.272381, 26.202579, 32.556263>,  <27.434540, 26.231516, 32.920773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272381, 26.202579, 32.556263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498295, 0.818257, -0.286631,
		0.766391, -0.570283, -0.295674,
		-0.405398, -0.072339, -0.911273,
		27.150761, 26.180878, 32.282883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186794, 25.866102, 33.000290>,  <27.434540, 26.231516, 32.920773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186794, 25.866102, 33.000290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.556944, 25.752975, 33.101238>,  <28.779034, 25.685099, 33.161808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.556944, 25.752975, 33.101238>,  <28.186794, 25.866102, 33.000290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556944, 25.752975, 33.101238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367830, -0.830806, 0.417687,
		0.091544, -0.479349, -0.872837,
		0.925376, -0.282819, 0.252375,
		28.834557, 25.668129, 33.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126007, 25.192183, 32.847034>,  <28.186794, 25.866102, 33.000290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126007, 25.192183, 32.847034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.424837, 25.226612, 33.110691>,  <28.604136, 25.247271, 33.268887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.424837, 25.226612, 33.110691>,  <28.126007, 25.192183, 32.847034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424837, 25.226612, 33.110691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142952, -0.947578, 0.285763,
		0.649188, -0.307712, -0.695607,
		0.747074, 0.086075, 0.659144,
		28.648960, 25.252434, 33.308434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638044, 24.707350, 32.720707>,  <28.126007, 25.192183, 32.847034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638044, 24.707350, 32.720707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.686071, 24.797806, 33.107372>,  <28.714888, 24.852079, 33.339371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.686071, 24.797806, 33.107372>,  <28.638044, 24.707350, 32.720707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686071, 24.797806, 33.107372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113820, -0.964155, 0.239689,
		0.986220, -0.138805, -0.090022,
		0.120065, 0.226140, 0.966667,
		28.722092, 24.865648, 33.397373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082518, 24.246767, 32.936516>,  <28.638044, 24.707350, 32.720707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082518, 24.246767, 32.936516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.907776, 24.380722, 33.270462>,  <28.802931, 24.461096, 33.470833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.907776, 24.380722, 33.270462>,  <29.082518, 24.246767, 32.936516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907776, 24.380722, 33.270462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018372, -0.931244, 0.363933,
		0.899345, 0.143647, 0.412970,
		-0.436854, 0.334888, 0.834870,
		28.776720, 24.481188, 33.520924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486460, 24.054590, 33.465401>,  <29.082518, 24.246767, 32.936516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486460, 24.054590, 33.465401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.127167, 24.112686, 33.631332>,  <28.911591, 24.147543, 33.730892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.127167, 24.112686, 33.631332>,  <29.486460, 24.054590, 33.465401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127167, 24.112686, 33.631332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058080, -0.896325, 0.439576,
		0.435666, 0.418935, 0.796673,
		-0.898232, 0.145238, 0.414831,
		28.857697, 24.156258, 33.755783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523514, 23.637688, 34.044800>,  <29.486460, 24.054590, 33.465401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523514, 23.637688, 34.044800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.131525, 23.708801, 34.008923>,  <28.896332, 23.751469, 33.987396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.131525, 23.708801, 34.008923>,  <29.523514, 23.637688, 34.044800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131525, 23.708801, 34.008923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197315, -0.927605, 0.317201,
		-0.026807, 0.328547, 0.944107,
		-0.979974, 0.177783, -0.089694,
		28.837532, 23.762136, 33.982014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216280, 23.294472, 34.642265>,  <29.523514, 23.637688, 34.044800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216280, 23.294472, 34.642265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.899582, 23.355789, 34.405743>,  <28.709562, 23.392580, 34.263828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.899582, 23.355789, 34.405743>,  <29.216280, 23.294472, 34.642265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899582, 23.355789, 34.405743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420752, -0.838611, 0.345976,
		-0.442837, 0.522717, 0.728466,
		-0.791747, 0.153292, -0.591302,
		28.662058, 23.401777, 34.228352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601606, 23.138937, 35.051208>,  <29.216280, 23.294472, 34.642265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601606, 23.138937, 35.051208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.471056, 23.126167, 34.673328>,  <28.392725, 23.118505, 34.446602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.471056, 23.126167, 34.673328>,  <28.601606, 23.138937, 35.051208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471056, 23.126167, 34.673328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446214, -0.875857, 0.183758,
		-0.833289, 0.481513, 0.271615,
		-0.326378, -0.031925, -0.944700,
		28.373142, 23.116590, 34.389919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918957, 23.060308, 35.060272>,  <28.601606, 23.138937, 35.051208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918957, 23.060308, 35.060272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.044336, 22.887039, 34.722252>,  <28.119564, 22.783077, 34.519440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.044336, 22.887039, 34.722252>,  <27.918957, 23.060308, 35.060272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044336, 22.887039, 34.722252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512704, -0.826244, 0.233357,
		-0.799303, 0.360115, -0.481075,
		0.313450, -0.433172, -0.845051,
		28.138371, 22.757088, 34.468735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438253, 22.505535, 35.022217>,  <27.918957, 23.060308, 35.060272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438253, 22.505535, 35.022217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.656879, 22.400024, 34.704300>,  <27.788055, 22.336718, 34.513550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.656879, 22.400024, 34.704300>,  <27.438253, 22.505535, 35.022217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656879, 22.400024, 34.704300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358899, -0.931297, 0.062269,
		-0.756608, 0.251215, -0.603684,
		0.546567, -0.263775, -0.794788,
		27.820848, 22.320892, 34.465862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996666, 22.108541, 34.441257>,  <27.438253, 22.505535, 35.022217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996666, 22.108541, 34.441257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.386356, 22.024956, 34.407280>,  <27.620171, 21.974804, 34.386894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.386356, 22.024956, 34.407280>,  <26.996666, 22.108541, 34.441257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386356, 22.024956, 34.407280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211198, -0.977276, -0.018100,
		-0.079232, 0.035573, -0.996221,
		0.974227, -0.208966, -0.084944,
		27.678625, 21.962265, 34.381798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168489, 21.675667, 33.857170>,  <26.996666, 22.108541, 34.441257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168489, 21.675667, 33.857170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.475361, 21.632011, 34.110004>,  <27.659483, 21.605818, 34.261703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.475361, 21.632011, 34.110004>,  <27.168489, 21.675667, 33.857170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475361, 21.632011, 34.110004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145986, -0.989266, 0.006376,
		0.624603, -0.097167, -0.774874,
		0.767176, -0.109138, 0.632083,
		27.705513, 21.599270, 34.299629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631153, 21.159742, 33.555199>,  <27.168489, 21.675667, 33.857170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631153, 21.159742, 33.555199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.719379, 21.168800, 33.945244>,  <27.772316, 21.174236, 34.179272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.719379, 21.168800, 33.945244>,  <27.631153, 21.159742, 33.555199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719379, 21.168800, 33.945244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073273, -0.997290, 0.006587,
		0.972615, 0.069996, -0.221630,
		0.220568, 0.022646, 0.975109,
		27.785549, 21.175594, 34.237778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320705, 20.783472, 33.584740>,  <27.631153, 21.159742, 33.555199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320705, 20.783472, 33.584740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.112326, 20.783485, 33.926174>,  <27.987297, 20.783493, 34.131035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.112326, 20.783485, 33.926174>,  <28.320705, 20.783472, 33.584740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112326, 20.783485, 33.926174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259429, -0.952689, 0.158370,
		0.813209, 0.303948, 0.496292,
		-0.520949, 0.000036, 0.853588,
		27.956041, 20.783497, 34.182251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919744, 20.737017, 33.902100>,  <28.320705, 20.783472, 33.584740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919744, 20.737017, 33.902100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.163004, 20.435112, 33.803722>,  <29.308960, 20.253969, 33.744694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.163004, 20.435112, 33.803722>,  <28.919744, 20.737017, 33.902100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163004, 20.435112, 33.803722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547242, 0.623050, -0.558870,
		0.575051, 0.205283, 0.791944,
		0.608147, -0.754763, -0.245946,
		29.345448, 20.208683, 33.729939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593006, 20.966791, 33.982895>,  <28.919744, 20.737017, 33.902100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593006, 20.966791, 33.982895> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.577662, 20.668583, 33.716743>,  <29.568455, 20.489658, 33.557053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.577662, 20.668583, 33.716743>,  <29.593006, 20.966791, 33.982895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577662, 20.668583, 33.716743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489328, 0.566553, -0.663005,
		0.871256, -0.351020, 0.343071,
		-0.038360, -0.745522, -0.665377,
		29.566153, 20.444927, 33.517132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386374, 20.946205, 33.729214>,  <29.593006, 20.966791, 33.982895>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386374, 20.946205, 33.729214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.126011, 20.795197, 33.465759>,  <29.969793, 20.704592, 33.307686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.126011, 20.795197, 33.465759>,  <30.386374, 20.946205, 33.729214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126011, 20.795197, 33.465759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396997, 0.570230, -0.719188,
		0.647082, -0.729599, -0.221291,
		-0.650905, -0.377522, -0.658634,
		29.930738, 20.681940, 33.268169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734724, 20.883341, 33.124954>,  <30.386374, 20.946205, 33.729214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734724, 20.883341, 33.124954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.357252, 20.830696, 33.003532>,  <30.130770, 20.799109, 32.930679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.357252, 20.830696, 33.003532>,  <30.734724, 20.883341, 33.124954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357252, 20.830696, 33.003532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141320, 0.669233, -0.729490,
		0.299159, -0.731304, -0.612943,
		-0.943681, -0.131612, -0.303555,
		30.074148, 20.791212, 32.912464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752249, 20.773806, 32.421818>,  <30.734724, 20.883341, 33.124954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752249, 20.773806, 32.421818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.373705, 20.891239, 32.475796>,  <30.146578, 20.961699, 32.508183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.373705, 20.891239, 32.475796>,  <30.752249, 20.773806, 32.421818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373705, 20.891239, 32.475796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041491, 0.524591, -0.850343,
		-0.320435, -0.799133, -0.508633,
		-0.946361, 0.293584, 0.134940,
		30.089796, 20.979315, 32.516277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248581, 20.575542, 31.793007>,  <30.752249, 20.773806, 32.421818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248581, 20.575542, 31.793007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.139565, 20.900444, 31.999294>,  <30.074154, 21.095385, 32.123066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.139565, 20.900444, 31.999294>,  <30.248581, 20.575542, 31.793007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139565, 20.900444, 31.999294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073676, 0.552054, -0.830547,
		-0.959319, -0.188364, -0.210302,
		-0.272543, 0.812254, 0.515718,
		30.057802, 21.144119, 32.154011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014463, 21.009935, 31.296551>,  <30.248581, 20.575542, 31.793007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014463, 21.009935, 31.296551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.056545, 21.256756, 31.608494>,  <30.081795, 21.404848, 31.795660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.056545, 21.256756, 31.608494>,  <30.014463, 21.009935, 31.296551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056545, 21.256756, 31.608494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236530, 0.746177, -0.622312,
		-0.965912, 0.249930, -0.067450,
		0.105205, 0.617053, 0.779858,
		30.088106, 21.441872, 31.842451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628405, 20.918701, 30.671738>,  <30.014463, 21.009935, 31.296551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628405, 20.918701, 30.671738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683619, 20.681534, 30.354401>,  <29.716747, 20.539234, 30.163998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.683619, 20.681534, 30.354401>,  <29.628405, 20.918701, 30.671738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683619, 20.681534, 30.354401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557652, -0.708505, 0.432487,
		-0.818517, 0.382713, -0.428440,
		0.138033, -0.592918, -0.793344,
		29.725029, 20.503658, 30.116398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981791, 20.716934, 30.335093>,  <29.628405, 20.918701, 30.671738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981791, 20.716934, 30.335093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.247860, 20.441124, 30.220482>,  <29.407501, 20.275639, 30.151716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.247860, 20.441124, 30.220482>,  <28.981791, 20.716934, 30.335093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247860, 20.441124, 30.220482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532843, -0.707157, 0.464765,
		-0.523086, -0.156478, -0.837792,
		0.665176, -0.689524, -0.286526,
		29.447412, 20.234266, 30.134523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658119, 20.060520, 30.200874>,  <28.981791, 20.716934, 30.335093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658119, 20.060520, 30.200874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.037855, 19.943073, 30.245674>,  <29.265696, 19.872604, 30.272554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.037855, 19.943073, 30.245674>,  <28.658119, 20.060520, 30.200874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037855, 19.943073, 30.245674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306356, -0.785308, 0.537994,
		-0.070010, -0.545051, -0.835475,
		0.949339, -0.293618, 0.112000,
		29.322657, 19.854988, 30.279274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698080, 19.266811, 30.043056>,  <28.658119, 20.060520, 30.200874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698080, 19.266811, 30.043056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.006567, 19.378841, 30.271717>,  <29.191658, 19.446060, 30.408913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.006567, 19.378841, 30.271717>,  <28.698080, 19.266811, 30.043056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006567, 19.378841, 30.271717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200639, -0.745293, 0.635832,
		0.604128, -0.605059, -0.518588,
		0.771216, 0.280075, 0.571651,
		29.237932, 19.462864, 30.443213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999100, 18.738092, 30.265160>,  <28.698080, 19.266811, 30.043056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999100, 18.738092, 30.265160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192038, 18.948402, 30.545418>,  <29.307800, 19.074589, 30.713573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.192038, 18.948402, 30.545418>,  <28.999100, 18.738092, 30.265160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192038, 18.948402, 30.545418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112355, -0.756103, 0.644736,
		0.868747, -0.389705, -0.305627,
		0.482343, 0.525774, 0.700648,
		29.336740, 19.106134, 30.755611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610682, 18.360216, 30.509750>,  <28.999100, 18.738092, 30.265160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610682, 18.360216, 30.509750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.468321, 18.613651, 30.784531>,  <29.382904, 18.765713, 30.949398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.468321, 18.613651, 30.784531>,  <29.610682, 18.360216, 30.509750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468321, 18.613651, 30.784531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111423, -0.758605, 0.641953,
		0.927857, 0.151930, 0.340585,
		-0.355902, 0.633589, 0.686949,
		29.361551, 18.803728, 30.990616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906824, 18.048409, 31.148464>,  <29.610682, 18.360216, 30.509750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906824, 18.048409, 31.148464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.612545, 18.298622, 31.252350>,  <29.435978, 18.448751, 31.314682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.612545, 18.298622, 31.252350>,  <29.906824, 18.048409, 31.148464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612545, 18.298622, 31.252350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311370, -0.652891, 0.690494,
		0.601495, 0.427128, 0.675104,
		-0.735699, 0.625536, 0.259716,
		29.391836, 18.486282, 31.330265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950821, 18.019348, 31.872856>,  <29.906824, 18.048409, 31.148464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950821, 18.019348, 31.872856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.578941, 18.143227, 31.793110>,  <29.355814, 18.217554, 31.745262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.578941, 18.143227, 31.793110>,  <29.950821, 18.019348, 31.872856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578941, 18.143227, 31.793110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346713, -0.553216, 0.757458,
		0.124292, 0.773330, 0.621701,
		-0.929700, 0.309697, -0.199364,
		29.300032, 18.236135, 31.733301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624256, 18.179287, 32.494324>,  <29.950821, 18.019348, 31.872856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624256, 18.179287, 32.494324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.317059, 18.112309, 32.247051>,  <29.132740, 18.072121, 32.098690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.317059, 18.112309, 32.247051>,  <29.624256, 18.179287, 32.494324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317059, 18.112309, 32.247051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340985, -0.710139, 0.615981,
		-0.542137, 0.683860, 0.488286,
		-0.767995, -0.167448, -0.618178,
		29.086660, 18.062075, 32.061596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.126347, 31.876453, 25.358395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808027, 31.749714, 25.151974>,  <30.617035, 31.673670, 25.028122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808027, 31.749714, 25.151974>,  <31.126347, 31.876453, 25.358395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808027, 31.749714, 25.151974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185223, -0.938708, 0.290723,
		-0.576537, 0.135773, 0.805712,
		-0.795800, -0.316849, -0.516051,
		30.569286, 31.654659, 24.997158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824924, 31.401730, 25.768608>,  <31.126347, 31.876453, 25.358395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824924, 31.401730, 25.768608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693506, 31.323368, 25.399029>,  <30.614655, 31.276352, 25.177280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693506, 31.323368, 25.399029>,  <30.824924, 31.401730, 25.768608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693506, 31.323368, 25.399029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135757, -0.977890, 0.159067,
		-0.934680, -0.073171, 0.347878,
		-0.328547, -0.195903, -0.923947,
		30.594942, 31.264597, 25.121845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411892, 30.904207, 25.817291>,  <30.824924, 31.401730, 25.768608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411892, 30.904207, 25.817291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488758, 30.881187, 25.425423>,  <30.534878, 30.867374, 25.190302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488758, 30.881187, 25.425423>,  <30.411892, 30.904207, 25.817291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488758, 30.881187, 25.425423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003519, -0.998313, 0.057955,
		-0.981356, -0.007689, -0.192045,
		0.192166, -0.057551, -0.979674,
		30.546408, 30.863922, 25.131521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142427, 30.195826, 25.568806>,  <30.411892, 30.904207, 25.817291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142427, 30.195826, 25.568806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364622, 30.309853, 25.256351>,  <30.497938, 30.378269, 25.068878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364622, 30.309853, 25.256351>,  <30.142427, 30.195826, 25.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364622, 30.309853, 25.256351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033772, -0.946358, -0.321349,
		-0.830840, 0.152124, -0.535315,
		0.555485, 0.285069, -0.781135,
		30.531267, 30.395372, 25.022011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801743, 30.052164, 24.950356>,  <30.142427, 30.195826, 25.568806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801743, 30.052164, 24.950356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186596, 30.050549, 24.841335>,  <30.417507, 30.049580, 24.775923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186596, 30.050549, 24.841335>,  <29.801743, 30.052164, 24.950356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186596, 30.050549, 24.841335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105490, -0.927496, -0.358640,
		-0.251339, 0.373811, -0.892801,
		0.962133, -0.004041, -0.272549,
		30.475235, 30.049335, 24.759571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938480, 29.502323, 24.475643>,  <29.801743, 30.052164, 24.950356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938480, 29.502323, 24.475643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317671, 29.584282, 24.573097>,  <30.545185, 29.633457, 24.631571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317671, 29.584282, 24.573097>,  <29.938480, 29.502323, 24.475643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317671, 29.584282, 24.573097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265863, -0.930516, -0.251906,
		0.175094, 0.303575, -0.936581,
		0.947976, 0.204895, 0.243637,
		30.602064, 29.645750, 24.646189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380833, 29.379980, 23.955376>,  <29.938480, 29.502323, 24.475643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380833, 29.379980, 23.955376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596163, 29.336906, 24.289707>,  <30.725361, 29.311062, 24.490305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596163, 29.336906, 24.289707>,  <30.380833, 29.379980, 23.955376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596163, 29.336906, 24.289707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155756, -0.962002, -0.224258,
		0.828217, 0.250910, -0.501100,
		0.538327, -0.107685, 0.835828,
		30.757662, 29.304602, 24.540455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726294, 28.768223, 23.740459>,  <30.380833, 29.379980, 23.955376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726294, 28.768223, 23.740459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816763, 28.805622, 24.128296>,  <30.871044, 28.828062, 24.360998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816763, 28.805622, 24.128296>,  <30.726294, 28.768223, 23.740459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816763, 28.805622, 24.128296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330434, -0.943726, 0.013926,
		0.916329, 0.317235, -0.244340,
		0.226173, 0.093499, 0.969589,
		30.884615, 28.833672, 24.419172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324707, 28.338776, 23.862112>,  <30.726294, 28.768223, 23.740459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324707, 28.338776, 23.862112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163282, 28.374146, 24.226379>,  <31.066427, 28.395367, 24.444941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163282, 28.374146, 24.226379>,  <31.324707, 28.338776, 23.862112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163282, 28.374146, 24.226379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389722, -0.883900, 0.258528,
		0.827802, 0.459240, 0.322246,
		-0.403560, 0.088424, 0.910670,
		31.042215, 28.400673, 24.499580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853189, 28.144651, 24.353474>,  <31.324707, 28.338776, 23.862112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853189, 28.144651, 24.353474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514875, 28.102894, 24.562759>,  <31.311888, 28.077839, 24.688330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514875, 28.102894, 24.562759>,  <31.853189, 28.144651, 24.353474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514875, 28.102894, 24.562759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417868, -0.739344, 0.527974,
		0.331717, 0.665186, 0.668948,
		-0.845784, -0.104394, 0.523213,
		31.261141, 28.071575, 24.719723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091106, 28.199150, 25.092714>,  <31.853189, 28.144651, 24.353474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091106, 28.199150, 25.092714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743807, 28.002842, 25.063629>,  <31.535427, 27.885057, 25.046179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743807, 28.002842, 25.063629>,  <32.091106, 28.199150, 25.092714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743807, 28.002842, 25.063629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393635, -0.770649, 0.501151,
		-0.301986, 0.406501, 0.862300,
		-0.868249, -0.490772, -0.072713,
		31.483332, 27.855610, 25.041815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021446, 27.807247, 25.670067>,  <32.091106, 28.199150, 25.092714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021446, 27.807247, 25.670067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734241, 27.617153, 25.466652>,  <31.561918, 27.503098, 25.344603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734241, 27.617153, 25.466652>,  <32.021446, 27.807247, 25.670067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734241, 27.617153, 25.466652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134983, -0.811828, 0.568079,
		-0.682816, 0.339244, 0.647052,
		-0.718013, -0.475235, -0.508537,
		31.518837, 27.474583, 25.314091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766928, 28.337662, 26.332943>,  <32.021446, 27.807247, 25.670067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766928, 28.337662, 26.332943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934717, 28.507515, 26.653873>,  <32.035389, 28.609426, 26.846432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934717, 28.507515, 26.653873>,  <31.766928, 28.337662, 26.332943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934717, 28.507515, 26.653873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337517, 0.747525, -0.572091,
		-0.842689, 0.510776, 0.170245,
		0.419473, 0.424635, 0.802327,
		32.060558, 28.634905, 26.894571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627443, 29.042606, 26.360476>,  <31.766928, 28.337662, 26.332943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627443, 29.042606, 26.360476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966105, 29.035404, 26.573212>,  <32.169300, 29.031082, 26.700853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966105, 29.035404, 26.573212>,  <31.627443, 29.042606, 26.360476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966105, 29.035404, 26.573212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268814, 0.877007, -0.398243,
		-0.459255, 0.480139, 0.747362,
		0.846654, -0.018006, 0.531838,
		32.220100, 29.030003, 26.732763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671017, 29.770819, 26.449520>,  <31.627443, 29.042606, 26.360476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671017, 29.770819, 26.449520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024940, 29.620174, 26.559269>,  <32.237293, 29.529789, 26.625118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024940, 29.620174, 26.559269>,  <31.671017, 29.770819, 26.449520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024940, 29.620174, 26.559269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454045, 0.829153, -0.326111,
		-0.104680, 0.413123, 0.904639,
		0.884808, -0.376609, 0.274372,
		32.290382, 29.507191, 26.641581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964853, 30.306532, 26.904707>,  <31.671017, 29.770819, 26.449520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964853, 30.306532, 26.904707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263748, 30.070049, 26.783310>,  <32.443085, 29.928160, 26.710472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263748, 30.070049, 26.783310>,  <31.964853, 30.306532, 26.904707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263748, 30.070049, 26.783310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533832, 0.805995, -0.255725,
		0.395800, 0.029074, 0.917876,
		0.747239, -0.591208, -0.303492,
		32.487919, 29.892687, 26.692263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589294, 30.564367, 27.119684>,  <31.964853, 30.306532, 26.904707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589294, 30.564367, 27.119684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707058, 30.351673, 26.802048>,  <32.777718, 30.224056, 26.611465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707058, 30.351673, 26.802048>,  <32.589294, 30.564367, 27.119684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707058, 30.351673, 26.802048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728766, 0.662447, -0.173390,
		0.618240, -0.527658, 0.582543,
		0.294413, -0.531734, -0.794090,
		32.795383, 30.192152, 26.563820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250740, 30.490929, 27.129564>,  <32.589294, 30.564367, 27.119684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250740, 30.490929, 27.129564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205009, 30.425411, 26.737625>,  <33.177570, 30.386101, 26.502462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205009, 30.425411, 26.737625>,  <33.250740, 30.490929, 27.129564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205009, 30.425411, 26.737625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729164, 0.656046, -0.194739,
		0.674722, -0.736733, 0.044431,
		-0.114322, -0.163792, -0.979848,
		33.170712, 30.376274, 26.443670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887348, 30.406702, 26.986752>,  <33.250740, 30.490929, 27.129564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887348, 30.406702, 26.986752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695450, 30.496220, 26.647396>,  <33.580311, 30.549931, 26.443783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695450, 30.496220, 26.647396>,  <33.887348, 30.406702, 26.986752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695450, 30.496220, 26.647396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770106, 0.570749, -0.284925,
		0.420452, -0.790040, -0.446158,
		-0.479746, 0.223792, -0.848387,
		33.551525, 30.563356, 26.392879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393177, 30.365904, 26.477663>,  <33.887348, 30.406702, 26.986752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393177, 30.365904, 26.477663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106071, 30.613079, 26.349312>,  <33.933807, 30.761383, 26.272301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106071, 30.613079, 26.349312>,  <34.393177, 30.365904, 26.477663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106071, 30.613079, 26.349312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693760, 0.673888, -0.254111,
		0.059211, -0.405005, -0.912395,
		-0.717768, 0.617937, -0.320878,
		33.890739, 30.798460, 26.253048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668053, 30.675900, 25.937727>,  <34.393177, 30.365904, 26.477663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668053, 30.675900, 25.937727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356083, 30.915764, 26.009426>,  <34.168903, 31.059683, 26.052446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356083, 30.915764, 26.009426>,  <34.668053, 30.675900, 25.937727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356083, 30.915764, 26.009426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590026, 0.799986, -0.109048,
		-0.208787, 0.020711, -0.977742,
		-0.779922, 0.599661, 0.179247,
		34.122105, 31.095661, 26.063200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832119, 31.120897, 25.512756>,  <34.668053, 30.675900, 25.937727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832119, 31.120897, 25.512756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542713, 31.277294, 25.740318>,  <34.369072, 31.371132, 25.876856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542713, 31.277294, 25.740318>,  <34.832119, 31.120897, 25.512756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542713, 31.277294, 25.740318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491606, 0.870399, 0.027004,
		-0.484616, 0.299216, -0.821960,
		-0.723513, 0.390994, 0.568905,
		34.325661, 31.394592, 25.910990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750542, 31.768894, 25.182251>,  <34.832119, 31.120897, 25.512756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750542, 31.768894, 25.182251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607216, 31.794655, 25.554802>,  <34.521221, 31.810112, 25.778334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607216, 31.794655, 25.554802>,  <34.750542, 31.768894, 25.182251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607216, 31.794655, 25.554802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469319, 0.874829, 0.120060,
		-0.807065, 0.480132, -0.343686,
		-0.358311, 0.064402, 0.931378,
		34.499722, 31.813976, 25.834215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620480, 32.474583, 25.297718>,  <34.750542, 31.768894, 25.182251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620480, 32.474583, 25.297718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671272, 32.315620, 25.661243>,  <34.701748, 32.220242, 25.879358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671272, 32.315620, 25.661243>,  <34.620480, 32.474583, 25.297718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671272, 32.315620, 25.661243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416566, 0.852882, 0.314745,
		-0.900193, 0.338613, 0.273849,
		0.126984, -0.397408, 0.908814,
		34.709366, 32.196400, 25.933887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444798, 33.086674, 25.741125>,  <34.620480, 32.474583, 25.297718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444798, 33.086674, 25.741125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640556, 32.839531, 25.987297>,  <34.758011, 32.691246, 26.135000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640556, 32.839531, 25.987297>,  <34.444798, 33.086674, 25.741125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640556, 32.839531, 25.987297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475501, 0.780638, 0.405590,
		-0.731021, 0.094144, 0.675829,
		0.489393, -0.617853, 0.615428,
		34.787373, 32.654175, 26.171926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403748, 33.358036, 26.455133>,  <34.444798, 33.086674, 25.741125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403748, 33.358036, 26.455133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739536, 33.142132, 26.430016>,  <34.941010, 33.012589, 26.414946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739536, 33.142132, 26.430016>,  <34.403748, 33.358036, 26.455133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739536, 33.142132, 26.430016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519036, 0.762244, 0.386762,
		-0.160894, -0.357269, 0.920039,
		0.839473, -0.539761, -0.062795,
		34.991379, 32.980202, 26.411177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647400, 33.384480, 26.533474>,  <34.403748, 33.358036, 26.455133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647400, 33.384480, 26.533474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792313, 33.606976, 26.832634>,  <33.879261, 33.740471, 27.012129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792313, 33.606976, 26.832634>,  <33.647400, 33.384480, 26.533474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792313, 33.606976, 26.832634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336610, -0.670173, 0.661485,
		0.869162, -0.491397, -0.055560,
		0.362286, 0.556235, 0.747898,
		33.900997, 33.773846, 27.057003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062157, 32.992939, 26.993023>,  <33.647400, 33.384480, 26.533474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062157, 32.992939, 26.993023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900082, 33.302814, 27.187214>,  <33.802837, 33.488739, 27.303728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900082, 33.302814, 27.187214>,  <34.062157, 32.992939, 26.993023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900082, 33.302814, 27.187214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308663, -0.615757, 0.724962,
		0.860552, 0.143898, 0.488614,
		-0.405188, 0.774685, 0.485475,
		33.778526, 33.535221, 27.332857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292191, 32.930439, 27.705059>,  <34.062157, 32.992939, 26.993023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292191, 32.930439, 27.705059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939835, 33.116875, 27.672089>,  <33.728420, 33.228737, 27.652306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939835, 33.116875, 27.672089>,  <34.292191, 32.930439, 27.705059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939835, 33.116875, 27.672089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344907, -0.512828, 0.786159,
		0.324152, 0.720948, 0.612502,
		-0.880889, 0.466091, -0.082426,
		33.675568, 33.256702, 27.647362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061386, 33.375496, 28.325512>,  <34.292191, 32.930439, 27.705059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061386, 33.375496, 28.325512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731373, 33.238216, 28.145939>,  <33.533367, 33.155849, 28.038195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731373, 33.238216, 28.145939>,  <34.061386, 33.375496, 28.325512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731373, 33.238216, 28.145939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238694, -0.508439, 0.827354,
		-0.512201, 0.789750, 0.337558,
		-0.825031, -0.343199, -0.448931,
		33.483864, 33.135258, 28.011259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440681, 33.492447, 28.782009>,  <34.061386, 33.375496, 28.325512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440681, 33.492447, 28.782009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310455, 33.199810, 28.542416>,  <33.232319, 33.024227, 28.398659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310455, 33.199810, 28.542416>,  <33.440681, 33.492447, 28.782009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310455, 33.199810, 28.542416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295929, -0.522828, 0.799423,
		-0.898015, 0.437523, -0.046283,
		-0.325567, -0.731590, -0.598984,
		33.212784, 32.980331, 28.362720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827106, 33.276134, 29.145807>,  <33.440681, 33.492447, 28.782009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827106, 33.276134, 29.145807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870480, 32.981274, 28.879021>,  <32.896503, 32.804356, 28.718948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870480, 32.981274, 28.879021>,  <32.827106, 33.276134, 29.145807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870480, 32.981274, 28.879021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460667, -0.631798, 0.623392,
		-0.880925, 0.239652, -0.408092,
		0.108435, -0.737155, -0.666966,
		32.903011, 32.760128, 28.678930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141575, 32.940453, 29.052029>,  <32.827106, 33.276134, 29.145807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141575, 32.940453, 29.052029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417717, 32.684052, 28.917854>,  <32.583405, 32.530209, 28.837351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417717, 32.684052, 28.917854>,  <32.141575, 32.940453, 29.052029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417717, 32.684052, 28.917854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389672, -0.720105, 0.574112,
		-0.609557, -0.265635, -0.746913,
		0.690360, -0.641005, -0.335435,
		32.624825, 32.491749, 28.817225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786158, 32.349861, 29.009418>,  <32.141575, 32.940453, 29.052029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786158, 32.349861, 29.009418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163521, 32.217434, 29.017189>,  <32.389938, 32.137978, 29.021852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163521, 32.217434, 29.017189>,  <31.786158, 32.349861, 29.009418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163521, 32.217434, 29.017189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292918, -0.804353, 0.516929,
		-0.155513, -0.493364, -0.855808,
		0.943406, -0.331071, 0.019428,
		32.446541, 32.118114, 29.023018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658682, 31.684280, 28.778278>,  <31.786158, 32.349861, 29.009418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658682, 31.684280, 28.778278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006046, 31.723553, 28.972691>,  <32.214466, 31.747116, 29.089338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006046, 31.723553, 28.972691>,  <31.658682, 31.684280, 28.778278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006046, 31.723553, 28.972691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174295, -0.857208, 0.484577,
		0.464204, -0.505524, -0.727296,
		0.868410, 0.098179, 0.486030,
		32.266571, 31.753006, 29.118500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996744, 30.984182, 28.716265>,  <31.658682, 31.684280, 28.778278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996744, 30.984182, 28.716265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170574, 31.165138, 29.027775>,  <32.274872, 31.273712, 29.214682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170574, 31.165138, 29.027775>,  <31.996744, 30.984182, 28.716265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170574, 31.165138, 29.027775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095881, -0.836542, 0.539448,
		0.895518, -0.309100, -0.320164,
		0.434574, 0.452388, 0.778775,
		32.300945, 31.300854, 29.261408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404369, 30.438435, 29.024553>,  <31.996744, 30.984182, 28.716265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404369, 30.438435, 29.024553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338490, 30.729099, 29.291336>,  <32.298962, 30.903498, 29.451406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338490, 30.729099, 29.291336>,  <32.404369, 30.438435, 29.024553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338490, 30.729099, 29.291336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199084, -0.686768, 0.699082,
		0.966043, -0.017640, 0.257779,
		-0.164702, 0.726663, 0.666959,
		32.289078, 30.947098, 29.491425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567451, 30.076866, 29.594166>,  <32.404369, 30.438435, 29.024553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567451, 30.076866, 29.594166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384521, 30.395813, 29.751675>,  <32.274761, 30.587181, 29.846180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384521, 30.395813, 29.751675>,  <32.567451, 30.076866, 29.594166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384521, 30.395813, 29.751675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386343, -0.576963, 0.719620,
		0.800993, 0.176972, 0.571919,
		-0.457329, 0.797367, 0.393771,
		32.247322, 30.635023, 29.869806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855766, 30.203062, 30.348391>,  <32.567451, 30.076866, 29.594166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855766, 30.203062, 30.348391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485001, 30.349487, 30.315357>,  <32.262539, 30.437344, 30.295538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485001, 30.349487, 30.315357>,  <32.855766, 30.203062, 30.348391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485001, 30.349487, 30.315357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303872, -0.603048, 0.737560,
		0.220194, 0.708752, 0.670213,
		-0.926918, 0.366065, -0.082582,
		32.206924, 30.459307, 30.290583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720139, 30.255814, 30.991440>,  <32.855766, 30.203062, 30.348391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720139, 30.255814, 30.991440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366543, 30.268147, 30.804844>,  <32.154385, 30.275545, 30.692886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366543, 30.268147, 30.804844>,  <32.720139, 30.255814, 30.991440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366543, 30.268147, 30.804844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388617, -0.603138, 0.696564,
		-0.259881, 0.797041, 0.545149,
		-0.883990, 0.030830, -0.466488,
		32.101345, 30.277395, 30.664898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128151, 30.455954, 31.531782>,  <32.720139, 30.255814, 30.991440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128151, 30.455954, 31.531782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957560, 30.296738, 31.206898>,  <31.855206, 30.201208, 31.011967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957560, 30.296738, 31.206898>,  <32.128151, 30.455954, 31.531782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957560, 30.296738, 31.206898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486518, -0.656052, 0.576972,
		-0.762508, 0.641219, 0.086138,
		-0.426476, -0.398038, -0.812209,
		31.829617, 30.177326, 30.963236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389147, 30.419144, 31.691721>,  <32.128151, 30.455954, 31.531782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389147, 30.419144, 31.691721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460146, 30.153419, 31.401291>,  <31.502747, 29.993984, 31.227034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460146, 30.153419, 31.401291>,  <31.389147, 30.419144, 31.691721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460146, 30.153419, 31.401291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529016, -0.686535, 0.498810,
		-0.829841, 0.295566, -0.473292,
		0.177500, -0.664312, -0.726074,
		31.513395, 29.954126, 31.183468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797468, 29.968496, 31.771683>,  <31.389147, 30.419144, 31.691721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797468, 29.968496, 31.771683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022480, 29.731819, 31.540699>,  <31.157488, 29.589813, 31.402109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022480, 29.731819, 31.540699>,  <30.797468, 29.968496, 31.771683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022480, 29.731819, 31.540699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437351, -0.805682, 0.399499,
		-0.701629, 0.027821, -0.711999,
		0.562530, -0.591694, -0.577458,
		31.191238, 29.554312, 31.367462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283659, 29.546087, 31.386761>,  <30.797468, 29.968496, 31.771683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283659, 29.546087, 31.386761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632412, 29.351742, 31.411274>,  <30.841663, 29.235134, 31.425982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632412, 29.351742, 31.411274>,  <30.283659, 29.546087, 31.386761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632412, 29.351742, 31.411274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474874, -0.808249, 0.348179,
		-0.119636, -0.332673, -0.935423,
		0.871884, -0.485862, 0.061282,
		30.893978, 29.205982, 31.429659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108028, 28.945740, 31.160637>,  <30.283659, 29.546087, 31.386761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108028, 28.945740, 31.160637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451521, 28.886074, 31.356731>,  <30.657616, 28.850275, 31.474388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451521, 28.886074, 31.356731>,  <30.108028, 28.945740, 31.160637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451521, 28.886074, 31.356731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312707, -0.910449, 0.270736,
		0.405949, -0.385789, -0.828476,
		0.858731, -0.149165, 0.490235,
		30.709141, 28.841324, 31.503801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378469, 28.254505, 30.898397>,  <30.108028, 28.945740, 31.160637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378469, 28.254505, 30.898397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538771, 28.338345, 31.255154>,  <30.634953, 28.388647, 31.469208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538771, 28.338345, 31.255154>,  <30.378469, 28.254505, 30.898397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538771, 28.338345, 31.255154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358107, -0.860202, 0.363059,
		0.843300, -0.464889, -0.269671,
		0.400754, 0.209596, 0.891888,
		30.658997, 28.401224, 31.522720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533047, 27.599285, 31.245577>,  <30.378469, 28.254505, 30.898397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533047, 27.599285, 31.245577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544157, 27.837280, 31.566879>,  <30.550823, 27.980078, 31.759661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544157, 27.837280, 31.566879>,  <30.533047, 27.599285, 31.245577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544157, 27.837280, 31.566879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113351, -0.796507, 0.593910,
		0.993167, -0.107547, 0.045318,
		0.027777, 0.594988, 0.803254,
		30.552490, 28.015778, 31.807856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954311, 27.235317, 31.706181>,  <30.533047, 27.599285, 31.245577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954311, 27.235317, 31.706181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709768, 27.483345, 31.902855>,  <30.563042, 27.632162, 32.020859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709768, 27.483345, 31.902855>,  <30.954311, 27.235317, 31.706181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709768, 27.483345, 31.902855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211445, -0.726729, 0.653572,
		0.762581, 0.295603, 0.575403,
		-0.611360, 0.620067, 0.491686,
		30.526360, 27.669365, 32.050362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040981, 27.043829, 32.449730>,  <30.954311, 27.235317, 31.706181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040981, 27.043829, 32.449730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688290, 27.230595, 32.422768>,  <30.476675, 27.342655, 32.406590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688290, 27.230595, 32.422768>,  <31.040981, 27.043829, 32.449730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688290, 27.230595, 32.422768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408728, -0.684741, 0.603383,
		0.235574, 0.559571, 0.794598,
		-0.881729, 0.466915, -0.067405,
		30.423771, 27.370668, 32.402546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740213, 27.232502, 33.145985>,  <31.040981, 27.043829, 32.449730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740213, 27.232502, 33.145985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434155, 27.188713, 32.892193>,  <30.250519, 27.162439, 32.739918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434155, 27.188713, 32.892193>,  <30.740213, 27.232502, 33.145985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434155, 27.188713, 32.892193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362284, -0.741438, 0.564819,
		-0.532261, 0.662031, 0.527648,
		-0.765146, -0.109472, -0.634482,
		30.204611, 27.155870, 32.701847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291904, 26.860834, 33.530144>,  <30.740213, 27.232502, 33.145985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291904, 26.860834, 33.530144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092239, 26.877659, 33.183949>,  <29.972441, 26.887753, 32.976231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092239, 26.877659, 33.183949>,  <30.291904, 26.860834, 33.530144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092239, 26.877659, 33.183949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615109, -0.720702, 0.319734,
		-0.610310, 0.691968, 0.385619,
		-0.499162, 0.042061, -0.865487,
		29.942492, 26.890278, 32.924301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605925, 26.871264, 33.768520>,  <30.291904, 26.860834, 33.530144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605925, 26.871264, 33.768520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604994, 26.761314, 33.383930>,  <29.604435, 26.695345, 33.153175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604994, 26.761314, 33.383930>,  <29.605925, 26.871264, 33.768520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604994, 26.761314, 33.383930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601892, -0.767431, 0.220853,
		-0.798574, 0.579220, -0.163656,
		-0.002328, -0.274871, -0.961478,
		29.604296, 26.678854, 33.095486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981087, 26.648624, 33.668087>,  <29.605925, 26.871264, 33.768520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981087, 26.648624, 33.668087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178898, 26.475170, 33.366783>,  <29.297585, 26.371098, 33.186001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178898, 26.475170, 33.366783>,  <28.981087, 26.648624, 33.668087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178898, 26.475170, 33.366783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544919, -0.829859, 0.119985,
		-0.677131, 0.351130, -0.646685,
		0.494527, -0.433637, -0.753261,
		29.327255, 26.345079, 33.140804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519592, 26.500788, 33.067471>,  <28.981087, 26.648624, 33.668087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519592, 26.500788, 33.067471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829451, 26.248177, 33.080719>,  <29.015366, 26.096609, 33.088669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829451, 26.248177, 33.080719>,  <28.519592, 26.500788, 33.067471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829451, 26.248177, 33.080719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626734, -0.759656, 0.173574,
		-0.084453, -0.155219, -0.984264,
		0.774643, -0.631530, 0.033126,
		29.061844, 26.058718, 33.090656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046448, 26.262115, 32.344131>,  <28.519592, 26.500788, 33.067471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046448, 26.262115, 32.344131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718163, 26.375519, 32.145718>,  <27.521191, 26.443562, 32.026669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718163, 26.375519, 32.145718>,  <28.046448, 26.262115, 32.344131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718163, 26.375519, 32.145718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552966, 0.612550, -0.564811,
		0.143717, -0.737839, -0.659499,
		-0.820715, 0.283507, -0.496034,
		27.471949, 26.460571, 31.996908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234133, 26.275593, 31.715652>,  <28.046448, 26.262115, 32.344131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234133, 26.275593, 31.715652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910206, 26.510017, 31.726471>,  <27.715849, 26.650671, 31.732962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910206, 26.510017, 31.726471>,  <28.234133, 26.275593, 31.715652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910206, 26.510017, 31.726471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439627, 0.636712, -0.633504,
		-0.388492, -0.501131, -0.773267,
		-0.809817, 0.586060, 0.027047,
		27.667261, 26.685835, 31.734585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076443, 26.462906, 31.082827>,  <28.234133, 26.275593, 31.715652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076443, 26.462906, 31.082827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856804, 26.738155, 31.272552>,  <27.725019, 26.903305, 31.386389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856804, 26.738155, 31.272552>,  <28.076443, 26.462906, 31.082827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856804, 26.738155, 31.272552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237727, 0.672682, -0.700703,
		-0.801235, -0.271997, -0.532954,
		-0.549098, 0.688125, 0.474315,
		27.692074, 26.944593, 31.414846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504534, 26.748201, 30.701902>,  <28.076443, 26.462906, 31.082827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504534, 26.748201, 30.701902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618641, 27.032288, 30.959339>,  <27.687105, 27.202740, 31.113802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618641, 27.032288, 30.959339>,  <27.504534, 26.748201, 30.701902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618641, 27.032288, 30.959339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373558, 0.536005, -0.757069,
		-0.882653, 0.456388, -0.112402,
		0.285269, 0.710218, 0.643593,
		27.704222, 27.245354, 31.152416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490093, 27.279776, 30.360203>,  <27.504534, 26.748201, 30.701902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490093, 27.279776, 30.360203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696642, 27.397705, 30.681808>,  <27.820570, 27.468464, 30.874771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696642, 27.397705, 30.681808>,  <27.490093, 27.279776, 30.360203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696642, 27.397705, 30.681808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411662, 0.737819, -0.534937,
		-0.750930, 0.607208, 0.259620,
		0.516371, 0.294825, 0.804015,
		27.851553, 27.486153, 30.923014>
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
