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
	<1.871922, 1.401097, 3.680192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.098103, 1.475441, 4.001619>,  <2.233811, 1.520047, 4.194476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.098103, 1.475441, 4.001619>,  <1.871922, 1.401097, 3.680192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.098103, 1.475441, 4.001619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296864, -0.954845, 0.011952,
		0.769504, 0.231792, -0.595093,
		0.565451, 0.185859, 0.803568,
		2.267738, 1.531199, 4.242690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.478185, 1.036768, 3.616842>,  <1.871922, 1.401097, 3.680192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.478185, 1.036768, 3.616842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.398026, 1.104008, 4.002916>,  <2.349930, 1.144351, 4.234561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.398026, 1.104008, 4.002916>,  <2.478185, 1.036768, 3.616842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.398026, 1.104008, 4.002916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330197, -0.915942, 0.228080,
		0.922393, 0.364409, 0.128048,
		-0.200399, 0.168098, 0.965185,
		2.337906, 1.154437, 4.292472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.110594, 1.031586, 4.048648>,  <2.478185, 1.036768, 3.616842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.110594, 1.031586, 4.048648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.806057, 0.931515, 4.287903>,  <2.623335, 0.871472, 4.431456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.806057, 0.931515, 4.287903>,  <3.110594, 1.031586, 4.048648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.806057, 0.931515, 4.287903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423491, -0.890449, 0.166603,
		0.490930, 0.380147, 0.783885,
		-0.761343, -0.250178, 0.598137,
		2.577654, 0.856461, 4.467344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.317630, 0.770066, 4.759634>,  <3.110594, 1.031586, 4.048648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.317630, 0.770066, 4.759634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.961502, 0.623863, 4.651018>,  <2.747825, 0.536142, 4.585848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.961502, 0.623863, 4.651018>,  <3.317630, 0.770066, 4.759634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.961502, 0.623863, 4.651018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375209, -0.926779, 0.017262,
		-0.257968, -0.086516, 0.962272,
		-0.890320, -0.365507, -0.271541,
		2.694406, 0.514211, 4.569556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.163801, 0.288067, 5.302644>,  <3.317630, 0.770066, 4.759634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.163801, 0.288067, 5.302644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.961189, 0.189751, 4.972065>,  <2.839622, 0.130761, 4.773718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.961189, 0.189751, 4.972065>,  <3.163801, 0.288067, 5.302644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.961189, 0.189751, 4.972065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368319, -0.928335, 0.050350,
		-0.779595, -0.278892, 0.560759,
		-0.506530, -0.245791, -0.826447,
		2.809230, 0.116013, 4.724131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.859096, -0.357409, 5.522482>,  <3.163801, 0.288067, 5.302644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.859096, -0.357409, 5.522482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.810726, -0.339569, 5.125818>,  <2.781704, -0.328865, 4.887820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.810726, -0.339569, 5.125818>,  <2.859096, -0.357409, 5.522482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.810726, -0.339569, 5.125818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288759, -0.954209, -0.078128,
		-0.949734, -0.295798, 0.102508,
		-0.120924, 0.044601, -0.991659,
		2.774449, -0.326189, 4.828321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.357594, -0.917144, 5.284224>,  <2.859096, -0.357409, 5.522482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.357594, -0.917144, 5.284224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.624878, -0.814461, 5.004911>,  <2.785249, -0.752851, 4.837324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.624878, -0.814461, 5.004911>,  <2.357594, -0.917144, 5.284224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624878, -0.814461, 5.004911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237997, -0.963021, -0.126286,
		-0.704877, -0.081803, -0.704597,
		0.668211, 0.256708, -0.698280,
		2.825341, -0.737448, 4.795427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.173794, -1.244208, 4.687740>,  <2.357594, -0.917144, 5.284224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.173794, -1.244208, 4.687740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.565075, -1.161171, 4.685646>,  <2.799843, -1.111349, 4.684390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.565075, -1.161171, 4.685646>,  <2.173794, -1.244208, 4.687740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.565075, -1.161171, 4.685646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203421, -0.963010, -0.176727,
		-0.041729, 0.171810, -0.984246,
		0.978202, 0.207591, -0.005235,
		2.858535, -1.098894, 4.684075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.196469, 3.354753, 5.716145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.375710, 3.195244, 5.396099>,  <3.483254, 3.099538, 5.204072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.375710, 3.195244, 5.396099>,  <3.196469, 3.354753, 5.716145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.375710, 3.195244, 5.396099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079771, 0.873595, -0.480070,
		0.890416, 0.278946, 0.359650,
		0.448102, -0.398773, -0.800115,
		3.510140, 3.075612, 5.156065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.945209, 3.582510, 5.534534>,  <3.196469, 3.354753, 5.716145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.945209, 3.582510, 5.534534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.698097, 3.473068, 5.239647>,  <3.549830, 3.407403, 5.062715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.698097, 3.473068, 5.239647>,  <3.945209, 3.582510, 5.534534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.698097, 3.473068, 5.239647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015725, 0.941628, -0.336289,
		0.786194, -0.196160, -0.586021,
		-0.617780, -0.273604, -0.737217,
		3.512764, 3.390987, 5.018482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.065451, 4.045207, 4.974889>,  <3.945209, 3.582510, 5.534534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.065451, 4.045207, 4.974889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738304, 3.885910, 4.808758>,  <3.542016, 3.790332, 4.709079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.738304, 3.885910, 4.808758>,  <4.065451, 4.045207, 4.974889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.738304, 3.885910, 4.808758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284287, 0.907214, -0.310070,
		0.500275, -0.135523, -0.855195,
		-0.817867, -0.398242, -0.415329,
		3.492944, 3.766438, 4.684159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.034822, 4.366600, 4.270167>,  <4.065451, 4.045207, 4.974889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.034822, 4.366600, 4.270167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.683815, 4.216675, 4.389820>,  <3.473211, 4.126719, 4.461612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.683815, 4.216675, 4.389820>,  <4.034822, 4.366600, 4.270167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.683815, 4.216675, 4.389820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448134, 0.862990, -0.233291,
		-0.170708, -0.338768, -0.925254,
		-0.877516, -0.374813, 0.299133,
		3.420560, 4.104231, 4.479560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.543715, 4.592390, 3.729367>,  <4.034822, 4.366600, 4.270167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.543715, 4.592390, 3.729367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325996, 4.515289, 4.055946>,  <3.195365, 4.469029, 4.251894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325996, 4.515289, 4.055946>,  <3.543715, 4.592390, 3.729367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.325996, 4.515289, 4.055946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486455, 0.865427, -0.119987,
		-0.683449, -0.462474, -0.564814,
		-0.544296, -0.192751, 0.816449,
		3.162708, 4.457464, 4.300881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.831756, 4.608386, 3.492991>,  <3.543715, 4.592390, 3.729367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.831756, 4.608386, 3.492991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.814598, 4.638992, 3.891449>,  <2.804303, 4.657356, 4.130524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.814598, 4.638992, 3.891449>,  <2.831756, 4.608386, 3.492991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.814598, 4.638992, 3.891449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639801, 0.763690, -0.086211,
		-0.767342, -0.641033, 0.016199,
		-0.042893, 0.076518, 0.996145,
		2.801730, 4.661947, 4.190292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.176974, 4.670317, 3.647920>,  <2.831756, 4.608386, 3.492991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.176974, 4.670317, 3.647920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.368713, 4.840508, 3.954956>,  <2.483757, 4.942622, 4.139178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.368713, 4.840508, 3.954956>,  <2.176974, 4.670317, 3.647920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.368713, 4.840508, 3.954956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611754, 0.789108, -0.055371,
		-0.629271, -0.443035, 0.638544,
		0.479349, 0.425476, 0.767591,
		2.512518, 4.968150, 4.185233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.684504, 4.911420, 4.149200>,  <2.176974, 4.670317, 3.647920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.684504, 4.911420, 4.149200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.018181, 5.116188, 4.231236>,  <2.218387, 5.239048, 4.280457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.018181, 5.116188, 4.231236>,  <1.684504, 4.911420, 4.149200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.018181, 5.116188, 4.231236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517876, 0.855006, -0.027722,
		-0.189544, -0.083085, 0.978351,
		0.834193, 0.511919, 0.205088,
		2.268439, 5.269764, 4.292762>
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
