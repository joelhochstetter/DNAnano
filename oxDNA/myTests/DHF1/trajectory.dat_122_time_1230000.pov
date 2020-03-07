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
	<5.235630, 5.099773, 2.886865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.980202, 4.813461, 2.999924>,  <4.826945, 4.641675, 3.067759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.980202, 4.813461, 2.999924>,  <5.235630, 5.099773, 2.886865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.980202, 4.813461, 2.999924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045177, -0.331782, -0.942274,
		0.768237, -0.614477, 0.179529,
		-0.638569, -0.715779, 0.282647,
		4.788631, 4.598728, 3.084718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.483905, 4.422200, 2.716578>,  <5.235630, 5.099773, 2.886865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.483905, 4.422200, 2.716578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.084091, 4.413208, 2.724834>,  <4.844203, 4.407813, 2.729788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.084091, 4.413208, 2.724834>,  <5.483905, 4.422200, 2.716578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.084091, 4.413208, 2.724834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014138, -0.258305, -0.965960,
		0.027047, -0.965802, 0.257866,
		-0.999534, -0.022480, 0.020641,
		4.784231, 4.406464, 2.731027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.271829, 3.805423, 2.536186>,  <5.483905, 4.422200, 2.716578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.271829, 3.805423, 2.536186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.993938, 4.078281, 2.444942>,  <4.827204, 4.241996, 2.390196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.993938, 4.078281, 2.444942>,  <5.271829, 3.805423, 2.536186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.993938, 4.078281, 2.444942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108678, -0.213947, -0.970781,
		-0.711017, -0.699217, 0.074501,
		-0.694725, 0.682146, -0.228109,
		4.785521, 4.282925, 2.376510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.939069, 3.511013, 1.907988>,  <5.271829, 3.805423, 2.536186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.939069, 3.511013, 1.907988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.881092, 3.906105, 1.931240>,  <4.846306, 4.143160, 1.945191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.881092, 3.906105, 1.931240>,  <4.939069, 3.511013, 1.907988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.881092, 3.906105, 1.931240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154300, 0.080596, -0.984731,
		-0.977335, -0.133759, -0.164089,
		-0.144941, 0.987731, 0.058131,
		4.837610, 4.202425, 1.948679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.436646, 3.744913, 1.471244>,  <4.939069, 3.511013, 1.907988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.436646, 3.744913, 1.471244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.750465, 3.987598, 1.522438>,  <4.938757, 4.133210, 1.553155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.750465, 3.987598, 1.522438>,  <4.436646, 3.744913, 1.471244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.750465, 3.987598, 1.522438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238773, -0.105117, -0.965369,
		-0.572250, 0.787939, -0.227337,
		0.784549, 0.606714, 0.127986,
		4.985830, 4.169613, 1.560834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.410275, 4.374520, 1.070632>,  <4.436646, 3.744913, 1.471244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.410275, 4.374520, 1.070632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.794754, 4.293922, 1.146000>,  <5.025441, 4.245564, 1.191220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.794754, 4.293922, 1.146000>,  <4.410275, 4.374520, 1.070632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.794754, 4.293922, 1.146000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161445, -0.142959, -0.976472,
		0.223690, 0.969001, -0.104881,
		0.961196, -0.201495, 0.188419,
		5.083113, 4.233474, 1.202526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.826820, 4.739923, 0.484247>,  <4.410275, 4.374520, 1.070632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.826820, 4.739923, 0.484247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.034973, 4.434822, 0.637825>,  <5.159865, 4.251762, 0.729972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.034973, 4.434822, 0.637825>,  <4.826820, 4.739923, 0.484247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.034973, 4.434822, 0.637825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209927, -0.321552, -0.923328,
		0.827727, 0.561085, -0.007209,
		0.520383, -0.762751, 0.383944,
		5.191088, 4.205997, 0.753008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.309924, 4.712317, 0.047980>,  <4.826820, 4.739923, 0.484247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.309924, 4.712317, 0.047980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.327614, 4.346828, 0.209549>,  <5.338228, 4.127535, 0.306491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.327614, 4.346828, 0.209549>,  <5.309924, 4.712317, 0.047980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.327614, 4.346828, 0.209549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101033, -0.398155, -0.911737,
		0.993900, 0.081132, 0.074707,
		0.044226, -0.913723, 0.403924,
		5.340881, 4.072711, 0.330726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.853812, 3.911495, -1.022217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.822218, 3.514313, -0.986893>,  <0.803261, 3.276003, -0.965698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.822218, 3.514313, -0.986893>,  <0.853812, 3.911495, -1.022217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.822218, 3.514313, -0.986893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494065, 0.115935, 0.861660,
		-0.865829, 0.024428, -0.499742,
		-0.078986, -0.992956, 0.088311,
		0.798522, 3.216426, -0.960399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.135378, 3.780055, -0.974262>,  <0.853812, 3.911495, -1.022217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.135378, 3.780055, -0.974262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.380801, 3.518013, -0.797905>,  <0.528055, 3.360788, -0.692091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.380801, 3.518013, -0.797905>,  <0.135378, 3.780055, -0.974262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.380801, 3.518013, -0.797905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285322, 0.336695, 0.897345,
		-0.736301, -0.676368, 0.019666,
		0.613557, -0.655105, 0.440892,
		0.564868, 3.321481, -0.665637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.135516, 3.328301, -0.388614>,  <0.135378, 3.780055, -0.974262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.135516, 3.328301, -0.388614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.257995, 3.379417, -0.338249>,  <0.494101, 3.410087, -0.308030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.257995, 3.379417, -0.338249>,  <-0.135516, 3.328301, -0.388614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.257995, 3.379417, -0.338249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159181, 0.298101, 0.941168,
		0.082738, -0.945941, 0.313607,
		0.983776, 0.127790, 0.125912,
		0.553128, 3.417755, -0.300476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.034724, 2.896570, 0.264095>,  <-0.135516, 3.328301, -0.388614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.034724, 2.896570, 0.264095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.271844, 3.207573, 0.180122>,  <0.414116, 3.394175, 0.129739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.271844, 3.207573, 0.180122>,  <0.034724, 2.896570, 0.264095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.271844, 3.207573, 0.180122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119281, 0.342561, 0.931893,
		0.796468, -0.527384, 0.295811,
		0.592799, 0.777507, -0.209932,
		0.449684, 3.440825, 0.117143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.698475, 2.888620, 0.755987>,  <0.034724, 2.896570, 0.264095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.698475, 2.888620, 0.755987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.592767, 3.250862, 0.623299>,  <0.529342, 3.468208, 0.543686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.592767, 3.250862, 0.623299>,  <0.698475, 2.888620, 0.755987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.592767, 3.250862, 0.623299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033595, 0.352383, 0.935252,
		0.963863, 0.236015, -0.123548,
		-0.264270, 0.905606, -0.331721,
		0.513486, 3.522544, 0.523782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.980953, 3.259881, 1.239136>,  <0.698475, 2.888620, 0.755987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.980953, 3.259881, 1.239136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.761996, 3.553421, 1.078224>,  <0.630622, 3.729545, 0.981677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.761996, 3.553421, 1.078224>,  <0.980953, 3.259881, 1.239136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.761996, 3.553421, 1.078224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063842, 0.442672, 0.894408,
		0.834438, 0.515273, -0.195465,
		-0.547391, 0.733849, -0.402279,
		0.597779, 3.773576, 0.957541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.302776, 3.892743, 1.367162>,  <0.980953, 3.259881, 1.239136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.302776, 3.892743, 1.367162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920031, 3.998413, 1.318787>,  <0.690384, 4.061815, 1.289761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920031, 3.998413, 1.318787>,  <1.302776, 3.892743, 1.367162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.920031, 3.998413, 1.318787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023256, 0.484557, 0.874451,
		0.289610, 0.833916, -0.469798,
		-0.956862, 0.264175, -0.120939,
		0.632972, 4.077666, 1.282505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.167447, 4.682734, 1.566668>,  <1.302776, 3.892743, 1.367162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.167447, 4.682734, 1.566668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.835945, 4.461014, 1.597443>,  <0.637044, 4.327982, 1.615907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.835945, 4.461014, 1.597443>,  <1.167447, 4.682734, 1.566668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.835945, 4.461014, 1.597443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185622, 0.401983, 0.896635,
		-0.527931, 0.728808, -0.436036,
		-0.828754, -0.554300, 0.076936,
		0.587319, 4.294724, 1.620524>
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
