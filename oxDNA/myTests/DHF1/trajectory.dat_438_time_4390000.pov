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
	<5.237251, -1.125177, 4.640321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.249832, -0.726410, 4.669075>,  <5.257381, -0.487150, 4.686327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.249832, -0.726410, 4.669075>,  <5.237251, -1.125177, 4.640321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.249832, -0.726410, 4.669075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470809, 0.078218, -0.878761,
		-0.881674, -0.006204, 0.471818,
		0.031453, 0.996917, 0.071884,
		5.259268, -0.427335, 4.690640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.606569, -0.757781, 4.564888>,  <5.237251, -1.125177, 4.640321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.606569, -0.757781, 4.564888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860249, -0.472313, 4.445915>,  <5.012456, -0.301032, 4.374531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.860249, -0.472313, 4.445915>,  <4.606569, -0.757781, 4.564888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.860249, -0.472313, 4.445915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481014, 0.063012, -0.874446,
		-0.605324, 0.697642, 0.383248,
		0.634199, 0.713671, -0.297433,
		5.050508, -0.258212, 4.356686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.134246, -0.275892, 4.314616>,  <4.606569, -0.757781, 4.564888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.134246, -0.275892, 4.314616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.488209, -0.195198, 4.146690>,  <4.700586, -0.146782, 4.045935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.488209, -0.195198, 4.146690>,  <4.134246, -0.275892, 4.314616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.488209, -0.195198, 4.146690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462642, 0.276438, -0.842344,
		-0.053878, 0.939619, 0.337953,
		0.884906, 0.201736, -0.419814,
		4.753681, -0.134677, 4.020746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.093012, 0.356827, 3.952536>,  <4.134246, -0.275892, 4.314616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.093012, 0.356827, 3.952536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.382706, 0.157036, 3.762375>,  <4.556522, 0.037161, 3.648278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.382706, 0.157036, 3.762375>,  <4.093012, 0.356827, 3.952536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.382706, 0.157036, 3.762375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407006, 0.246887, -0.879427,
		0.556625, 0.830403, -0.024486,
		0.724233, -0.499478, -0.475403,
		4.599976, 0.007193, 3.619754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.422169, 0.862817, 3.522015>,  <4.093012, 0.356827, 3.952536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.422169, 0.862817, 3.522015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467789, 0.501572, 3.356422>,  <4.495161, 0.284825, 3.257067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.467789, 0.501572, 3.356422>,  <4.422169, 0.862817, 3.522015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.467789, 0.501572, 3.356422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175383, 0.391854, -0.903156,
		0.977872, 0.175609, -0.113700,
		0.114049, -0.903112, -0.413982,
		4.502003, 0.230638, 3.232228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.643332, 1.040293, 2.833771>,  <4.422169, 0.862817, 3.522015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.643332, 1.040293, 2.833771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.571934, 0.649498, 2.787064>,  <4.529095, 0.415021, 2.759039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.571934, 0.649498, 2.787064>,  <4.643332, 1.040293, 2.833771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.571934, 0.649498, 2.787064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066554, 0.130391, -0.989227,
		0.981687, -0.168801, -0.088296,
		-0.178496, -0.976987, -0.116769,
		4.518385, 0.356402, 2.752033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.972216, 0.818637, 2.224453>,  <4.643332, 1.040293, 2.833771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.972216, 0.818637, 2.224453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.694748, 0.535477, 2.277672>,  <4.528267, 0.365581, 2.309603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.694748, 0.535477, 2.277672>,  <4.972216, 0.818637, 2.224453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.694748, 0.535477, 2.277672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191294, 0.002974, -0.981528,
		0.694428, -0.706307, -0.137479,
		-0.693669, -0.707900, 0.133047,
		4.486647, 0.323107, 2.317586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.072515, 0.247798, 1.714437>,  <4.972216, 0.818637, 2.224453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.072515, 0.247798, 1.714437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.692394, 0.291214, 1.831154>,  <4.464322, 0.317263, 1.901184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.692394, 0.291214, 1.831154>,  <5.072515, 0.247798, 1.714437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.692394, 0.291214, 1.831154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307379, -0.178351, -0.934724,
		-0.049411, -0.977963, 0.202850,
		-0.950303, 0.108537, 0.291792,
		4.407303, 0.323776, 1.918691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.052645, 5.752919, 0.838323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.760932, 5.504105, 0.952316>,  <3.585904, 5.354816, 1.020712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.760932, 5.504105, 0.952316>,  <4.052645, 5.752919, 0.838323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.760932, 5.504105, 0.952316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284417, 0.103216, 0.953128,
		-0.622295, 0.776155, 0.101644,
		-0.729284, -0.622037, 0.284983,
		3.542146, 5.317493, 1.037811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.746948, 5.998579, 1.402404>,  <4.052645, 5.752919, 0.838323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.746948, 5.998579, 1.402404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.675574, 5.605003, 1.404388>,  <3.632750, 5.368858, 1.405579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.675574, 5.605003, 1.404388>,  <3.746948, 5.998579, 1.402404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.675574, 5.605003, 1.404388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391609, -0.066390, 0.917734,
		-0.902664, 0.165700, 0.397166,
		-0.178436, -0.983939, 0.004962,
		3.622044, 5.309822, 1.405877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.347969, 5.739293, 2.043392>,  <3.746948, 5.998579, 1.402404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.347969, 5.739293, 2.043392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.604812, 5.480042, 1.879623>,  <3.758918, 5.324491, 1.781362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.604812, 5.480042, 1.879623>,  <3.347969, 5.739293, 2.043392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.604812, 5.480042, 1.879623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402488, -0.169522, 0.899592,
		-0.652458, -0.742422, 0.152012,
		0.642108, -0.648129, -0.409422,
		3.797445, 5.285603, 1.756797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.340859, 5.079681, 2.329629>,  <3.347969, 5.739293, 2.043392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.340859, 5.079681, 2.329629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.712199, 5.072754, 2.181107>,  <3.935002, 5.068597, 2.091993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.712199, 5.072754, 2.181107>,  <3.340859, 5.079681, 2.329629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.712199, 5.072754, 2.181107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343828, -0.339571, 0.875485,
		-0.141247, -0.940421, -0.309285,
		0.928349, -0.017319, -0.371307,
		3.990703, 5.067558, 2.069715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.526815, 4.424296, 2.374948>,  <3.340859, 5.079681, 2.329629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.526815, 4.424296, 2.374948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.824213, 4.691788, 2.376633>,  <4.002651, 4.852283, 2.377644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.824213, 4.691788, 2.376633>,  <3.526815, 4.424296, 2.374948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.824213, 4.691788, 2.376633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260318, -0.295212, 0.919285,
		0.615997, -0.682386, -0.393571,
		0.743494, 0.668730, 0.004212,
		4.047261, 4.892406, 2.377896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.222639, 4.140726, 2.475749>,  <3.526815, 4.424296, 2.374948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.222639, 4.140726, 2.475749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.290175, 4.517044, 2.593323>,  <4.330698, 4.742835, 2.663867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.290175, 4.517044, 2.593323>,  <4.222639, 4.140726, 2.475749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.290175, 4.517044, 2.593323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479834, -0.338946, 0.809244,
		0.860960, 0.004406, -0.508654,
		0.168841, 0.940795, 0.293933,
		4.340828, 4.799283, 2.681503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.794652, 4.043216, 2.734075>,  <4.222639, 4.140726, 2.475749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.794652, 4.043216, 2.734075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.721179, 4.404556, 2.889107>,  <4.677095, 4.621361, 2.982126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.721179, 4.404556, 2.889107>,  <4.794652, 4.043216, 2.734075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.721179, 4.404556, 2.889107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317422, -0.318655, 0.893142,
		0.930324, 0.287081, -0.228212,
		-0.183683, 0.903351, 0.387578,
		4.666074, 4.675562, 3.005380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.358799, 4.143136, 3.185112>,  <4.794652, 4.043216, 2.734075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.358799, 4.143136, 3.185112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.077857, 4.401657, 3.304436>,  <4.909292, 4.556770, 3.376030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.077857, 4.401657, 3.304436>,  <5.358799, 4.143136, 3.185112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.077857, 4.401657, 3.304436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256801, -0.160795, 0.952994,
		0.663891, 0.745946, -0.053036,
		-0.702354, 0.646304, 0.298310,
		4.867151, 4.595549, 3.393929>
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
