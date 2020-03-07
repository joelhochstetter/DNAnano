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
	<1.216117, 5.014425, 1.726224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.359417, 5.377777, 1.812480>,  <1.445397, 5.595788, 1.864234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.359417, 5.377777, 1.812480>,  <1.216117, 5.014425, 1.726224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.359417, 5.377777, 1.812480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681094, -0.412258, 0.605107,
		0.638567, -0.069908, -0.766384,
		0.358250, 0.908381, 0.215640,
		1.466892, 5.650291, 1.877172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.891101, 5.031936, 1.488846>,  <1.216117, 5.014425, 1.726224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.891101, 5.031936, 1.488846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.816166, 5.267197, 1.803547>,  <1.771205, 5.408353, 1.992368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.816166, 5.267197, 1.803547>,  <1.891101, 5.031936, 1.488846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.816166, 5.267197, 1.803547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576116, -0.582928, 0.572962,
		0.795609, 0.560599, -0.229639,
		-0.187339, 0.588153, 0.786753,
		1.759964, 5.443643, 2.039573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.514697, 5.176274, 1.751507>,  <1.891101, 5.031936, 1.488846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.514697, 5.176274, 1.751507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.221115, 5.193733, 2.022624>,  <2.044966, 5.204208, 2.185294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.221115, 5.193733, 2.022624>,  <2.514697, 5.176274, 1.751507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.221115, 5.193733, 2.022624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470355, -0.687247, 0.553585,
		0.489974, 0.725111, 0.483879,
		-0.733956, 0.043647, 0.677793,
		2.000928, 5.206828, 2.225962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.824753, 5.331450, 2.428885>,  <2.514697, 5.176274, 1.751507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.824753, 5.331450, 2.428885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.477810, 5.137398, 2.473316>,  <2.269644, 5.020967, 2.499975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.477810, 5.137398, 2.473316>,  <2.824753, 5.331450, 2.428885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.477810, 5.137398, 2.473316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405135, -0.558623, 0.723745,
		-0.289060, 0.672747, 0.681069,
		-0.867358, -0.485131, 0.111078,
		2.217602, 4.991858, 2.506639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.815724, 5.221024, 3.142981>,  <2.824753, 5.331450, 2.428885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.815724, 5.221024, 3.142981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.562290, 4.957047, 2.981466>,  <2.410230, 4.798660, 2.884557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.562290, 4.957047, 2.981466>,  <2.815724, 5.221024, 3.142981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.562290, 4.957047, 2.981466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251057, -0.669043, 0.699537,
		-0.731806, 0.341843, 0.589579,
		-0.633586, -0.659943, -0.403788,
		2.372215, 4.759064, 2.860330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.347558, 5.018795, 3.591187>,  <2.815724, 5.221024, 3.142981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.347558, 5.018795, 3.591187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366421, 4.710289, 3.337281>,  <2.377739, 4.525186, 3.184937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366421, 4.710289, 3.337281>,  <2.347558, 5.018795, 3.591187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.366421, 4.710289, 3.337281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279180, -0.599971, 0.749729,
		-0.959080, -0.212570, 0.187028,
		0.047158, -0.771265, -0.634765,
		2.380568, 4.478909, 3.146852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.961393, 4.433256, 3.944604>,  <2.347558, 5.018795, 3.591187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.961393, 4.433256, 3.944604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.191372, 4.285660, 3.652500>,  <2.329359, 4.197102, 3.477237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.191372, 4.285660, 3.652500>,  <1.961393, 4.433256, 3.944604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.191372, 4.285660, 3.652500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471752, -0.579732, 0.664350,
		-0.668495, -0.726469, -0.159242,
		0.574947, -0.368991, -0.730261,
		2.363856, 4.174963, 3.433422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.001493, 3.699112, 4.082544>,  <1.961393, 4.433256, 3.944604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.001493, 3.699112, 4.082544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305687, 3.748810, 3.827600>,  <2.488203, 3.778628, 3.674634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305687, 3.748810, 3.827600>,  <2.001493, 3.699112, 4.082544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.305687, 3.748810, 3.827600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558530, -0.625808, 0.544434,
		-0.331222, -0.770018, -0.545311,
		0.760484, 0.124244, -0.637360,
		2.533832, 3.786083, 3.636392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.964585, 3.564152, 4.466509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999489, 3.496124, 4.073884>,  <4.020432, 3.455308, 3.838310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999489, 3.496124, 4.073884>,  <3.964585, 3.564152, 4.466509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999489, 3.496124, 4.073884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952661, 0.273820, -0.132135,
		0.291243, 0.946625, -0.138125,
		0.087261, -0.170069, -0.981561,
		4.025667, 3.445103, 3.779416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.686042, 4.086950, 4.159566>,  <3.964585, 3.564152, 4.466509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.686042, 4.086950, 4.159566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.652954, 3.794937, 3.888210>,  <3.633101, 3.619730, 3.725397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.652954, 3.794937, 3.888210>,  <3.686042, 4.086950, 4.159566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.652954, 3.794937, 3.888210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900890, 0.345825, -0.262302,
		0.426093, 0.589456, -0.686284,
		-0.082719, -0.730031, -0.678389,
		3.628138, 3.575927, 3.684694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.619908, 4.308952, 3.480812>,  <3.686042, 4.086950, 4.159566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.619908, 4.308952, 3.480812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.430222, 3.957771, 3.507099>,  <3.316410, 3.747063, 3.522871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.430222, 3.957771, 3.507099>,  <3.619908, 4.308952, 3.480812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.430222, 3.957771, 3.507099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735507, 0.354037, -0.577656,
		0.483889, -0.322269, -0.813630,
		-0.474216, -0.877952, 0.065717,
		3.287957, 3.694386, 3.526814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.551416, 3.834567, 2.884230>,  <3.619908, 4.308952, 3.480812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.551416, 3.834567, 2.884230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.229523, 3.812920, 3.120697>,  <3.036387, 3.799931, 3.262576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.229523, 3.812920, 3.120697>,  <3.551416, 3.834567, 2.884230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.229523, 3.812920, 3.120697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554239, 0.425236, -0.715537,
		-0.212661, -0.903463, -0.372196,
		-0.804732, -0.054119, 0.591166,
		2.988103, 3.796684, 3.298046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.982223, 3.794053, 2.375929>,  <3.551416, 3.834567, 2.884230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.982223, 3.794053, 2.375929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.799103, 3.866508, 2.724092>,  <2.689231, 3.909981, 2.932990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.799103, 3.866508, 2.724092>,  <2.982223, 3.794053, 2.375929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.799103, 3.866508, 2.724092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799102, 0.345284, -0.492153,
		-0.389685, -0.920852, -0.013324,
		-0.457801, 0.181138, 0.870407,
		2.661762, 3.920850, 2.985214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.285056, 3.554141, 2.253192>,  <2.982223, 3.794053, 2.375929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.285056, 3.554141, 2.253192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.319717, 3.827583, 2.543068>,  <2.340514, 3.991649, 2.716994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.319717, 3.827583, 2.543068>,  <2.285056, 3.554141, 2.253192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.319717, 3.827583, 2.543068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716148, 0.548423, -0.431700,
		-0.692548, -0.481577, 0.537085,
		0.086653, 0.683605, 0.724690,
		2.345713, 4.032665, 2.760475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.593300, 3.841264, 2.275341>,  <2.285056, 3.554141, 2.253192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.593300, 3.841264, 2.275341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.788467, 4.117638, 2.488713>,  <1.905568, 4.283462, 2.616737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.788467, 4.117638, 2.488713>,  <1.593300, 3.841264, 2.275341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.788467, 4.117638, 2.488713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519970, 0.720913, -0.458165,
		-0.701118, -0.053821, 0.711011,
		0.487918, 0.690933, 0.533431,
		1.934843, 4.324917, 2.648742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.112309, 4.239172, 2.634248>,  <1.593300, 3.841264, 2.275341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.112309, 4.239172, 2.634248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.444733, 4.448563, 2.559083>,  <1.644187, 4.574197, 2.513984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.444733, 4.448563, 2.559083>,  <1.112309, 4.239172, 2.634248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.444733, 4.448563, 2.559083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544147, 0.695352, -0.469456,
		-0.115085, 0.492398, 0.862728,
		0.831059, 0.523478, -0.187913,
		1.694050, 4.605606, 2.502710>
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
