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
	<3.513636, 2.756299, 1.725093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.686935, 2.614269, 1.393740>,  <3.790915, 2.529051, 1.194928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.686935, 2.614269, 1.393740>,  <3.513636, 2.756299, 1.725093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.686935, 2.614269, 1.393740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807143, 0.256102, -0.531914,
		0.401020, 0.899074, -0.175641,
		0.433248, -0.355075, -0.828383,
		3.816910, 2.507747, 1.145225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.536242, 3.280502, 1.274157>,  <3.513636, 2.756299, 1.725093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.536242, 3.280502, 1.274157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.557167, 2.942411, 1.061420>,  <3.569722, 2.739557, 0.933779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.557167, 2.942411, 1.061420>,  <3.536242, 3.280502, 1.274157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.557167, 2.942411, 1.061420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734923, 0.327996, -0.593554,
		0.676129, 0.421913, -0.604019,
		0.052313, -0.845227, -0.531841,
		3.572861, 2.688843, 0.901868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.733367, 3.469475, 0.589383>,  <3.536242, 3.280502, 1.274157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.733367, 3.469475, 0.589383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.507523, 3.151022, 0.676456>,  <3.372016, 2.959950, 0.728700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.507523, 3.151022, 0.676456>,  <3.733367, 3.469475, 0.589383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.507523, 3.151022, 0.676456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775161, 0.420925, -0.471113,
		0.283440, -0.434736, -0.854790,
		-0.564612, -0.796132, 0.217683,
		3.338139, 2.912182, 0.741761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.302723, 3.371225, -0.017629>,  <3.733367, 3.469475, 0.589383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.302723, 3.371225, -0.017629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.134766, 3.109955, 0.234419>,  <3.033991, 2.953192, 0.385647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.134766, 3.109955, 0.234419>,  <3.302723, 3.371225, -0.017629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.134766, 3.109955, 0.234419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872220, 0.098531, -0.479086,
		0.250842, -0.750767, -0.611087,
		-0.419893, -0.653178, 0.630118,
		3.008798, 2.914002, 0.423455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.890758, 2.689091, -0.324429>,  <3.302723, 3.371225, -0.017629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.890758, 2.689091, -0.324429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.743149, 2.787443, 0.034094>,  <2.654583, 2.846454, 0.249207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.743149, 2.787443, 0.034094>,  <2.890758, 2.689091, -0.324429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.743149, 2.787443, 0.034094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922794, 0.018019, -0.384871,
		-0.110785, -0.969131, 0.220253,
		-0.369022, 0.245886, 0.896305,
		2.632442, 2.861207, 0.302986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.428192, 2.131351, -0.181941>,  <2.890758, 2.689091, -0.324429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.428192, 2.131351, -0.181941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.315659, 2.394304, 0.097687>,  <2.248138, 2.552076, 0.265463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.315659, 2.394304, 0.097687>,  <2.428192, 2.131351, -0.181941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.315659, 2.394304, 0.097687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958791, -0.222648, -0.176487,
		0.039627, -0.719913, 0.692932,
		-0.281335, 0.657384, 0.699069,
		2.231258, 2.591519, 0.307407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.016520, 1.762943, 0.332659>,  <2.428192, 2.131351, -0.181941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.016520, 1.762943, 0.332659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.936455, 2.154428, 0.350798>,  <1.888416, 2.389320, 0.361681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.936455, 2.154428, 0.350798>,  <2.016520, 1.762943, 0.332659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.936455, 2.154428, 0.350798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979723, -0.199524, -0.018223,
		-0.008788, -0.048075, 0.998805,
		-0.200162, 0.978713, 0.045347,
		1.876406, 2.448042, 0.364402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.456923, 1.766042, 0.684829>,  <2.016520, 1.762943, 0.332659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.456923, 1.766042, 0.684829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.445473, 2.125183, 0.509083>,  <1.438603, 2.340667, 0.403635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.445473, 2.125183, 0.509083>,  <1.456923, 1.766042, 0.684829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.445473, 2.125183, 0.509083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965774, -0.138203, -0.219499,
		-0.257799, 0.418046, 0.871078,
		-0.028626, 0.897851, -0.439366,
		1.436885, 2.394539, 0.377273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.285628, 2.343958, -0.734318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.260620, 2.659550, -0.489826>,  <0.245615, 2.848905, -0.343131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.260620, 2.659550, -0.489826>,  <0.285628, 2.343958, -0.734318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.260620, 2.659550, -0.489826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916489, -0.197086, 0.348145,
		0.395144, 0.581951, -0.710770,
		-0.062521, 0.788980, 0.611229,
		0.241864, 2.896244, -0.306457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.952507, 2.529361, -0.696218>,  <0.285628, 2.343958, -0.734318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.952507, 2.529361, -0.696218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.786392, 2.746696, -0.404377>,  <0.686723, 2.877098, -0.229273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.786392, 2.746696, -0.404377>,  <0.952507, 2.529361, -0.696218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.786392, 2.746696, -0.404377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837715, -0.084252, 0.539569,
		0.354640, 0.835274, -0.420175,
		-0.415287, 0.543340, 0.729601,
		0.661806, 2.909698, -0.185497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.402658, 3.023640, -0.648204>,  <0.952507, 2.529361, -0.696218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.402658, 3.023640, -0.648204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213791, 2.961361, -0.301144>,  <1.100471, 2.923994, -0.092908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213791, 2.961361, -0.301144>,  <1.402658, 3.023640, -0.648204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.213791, 2.961361, -0.301144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881100, -0.113354, 0.459145,
		0.026864, 0.981279, 0.190707,
		-0.472167, -0.155698, 0.867650,
		1.072141, 2.914652, -0.040849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.535579, 3.519590, -0.191227>,  <1.402658, 3.023640, -0.648204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.535579, 3.519590, -0.191227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.468704, 3.190281, 0.025761>,  <1.428580, 2.992696, 0.155953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.468704, 3.190281, 0.025761>,  <1.535579, 3.519590, -0.191227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.468704, 3.190281, 0.025761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910738, 0.081786, 0.404806,
		-0.377632, 0.561724, 0.736111,
		-0.167186, -0.823272, 0.542468,
		1.418548, 2.943299, 0.188501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.655695, 3.755034, 0.528770>,  <1.535579, 3.519590, -0.191227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.655695, 3.755034, 0.528770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.710739, 3.366348, 0.452000>,  <1.743765, 3.133137, 0.405937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.710739, 3.366348, 0.452000>,  <1.655695, 3.755034, 0.528770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.710739, 3.366348, 0.452000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888585, 0.035508, 0.457336,
		-0.437585, -0.233477, 0.868337,
		0.137610, -0.971714, -0.191926,
		1.752022, 3.074834, 0.394422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.911785, 3.519728, 1.122464>,  <1.655695, 3.755034, 0.528770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.911785, 3.519728, 1.122464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.004669, 3.235035, 0.857281>,  <2.060400, 3.064219, 0.698171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.004669, 3.235035, 0.857281>,  <1.911785, 3.519728, 1.122464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.004669, 3.235035, 0.857281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927874, -0.042360, 0.370480,
		-0.291766, -0.701171, 0.650563,
		0.232211, -0.711734, -0.662957,
		2.074333, 3.021515, 0.658394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.120087, 3.036393, 1.479867>,  <1.911785, 3.519728, 1.122464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.120087, 3.036393, 1.479867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.282906, 2.993591, 1.117020>,  <2.380597, 2.967910, 0.899311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.282906, 2.993591, 1.117020>,  <2.120087, 3.036393, 1.479867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.282906, 2.993591, 1.117020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900326, -0.120477, 0.418209,
		-0.154037, -0.986933, 0.047299,
		0.407046, -0.107004, -0.907118,
		2.405019, 2.961490, 0.844884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.465510, 2.334430, 1.521648>,  <2.120087, 3.036393, 1.479867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.465510, 2.334430, 1.521648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616684, 2.589947, 1.253586>,  <2.707388, 2.743257, 1.092748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.616684, 2.589947, 1.253586>,  <2.465510, 2.334430, 1.521648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.616684, 2.589947, 1.253586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923963, -0.214268, 0.316830,
		0.058796, -0.738941, -0.671200,
		0.377935, 0.638792, -0.670156,
		2.730065, 2.781584, 1.052539>
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
